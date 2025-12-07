double sub_226AB64EC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v63 = sub_226D6E14C();
  v62 = *(v63 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v61 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v58 - v7;
  v10 = a2[2];
  v9 = a2[3];
  v64 = a2[4];
  v11 = type metadata accessor for FinanceXPCPeerHandler.ReceivedMessage(0, v10, v9, v64);
  v66 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v58 - v12;
  v68 = *(v10 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v58 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v58 - v21;
  v65 = v9;
  v67 = a1;
  sub_226D6E12C();
  v59 = v8;
  v58[1] = v5;
  v60 = v11;
  v23 = v68;
  v24 = *(v68 + 32);
  v24(v22, v19, v10);
  (*(v23 + 16))(v16, v22, v10);
  v25 = sub_226D6E10C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v24(v13, v16, v10);
  v32 = v60;
  v33 = &v13[*(v60 + 44)];
  *v33 = v25;
  v33[1] = v27;
  v33[2] = v29;
  v33[3] = v31;
  (*(v69 + 1))(v76, v13);
  v34 = type metadata accessor for FinanceXPCPeerHandler.ReplyDecision(0, v10, v65, v64);
  v35 = *(v34 - 8);
  (*(v35 + 16))(v74, v76, v34);
  v36 = v13;
  if (v75)
  {
    v65 = v10;
    v64 = v22;
    v37 = v74[0];
    if (sub_226D6E13C())
    {
      Strong = swift_weakLoadStrong();
      v39 = v68;
      if (Strong)
      {
        sub_226D6E08C();
      }

      v54 = v70;
      v55 = v66;
      v56 = v64;
      v57 = v65;
      (*(v35 + 8))(v76, v34);
      (*(v55 + 8))(v36, v32);
      (*(v39 + 8))(v56, v57);
      *(v54 + 32) = 0;
      result = 0.0;
      *v54 = 0u;
      *(v54 + 16) = 0u;
    }

    else
    {
      v46 = sub_226D6E79C();
      (*(*(v46 - 8) + 56))(v59, 1, 1, v46);
      v47 = v62;
      v48 = *(v62 + 16);
      v69 = v13;
      v49 = v61;
      v50 = v63;
      v48(v61, v67, v63);
      v51 = (*(v47 + 80) + 48) & ~*(v47 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      *(v52 + 32) = v37;
      (*(v47 + 32))(v52 + v51, v49, v50);

      sub_226B60364(0, 0, v59, &unk_226D734F0, v52);

      (*(v35 + 8))(v76, v34);
      (*(v66 + 8))(v69, v32);
      (*(v68 + 8))(v64, v65);
      v53 = v70;
      *(v70 + 32) = 0;
      result = 0.0;
      *v53 = 0u;
      v53[1] = 0u;
    }
  }

  else
  {
    sub_226AC4834(v74, &v71);
    v40 = v72;
    v41 = v73;
    v42 = __swift_project_boxed_opaque_existential_1(&v71, v72);
    v43 = v70;
    *(v70 + 24) = v40;
    v43[4] = v41;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
    (*(*(v40 - 8) + 16))(boxed_opaque_existential_1, v42, v40);
    (*(v35 + 8))(v76, v34);
    (*(v66 + 8))(v36, v32);
    (*(v68 + 8))(v22, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(&v71);
  }

  return result;
}

uint64_t sub_226AB6C70()
{
  v1 = sub_226D6E14C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226AB6DA8@<X0>(void (**a1)(unsigned __int8 *)@<X0>, uint64_t a2@<X8>)
{
  v1066 = a1;
  v1073 = a2;
  v1004 = sub_226D6925C();
  v1003 = *(v1004 - 8);
  MEMORY[0x28223BE20](v1004);
  v1002 = &v937 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v999 = v4;
  MEMORY[0x28223BE20](v5);
  v994 = &v937 - v6;
  v1000 = sub_226D6AEEC();
  v998 = *(v1000 - 8);
  MEMORY[0x28223BE20](v1000);
  v997 = &v937 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v991 = v7;
  MEMORY[0x28223BE20](v8);
  v987 = &v937 - v9;
  v992 = sub_226D6AEDC();
  v990 = *(v992 - 8);
  MEMORY[0x28223BE20](v992);
  v988 = &v937 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v986 = v10;
  MEMORY[0x28223BE20](v11);
  v984 = &v937 - v12;
  v1006 = sub_226D66F5C();
  v1005 = *(v1006 - 8);
  MEMORY[0x28223BE20](v1006);
  v1001 = &v937 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v989 = &v937 - v15;
  v996 = sub_226D6B9BC();
  v995 = *(v996 - 8);
  MEMORY[0x28223BE20](v996);
  v993 = &v937 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v980 = sub_226D690CC();
  v978 = *(v980 - 8);
  MEMORY[0x28223BE20](v980);
  v975 = &v937 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v966 = v17;
  MEMORY[0x28223BE20](v18);
  v961 = &v937 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v968 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8);
  v982 = &v937 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v971 = v21;
  MEMORY[0x28223BE20](v22);
  v958 = &v937 - v23;
  v979 = sub_226D66F0C();
  v977 = *(v979 - 8);
  MEMORY[0x28223BE20](v979);
  v973 = &v937 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v962 = v24;
  MEMORY[0x28223BE20](v25);
  v954 = &v937 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA0, &qword_226D7B570);
  v969 = *(v27 - 8);
  MEMORY[0x28223BE20](v27 - 8);
  v983 = &v937 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v972 = v28;
  MEMORY[0x28223BE20](v29);
  v956 = &v937 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA8, &unk_226D7D230);
  v951 = *(v31 - 8);
  MEMORY[0x28223BE20](v31 - 8);
  v955 = &v937 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v952 = v32;
  MEMORY[0x28223BE20](v33);
  v946 = &v937 - v34;
  v967 = sub_226D6777C();
  v965 = *(v967 - 8);
  MEMORY[0x28223BE20](v967);
  v964 = &v937 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v976 = sub_226D67A2C();
  v974 = *(v976 - 8);
  MEMORY[0x28223BE20](v976);
  v970 = &v937 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v953 = v36;
  MEMORY[0x28223BE20](v37);
  v947 = &v937 - v38;
  v950 = sub_226D6D5DC();
  v949 = *(v950 - 8);
  MEMORY[0x28223BE20](v950);
  v948 = &v937 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1010 = sub_226D6D52C();
  v1011 = *(v1010 - 8);
  MEMORY[0x28223BE20](v1010);
  v985 = &v937 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v959 = &v937 - v42;
  MEMORY[0x28223BE20](v43);
  v963 = &v937 - v44;
  MEMORY[0x28223BE20](v45);
  v960 = &v937 - v46;
  MEMORY[0x28223BE20](v47);
  v957 = &v937 - v48;
  v981 = v49;
  MEMORY[0x28223BE20](v50);
  v1012 = &v937 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68B0, qword_226D72098);
  MEMORY[0x28223BE20](v52 - 8);
  v1016 = &v937 - v53;
  v1014 = sub_226D6708C();
  v1013 = *(v1014 - 8);
  MEMORY[0x28223BE20](v1014);
  v1020 = &v937 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1055 = sub_226D6D4AC();
  v1054 = *(v1055 - 8);
  MEMORY[0x28223BE20](v1055);
  v945 = &v937 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v1007 = &v937 - v57;
  MEMORY[0x28223BE20](v58);
  v1008 = &v937 - v59;
  MEMORY[0x28223BE20](v60);
  v1009 = &v937 - v61;
  MEMORY[0x28223BE20](v62);
  v1019 = &v937 - v63;
  v1018 = v64;
  MEMORY[0x28223BE20](v65);
  v1017 = &v937 - v66;
  v1038 = sub_226D6712C();
  v1036 = *(v1038 - 8);
  MEMORY[0x28223BE20](v1038);
  v1035 = &v937 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1041 = sub_226D6ACCC();
  v1037 = *(v1041 - 8);
  MEMORY[0x28223BE20](v1041);
  v1039 = &v937 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1043 = sub_226D6799C();
  v1042 = *(v1043 - 8);
  MEMORY[0x28223BE20](v1043);
  v1033 = &v937 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v1023 = &v937 - v71;
  v1024 = v72;
  MEMORY[0x28223BE20](v73);
  v1040 = &v937 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  MEMORY[0x28223BE20](v75 - 8);
  v1044 = &v937 - v76;
  v1050 = sub_226D67F1C();
  v1045 = *(v1050 - 8);
  MEMORY[0x28223BE20](v1050);
  v942 = &v937 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v944 = &v937 - v79;
  MEMORY[0x28223BE20](v80);
  v943 = &v937 - v81;
  MEMORY[0x28223BE20](v82);
  v941 = &v937 - v83;
  MEMORY[0x28223BE20](v84);
  v939 = &v937 - v85;
  MEMORY[0x28223BE20](v86);
  v940 = &v937 - v87;
  MEMORY[0x28223BE20](v88);
  v1049 = &v937 - v89;
  v1057 = sub_226D66E9C();
  v1056 = *(v1057 - 8);
  MEMORY[0x28223BE20](v1057);
  v1034 = &v937 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v1053 = &v937 - v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v93 - 8);
  v938 = &v937 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v95);
  v1015 = &v937 - v96;
  MEMORY[0x28223BE20](v97);
  v1022 = &v937 - v98;
  MEMORY[0x28223BE20](v99);
  v1058 = &v937 - v100;
  v1063 = sub_226D6B49C();
  v1062 = *(v1063 - 8);
  MEMORY[0x28223BE20](v1063);
  v1021 = &v937 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v102);
  v1048 = &v937 - v103;
  MEMORY[0x28223BE20](v104);
  v1046 = &v937 - v105;
  v1047 = v106;
  MEMORY[0x28223BE20](v107);
  v1061 = &v937 - v108;
  v1070 = sub_226D66FDC();
  v1060 = *(v1070 - 1);
  MEMORY[0x28223BE20](v1070);
  v1059 = &v937 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1069 = sub_226D66FCC();
  v1068 = *(v1069 - 1);
  MEMORY[0x28223BE20](v1069);
  v1067 = (&v937 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1071 = sub_226D67E0C();
  v1072 = *(v1071 - 8);
  MEMORY[0x28223BE20](v1071);
  v1052 = &v937 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1051 = v111;
  MEMORY[0x28223BE20](v112);
  v1074 = &v937 - v113;
  sub_226AC40E8((v2 + 6), &v1084, &qword_27D7A70E0, &qword_226D741B0);
  v114 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DB0, &qword_226D7B578) + 44));
  v116 = *v114;
  v115 = v114[1];
  v117 = v114[2];
  v118 = v114[3];
  v119 = v114[4];
  v120 = v114[5];
  v122 = v114[6];
  v121 = v114[7];
  v123 = v2[4];
  v1065 = v2[5];
  v1064 = v2;
  __swift_project_boxed_opaque_existential_1(v2 + 1, v123);
  v1026 = v115;
  v1025 = v116;
  v124 = v116 | (v115 << 32);
  v1028 = v118;
  v1027 = v117;
  v1030 = v120;
  v1029 = v119;
  v125 = v119 | (v120 << 32);
  v1032 = v121;
  v1031 = v122;
  v126 = v122 | (v121 << 32);
  v127 = v1067;
  v128 = v117 | (v118 << 32);
  sub_226D6A02C();
  v129 = v1069;
  v130 = v1068;
  v1068[2](v127);
  v131 = (v130[11])(v127, v129);
  if (v131 == *MEMORY[0x277CC6808])
  {
    (v130[12])(v127, v129);
    v132 = v1060;
    v133 = v1059;
    v134 = v1070;
    (*(v1060 + 32))(v1059, v127, v1070);
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v136 = v1073;
    *(v1073 + 24) = v135;
    *(v136 + 32) = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67D0]);
    *(v136 + 40) = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67C8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v136);
    *boxed_opaque_existential_1 = sub_226D457C8(*(*v1064 + 504), *(*v1064 + 512), v133) & 1;
    (*(*(v135 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CC67C0], v135);
    v181 = v1074;
    (*(v132 + 8))(v133, v134);
    (*(v1072 + 8))(v181, v1071);
    result = sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v136 + 48) = 0;
    return result;
  }

  v138 = v1070;
  if (v131 == *MEMORY[0x277CC67E8])
  {
    (v130[12])(v127, v129);
    v139 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F98, &qword_226D7B9B8) + 48);
    (*(v1062 + 32))(v1061, v127, v1063);
    v140 = v1058;
    sub_226AFD80C(v127 + v139, v1058, &qword_27D7A8BE0, &unk_226D718F0);
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8FA0, &qword_226D7B9C0);
    v142 = v1073;
    *(v1073 + 24) = v141;
    *(v142 + 32) = sub_226AC4194(&qword_27D7A8FA8, &qword_27D7A8FA0, &qword_226D7B9C0, MEMORY[0x277CC67D0]);
    *(v142 + 40) = sub_226AC4194(&qword_27D7A8FB0, &qword_27D7A8FA0, &qword_226D7B9C0, MEMORY[0x277CC67C8]);
    v143 = __swift_allocate_boxed_opaque_existential_1(v142);
    v144 = (*(v1054 + 48))(v140, 1, v1055);
    v145 = v1056;
    v146 = MEMORY[0x277CC6588];
    if (v144 != 1)
    {
      v146 = MEMORY[0x277CC6590];
    }

    v147 = v1053;
    v148 = v1057;
    (*(v1056 + 104))(v1053, *v146, v1057);
    v149 = v1074;
    sub_226CD0988(v147, &v1084);
    (*(v145 + 8))(v147, v148);
    if (sub_226D67D8C())
    {
      v150 = *v1064;
      v151 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
      v152 = [v151 aa_primaryAppleAccount];
      if (v152)
      {
        v153 = v152;
        v154 = [v152 aa_isManagedAppleID];

        if (v154)
        {
          v155 = sub_226D66EDC();
          sub_226CD740C();
          v156 = swift_allocError();
          v158 = v157;
          (*(v1060 + 104))(v157, *MEMORY[0x277CC6A50], v138);
          (*(*(v155 - 8) + 104))(v158, *MEMORY[0x277CC65D0], v155);
          swift_willThrow();
LABEL_32:
          __swift_deallocate_boxed_opaque_existential_2(v142);
          v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
          *(v142 + 24) = v235;
          *(v142 + 32) = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
          *(v142 + 40) = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
          v236 = __swift_allocate_boxed_opaque_existential_1(v142);
          v237 = v156;
          sub_226D66FBC();
          (*(*(v235 - 8) + 104))(v236, *MEMORY[0x277CC67B0], v235);

LABEL_34:
          (*(v1072 + 8))(v149, v1071);
          sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
          *(v142 + 48) = 0;
          sub_226AC47B0(v140, &qword_27D7A8BE0, &unk_226D718F0);
          v238 = *(v1062 + 8);
          v239 = v1061;
LABEL_35:
          v240 = &v1085 + 8;
          return v238(v239, *(v240 - 32));
        }
      }

      else
      {
      }

      v224 = sub_226D676AC();
      MEMORY[0x28223BE20](v224);
      *(&v937 - 4) = v1061;
      *(&v937 - 3) = v225;
      v935 = v150;
      v936 = v140;
      sub_226D66FAC();
      sub_226D6EB8C();
    }

    else
    {
      v183 = v1044;
      sub_226D67DFC();
      v184 = v1045;
      v185 = v1050;
      v186 = (*(v1045 + 48))(v183, 1, v1050);
      v187 = v1064;
      if (v186 == 1)
      {
        sub_226AC47B0(v183, &qword_27D7A7180, &qword_226D74600);
        if (qword_28105F6E0 != -1)
        {
          swift_once();
        }

        v188 = sub_226D6E07C();
        __swift_project_value_buffer(v188, qword_28105F6E8);
        v189 = sub_226D6E05C();
        v190 = sub_226D6E9CC();
        v191 = os_log_type_enabled(v189, v190);
        v140 = v1058;
        if (v191)
        {
          v192 = swift_slowAlloc();
          *v192 = 0;
          _os_log_impl(&dword_226AB4000, v189, v190, "Connecting process has no bundle identifier", v192, 2u);
          MEMORY[0x22AA8BEE0](v192, -1, -1);
        }

        v193 = *MEMORY[0x277CC6700];
        v194 = sub_226D66FAC();
        (*(*(v194 - 8) + 104))(v143, v193, v194);
      }

      else
      {
        (*(v184 + 32))(v1049, v183, v185);
        v210 = *v187;
        v211 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
        v212 = [v211 aa_primaryAppleAccount];
        if (v212)
        {
          v213 = v212;
          v214 = [v212 aa_isManagedAppleID];

          if (v214)
          {
            v215 = sub_226D66EDC();
            sub_226CD740C();
            v156 = swift_allocError();
            v217 = v216;
            (*(v1060 + 104))(v216, *MEMORY[0x277CC6A50], v138);
            (*(*(v215 - 8) + 104))(v217, *MEMORY[0x277CC65D0], v215);
            swift_willThrow();
            (*(v184 + 8))(v1049, v1050);
            v140 = v1058;
            goto LABEL_32;
          }
        }

        else
        {
        }

        v232 = sub_226D676AC();
        v1070 = &v937;
        MEMORY[0x28223BE20](v232);
        *(&v937 - 6) = v1061;
        *(&v937 - 5) = v233;
        v234 = v1049;
        *(&v937 - 4) = v1049;
        *(&v937 - 3) = v210;
        v935 = v1058;
        sub_226D66FAC();
        sub_226D6EB8C();

        (*(v184 + 8))(v234, v1050);
        v140 = v1058;
      }
    }

    (*(*(v141 - 8) + 104))(v143, *MEMORY[0x277CC67C0], v141);
    goto LABEL_34;
  }

  v159 = v125;
  v160 = v124;
  if (v131 == *MEMORY[0x277CC67D8])
  {
    (v130[12])(v127, v129);
    v162 = v1062 + 32;
    v161 = *(v1062 + 32);
    v163 = v1046;
    v164 = v1063;
    v161(v1046, v127, v1063);
    v165 = v161;
    v1070 = v161;
    v166 = v1072 + 32;
    v1072 = *(v1072 + 32);
    v167 = v1052;
    v168 = v1071;
    (v1072)(v1052, v1074, v1071);
    v1075 = v1084;
    v1076 = v1085;
    v1077 = v1086;
    sub_226CD56EC(v1064, &v1078);
    v169 = v1048;
    v165(v1048, v163, v164);
    v170 = (*(v166 + 48) + 16) & ~*(v166 + 48);
    v171 = (v1051 + v170 + 7) & 0xFFFFFFFFFFFFFFF8;
    v172 = (v171 + 47) & 0xFFFFFFFFFFFFFFF8;
    v173 = (*(v162 + 48) + v172 + 88) & ~*(v162 + 48);
    v174 = swift_allocObject();
    (v1072)(v174 + v170, v167, v168);
    v175 = v174 + v171;
    v176 = v1076;
    *v175 = v1075;
    *(v175 + 16) = v176;
    *(v175 + 32) = v1077;
    v177 = v174 + v172;
    v178 = v1081;
    *(v177 + 32) = v1080;
    *(v177 + 48) = v178;
    *(v177 + 64) = v1082;
    *(v177 + 80) = v1083;
    v179 = v1079;
    *v177 = v1078;
    *(v177 + 16) = v179;
    (v1070)(v174 + v173, v169, v1063);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B9A8;
    *(result + 24) = v174;
    v180 = &unk_226D7B9B0;
LABEL_20:
    v209 = v1073;
    *v1073 = v180;
    *(v209 + 8) = result;
    *(v209 + 48) = 1;
    return result;
  }

  if (v131 == *MEMORY[0x277CC68E8])
  {
    (v130[12])(v127, v129);
    v195 = *v127;
    v197 = v1072 + 32;
    v196 = *(v1072 + 32);
    v198 = v1052;
    v199 = v1071;
    v196(v1052, v1074, v1071);
    v1075 = v1084;
    v1076 = v1085;
    v1077 = v1086;
    sub_226CD56EC(v1064, &v1078);
    v200 = (*(v197 + 48) + 16) & ~*(v197 + 48);
    v201 = (v1051 + v200 + 7) & 0xFFFFFFFFFFFFFFF8;
    v202 = (v201 + 47) & 0xFFFFFFFFFFFFFFF8;
    v203 = swift_allocObject();
    v196(v203 + v200, v198, v199);
    v204 = v203 + v201;
    v205 = v1076;
    *v204 = v1075;
    *(v204 + 16) = v205;
    *(v204 + 32) = v1077;
    v206 = v203 + v202;
    v207 = v1081;
    *(v206 + 32) = v1080;
    *(v206 + 48) = v207;
    *(v206 + 64) = v1082;
    *(v206 + 80) = v1083;
    v208 = v1079;
    *v206 = v1078;
    *(v206 + 16) = v208;
    *(v203 + ((v202 + 89) & 0xFFFFFFFFFFFFFFF8)) = v195;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B990;
    *(result + 24) = v203;
    v180 = &unk_226D7B998;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC6828])
  {
    (v130[12])(v127, v129);
    v218 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F78, &qword_226D7B978) + 48);
    (*(v1042 + 32))(v1040, v127, v1043);
    v219 = v1037;
    (*(v1037 + 32))(v1039, v127 + v218, v1041);
    v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F80, &qword_226D7B980);
    v221 = v1073;
    *(v1073 + 24) = v220;
    *(v221 + 32) = sub_226AC4194(&qword_27D7A8F88, &qword_27D7A8F80, &qword_226D7B980, MEMORY[0x277CC67D0]);
    *(v221 + 40) = sub_226AC4194(&qword_27D7A8F90, &qword_27D7A8F80, &qword_226D7B980, MEMORY[0x277CC67C8]);
    v222 = __swift_allocate_boxed_opaque_existential_1(v221);
    swift_getKeyPath();
    v223 = v1074;
    sub_226D67DEC();

    v260 = v1056;
    v261 = v1034;
    v262 = v1057;
    (*(v1056 + 104))(v1034, *MEMORY[0x277CC65A0], v1057);
    sub_226CD0988(v261, &v1084);
    (*(v260 + 8))(v261, v262);
    v263 = sub_226D6798C();
    v265 = v264;
    sub_226CDAE0C(v263, v264, v1039);
    sub_226B11B98(v263, v265);
    (*(*(v220 - 8) + 104))(v222, *MEMORY[0x277CC67C0], v220);
    v266 = v1040;
    (*(v219 + 8))(v1039, v1041);
    (*(v1042 + 8))(v266, v1043);
    (*(v1072 + 8))(v223, v1071);
    result = sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v221 + 48) = 0;
    return result;
  }

  if (v131 == *MEMORY[0x277CC68D8])
  {
    (v130[12])(v127, v129);
    v226 = v1036;
    v227 = v1035;
    (*(v1036 + 32))(v1035, v127, v1038);
    v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F68, &qword_226D7B968);
    v229 = v1073;
    *(v1073 + 24) = v228;
    *(v229 + 32) = sub_226AC4194(&qword_281062C18, &qword_27D7A8F68, &qword_226D7B968, MEMORY[0x277CC67D0]);
    *(v229 + 40) = sub_226AC4194(&qword_281062C20, &qword_27D7A8F68, &qword_226D7B968, MEMORY[0x277CC67C8]);
    v230 = __swift_allocate_boxed_opaque_existential_1(v229);
    swift_getKeyPath();
    v231 = v1074;
    sub_226D67DEC();

    MEMORY[0x28223BE20](v285);
    v935 = v286;
    v936 = v227;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F70, &qword_226D7B970);
    sub_226D66E6C();
    *v230 = v1078;
    (*(*(v228 - 8) + 104))(v230, *MEMORY[0x277CC67C0], v228);
    (*(v1072 + 8))(v231, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v229 + 48) = 0;
    return (*(v226 + 8))(v227, v1038);
  }

  if (v131 == *MEMORY[0x277CC67E0])
  {
    (v130[12])(v127, v129);
    v242 = v1062 + 32;
    v241 = *(v1062 + 32);
    v243 = v1046;
    v244 = v1063;
    v241(v1046, v127, v1063);
    v245 = v241;
    v1070 = v241;
    v246 = v1072 + 32;
    v1072 = *(v1072 + 32);
    v247 = v1052;
    v248 = v1071;
    (v1072)(v1052, v1074, v1071);
    v1075 = v1084;
    v1076 = v1085;
    v1077 = v1086;
    sub_226CD56EC(v1064, &v1078);
    v249 = v1048;
    v245(v1048, v243, v244);
    v250 = (*(v246 + 48) + 16) & ~*(v246 + 48);
    v251 = (v1051 + v250 + 7) & 0xFFFFFFFFFFFFFFF8;
    v252 = (v251 + 47) & 0xFFFFFFFFFFFFFFF8;
    v253 = (*(v242 + 48) + v252 + 88) & ~*(v242 + 48);
    v254 = swift_allocObject();
    (v1072)(v254 + v250, v247, v248);
    v255 = v254 + v251;
    v256 = v1076;
    *v255 = v1075;
    *(v255 + 16) = v256;
    *(v255 + 32) = v1077;
    v257 = v254 + v252;
    v258 = v1081;
    *(v257 + 32) = v1080;
    *(v257 + 48) = v258;
    *(v257 + 64) = v1082;
    *(v257 + 80) = v1083;
    v259 = v1079;
    *v257 = v1078;
    *(v257 + 16) = v259;
    (v1070)(v254 + v253, v249, v1063);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B958;
    *(result + 24) = v254;
    v180 = &unk_226D7B960;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC6A38])
  {
    (v130[12])(v127, v129);
    v267 = v1042 + 32;
    v268 = *(v1042 + 32);
    v269 = v1023;
    v270 = v1043;
    (v268)(v1023, v127, v1043);
    v1070 = v268;
    v1075 = v1084;
    v1076 = v1085;
    v1077 = v1086;
    v271 = v1072 + 32;
    v1072 = *(v1072 + 32);
    v272 = v1052;
    v273 = v1071;
    (v1072)(v1052, v1074, v1071);
    (v268)(v1033, v269, v270);
    sub_226CD56EC(v1064, &v1078);
    v274 = (*(v271 + 48) + 56) & ~*(v271 + 48);
    v275 = (v1051 + *(v267 + 48) + v274) & ~*(v267 + 48);
    v276 = (v1024 + v275 + 7) & 0xFFFFFFFFFFFFFFF8;
    v277 = swift_allocObject();
    v278 = v1076;
    *(v277 + 16) = v1075;
    *(v277 + 32) = v278;
    *(v277 + 48) = v1077;
    (v1072)(v277 + v274, v272, v273);
    (v1070)(v277 + v275, v1033, v270);
    v279 = v277 + v276;
    v280 = v1081;
    *(v279 + 32) = v1080;
    *(v279 + 48) = v280;
    *(v279 + 64) = v1082;
    *(v279 + 80) = v1083;
    v281 = v1079;
    *v279 = v1078;
    *(v279 + 16) = v281;
    v282 = (v277 + ((v276 + 91) & 0xFFFFFFFFFFFFFFF8));
    v283 = v1026;
    *v282 = v1025;
    v282[1] = v283;
    v284 = v1028;
    v282[2] = v1027;
    v282[3] = v284;
    v282[4] = v1029;
    v282[5] = v1030;
    v282[6] = v1031;
    v282[7] = v1032;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B940;
    *(result + 24) = v277;
    v180 = &unk_226D7B948;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC6898])
  {
    (v130[12])(v127, v129);
    v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F60, &qword_226D7B930);
    v288 = *(v127 + *(v287 + 48));
    v289 = *(v287 + 64);
    v290 = v1021;
    (*(v1062 + 32))(v1021, v127, v1063);
    v291 = v1022;
    sub_226AFD80C(v127 + v289, v1022, &qword_27D7A8BE0, &unk_226D718F0);
    swift_getKeyPath();
    v292 = v1074;
    sub_226D67DEC();

    v331 = v1056;
    v332 = v1034;
    v333 = v1057;
    (*(v1056 + 104))(v1034, *MEMORY[0x277CC65A8], v1057);
    sub_226CD0988(v332, &v1084);
    (*(v331 + 8))(v332, v333);
    v334 = *v1064;
    v335 = sub_226D676AC();
    MEMORY[0x28223BE20](v335);
    *(&v937 - 6) = v334;
    *(&v937 - 5) = v290;
    *(&v937 - 32) = v288;
    *(&v937 - 3) = v291;
    v935 = v336;
    sub_226D6EB7C();
    v337 = v1073;

    v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    *(v337 + 24) = v345;
    *(v337 + 32) = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    *(v337 + 40) = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v346 = __swift_allocate_boxed_opaque_existential_1(v337);
    (*(*(v345 - 8) + 104))(v346, *MEMORY[0x277CC67B8], v345);
    (*(v1072 + 8))(v292, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v337 + 48) = 0;
    sub_226AC47B0(v291, &qword_27D7A8BE0, &unk_226D718F0);
    v238 = *(v1062 + 8);
    v239 = v290;
    goto LABEL_35;
  }

  if (v131 == *MEMORY[0x277CC6910])
  {
    (v130[12])(v127, v129);
    LODWORD(v1070) = *(v127 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F58, &qword_226D7B910) + 48));
    v294 = v1062 + 32;
    v293 = *(v1062 + 32);
    v295 = v1046;
    v296 = v1063;
    v293(v1046, v127, v1063);
    v297 = v293;
    v1069 = v293;
    v298 = v1072 + 32;
    v1072 = *(v1072 + 32);
    v299 = v1052;
    v300 = v1071;
    (v1072)(v1052, v1074, v1071);
    v1075 = v1084;
    v1076 = v1085;
    v1077 = v1086;
    sub_226CD56EC(v1064, &v1078);
    v301 = v1048;
    v297(v1048, v295, v296);
    v302 = (*(v298 + 48) + 16) & ~*(v298 + 48);
    v303 = (v1051 + v302 + 7) & 0xFFFFFFFFFFFFFFF8;
    v304 = (v303 + 47) & 0xFFFFFFFFFFFFFFF8;
    v305 = (*(v294 + 48) + v304 + 89) & ~*(v294 + 48);
    v306 = swift_allocObject();
    (v1072)(v306 + v302, v299, v300);
    v307 = v306 + v303;
    v308 = v1076;
    *v307 = v1075;
    *(v307 + 16) = v308;
    *(v307 + 32) = v1077;
    v309 = v306 + v304;
    v310 = v1081;
    *(v309 + 32) = v1080;
    *(v309 + 48) = v310;
    *(v309 + 64) = v1082;
    *(v309 + 80) = v1083;
    v311 = v1079;
    *v309 = v1078;
    *(v309 + 16) = v311;
    *(v309 + 88) = v1070;
    (v1069)(v306 + v305, v301, v1063);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B920;
    *(result + 24) = v306;
    v180 = &unk_226D7B928;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC6980])
  {
    (v130[12])(v127, v129);
    v313 = v1054 + 32;
    v312 = *(v1054 + 32);
    v314 = v1017;
    v315 = v1055;
    v312(v1017, v127, v1055);
    v316 = v312;
    v1070 = v312;
    v317 = v1072 + 32;
    v1072 = *(v1072 + 32);
    v318 = v1052;
    v319 = v1071;
    (v1072)(v1052, v1074, v1071);
    v1075 = v1084;
    v1076 = v1085;
    v1077 = v1086;
    sub_226CD56EC(v1064, &v1078);
    v320 = v1019;
    v316(v1019, v314, v315);
    v321 = (*(v317 + 48) + 16) & ~*(v317 + 48);
    v322 = (v1051 + v321 + 7) & 0xFFFFFFFFFFFFFFF8;
    v323 = (v322 + 47) & 0xFFFFFFFFFFFFFFF8;
    v324 = (*(v313 + 48) + v323 + 88) & ~*(v313 + 48);
    v325 = swift_allocObject();
    (v1072)(v325 + v321, v318, v319);
    v326 = v325 + v322;
    v327 = v1076;
    *v326 = v1075;
    *(v326 + 16) = v327;
    *(v326 + 32) = v1077;
    v328 = v325 + v323;
    v329 = v1081;
    *(v328 + 32) = v1080;
    *(v328 + 48) = v329;
    *(v328 + 64) = v1082;
    *(v328 + 80) = v1083;
    v330 = v1079;
    *v328 = v1078;
    *(v328 + 16) = v330;
    (v1070)(v325 + v324, v320, v1055);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B900;
    *(result + 24) = v325;
    v180 = &unk_226D7B908;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC68A8])
  {
    (v130[12])(v127, v129);
    v338 = v1013;
    v339 = v127;
    v340 = v1014;
    (*(v1013 + 32))(v1020, v339, v1014);
    v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F28, &qword_226D7B8E8);
    v342 = v1073;
    *(v1073 + 24) = v341;
    *(v342 + 32) = sub_226AC4194(&qword_27D7A8F30, &qword_27D7A8F28, &qword_226D7B8E8, MEMORY[0x277CC67D0]);
    *(v342 + 40) = sub_226AC4194(&qword_27D7A8F38, &qword_27D7A8F28, &qword_226D7B8E8, MEMORY[0x277CC67C8]);
    v343 = __swift_allocate_boxed_opaque_existential_1(v342);
    swift_getKeyPath();
    v344 = v1074;
    sub_226D67DEC();

    v362 = sub_226D676AC();
    MEMORY[0x28223BE20](v362);
    *(&v937 - 4) = v363;
    *(&v937 - 3) = v1020;
    v935 = v364;
    sub_226D670CC();
    sub_226D6EB8C();

    (*(*(v341 - 8) + 104))(v343, *MEMORY[0x277CC67C0], v341);
    (*(v1072 + 8))(v344, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v342 + 48) = 0;
    return (*(v338 + 8))(v1020, v340);
  }

  if (v131 == *MEMORY[0x277CC6920])
  {
    (v130[12])(v127, v129);
    v1070 = *v127;
    LODWORD(v1069) = *(v127 + 8);
    v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F00, &qword_226D7B8D0);
    v348 = v347[12];
    v349 = v347[16];
    v350 = (v127 + v347[20]);
    v351 = v350[1];
    v1068 = *v350;
    v352 = (v127 + v347[24]);
    v353 = v352[1];
    v1066 = *v352;
    v354 = (v127 + v347[28]);
    v356 = *v354;
    v355 = v354[1];
    v357 = (v127 + v347[32]);
    v359 = *v357;
    v358 = v357[1];
    sub_226AFD80C(v127 + v348, v1016, &qword_27D7A68B0, qword_226D72098);
    sub_226AFD80C(v127 + v349, v1015, &qword_27D7A8BE0, &unk_226D718F0);
    v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F08, &qword_226D7B8D8);
    v361 = v1073;
    *(v1073 + 24) = v360;
    v361[4] = sub_226AC4194(&qword_27D7A8F10, &qword_27D7A8F08, &qword_226D7B8D8, MEMORY[0x277CC67D0]);
    v361[5] = sub_226AC4194(&qword_27D7A8F18, &qword_27D7A8F08, &qword_226D7B8D8, MEMORY[0x277CC67C8]);
    v1067 = __swift_allocate_boxed_opaque_existential_1(v361);
    swift_getKeyPath();
    sub_226D67DEC();

    v373 = sub_226D676AC();
    v1065 = &v937;
    MEMORY[0x28223BE20](v373);
    v374 = v1016;
    *(&v937 - 14) = v375;
    *(&v937 - 13) = v374;
    *(&v937 - 12) = v1015;
    *&v376 = v1068;
    *(&v376 + 1) = v351;
    *&v377 = v1066;
    *(&v377 + 1) = v353;
    *(&v937 - 9) = v377;
    *(&v937 - 11) = v376;
    *&v376 = v356;
    *(&v376 + 1) = v355;
    *&v377 = v359;
    *(&v377 + 1) = v358;
    *(&v937 - 5) = v377;
    *(&v937 - 7) = v376;
    *(&v937 - 3) = v1070;
    LOBYTE(v935) = v1069;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F20, &qword_226D7B8E0);
    sub_226D6EB8C();

    *v1067 = v1078;
    (*(*(v360 - 8) + 104))();
    v385 = v1073;
    (*(v1072 + 8))(v1074, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v385 + 48) = 0;
    sub_226AC47B0(v1015, &qword_27D7A8BE0, &unk_226D718F0);
    return sub_226AC47B0(v1016, &qword_27D7A68B0, qword_226D72098);
  }

  if (v131 == *MEMORY[0x277CC6918])
  {
    (v130[12])(v127, v129);
    (*(v1011 + 32))(v1012, v127, v1010);
    swift_getKeyPath();
    sub_226D67DEC();

    v382 = sub_226D676AC();
    MEMORY[0x28223BE20](v382);
    v935 = v383;
    v936 = v1012;
    sub_226D6EB7C();

    v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v391 = v1073;
    *(v1073 + 24) = v390;
    *(v391 + 32) = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    *(v391 + 40) = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v392 = __swift_allocate_boxed_opaque_existential_1(v391);
    (*(*(v390 - 8) + 104))(v392, *MEMORY[0x277CC67B8], v390);
    (*(v1072 + 8))(v1074, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v391 + 48) = 0;
    v238 = *(v1011 + 8);
    v384 = &v1044;
LABEL_57:
    v239 = *(v384 - 32);
    v240 = &v1042;
    return v238(v239, *(v240 - 32));
  }

  if (v131 == *MEMORY[0x277CC6950])
  {
    v365 = v127;
    (v130[12])(v127, v129);
    v367 = *v127;
    v366 = *(v127 + 8);
    v368 = *(v127 + 16);
    v369 = *(v365 + 24);
    v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7400, &qword_226D74E28);
    v371 = v1073;
    *(v1073 + 24) = v370;
    v371[4] = sub_226AC4194(&qword_27D7A7408, &qword_27D7A7400, &qword_226D74E28, MEMORY[0x277CC67D0]);
    v371[5] = sub_226AC4194(&qword_27D7A7410, &qword_27D7A7400, &qword_226D74E28, MEMORY[0x277CC67C8]);
    v372 = __swift_allocate_boxed_opaque_existential_1(v371);
    swift_getKeyPath();
    sub_226D67DEC();

    v388 = sub_226D676AC();
    MEMORY[0x28223BE20](v388);
    *(&v937 - 6) = v367;
    *(&v937 - 5) = v366;
    *(&v937 - 4) = v368;
    *(&v937 - 3) = v369;
    v935 = v389;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
    sub_226D6EB8C();

LABEL_64:
    (*(*(v370 - 8) + 104))(v372, *MEMORY[0x277CC67C0], v370);
LABEL_62:
    (*(v1072 + 8))(v1074, v1071);
    result = sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
LABEL_63:
    *(v1073 + 48) = 0;
    return result;
  }

  if (v131 == *MEMORY[0x277CC6838])
  {
    (v130[12])(v127, v129);
    v379 = *v127;
    v378 = *(v127 + 8);
    v381 = *(v127 + 16);
    v380 = *(v127 + 24);
    swift_getKeyPath();
    sub_226D67DEC();

    v398 = *v1064;
    v399 = sub_226D676AC();
    MEMORY[0x28223BE20](v399);
    *(&v937 - 8) = v379;
    *(&v937 - 7) = v378;
    *(&v937 - 6) = v381;
    *(&v937 - 5) = v380;
    *(&v937 - 4) = v400;
    *(&v937 - 3) = v398;
    v935 = v401;
    sub_226D6EB7C();

LABEL_68:
    v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v420 = v1073;
    *(v1073 + 24) = v419;
    v420[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    v420[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v421 = __swift_allocate_boxed_opaque_existential_1(v420);
    v422 = *MEMORY[0x277CC67B8];
    v423 = *(*(v419 - 8) + 104);
    v424 = v419;
LABEL_69:
    v423(v421, v422, v424);
    goto LABEL_62;
  }

  if (v131 == *MEMORY[0x277CC69D8])
  {
    (v130[12])(v127, v129);
    v386 = *v127;
    v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EF8, &qword_226D7B8C8);
    (*(v1054 + 32))(v1009, v127 + *(v387 + 48), v1055);
    swift_getKeyPath();
    sub_226D67DEC();

    v414 = *v1064;
    v415 = sub_226D676AC();
    MEMORY[0x28223BE20](v415);
    *(&v937 - 6) = v414;
    *(&v937 - 40) = v386;
    *(&v937 - 4) = v1009;
    *(&v937 - 3) = v416;
    v935 = v417;
    sub_226D6EB8C();

    v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v441 = v1073;
    *(v1073 + 24) = v440;
    v441[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    v441[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v442 = __swift_allocate_boxed_opaque_existential_1(v441);
    (*(*(v440 - 8) + 104))(v442, *MEMORY[0x277CC67B8], v440);
    (*(v1072 + 8))(v1074, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v1073 + 48) = 0;
    v238 = *(v1054 + 8);
    v418 = &v1041;
LABEL_67:
    v239 = *(v418 - 32);
    v240 = &v1081;
    return v238(v239, *(v240 - 32));
  }

  if (v131 == *MEMORY[0x277CC6830])
  {
    (v130[12])(v127, v129);
    v394 = *v127;
    v393 = *(v127 + 8);
    v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EC0, &qword_226D7B8B0);
    v396 = v1073;
    *(v1073 + 24) = v395;
    v396[4] = sub_226AC4194(&qword_27D7A8EC8, &qword_27D7A8EC0, &qword_226D7B8B0, MEMORY[0x277CC67D0]);
    v396[5] = sub_226AC4194(&qword_27D7A8ED0, &qword_27D7A8EC0, &qword_226D7B8B0, MEMORY[0x277CC67C8]);
    v397 = __swift_allocate_boxed_opaque_existential_1(v396);
    swift_getKeyPath();
    sub_226D67DEC();

    v438 = sub_226D676AC();
    MEMORY[0x28223BE20](v438);
    *(&v937 - 4) = v394;
    *(&v937 - 3) = v393;
    v935 = v439;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8ED8, &qword_226D7B8B8);
    sub_226D6EB8C();

    *v397 = v1078;
LABEL_74:
    (*(*(v395 - 8) + 104))(v397, *MEMORY[0x277CC67C0], v395);
    goto LABEL_62;
  }

  if (v131 == *MEMORY[0x277CC6930])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    (v130[12])(v127, v129);
    v402 = *(v127 + 8);
    v1070 = *v127;
    v404 = v1072 + 32;
    v403 = *(v1072 + 32);
    v405 = v1052;
    v406 = v1071;
    v403(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v407 = (*(v404 + 48) + 16) & ~*(v404 + 48);
    v408 = (v1051 + v407 + 7) & 0xFFFFFFFFFFFFFFF8;
    v409 = (v408 + 95) & 0xFFFFFFFFFFFFFFF8;
    v410 = swift_allocObject();
    v403(v410 + v407, v405, v406);
    v411 = v410 + v408;
    v412 = v1081;
    *(v411 + 32) = v1080;
    *(v411 + 48) = v412;
    *(v411 + 64) = v1082;
    *(v411 + 80) = v1083;
    v413 = v1079;
    *v411 = v1078;
    *(v411 + 16) = v413;
    *(v410 + v409) = v1070;
    *(v410 + ((v409 + 15) & 0xFFFFFFFFFFFFFFF8)) = v402;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B8A0;
    *(result + 24) = v410;
    v180 = &unk_226D7B8A8;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC68C8])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    (v130[12])(v127, v129);
    v425 = *v127;
    v426 = *(v127 + 8);
    v428 = v1072 + 32;
    v427 = *(v1072 + 32);
    v429 = v1052;
    v430 = v1071;
    v427(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v431 = (*(v428 + 48) + 16) & ~*(v428 + 48);
    v432 = (v1051 + v431 + 7) & 0xFFFFFFFFFFFFFFF8;
    v433 = swift_allocObject();
    v427(v433 + v431, v429, v430);
    v434 = v433 + v432;
    v435 = v1081;
    *(v434 + 32) = v1080;
    *(v434 + 48) = v435;
    *(v434 + 64) = v1082;
    *(v434 + 80) = v1083;
    v436 = v1079;
    *v434 = v1078;
    *(v434 + 16) = v436;
    v437 = (v433 + ((v432 + 95) & 0xFFFFFFFFFFFFFFF8));
    *v437 = v425;
    v437[1] = v426;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B888;
    *(result + 24) = v433;
    v180 = &unk_226D7B890;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC6840])
  {
    (v130[12])(v127, v129);
    v443 = *v127;
    swift_getKeyPath();
    sub_226D67DEC();

    sub_226CDCEA8(v443);

    goto LABEL_68;
  }

  if (v131 == *MEMORY[0x277CC69E0])
  {
    (v130[12])(v127, v129);
    v445 = *v127;
    v444 = *(v127 + 8);
    v446 = *(v127 + 16);
    v447 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EB8, &qword_226D7B878);
    (*(v1054 + 32))(v1008, v127 + *(v447 + 64), v1055);
    swift_getKeyPath();
    sub_226D67DEC();

    v453 = sub_226D676AC();
    MEMORY[0x28223BE20](v453);
    *(&v937 - 6) = v454;
    *(&v937 - 5) = v445;
    *(&v937 - 4) = v444;
    *(&v937 - 24) = v446;
    v935 = v1008;
    v936 = v455;
    sub_226D6EB7C();

    v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v462 = v1073;
    *(v1073 + 24) = v461;
    v462[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    v462[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v463 = __swift_allocate_boxed_opaque_existential_1(v462);
    (*(*(v461 - 8) + 104))(v463, *MEMORY[0x277CC67B8], v461);
    (*(v1072 + 8))(v1074, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v1073 + 48) = 0;
    v238 = *(v1054 + 8);
    v418 = &v1040;
    goto LABEL_67;
  }

  if (v131 == *MEMORY[0x277CC6A10])
  {
    (v130[12])(v127, v129);
    v449 = *v127;
    v448 = *(v127 + 8);
    v450 = *(v127 + 16);
    v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EB8, &qword_226D7B878);
    (*(v1054 + 32))(v1007, v127 + *(v451 + 64), v1055);
    swift_getKeyPath();
    sub_226D67DEC();

    v459 = sub_226D676AC();
    MEMORY[0x28223BE20](v459);
    *(&v937 - 6) = v460;
    *(&v937 - 5) = v449;
    *(&v937 - 4) = v448;
    *(&v937 - 24) = v450;
    v935 = v1007;
    sub_226D6EB7C();

    v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v472 = v1073;
    *(v1073 + 24) = v471;
    v472[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    v472[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v473 = __swift_allocate_boxed_opaque_existential_1(v472);
    (*(*(v471 - 8) + 104))(v473, *MEMORY[0x277CC67B8], v471);
    (*(v1072 + 8))(v1074, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v1073 + 48) = 0;
    v238 = *(v1054 + 8);
    v418 = &v1039;
    goto LABEL_67;
  }

  if (v131 == *MEMORY[0x277CC6A08])
  {
    (v130[12])(v127, v129);
    v452 = *v127;
    swift_getKeyPath();
    sub_226D67DEC();

    v467 = *(*v1064 + 224);
    v468 = *(*v1064 + 232);
    v469 = __swift_project_boxed_opaque_existential_1((*v1064 + 200), v467);
    *(&v1079 + 1) = v467;
    *&v1080 = *(v468 + 8);
    v470 = __swift_allocate_boxed_opaque_existential_1(&v1078);
    (*(*(v467 - 8) + 16))(v470, v469, v467);
    sub_226B5A910(v452);
LABEL_86:
    sub_226AFD7B8(&v1078);
    goto LABEL_68;
  }

  if (v131 == *MEMORY[0x277CC69C0])
  {
    (v130[12])(v127, v129);
    v457 = *v127;
    v456 = *(v127 + 8);
    v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EB0, &qword_226D7B870);
    v458 = v1073;
    *(v1073 + 24) = v370;
    v458[4] = sub_226AC4194(&qword_281062C28, &qword_27D7A8EB0, &qword_226D7B870, MEMORY[0x277CC67D0]);
    v458[5] = sub_226AC4194(&qword_281062C30, &qword_27D7A8EB0, &qword_226D7B870, MEMORY[0x277CC67C8]);
    v372 = __swift_allocate_boxed_opaque_existential_1(v458);
    swift_getKeyPath();
    sub_226D67DEC();

    sub_226CDCFB0(v457, v456, v372);
LABEL_85:

    goto LABEL_64;
  }

  if (v131 == *MEMORY[0x277CC69F8])
  {
    (v130[12])(v127, v129);
    v465 = *v127;
    v464 = *(v127 + 8);
    v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EB0, &qword_226D7B870);
    v466 = v1073;
    *(v1073 + 24) = v370;
    v466[4] = sub_226AC4194(&qword_281062C28, &qword_27D7A8EB0, &qword_226D7B870, MEMORY[0x277CC67D0]);
    v466[5] = sub_226AC4194(&qword_281062C30, &qword_27D7A8EB0, &qword_226D7B870, MEMORY[0x277CC67C8]);
    v372 = __swift_allocate_boxed_opaque_existential_1(v466);
    swift_getKeyPath();
    sub_226D67DEC();

    sub_226CDCFDC(v465, v464, v372);
    goto LABEL_85;
  }

  if (v131 == *MEMORY[0x277CC6890])
  {
    (v130[12])(v127, v129);
    (*(v949 + 32))(v948, v127, v950);
    v474 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v475 = v1073;
    *(v1073 + 24) = v474;
    v475[4] = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67D0]);
    v475[5] = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67C8]);
    v476 = __swift_allocate_boxed_opaque_existential_1(v475);
    swift_getKeyPath();
    sub_226D67DEC();

    *v476 = sub_226CDD218(v948, 0, 0) & 1;
    (*(*(v474 - 8) + 104))(v476, *MEMORY[0x277CC67C0], v474);
    (*(v949 + 8))(v948, v950);
    goto LABEL_62;
  }

  if (v131 == *MEMORY[0x277CC69A8])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    (v130[12])(v127, v129);
    v477 = *(v127 + 8);
    v1068 = *v127;
    v1066 = v477;
    v478 = *(v127 + 24);
    v1070 = *(v127 + 16);
    v1069 = v478;
    v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EA8, &qword_226D7B850);
    v481 = v974 + 32;
    v480 = *(v974 + 32);
    v482 = v947;
    v483 = v976;
    (v480)(v947, v127 + *(v479 + 64), v976);
    v1065 = v480;
    v484 = v1072 + 32;
    v1072 = *(v1072 + 32);
    v485 = v1052;
    v486 = v1071;
    (v1072)(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    (v480)(v970, v482, v483);
    v487 = (*(v484 + 48) + 16) & ~*(v484 + 48);
    v488 = (v1051 + v487 + 7) & 0xFFFFFFFFFFFFFFF8;
    v489 = (v488 + 95) & 0xFFFFFFFFFFFFFFF8;
    v490 = (v489 + 23) & 0xFFFFFFFFFFFFFFF8;
    v491 = (*(v481 + 48) + v490 + 16) & ~*(v481 + 48);
    v492 = swift_allocObject();
    (v1072)(v492 + v487, v485, v486);
    v493 = v492 + v488;
    v494 = v1081;
    *(v493 + 32) = v1080;
    *(v493 + 48) = v494;
    *(v493 + 64) = v1082;
    *(v493 + 80) = v1083;
    v495 = v1079;
    *v493 = v1078;
    *(v493 + 16) = v495;
    v496 = (v492 + v489);
    v497 = v1066;
    *v496 = v1068;
    v496[1] = v497;
    v498 = (v492 + v490);
    v499 = v1069;
    *v498 = v1070;
    v498[1] = v499;
    (v1065)(v492 + v491, v970, v976);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B860;
    *(result + 24) = v492;
    v180 = &unk_226D7B868;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC69C8])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    (v130[12])(v127, v129);
    v1070 = *v127;
    v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EA0, &qword_226D7B830);
    v502 = v974 + 32;
    v501 = *(v974 + 32);
    v503 = v947;
    v504 = v976;
    v501(v947, v127 + *(v500 + 48), v976);
    v505 = v501;
    v1069 = v501;
    v507 = v1072 + 32;
    v506 = *(v1072 + 32);
    v508 = v1052;
    v509 = v1071;
    v506(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v505(v970, v503, v504);
    v510 = (*(v507 + 48) + 16) & ~*(v507 + 48);
    v511 = (v1051 + v510 + 7) & 0xFFFFFFFFFFFFFFF8;
    v512 = (v511 + 95) & 0xFFFFFFFFFFFFFFF8;
    v513 = (*(v502 + 48) + v512 + 8) & ~*(v502 + 48);
    v514 = swift_allocObject();
    v506(v514 + v510, v508, v509);
    v515 = v514 + v511;
    v516 = v1081;
    *(v515 + 32) = v1080;
    *(v515 + 48) = v516;
    *(v515 + 64) = v1082;
    *(v515 + 80) = v1083;
    v517 = v1079;
    *v515 = v1078;
    *(v515 + 16) = v517;
    *(v514 + v512) = v1070;
    (v1069)(v514 + v513, v970, v976);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B840;
    *(result + 24) = v514;
    v180 = &unk_226D7B848;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC6870])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    (v130[12])(v127, v129);
    v1070 = *v127;
    v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E98, &qword_226D7B810);
    v520 = v974 + 32;
    v519 = *(v974 + 32);
    v521 = v947;
    v522 = v976;
    v519(v947, v127 + *(v518 + 48), v976);
    v523 = v519;
    v1069 = v519;
    v525 = v1072 + 32;
    v524 = *(v1072 + 32);
    v526 = v1052;
    v527 = v1071;
    v524(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v523(v970, v521, v522);
    v528 = (*(v525 + 48) + 16) & ~*(v525 + 48);
    v529 = (v1051 + v528 + 7) & 0xFFFFFFFFFFFFFFF8;
    v530 = (v529 + 95) & 0xFFFFFFFFFFFFFFF8;
    v531 = (*(v520 + 48) + v530 + 8) & ~*(v520 + 48);
    v532 = swift_allocObject();
    v524(v532 + v528, v526, v527);
    v533 = v532 + v529;
    v534 = v1081;
    *(v533 + 32) = v1080;
    *(v533 + 48) = v534;
    *(v533 + 64) = v1082;
    *(v533 + 80) = v1083;
    v535 = v1079;
    *v533 = v1078;
    *(v533 + 16) = v535;
    *(v532 + v530) = v1070;
    (v1069)(v532 + v531, v970, v976);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B820;
    *(result + 24) = v532;
    v180 = &unk_226D7B828;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC68F8])
  {
    (v130[12])(v127, v129);
    v537 = *v127;
    v536 = *(v127 + 8);
    v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E90, &qword_226D7B808);
    v538 = v1073;
    *(v1073 + 24) = v370;
    v538[4] = sub_226AC4194(&qword_281062BE8, &qword_27D7A8E90, &qword_226D7B808, MEMORY[0x277CC67D0]);
    v538[5] = sub_226AC4194(&qword_281062BF0, &qword_27D7A8E90, &qword_226D7B808, MEMORY[0x277CC67C8]);
    v372 = __swift_allocate_boxed_opaque_existential_1(v538);
    swift_getKeyPath();
    sub_226D67DEC();

    sub_226CDD570(v537, v536);
    v540 = v539;

    *v372 = v540;
    goto LABEL_64;
  }

  if (v131 == *MEMORY[0x277CC69F0])
  {
    (v130[12])(v127, v129);
    v542 = *v127;
    v541 = *(v127 + 8);
    v543 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E70, &qword_226D7B7F8);
    (*(v1054 + 32))(v945, v127 + *(v543 + 48), v1055);
    v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E78, &qword_226D7B800);
    v545 = v1073;
    *(v1073 + 24) = v544;
    v545[4] = sub_226AC4194(&qword_27D7A8E80, &qword_27D7A8E78, &qword_226D7B800, MEMORY[0x277CC67D0]);
    v545[5] = sub_226AC4194(&qword_27D7A8E88, &qword_27D7A8E78, &qword_226D7B800, MEMORY[0x277CC67C8]);
    v546 = __swift_allocate_boxed_opaque_existential_1(v545);
    swift_getKeyPath();
    sub_226D67DEC();

    sub_226CDD758(v542, v541, v945, v546);

    (*(*(v544 - 8) + 104))(v546, *MEMORY[0x277CC67C0], v544);
    (*(v1054 + 8))(v945, v1055);
    goto LABEL_62;
  }

  if (v131 == *MEMORY[0x277CC6908])
  {
    (v130[12])(v127, v129);
    (*(v965 + 32))(v964, v127, v967);
    swift_getKeyPath();
    sub_226D67DEC();

    v575 = *v1064;
    v576 = sub_226D676AC();
    MEMORY[0x28223BE20](v576);
    v577 = v964;
    *(&v937 - 4) = v575;
    *(&v937 - 3) = v577;
    v935 = v578;
    sub_226D6EB7C();

    v610 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v611 = v1073;
    *(v1073 + 24) = v610;
    v611[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    v611[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v612 = __swift_allocate_boxed_opaque_existential_1(v611);
    (*(*(v610 - 8) + 104))(v612, *MEMORY[0x277CC67B8], v610);
    (*(v1072 + 8))(v1074, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v1073 + 48) = 0;
    return (*(v965 + 8))(v964, v967);
  }

  if (v131 == *MEMORY[0x277CC6858])
  {
    (v130[12])(v127, v129);
    v547 = *v127;
    v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E40, &qword_226D7B7E8);
    v548 = v1073;
    *(v1073 + 24) = v395;
    v548[4] = sub_226AC4194(&qword_27D7A8E48, &qword_27D7A8E40, &qword_226D7B7E8, MEMORY[0x277CC67D0]);
    v548[5] = sub_226AC4194(&qword_27D7A8E50, &qword_27D7A8E40, &qword_226D7B7E8, MEMORY[0x277CC67C8]);
    v397 = __swift_allocate_boxed_opaque_existential_1(v548);
    swift_getKeyPath();
    sub_226D67DEC();

    v549 = sub_226D676AC();
    MEMORY[0x28223BE20](v549);
    v935 = v547;
    v936 = v550;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6060, &qword_226D70A78);
    sub_226D6EB7C();

    *v397 = v1078;
    goto LABEL_74;
  }

  if (v131 == *MEMORY[0x277CC68C0])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    (v130[12])(v127, v129);
    v551 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E38, &qword_226D7B780);
    v552 = (v127 + *(v551 + 48));
    v554 = *v552;
    v553 = v552[1];
    v1070 = v554;
    v1069 = v553;
    v555 = *(v551 + 64);
    v556 = v946;
    sub_226AFD80C(v127, v946, &qword_27D7A8DA8, &unk_226D7D230);
    v557 = v956;
    sub_226AFD80C(v127 + v555, v956, &qword_27D7A8DA0, &qword_226D7B570);
    v558 = v1072 + 32;
    v1072 = *(v1072 + 32);
    v559 = v1052;
    v560 = v1071;
    (v1072)(v1052, v1074, v1071);
    sub_226AFD80C(v557, v983, &qword_27D7A8DA0, &qword_226D7B570);
    sub_226CD56EC(v1064, &v1078);
    sub_226AFD80C(v556, v955, &qword_27D7A8DA8, &unk_226D7D230);
    v561 = (*(v558 + 48) + 16) & ~*(v558 + 48);
    v562 = (v1051 + *(v969 + 80) + v561) & ~*(v969 + 80);
    v563 = (v972 + v562 + 7) & 0xFFFFFFFFFFFFFFF8;
    v564 = (v563 + 91) & 0xFFFFFFFFFFFFFFF8;
    v565 = (*(v951 + 80) + v564 + 32) & ~*(v951 + 80);
    v566 = (v952 + v565 + 7) & 0xFFFFFFFFFFFFFFF8;
    v567 = swift_allocObject();
    (v1072)(v567 + v561, v559, v560);
    sub_226AFD80C(v983, v567 + v562, &qword_27D7A8DA0, &qword_226D7B570);
    v568 = v567 + v563;
    v569 = v1081;
    *(v568 + 32) = v1080;
    *(v568 + 48) = v569;
    *(v568 + 64) = v1082;
    *(v568 + 80) = v1083;
    v570 = v1079;
    *v568 = v1078;
    *(v568 + 16) = v570;
    v571 = (v567 + v564);
    v572 = v1026;
    *v571 = v1025;
    v571[1] = v572;
    v573 = v1028;
    v571[2] = v1027;
    v571[3] = v573;
    v571[4] = v1029;
    v571[5] = v1030;
    v571[6] = v1031;
    v571[7] = v1032;
    sub_226AFD80C(v955, v567 + v565, &qword_27D7A8DA8, &unk_226D7D230);
    v574 = (v567 + v566);
    *v574 = v1070;
    v574[1] = v1069;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B790;
    *(result + 24) = v567;
    v180 = &unk_226D7B798;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC6868])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    v579 = v127;
    (v130[12])(v127, v129);
    v580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E30, &qword_226D7B760);
    v581 = (v127 + v580[12]);
    v583 = *v581;
    v582 = v581[1];
    v1070 = v583;
    v1069 = v582;
    v584 = v580[16];
    v585 = v580[20];
    v587 = v977 + 32;
    v586 = *(v977 + 32);
    v588 = v954;
    v589 = v979;
    v586(v954, v579, v979);
    v590 = v586;
    v1068 = v586;
    v591 = v958;
    sub_226AFD80C(v579 + v584, v958, &qword_27D7A6D68, &qword_226D75210);
    v592 = v579 + v585;
    v593 = v956;
    sub_226AFD80C(v592, v956, &qword_27D7A8DA0, &qword_226D7B570);
    v594 = v1072 + 32;
    v1072 = *(v1072 + 32);
    (v1072)(v1052, v1074, v1071);
    sub_226AFD80C(v593, v983, &qword_27D7A8DA0, &qword_226D7B570);
    sub_226CD56EC(v1064, &v1078);
    v590(v973, v588, v589);
    sub_226AFD80C(v591, v982, &qword_27D7A6D68, &qword_226D75210);
    v595 = (*(v594 + 48) + 16) & ~*(v594 + 48);
    v596 = (v1051 + *(v969 + 80) + v595) & ~*(v969 + 80);
    v597 = (v972 + v596 + 7) & 0xFFFFFFFFFFFFFFF8;
    v598 = (v597 + 91) & 0xFFFFFFFFFFFFFFF8;
    v599 = (*(v587 + 48) + v598 + 32) & ~*(v587 + 48);
    v600 = (v962 + v599 + 7) & 0xFFFFFFFFFFFFFFF8;
    v601 = (*(v968 + 80) + v600 + 16) & ~*(v968 + 80);
    v602 = swift_allocObject();
    (v1072)(v602 + v595, v1052, v1071);
    sub_226AFD80C(v983, v602 + v596, &qword_27D7A8DA0, &qword_226D7B570);
    v603 = v602 + v597;
    v604 = v1081;
    *(v603 + 32) = v1080;
    *(v603 + 48) = v604;
    *(v603 + 64) = v1082;
    *(v603 + 80) = v1083;
    v605 = v1079;
    *v603 = v1078;
    *(v603 + 16) = v605;
    v606 = (v602 + v598);
    v607 = v1026;
    *v606 = v1025;
    v606[1] = v607;
    v608 = v1028;
    v606[2] = v1027;
    v606[3] = v608;
    v606[4] = v1029;
    v606[5] = v1030;
    v606[6] = v1031;
    v606[7] = v1032;
    (v1068)(v602 + v599, v973, v979);
    v609 = (v602 + v600);
    *v609 = v1070;
    v609[1] = v1069;
    sub_226AFD80C(v982, v602 + v601, &qword_27D7A6D68, &qword_226D75210);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B770;
    *(result + 24) = v602;
    v180 = &unk_226D7B778;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC6970])
  {
    (*(v1072 + 8))(v1074, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    (v130[12])(v127, v129);
    v613 = *v127;
    sub_226CD56EC(v1064, &v1078);
    v614 = swift_allocObject();
    v615 = v1081;
    *(v614 + 48) = v1080;
    *(v614 + 64) = v615;
    *(v614 + 80) = v1082;
    v616 = v1083;
    v617 = v1079;
    *(v614 + 16) = v1078;
    *(v614 + 32) = v617;
    *(v614 + 96) = v616;
    *(v614 + 104) = v613;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B750;
    *(result + 24) = v614;
    v180 = &unk_226D7B758;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC6878])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    (v130[12])(v127, v129);
    v1070 = *(v127 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E28, &qword_226D7B728) + 48));
    v619 = v978 + 32;
    v618 = *(v978 + 32);
    v620 = v961;
    v621 = v980;
    v618(v961, v127, v980);
    v622 = v618;
    v1069 = v618;
    v623 = v1072 + 32;
    v1072 = *(v1072 + 32);
    v624 = v1052;
    v625 = v1071;
    (v1072)(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v622(v975, v620, v621);
    v626 = (*(v623 + 48) + 16) & ~*(v623 + 48);
    v627 = (v1051 + v626 + 7) & 0xFFFFFFFFFFFFFFF8;
    v628 = (*(v619 + 48) + v627 + 88) & ~*(v619 + 48);
    v629 = (v966 + v628 + 7) & 0xFFFFFFFFFFFFFFF8;
    v630 = swift_allocObject();
    (v1072)(v630 + v626, v624, v625);
    v631 = v630 + v627;
    v632 = v1081;
    *(v631 + 32) = v1080;
    *(v631 + 48) = v632;
    *(v631 + 64) = v1082;
    *(v631 + 80) = v1083;
    v633 = v1079;
    *v631 = v1078;
    *(v631 + 16) = v633;
    (v1069)(v630 + v628, v975, v621);
    *(v630 + v629) = v1070;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B738;
    *(result + 24) = v630;
    v180 = &unk_226D7B740;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC69E8])
  {
    (v130[12])(v127, v129);
    v634 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E20, &qword_226D7B720);
    v635 = *(v127 + *(v634 + 48));
    v636 = *(v127 + *(v634 + 64));
    (*(v1045 + 32))(v940, v127, v1050);
    swift_getKeyPath();
    sub_226D67DEC();

    v640 = *v1064;
    v641 = sub_226D676AC();
    MEMORY[0x28223BE20](v641);
    v642 = v940;
    *(&v937 - 6) = v640;
    *(&v937 - 5) = v642;
    *(&v937 - 4) = v635;
    *(&v937 - 24) = v636;
    v935 = v643;
    sub_226D6EB8C();

    v652 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v653 = v1073;
    *(v1073 + 24) = v652;
    v653[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    v653[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v654 = __swift_allocate_boxed_opaque_existential_1(v653);
    (*(*(v652 - 8) + 104))(v654, *MEMORY[0x277CC67B8], v652);
    (*(v1072 + 8))(v1074, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v1073 + 48) = 0;
    v238 = *(v1045 + 8);
    v644 = &v972;
LABEL_122:
    v239 = *(v644 - 32);
    v240 = &v1078 + 8;
    return v238(v239, *(v240 - 32));
  }

  if (v131 == *MEMORY[0x277CC69B0])
  {
    (v130[12])(v127, v129);
    (*(v1045 + 32))(v939, v127, v1050);
    swift_getKeyPath();
    sub_226D67DEC();

    v648 = *v1064;
    v649 = sub_226D676AC();
    MEMORY[0x28223BE20](v649);
    v650 = v939;
    *(&v937 - 4) = v648;
    *(&v937 - 3) = v650;
    v935 = v651;
    sub_226D6EB8C();

    v661 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v662 = v1073;
    *(v1073 + 24) = v661;
    v662[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    v662[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v663 = __swift_allocate_boxed_opaque_existential_1(v662);
    (*(*(v661 - 8) + 104))(v663, *MEMORY[0x277CC67B8], v661);
    (*(v1072 + 8))(v1074, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v1073 + 48) = 0;
    v238 = *(v1045 + 8);
    v644 = &v971;
    goto LABEL_122;
  }

  if (v131 == *MEMORY[0x277CC69D0])
  {
    (v130[12])(v127, v129);
    v637 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E18, &qword_226D7B718);
    v638 = *(v127 + *(v637 + 48));
    v639 = *(v127 + *(v637 + 64));
    (*(v1045 + 32))(v941, v127, v1050);
    swift_getKeyPath();
    sub_226D67DEC();

    v657 = *v1064;
    v658 = sub_226D676AC();
    MEMORY[0x28223BE20](v658);
    v659 = v941;
    *(&v937 - 6) = v657;
    *(&v937 - 5) = v659;
    *(&v937 - 4) = v638;
    *(&v937 - 24) = v639;
    v935 = v660;
    sub_226D6EB8C();

    v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v669 = v1073;
    *(v1073 + 24) = v668;
    v669[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    v669[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v670 = __swift_allocate_boxed_opaque_existential_1(v669);
    (*(*(v668 - 8) + 104))(v670, *MEMORY[0x277CC67B8], v668);
    (*(v1072 + 8))(v1074, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v1073 + 48) = 0;
    v238 = *(v1045 + 8);
    v644 = &v973;
    goto LABEL_122;
  }

  if (v131 == *MEMORY[0x277CC6818])
  {
    (v130[12])(v127, v129);
    (*(v995 + 32))(v993, v127, v996);
    v645 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E00, &qword_226D7B710);
    v646 = v1073;
    *(v1073 + 24) = v645;
    v646[4] = sub_226AC4194(&qword_27D7A8E08, &qword_27D7A8E00, &qword_226D7B710, MEMORY[0x277CC67D0]);
    v646[5] = sub_226AC4194(&qword_27D7A8E10, &qword_27D7A8E00, &qword_226D7B710, MEMORY[0x277CC67C8]);
    v647 = __swift_allocate_boxed_opaque_existential_1(v646);
    swift_getKeyPath();
    sub_226D67DEC();

    v667 = *(*(*(*v1064 + 320) + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
    MEMORY[0x28223BE20](v666);
    v935 = v993;
    os_unfair_lock_lock(v667 + 6);
    sub_226CD66DC(v647);
    os_unfair_lock_unlock(v667 + 6);
    (*(*(v645 - 8) + 104))(v647, *MEMORY[0x277CC67C0], v645);
    (*(v1072 + 8))(v1074, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    result = (*(v995 + 8))(v993, v996);
    goto LABEL_63;
  }

  if (v131 == *MEMORY[0x277CC6A30])
  {
    (v130[12])(v127, v129);
    v655 = *v127;
    v656 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DF8, &qword_226D7B708);
    (*(v1011 + 32))(v957, v127 + *(v656 + 48), v1010);
    swift_getKeyPath();
    sub_226D67DEC();

    v673 = sub_226D676AC();
    MEMORY[0x28223BE20](v673);
    v674 = v957;
    *(&v937 - 4) = v675;
    *(&v937 - 3) = v674;
    LOBYTE(v935) = v655;
    sub_226D6EB7C();

    v695 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v696 = v1073;
    *(v1073 + 24) = v695;
    v696[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    v696[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v697 = __swift_allocate_boxed_opaque_existential_1(v696);
    (*(*(v695 - 8) + 104))(v697, *MEMORY[0x277CC67B8], v695);
    (*(v1072 + 8))(v1074, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v1073 + 48) = 0;
    v238 = *(v1011 + 8);
    v384 = &v989;
    goto LABEL_57;
  }

  if (v131 == *MEMORY[0x277CC6948])
  {
    (v130[12])(v127, v129);
    v664 = *v127;
    v665 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DF0, &qword_226D7B700);
    (*(v1011 + 32))(v960, v127 + *(v665 + 48), v1010);
    swift_getKeyPath();
    sub_226D67DEC();

    v692 = sub_226D676AC();
    MEMORY[0x28223BE20](v692);
    v693 = v960;
    *(&v937 - 4) = v694;
    *(&v937 - 3) = v693;
    LOBYTE(v935) = v664;
    sub_226D6EB7C();

    v704 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v705 = v1073;
    *(v1073 + 24) = v704;
    v705[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    v705[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v706 = __swift_allocate_boxed_opaque_existential_1(v705);
    (*(*(v704 - 8) + 104))(v706, *MEMORY[0x277CC67B8], v704);
    (*(v1072 + 8))(v1074, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v1073 + 48) = 0;
    v238 = *(v1011 + 8);
    v384 = &v992;
    goto LABEL_57;
  }

  if (v131 == *MEMORY[0x277CC6A18])
  {
    (v130[12])(v127, v129);
    v671 = *v127;
    v672 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DE8, &qword_226D7B6C8);
    (*(v1011 + 32))(v963, v127 + *(v672 + 48), v1010);
    swift_getKeyPath();
    sub_226D67DEC();

    v701 = sub_226D676AC();
    MEMORY[0x28223BE20](v701);
    v702 = v963;
    *(&v937 - 4) = v703;
    *(&v937 - 3) = v702;
    LOBYTE(v935) = v671;
    sub_226D6EB7C();

    v707 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v708 = v1073;
    *(v1073 + 24) = v707;
    v708[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    v708[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v709 = __swift_allocate_boxed_opaque_existential_1(v708);
    (*(*(v707 - 8) + 104))(v709, *MEMORY[0x277CC67B8], v707);
    (*(v1072 + 8))(v1074, v1071);
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v1073 + 48) = 0;
    v238 = *(v1011 + 8);
    v384 = &v995;
    goto LABEL_57;
  }

  if (v131 == *MEMORY[0x277CC6880])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    (v130[12])(v127, v129);
    v676 = v1011 + 32;
    v677 = *(v1011 + 32);
    v678 = v959;
    v679 = v1010;
    v677(v959, v127, v1010);
    v680 = v677;
    v1070 = v677;
    v681 = v1072 + 32;
    v1072 = *(v1072 + 32);
    v682 = v1052;
    v683 = v1071;
    (v1072)(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v684 = v985;
    v680(v985, v678, v679);
    v685 = (*(v681 + 48) + 16) & ~*(v681 + 48);
    v686 = (v1051 + v685 + 7) & 0xFFFFFFFFFFFFFFF8;
    v687 = (*(v676 + 48) + v686 + 88) & ~*(v676 + 48);
    v688 = swift_allocObject();
    (v1072)(v688 + v685, v682, v683);
    v689 = v688 + v686;
    v690 = v1081;
    *(v689 + 32) = v1080;
    *(v689 + 48) = v690;
    *(v689 + 64) = v1082;
    *(v689 + 80) = v1083;
    v691 = v1079;
    *v689 = v1078;
    *(v689 + 16) = v691;
    (v1070)(v688 + v687, v684, v679);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B6B8;
    *(result + 24) = v688;
    v180 = &unk_226D7B6C0;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC6888])
  {
    (v130[12])(v127, v129);
    v698 = *v127;
    v699 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DE0, &qword_226D7B6A8);
    v700 = v989;
    (*(v1005 + 32))(v989, v127 + *(v699 + 48), v1006);
    sub_226CD45F0(v1074, v1064, v698, v700);

    v713 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v714 = v1073;
    *(v1073 + 24) = v713;
    v714[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    v714[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v715 = __swift_allocate_boxed_opaque_existential_1(v714);
    (*(*(v713 - 8) + 104))(v715, *MEMORY[0x277CC67B8], v713);
    v716 = *(v1005 + 8);
    v717 = &v1021;
LABEL_139:
    v720 = *(v717 - 32);
    v721 = &v1038;
LABEL_93:
    v716(v720, *(v721 - 32));
    goto LABEL_62;
  }

  if (v131 == *MEMORY[0x277CC68A0])
  {
    (v130[12])(v127, v129);
    sub_226CD4860(v1074, v1064, *v127);

    goto LABEL_68;
  }

  if (v131 == *MEMORY[0x277CC6958])
  {
    (v130[12])(v127, v129);
    v710 = *v127;
    v711 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DD8, &qword_226D7B6A0);
    v712 = *(v711 + 64);
    (*(v1005 + 32))(v1001, v127 + *(v711 + 48), v1006);
    (*(v1045 + 32))(v943, v127 + v712, v1050);
    swift_getKeyPath();
    sub_226D67DEC();

    sub_226CCFEE0(v710, v1001, v943);

    v739 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v740 = v1073;
    *(v1073 + 24) = v739;
    v740[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    v740[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v741 = __swift_allocate_boxed_opaque_existential_1(v740);
    (*(*(v739 - 8) + 104))(v741, *MEMORY[0x277CC67B8], v739);
    (*(v1045 + 8))(v943, v1050);
    v716 = *(v1005 + 8);
    v717 = &v1033;
    goto LABEL_139;
  }

  if (v131 == *MEMORY[0x277CC6968])
  {
    (v130[12])(v127, v129);
    v718 = *v127;
    v719 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DD0, &qword_226D7B698);
    (*(v1045 + 32))(v944, v127 + *(v719 + 48), v1050);
    swift_getKeyPath();
    sub_226D67DEC();

    sub_226CD0360(v718, v944);

    v761 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v762 = v1073;
    *(v1073 + 24) = v761;
    v762[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    v762[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v763 = __swift_allocate_boxed_opaque_existential_1(v762);
    (*(*(v761 - 8) + 104))(v763, *MEMORY[0x277CC67B8], v761);
    v716 = *(v1045 + 8);
    v738 = &v976;
LABEL_142:
    v720 = *(v738 - 32);
    v721 = &v1078 + 1;
    goto LABEL_93;
  }

  if (v131 == *MEMORY[0x277CC69B8])
  {
    (v130[12])(v127, v129);
    (*(v1045 + 32))(v942, v127, v1050);
    swift_getKeyPath();
    sub_226D67DEC();

    sub_226CD0684(v942);
    v758 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
    v759 = v1073;
    *(v1073 + 24) = v758;
    v759[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
    v759[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
    v760 = __swift_allocate_boxed_opaque_existential_1(v759);
    (*(*(v758 - 8) + 104))(v760, *MEMORY[0x277CC67B8], v758);
    v716 = *(v1045 + 8);
    v738 = &v974;
    goto LABEL_142;
  }

  if (v131 == *MEMORY[0x277CC6998])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    (v130[12])(v127, v129);
    v1070 = *(v127 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DC8, &qword_226D7B648) + 48));
    v723 = v990 + 32;
    v722 = *(v990 + 32);
    v724 = v984;
    v725 = v992;
    v722(v984, v127, v992);
    v726 = v722;
    v1069 = v722;
    v727 = v1072 + 32;
    v1072 = *(v1072 + 32);
    v728 = v1052;
    v729 = v1071;
    (v1072)(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v726(v988, v724, v725);
    v730 = (*(v727 + 48) + 16) & ~*(v727 + 48);
    v731 = (v1051 + v730 + 7) & 0xFFFFFFFFFFFFFFF8;
    v732 = (*(v723 + 48) + v731 + 88) & ~*(v723 + 48);
    v733 = (v986 + v732 + 7) & 0xFFFFFFFFFFFFFFF8;
    v734 = swift_allocObject();
    (v1072)(v734 + v730, v728, v729);
    v735 = v734 + v731;
    v736 = v1081;
    *(v735 + 32) = v1080;
    *(v735 + 48) = v736;
    *(v735 + 64) = v1082;
    *(v735 + 80) = v1083;
    v737 = v1079;
    *v735 = v1078;
    *(v735 + 16) = v737;
    (v1069)(v734 + v732, v988, v725);
    *(v734 + v733) = v1070;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B658;
    *(result + 24) = v734;
    v180 = &unk_226D7B660;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC68B0])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    (v130[12])(v127, v129);
    v742 = v1011 + 32;
    v743 = *(v1011 + 32);
    v744 = v959;
    v745 = v1010;
    v743(v959, v127, v1010);
    v746 = v743;
    v1070 = v743;
    v747 = v1072 + 32;
    v1072 = *(v1072 + 32);
    v748 = v1052;
    v749 = v1071;
    (v1072)(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v750 = v985;
    v746(v985, v744, v745);
    v751 = (*(v747 + 48) + 16) & ~*(v747 + 48);
    v752 = (v1051 + v751 + 7) & 0xFFFFFFFFFFFFFFF8;
    v753 = (*(v742 + 48) + v752 + 88) & ~*(v742 + 48);
    v754 = swift_allocObject();
    (v1072)(v754 + v751, v748, v749);
    v755 = v754 + v752;
    v756 = v1081;
    *(v755 + 32) = v1080;
    *(v755 + 48) = v756;
    *(v755 + 64) = v1082;
    *(v755 + 80) = v1083;
    v757 = v1079;
    *v755 = v1078;
    *(v755 + 16) = v757;
    (v1070)(v754 + v753, v750, v745);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B638;
    *(result + 24) = v754;
    v180 = &unk_226D7B640;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC6A00])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    (v130[12])(v127, v129);
    v1070 = *(v127 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DC0, &qword_226D7B5F8) + 48));
    v765 = v998 + 32;
    v764 = *(v998 + 32);
    v766 = v987;
    v767 = v1000;
    v764(v987, v127, v1000);
    v768 = v764;
    v1069 = v764;
    v769 = v1072 + 32;
    v1072 = *(v1072 + 32);
    v770 = v1052;
    v771 = v1071;
    (v1072)(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v768(v997, v766, v767);
    v772 = (*(v769 + 48) + 16) & ~*(v769 + 48);
    v773 = (v1051 + v772 + 7) & 0xFFFFFFFFFFFFFFF8;
    v774 = (*(v765 + 48) + v773 + 88) & ~*(v765 + 48);
    v775 = (v991 + v774 + 7) & 0xFFFFFFFFFFFFFFF8;
    v776 = swift_allocObject();
    (v1072)(v776 + v772, v770, v771);
    v777 = v776 + v773;
    v778 = v1081;
    *(v777 + 32) = v1080;
    *(v777 + 48) = v778;
    *(v777 + 64) = v1082;
    *(v777 + 80) = v1083;
    v779 = v1079;
    *v777 = v1078;
    *(v777 + 16) = v779;
    (v1069)(v776 + v774, v997, v767);
    *(v776 + v775) = v1070;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B608;
    *(result + 24) = v776;
    v180 = &unk_226D7B610;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC68E0])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    (v130[12])(v127, v129);
    v780 = v1011 + 32;
    v781 = *(v1011 + 32);
    v782 = v959;
    v783 = v1010;
    v781(v959, v127, v1010);
    v784 = v781;
    v1070 = v781;
    v785 = v1072 + 32;
    v1072 = *(v1072 + 32);
    v786 = v1052;
    v787 = v1071;
    (v1072)(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v788 = v985;
    v784(v985, v782, v783);
    v789 = (*(v785 + 48) + 16) & ~*(v785 + 48);
    v790 = (v1051 + v789 + 7) & 0xFFFFFFFFFFFFFFF8;
    v791 = (*(v780 + 48) + v790 + 88) & ~*(v780 + 48);
    v792 = swift_allocObject();
    (v1072)(v792 + v789, v786, v787);
    v793 = v792 + v790;
    v794 = v1081;
    *(v793 + 32) = v1080;
    *(v793 + 48) = v794;
    *(v793 + 64) = v1082;
    *(v793 + 80) = v1083;
    v795 = v1079;
    *v793 = v1078;
    *(v793 + 16) = v795;
    (v1070)(v792 + v791, v788, v783);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B5E8;
    *(result + 24) = v792;
    v180 = &unk_226D7B5F0;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC69A0])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    (v130[12])(v127, v129);
    v1070 = *(v127 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DB8, &qword_226D7B5A8) + 48));
    v797 = v1003 + 32;
    v796 = *(v1003 + 32);
    v798 = v994;
    v799 = v1004;
    v796(v994, v127, v1004);
    v800 = v796;
    v1069 = v796;
    v801 = v1072 + 32;
    v1072 = *(v1072 + 32);
    v802 = v1052;
    v803 = v1071;
    (v1072)(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v800(v1002, v798, v799);
    v804 = (*(v801 + 48) + 16) & ~*(v801 + 48);
    v805 = (v1051 + v804 + 7) & 0xFFFFFFFFFFFFFFF8;
    v806 = (*(v797 + 48) + v805 + 88) & ~*(v797 + 48);
    v807 = (v999 + v806 + 7) & 0xFFFFFFFFFFFFFFF8;
    v808 = swift_allocObject();
    (v1072)(v808 + v804, v802, v803);
    v809 = v808 + v805;
    v810 = v1081;
    *(v809 + 32) = v1080;
    *(v809 + 48) = v810;
    *(v809 + 64) = v1082;
    *(v809 + 80) = v1083;
    v811 = v1079;
    *v809 = v1078;
    *(v809 + 16) = v811;
    (v1069)(v808 + v806, v1002, v799);
    *(v808 + v807) = v1070;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B5B8;
    *(result + 24) = v808;
    v180 = &unk_226D7B5C0;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC68B8])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    (v130[12])(v127, v129);
    v812 = v1011 + 32;
    v813 = *(v1011 + 32);
    v814 = v959;
    v815 = v1010;
    v813(v959, v127, v1010);
    v816 = v813;
    v1070 = v813;
    v817 = v1072 + 32;
    v1072 = *(v1072 + 32);
    v818 = v1052;
    v819 = v1071;
    (v1072)(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v820 = v985;
    v816(v985, v814, v815);
    v821 = (*(v817 + 48) + 16) & ~*(v817 + 48);
    v822 = (v1051 + v821 + 7) & 0xFFFFFFFFFFFFFFF8;
    v823 = (*(v812 + 48) + v822 + 88) & ~*(v812 + 48);
    v824 = swift_allocObject();
    (v1072)(v824 + v821, v818, v819);
    v825 = v824 + v822;
    v826 = v1081;
    *(v825 + 32) = v1080;
    *(v825 + 48) = v826;
    *(v825 + 64) = v1082;
    *(v825 + 80) = v1083;
    v827 = v1079;
    *v825 = v1078;
    *(v825 + 16) = v827;
    (v1070)(v824 + v823, v820, v815);
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B598;
    *(result + 24) = v824;
    v180 = &unk_226D7B5A0;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC6810])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    v828 = *v1064;
    v830 = v1072 + 32;
    v829 = *(v1072 + 32);
    v831 = v1052;
    v832 = v1071;
    v829(v1052, v1074, v1071);
    v833 = (*(v830 + 48) + 16) & ~*(v830 + 48);
    v834 = (v1051 + v833 + 7) & 0xFFFFFFFFFFFFFFF8;
    v835 = swift_allocObject();
    v829(v835 + v833, v831, v832);
    *(v835 + v834) = v828;
    v836 = swift_allocObject();
    *(v836 + 16) = &unk_226D7B9D0;
    *(v836 + 24) = v835;
    v837 = v1073;
    *v1073 = &unk_226D7B9D8;
    *(v837 + 8) = v836;
    *(v837 + 48) = 1;
  }

  if (v131 == *MEMORY[0x277CC6938])
  {
    v838 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v839 = v1073;
    *(v1073 + 24) = v838;
    *(v839 + 32) = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67D0]);
    *(v839 + 40) = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67C8]);
    v840 = __swift_allocate_boxed_opaque_existential_1(v839);
    v841 = (*(*(*v1064 + 512) + 16))();
LABEL_163:
    *v840 = v841 & 1;
    (*(*(v838 - 8) + 104))(v840, *MEMORY[0x277CC67C0], v838);
    (*(v1072 + 8))(v1074, v1071);
    result = sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    *(v839 + 48) = 0;
    return result;
  }

  if (v131 == *MEMORY[0x277CC6800])
  {
    v838 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v839 = v1073;
    *(v1073 + 24) = v838;
    *(v839 + 32) = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67D0]);
    *(v839 + 40) = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67C8]);
    v840 = __swift_allocate_boxed_opaque_existential_1(v839);
    v841 = (*(*(*v1064 + 512) + 8))();
    goto LABEL_163;
  }

  if (v131 == *MEMORY[0x277CC6860])
  {
    v838 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v839 = v1073;
    *(v1073 + 24) = v838;
    *(v839 + 32) = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67D0]);
    *(v839 + 40) = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67C8]);
    v840 = __swift_allocate_boxed_opaque_existential_1(v839);
    v841 = (*(*(*v1064 + 512) + 32))();
    goto LABEL_163;
  }

  if (v131 == *MEMORY[0x277CC67F8])
  {
    v838 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v839 = v1073;
    *(v1073 + 24) = v838;
    *(v839 + 32) = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67D0]);
    *(v839 + 40) = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67C8]);
    v840 = __swift_allocate_boxed_opaque_existential_1(v839);
    v841 = (*(*(*v1064 + 512) + 24))();
    goto LABEL_163;
  }

  if (v131 == *MEMORY[0x277CC6848])
  {
    v842 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F40, &qword_226D7B8F0);
    v843 = v1073;
    *(v1073 + 24) = v842;
    v843[4] = sub_226AC4194(&qword_27D7A8F48, &qword_27D7A8F40, &qword_226D7B8F0, MEMORY[0x277CC67D0]);
    v843[5] = sub_226AC4194(&qword_27D7A8F50, &qword_27D7A8F40, &qword_226D7B8F0, MEMORY[0x277CC67C8]);
    v844 = __swift_allocate_boxed_opaque_existential_1(v843);
    swift_getKeyPath();
    sub_226D67DEC();

    v845 = v1056;
    v846 = v1034;
    v847 = v1057;
    (*(v1056 + 104))(v1034, *MEMORY[0x277CC65B0], v1057);
    sub_226CD0988(v846, &v1084);
    (*(v845 + 8))(v846, v847);
    v848 = sub_226D6704C();
    sub_226CDC96C(v848, MEMORY[0x277CC6A68]);
    *v844 = v849;
LABEL_189:
    v422 = *MEMORY[0x277CC67C0];
    v423 = *(*(v842 - 8) + 104);
    v421 = v844;
    goto LABEL_190;
  }

  if (v131 == *MEMORY[0x277CC68D0])
  {
    swift_getKeyPath();
    sub_226D67DEC();

    sub_226CDCBD0(v850);
    goto LABEL_68;
  }

  if (v131 == *MEMORY[0x277CC6900])
  {
    swift_getKeyPath();
    sub_226D67DEC();

    sub_226CDCD3C(v851);
    goto LABEL_68;
  }

  if (v131 == *MEMORY[0x277CC6978])
  {
    v842 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v852 = v1073;
    *(v1073 + 24) = v842;
    v852[4] = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67D0]);
    v852[5] = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67C8]);
    v844 = __swift_allocate_boxed_opaque_existential_1(v852);
    swift_getKeyPath();
    sub_226D67DEC();

    v853 = *(*v1064 + 224);
    v854 = *(*v1064 + 232);
    v855 = __swift_project_boxed_opaque_existential_1((*v1064 + 200), v853);
    *(&v1079 + 1) = v853;
    *&v1080 = *(v854 + 8);
    v856 = __swift_allocate_boxed_opaque_existential_1(&v1078);
    (*(*(v853 - 8) + 16))(v856, v855, v853);
    v857 = v938;
    v858 = sub_226B5A79C(v938);
    sub_226AC47B0(v857, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_176:
    sub_226AFD7B8(&v1078);
    *v844 = v858 & 1;
    goto LABEL_189;
  }

  if (v131 == *MEMORY[0x277CC6A20])
  {
    v842 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8EE0, &qword_226D7B8C0);
    v859 = v1073;
    *(v1073 + 24) = v842;
    v859[4] = sub_226AC4194(&qword_27D7A8EE8, &qword_27D7A8EE0, &qword_226D7B8C0, MEMORY[0x277CC67D0]);
    v859[5] = sub_226AC4194(&qword_27D7A8EF0, &qword_27D7A8EE0, &qword_226D7B8C0, MEMORY[0x277CC67C8]);
    v844 = __swift_allocate_boxed_opaque_existential_1(v859);
    swift_getKeyPath();
    sub_226D67DEC();

    v860 = sub_226D676AC();
    MEMORY[0x28223BE20](v860);
    v935 = v861;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
    sub_226D6EB8C();

    *v844 = v1078;
    goto LABEL_189;
  }

  if (v131 == *MEMORY[0x277CC6988])
  {
    v842 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v862 = v1073;
    *(v1073 + 24) = v842;
    v862[4] = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67D0]);
    v862[5] = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67C8]);
    v844 = __swift_allocate_boxed_opaque_existential_1(v862);
    swift_getKeyPath();
    sub_226D67DEC();

    v863 = *(*v1064 + 224);
    v864 = *(*v1064 + 232);
    v865 = __swift_project_boxed_opaque_existential_1((*v1064 + 200), v863);
    *(&v1079 + 1) = v863;
    *&v1080 = *(v864 + 8);
    v866 = __swift_allocate_boxed_opaque_existential_1(&v1078);
    (*(*(v863 - 8) + 16))(v866, v865, v863);
    __swift_project_boxed_opaque_existential_1(&v1078, *(&v1079 + 1));
    v858 = sub_226D69A3C();
    goto LABEL_176;
  }

  if (v131 == *MEMORY[0x277CC6990])
  {
    v842 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
    v867 = v1073;
    *(v1073 + 24) = v842;
    v867[4] = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67D0]);
    v867[5] = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67C8]);
    v868 = __swift_allocate_boxed_opaque_existential_1(v867);
    sub_226CD226C(v1064, v868);
    v422 = *MEMORY[0x277CC67C0];
    v423 = *(*(v842 - 8) + 104);
    v421 = v868;
LABEL_190:
    v424 = v842;
    goto LABEL_69;
  }

  if (v131 == *MEMORY[0x277CC6940])
  {
    swift_getKeyPath();
    sub_226D67DEC();

    v869 = *(*v1064 + 224);
    v870 = *(*v1064 + 232);
    v871 = __swift_project_boxed_opaque_existential_1((*v1064 + 200), v869);
    *(&v1079 + 1) = v869;
    *&v1080 = *(v870 + 8);
    v872 = __swift_allocate_boxed_opaque_existential_1(&v1078);
    (*(*(v869 - 8) + 16))(v872, v871, v869);
    __swift_project_boxed_opaque_existential_1(&v1078, *(&v1079 + 1));
    sub_226D69A1C();
    __swift_project_boxed_opaque_existential_1(&v1078, *(&v1079 + 1));
    sub_226D69A1C();
    goto LABEL_86;
  }

  if (v131 == *MEMORY[0x277CC67F0])
  {
    v842 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8E58, &qword_226D7B7F0);
    v873 = v1073;
    *(v1073 + 24) = v842;
    v873[4] = sub_226AC4194(&qword_27D7A8E60, &qword_27D7A8E58, &qword_226D7B7F0, MEMORY[0x277CC67D0]);
    v873[5] = sub_226AC4194(&qword_27D7A8E68, &qword_27D7A8E58, &qword_226D7B7F0, MEMORY[0x277CC67C8]);
    v844 = __swift_allocate_boxed_opaque_existential_1(v873);
    swift_getKeyPath();
    sub_226D67DEC();

    v877 = *v1064;
    v878 = sub_226D676AC();
    MEMORY[0x28223BE20](v878);
    v935 = v879;
    v936 = v877;
    sub_226D679DC();
    sub_226D6EB8C();

    goto LABEL_189;
  }

  if (v131 == *MEMORY[0x277CC6820])
  {
    v874 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7438, &qword_226D74E60);
    v875 = v1073;
    v1069 = v874;
    *(v1073 + 24) = v874;
    v875[4] = sub_226AC4194(&qword_27D7A7440, &qword_27D7A7438, &qword_226D74E60, MEMORY[0x277CC67D0]);
    v875[5] = sub_226AC4194(&qword_27D7A7448, &qword_27D7A7438, &qword_226D74E60, MEMORY[0x277CC67C8]);
    v876 = __swift_allocate_boxed_opaque_existential_1(v875);
    swift_getKeyPath();
    sub_226D67DEC();

    v893 = *v1064;
    v894 = sub_226D320D4();
    if (v894)
    {
      v895 = sub_226D66EDC();
      sub_226CD740C();
      v896 = swift_allocError();
      v898 = v897;
      (*(v1060 + 104))(v897, *MEMORY[0x277CC6A40], v138);
      (*(*(v895 - 8) + 104))(v898, *MEMORY[0x277CC65D0], v895);
      swift_willThrow();
      v899 = v1073;
      __swift_deallocate_boxed_opaque_existential_2(v1073);
      v900 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
      v899[3] = v900;
      v899[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
      v899[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
      v901 = __swift_allocate_boxed_opaque_existential_1(v899);
      v902 = v896;
      sub_226D66FBC();
      (*(*(v900 - 8) + 104))(v901, *MEMORY[0x277CC67B0], v900);
    }

    else
    {
      v903 = v893[38];
      v904 = v893[39];
      __swift_project_boxed_opaque_existential_1(v893 + 35, v903);
      (*(v904 + 8))(v160, v128, v159, v126, v1074, v903, v904);
      (*(*(v1069 - 1) + 104))(v876, *MEMORY[0x277CC67C0], v1069);
    }

    goto LABEL_62;
  }

  if (v131 == *MEMORY[0x277CC6850])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    v881 = v1072 + 32;
    v880 = *(v1072 + 32);
    v882 = v1052;
    v883 = v1071;
    v880(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v884 = (*(v881 + 48) + 16) & ~*(v881 + 48);
    v885 = (v1051 + v884 + 7) & 0xFFFFFFFFFFFFFFF8;
    v886 = swift_allocObject();
    v880(v886 + v884, v882, v883);
    v887 = v886 + v885;
    v888 = v1081;
    *(v887 + 32) = v1080;
    *(v887 + 48) = v888;
    *(v887 + 64) = v1082;
    *(v887 + 80) = v1083;
    v889 = v1079;
    *v887 = v1078;
    *(v887 + 16) = v889;
    v890 = (v886 + ((v885 + 91) & 0xFFFFFFFFFFFFFFF8));
    v891 = v1026;
    *v890 = v1025;
    v890[1] = v891;
    v892 = v1028;
    v890[2] = v1027;
    v890[3] = v892;
    v890[4] = v1029;
    v890[5] = v1030;
    v890[6] = v1031;
    v890[7] = v1032;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B7A8;
    *(result + 24) = v886;
    v180 = &unk_226D7B7B0;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC68F0])
  {
    sub_226CD4AC0();
    goto LABEL_68;
  }

  if (v131 == *MEMORY[0x277CC6928])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    v906 = v1072 + 32;
    v905 = *(v1072 + 32);
    v907 = v1052;
    v908 = v1071;
    v905(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v909 = (*(v906 + 48) + 16) & ~*(v906 + 48);
    v910 = (v1051 + v909 + 7) & 0xFFFFFFFFFFFFFFF8;
    v911 = swift_allocObject();
    v905(v911 + v909, v907, v908);
    v912 = v911 + v910;
    v913 = v1081;
    *(v912 + 32) = v1080;
    *(v912 + 48) = v913;
    *(v912 + 64) = v1082;
    *(v912 + 80) = v1083;
    v914 = v1079;
    *v912 = v1078;
    *(v912 + 16) = v914;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B620;
    *(result + 24) = v911;
    v180 = &unk_226D7B628;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC6960])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    v916 = v1072 + 32;
    v915 = *(v1072 + 32);
    v917 = v1052;
    v918 = v1071;
    v915(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v919 = (*(v916 + 48) + 16) & ~*(v916 + 48);
    v920 = (v1051 + v919 + 7) & 0xFFFFFFFFFFFFFFF8;
    v921 = swift_allocObject();
    v915(v921 + v919, v917, v918);
    v922 = v921 + v920;
    v923 = v1081;
    *(v922 + 32) = v1080;
    *(v922 + 48) = v923;
    *(v922 + 64) = v1082;
    *(v922 + 80) = v1083;
    v924 = v1079;
    *v922 = v1078;
    *(v922 + 16) = v924;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B5D0;
    *(result + 24) = v921;
    v180 = &unk_226D7B5D8;
    goto LABEL_20;
  }

  if (v131 == *MEMORY[0x277CC6A28])
  {
    sub_226AC47B0(&v1084, &qword_27D7A70E0, &qword_226D741B0);
    v926 = v1072 + 32;
    v925 = *(v1072 + 32);
    v927 = v1052;
    v928 = v1071;
    v925(v1052, v1074, v1071);
    sub_226CD56EC(v1064, &v1078);
    v929 = (*(v926 + 48) + 16) & ~*(v926 + 48);
    v930 = (v1051 + v929 + 7) & 0xFFFFFFFFFFFFFFF8;
    v931 = swift_allocObject();
    v925(v931 + v929, v927, v928);
    v932 = v931 + v930;
    v933 = v1081;
    *(v932 + 32) = v1080;
    *(v932 + 48) = v933;
    *(v932 + 64) = v1082;
    *(v932 + 80) = v1083;
    v934 = v1079;
    *v932 = v1078;
    *(v932 + 16) = v934;
    result = swift_allocObject();
    *(result + 16) = &unk_226D7B588;
    *(result + 24) = v931;
    v180 = &unk_226D749B8;
    goto LABEL_20;
  }

  *&v1078 = 0;
  *(&v1078 + 1) = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000017, 0x8000000226D812F0);
  sub_226D6EFBC();
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226AC2F44()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7098, &qword_226D740D8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_226AC2FC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_226D67DDC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_226AC2FF4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_226D67D8C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_226AC3064()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_226AC30BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC30F4()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v23 = *(v2 + 80);
  v3 = (v23 + 16) & ~v23;
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA0, &qword_226D7B570) - 8);
  v22 = *(v5 + 80);
  v6 = (v4 + v22) & ~v22;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = sub_226D66F0C();
  v8 = *(v19 - 8);
  v21 = *(v8 + 80);
  v18 = (((v7 + 91) & 0xFFFFFFFFFFFFFFF8) + v21 + 32) & ~v21;
  v9 = (*(v8 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210) - 8);
  v11 = *(v10 + 80);
  v20 = *(v10 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v12 = sub_226D6BA8C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v6, 1, v12))
  {
    (*(v13 + 8))(v0 + v6, v12);
  }

  v14 = (v9 + v11 + 16) & ~v11;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v7 + 8));
  if (*(v0 + v7 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v7 + 48));
  }

  (*(v8 + 8))(v0 + v18, v19);

  v15 = sub_226D6D52C();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v14, 1, v15))
  {
    (*(v16 + 8))(v0 + v14, v15);
  }

  return MEMORY[0x2821FE8E8](v0, v14 + v20, v23 | v22 | v21 | v11 | 7);
}

uint64_t sub_226AC3464()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA0, &qword_226D7B570) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA8, &unk_226D7D230) - 8);
  v11 = *(v10 + 80);
  v18 = *(v10 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v12 = sub_226D6BA8C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v8, 1, v12))
  {
    (*(v13 + 8))(v0 + v8, v12);
  }

  v14 = (((v9 + 91) & 0xFFFFFFFFFFFFFFF8) + v11 + 32) & ~v11;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v9 + 8));
  if (*(v0 + v9 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v9 + 48));
  }

  v15 = sub_226D66F0C();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v14, 1, v15))
  {
    (*(v16 + 8))(v0 + v14, v15);
  }

  return MEMORY[0x2821FE8E8](v0, ((v18 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | v7 | v11 | 7);
}

uint64_t sub_226AC3758()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 8));
  if (*(v0 + v5 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, ((v5 + 91) & 0xFFFFFFFFFFFFFFF8) + 32, v3 | 7);
}

uint64_t sub_226AC3818@<X0>(_BYTE *a1@<X8>)
{
  result = sub_226D67DCC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_226AC384C()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_226D67A2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 8));
  if (*(v0 + v5 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 48));
  }

  v10 = (v8 + ((((v5 + 95) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8;

  (*(v7 + 8))(v0 + v10, v6);

  return MEMORY[0x2821FE8E8](v0, v10 + v9, v3 | v8 | 7);
}

uint64_t sub_226AC39EC()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 8));
  if (*(v0 + v5 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, ((v5 + 95) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_226AC3AB8()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 8));
  if (*(v0 + v5 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, ((((v5 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_226AC3BA8()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_226D6B49C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v13 = *(v8 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6 + 8));
  if (*(v0 + v6 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6 + 48));
  }

  v10 = v3 | v9;
  v11 = (v6 + v9 + 89) & ~v9;
  (*(v8 + 8))(v0 + v11, v7);

  return MEMORY[0x2821FE8E8](v0, v11 + v13, v10 | 7);
}

uint64_t sub_226AC3D48()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_226D6799C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v10 + 8));
  if (*(v0 + v10 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v10 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, ((v10 + 91) & 0xFFFFFFFFFFFFFFF8) + 32, v3 | v8 | 7);
}

uint64_t sub_226AC3EF0()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6 + 8));
  if (*(v0 + v6 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, (v6 + 89) & 0xFFFFFFFFFFFFFFF8 | 4, v3 | 7);
}

uint64_t sub_226AC3FC8()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226AC40E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_226AC4194(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_226AC425C(uint64_t a1, uint64_t a2)
{
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F5E0);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Fetching maps suggestions", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F70, &qword_226D7B970);
  return sub_226D6EA6C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_226AC4410(uint64_t a1, uint64_t a2)
{
  v2 = sub_226D676AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8F70, &qword_226D7B970);
  sub_226D6EB8C();
}

uint64_t sub_226AC44A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226AC44E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226AC4530(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_226AC45FC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_226AC4708(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_226AC45FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_226AE1984(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_226D6EF4C();
    a6 = v11;
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

uint64_t sub_226AC4708(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t sub_226AC47B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_226AC4834(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_226AC484C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_226AC4864()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC48CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_226D6E39C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226AC48F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC4938()
{
  v1 = sub_226D684AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226AC4A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D68CBC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226AC4AC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D68CBC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226AC4B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D67C0C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_226D68CBC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226AC4C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D67C0C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_226D68CBC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226AC4D78()
{
  v1 = sub_226D67C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for TransactionsMatchStrategy(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;

  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_226D68CBC();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v8 + v6[8]));

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_226AC4F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_226D6D4AC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226AC502C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D52C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_226D6D4AC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226AC5150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226AC520C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226AC5324(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_226AC53D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_226D6D4AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AC5474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s8MetadataV15CloudItemStatusOMa(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = _s8MetadataV15LocalItemStatusOMa(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_226AC55B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6D52C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = _s8MetadataV15CloudItemStatusOMa(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = _s8MetadataV15LocalItemStatusOMa(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_226AC5700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_226AC57C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_226AC5880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
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

uint64_t sub_226AC58EC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_226AC596C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_226AC5A28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AC5B48()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AC5B80()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226AC5BC8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226AC5C24()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226AC5C64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC5CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226AC5D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226AC5DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = sub_226D6D4AC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_226AC5F24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6D52C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = sub_226D6D4AC();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_226AC607C(uint64_t a1)
{
  result = sub_226B2042C(&qword_27D7A6980, type metadata accessor for BankConnectNotificationEventsUnregisterTask, &unk_226D723E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AC60E8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A6B48, &qword_226D72788);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_226AC61A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A6B48, &qword_226D72788);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AC6254(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_226AC62F8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_226D6D4AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AC6398()
{
  v1 = (type metadata accessor for ActivityRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v1[7];
  v6 = sub_226D6D4AC();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226AC6490()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226AC64C8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_226AC6508()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC6544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226AC6600(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226AC6718(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_226D6D52C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_226AC682C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_226D6D52C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_226AC6944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226AC6A4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226AC6B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s8MetadataV15CloudItemStatusOMa_0(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = _s8MetadataV15LocalItemStatusOMa_0(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_226AC6C88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = _s8MetadataV15CloudItemStatusOMa_0(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = _s8MetadataV15LocalItemStatusOMa_0(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226AC6DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6A34C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_226D67F1C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_226AC6ED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_226D6A34C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_226D67F1C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226AC6FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6E07C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226AC70BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6E07C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226AC7178()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC7288()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit21WalletMessageUpdating_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226AC72E0()
{
  v1 = sub_226D682FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for BankConnectPendingConsentProcessingTask(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);

  v10 = v6[9];
  v11 = sub_226D6D4AC();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v0 + v8 + v10, v11);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_226AC749C()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC75AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226AC7668(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AC7718(uint64_t a1)
{
  result = sub_226B4E6C8(&qword_27D7A6E68, type metadata accessor for BankConnectPendingConsentProcessingTask, &unk_226D736B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AC7770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6ED0, &unk_226D73830);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_226AC7838(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6ED0, &unk_226D73830);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AC78E8()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_226AC7938()
{
  v17 = sub_226D6B8CC();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 16) & ~v2;
  v14 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_226D6B82C();
  v3 = *(v16 - 8);
  v4 = *(v3 + 80);
  v5 = (v14 + v4 + 8) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_226D6C3CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v13 = *(v8 + 64);
  v11 = v2 | v4 | v9;
  (*(v1 + 8))(v0 + v15, v17);

  (*(v3 + 8))(v0 + v5, v16);

  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v10 + v13, v11 | 7);
}

uint64_t sub_226AC7B44(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_226AC7B74()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226AC7BF4()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC7D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_226D6B9BC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_226AC7E50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6D4AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_226D6B9BC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_226AC7FA8(uint64_t a1)
{
  result = sub_226B5E018(&qword_27D7A6FD0, type metadata accessor for BankConnectTransactionsDataFetchTask, &unk_226D73C88);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AC8000()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC8040()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226AC8080()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226AC80BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_226AC810C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226AC8148()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC8180()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC81B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AC81F4()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_226AC8284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226AC8380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226AC8488()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC8598()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AC85D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AC860C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_226AC864C()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC875C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226AC8858(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6D52C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226AC8960()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC8A70()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226AC8AB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AC8AE8()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC8BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D1AC();
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

uint64_t sub_226AC8C64(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_226D6D1AC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_226AC8CE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226AC8D60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226AC8DF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC8E38()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AC8F48()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226AC8F88()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226AC8FC0()
{
  v1 = sub_226D6D4AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226AC909C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC90F4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226AC912C()
{
  v1 = sub_226D671FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_226D6C3CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 1) & 0xFFFFFFFFFFFFFFFELL;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 2, v10 | 7);
}

uint64_t sub_226AC92A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7298, &qword_226D74990);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226AC9370()
{

  sub_226B11B98(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226AC93B8()
{
  v17 = sub_226D6B8CC();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 24) & ~v2;
  v3 = *(v1 + 64);
  v16 = sub_226D6B82C();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v15 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_226D6C3CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v14 = *(v9 + 64);
  v12 = v2 | v5 | v10;

  (*(v1 + 8))(v0 + v15, v17);
  (*(v4 + 8))(v0 + v6, v16);

  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v14, v12 | 7);
}

uint64_t sub_226AC95C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A0, &unk_226D7C550) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_226D671FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = sub_226D6B9BC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = v8 + v11;
  (*(v6 + 8))(v0 + v11, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + 2, v2 | v7 | 7);
}

uint64_t sub_226AC9780()
{
  v17 = sub_226D6B8CC();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 16) & ~v2;
  v14 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_226D6B82C();
  v3 = *(v16 - 8);
  v4 = *(v3 + 80);
  v5 = (v14 + v4 + 8) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_226D6C3CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v13 = *(v8 + 64);
  v11 = v2 | v4 | v9;
  (*(v1 + 8))(v0 + v15, v17);

  (*(v3 + 8))(v0 + v5, v16);

  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v10 + v13, v11 | 7);
}

uint64_t sub_226AC9A8C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226AC9ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226AC9C00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D4AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226AC9D34(uint64_t a1)
{
  result = sub_226BA2164(&qword_27D7A7270, type metadata accessor for BankConnectInstitutionDataFetchTask, &unk_226D74F78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AC9D8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
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

uint64_t sub_226AC9E04(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_226AC9E90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AC9ED8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AC9F18()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226AC9F60()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226AC9FA0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_226D6A58C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77B8, &qword_226D75588);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_226ACA124(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_226D6A58C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77B8, &qword_226D75588);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_226ACA2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D682FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226ACA364(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D682FC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226ACA41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    v12 = sub_226D6D52C();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_226ACA550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6B9BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_226D6D52C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226ACA678(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_226ACA734(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACA7E0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_226ACA91C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226ACAA4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACAA94()
{
  sub_226B11B98(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226ACAAE0()
{
  v1 = (type metadata accessor for PostInstallTaskEnvironment(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_226D6B5EC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226ACABD8()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226ACACE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226ACADE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226ACAEEC(uint64_t a1)
{
  result = sub_226BDB4C8(&qword_27D7A7290, type metadata accessor for BankConnectAccountDataFetchTask, &unk_226D763F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACAF44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226ACAFBC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_226ACB054()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226ACB164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6B5EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226ACB210(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_226D6B5EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACB2B4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_226D6D52C();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_226ACB360(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_226D6D52C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACB400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6ED8, &qword_226D73848);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226ACB478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6ED8, &qword_226D73848);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226ACB530(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6B5EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_226ACB5DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_226D6B5EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACB680()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226ACB790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_226D6D4AC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 32);

  return v15(v16, a2, v14);
}

uint64_t sub_226ACB8DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_226D6D4AC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 32);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_226ACBA34(uint64_t a1)
{
  result = sub_226BF62E0(&qword_27D7A7280, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask, &unk_226D76E98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACBA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F50, &unk_226D77068);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226ACBB54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F50, &unk_226D77068);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226ACBC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F98, &qword_226D77100);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226ACBCE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F98, &qword_226D77100);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226ACBDA4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226ACBDE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACBE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6CEAC();
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_226ACBEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_226D6CEAC();
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_226ACBF24()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226ACBF64()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226ACBFA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACBFD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226ACC014()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACC064(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_226D6A58C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77B8, &qword_226D75588);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_226D6D4AC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_226ACC1DC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_226D6A58C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77B8, &qword_226D75588);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_226D6D4AC();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_226ACC404(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D52C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_226D6D4AC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_226ACC528(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_226D6D52C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_226D6D4AC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226ACC64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226ACC708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226ACC820(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_226ACC8CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_226D6D4AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACC970(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = _s8MetadataV15CloudItemStatusOMa_1(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = _s8MetadataV15LocalItemStatusOMa_1(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_226ACCAF0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_226D6B9BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = _s8MetadataV15CloudItemStatusOMa_1(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = _s8MetadataV15LocalItemStatusOMa_1(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_226ACCC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D67F1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_226D6D52C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226ACCD60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D67F1C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_226D6D52C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226ACCE5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_226D67F1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_226D6D52C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_226D6B9BC();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_226D67E5C();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_226ACCFE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_226D67F1C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_226D6D52C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_226D6B9BC();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_226D67E5C();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_226ACD178(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_226ACD188()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226ACD1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D677FC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226ACD2A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_226D677FC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACD344(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_226D6C69C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_226ACD51C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_226D6C69C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_226ACD724()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_226ACD774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D1AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226ACD8A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226ACD9DC(uint64_t a1)
{
  result = sub_226C645CC(&qword_27D7A86B8, type metadata accessor for OrderWebServiceFetchChangesTask, &unk_226D794F4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACDA34()
{
  v1 = sub_226D682FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  Task = type metadata accessor for BankConnectNotificationEventsFetchTask(0);
  v7 = *(*(Task - 1) + 80);
  v16 = *(*(Task - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v17 = (v4 + v5 + v7) & ~v7;
  v8 = v0 + v17;

  v9 = Task[5];
  v10 = sub_226D6D4AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v0 + v17 + v9, v10);
  v13 = Task[8];
  if (!(*(v11 + 48))(v0 + v17 + v13, 1, v10))
  {
    v12(v8 + v13, v10);
  }

  v14 = (v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12(v8 + Task[9], v10);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v14));

  return MEMORY[0x2821FE8E8](v0, v14 + 40, v3 | v7 | 7);
}

uint64_t sub_226ACDC3C()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226ACDD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_226ACDE7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226ACDFAC(uint64_t a1)
{
  result = sub_226C6BBAC(&qword_27D7A7238, type metadata accessor for BankConnectNotificationEventsFetchTask, &unk_226D79588);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACE008(uint64_t a1)
{
  result = sub_226C77874(&qword_27D7A8740, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask, &unk_226D796DC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACE060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D1AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226ACE194(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226ACE2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D1AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226ACE3FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226ACE530(uint64_t a1)
{
  result = sub_226C7B948(&qword_27D7A87C0, type metadata accessor for OrderWebServiceFetchTask, &unk_226D79910);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACE5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D6DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226ACE674(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_226D6D6DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACE718()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4UUIDVSo11NSPredicateCIeghno_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226ACE794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D1AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226ACE8C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226ACE9FC(uint64_t a1)
{
  result = sub_226C8FAB0(&qword_27D7A88C8, type metadata accessor for OrderWebServiceLogTask, &unk_226D7A310);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACEA54()
{
  v1 = (type metadata accessor for OrderWebServiceLogTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_226D6D1AC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[9];
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_226ACEBD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACEC14()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226ACEC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D1AC();
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

    return (v10 + 1);
  }
}

uint64_t sub_226ACED14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226ACEDD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACEE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D52C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_226D6CD7C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_226ACEF44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_226D6D52C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_226D6CD7C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226ACF070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 4);
  v5 = *(v4 + 5);
  v7 = (type metadata accessor for WebServicePerformPendingTasksActivity(0, v6, *(v4 + 6), a4) - 8);
  v8 = *(*v7 + 80);
  v9 = (v8 + 64) & ~v8;
  v10 = *(v5 - 8);
  v11 = *(v10 + 80);
  v12 = (v9 + *(*v7 + 64) + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v8 | v11;
  swift_unknownObjectRelease();
  v15 = &v4[v9];
  (*(*(v6 - 8) + 8))(v15, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(&v15[v7[11]]);
  v16 = v7[12];
  v17 = sub_226D6E07C();
  (*(*(v17 - 8) + 8))(&v15[v16], v17);
  (*(v10 + 8))(&v4[v12], v5);

  return MEMORY[0x2821FE8E8](v4, v12 + v13, v14 | 7);
}

uint64_t sub_226ACF220()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226ACF258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_226D6D4AC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_226ACF2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_226D6D4AC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_226ACF34C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_226ACF390(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_226D6D3EC();
  [v2 setTransactionDate_];
}

uint64_t sub_226ACF434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TokenBucket.State(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226ACF4E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TokenBucket.State(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACF584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D1AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226ACF6B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226ACF7EC(uint64_t a1)
{
  result = sub_226CAD0D4(&qword_27D7A8918, type metadata accessor for OrderWebServiceRegisterTask, &unk_226D7ABE0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACF858()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226ACF890()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACF8DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226ACF918()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226ACF950()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACF990()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226ACFA1C()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226ACFB2C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226ACFB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226ACFC28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226ACFCD8(uint64_t a1)
{
  result = sub_226CC2874(&qword_27D7A8920, type metadata accessor for OrderWebServiceRequestTokenTask, &unk_226D7B098);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226ACFD30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACFD80()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_226ACFDD4()
{
  v1 = sub_226D6B9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226ACFE70()
{
  MEMORY[0x22AA8BFE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226ACFEA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ACFEE8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_226ACFF40()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_226ACFF98()
{
  v1 = sub_226D6B49C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226AD0038()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AD0148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D1AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226AD027C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6D1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226AD03B0(uint64_t a1)
{
  result = sub_226CF8CDC(&qword_27D7A8908, type metadata accessor for OrderWebServiceUnregisterTask, &unk_226D7C4A4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AD0408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9198, &qword_226D7C678);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226AD0480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9198, &qword_226D7C678);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226AD05EC()
{
  v1 = sub_226D6B9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226AD06C4()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AD07D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_226D6D52C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_226AD0904(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_226D6D52C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226AD0A34()
{
  v1 = sub_226D682FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226AD0B28()
{
  v1 = *(type metadata accessor for ManagedConsentDeleter.Metadata(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_226D682FC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_226AD0C30()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226AD0C78()
{
  v1 = sub_226D671FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_226AD0D24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AD0D5C()
{
  v1 = sub_226D6B9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226AD0DF8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226AD0E38()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AD0F48()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226AD0F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92E8, &qword_226D7D138);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71F0, &qword_226D74728);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_226AD10AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92E8, &qword_226D7D138);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71F0, &qword_226D74728);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_226AD11CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_226D6C69C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_226AD1378(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_226D6C69C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_226AD1534()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AD1648(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6A34C();
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

uint64_t sub_226AD16B4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_226D6A34C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_226AD1734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_226D6D4AC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226AD185C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226D6B9BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_226D6D4AC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226AD1984()
{
  v1 = type metadata accessor for BankConnectNotificationEventsRegisterTask(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v5 = v0 + v3;

  v6 = v1[6];
  v7 = sub_226D6BD9C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  v9 = sub_226D6D4AC();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v0 + v3 + v8, 1, v9);
  v12 = *(v10 + 8);
  if (!v11)
  {
    v12(v5 + v8, v9);
  }

  v12(v5 + v1[9], v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226AD1B1C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_226D6BD9C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_226D6D4AC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_226AD1C94(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_226D6BD9C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_226D6D4AC();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_226AD1E0C(uint64_t a1)
{
  result = sub_226D30C8C(&qword_27D7A7248, type metadata accessor for BankConnectNotificationEventsRegisterTask, &unk_226D7D4B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AD1E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226AD1F20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226AD2038(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_226AD2168(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226AD2298(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_226AD2354(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AD2400(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_226D6D52C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_226AD2580(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_226D6D4AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_226D6D52C();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_226AD2700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B49C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s8MetadataV15CloudItemStatusOMa_2(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = _s8MetadataV15LocalItemStatusOMa_2(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_226AD2840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6B49C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = _s8MetadataV15CloudItemStatusOMa_2(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = _s8MetadataV15LocalItemStatusOMa_2(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_226AD29B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226AD2A74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AD2B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226AD2BE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AD2C90(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_226D6B49C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_226D6D1AC();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_226D6B03C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_226AD2DE8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_226D6B49C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_226D6D1AC();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_226D6B03C();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 24) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_226AD2F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226D6D4AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226AD2FE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_226D6D4AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226AD308C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_226AD3110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_226AD3198()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AD32A8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226AD32E8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226AD3328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9550, &qword_226D7E160);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226AD33F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9550, &qword_226D7E160);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226AD34B4()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AD35C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AD35FC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AD3640()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AD3680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_226D6B9BC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_226AD379C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_226D6B9BC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_226AD38B4()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AD39C4(uint64_t a1)
{
  result = sub_226D66C08(&qword_27D7A8900, type metadata accessor for PrismWebServiceRegisterTransactionTask, &unk_226D7E6E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AD3A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B3BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226AD3B18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6B3BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226AD3C50()
{
  v1 = *v0;

  return v1;
}

uint64_t BankConnectPassMatcher.__allocating_init(taskQueueProvider:configurationProvider:webClientProvider:assetManager:institutionMatchingCache:softwareLibrary:paymentPassDataSourceProvider:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v14 = swift_allocObject();
  sub_226AC484C(a1, v14 + 16);
  sub_226AC484C(a2, v14 + 56);
  sub_226AC484C(a3, v14 + 96);
  *(v14 + 136) = a4;
  *(v14 + 144) = a5;
  v15 = *(a6 + 16);
  *(v14 + 152) = *a6;
  *(v14 + 168) = v15;
  *(v14 + 184) = *(a6 + 32);
  sub_226AC484C(a7, v14 + 192);
  return v14;
}

uint64_t BankConnectPassMatcher.init(taskQueueProvider:configurationProvider:webClientProvider:assetManager:institutionMatchingCache:softwareLibrary:paymentPassDataSourceProvider:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  sub_226AC484C(a1, v7 + 16);
  sub_226AC484C(a2, v7 + 56);
  sub_226AC484C(a3, v7 + 96);
  *(v7 + 136) = a4;
  *(v7 + 144) = a5;
  v14 = *(a6 + 16);
  *(v7 + 152) = *a6;
  *(v7 + 168) = v14;
  *(v7 + 184) = *(a6 + 32);
  sub_226AC484C(a7, v7 + 192);
  return v7;
}

uint64_t BankConnectPassMatcher.institution(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D690BC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AD40AC, 0, 0);
}

uint64_t sub_226AD40AC()
{
  v1 = sub_226AD48A4(v0[3], v0[4]);
  v0[9] = v1;
  if (v1)
  {
    v2 = v1;
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[5];
    v6 = v0[6];
    v7 = v5[5];
    v8 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v7);
    v9 = [v2 serialNumber];
    v10 = sub_226D6E39C();
    v12 = v11;

    *v3 = v10;
    v3[1] = v12;
    (*(v4 + 104))(v3, *MEMORY[0x277CC7760], v6);
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = sub_226AD427C;
    v14 = v0[8];

    return MEMORY[0x282119F40](v14, v7, v8);
  }

  else
  {
    v15 = v0[2];
    v16 = sub_226D671FC();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);

    v17 = v0[1];

    return v17();
  }
}