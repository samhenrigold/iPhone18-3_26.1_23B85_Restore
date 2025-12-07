uint64_t sub_268E00334(void *a1)
{
  v32 = 0;
  v29 = 0;
  v33 = a1;
  v1 = sub_268DFCBD8();
  v21 = *v1;
  v22 = v1[1];

  v24 = [a1 settingMetadata];
  if (v24 && (v20 = [v24 targetDevice], *&v2 = MEMORY[0x277D82BD8](v24).n128_u64[0], v20))
  {
    v3 = [v20 deviceName];
    v19 = v3;
    if (v3)
    {
      *&v17 = sub_268F9AE24();
      *(&v17 + 1) = v4;
      MEMORY[0x277D82BD8](v19);
      v18 = v17;
    }

    else
    {
      v18 = 0uLL;
    }

    MEMORY[0x277D82BD8](v20);
    v16 = v18;
  }

  else
  {
    v16 = 0uLL;
  }

  v30[0] = v21;
  v30[1] = v22;
  v31 = v16;
  if (!v22)
  {
    if (!*(&v31 + 1))
    {
      sub_268CD9D30(v30);
      v15 = 1;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  sub_268D28874(v30, &v27);
  if (!*(&v31 + 1))
  {
    sub_268CD9D30(&v27);
LABEL_17:
    sub_268D28550(v30);
    v15 = 0;
    goto LABEL_19;
  }

  v26 = v27;
  v25 = v31;
  v14 = MEMORY[0x26D62DB50](v27, *(&v27 + 1), v31, *(&v31 + 1));
  sub_268CD9D30(&v25);
  sub_268CD9D30(&v26);
  sub_268CD9D30(v30);
  v15 = v14;
LABEL_19:

  v29 = v15 & 1;
  v12 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v13 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v6;
  v28 = v15 & 1;
  v9 = sub_268F9AE74();
  v10 = v7;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC14(v12, &dword_268CBE000, v13, "SetAnnounceNotificationsHandler device name is carplay: %@", 58, 2);

  MEMORY[0x277D82BD8](v13);
  return v15 & 1;
}

uint64_t sub_268E00728(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v125 = a1;
  v141 = a2;
  v142 = a3;
  v126 = a4;
  v127 = a5;
  v116 = "SetAnnounceNotificationsHandler marking notifications user default for application disablement";
  v117 = "SetAnnounceNotificationsHandler handling mutation of app based feature for date %@";
  v118 = sub_268E03074;
  v158 = 0;
  v157 = 0;
  v155 = 0;
  v156 = 0;
  v153 = 0;
  v154 = 0;
  v152 = 0;
  v151 = 0;
  v146 = 0;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0);
  v119 = (*(*(v128 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v128, v6, v7, v8);
  v120 = &v62 - v119;
  v121 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v62 - v119, v10, v11, v12);
  v122 = &v62 - v121;
  v123 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v62 - v121, v14, v15, v16);
  v124 = &v62 - v123;
  v136 = sub_268F99214();
  v134 = *(v136 - 8);
  v135 = v136 - 8;
  v130 = *(v134 + 64);
  v129 = (v130 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v128, v141, v142, v126);
  v131 = &v62 - v129;
  v132 = (v130 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v18, v19, v20);
  v133 = &v62 - v132;
  v158 = &v62 - v132;
  v157 = v21;
  v155 = v22;
  v156 = v23;
  v153 = v24;
  v154 = v25;
  v152 = v5;
  v137 = swift_allocBox();
  v138 = v26;
  v151 = v26;
  v139 = *(v134 + 56);
  v140 = v134 + 56;
  v139(v26, 1, 1, v136);
  v143 = *(v5 + 16);

  v144 = sub_268D48AD4(v141, v142);

  if ((v144 & 1) == 0)
  {

    v112 = sub_268E948B8(0);
    v113 = v27;
    v114 = sub_268DAB158(0, v112, v27);

    (v126)(v114);
    MEMORY[0x277D82BD8](v114);
  }

  v29 = [v125 binaryValue];
  v109 = &v150;
  v150 = v29;
  v107 = &v149;
  v149 = 2;
  v108 = type metadata accessor for INBinarySettingValue(0);
  v110 = sub_268CD925C();
  v111 = sub_268F9B754();
  MEMORY[0x277D82BE0](v125);
  if (v111)
  {
    v145 = [v125 temporalEventTrigger];
    v106 = v145 != 0;
    v104 = v106;
    sub_268D35038(&v145);
    v105 = v104;
  }

  else
  {
    v105 = 0;
  }

  v103 = v105;
  *&v30 = MEMORY[0x277D82BD8](v125).n128_u64[0];
  if (v103)
  {
    v102 = [v125 temporalEventTrigger];
    if (v102)
    {
      v101 = v102;
      v98 = v102;
      v99 = [v102 dateComponentsRange];
      *&v31 = MEMORY[0x277D82BD8](v98).n128_u64[0];
      v100 = [v99 endDate];
      if (v100)
      {
        v97 = v100;
        v96 = v100;
        sub_268F991E4();
        (*(v134 + 32))(v122, v131, v136);
        v139(v122, 0, 1, v136);
        MEMORY[0x277D82BD8](v96);
      }

      else
      {
        v139(v122, 1, 1, v136);
      }

      sub_268E02F0C(v122, v124);
      v32 = MEMORY[0x277D82BD8](v99);
    }

    else
    {
      v139(v124, 1, 1, v136);
    }

    if ((*(v134 + 48))(v124, 1, v136, v32) == 1)
    {
      sub_268D54CB4(v124);

      v93 = sub_268E948B8(17);
      v94 = v33;
      v95 = sub_268DAB158(0, v93, v33);

      (v126)(v95);
      MEMORY[0x277D82BD8](v95);
    }

    (*(v134 + 32))(v133, v124, v136);
    (*(v134 + 16))(v120, v133, v136);
    v139(v120, 0, 1, v136);
    sub_268E030AC(v120, v138);
    (*(v134 + 8))(v133, v136);
  }

  v148 = [v125 binaryValue];
  v147 = 2;
  if (sub_268F9B754())
  {
    v88 = sub_268F9B284();
    v90 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v89 = sub_268F9B734();
    sub_268F9AC14(v88, &dword_268CBE000, v90, v116, 94, 2);

    MEMORY[0x277D82BD8](v90);
    v91 = *(v115 + 32);

    v92 = sub_268F23C10();

    if (v92)
    {
      v87 = v92;
      v86 = v92;
      v34 = sub_268F88988();
      v83 = *v34;
      v84 = v34[1];

      v85 = sub_268F9AE14();

      [v86 setBool:1 forKey:v85];
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v86);
    }
  }

  v78 = sub_268F9B284();
  v80 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v80);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v76 = sub_268F9B734();
  v74 = v35;
  sub_268D54B8C(v138, v120);
  v72 = sub_268F9AE64();
  v73 = v36;
  v74[3] = MEMORY[0x277D837D0];
  v37 = sub_268CDD224();
  v38 = v72;
  v39 = v73;
  v40 = v74;
  v77 = v37;
  v74[4] = v37;
  *v40 = v38;
  v40[1] = v39;
  sub_268CD0F7C();
  v79 = v41;
  sub_268F9AC14(v78, &dword_268CBE000, v80, v117, 82, 2);

  MEMORY[0x277D82BD8](v80);
  v81 = *(v115 + 16);

  v82 = sub_268D415B8();

  v146 = v82 & 1;
  if (v82)
  {
    v69 = sub_268F9B284();
    v71 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v71);
    v68 = sub_268F9B734();
    v67 = v42;
    sub_268D54B8C(v138, v120);
    v43 = sub_268F9AE64();
    v44 = v77;
    v45 = v67;
    v67[3] = MEMORY[0x277D837D0];
    v45[4] = v44;
    *v45 = v43;
    v45[1] = v46;
    sub_268CD0F7C();
    v70 = v47;
    sub_268F9AC14(v69, &dword_268CBE000, v71, v117, 82, 2);

    MEMORY[0x277D82BD8](v71);
    sub_268D54B8C(v138, v120);
    sub_268E017D0(v125, v141, v142, v120, v126, v127);
    sub_268D54CB4(v120);
  }

  else
  {
    v48 = sub_268DBE6F4();
    v62 = *v48;
    v63 = v48[1];
    v64 = *(v48 + 16);
    v65 = *(v115 + 24);

    v49 = swift_allocObject();
    v50 = v141;
    v51 = v142;
    v52 = v82;
    v53 = v125;
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v57 = v65;
    v58 = v126;
    v59 = v127;
    v60 = v118;
    v61 = v137;
    v49[2] = v115;
    v49[3] = v50;
    v49[4] = v51;
    v49[5] = v61;
    v66 = v49;
    sub_268DAAB84(v52 & 1, v53, v54, v55, v56, v57 & 1, v58, v59, v60, v49, 0, 1, 0, 0);
    sub_268CD9A28(v118, v66);
  }
}

uint64_t sub_268E0164C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a1;
  v13 = a2;
  v16 = a3;
  v17 = a4;
  v10 = a5;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v13, v16, v17);
  v19 = &v10 - v11;
  v26 = v5 & 1;
  v25 = v6;
  v23 = v7;
  v24 = v8;
  v14 = swift_projectBox();
  v22 = v14;
  v12 = *(v13 + 16);

  sub_268D416A4(v18 & 1);

  v20 = *(v13 + 16);

  v15 = &v21;
  swift_beginAccess();
  sub_268D54B8C(v14, v19);
  swift_endAccess();
  sub_268D3F344(v16, v17, v18 & 1, v19);
  sub_268D54CB4(v19);
}

uint64_t sub_268E017D0(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(void), uint64_t a6)
{
  v54 = a1;
  v48 = a2;
  v49 = a3;
  v45 = a4;
  v59 = a5;
  v60 = a6;
  v41 = "SetAnnounceNotificationsHandler announce messages for app status: %@";
  v62 = sub_268E032D4;
  v72 = 0;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v65 = 0;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0) - 8);
  v46 = v31;
  v47 = *(v31 + 64);
  v32 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54, v48, v49, v45);
  v51 = &v30 - v32;
  v72 = v7;
  v70 = v8;
  v71 = v9;
  v69 = v10;
  v67 = v11;
  v68 = v12;
  v66 = v6;
  v34 = *(v6 + 16);

  v13 = sub_268D40380(v48, v49);
  v14 = v33;
  v61 = v13;

  v53 = 1;
  v35 = 1;
  v65 = v61 & 1;
  v42 = sub_268F9B284();
  v44 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v44);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v40 = sub_268F9B734();
  v38 = v15;
  v64 = v61 & v35;
  v36 = sub_268F9AE74();
  v37 = v16;
  v38[3] = MEMORY[0x277D837D0];
  v17 = sub_268CDD224();
  v18 = v36;
  v19 = v37;
  v20 = v38;
  v38[4] = v17;
  *v20 = v18;
  v20[1] = v19;
  sub_268CD0F7C();
  v43 = v21;
  sub_268F9AC14(v42, &dword_268CBE000, v44, v41, 68, 2);

  MEMORY[0x277D82BD8](v44);
  v22 = sub_268DBE6F4();
  v55 = *v22;
  v56 = v22[1];
  v57 = *(v22 + 16);
  v58 = *(v14 + 24);

  sub_268D54B8C(v45, v51);
  v50 = (*(v46 + 80) + 40) & ~*(v46 + 80);
  v23 = swift_allocObject();
  v24 = v48;
  v25 = v49;
  v26 = v50;
  v27 = v23;
  v28 = v51;
  v52 = v27;
  v27[2] = v14;
  v27[3] = v24;
  v27[4] = v25;
  sub_268E02F0C(v28, v27 + v26);
  v63 = v52;
  sub_268DAAB84(v61 & 1, v54, v55, v56, v57, v58 & 1, v59, v60, v62, v52, 0, v53, 0, 0);
  return sub_268CD9A28(v62, v63);
}

uint64_t sub_268E01BE8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_268D3F344(a3, a4, a1 & 1, a5);
}

uint64_t sub_268E01C88(uint64_t a1, uint64_t a2)
{
  v2 = sub_268DC7AE8();
  v5 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v4 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("SetAnnounceNotificationsHandler: getting confirmation mode for announce notifications.", 86, 2, &dword_268CBE000, v5, v4);

  MEMORY[0x277D82BD8](v5);

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_268D40DFC(sub_268E03374, v8);
}

uint64_t sub_268E01E00(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v28[0] = 0;
  v28[1] = 0;
  v32 = a1;
  v30 = a2;
  v31 = a3;
  v29 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268E03530();
  sub_268F9B254();
  for (i = 0; ; i = v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCEF8, &unk_268FA2918);
    sub_268F9B564();
    if (!v27)
    {
      break;
    }

    v3 = sub_268F9AEF4();
    v23 = MEMORY[0x26D62DB50](v26, v27, v3);

    if (v23)
    {
      sub_268E03388();
      if (sub_268F9B754())
      {
        v22 = 1;
      }

      else
      {
        if (sub_268F9B754())
        {
          v21 = 1;
        }

        else
        {
          v21 = sub_268F9B754();
        }

        if (v21)
        {
          v20 = 3;
        }

        else
        {
          v20 = 1;
        }

        v22 = v20;
      }

      v29 = v22;
      v19 = v22;
    }

    else
    {
      v19 = i;
    }

    v4 = sub_268F9AEF4();
    v18 = MEMORY[0x26D62DB50](v26, v27, v4);

    if (v18)
    {
      sub_268E03388();
      if (sub_268F9B754())
      {
        v17 = 2;
      }

      else
      {
        if (sub_268F9B754())
        {
          v16 = 1;
        }

        else
        {
          v16 = sub_268F9B754();
        }

        if (v16)
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v17 = v15;
      }

      v29 = v17;
      v14 = v17;
    }

    else
    {
      v14 = v19;
    }
  }

  sub_268CD7930(v28);
  v5 = sub_268DC7AE8();
  v13 = *v5;
  MEMORY[0x277D82BE0](*v5);
  v12 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v6;
  v9 = sub_268DFC86C(i);
  v10 = v7;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04("SetAnnounceNotificationsHandler: confirmation mode is %@.", 57, 2, &dword_268CBE000, v13, v12);

  MEMORY[0x277D82BD8](v13);

  a2(i);
}

uint64_t sub_268E02374()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268E023B0, 0);
}

uint64_t sub_268E023B0()
{
  *(v0 + 16) = v0;
  v1 = sub_268DC7AE8();
  v7 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v6 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("SetAnnounceNotificationsHandler: getting confirmation mode for announce notifications.", 86, 2, &dword_268CBE000, v7, v6);

  MEMORY[0x277D82BD8](v7);
  v9 = sub_268F9AEF4();
  v10 = v2;
  *(v0 + 40) = v2;

  v3 = swift_task_alloc();
  v8[6] = v3;
  *v3 = v8[2];
  v3[1] = sub_268E02574;
  v4 = v8[4];

  return MEMORY[0x2822008A0](v8 + 8, 0, 0, v9, v10, sub_268E03380, v4, &unk_287990B00);
}

uint64_t sub_268E02574()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 56) = v0;

  if (v0)
  {
    v2 = sub_268E02748;
  }

  else
  {

    v2 = sub_268E02700;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268E02748()
{
  *(v0 + 16) = v0;

  v2 = *(*(v0 + 16) + 8);

  return v2(v1);
}

uint64_t sub_268E027F4(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v17 = sub_268E034AC;
  v20 = 0;
  v19 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCEE8, &unk_268FA2908);
  v12 = *(v16 - 8);
  v13 = v16 - 8;
  v10 = v12;
  v11 = *(v12 + 64);
  v9 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v16, v8, v16, v3);
  v15 = &v7 - v9;
  v20 = v5;
  v19 = a2;
  (*(v12 + 16))(v4);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v14, v15, v16);
  sub_268E01C88(v17, v18);
}

uint64_t sub_268E0299C(char a1, uint64_t a2)
{
  v2 = sub_268DC7AE8();
  v10 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v9 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v8 = v3;
  v6 = sub_268DFC86C(a1);
  v7 = v4;
  v8[3] = MEMORY[0x277D837D0];
  v8[4] = sub_268CDD224();
  *v8 = v6;
  v8[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04("SetAnnounceNotificationsHandler: confirmation mode is %@.", 57, 2, &dword_268CBE000, v10, v9);

  MEMORY[0x277D82BD8](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCEE8, &unk_268FA2908);
  return sub_268F9B0C4();
}

uint64_t sub_268E02B0C(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "defaultMode";
  *(v2 + 8) = 11;
  *(v2 + 16) = 2;
  *(v2 + 24) = "headphonesConnected";
  *(v2 + 32) = 19;
  *(v2 + 40) = 2;
  *(v2 + 48) = "carplayConnected";
  *(v2 + 56) = 16;
  *(v2 + 64) = 2;
  *(v2 + 72) = "carplayAndHeadphonesConnected";
  *(v2 + 80) = 29;
  *(v2 + 88) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_10:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_10;
    case 2:
      v5 = 2;
      goto LABEL_10;
    case 3:
      v5 = 3;
      goto LABEL_10;
  }

  return 4;
}

uint64_t sub_268E02DF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E02B0C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E02E28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DFC86C(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268E02E80(char a1)
{
  v2 = sub_268F99214();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));

  return sub_268DFE138(a1 & 1, v3, v4, v5, v6, v7);
}

void *sub_268E02F0C(const void *a1, void *a2)
{
  v6 = sub_268F99214();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_268E030AC(const void *a1, void *a2)
{
  v7 = sub_268F99214();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t sub_268E03388()
{
  v2 = qword_2802DCED8;
  if (!qword_2802DCED8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCED8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E03430()
{
  v2 = qword_2802DCEE0;
  if (!qword_2802DCEE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E034AC(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCEE8, &unk_268FA2908);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_268E0299C(a1, v3);
}

unint64_t sub_268E03530()
{
  v2 = qword_2802DCEF0;
  if (!qword_2802DCEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC560, qword_268FA0000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E03634@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_268E03758()
{
  type metadata accessor for SetHeySiriHandler();
  v2 = sub_268CDC590();
  v0 = sub_268CDD6D4();
  result = sub_268CDC5C0(v2, v0 & 1);
  qword_2802F1440 = result;
  return result;
}

uint64_t *sub_268E037D4()
{
  if (qword_2802DB570 != -1)
  {
    swift_once();
  }

  return &qword_2802F1440;
}

uint64_t sub_268E03834()
{
  v1 = *sub_268E037D4();

  return v1;
}

uint64_t sub_268E03864(void *a1, void (*a2)(id), uint64_t a3)
{
  v19 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v20 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v19, &dword_268CBE000, v20, "SetHeySiriHandler handling intent", 33, 2);

  v22 = [a1 settingMetadata];
  if (v22 && (v15 = [v22 targetDevice], *&v4 = MEMORY[0x277D82BD8](v22).n128_u64[0], v15))
  {
    [v15 deviceCategory];
    MEMORY[0x277D82BD8](v15);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v13 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory(0);
    sub_268CD7818();
    v13 = sub_268F9AE04();
  }

  if (v13)
  {

    MEMORY[0x277D82BE0](a1);

    v8 = swift_allocObject();
    v8[2] = a2;
    v8[3] = a3;
    v8[4] = a1;
    v8[5] = v18;
    sub_268D3618C(sub_268E03F5C, v8);
  }

  else
  {
    v9 = sub_268F9B284();
    v5 = sub_268DC7AE8();
    v10 = *v5;
    MEMORY[0x277D82BE0](*v5);
    sub_268F9B734();
    sub_268F9AC14(v9, &dword_268CBE000, v10, "GetHeySiriHandler handling intent; Siri cannot change setting: Hey Siri ", 72, 2);

    MEMORY[0x277D82BD8](v10);

    v11 = sub_268E948B8(17);
    v12 = sub_268DAB158(0, v11, v6);

    a2(v12);
    MEMORY[0x277D82BD8](v12);
  }
}

uint64_t sub_268E03CA8(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, uint64_t a5)
{
  v24 = a1;
  v22 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v23 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v21 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF00, qword_268FA2988);
  v19 = sub_268F9AE64();
  v20 = v7;
  v21[3] = MEMORY[0x277D837D0];
  v21[4] = sub_268CDD224();
  *v21 = v19;
  v21[1] = v20;
  sub_268CD0F7C();
  sub_268F9AC14(v22, &dword_268CBE000, v23, "Hey Siri is enabled: %@", 23, 2);

  MEMORY[0x277D82BD8](v23);
  if (v24 == 2)
  {

    v14 = sub_268DA9A7C(7, 0);
    a2();
    MEMORY[0x277D82BD8](v14);
  }

  else
  {
    v8 = sub_268DBE624();
    v10 = *v8;
    v11 = v8[1];
    v12 = *(v8 + 16);
    v13 = *(a5 + 24);

    sub_268DAAB84(v24 & 1, a4, v10, v11, v12, v13 & 1, a2, a3, sub_268E04004, a5, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268E04004, a5);
  }
}

uint64_t sub_268E03F70()
{

  sub_268D361FC();
}

uint64_t sub_268E04070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a1;
  v13 = a2;
  v9 = a3;
  v10 = a4;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v24 = a3;
  v8[1] = 0;
  v18 = sub_268F996A4();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v8[0] = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v13, v9, v10);
  v19 = v8 - v8[0];
  v23 = v5;
  v22 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = v4;
  v11 = sub_268F996E4();

  v12 = (*(v10 + 24))();
  MEMORY[0x277D82BE0](v13);
  sub_268F99694();
  v20 = sub_268F996D4();
  (*(v16 + 8))(v19, v18);
  return v20;
}

uint64_t sub_268E044C0()
{
  type metadata accessor for SetNumericSettingNLContextProvider(0);
  result = sub_268D592B0();
  qword_2802F1448 = result;
  return result;
}

uint64_t type metadata accessor for SetNumericSettingNLContextProvider(uint64_t a1)
{
  v2 = qword_2802DCF08;
  if (!qword_2802DCF08)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t *sub_268E04568()
{
  if (qword_2802DB578 != -1)
  {
    swift_once();
  }

  return &qword_2802F1448;
}

uint64_t sub_268E045C8()
{
  v1 = *sub_268E04568();

  return v1;
}

uint64_t sub_268E045F8(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v18 = a4;
  v23 = 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18, v15, v16, v5);
  v17 = &v12 - v13;
  v23 = v6;
  v22 = v7;
  v20 = v8;
  v21 = v9;
  v19 = v4;

  sub_268E04748(v14, v15, v17);
  v10 = sub_268F999A4();
  (*(*(v10 - 8) + 56))(v17, 0, 1);
  v16(v17);
  sub_268D34AC0(v17);
}

uint64_t sub_268E04748@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v71 = a1;
  v62 = a2;
  v53 = "Forming NL Context update for confirmation. Intent: %@, Update: %@";
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v73 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v54 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  v55 = v38 - v54;
  v56 = 0;
  v57 = sub_268F9ACE4();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56, v7, v8, v9);
  v61 = v38 - v60;
  v79 = v38 - v60;
  v63 = sub_268F999A4();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v67 = *(v64 + 64);
  v66 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71, v62, v10, v11);
  v68 = v38 - v66;
  v69 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v13, v38 - v66, v14);
  v70 = v38 - v69;
  v78 = v38 - v69;
  v77 = v15;
  v76 = v16;
  v75 = v17;
  sub_268F99994();
  sub_268F289C0(v18);
  sub_268F99924();
  v72 = [v71 settingMetadata];
  if (v72)
  {
    v51 = v72;
    v50 = v72;
    v73 = v72;
    sub_268E5B124(v55);
    if ((*(v58 + 48))(v55, 1, v57) == 1)
    {
      sub_268D59D2C(v55);
    }

    else
    {
      (*(v58 + 32))(v61, v55, v57);
      v49 = sub_268F9B734();
      (*(v58 + 16))(v19, v61, v57);
      sub_268CD0F7C();
      sub_268F99914();
      (*(v58 + 8))(v61, v57);
    }

    MEMORY[0x277D82BD8](v50);
  }

  v46 = sub_268F9B284();
  v48 = *sub_268DC7DE8();
  MEMORY[0x277D82BE0](v48);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v44 = sub_268F9B734();
  v43 = v20;
  MEMORY[0x277D82BE0](v71);
  v38[1] = &v74;
  v74 = v71;
  v38[0] = sub_268D588E0();
  sub_268DCA900();
  v39 = sub_268F9AE74();
  v40 = v21;
  v41 = MEMORY[0x277D837D0];
  v43[3] = MEMORY[0x277D837D0];
  v22 = sub_268CDD224();
  v23 = v39;
  v24 = v40;
  v25 = v43;
  v26 = v64;
  v27 = v70;
  v28 = v63;
  v29 = v22;
  v30 = v68;
  v42 = v29;
  v43[4] = v29;
  *v25 = v23;
  v25[1] = v24;
  (*(v26 + 16))(v30, v27, v28);
  v31 = sub_268F9AE64();
  v32 = v42;
  v33 = v43;
  v43[8] = v41;
  v33[9] = v32;
  v33[5] = v31;
  v33[6] = v34;
  sub_268CD0F7C();
  v47 = v35;
  sub_268F9AC14(v46, &dword_268CBE000, v48, v53, 66, 2);

  v36 = MEMORY[0x277D82BD8](v48);
  return (*(v64 + 32))(v52, v70, v63, v36);
}

uint64_t sub_268E04CF8(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v44 = a1;
  v38 = a2;
  v36 = a3;
  v37 = a4;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v46 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  v26 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v27 = v23 - v26;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v28 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v10, v11, v12);
  v29 = v23 - v28;
  v30 = 0;
  v31 = sub_268F9ACE4();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v13, v14, v15);
  v35 = v23 - v34;
  v53 = v23 - v34;
  v39 = sub_268F999A4();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44, v38, v36, v37);
  v43 = v23 - v42;
  v52 = v23 - v42;
  v51 = v16;
  v50 = v17;
  v48 = v18;
  v49 = v19;
  v47 = v4;
  sub_268F99994();
  v45 = [v44 settingMetadata];
  if (v45)
  {
    v25 = v45;
    v24 = v45;
    v46 = v45;
    sub_268E5B124(v29);
    if ((*(v32 + 48))(v29, 1, v31) != 1)
    {
      (*(v32 + 32))(v35, v29, v31);
      v23[1] = sub_268F9B734();
      (*(v32 + 16))(v20, v35, v31);
      sub_268CD0F7C();
      sub_268F99914();

      (*(v40 + 16))(v27, v43, v39);
      (*(v40 + 56))(v27, 0, 1, v39);
      v36(v27);
      sub_268D34AC0(v27);

      (*(v32 + 8))(v35, v31);
      v21 = MEMORY[0x277D82BD8](v24);
      return (*(v40 + 8))(v43, v39, v21);
    }

    sub_268D59D2C(v29);
    MEMORY[0x277D82BD8](v24);
  }

  (*(v40 + 56))(v27, 1, 1, v39);
  v36(v27);
  sub_268D34AC0(v27);

  return (*(v40 + 8))(v43, v39);
}

uint64_t sub_268E051EC(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t *sub_268E05278()
{
  if (qword_280FE47A0 != -1)
  {
    swift_once();
  }

  return &qword_280FE8168;
}

uint64_t sub_268E052D8()
{
  type metadata accessor for GetCellularDataHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8168 = result;
  return result;
}

uint64_t sub_268E05340()
{
  v1 = *sub_268E05278();

  return v1;
}

uint64_t sub_268E05370(void *a1, void (*a2)(void), uint64_t a3)
{
  v34 = a3;
  v35 = a2;
  v36 = a1;
  v38 = 0;
  v45 = 0;
  v37 = 0;
  v48 = a1;
  v46 = a2;
  v47 = a3;
  v40 = sub_268F9B284();
  v42 = *sub_268DC7AE8();
  v4 = v42;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v41 = sub_268F9B734();
  sub_268F9AC14(v40, &dword_268CBE000, v42, "GetCellularDataHandler handling intent", 38, 2);

  v43 = *(v3 + 16);

  v44 = sub_268D38D28();

  if (v44)
  {
    v5 = v37;
    v6 = sub_268DBB454();
    v26 = *v6;
    v27 = v6[1];
    v28 = *(v6 + 16);
    v29 = *sub_268DC7AE8();
    v25 = v29;
    v7 = v29;
    v30 = *(v33 + 24);

    v8 = v36;

    v31 = &v19;
    MEMORY[0x28223BE20](v26, v27, v28, v29);
    v18[2] = v9;
    v18[3] = v36;
    v18[4] = v35;
    v18[5] = v10;
    sub_268DB944C(v11, v12, v13, v14, v15, sub_268E059B0, v18, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v32 = v5;

    return v32;
  }

  else
  {
    v20 = sub_268F9B294();
    v22 = *sub_268DC7AE8();
    v16 = v22;
    v21 = sub_268F9B734();
    sub_268F9AC14(v20, &dword_268CBE000, v22, "Device doesn't support cellular data.", 37, 2);

    sub_268CDD0DC();
    v23 = sub_268CD42AC(6, 0);
    v35();

    return v37;
  }
}

double sub_268E056AC(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4)
{

  v20 = sub_268D38D64();

  sub_268CDD0DC();
  v17 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v19 = v4;
  v21 = [a2 settingMetadata];
  if (v20)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  *v19 = sub_268E41954(v21, 0, 0, v15, 0, 0);
  sub_268CD0F7C();
  v9 = sub_268F9B004();

  [v17 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v9);
  v13 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v14 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v6;
  MEMORY[0x277D82BE0](v17);
  sub_268CDD1A4();
  v10 = sub_268F9AE74();
  v11 = v7;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC14(v13, &dword_268CBE000, v14, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v14);

  a3(v17);

  *&result = MEMORY[0x277D82BD8](v17).n128_u64[0];
  return result;
}

uint64_t *sub_268E05A08()
{
  if (qword_280FE64A8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8358;
}

uint64_t sub_268E05A68()
{
  type metadata accessor for GetHeySiriHandler();
  v2 = sub_268CDC590();
  v0 = sub_268CDD6D4();
  result = sub_268CDC5C0(v2, v0 & 1);
  qword_280FE8358 = result;
  return result;
}

uint64_t sub_268E05AE4()
{
  v1 = *sub_268E05A08();

  return v1;
}

void sub_268E05B14(void *a1, void (*a2)(id, __n128), uint64_t a3)
{
  v48 = a3;
  v49 = a2;
  v56 = a1;
  v51 = 0;
  v65 = 0;
  v50 = 0;
  v68 = a1;
  v66 = a2;
  v67 = a3;
  v53 = sub_268F9B284();
  v55 = *sub_268DC7AE8();
  v3 = v55;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v54 = sub_268F9B734();
  sub_268F9AC14(v53, &dword_268CBE000, v55, "GetHeySiriHandler handling intent.", 34, 2);

  v57 = [v56 settingMetadata];
  if (v57 && (v46 = v57, v43 = v57, v45 = [v57 targetDevice], v44 = v45, v57, v45))
  {
    v42 = v44;
    v38 = v44;
    v39 = [v44 deviceCategory];

    v40 = v39;
    v41 = 0;
  }

  else
  {
    v40 = 0;
    v41 = 1;
  }

  v35 = v41;
  v36 = v40;
  v37 = &v63;
  v61 = v40;
  v62 = v41 & 1;
  v63 = 6;
  v64 = 0;
  if ((v41 & 1) == 0)
  {
    v59 = v36;
    v60 = v35 & 1;
    if ((v37[1] & 1) == 0)
    {
      v58 = *v37;
      v33 = type metadata accessor for INDeviceCategory(0);
      sub_268CD7818();
      v34 = sub_268F9AE04();
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if ((v37[1] & 1) == 0)
  {
LABEL_15:
    v34 = 0;
    goto LABEL_13;
  }

  v34 = 1;
LABEL_13:
  if (v34)
  {
    v7 = v50;
    v8 = sub_268DBBBB4();
    v24 = *v8;
    v20 = v8[1];
    v21 = *(v8 + 16);
    v22 = *sub_268DC7AE8();
    v19 = v22;
    v9 = v22;
    v23 = *(v47 + 24);

    v10 = v56;
    v25 = &v19;
    MEMORY[0x28223BE20](v24, v20, v21, v22);
    v18[2] = v11;
    v18[3] = v49;
    v18[4] = v48;
    v18[5] = v12;
    sub_268DB944C(v13, v14, v15, v16, v17, sub_268E0617C, v18, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v26 = v7;

    v32 = v26;
  }

  else
  {
    v27 = sub_268F9B284();
    v29 = *sub_268DC7AE8();
    v4 = v29;
    v28 = sub_268F9B734();
    sub_268F9AC14(v27, &dword_268CBE000, v29, "GetHeySiriHandler handling intent; Siri cannot change setting: Hey Siri ", 72, 2);

    v5 = sub_268E948B8(17);
    v30 = v6;
    v31 = sub_268E41B70(v5, v6);

    (v49)(v31);

    v32 = v50;
  }
}

uint64_t sub_268E0608C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x277D82BE0](a4);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  sub_268D3618C(sub_268E0660C, v8);
}

double sub_268E061B0(uint64_t a1, void (*a2)(id), uint64_t a3, void *a4)
{
  v30 = a1;
  v28 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v29 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v26 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF00, qword_268FA2988);
  v24 = sub_268F9AE64();
  v25 = v6;
  v26[3] = MEMORY[0x277D837D0];
  v27 = sub_268CDD224();
  v26[4] = v27;
  *v26 = v24;
  v26[1] = v25;
  sub_268CD0F7C();
  sub_268F9AC14(v28, &dword_268CBE000, v29, "Hey Siri is enabled: %@", 23, 2);

  MEMORY[0x277D82BD8](v29);
  if (v30 == 2)
  {

    v21 = sub_268E419BC(6);
    (a2)();
    MEMORY[0x277D82BD8](v21);
  }

  else
  {
    sub_268CDD0DC();
    v19 = sub_268CD42AC(3, 0);
    sub_268CDD140();
    sub_268F9B734();
    v20 = v8;
    v9 = [a4 settingMetadata];
    if (v30)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    *v20 = sub_268E41954(v9, 0, 0, v18, 0, 0);
    sub_268CD0F7C();
    v14 = sub_268F9B004();

    [v19 setSettingResponseDatas_];
    MEMORY[0x277D82BD8](v14);
    v16 = sub_268F9B284();
    v10 = sub_268DC7AE8();
    v17 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268F9B734();
    v15 = v11;
    MEMORY[0x277D82BE0](v19);
    sub_268CDD1A4();
    v12 = sub_268F9AE74();
    v15[3] = MEMORY[0x277D837D0];
    v15[4] = v27;
    *v15 = v12;
    v15[1] = v13;
    sub_268CD0F7C();
    sub_268F9AC14(v16, &dword_268CBE000, v17, "Sending back response %@", 24, 2);

    MEMORY[0x277D82BD8](v17);

    a2(v19);

    *&result = MEMORY[0x277D82BD8](v19).n128_u64[0];
  }

  return result;
}

uint64_t SettingsBinarySetting.__allocating_init(settingId:value:)(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v15 = a1;
  v16 = a2;
  v20 = a3;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  v17 = 0;
  v13 = *(*(sub_268F9A9C4() - 8) + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v16, v20, v3);
  v19 = &v12 - v12;
  v14 = v12;
  MEMORY[0x28223BE20](v4, v5, v6, &v12 - v12);
  v18 = &v12 - v14;
  v26 = v7;
  v27 = v8;
  v25 = v9 & 1;
  type metadata accessor for SettingsBinarySetting.Builder(v10);

  sub_268F9A9A4();
  sub_268F9A9A4();
  v21 = sub_268F77EB0(v18, v19);
  v22 = sub_268F786D4(v20 & 1);

  v24 = v22;

  v23 = sub_268F787B4(v22);

  v28 = v23;

  return v23;
}

uint64_t sub_268E067CC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v15 = a1;
  v16 = a2;
  v20 = a3;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  v17 = 0;
  v13 = *(*(sub_268F9A9C4() - 8) + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v16, v20, v3);
  v19 = &v12 - v12;
  v14 = v12;
  MEMORY[0x28223BE20](v4, v5, v6, &v12 - v12);
  v18 = &v12 - v14;
  v26 = v7;
  v27 = v8;
  v25 = v9 & 1;
  type metadata accessor for SettingsMultiSetting.Builder(v10);

  sub_268F9A9A4();
  sub_268F9A9A4();
  v21 = sub_268DD78B0(v18, v19);
  v22 = sub_268DD7ADC(v20 & 1);

  v24 = v22;

  v23 = sub_268DD7C30(v22);

  v28 = v23;

  return v23;
}

double sub_268E0697C@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  v29 = *a1;
  v28 = v29;
  v21 = sub_268E7B768();
  v22 = v2;
  if (v2)
  {
    v26 = v21;
    v27 = v2;
    sub_268E0FA80();
    v18 = sub_268E0AA60(v21, v22);
    v25 = v18;
    v19 = [v18 dictionary];
    if (v19)
    {
      v24 = v19;
      v30 = 0;
      v15 = objc_opt_self();
      MEMORY[0x277D82BE0](v19);
      v23 = 0;
      v17 = [v15 dataWithPropertyList:v19 format:200 options:0 error:&v23];
      v16 = v23;
      MEMORY[0x277D82BE0](v23);
      v3 = v30;
      v30 = v16;
      MEMORY[0x277D82BD8](v3);
      swift_unknownObjectRelease();
      if (v17)
      {
        v13 = sub_268F99184();
        v14 = v4;
        sub_268E0AE14();
        sub_268F99174();
        sub_268D55C74(v13, v14);
        MEMORY[0x277D82BD8](v17);

        sub_268F9A9A4();
        v5 = sub_268F9A9C4();
        (*(*(v5 - 8) + 56))(a2, 0, 1);
      }

      else
      {
        v11 = v30;
        v12 = sub_268F990F4();
        MEMORY[0x277D82BD8](v11);
        swift_willThrow();
        v9 = v12;
        v10 = sub_268F9A9C4();
        (*(*(v10 - 8) + 56))(a2, 1);
      }

      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v18);
    }

    else
    {
      v7 = sub_268F9A9C4();
      (*(*(v7 - 8) + 56))(a2, 1);
      MEMORY[0x277D82BD8](v18);
    }
  }

  else
  {
    v8 = sub_268F9A9C4();
    (*(*(v8 - 8) + 56))(a2, 1);
  }

  return result;
}

void sub_268E06D9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  countAndFlagsBits = 0;
  v13 = 0;
  v10 = 0;
  v15 = a1;
  v14 = a1;
  v7 = sub_268CD7620();
  v8._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v7, &protocol witness table for INSetBinarySettingIntent);
  v8._object = v2;
  if (!v2)
  {
    goto LABEL_11;
  }

  countAndFlagsBits = v8._countAndFlagsBits;
  v13 = v2;

  BinarySettingIdentifier.init(rawValue:)(v8);
  if (v11 == 65)
  {

LABEL_11:
    v5 = sub_268F9A9C4();
    (*(*(v5 - 8) + 56))(a2, 1);
    return;
  }

  v10 = v11;
  v9 = v11;
  SettingIntent.deviceCategory.getter(v7, &protocol witness table for INSetBinarySettingIntent);
  if (v3)
  {
    sub_268E06FB0(&v9, 0, 1u, a2);
  }

  else
  {
    sub_268CD4334();
    sub_268E06FB0(&v9, v4, 0, a2);
  }
}

double sub_268E06F58@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0;
  v5 = *a1;
  sub_268E0FAE4();
  v4 = v5;
  return sub_268E0C410(&v4, a2);
}

uint64_t sub_268E06FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v33 = "attempting to generate a Direct Invocation Object from BinarySettingIdentifier: %@.";
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v26 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v23, v24, v4);
  v27 = &v16 - v26;
  v37 = *v5;
  v44 = v37;
  v42 = v6;
  v43 = v7 & 1;
  v34 = sub_268F9B284();
  v36 = *sub_268DC9D70();
  MEMORY[0x277D82BE0](v36);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v32 = sub_268F9B734();
  v30 = v8;
  v41[1] = v37;
  v28 = sub_268F9AE64();
  v29 = v9;
  v30[3] = MEMORY[0x277D837D0];
  v10 = sub_268CDD224();
  v11 = v28;
  v12 = v29;
  v13 = v30;
  v30[4] = v10;
  *v13 = v11;
  v13[1] = v12;
  sub_268CD0F7C();
  v35 = v14;
  sub_268F9AC14(v34, &dword_268CBE000, v36, v33, 83, 2);

  MEMORY[0x277D82BD8](v36);
  v38 = (v37 - 1);
  switch(v37)
  {
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 12:
    case 17:
    case 19:
    case 20:
    case 28:
    case 31:
    case 32:
    case 37:
    case 38:
    case 45:
    case 51:
    case 52:
    case 53:
      v39 = v37;
      result = sub_268E0BFA8(v23, v24 & 1, v22);
      break;
    default:
      v18 = 0;
      sub_268E0FAE4();
      v41[0] = v37;
      sub_268E0C410(v41, v27);
      v19 = sub_268F9A9C4();
      v20 = *(v19 - 8);
      v21 = v19 - 8;
      v17 = (*(v20 + 48))(v27, 1) == 1;
      v16 = v17;
      sub_268D28588(v27);
      if (v16)
      {
        v40 = v37;
        result = sub_268E0BFA8(v23, v24 & 1, v22);
      }

      else
      {
        result = (*(v20 + 56))(v22, 1, 1, v19);
      }

      break;
  }

  return result;
}

uint64_t sub_268E0739C(void *a1)
{
  v16 = a1;
  v9 = [a1 dialog];
  sub_268E0FB48();
  v13 = sub_268F9B014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF28, &qword_268FA2B10);
  sub_268E0FBAC();
  sub_268F9B234();

  if (v12)
  {
    v4 = [v12 fullPrint];
    v5 = sub_268F9AE24();
    v6 = v1;
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v9);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    MEMORY[0x277D82BD8](v9);
    v7 = 0;
    v8 = 0;
  }

  v10 = v7;
  v11 = v8;
  if (v8)
  {
    v14 = v10;
    v15 = v11;
  }

  else
  {
    v14 = sub_268F9AEF4();
    v15 = v2;
  }

  return v14;
}

uint64_t sub_268E07564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37[3] = a1;
  v37[4] = a2;
  v37[1] = a3;
  v37[2] = a4;
  sub_268F9B734();
  v20 = v4;
  *v4 = sub_268E948B8(21);
  v20[1] = v5;
  v20[2] = sub_268E948B8(7);
  v20[3] = v6;
  v20[4] = sub_268E948B8(18);
  v20[5] = v7;
  v20[6] = sub_268E948B8(23);
  v20[7] = v8;
  sub_268CD0F7C();
  v37[0] = v9;
  v36[0] = a3;
  v36[1] = a4;
  v35 = 2;
  v24 = NumericSettingIdentifier.rawValue.getter();
  v23 = v10;

  sub_268D28874(v36, v33);
  *&v34 = v24;
  *(&v34 + 1) = v23;
  if (v33[1])
  {
    sub_268D28874(v33, v26);
    if (*(&v34 + 1))
    {
      v25 = v34;
      v16 = MEMORY[0x26D62DB50](v26[0], v26[1], v34, *(&v34 + 1));
      sub_268CD9D30(&v25);
      sub_268CD9D30(v26);
      sub_268CD9D30(v33);
      v17 = v16;
      goto LABEL_7;
    }

    sub_268CD9D30(v26);
    goto LABEL_9;
  }

  if (*(&v34 + 1))
  {
LABEL_9:
    sub_268D28550(v33);
    v17 = 0;
    goto LABEL_7;
  }

  sub_268CD9D30(v33);
  v17 = 1;
LABEL_7:

  if ((v17 & 1) == 0)
  {
    v26[2] = sub_268E948B8(17);
    v26[3] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    sub_268F9B064();
  }

  v15 = v37[0];

  v32 = v15;

  v28 = a1;
  v29 = a2;
  if (a2)
  {
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = sub_268F9AEF4();
    v31 = v12;
    if (v29)
    {
      sub_268CD9D30(&v28);
    }
  }

  v27[0] = v30;
  v27[1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v14 = sub_268F9AFC4();
  sub_268CD9D30(v27);
  sub_268CD7930(&v32);
  sub_268CD7930(v37);
  return (v14 ^ 1) & 1;
}

uint64_t sub_268E078D0(uint64_t a1, uint64_t a2)
{
  v8[1] = a1;
  v8[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  sub_268F9B734();
  v6 = v2;
  *v2 = sub_268E948B8(23);
  v6[1] = v3;
  sub_268CD0F7C();
  v8[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF38, &unk_268FA2B18);
  sub_268E0FC34();
  sub_268E0FCBC();
  v7 = sub_268F9AFC4();
  sub_268CD7930(v8);
  return v7 & 1;
}

uint64_t sub_268E07A1C(uint64_t a1)
{
  type metadata accessor for INBinarySettingValue(0);
  sub_268CD925C();
  return sub_268F9B754() & 1;
}

uint64_t sub_268E07A88(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

BOOL sub_268E07AE4(uint64_t a1, void *a2)
{
  rawValue._countAndFlagsBits = a1;
  rawValue._object = a2;

  BinarySettingIdentifier.init(rawValue:)(rawValue);
  return v4 != 65;
}

BOOL sub_268E07B94(uint64_t a1, void *a2)
{
  rawValue._countAndFlagsBits = a1;
  rawValue._object = a2;

  NumericSettingIdentifier.init(rawValue:)(rawValue);
  return v4 != 13;
}

uint64_t sub_268E07C44(void *a1)
{
  v19 = a1;
  v14 = [a1 settingMetadata];
  if (v14 && (v13 = [v14 targetDevice], *&v1 = MEMORY[0x277D82BD8](v14).n128_u64[0], v13))
  {
    v2 = [v13 deviceName];
    v12 = v2;
    if (v2)
    {
      v8 = sub_268F9AE24();
      v9 = v3;
      MEMORY[0x277D82BD8](v12);
      v10 = v8;
      v11 = v9;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    MEMORY[0x277D82BD8](v13);
    v6 = v10;
    v7 = v11;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v15 = v6;
  v16 = v7;
  if (v7)
  {
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = sub_268F9AEF4();
    v18 = v4;
  }

  return v17;
}

uint64_t sub_268E07E2C(char a1)
{
  if (a1 == 2)
  {
    sub_268F9AA44();
    sub_268F99C44();
    sub_268F9AA14();
    v2 = sub_268F9AA24();

    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  return v3 & 1;
}

float sub_268E07EE4(_BYTE *a1)
{
  if (*a1 != 2)
  {
    return 0.0;
  }

  sub_268D35434();

  v1 = sub_268D39FA4();
  v3 = *&v1;

  return v3;
}

double sub_268E07F78(_BYTE *a1)
{
  if (*a1 != 2)
  {
    return 1.0;
  }

  sub_268D35434();

  v2 = sub_268D39FC4();

  return v2;
}

uint64_t sub_268E07FF4(void *a1)
{
  v12[3] = a1;
  v12[1] = sub_268E07C44(a1);
  v12[2] = v1;
  sub_268F9B734();
  v9 = v2;
  *v2 = sub_268E42B68(2);
  v9[1] = v3;
  v9[2] = sub_268E42B68(4);
  v9[3] = v4;
  v9[4] = sub_268E42B68(5);
  v9[5] = v5;
  sub_268CD0F7C();
  v12[0] = v6;
  v11[0] = sub_268F9AE94();
  v11[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v10 = sub_268F9AFC4();
  sub_268CD9D30(v11);
  sub_268CD7930(v12);

  return v10 & 1;
}

uint64_t sub_268E08138()
{
  v0 = sub_268D2E630();
  v9 = SettingIntent.settingIdentifier.getter(v0, &protocol witness table for INGetSettingIntent);
  v10 = v1;
  if (v1)
  {
    v2 = BinarySettingIdentifier.rawValue.getter();
    v8 = MEMORY[0x26D62DB50](v9, v10, v2);

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v3 = BinarySettingIdentifier.rawValue.getter();
      v6 = MEMORY[0x26D62DB50](v9, v10, v3);

      v7 = v6;
    }

    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

BOOL sub_268E0829C()
{
  if (sub_268E08138())
  {
    sub_268D35434();

    v3 = sub_268D38D64();

    if (v3)
    {
      v2 = sub_268D3841C() ^ 1;
    }

    else
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      v1 = sub_268D38140() ^ 1;
    }

    return (v1 & 1) == 0;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_268E08400()
{
  result = sub_268F9AEF4();
  qword_2802F1460 = result;
  qword_2802F1468 = v1;
  return result;
}

uint64_t *sub_268E08444()
{
  if (qword_2802DB580 != -1)
  {
    swift_once();
  }

  return &qword_2802F1460;
}

uint64_t sub_268E084A4()
{
  v1 = *sub_268E08444();

  return v1;
}

void sub_268E084E0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = 0;
  v43 = 0;
  v41 = 0.0;
  v39 = 0;
  v40 = 0;
  v36 = 0;
  v47 = a1;
  v46 = a2;
  v45 = a3;
  v44 = a1;
  v4 = sub_268D588E0();
  v33 = SettingIntent.settingIdentifier.getter(v4, &protocol witness table for INSetNumericSettingIntent);
  v34 = v5;
  if (!v5)
  {
    goto LABEL_27;
  }

  v42 = v33;
  v43 = v5;
  MEMORY[0x277D82BE0](a2);
  if (a2)
  {
    v6 = [a2 updatedValue];
    v35 = v6;
    if (v6)
    {
      v27 = v35;
      MEMORY[0x277D82BE0](v35);
      sub_268D35038(&v35);
      v28 = [v27 value];
      *&v7 = MEMORY[0x277D82BD8](v27).n128_u64[0];
      if (v28)
      {
        [v28 doubleValue];
        v24 = v8;
        MEMORY[0x277D82BD8](v28);
        v25 = v24;
        v26 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      sub_268D35038(&v35);
      MEMORY[0x277D82BD8](a2);
    }
  }

  v25 = 0.0;
  v26 = 1;
LABEL_12:
  if (v26)
  {

LABEL_27:
    v15 = sub_268F9B284();
    v13 = sub_268DC9D70();
    v16 = *v13;
    MEMORY[0x277D82BE0](*v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v15, &dword_268CBE000, v16, "Failed to to generate a CustomCanvasViewData because no intentResponse?.updatedValue?.value?.doubleValue == nil. ", 113, 2);

    MEMORY[0x277D82BD8](v16);
    v14 = sub_268F9A9C4();
    (*(*(v14 - 8) + 56))(a4, 1);
    return;
  }

  v41 = v25;
  v21 = sub_268E08994(v33, v34, a3);
  v22 = v9;
  v39 = v21;
  v40 = v9;
  v10 = [a1 settingMetadata];
  v23 = v10;
  if (v10 && (v20 = [v10 targetDevice], *&v11 = MEMORY[0x277D82BD8](v23).n128_u64[0], v20))
  {
    [v20 deviceCategory];
    MEMORY[0x277D82BD8](v20);
    sub_268CD4334();
    v18 = v12;
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 1;
  }

  v37 = v18;
  v38 = v19 & 1;
  if (v19)
  {
    v17 = 0;
  }

  else
  {
    v17 = v37;
  }

  v36 = v17;
  sub_268E08CB0(v33, v34, v21, v22, v17, a4, v25);
}

uint64_t sub_268E08994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29 = a2;
  v34 = a3;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v46 = 0;
  v44 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v21 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38, v3, v4, v5);
  v39 = (&v20 - v21);
  v33 = 0;
  v22 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33, v6, v7, v8);
  v37 = &v20 - v22;
  v24 = *(*(sub_268F9A9C4() - 8) + 64);
  v23 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33, v29, v34, v9);
  v32 = &v20 - v23;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v11, v12, &v20 - v23);
  v30 = &v20 - v25;
  v48 = v13;
  v49 = v14;
  v47 = v15;
  v27 = type metadata accessor for SettingsNumericSetting(v16);

  sub_268F9A9A4();
  v26 = sub_268F9A874();
  sub_268D34FD4();
  v17 = sub_268F9B314();
  v31 = sub_268E0A9B8(v17);

  sub_268F9A9A4();
  v41 = sub_268F81C58(v30, v31, v32);
  v46 = v41;
  v36 = type metadata accessor for SettingIntentCATs(v33);
  sub_268F9AAF4();
  sub_268F9A8C4();
  v35 = v45;
  sub_268CDE730(v34, v45);
  sub_268F9A894();
  v40 = sub_268F9A904();
  v44 = v40;

  sub_268F55EF4(v41, 1);

  v42 = sub_268F9B824();
  v43 = v18;
  sub_268D28378(v39);

  return v42;
}

uint64_t sub_268E08CB0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v292 = a6;
  v349._countAndFlagsBits = a1;
  v349._object = a2;
  v334 = a3;
  v335 = a4;
  v336 = a7;
  v337 = a5;
  v293 = "Slider descption: %@.";
  v294 = "localizedIdString: %@, urlString: %@";
  v295 = "Failed to get localizedIdString";
  v296 = "Error generating view data with error: %@";
  v297 = "Failed to to generate a CustomCanvasViewData because no NumericSettingIdentifier found with: %@.";
  v391 = 0;
  v390 = 0;
  v389 = 0;
  v388 = 0;
  v387 = 0;
  v385 = 0;
  v386 = 0;
  v383 = 0;
  v384 = 0;
  v382 = 0.0;
  v381 = 0;
  v379 = 0;
  v377 = 0;
  v298 = 0;
  v370 = 0;
  v364 = 0;
  v365 = 0;
  v362 = 0;
  v363 = 0;
  v360 = 0;
  v361 = 0;
  v359 = 0;
  v354 = 0;
  v355 = 0;
  v351 = 0;
  v352 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
  v299 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8, v9, v10);
  v300 = &v146 - v299;
  v317 = 0;
  v301 = type metadata accessor for ViewData(0);
  v302 = (*(*(v301 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v301, v11, v12, v13);
  v303 = &v146 - v302;
  v391 = &v146 - v302;
  v304 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v317, v14, v15, v16);
  v305 = &v146 - v304;
  v306 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18, &v146 - v304, v19, v20);
  v307 = &v146 - v306;
  v390 = &v146 - v306;
  v308 = sub_268F99414();
  v309 = *(v308 - 8);
  v310 = v308 - 8;
  v311 = (*(v309 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v308, v21, v22, v23);
  v312 = &v146 - v311;
  v313 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v146 - v311, v25, v26, v27);
  v314 = &v146 - v313;
  v389 = &v146 - v313;
  v315 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF50, &qword_268FA2B38) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v317, v28, v29, v30);
  v316 = &v146 - v315;
  v318 = sub_268F99364();
  v319 = *(v318 - 8);
  v320 = v318 - 8;
  v321 = (*(v319 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v317, v31, v32, v33);
  v322 = &v146 - v321;
  v323 = sub_268F99394();
  v324 = *(v323 - 8);
  v325 = v323 - 8;
  v326 = (*(v324 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v323, v34, v35, v36);
  v327 = &v146 - v326;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF58, &qword_268FA2B40);
  v328 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37, v38, v39, v40);
  v329 = &v146 - v328;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v330 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41, v42, v43, v44);
  v331 = &v146 - v330;
  v332 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v146 - v330, v46, v47, v48);
  v333 = &v146 - v332;
  v345 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF60, &qword_268FA2B48) - 8) + 64);
  v338 = (v345 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v349._object, v49, v334, v335);
  v339 = &v146 - v338;
  v340 = (v345 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50, &v146 - v338, v51, v52);
  v341 = &v146 - v340;
  v342 = (v345 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, &v146 - v340, v54, v55);
  v343 = &v146 - v342;
  v344 = (v345 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56, &v146 - v342, v57, v58);
  v346 = &v146 - v344;
  v388 = &v146 - v344;
  v347 = (v345 + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = MEMORY[0x28223BE20](v59, v60, v61, v62);
  v348 = &v146 - v347;
  v387 = &v146 - v347;
  v385 = v64;
  v386 = v65;
  v383 = v66;
  v384 = v67;
  v382 = v63;
  v381 = v68;

  NumericSettingIdentifier.init(rawValue:)(v349);
  v350 = v380;
  if (v380 == 13)
  {
    v161 = sub_268F9B284();
    v163 = *sub_268DC9D70();
    MEMORY[0x277D82BE0](v163);
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v160 = sub_268F9B734();
    v158 = v127;

    v158[3] = MEMORY[0x277D837D0];
    v128 = sub_268CDD224();
    countAndFlagsBits = v349._countAndFlagsBits;
    object = v349._object;
    v131 = v158;
    v158[4] = v128;
    *v131 = countAndFlagsBits;
    v131[1] = object;
    sub_268CD0F7C();
    v162 = v132;
    sub_268F9AC14(v161, &dword_268CBE000, v163, v297, 96, 2);

    MEMORY[0x277D82BD8](v163);
    v133 = sub_268F9A9C4();
    return (*(*(v133 - 8) + 56))(v292, 1);
  }

  v291 = v350;
  v283 = v350;
  v379 = v350;
  v284 = 0;
  v280 = sub_268F99384();
  v278 = *(v280 - 8);
  v279 = v280 - 8;
  v282 = *(v278 + 56);
  v281 = v278 + 56;
  v285 = 1;
  v282(v348, 1);
  (v282)(v346, v285, v285, v280);
  v378 = v283;
  sub_268EB0234(v333);
  v286 = sub_268F9A9C4();
  v287 = *(v286 - 8);
  v288 = v286 - 8;
  v289 = *(v287 + 48);
  v290 = v287 + 48;
  if ((v289)(v333, v285) == 1)
  {
    sub_268D28588(v333);
    v276 = 0;
    v277 = 0;
  }

  else
  {
    v274 = sub_268F9A9B4();
    v275 = v69;
    (*(v287 + 8))(v333, v286);
    v276 = v274;
    v277 = v275;
  }

  v272 = v277;
  v273 = v276;
  if (v277)
  {
    v270 = v273;
    v271 = v272;
    v268 = v272;
    v269 = v273;
    v354 = v273;
    v355 = v272;
    v353 = v283;
    sub_268EB0474(v331);
    if (v289(v331, 1, v286) == 1)
    {
      sub_268D28588(v331);
      v266 = 0;
      v267 = 0;
    }

    else
    {
      v264 = sub_268F9A9B4();
      v265 = v70;
      (*(v287 + 8))(v331, v286);
      v266 = v264;
      v267 = v265;
    }

    v262 = v267;
    v263 = v266;
    if (v267)
    {
      v260 = v263;
      v261 = v262;
      v252 = v262;
      v254 = v263;
      v351 = v263;
      v352 = v262;
      sub_268F993E4();
      v253 = 0;
      v240 = sub_268F993F4();
      v71 = *(v240 - 8);
      v242 = *(v71 + 56);
      v241 = v71 + 56;
      v258 = 0;
      v259 = 1;
      v242(v329);
      v243 = MEMORY[0x277D62D08];
      v72 = *MEMORY[0x277D62D08];
      v245 = *(v324 + 104);
      v244 = v324 + 104;
      v245(v327, v72, v323);
      v246 = MEMORY[0x277D62BE0];
      v73 = *MEMORY[0x277D62BE0];
      v248 = *(v319 + 104);
      v247 = v319 + 104;
      v248(v322, v73, v318);
      v249 = sub_268F99374();
      v74 = *(v249 - 8);
      v251 = *(v74 + 56);
      v250 = v74 + 56;
      v251(v316, v259);
      sub_268CDD6D4();
      sub_268F993A4();
      v255 = MEMORY[0x277D62C78];
      v75 = *MEMORY[0x277D62C78];
      v257 = *(v278 + 104);
      v256 = v278 + 104;
      v257(v343, v75, v280);
      (v282)(v343, v258, v259, v280);
      sub_268E105C0(v343, v348);
      sub_268F993E4();
      (v242)(v329, v258, v259, v240);
      v245(v327, *v243, v323);
      v248(v322, *v246, v318);
      (v251)(v316, v259, v259, v249);
      sub_268CDD6D4();
      sub_268F993A4();
      v257(v343, *v255, v280);
      (v282)(v343, v258, v259, v280);
      sub_268E105C0(v343, v346);
    }

    else
    {
    }
  }

  v232 = *sub_268D35434();

  v76 = sub_268D39FA4();
  v235 = __PAIR64__(v77, LODWORD(v76));

  v377 = v235;
  v78 = sub_268E08444();
  v233 = *v78;
  v234 = v78[1];

  sub_268F9B124();
  v236 = v79;
  sub_268F9B124();
  v237 = v80;
  sub_268E0FDC4(v348, v341);
  v238 = *(v278 + 48);
  v239 = v278 + 48;
  if (v238(v341, 1, v280) == 1)
  {
    sub_268E0FEEC(v341);
    memset(v374, 0, sizeof(v374));
    v375 = 0;
    v376 = 0;
  }

  else
  {
    v375 = v280;
    v376 = MEMORY[0x277D62CB0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v374);
    (*(v278 + 32))(boxed_opaque_existential_1, v341, v280);
  }

  sub_268E0FDC4(v346, v339);
  if (v238(v339, 1, v280) == 1)
  {
    sub_268E0FEEC(v339);
    memset(v371, 0, sizeof(v371));
    v372 = 0;
    v373 = 0;
  }

  else
  {
    v372 = v280;
    v373 = MEMORY[0x277D62CB0];
    v82 = __swift_allocate_boxed_opaque_existential_1(v371);
    (*(v278 + 32))(v82, v339, v280);
  }

  v83 = v298;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C0, &unk_268FA2B50);
  sub_268F9B734();
  sub_268F9ADA4();
  sub_268F99404();
  v230 = v83;
  v231 = v83;
  if (!v83)
  {
    v222 = sub_268F9B284();
    v224 = *sub_268DC9D70();
    MEMORY[0x277D82BE0](v224);
    v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v220 = sub_268F9B734();
    v218 = v84;
    v214 = *(v309 + 16);
    v215 = v309 + 16;
    v214(v312, v314, v308);
    v216 = sub_268F9AE64();
    v217 = v85;
    v218[3] = MEMORY[0x277D837D0];
    v86 = sub_268CDD224();
    v87 = v216;
    v88 = v217;
    v89 = v218;
    v221 = v86;
    v218[4] = v86;
    *v89 = v87;
    v89[1] = v88;
    sub_268CD0F7C();
    v223 = v90;
    sub_268F9AC14(v222, &dword_268CBE000, v224, v293, 21, 2);

    MEMORY[0x277D82BD8](v224);
    v225 = sub_268F993B4();
    v91 = *(v225 - 8);
    v226 = *(v91 + 56);
    v227 = v91 + 56;
    v226(v307, 1);
    v369 = v283;
    v228 = sub_268EB0030();
    v229 = v92;
    if (v92)
    {
      v212 = v228;
      v213 = v229;
      v210 = v229;
      v211 = v228;
      v362 = v228;
      v363 = v229;

      if (v335)
      {
        v208 = v334;
        v209 = v335;
        v207 = v335;
        v193 = v334;
        v360 = v334;
        v361 = v335;
        v189 = sub_268F9B284();
        v191 = *sub_268DC9D70();
        MEMORY[0x277D82BE0](v191);
        v187 = sub_268F9B734();
        v188 = v93;

        v94 = v221;
        v95 = v188;
        v96 = v193;
        v97 = v207;
        v195 = MEMORY[0x277D837D0];
        v188[3] = MEMORY[0x277D837D0];
        v95[4] = v94;
        *v95 = v96;
        v95[1] = v97;

        v98 = v221;
        v99 = v188;
        v100 = v211;
        v101 = v210;
        v188[8] = v195;
        v99[9] = v98;
        v99[5] = v100;
        v99[6] = v101;
        sub_268CD0F7C();
        v190 = v102;
        sub_268F9AC14(v189, &dword_268CBE000, v191, v294, 36, 2);

        MEMORY[0x277D82BD8](v191);
        v196 = 0;
        sub_268E0FA80();
        v206 = sub_268E0AA60(v211, v210);
        v359 = v206;
        v192 = sub_268F9B734();
        v194 = v103;

        v104 = v194;
        v105 = v207;
        *v194 = v193;
        v104[1] = v105;
        sub_268CD0F7C();
        v204 = &v358;
        v358 = v106;
        v199 = v357;
        memset(v357, 0, sizeof(v357));
        v197 = sub_268F99424();
        v200 = v356;
        v356[3] = v197;
        v356[4] = MEMORY[0x277D63780];
        v198 = __swift_allocate_boxed_opaque_existential_1(v356);
        MEMORY[0x277D82BE0](v206);
        v107 = sub_268CDD6D4();
        v108 = v197;
        v109 = v107;
        v110 = v198;
        *v198 = v206;
        v205 = 1;
        *(v110 + 8) = v109 & 1;
        (*(*(v108 - 8) + 104))();
        v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
        v202 = sub_268DA6BFC();
        v203 = MEMORY[0x277D63850];
        sub_268E0AD18();
        sub_268F993C4();
        v111.n128_f64[0] = (v226)(v305, 0, v205, v225);
        sub_268E0FF94(v305, v307, v111);
        MEMORY[0x277D82BD8](v206);

LABEL_26:
        v119 = v230;
        sub_268E101BC(v307, v305, v112);
        v168 = 0;
        v120 = sub_268F993D4();
        (*(*(v120 - 8) + 56))(v300, 1);

        v121.n128_f64[0] = v214(v312, v314, v308);
        sub_268E0AD30(v305, v300, v349._countAndFlagsBits, v349._object, v337, v312, v303, v121);
        sub_268F99054();
        v169 = sub_268F99044();
        sub_268E102E4();
        v170 = sub_268F99034();
        v171 = v122;
        v172 = v119;
        if (!v119)
        {
          v165 = v171;
          v164 = v170;

          sub_268E0AE14();
          v166 = sub_268F99174();
          v167 = v123;
          sub_268D55C74(v164, v165);
          v364 = v166;
          v365 = v167;

          sub_268F9A9A4();
          v124.n128_f64[0] = (*(v287 + 56))(v292, 0, 1, v286);
          sub_268E10364(v303, v124);
          sub_268E10518(v307, v125);
          (*(v309 + 8))(v314, v308);
          sub_268E0FEEC(v346);
          return sub_268E0FEEC(v348);
        }

        v146 = v172;

        sub_268E10364(v303, v144);
        sub_268E10518(v307, v145);
        (*(v309 + 8))(v314, v308);
        v147 = v146;
        goto LABEL_31;
      }
    }

    v173 = sub_268F9B284();
    v175 = *sub_268DC9D70();
    MEMORY[0x277D82BE0](v175);
    v176 = 0;
    v174 = sub_268F9B734();
    sub_268F9AC14(v173, &dword_268CBE000, v175, v295, 31, 2);

    MEMORY[0x277D82BD8](v175);
    v179 = MEMORY[0x277D837D0];
    v178 = sub_268F9B734();
    v177 = v113;
    v186 = 1;
    v114 = sub_268F9AEF4();
    v115 = v177;
    *v177 = v114;
    v115[1] = v116;
    sub_268CD0F7C();
    v185 = &v368;
    v368 = v117;
    v180 = v367;
    memset(v367, 0, sizeof(v367));
    v181 = v366;
    memset(v366, 0, sizeof(v366));
    v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    v183 = sub_268DA6BFC();
    v184 = MEMORY[0x277D63850];
    sub_268E0AD18();
    sub_268F993C4();
    v118.n128_f64[0] = (v226)(v305, 0, v186, v225);
    sub_268E0FF94(v305, v307, v118);
    goto LABEL_26;
  }

  v147 = v231;
LABEL_31:
  v157 = v147;
  v134 = v147;
  v370 = v157;
  v154 = sub_268F9B294();
  v156 = *sub_268DC7D88();
  MEMORY[0x277D82BE0](v156);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v152 = sub_268F9B734();
  v150 = v135;
  swift_getErrorValue();
  sub_268F9B7C4();
  v151 = v136;
  v148 = sub_268F9AEC4();
  v149 = v137;
  v150[3] = MEMORY[0x277D837D0];
  v138 = sub_268CDD224();
  v139 = v148;
  v140 = v149;
  v141 = v150;
  v150[4] = v138;
  *v141 = v139;
  v141[1] = v140;

  sub_268CD0F7C();
  v155 = v142;
  sub_268F9AC14(v154, &dword_268CBE000, v156, v296, 41, 2);

  v143 = MEMORY[0x277D82BD8](v156);
  (*(v287 + 56))(v292, 1, 1, v286, v143);

  sub_268E0FEEC(v346);
  return sub_268E0FEEC(v348);
}

double sub_268E0A770@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21 = sub_268E08994(a1, a2, a5);
  v22 = v6;
  v23 = [a3 value];
  if (v23)
  {
    [v23 doubleValue];
    v13 = v7;
    MEMORY[0x277D82BD8](v23);
    v14 = v13;
    v15 = 0;
  }

  else
  {
    v14 = 0.0;
    v15 = 1;
  }

  if (v15)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v14;
  }

  if (a4)
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    sub_268CD4334();
    v10 = v8;
    v11 = 0;
  }

  if (v11)
  {
    sub_268E08CB0(a1, a2, v21, v22, 0, a6, v12);
  }

  else
  {
    sub_268E08CB0(a1, a2, v21, v22, v10, a6, v12);
  }

  return result;
}

uint64_t sub_268E0A9B8(void *a1)
{
  sub_268F9A864();
  [a1 doubleValue];
  sub_268F9A854();

  v3 = sub_268F9A844();

  MEMORY[0x277D82BD8](a1);

  return v3;
}

id sub_268E0AA60(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v24 = a2;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v32 = 0;
  v27 = 0;
  v18 = sub_268F99244();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18, v3, v4, v5);
  v22 = &v12 - v21;
  v23 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27, v24, v6, v7);
  v28 = &v12 - v23;
  v34 = v8;
  v35 = v9;
  v33 = v2;
  sub_268E0FA80();
  v26 = sub_268CF0C44();
  v32 = v26;
  sub_268F99134();
  v29 = sub_268F99144();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  if ((*(v30 + 48))(v28, 1) == 1)
  {
    v17 = 0;
  }

  else
  {
    v16 = sub_268F99114();
    (*(v30 + 8))(v28, v29);
    v17 = v16;
  }

  v13 = v17;
  [v26 setPunchOutUri_];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BE0](v26);
  sub_268F99234();
  sub_268F99224();
  v14 = v10;
  v15 = sub_268F9AE14();
  (*(v19 + 8))(v22, v18);

  [v26 setAceId_];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v26);
  return v26;
}

uint64_t sub_268E0AD30@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>, __n128 a8@<Q0>)
{
  sub_268E11E74(a1, a7, a8);
  v15 = type metadata accessor for ViewData(0);
  sub_268E11F9C(a2, &a7[v15[5]]);
  v8 = &a7[v15[6]];
  *v8 = a3;
  *(v8 + 1) = a4;
  *&a7[v15[7]] = a5;
  v17 = v15[8];
  v9 = sub_268F99414();
  return (*(*(v9 - 8) + 32))(&a7[v17], a6);
}

uint64_t sub_268E0AE14()
{
  sub_268E120C4(0);

  return 0;
}

double sub_268E0AE44@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  v29 = *a1;
  v28 = v29;
  v21 = sub_268EB0030();
  v22 = v2;
  if (v2)
  {
    v26 = v21;
    v27 = v2;
    sub_268E0FA80();
    v18 = sub_268E0AA60(v21, v22);
    v25 = v18;
    v19 = [v18 dictionary];
    if (v19)
    {
      v24 = v19;
      v30 = 0;
      v15 = objc_opt_self();
      MEMORY[0x277D82BE0](v19);
      v23 = 0;
      v17 = [v15 dataWithPropertyList:v19 format:200 options:0 error:&v23];
      v16 = v23;
      MEMORY[0x277D82BE0](v23);
      v3 = v30;
      v30 = v16;
      MEMORY[0x277D82BD8](v3);
      swift_unknownObjectRelease();
      if (v17)
      {
        v13 = sub_268F99184();
        v14 = v4;
        sub_268E0AE14();
        sub_268F99174();
        sub_268D55C74(v13, v14);
        MEMORY[0x277D82BD8](v17);

        sub_268F9A9A4();
        v5 = sub_268F9A9C4();
        (*(*(v5 - 8) + 56))(a2, 0, 1);
      }

      else
      {
        v11 = v30;
        v12 = sub_268F990F4();
        MEMORY[0x277D82BD8](v11);
        swift_willThrow();
        v9 = v12;
        v10 = sub_268F9A9C4();
        (*(*(v10 - 8) + 56))(a2, 1);
      }

      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v18);
    }

    else
    {
      v7 = sub_268F9A9C4();
      (*(*(v7 - 8) + 56))(a2, 1);
      MEMORY[0x277D82BD8](v18);
    }
  }

  else
  {
    v8 = sub_268F9A9C4();
    (*(*(v8 - 8) + 56))(a2, 1);
  }

  return result;
}

double sub_268E0B2C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a3;
  v92 = a1;
  v89 = a2;
  v116 = *MEMORY[0x277D85DE8];
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v104 = 0;
  v105 = 0;
  v103 = 0;
  v101 = 0;
  v99 = 0;
  v100 = 0;
  v90 = 0;
  v96 = sub_268F9A9C4();
  v93 = *(v96 - 8);
  v94 = v96 - 8;
  v91 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v89, v4, v5);
  v95 = &v29 - v91;
  v111 = v6;
  v110 = v7;
  v109 = v3;
  sub_268D562A0();
  v8 = sub_268CF0C44();
  v9 = v95;
  v108 = v8;

  (*(v93 + 16))(v9, v92 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier, v96);

  v97._countAndFlagsBits = sub_268F9A9B4();
  v97._object = v10;
  (*(v93 + 8))(v95, v96);
  NumericSettingIdentifier.init(rawValue:)(v97);
  v98 = v112;
  if (v112 == 13)
  {
    goto LABEL_33;
  }

  v87 = v98;
  v83 = v98;
  v107 = v98;
  v84 = *(v92 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_value);

  v85 = sub_268F9A824();
  v86 = v11;
  v114 = v85;
  v115 = v11 & 1;

  if (*(v89 + 25))
  {
    v114 = 0;
    v115 = 0;
    v81 = 0.0;
    v82 = 0;
  }

  else
  {
    if (*(v89 + 26))
    {
      v114 = 0x3FF0000000000000;
      v115 = 0;
      v79 = 0x3FF0000000000000;
      v80 = 0;
    }

    else
    {
      if (*(v89 + 24))
      {
        v78 = *(v89 + 32);

        if (v78)
        {
          v77 = v78;
          v72 = v78;
          v73 = sub_268F9A824();
          v74 = v12;

          v75 = v73;
          v76 = v74;
        }

        else
        {
          v75 = 0;
          v76 = 1;
        }

        v114 = v75;
        v115 = v76 & 1;
        v70 = v75;
        v71 = v76;
      }

      else
      {
        v70 = v85;
        v71 = v86;
      }

      v79 = v70;
      v80 = v71;
    }

    v81 = *&v79;
    v82 = v80;
  }

  v68 = v82;
  v69 = v81;
  if (v83 == 2)
  {
    sub_268E1084C();
    v67 = sub_268CF0C44();
    MEMORY[0x277D82BE0](v67);
    v13 = v108;
    v108 = v67;
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BE0](v67);
    if (v68)
    {
      v65 = 0;
    }

    else
    {
      v66 = v69;
      v65 = sub_268F9B104();
    }

    v63 = v65;
    v61 = *MEMORY[0x277D48948];
    MEMORY[0x277D82BE0](v61);
    sub_268F9AE24();
    v60 = v14;
    v62 = sub_268F9AE14();

    *&v15 = MEMORY[0x277D82BD8](v61).n128_u64[0];
    [v67 setValue:v63 forKey:{v62, v15}];
    MEMORY[0x277D82BD8](v62);
    swift_unknownObjectRelease();
    v16 = MEMORY[0x277D82BD8](v67).n128_u64[0];
    v64 = v67;
    goto LABEL_28;
  }

  if (v83 == 9)
  {
    sub_268E107E8();
    v59 = sub_268CF0C44();
    MEMORY[0x277D82BE0](v59);
    v17 = v108;
    v108 = v59;
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BE0](v59);
    if (v68)
    {
      v57 = 0;
    }

    else
    {
      v58 = v69;
      v57 = sub_268F9B104();
    }

    v56 = v57;
    v54 = *MEMORY[0x277D48948];
    MEMORY[0x277D82BE0](v54);
    sub_268F9AE24();
    v53 = v18;
    v55 = sub_268F9AE14();

    *&v19 = MEMORY[0x277D82BD8](v54).n128_u64[0];
    [v59 setValue:v56 forKey:{v55, v19}];
    MEMORY[0x277D82BD8](v55);
    swift_unknownObjectRelease();
    v16 = MEMORY[0x277D82BD8](v59).n128_u64[0];
    v64 = v59;
    goto LABEL_28;
  }

  v106 = v83;
  v20 = sub_268EB0030();
  v51 = v20;
  v52 = v21;
  if (!v21)
  {
LABEL_33:
    (*(v93 + 56))(v88, 1, 1, v96);
    *&result = MEMORY[0x277D82BD8](v108).n128_u64[0];
    return result;
  }

  v49 = v51;
  v50 = v52;
  v47 = v52;
  v46 = v51;
  v104 = v51;
  v105 = v52;
  sub_268E0FA80();
  v48 = sub_268E0AA60(v46, v47);
  MEMORY[0x277D82BE0](v48);
  v22 = v108;
  v108 = v48;
  MEMORY[0x277D82BD8](v22);

  v64 = v48;
LABEL_28:
  v44 = v64;
  v45 = [v64 dictionary];
  v23 = MEMORY[0x277D82BD8](v44);
  if (v45)
  {
    v43 = v45;
    v41 = v45;
    v103 = v45;
    v38 = 0;
    v113 = 0;
    v39 = objc_opt_self();
    MEMORY[0x277D82BE0](v41);
    v102 = v113;
    v42 = [v39 dataWithPropertyList:v41 format:200 options:v38 error:&v102];
    v40 = v102;
    MEMORY[0x277D82BE0](v102);
    v24 = v113;
    v113 = v40;
    MEMORY[0x277D82BD8](v24);
    swift_unknownObjectRelease();
    if (v42)
    {
      v37 = v42;
      v34 = v42;
      v32 = sub_268F99184();
      v33 = v25;
      sub_268E0AE14();
      v35 = sub_268F99174();
      v36 = v26;
      sub_268D55C74(v32, v33);
      MEMORY[0x277D82BD8](v34);
      v99 = v35;
      v100 = v36;

      sub_268F9A9A4();
      (*(v93 + 56))(v88, 0, 1, v96);
    }

    else
    {
      v30 = v113;
      v31 = sub_268F990F4();
      MEMORY[0x277D82BD8](v30);
      swift_willThrow();
      v28 = v31;
      v101 = v31;
      (*(v93 + 56))(v88, 1, 1, v96);
    }

    MEMORY[0x277D82BD8](v41);
    *&result = MEMORY[0x277D82BD8](v108).n128_u64[0];
  }

  else
  {
    (*(v93 + 56))(v88, 1, 1, v96, v23);
    *&result = MEMORY[0x277D82BD8](v108).n128_u64[0];
  }

  return result;
}

uint64_t sub_268E0BFA8@<X0>(uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v30 = type metadata accessor for ToggleBinarySetting();
  v32 = BinarySettingIdentifier.rawValue.getter();
  if (a3)
  {
    v28 = 0;
  }

  else
  {
    v28 = a2;
  }

  sub_268E7EE88(v32, v4, v28);
  v25 = sub_268D90E70();
  v26 = sub_268E0C3D8();
  sub_268F3A0D0(v26, v30, v25);
  v27 = v5;
  MEMORY[0x277D82BD8](v26);

  if (v27)
  {
    v23 = sub_268F9B284();
    v6 = sub_268DC9D70();
    v24 = *v6;
    MEMORY[0x277D82BE0](*v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v22 = v7;
    v20 = sub_268F9AE64();
    v21 = v8;
    v22[3] = MEMORY[0x277D837D0];
    v22[4] = sub_268CDD224();
    *v22 = v20;
    v22[1] = v21;
    sub_268CD0F7C();
    sub_268F9AC14(v23, &dword_268CBE000, v24, "ToggleBinarySetting command created for: %@.", 44, 2);

    MEMORY[0x277D82BD8](v24);
    sub_268F9A9A4();
    v9 = sub_268F9A9C4();
    return (*(*(v9 - 8) + 56))(a4, 0, 1);
  }

  else
  {
    v18 = sub_268F9B284();
    v11 = sub_268DC9D70();
    v19 = *v11;
    MEMORY[0x277D82BE0](*v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v17 = v12;
    v15 = sub_268F9AE64();
    v16 = v13;
    v17[3] = MEMORY[0x277D837D0];
    v17[4] = sub_268CDD224();
    *v17 = v15;
    v17[1] = v16;
    sub_268CD0F7C();
    sub_268F9AC14(v18, &dword_268CBE000, v19, "failed to to generate a Direct Invocation Object from BinarySettingIdentifier: %@.", 82, 2);

    MEMORY[0x277D82BD8](v19);
    v14 = sub_268F9A9C4();
    return (*(*(v14 - 8) + 56))(a4, 1);
  }
}

double sub_268E0C410@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v71[1] = *MEMORY[0x277D85DE8];
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v69 = *a1;
  sub_268E0FAE4();
  v67 = sub_268CF0C44();
  switch(v69)
  {
    case 0:
      sub_268E10C34();
      v62 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v62);
      v2 = v67;
      v67 = v62;
      MEMORY[0x277D82BD8](v2);
      v63 = v62;
      goto LABEL_21;
    case 1:
    case 2:
    case 3:
    case 4:
    case 17:
    case 28:
      v3 = sub_268F9A9C4();
      (*(*(v3 - 8) + 56))(a2, 1);
      *&result = MEMORY[0x277D82BD8](v67).n128_u64[0];
      return result;
    case 8:
      sub_268E10BD0();
      v61 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v61);
      v5 = v67;
      v67 = v61;
      MEMORY[0x277D82BD8](v5);
      v63 = v61;
      goto LABEL_21;
    case 16:
      sub_268E10B6C();
      v60 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v60);
      v6 = v67;
      v67 = v60;
      MEMORY[0x277D82BD8](v6);
      v63 = v60;
      goto LABEL_21;
    case 22:
      sub_268E108B0();
      v59 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v59);
      v7 = v67;
      v67 = v59;
      MEMORY[0x277D82BD8](v7);
      v63 = v59;
      goto LABEL_21;
    case 23:
      sub_268E10B08();
      v58 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v58);
      v8 = v67;
      v67 = v58;
      MEMORY[0x277D82BD8](v8);
      v63 = v58;
      goto LABEL_21;
    case 26:
      sub_268E10A40();
      v57 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v57);
      v9 = v67;
      v67 = v57;
      MEMORY[0x277D82BD8](v9);
      v63 = v57;
      goto LABEL_21;
    case 29:
      sub_268E10AA4();
      v56 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v56);
      v10 = v67;
      v67 = v56;
      MEMORY[0x277D82BD8](v10);
      v63 = v56;
      goto LABEL_21;
    case 42:
      sub_268E10A40();
      v55 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v55);
      v11 = v67;
      v67 = v55;
      MEMORY[0x277D82BD8](v11);
      v63 = v55;
      goto LABEL_21;
    case 48:
      sub_268E109DC();
      v54 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v54);
      v12 = v67;
      v67 = v54;
      MEMORY[0x277D82BD8](v12);
      v63 = v54;
      goto LABEL_21;
    case 49:
      sub_268E10978();
      v53 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v53);
      v13 = v67;
      v67 = v53;
      MEMORY[0x277D82BD8](v13);
      v63 = v53;
      goto LABEL_21;
    case 57:
      sub_268E108B0();
      v52 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v52);
      v14 = v67;
      v67 = v52;
      MEMORY[0x277D82BD8](v14);
      v63 = v52;
      goto LABEL_21;
    case 58:
      sub_268E108B0();
      v51 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v51);
      v15 = v67;
      v67 = v51;
      MEMORY[0x277D82BD8](v15);
      v63 = v51;
      goto LABEL_21;
    case 59:
      sub_268E108B0();
      v50 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v50);
      v16 = v67;
      v67 = v50;
      MEMORY[0x277D82BD8](v16);
      v63 = v50;
      goto LABEL_21;
    case 60:
      sub_268E108B0();
      v49 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v49);
      v17 = v67;
      v67 = v49;
      MEMORY[0x277D82BD8](v17);
      v63 = v49;
      goto LABEL_21;
    case 61:
      sub_268E108B0();
      v48 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v48);
      v18 = v67;
      v67 = v48;
      MEMORY[0x277D82BD8](v18);
      v63 = v48;
      goto LABEL_21;
    case 62:
      sub_268E108B0();
      v47 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v47);
      v19 = v67;
      v67 = v47;
      MEMORY[0x277D82BD8](v19);
      v63 = v47;
      goto LABEL_21;
    case 63:
      sub_268E108B0();
      v46 = sub_268CF0C44();
      MEMORY[0x277D82BE0](v46);
      v20 = v67;
      v67 = v46;
      MEMORY[0x277D82BD8](v20);
      v63 = v46;
LABEL_21:
      MEMORY[0x277D82BE0](v63);
      v44 = [v63 dictionary];
      MEMORY[0x277D82BD8](v63);
      v71[0] = v44;
      sub_268E10914();
      v45 = [v63 isKindOfClass_];
      MEMORY[0x277D82BD8](v63);
      if (v45)
      {
        MEMORY[0x277D82BE0](v67);
        objc_opt_self();
        v43 = swift_dynamicCastObjCClass();
        if (v43)
        {
          v42 = v43;
        }

        else
        {
          MEMORY[0x277D82BD8](v67);
          v42 = 0;
        }

        MEMORY[0x277D82BE0](v42);
        if (v42)
        {
          [v42 setToggle_];
          MEMORY[0x277D82BD8](v42);
        }

        MEMORY[0x277D82BE0](v42);
        if (v42)
        {
          v40 = [v42 dictionary];
          MEMORY[0x277D82BD8](v42);
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        v22 = v71[0];
        v71[0] = v41;
        MEMORY[0x277D82BD8](v22);
        MEMORY[0x277D82BE0](v42);
        if (v42)
        {
          objc_opt_self();
          v39 = swift_dynamicCastObjCClass();
          if (v39)
          {
            v38 = v39;
          }

          else
          {
            MEMORY[0x277D82BD8](v42);
            v38 = 0;
          }

          v37 = v38;
        }

        else
        {
          v37 = 0;
        }

        MEMORY[0x277D82BE0](v37);
        if (v37)
        {
          [v37 setUserConfirmed_];
          MEMORY[0x277D82BD8](v37);
        }

        MEMORY[0x277D82BD8](v37);
        MEMORY[0x277D82BD8](v42);
      }

      v36 = v71[0];
      MEMORY[0x277D82BE0](v71[0]);
      if (v71[0])
      {
        v66 = v71[0];
        v70 = 0;
        v33 = objc_opt_self();
        MEMORY[0x277D82BE0](v71[0]);
        v65 = 0;
        v35 = [v33 dataWithPropertyList:v71[0] format:200 options:0 error:&v65];
        v34 = v65;
        MEMORY[0x277D82BE0](v65);
        v23 = v70;
        v70 = v34;
        MEMORY[0x277D82BD8](v23);
        swift_unknownObjectRelease();
        if (v35)
        {
          v31 = sub_268F99184();
          v32 = v24;
          sub_268E0AE14();
          sub_268F99174();
          sub_268D55C74(v31, v32);
          MEMORY[0x277D82BD8](v35);

          sub_268F9A9A4();
          v25 = sub_268F9A9C4();
          (*(*(v25 - 8) + 56))(a2, 0, 1);
        }

        else
        {
          v29 = v70;
          v30 = sub_268F990F4();
          MEMORY[0x277D82BD8](v29);
          swift_willThrow();
          v27 = v30;
          v28 = sub_268F9A9C4();
          (*(*(v28 - 8) + 56))(a2, 1);
        }

        MEMORY[0x277D82BD8](v36);
        sub_268D35038(v71);
        *&result = MEMORY[0x277D82BD8](v67).n128_u64[0];
      }

      else
      {
        v26 = sub_268F9A9C4();
        (*(*(v26 - 8) + 56))(a2, 1);
        sub_268D35038(v71);
        *&result = MEMORY[0x277D82BD8](v67).n128_u64[0];
      }

      break;
    default:
      v21 = sub_268F9A9C4();
      (*(*(v21 - 8) + 56))(a2, 1);
      *&result = MEMORY[0x277D82BD8](v67).n128_u64[0];
      break;
  }

  return result;
}

double sub_268E0D11C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = a1;
  v17 = [a1 dictionary];
  if (v17)
  {
    v19 = v17;
    v21 = 0;
    v13 = objc_opt_self();
    MEMORY[0x277D82BE0](v17);
    v18 = 0;
    v15 = [v13 dataWithPropertyList:v17 format:200 options:0 error:&v18];
    v14 = v18;
    MEMORY[0x277D82BE0](v18);
    v2 = v21;
    v21 = v14;
    MEMORY[0x277D82BD8](v2);
    swift_unknownObjectRelease();
    if (v15)
    {
      v11 = sub_268F99184();
      v12 = v3;
      sub_268E0AE14();
      sub_268F99174();
      sub_268D55C74(v11, v12);
      MEMORY[0x277D82BD8](v15);

      sub_268F9A9A4();
      v4 = sub_268F9A9C4();
      (*(*(v4 - 8) + 56))(a2, 0, 1);
    }

    else
    {
      v9 = v21;
      v10 = sub_268F990F4();
      MEMORY[0x277D82BD8](v9);
      swift_willThrow();
      v7 = v10;
      v8 = sub_268F9A9C4();
      (*(*(v8 - 8) + 56))(a2, 1);
    }

    *&result = MEMORY[0x277D82BD8](v17).n128_u64[0];
  }

  else
  {
    v6 = sub_268F9A9C4();
    (*(*(v6 - 8) + 56))(a2, 1);
  }

  return result;
}

id sub_268E0D438(char *a1, char a2)
{
  sub_268E7C63C();
  if (v2)
  {
    sub_268E10C98();
    v13 = sub_268CF0C44();
    MEMORY[0x277D82BE0](v13);
    [v13 setDryRun_];
    MEMORY[0x277D82BD8](v13);

    v14 = sub_268F9AE14();

    [v13 setSettingKey_];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BE0](v13);
    if (a2 == 2)
    {
      [v13 setToggle_];
    }

    else
    {
      [v13 setValue_];
    }

    MEMORY[0x277D82BD8](v13);

    return v13;
  }

  else
  {
    v10 = sub_268F9B284();
    v3 = sub_268DC9D70();
    v11 = *v3;
    MEMORY[0x277D82BE0](*v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v9 = v4;
    v7 = sub_268F9AE64();
    v8 = v5;
    v9[3] = MEMORY[0x277D837D0];
    v9[4] = sub_268CDD224();
    *v9 = v7;
    v9[1] = v8;
    sub_268CD0F7C();
    sub_268F9AC14(v10, &dword_268CBE000, v11, "failed to to generate a SASettingSetBool for BinarySettingIdentifier: %@.", 73, 2);

    MEMORY[0x277D82BD8](v11);
    return 0;
  }
}

id sub_268E0D738(char *a1)
{
  sub_268E7C63C();
  if (v1)
  {
    sub_268E10CFC();
    v13 = sub_268CF0C44();

    v11 = sub_268F9AE14();

    [v13 setSettingKey_];
    MEMORY[0x277D82BD8](v11);

    return v13;
  }

  else
  {
    v9 = sub_268F9B284();
    v2 = sub_268DC9D70();
    v10 = *v2;
    MEMORY[0x277D82BE0](*v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v8 = v3;
    v6 = sub_268F9AE64();
    v7 = v4;
    v8[3] = MEMORY[0x277D837D0];
    v8[4] = sub_268CDD224();
    *v8 = v6;
    v8[1] = v7;
    sub_268CD0F7C();
    sub_268F9AC14(v9, &dword_268CBE000, v10, "failed to to generate a SASettingGetBool BinarySettingIdentifier: %@.", 69, 2);

    MEMORY[0x277D82BD8](v10);
    return 0;
  }
}

uint64_t sub_268E0D94C(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    [a1 doubleValue];
    MEMORY[0x277D82BD8](a1);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    MEMORY[0x277D82BD8](a1);
    return 0;
  }

  else
  {
    sub_268F9A864();
    sub_268F9A854();

    v2 = sub_268F9A844();

    MEMORY[0x277D82BD8](a1);

    return v2;
  }
}

uint64_t SettingsNumericSetting.__allocating_init(settingId:value:)(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = a1;
  v17 = a2;
  v24 = a3;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v26 = 0;
  v18 = 0;
  v14 = *(*(sub_268F9A9C4() - 8) + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v17, v24, v3);
  v22 = &v12 - v13;
  v15 = v13;
  MEMORY[0x28223BE20](v4, v5, v6, &v12 - v13);
  v20 = &v12 - v15;
  v28 = v7;
  v29 = v8;
  v27 = v9;
  v16 = type metadata accessor for SettingsNumericSetting.Builder(v10);

  sub_268F9A9A4();
  sub_268F9A874();
  MEMORY[0x277D82BE0](v24);
  v21 = sub_268E0A9B8(v24);
  sub_268F9A9A4();
  v23 = sub_268F81EE8(v20, v21, v22);
  v26 = v23;

  v25 = sub_268F824F0(v23);

  v30 = v25;

  MEMORY[0x277D82BD8](v24);

  return v25;
}

SiriSettingsIntents::ReadBatteryDeviceCategory_optional __swiftcall ReadBatteryDeviceCategory.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_268F9B734();
  *v2 = "airpods";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "headphone";
  *(v2 + 32) = 9;
  *(v2 + 40) = 2;
  *(v2 + 48) = "device";
  *(v2 + 56) = 6;
  *(v2 + 64) = 2;
  *(v2 + 72) = "watch";
  *(v2 + 80) = 5;
  *(v2 + 88) = 2;
  sub_268CD0F7C();
  v5 = sub_268F9B5C4();

  if (v5)
  {
    switch(v5)
    {
      case 1:
        v6 = 1;
        break;
      case 2:
        v6 = 2;
        break;
      case 3:
        v6 = 3;
        break;
      default:

        *v4 = 4;
        return result;
    }
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

uint64_t sub_268E0E070@<X0>(uint64_t *a1@<X8>)
{
  result = ReadBatteryDeviceCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t ViewData.text1.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v10[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5.n128_f64[0] = MEMORY[0x28223BE20](v12, v2, v3, v4);
  v11 = v10 - v10[0];
  v14 = v6;
  v13 = v1;
  sub_268E101BC(v6, v10 - v10[0], v5);
  sub_268E0FF94(v11, v10[1], v7);
  return sub_268E10518(v12, v8);
}

uint64_t ViewData.action.setter(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  v13 = v5;
  v12 = v1;
  sub_268E10DDC(v5, &v8 - v9);
  v6 = type metadata accessor for ViewData(0);
  sub_268E10F04(v10, (v1 + *(v6 + 20)));
  return sub_268E1112C(v11);
}

uint64_t ViewData.numericSettingId.getter(double a1)
{
  v3 = *(v1 + *(type metadata accessor for ViewData(0) + 24));

  return v3;
}

uint64_t ViewData.sliderModel.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = *(type metadata accessor for ViewData(0) + 32);
  v3 = sub_268F99414();
  return (*(*(v3 - 8) + 16))(a1, v2 + v5);
}

uint64_t sub_268E0E440(uint64_t a1, uint64_t a2)
{
  v21[2] = a1;
  v21[3] = a2;

  v21[0] = sub_268F9AEF4();
  v21[1] = v2;
  v20[2] = a1;
  v20[3] = a2;
  v16 = MEMORY[0x26D62DB50](v21[0], v2, a1, a2);
  sub_268CD9D30(v21);
  if (v16)
  {

    v22 = 0;
    v13 = 0;
LABEL_12:

    return v13;
  }

  v20[0] = sub_268F9AEF4();
  v20[1] = v3;
  v19[2] = a1;
  v19[3] = a2;
  v12 = MEMORY[0x26D62DB50](v20[0], v3, a1, a2);
  sub_268CD9D30(v20);
  if (v12)
  {

    v22 = 1;
    v13 = 1;
    goto LABEL_12;
  }

  v19[0] = sub_268F9AEF4();
  v19[1] = v4;
  v18[2] = a1;
  v18[3] = a2;
  v11 = MEMORY[0x26D62DB50](v19[0], v4, a1, a2);
  sub_268CD9D30(v19);
  if (v11)
  {

    v22 = 2;
    v13 = 2;
    goto LABEL_12;
  }

  v18[0] = sub_268F9AEF4();
  v18[1] = v5;
  v17[2] = a1;
  v17[3] = a2;
  v10 = MEMORY[0x26D62DB50](v18[0], v5, a1, a2);
  sub_268CD9D30(v18);
  if (v10)
  {

    v22 = 3;
    v13 = 3;
    goto LABEL_12;
  }

  v17[0] = sub_268F9AEF4();
  v17[1] = v6;
  v9 = MEMORY[0x26D62DB50](v17[0], v6, a1, a2);
  sub_268CD9D30(v17);
  if (v9)
  {

    v22 = 4;
    v13 = 4;
    goto LABEL_12;
  }

  return 5;
}

uint64_t sub_268E0E9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268E0E440(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268E0E9FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268E0E7B4();
  *a1 = result;
  return result;
}

uint64_t ViewData.encode(to:)(uint64_t a1)
{
  v55 = a1;
  v75 = 0;
  v74 = 0;
  v63 = 0;
  v47 = sub_268F99414();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47, v2, v3, v4);
  v51 = v27 - v50;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
  v52 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v53 = v27 - v52;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
  v54 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v10, v11, v12);
  v68 = v27 - v54;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCFF8, &qword_268FA2B60);
  v56 = *(v65 - 8);
  v57 = v65 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55, v13, v14, v15);
  v61 = v27 - v58;
  v75 = v16;
  v74 = v1;
  v59 = v16[3];
  v60 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v59);
  sub_268E11250();
  sub_268F9B844();
  sub_268E101BC(v62, v68, v17);
  v64 = &v73;
  v73 = 0;
  v66 = sub_268F993B4();
  sub_268E112CC(v18);
  v19 = v67;
  sub_268F9B694();
  v69 = v19;
  v70 = v19;
  if (v19)
  {
    v30 = v70;
    sub_268E10518(v68, v20);
    result = (*(v56 + 8))(v61, v65);
    v31 = v30;
  }

  else
  {
    sub_268E10518(v68, v20);
    v42 = 0;
    v41 = type metadata accessor for ViewData(0);
    sub_268E10DDC(&v62[v41[5]], v53);
    v43 = &v72;
    v72 = 1;
    v44 = sub_268F993D4();
    sub_268E1134C();
    v21 = v69;
    sub_268F9B694();
    v45 = v21;
    v46 = v21;
    if (v21)
    {
      v29 = v46;
      sub_268E1112C(v53);
      result = (*(v56 + 8))(v61, v65);
      v31 = v29;
    }

    else
    {
      sub_268E1112C(v53);
      v22 = v45;
      v23 = &v62[v41[6]];
      v37 = *v23;
      v38 = *(v23 + 1);

      v71[2] = 2;
      sub_268F9B6A4();
      v39 = v22;
      v40 = v22;
      if (v22)
      {
        v28 = v40;

        result = (*(v56 + 8))(v61, v65);
        v31 = v28;
      }

      else
      {

        v24 = v39;
        v71[1] = 3;
        sub_268F9B6D4();
        v35 = v24;
        v36 = v24;
        if (v24)
        {
          v27[1] = v36;
          return (*(v56 + 8))(v61, v65);
        }

        else
        {
          (*(v48 + 16))(v51, &v62[v41[8]], v47);
          v32 = v71;
          v71[0] = 4;
          sub_268E113CC();
          v25 = v35;
          sub_268F9B6E4();
          v33 = v25;
          v34 = v25;
          if (v25)
          {
            v27[0] = v34;
          }

          (*(v48 + 8))(v51, v47);
          return (*(v56 + 8))(v61, v65);
        }
      }
    }
  }

  return result;
}

void ViewData.init(from:)(void *a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v83 = a1;
  v93 = 0;
  v78 = 0;
  v62 = sub_268F99414();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62, v2, v3, v4);
  v66 = &v37 - v65;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
  v67 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v68 = &v37 - v67;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
  v69 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v10, v11, v12);
  v70 = &v37 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD018, &qword_268FA2B68);
  v72 = *(v71 - 8);
  v73 = v71 - 8;
  v74 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78, v13, v14, v15);
  v84 = &v37 - v74;
  v77 = type metadata accessor for ViewData(v16);
  v75 = (*(*(v77 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78, v17, v18, v19);
  v79 = &v37 - v75;
  v93 = v20;
  v76 = sub_268F993B4();
  v21 = *(*(v76 - 8) + 56);
  v81 = 1;
  v21(v79, 1);
  v80 = v77[5];
  v82 = sub_268F993D4();
  (*(*(v82 - 8) + 56))(&v79[v80], v81);
  v86 = v83[3];
  v87 = v83[4];
  __swift_project_boxed_opaque_existential_1(v83, v86);
  sub_268E11250();
  v22 = v85;
  sub_268F9B834();
  v88 = v22;
  v89 = v22;
  if (v22)
  {
    v43 = v89;
    v44 = 3;
  }

  else
  {
    v58 = &v92;
    v92 = 0;
    sub_268E1144C(v23);
    v24 = v88;
    sub_268F9B604();
    v59 = v24;
    v60 = v24;
    if (v24)
    {
      v42 = v60;
      (*(v72 + 8))(v84, v71);
      v43 = v42;
      v44 = 3;
    }

    else
    {
      sub_268E0FF94(v70, v79, v25);
      v55 = &v91;
      v91 = 1;
      sub_268E114CC();
      v26 = v59;
      sub_268F9B604();
      v56 = v26;
      v57 = v26;
      if (v26)
      {
        v41 = v57;
        (*(v72 + 8))(v84, v71);
        v43 = v41;
        v44 = 3;
      }

      else
      {
        sub_268E10F04(v68, &v79[v77[5]]);
        v27 = v56;
        v90[2] = 2;
        v28 = sub_268F9B614();
        v51 = v27;
        v52 = v28;
        v53 = v29;
        v54 = v27;
        if (v27)
        {
          v40 = v54;
          (*(v72 + 8))(v84, v71);
          v43 = v40;
          v44 = 3;
        }

        else
        {
          v30 = v53;
          v31 = &v79[v77[6]];
          *v31 = v52;
          *(v31 + 1) = v30;
          v90[1] = 3;
          v32 = sub_268F9B644();
          v48 = 0;
          v49 = v32;
          v50 = 0;
          *&v79[v77[7]] = v32;
          v45 = v90;
          v90[0] = 4;
          sub_268E1154C();
          v33 = v48;
          sub_268F9B654();
          v46 = v33;
          v47 = v33;
          if (!v33)
          {
            (*(v63 + 32))(&v79[v77[8]], v66, v62);
            v34.n128_f64[0] = (*(v72 + 8))(v84, v71);
            sub_268E115CC(v79, v61, v34);
            __swift_destroy_boxed_opaque_existential_0(v83);
            sub_268E10364(v79, v35);
            return;
          }

          v39 = v47;
          (*(v72 + 8))(v84, v71);
          v43 = v39;
          v44 = 7;
        }
      }
    }
  }

  v38 = v44;
  v37 = v43;
  __swift_destroy_boxed_opaque_existential_0(v83);
  sub_268E10518(v79, v36);
  sub_268E1112C(&v79[v77[5]]);
  if ((v38 & 4) != 0)
  {
    sub_268CD9D30(&v79[v77[6]]);
  }
}

unint64_t sub_268E0FA80()
{
  v2 = qword_2802DE400;
  if (!qword_2802DE400)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DE400);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E0FAE4()
{
  v2 = qword_2802DCF18;
  if (!qword_2802DCF18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF18);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E0FB48()
{
  v2 = qword_2802DCF20;
  if (!qword_2802DCF20)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF20);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E0FBAC()
{
  v2 = qword_2802DCF30;
  if (!qword_2802DCF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DCF28, &qword_268FA2B10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCF30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E0FC34()
{
  v2 = qword_280FE2838;
  if (!qword_280FE2838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DCF38, &unk_268FA2B18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2838);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E0FCBC()
{
  v2 = qword_280FE2878;
  if (!qword_280FE2878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2802DC8F0, qword_268F9F830);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2878);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ViewData(uint64_t a1)
{
  v2 = qword_2802DD040;
  if (!qword_2802DD040)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_268E0FDC4(const void *a1, void *a2)
{
  v6 = sub_268F99384();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF60, &qword_268FA2B48);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268E0FEEC(uint64_t a1)
{
  v3 = sub_268F99384();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_268E0FF94(const void *a1, void *a2, __n128 a3)
{
  v8 = sub_268F993B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if ((v10)(a2, 1))
  {
    if (v10(a1, 1, v8))
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(a2, a1, v8);
      (*(v9 + 56))(a2, 0, 1, v8);
    }
  }

  else if (v10(a1, 1, v8))
  {
    (*(v9 + 8))(a2, v8);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v9 + 40))(a2, a1, v8);
  }

  return a2;
}

void *sub_268E101BC(const void *a1, void *a2, __n128 a3)
{
  v7 = sub_268F993B4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a2, a1, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

unint64_t sub_268E102E4()
{
  v2 = qword_2802DCF68;
  if (!qword_2802DCF68)
  {
    type metadata accessor for ViewData(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCF68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E10364(uint64_t a1, __n128 a2)
{
  v10 = sub_268F993B4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(a1, 1))
  {
    (*(v11 + 8))(a1, v10);
  }

  v5 = type metadata accessor for ViewData(0);
  v6 = a1 + *(v5 + 20);
  v7 = sub_268F993D4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1))
  {
    (*(v8 + 8))(v6, v7);
  }

  v4 = a1 + *(v5 + 32);
  v2 = sub_268F99414();
  (*(*(v2 - 8) + 8))(v4);
  return a1;
}

uint64_t sub_268E10518(uint64_t a1, __n128 a2)
{
  v4 = sub_268F993B4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  return a1;
}

void *sub_268E105C0(const void *a1, void *a2)
{
  v7 = sub_268F99384();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF60, &qword_268FA2B48);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF60, &qword_268FA2B48);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t sub_268E107E8()
{
  v2 = qword_2802DCF70;
  if (!qword_2802DCF70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF70);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E1084C()
{
  v2 = qword_2802DCF78;
  if (!qword_2802DCF78)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF78);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E108B0()
{
  v2 = qword_2802DCF80;
  if (!qword_2802DCF80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF80);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10914()
{
  v2 = qword_2802DCF88;
  if (!qword_2802DCF88)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF88);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10978()
{
  v2 = qword_2802DCF90;
  if (!qword_2802DCF90)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF90);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E109DC()
{
  v2 = qword_2802DCF98;
  if (!qword_2802DCF98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCF98);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10A40()
{
  v2 = qword_2802DCFA0;
  if (!qword_2802DCFA0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFA0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10AA4()
{
  v2 = qword_2802DCFA8;
  if (!qword_2802DCFA8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFA8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10B08()
{
  v2 = qword_2802DCFB0;
  if (!qword_2802DCFB0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFB0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10B6C()
{
  v2 = qword_2802DCFB8;
  if (!qword_2802DCFB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFB8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10BD0()
{
  v2 = qword_2802DCFC0;
  if (!qword_2802DCFC0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFC0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10C34()
{
  v2 = qword_2802DCFC8;
  if (!qword_2802DCFC8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFC8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10C98()
{
  v2 = qword_2802DCFD0;
  if (!qword_2802DCFD0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFD0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10CFC()
{
  v2 = qword_2802DCFD8;
  if (!qword_2802DCFD8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCFD8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E10D60()
{
  v2 = qword_2802DCFE0;
  if (!qword_2802DCFE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCFE0);
    return WitnessTable;
  }

  return v2;
}

void *sub_268E10DDC(const void *a1, void *a2)
{
  v6 = sub_268F993D4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_268E10F04(const void *a1, void *a2)
{
  v7 = sub_268F993D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_268E1112C(uint64_t a1)
{
  v3 = sub_268F993D4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_268E111D4()
{
  v2 = qword_2802DCFE8;
  if (!qword_2802DCFE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCFE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E11250()
{
  v2 = qword_2802DCFF0;
  if (!qword_2802DCFF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCFF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E112CC(__n128 a1)
{
  v3 = qword_2802DD000;
  if (!qword_2802DD000)
  {
    sub_268F993B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD000);
    return WitnessTable;
  }

  return v3;
}

unint64_t sub_268E1134C()
{
  v2 = qword_2802DD008;
  if (!qword_2802DD008)
  {
    sub_268F993D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E113CC()
{
  v2 = qword_2802DD010;
  if (!qword_2802DD010)
  {
    sub_268F99414();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E1144C(__n128 a1)
{
  v3 = qword_2802DD020;
  if (!qword_2802DD020)
  {
    sub_268F993B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD020);
    return WitnessTable;
  }

  return v3;
}

unint64_t sub_268E114CC()
{
  v2 = qword_2802DD028;
  if (!qword_2802DD028)
  {
    sub_268F993D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD028);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E1154C()
{
  v2 = qword_2802DD030;
  if (!qword_2802DD030)
  {
    sub_268F99414();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD030);
    return WitnessTable;
  }

  return v2;
}

char *sub_268E115CC(char *a1, char *a2, __n128 a3)
{
  v19 = sub_268F993B4();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v20 + 16))(a2, a1, v19);
    (*(v20 + 56))(a2, 0, 1, v19);
  }

  v12 = type metadata accessor for ViewData(0);
  __dst = &a2[v12[5]];
  __src = &a1[v12[5]];
  v15 = sub_268F993D4();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(__src, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))(__dst, __src, v15);
    (*(v16 + 56))(__dst, 0, 1, v15);
  }

  v8 = &a2[v12[6]];
  v5 = &a1[v12[6]];
  *v8 = *v5;
  v9 = *(v5 + 1);

  *(v8 + 1) = v9;
  *&a2[v12[7]] = *&a1[v12[7]];
  v11 = &a2[v12[8]];
  v10 = &a1[v12[8]];
  v6 = sub_268F99414();
  (*(*(v6 - 8) + 16))(v11, v10);
  return a2;
}

unint64_t sub_268E118F0()
{
  v2 = qword_2802DD038;
  if (!qword_2802DD038)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD038);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E119E4(uint64_t a1, __n128 a2)
{
  v6 = sub_268E11B08(319, a2);
  if (v2 <= 0x3F)
  {
    v6 = sub_268E11BA4(319);
    if (v3 <= 0x3F)
    {
      v6 = sub_268F99414();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v6;
}

unint64_t sub_268E11B08(uint64_t a1, __n128 a2)
{
  v6 = qword_2802DD050;
  if (!qword_2802DD050)
  {
    sub_268F993B4();
    v5 = sub_268F9B3B4();
    v6 = v5;
    if (!v2)
    {
      v3 = v5;
      atomic_store(v5, &qword_2802DD050);
      return v3;
    }
  }

  return v6;
}

unint64_t sub_268E11BA4(uint64_t a1)
{
  v5 = qword_2802DD058;
  if (!qword_2802DD058)
  {
    sub_268F993D4();
    v4 = sub_268F9B3B4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2802DD058);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_268E11C6C()
{
  v2 = qword_2802DD060;
  if (!qword_2802DD060)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD060);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E11D00()
{
  v2 = qword_2802DD068;
  if (!qword_2802DD068)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD068);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E11D94()
{
  v2 = qword_2802DD070;
  if (!qword_2802DD070)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD070);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E11E10()
{
  v2 = qword_2802DD078;
  if (!qword_2802DD078)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DD078);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_268E11E74(const void *a1, void *a2, __n128 a3)
{
  v7 = sub_268F993B4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a2, a1, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

void *sub_268E11F9C(const void *a1, void *a2)
{
  v6 = sub_268F993D4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268E120C4(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for Base64EncodingOptions(0);
    v1 = sub_268F9B044();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t *sub_268E12170()
{
  if (qword_280FE4918 != -1)
  {
    swift_once();
  }

  return &qword_280FE8178;
}

uint64_t sub_268E121D0()
{
  type metadata accessor for GetAXMotionCuesHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8178 = result;
  return result;
}

uint64_t sub_268E12238()
{
  v1 = *sub_268E12170();

  return v1;
}

double sub_268E12268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXMotionCuesHandler handling intent", 38, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBB044();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v19 = a1;
  v20 = v3;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268E126EC, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268E12484(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v16 = [a1 settingMetadata];

  v17 = sub_268D3EDF4();

  if (v17)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v13 = sub_268E41A08(v16, 0, 0, v14, 0, 0);
  MEMORY[0x277D82BD8](v16);
  v11 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v5;
  MEMORY[0x277D82BE0](v13);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v8 = sub_268F9AE74();
  v9 = v6;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14(v11, &dword_268CBE000, v12, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v12);

  a3(v13);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

uint64_t *sub_268E12744()
{
  if (qword_280FE3F30 != -1)
  {
    swift_once();
  }

  return &qword_280FE8110;
}

uint64_t sub_268E128A8()
{
  type metadata accessor for UsageCountConfigProvider();
  result = sub_268E12904();
  qword_280FE8110 = result;
  return result;
}

uint64_t sub_268E12940()
{
  v1 = *sub_268E12744();

  return v1;
}

uint64_t sub_268E12A04(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "HeySiriSetBinaryUsageCount";
  *(v2 + 8) = 26;
  *(v2 + 16) = 2;
  *(v2 + 24) = "LocationServicesSetBinaryUsageCount";
  *(v2 + 32) = 35;
  *(v2 + 40) = 2;
  *(v2 + 48) = "NightShiftSetBinaryUsageCount";
  *(v2 + 56) = 29;
  *(v2 + 64) = 2;
  *(v2 + 72) = "";
  *(v2 + 80) = 0;
  *(v2 + 88) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_10:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_10;
    case 2:
      v5 = 2;
      goto LABEL_10;
    case 3:
      v5 = 3;
      goto LABEL_10;
  }

  return 4;
}

unint64_t sub_268E12C14()
{
  v2 = qword_2802DD080;
  if (!qword_2802DD080)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD080);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E12D60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E12A04(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E12D98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E127A4(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268E12DCC()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_268E12DF8(char *a1)
{

  sub_268E12E98();
  sub_268F9ADC4();

  return v2;
}

unint64_t sub_268E12E98()
{
  v2 = qword_280FE4540;
  if (!qword_280FE4540)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE4540);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E12F2C()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_268E12F70()
{
  sub_268CD7930((v0 + 16));
  sub_268CD9D30(v0 + 32);
  return v2;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_268E13004(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFC && *(a1 + 10))
    {
      v4 = *a1 + 252;
    }

    else
    {
      v2 = *(a1 + 9) - 4;
      if (v2 < 0)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_268E13124(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 10);
  if (a2 > 0xFC)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 253;
    if (a3 >= 0xFD)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_268E13314()
{
  v2 = qword_2802DD088;
  if (!qword_2802DD088)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD088);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E13390()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD090, &unk_268FA3040);
  sub_268F9B734();
  v14 = v1;
  *v1 = 29;
  sub_268E129A8();
  *(v14 + 1) = v2;
  v14[16] = v3 & 1;
  v14[17] = v4;
  v14[24] = 31;
  sub_268E129A8();
  *(v14 + 4) = v5;
  v14[40] = v6 & 1;
  v14[41] = v7;
  v14[48] = 26;
  sub_268E129A8();
  *(v14 + 7) = v8;
  v14[64] = v9 & 1;
  v14[65] = v10;
  sub_268CD0F7C();
  sub_268E12E98();
  *(v0 + 16) = sub_268F9ADA4();
  *(v0 + 24) = 3;
  v11 = sub_268F9AEF4();
  result = v15;
  *(v15 + 32) = v11;
  *(v15 + 40) = v13;
  return result;
}

uint64_t *sub_268E13548()
{
  if (qword_280FE3D88 != -1)
  {
    swift_once();
  }

  return &qword_280FE80F8;
}

uint64_t sub_268E135A8()
{
  type metadata accessor for GetNoiseManagementHandler();
  v2 = sub_268CDC590();
  v0 = sub_268CDD6D4();
  result = sub_268CDC5C0(v2, v0 & 1);
  qword_280FE80F8 = result;
  return result;
}

uint64_t sub_268E13624()
{
  v1 = *sub_268E13548();

  return v1;
}

uint64_t sub_268E13654(void *a1, void (*a2)(void, __n128), uint64_t a3)
{
  v5 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v6 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v5, &dword_268CBE000, v6, "GetNoiseManagementHandler handling intent, shortcutting out.", 60, 2);

  MEMORY[0x277D82BD8](v6);
  return sub_268E13744(a1, a2, a3);
}

uint64_t sub_268E13744(void *a1, void (*a2)(void, __n128), uint64_t a3)
{
  v137 = a3;
  v138 = a2;
  v139 = a1;
  v163 = 0;
  v140 = 0;
  v166 = a1;
  v164 = a2;
  v165 = a3;
  v141 = [a1 settingMetadata];
  if (v141)
  {
    v135 = v141;
    v128 = v141;
    v130 = [v141 settingId];
    v3 = sub_268F9AE24();
    v129 = v4;
    v131 = v3;

    v132 = v129;
    v133 = v131;
    v134 = v129;
  }

  else
  {
    v133 = 0;
    v134 = 0;
  }

  v124 = v134;
  v123 = v133;

  v162 = 32;
  v122 = BinarySettingIdentifier.rawValue.getter();
  v125 = v5;
  v121 = v5;

  v161[0] = v133;
  v161[1] = v134;
  v126 = &v158;
  v127 = v160;
  v158 = v122;
  v159 = v125;
  sub_268D28874(v161, v160);
  if (v159)
  {
    sub_268D28874(v126, v143);
    if (v127[1])
    {
      v142 = *v127;
      v119 = MEMORY[0x26D62DB50](v143[0], v143[1], v142, *(&v142 + 1));
      sub_268CD9D30(&v142);
      sub_268CD9D30(v143);
      sub_268CD9D30(v126);
      v120 = v119;
      goto LABEL_9;
    }

    sub_268CD9D30(v143);
    goto LABEL_11;
  }

  if (v127[1])
  {
LABEL_11:
    sub_268D28550(&v158);
    v120 = 0;
    goto LABEL_9;
  }

  sub_268CD9D30(v126);
  v120 = 1;
LABEL_9:
  v118 = v120;

  if (v120)
  {
    v6 = v140;

    v7 = sub_268DBC094();
    v111 = *v7;
    v112 = v7[1];
    v113 = *(v7 + 16);
    v114 = *sub_268DC7AE8();
    v110 = v114;
    v8 = v114;
    v115 = *(v136 + 24);

    v9 = v139;

    v116 = &v60;
    MEMORY[0x28223BE20](v111, v112, v113, v114);
    v56 = v10;
    v57 = v139;
    v58 = v138;
    v59 = v11;
    sub_268DB944C(v12, v13, v14, v15, v16, sub_268E143F0, v55, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v117 = v6;

    return 0;
  }

  v157 = 5;
  v105 = BinarySettingIdentifier.rawValue.getter();
  v106 = v17;
  v104 = v17;

  v156[0] = v123;
  v156[1] = v124;
  v107 = &v153;
  v108 = v155;
  v153 = v105;
  v154 = v106;
  sub_268D28874(v156, v155);
  if (v154)
  {
    sub_268D28874(v107, v145);
    if (v108[1])
    {
      v144 = *v108;
      v102 = MEMORY[0x26D62DB50](v145[0], v145[1], v144, *(&v144 + 1));
      sub_268CD9D30(&v144);
      sub_268CD9D30(v145);
      sub_268CD9D30(v107);
      v103 = v102;
      goto LABEL_20;
    }

    sub_268CD9D30(v145);
    goto LABEL_22;
  }

  if (v108[1])
  {
LABEL_22:
    sub_268D28550(&v153);
    v103 = 0;
    goto LABEL_20;
  }

  sub_268CD9D30(v107);
  v103 = 1;
LABEL_20:
  v101 = v103;

  if (v103)
  {
    v18 = v140;

    v19 = sub_268DBC2A4();
    v94 = *v19;
    v95 = v19[1];
    v96 = *(v19 + 16);
    v97 = *sub_268DC7AE8();
    v93 = v97;
    v20 = v97;
    v98 = *(v136 + 24);

    v21 = v139;

    v99 = &v60;
    MEMORY[0x28223BE20](v94, v95, v96, v97);
    v56 = v22;
    v57 = v139;
    v58 = v138;
    v59 = v23;
    sub_268DB944C(v24, v25, v26, v27, v28, sub_268E143BC, v55, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v100 = v18;

    return 0;
  }

  v152 = 6;
  v89 = BinarySettingIdentifier.rawValue.getter();
  v90 = v29;
  v88 = v29;

  v151[0] = v123;
  v151[1] = v124;
  v91 = &v148;
  v92 = v150;
  v148 = v89;
  v149 = v90;
  sub_268D28874(v151, v150);
  if (v149)
  {
    sub_268D28874(v91, v147);
    if (v92[1])
    {
      v146 = *v92;
      v86 = MEMORY[0x26D62DB50](v147[0], v147[1], v146, *(&v146 + 1));
      sub_268CD9D30(&v146);
      sub_268CD9D30(v147);
      sub_268CD9D30(v91);
      v87 = v86;
      goto LABEL_31;
    }

    sub_268CD9D30(v147);
    goto LABEL_33;
  }

  if (v92[1])
  {
LABEL_33:
    sub_268D28550(&v148);
    v87 = 0;
    goto LABEL_31;
  }

  sub_268CD9D30(v91);
  v87 = 1;
LABEL_31:
  v85 = v87;

  if (v87)
  {
    v30 = v140;

    v31 = sub_268DBC374();
    v78 = *v31;
    v79 = v31[1];
    v80 = *(v31 + 16);
    v81 = *sub_268DC7AE8();
    v77 = v81;
    v32 = v81;
    v82 = *(v136 + 24);

    v33 = v139;

    v83 = &v60;
    MEMORY[0x28223BE20](v78, v79, v80, v81);
    v56 = v34;
    v57 = v139;
    v58 = v138;
    v59 = v35;
    sub_268DB944C(v36, v37, v38, v39, v40, sub_268E14388, v55, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v84 = v30;

    return v84;
  }

  else
  {

    v71 = sub_268F9B284();
    v72 = *sub_268DC7AE8();
    v41 = v72;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v74 = sub_268F9B734();
    v75 = v42;
    v43 = [v139 settingMetadata];
    v76 = v43;
    if (v43)
    {
      v67 = [v76 settingId];
      v44 = sub_268F9AE24();
      v66 = v45;
      v68 = v44;

      v69 = v68;
      v70 = v66;
    }

    else
    {
      v69 = 0;
      v70 = 0;
    }

    v147[3] = v69;
    v147[4] = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
    v61 = sub_268F9AE64();
    v62 = v46;
    v75[3] = MEMORY[0x277D837D0];
    v47 = sub_268CDD224();
    v48 = v61;
    v49 = v75;
    v50 = v62;
    v75[4] = v47;
    *v49 = v48;
    v49[1] = v50;
    sub_268CD0F7C();
    v63 = v51;
    sub_268F9AC14(v71, &dword_268CBE000, v72, "GetNoiseManagementHandler cannot handle unsupported setting: %@", 63, 2);

    v52 = sub_268E948B8(17);
    v64 = v53;
    v65 = sub_268E41B70(v52, v53);

    v138(v65);

    return v140;
  }
}

uint64_t sub_268E14424(void *a1, void (*a2)(void), uint64_t a3)
{
  v16 = [a1 settingMetadata];
  if (v16 && (v12 = [v16 targetDevice], *&v3 = MEMORY[0x277D82BD8](v16).n128_u64[0], v12))
  {
    [v12 deviceCategory];
    MEMORY[0x277D82BD8](v12);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v10 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory(0);
    sub_268CD7818();
    v10 = sub_268F9AE04();
  }

  if (v10)
  {
    v7 = sub_268F9B294();
    v4 = sub_268DC7AE8();
    v8 = *v4;
    MEMORY[0x277D82BE0](*v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v7, &dword_268CBE000, v8, "SetNoiseManagementHandler invoked on unsupported device.", 56, 2);

    MEMORY[0x277D82BD8](v8);

    sub_268CDD0DC();
    v9 = sub_268CD42AC(6, 0);
    a2();
    MEMORY[0x277D82BD8](v9);
  }

  else
  {

    MEMORY[0x277D82BE0](a1);
    v6 = swift_allocObject();
    v6[2] = a2;
    v6[3] = a3;
    v6[4] = a1;
    sub_268D50278(sub_268E149E4, v6);
  }
}

uint64_t sub_268E147CC(uint64_t a1, void (*a2)(id, __n128), uint64_t a3, void *a4)
{
  v14 = a1;
  if (a1 == 2)
  {
    v8 = sub_268F9B294();
    v7 = sub_268DC7AE8();
    v9 = *v7;
    MEMORY[0x277D82BE0](*v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v8, &dword_268CBE000, v9, "SetNoiseManagementHandler failed to read noise cancellation.", 60, 2);

    MEMORY[0x277D82BD8](v9);

    v10 = sub_268E419BC(6);
    (a2)();
    MEMORY[0x277D82BD8](v10);
  }

  else
  {

    v13 = [a4 settingMetadata];
    if (v14)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    v4 = sub_268D4AA1C();
    v11 = sub_268E41A08(v13, 0, v4, v12, 0, 0);
    v5 = MEMORY[0x277D82BD8](v13);
    a2(v11, v5);
    MEMORY[0x277D82BD8](v11);
  }
}

uint64_t sub_268E149F4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  MEMORY[0x277D82BE0](a1);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  sub_268D50818(sub_268E14CF4, v7);
}

uint64_t sub_268E14ADC(uint64_t a1, void (*a2)(id, __n128), uint64_t a3, void *a4)
{
  v14 = a1;
  if (a1 == 2)
  {
    v8 = sub_268F9B294();
    v7 = sub_268DC7AE8();
    v9 = *v7;
    MEMORY[0x277D82BE0](*v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v8, &dword_268CBE000, v9, "SetNoiseManagementHandler failed to read audio transparency", 59, 2);

    MEMORY[0x277D82BD8](v9);

    v10 = sub_268E419BC(6);
    (a2)();
    MEMORY[0x277D82BD8](v10);
  }

  else
  {

    v13 = [a4 settingMetadata];
    if (v14)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    v4 = sub_268D4AA1C();
    v11 = sub_268E41A08(v13, 0, v4, v12, 0, 0);
    v5 = MEMORY[0x277D82BD8](v13);
    a2(v11, v5);
    MEMORY[0x277D82BD8](v11);
  }
}

uint64_t sub_268E14D04(uint64_t a1, uint64_t a2, uint64_t a3)
{

  MEMORY[0x277D82BE0](a1);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  sub_268D50C3C(sub_268E15004, v7);
}

uint64_t sub_268E14DEC(uint64_t a1, void (*a2)(id, __n128), uint64_t a3, void *a4)
{
  v14 = a1;
  if (a1 == 2)
  {
    v8 = sub_268F9B294();
    v7 = sub_268DC7AE8();
    v9 = *v7;
    MEMORY[0x277D82BE0](*v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v8, &dword_268CBE000, v9, "SetNoiseManagementHandler failed to read auto ANC", 49, 2);

    MEMORY[0x277D82BD8](v9);

    v10 = sub_268E419BC(6);
    (a2)();
    MEMORY[0x277D82BD8](v10);
  }

  else
  {

    v13 = [a4 settingMetadata];
    if (v14)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    v4 = sub_268D4AA1C();
    v11 = sub_268E41A08(v13, 0, v4, v12, 0, 0);
    v5 = MEMORY[0x277D82BD8](v13);
    a2(v11, v5);
    MEMORY[0x277D82BD8](v11);
  }
}

uint64_t *sub_268E1505C()
{
  if (qword_280FE5AC0 != -1)
  {
    swift_once();
  }

  return &qword_280FE8290;
}

uint64_t sub_268E150BC()
{
  type metadata accessor for GetVpnHandler();
  result = sub_268CDA260();
  qword_280FE8290 = result;
  return result;
}

uint64_t sub_268E15118()
{
  v1 = *sub_268E1505C();

  return v1;
}

uint64_t sub_268E15148(uint64_t a1, void (*a2)(id))
{
  v6 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v7 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "GetVpnHandler handling intent; Siri cannot change setting: VPN", 62, 2);

  MEMORY[0x277D82BD8](v7);

  v3 = sub_268E948B8(17);
  v9 = sub_268E41B70(v3, v4);

  a2(v9);
  MEMORY[0x277D82BD8](v9);
}

uint64_t *sub_268E152A8()
{
  if (qword_280FE40C8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8120;
}

uint64_t sub_268E15308()
{
  type metadata accessor for GetAXVoiceControlHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8120 = result;
  return result;
}

uint64_t sub_268E15370()
{
  v1 = *sub_268E152A8();

  return v1;
}

double sub_268E153A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXVoiceControlHandler handling intent", 40, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBB2B4();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v19 = a1;
  v20 = v3;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268E15AD4, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268E155BC(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v41 = 0;
  v40 = 0;
  v47 = a1;
  v46 = a2;
  v44 = a3;
  v45 = a4;
  v35 = [a1 settingMetadata];
  if (v35 && (v32 = [v35 targetDevice], *&v4 = MEMORY[0x277D82BD8](v35).n128_u64[0], v32))
  {
    v5 = [v32 deviceName];
    v31 = v5;
    if (v5)
    {
      v27 = sub_268F9AE24();
      v28 = v6;
      MEMORY[0x277D82BD8](v31);
      v29 = v27;
      v30 = v28;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    MEMORY[0x277D82BD8](v32);
    v25 = v29;
    v26 = v30;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v23 = sub_268F9AEF4();
  v24 = v7;

  v42[0] = v25;
  v42[1] = v26;
  *&v43 = v23;
  *(&v43 + 1) = v24;
  if (v26)
  {
    sub_268D28874(v42, &v38);
    if (*(&v43 + 1))
    {
      v37 = v38;
      v36 = v43;
      v21 = MEMORY[0x26D62DB50](v38, *(&v38 + 1), v43, *(&v43 + 1));
      sub_268CD9D30(&v36);
      sub_268CD9D30(&v37);
      sub_268CD9D30(v42);
      v22 = v21;
      goto LABEL_17;
    }

    sub_268CD9D30(&v38);
    goto LABEL_19;
  }

  if (*(&v43 + 1))
  {
LABEL_19:
    sub_268D28550(v42);
    v22 = 0;
    goto LABEL_17;
  }

  sub_268CD9D30(v42);
  v22 = 1;
LABEL_17:

  v41 = v22 & 1;
  v19 = [a1 settingMetadata];

  v20 = sub_268D3EFDC(v22 & 1);

  if (v20)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v17 = sub_268E41A08(v19, 0, 0, v18, 0, 0);
  MEMORY[0x277D82BD8](v19);
  v40 = v17;
  v15 = sub_268F9B284();
  v8 = sub_268DC7AE8();
  v16 = *v8;
  MEMORY[0x277D82BE0](*v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v9;
  MEMORY[0x277D82BE0](v17);
  v39 = v17;
  sub_268CDD0DC();
  sub_268CDD1A4();
  v12 = sub_268F9AE74();
  v13 = v10;
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC14(v15, &dword_268CBE000, v16, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v16);

  a3(v17);

  *&result = MEMORY[0x277D82BD8](v17).n128_u64[0];
  return result;
}

uint64_t *sub_268E15B2C()
{
  if (qword_280FE5030 != -1)
  {
    swift_once();
  }

  return &qword_280FE81D0;
}

uint64_t sub_268E15B8C()
{
  type metadata accessor for GetAXBoldTextHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE81D0 = result;
  return result;
}

uint64_t sub_268E15BF4()
{
  v1 = *sub_268E15B2C();

  return v1;
}

double sub_268E15C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXBoldTextHandler handling intent", 36, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBA7A4();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v19 = a1;
  v20 = v3;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268E160A8, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268E15E40(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v16 = [a1 settingMetadata];

  v17 = sub_268D3E4E4();

  if (v17)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v13 = sub_268E41A08(v16, 0, 0, v14, 0, 0);
  MEMORY[0x277D82BD8](v16);
  v11 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v5;
  MEMORY[0x277D82BE0](v13);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v8 = sub_268F9AE74();
  v9 = v6;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14(v11, &dword_268CBE000, v12, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v12);

  a3(v13);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

uint64_t sub_268E16408(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "checkExistence";
  *(v2 + 8) = 14;
  *(v2 + 16) = 2;
  *(v2 + 24) = "decreaseBy";
  *(v2 + 32) = 10;
  *(v2 + 40) = 2;
  *(v2 + 48) = "decreaseByMeasurement";
  *(v2 + 56) = 21;
  *(v2 + 64) = 2;
  *(v2 + 72) = "disable";
  *(v2 + 80) = 7;
  *(v2 + 88) = 2;
  *(v2 + 96) = "enable";
  *(v2 + 104) = 6;
  *(v2 + 112) = 2;
  *(v2 + 120) = "increaseBy";
  *(v2 + 128) = 10;
  *(v2 + 136) = 2;
  *(v2 + 144) = "increaseByMeasurement";
  *(v2 + 152) = 21;
  *(v2 + 160) = 2;
  *(v2 + 168) = "open";
  *(v2 + 176) = 4;
  *(v2 + 184) = 2;
  *(v2 + 192) = "request";
  *(v2 + 200) = 7;
  *(v2 + 208) = 2;
  *(v2 + 216) = "set";
  *(v2 + 224) = 3;
  *(v2 + 232) = 2;
  *(v2 + 240) = "setDateTimeRange";
  *(v2 + 248) = 16;
  *(v2 + 256) = 2;
  *(v2 + 264) = "setDuration";
  *(v2 + 272) = 11;
  *(v2 + 280) = 2;
  *(v2 + 288) = "setLabel";
  *(v2 + 296) = 8;
  *(v2 + 304) = 2;
  *(v2 + 312) = "setMeasurement";
  *(v2 + 320) = 14;
  *(v2 + 328) = 2;
  *(v2 + 336) = "setNumber";
  *(v2 + 344) = 9;
  *(v2 + 352) = 2;
  *(v2 + 360) = "summarise";
  *(v2 + 368) = 9;
  *(v2 + 376) = 2;
  *(v2 + 384) = "toggle";
  *(v2 + 392) = 6;
  *(v2 + 400) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_36:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_36;
    case 2:
      v5 = 2;
      goto LABEL_36;
    case 3:
      v5 = 3;
      goto LABEL_36;
    case 4:
      v5 = 4;
      goto LABEL_36;
    case 5:
      v5 = 5;
      goto LABEL_36;
    case 6:
      v5 = 6;
      goto LABEL_36;
    case 7:
      v5 = 7;
      goto LABEL_36;
    case 8:
      v5 = 8;
      goto LABEL_36;
    case 9:
      v5 = 9;
      goto LABEL_36;
    case 10:
      v5 = 10;
      goto LABEL_36;
    case 11:
      v5 = 11;
      goto LABEL_36;
    case 12:
      v5 = 12;
      goto LABEL_36;
    case 13:
      v5 = 13;
      goto LABEL_36;
    case 14:
      v5 = 14;
      goto LABEL_36;
    case 15:
      v5 = 15;
      goto LABEL_36;
    case 16:
      v5 = 16;
      goto LABEL_36;
  }

  return 17;
}

unint64_t sub_268E169AC()
{
  v2 = qword_2802DD098;
  if (!qword_2802DD098)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD098);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E16AF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E16408(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E16B30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E16100(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268E16B64(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xEF)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 16) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 239;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 17;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268E16CCC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xEF)
  {
    v5 = ((a3 + 16) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xEF)
  {
    v4 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 16;
    }
  }

  return result;
}

unint64_t sub_268E16EF4()
{
  v2 = qword_2802DD0A0;
  if (!qword_2802DD0A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD0A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E16F70(uint64_t a1)
{
  v11[1] = a1;
  v5 = *sub_268F2848C();

  v11[0] = v5;
  v7 = sub_268F99F54();
  v8 = v1;
  if (v1)
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = sub_268F9AEF4();
    v10 = v2;
  }

  v6[0] = v9;
  v6[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v4 = sub_268F9AFC4();
  sub_268CD9D30(v6);
  sub_268CD7930(v11);
  return v4 & 1;
}

uint64_t sub_268E17098(uint64_t a1)
{
  v11[1] = a1;
  v5 = *sub_268F2B678();

  v11[0] = v5;
  v7 = sub_268F99F54();
  v8 = v1;
  if (v1)
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = sub_268F9AEF4();
    v10 = v2;
  }

  v6[0] = v9;
  v6[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v4 = sub_268F9AFC4();
  sub_268CD9D30(v6);
  sub_268CD7930(v11);
  return v4 & 1;
}

uint64_t sub_268E171C0()
{
  result = sub_268F9AEF4();
  qword_2802F1470 = result;
  qword_2802F1478 = v1;
  return result;
}

uint64_t *sub_268E17204()
{
  if (qword_2802DB588 != -1)
  {
    swift_once();
  }

  return &qword_2802F1470;
}

uint64_t sub_268E17264()
{
  v1 = *sub_268E17204();

  return v1;
}

uint64_t sub_268E172A0()
{
  result = sub_268F9AEF4();
  qword_2802F1480 = result;
  qword_2802F1488 = v1;
  return result;
}

uint64_t *sub_268E172E4()
{
  if (qword_2802DB590 != -1)
  {
    swift_once();
  }

  return &qword_2802F1480;
}

uint64_t sub_268E17344()
{
  v1 = *sub_268E172E4();

  return v1;
}

uint64_t sub_268E17380()
{
  result = sub_268F9AEF4();
  qword_2802F1490 = result;
  qword_2802F1498 = v1;
  return result;
}

uint64_t *sub_268E173C4()
{
  if (qword_2802DB598 != -1)
  {
    swift_once();
  }

  return &qword_2802F1490;
}

uint64_t sub_268E17424()
{
  v1 = *sub_268E173C4();

  return v1;
}

void sub_268E17460()
{
  sub_268F9B734();
  v4 = v0;
  v1 = sub_268E172E4();
  sub_268D28874(v1, v4);
  v2 = sub_268E173C4();
  sub_268D28874(v2, v4 + 2);
  sub_268CD0F7C();
  qword_2802F14A0 = v3;
}

uint64_t *sub_268E174CC()
{
  if (qword_2802DB5A0 != -1)
  {
    swift_once();
  }

  return &qword_2802F14A0;
}

uint64_t sub_268E1752C()
{
  v1 = *sub_268E174CC();

  return v1;
}

void sub_268E1755C()
{
  sub_268F9B734();
  v5 = v0;
  *v0 = sub_268EC63FC(0);
  v5[1] = v1;
  v5[2] = sub_268EC63FC(1);
  v5[3] = v2;
  v5[4] = sub_268EC63FC(4);
  v5[5] = v3;
  sub_268CD0F7C();
  qword_2802F14A8 = v4;
}

uint64_t *sub_268E175F0()
{
  if (qword_2802DB5A8 != -1)
  {
    swift_once();
  }

  return &qword_2802F14A8;
}

uint64_t sub_268E17650()
{
  v1 = *sub_268E175F0();

  return v1;
}

id sub_268E17680(uint64_t a1, void *a2, void *a3)
{
  v102 = a2;
  v101 = a3;
  v109 = 0;
  v112 = sub_268D91218;
  v89 = "NLToSiriKitIntentConverter userDialogAct as? UserStatedTask invalid";
  v90 = "Resulting INIntent: %@";
  v91 = "NLToSiriKitIntentConverter userDialogAct.userStarted.task serialization error";
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v116 = 0;
  v115 = 0;
  v98 = 0;
  v92 = sub_268F99E04();
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  v95 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v92, v4, v5, v6);
  v96 = &v43 - v95;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC748, &qword_268F9F1F8);
  v97 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8, v9, v10);
  v108 = &v43 - v97;
  v99 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7A8, &unk_268F9F520) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v98, v11, v12, v13);
  v100 = &v43 - v99;
  v103 = sub_268F99C94();
  v104 = *(v103 - 8);
  v105 = v103 - 8;
  v106 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103, v102, v101, v14);
  v107 = &v43 - v106;
  v121 = &v43 - v106;
  v120 = a1;
  v119 = v15;
  v118 = v16;
  v117 = sub_268F99CA4();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC750, &qword_268F9F200);
  sub_268D898B8();
  v17 = v111;
  sub_268F9AF94();
  v113 = v17;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    sub_268CD7930(&v117);
    v86 = sub_268F99DE4();
    v87 = *(v86 - 8);
    v88 = v86 - 8;
    if ((*(v87 + 48))(v108, 1) == 1)
    {
      sub_268D8809C(v108, v18);
      (*(v104 + 56))(v100, 1, 1, v103);
    }

    else
    {
      sub_268F99D94();
      (*(v87 + 8))(v108, v86);
      sub_268F99DF4();
      (*(v93 + 8))(v96, v92);
      (*(v104 + 56))(v100, 0, 1, v103);
    }

    if ((*(v104 + 48))(v100, 1, v103) == 1)
    {
      sub_268D9125C(v100);
      v46 = sub_268F9B294();
      v48 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v49 = 0;
      v47 = sub_268F9B734();
      sub_268F9AC14(v46, &dword_268CBE000, v48, v89, 67, 2);

      MEMORY[0x277D82BD8](v48);
      v51 = sub_268F9A7E4();
      sub_268D91304();
      v50 = 1;
      v53 = swift_allocError();
      v52 = v37;
      v38 = sub_268F9AEF4();
      v39 = v51;
      v40 = v38;
      v41 = v52;
      *v52 = v40;
      v41[1] = v42;
      (*(*(v39 - 8) + 104))();
      swift_willThrow();
      v63 = v53;
      return v43;
    }

    (*(v104 + 32))(v107, v100, v103);
    v19 = v113;
    v20 = sub_268F99E44();
    v83 = v19;
    v84 = v20;
    v85 = v19;
    if (!v19)
    {
      v81 = v84;
      v82 = 0;
      goto LABEL_7;
    }
  }

  v45 = 0;

  v81 = 0;
  v82 = v45;
LABEL_7:
  v79 = v82;
  v80 = v81;
  if (v81)
  {
    v78 = v80;
    v21 = v79;
    v74 = v80;
    v116 = v80;
    v22 = sub_268E181EC(v80, v102, v101);
    v75 = v21;
    v76 = v22;
    v77 = v21;
    if (!v21)
    {
      v73 = v76;
      v115 = v76;
      v70 = sub_268F9B284();
      v72 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v72);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v69 = sub_268F9B734();
      v67 = v23;
      MEMORY[0x277D82BE0](v73);
      v64 = &v114;
      v114 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0A8, &qword_268FA3288);
      v65 = sub_268F9AE64();
      v66 = v24;
      v67[3] = MEMORY[0x277D837D0];
      v25 = sub_268CDD224();
      v26 = v65;
      v27 = v66;
      v28 = v67;
      v67[4] = v25;
      *v28 = v26;
      v28[1] = v27;
      sub_268CD0F7C();
      v71 = v29;
      sub_268F9AC14(v70, &dword_268CBE000, v72, v90, 22, 2);

      MEMORY[0x277D82BD8](v72);

      (*(v104 + 8))(v107, v103);
      return v73;
    }

    v44 = v77;

    (*(v104 + 8))(v107, v103);
    v63 = v44;
  }

  else
  {
    v54 = sub_268F9B294();
    v56 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v57 = 0;
    v55 = sub_268F9B734();
    v59 = 77;
    sub_268F9AC14(v54, &dword_268CBE000, v56, v91);

    MEMORY[0x277D82BD8](v56);
    v60 = sub_268F9A7E4();
    sub_268D91304();
    v58 = 1;
    v62 = swift_allocError();
    v61 = v31;
    v32 = sub_268F9AEF4();
    v33 = v60;
    v34 = v32;
    v35 = v61;
    *v61 = v34;
    v35[1] = v36;
    (*(*(v33 - 8) + 104))();
    swift_willThrow();
    (*(v104 + 8))(v107, v103);
    v63 = v62;
  }

  return v43;
}

id sub_268E181EC(uint64_t a1, void *a2, void *a3)
{
  v526 = a1;
  v524 = a2;
  v525 = a3;
  v484 = "UsoTask is no verb.";
  v485 = sub_268E30BB4;
  v486 = "Could not convert noVerb task with settingId: %@";
  v487 = "No Verb task is for labeled setting: %@.";
  v488 = "No Verb task is for numeric setting: %@.";
  v489 = "No Verb task is for binary setting: %@.";
  v490 = "noVerb ChatGPT requests should not be handled by Settings as per HI";
  v491 = "Could not convert noVerb task without settingId: %@";
  v492 = sub_268E30760;
  v493 = sub_268CD7608;
  v494 = sub_268CD7600;
  v495 = sub_268CD7600;
  v496 = sub_268CD7614;
  v497 = "ChatGPT request while Montara disabled returns no op.";
  v498 = sub_268E30760;
  v499 = sub_268CD7608;
  v500 = sub_268CD7600;
  v501 = sub_268CD7600;
  v502 = sub_268CD7614;
  v503 = sub_268E30760;
  v504 = sub_268CD7608;
  v505 = sub_268CD7600;
  v506 = sub_268CD7600;
  v507 = sub_268CD7614;
  v508 = sub_268E30760;
  v509 = sub_268CD7608;
  v510 = sub_268CD7600;
  v511 = sub_268CD7600;
  v512 = sub_268CD7614;
  v513 = sub_268E30760;
  v514 = sub_268CD7608;
  v515 = sub_268CD7600;
  v516 = sub_268CD7600;
  v517 = sub_268CD7614;
  v518 = sub_268E30760;
  v519 = sub_268CD7608;
  v520 = sub_268CD7600;
  v521 = sub_268CD7600;
  v522 = sub_268CD7614;
  v523 = "NLToSiriKitIntentConverter userStartUSOGraph has no tasks";
  v601 = 0;
  v600 = 0;
  v599 = 0;
  v598 = 0;
  v597 = 0;
  v594 = 0;
  v572 = 0;
  v573 = 0;
  v556 = 0;
  v553 = 0;
  v554 = 0;
  v543 = 0;
  v538 = 0;
  v527 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v526, v524, v525, v3);
  v528 = v154 - v527;
  v529 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v154 - v527);
  v530 = v154 - v529;
  v531 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v9, v10, v11, v154 - v529);
  v532 = v154 - v531;
  v601 = v154 - v531;
  v600 = v13;
  v599 = v14;
  v598 = v15;
  v533 = MEMORY[0x26D62CD00](v12);
  v597 = v533;
  v596 = v533;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7D0, &qword_268F9F550);
  sub_268D9BF0C();
  sub_268F9B234();
  v535 = v595;
  if (v595)
  {
    v482 = v535;
    v481 = v535;
    v594 = v535;

    sub_268F9A204();

    if (v593[3])
    {
      sub_268F9A3A4();
      if (swift_dynamicCast())
      {
        v480 = v536;
      }

      else
      {
        v480 = 0;
      }

      v479 = v480;
    }

    else
    {
      sub_268D28414(v593);
      v479 = 0;
    }

    v478 = v479;
    if (v479)
    {
      v477 = v478;
      v475 = v478;
      v556 = v478;
      v472 = sub_268F9B284();
      v474 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v474);
      v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v473 = sub_268F9B734();
      sub_268F9AC14(v472, &dword_268CBE000, v474, v484, 19, 2);

      MEMORY[0x277D82BD8](v474);

      sub_268F99E84();
      v476 = v555[2];

      if (!v476 || (v470 = v476, v468 = v476, v16 = sub_268D8E220(), v466 = *v16, v467 = v16[1], , v469 = sub_268F9A0A4(), , , !v469))
      {
        v56 = sub_268F99F64();
        (*(*(v56 - 8) + 56))(v530, 1);
        v462 = v483;
LABEL_16:
        v456 = v462;

        v457 = sub_268F99F64();
        v458 = *(v457 - 8);
        v459 = v457 - 8;
        v460 = *(v458 + 48);
        v461 = v458 + 48;
        if ((v460)(v530, 1) == 1)
        {

          sub_268F99E84();
          v455 = v555[1];

          if (v455 && (v454 = v455, v452 = v455, v18 = sub_268DDA5D0(), v450 = *v18, v451 = v18[1], , v453 = sub_268F9A0A4(), , , v453))
          {
            v449 = v453;
            v448 = v453;
            v537[1] = v453;
            v447 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
            sub_268E30B2C();
            sub_268F9B234();
          }

          else
          {
            (*(v458 + 56))(v532, 1, 1, v457);
          }

          if (v460(v530, 1, v457) != 1)
          {
            sub_268D9C0BC(v530);
          }
        }

        else
        {
          (*(v458 + 32))(v532, v530, v457);
          (*(v458 + 56))(v532, 0, 1, v457);
        }

        sub_268D9BF94(v532, v528);
        if (v460(v528, 1, v457) == 1)
        {
          sub_268D9C0BC(v528);
          v445 = 0;
          v446 = 0;
        }

        else
        {
          v443 = sub_268F99F44();
          v444 = v19;
          (*(v458 + 8))(v528, v457);
          v445 = v443;
          v446 = v444;
        }

        v441 = v446;
        v442 = v445;
        if (v446)
        {
          v439 = v442;
          v440 = v441;
          v437 = v441;
          v438 = v442;
          v553 = v442;
          v554 = v441;
          v20 = sub_268F28C88(v442, v441);
          if (v20)
          {

            v432 = 0;
            v433 = sub_268F284EC(v438, v437, v524, 0, 0);

            v538 = v433;
            sub_268CD7620();
            v434 = sub_268DA95CC(v433, 3, v432);

            sub_268D9C0BC(v532);

            v435 = v434;
            v436 = v456;
            return v435;
          }

          v21._countAndFlagsBits = v438;
          v21._object = v437;
          BinarySettingIdentifier.init(rawValue:)(v21);
          v551 = v552;
          v431 = v552 != 65;
          if (v552 != 65)
          {
            v426 = sub_268F9B284();
            v428 = *sub_268DC7EA8();
            MEMORY[0x277D82BE0](v428);
            v425 = sub_268F9B734();
            v424 = v22;

            v424[3] = MEMORY[0x277D837D0];
            v23 = sub_268CDD224();
            v24 = v424;
            v25 = v438;
            v26 = v437;
            v424[4] = v23;
            *v24 = v25;
            v24[1] = v26;
            sub_268CD0F7C();
            v427 = v27;
            sub_268F9AC14(v426, &dword_268CBE000, v428, v489, 39, 2);

            MEMORY[0x277D82BD8](v428);
            v539 = 55;
            v28 = BinarySettingIdentifier.rawValue.getter();
            v429 = v29;
            v430 = MEMORY[0x26D62DB50](v438, v437, v28);

            if (v430)
            {
              v419 = sub_268F9B284();
              v421 = *sub_268DC7EA8();
              MEMORY[0x277D82BE0](v421);
              v422 = 0;
              v420 = sub_268F9B734();
              sub_268F9AC14(v419, &dword_268CBE000, v421, v490, 67, 2);

              MEMORY[0x277D82BD8](v421);
              sub_268CD7620();
              v423 = sub_268DA95CC(v422, v422, v422);

              sub_268D9C0BC(v532);

              v435 = v423;
            }

            else
            {
              v417 = 0;
              sub_268D2E630();

              v416 = sub_268F284EC(v438, v437, v524, v417, v417);

              v418 = sub_268E1B5D8(v416, v417);

              sub_268D9C0BC(v532);

              v435 = v418;
            }

            v436 = v456;
            return v435;
          }

          v30._countAndFlagsBits = v438;
          v30._object = v437;
          NumericSettingIdentifier.init(rawValue:)(v30);
          v549 = v550;
          v415 = v550 != 13;
          if (v550 != 13)
          {
            v411 = sub_268F9B284();
            v413 = *sub_268DC7EA8();
            MEMORY[0x277D82BE0](v413);
            v410 = sub_268F9B734();
            v409 = v31;

            v409[3] = MEMORY[0x277D837D0];
            v32 = sub_268CDD224();
            v33 = v438;
            v34 = v409;
            v35 = v437;
            v409[4] = v32;
            *v34 = v33;
            v34[1] = v35;
            sub_268CD0F7C();
            v412 = v36;
            sub_268F9AC14(v411, &dword_268CBE000, v413, v488, 40, 2);

            MEMORY[0x277D82BD8](v413);

            v414 = sub_268F99E74();

            if (v414 && (v408 = v414, v406 = v414, v542 = v414, v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7F0, &qword_268F9F570), sub_268DA6E24(), sub_268F9B234(), v407 = v541, , v407))
            {
              v404 = v407;
              v401 = v407;
              sub_268F9A064();
              v402 = v540;

              v403 = v402;
            }

            else
            {
              v403 = 0;
            }

            v399 = v403;
            v400 = sub_268F28D48(v403);

            v545 = v400;

            if (v545)
            {
              v546 = v545;
            }

            else
            {

              sub_268F99E84();
              v398 = v544;

              if (v398 && (v397 = v398, v395 = v398, v396 = sub_268F9A1F4(), , v396))
              {
                v394 = v396;
                v391 = v396;
                v392 = sub_268F9A124();

                v393 = v392;
              }

              else
              {
                v393 = 0;
              }

              v389 = v393;
              v390 = sub_268F29294(v393);

              v546 = v390;
              if (v545)
              {
                sub_268D35038(&v545);
              }
            }

            v387 = v546;
            v543 = v546;
            v386 = 0;
            sub_268D2E630();

            v385 = sub_268F284EC(v438, v437, v524, v386, v387);

            v388 = sub_268E1B5D8(v385, v386);
            MEMORY[0x277D82BD8](v387);

            sub_268D9C0BC(v532);

            v435 = v388;
            v436 = v456;
            return v435;
          }

          v548 = sub_268E50F4C(v438, v437);
          v384 = v548 != 2;
          if (v548 != 2)
          {
            v378 = sub_268F9B284();
            v380 = *sub_268DC7EA8();
            MEMORY[0x277D82BE0](v380);
            v377 = sub_268F9B734();
            v376 = v37;

            v376[3] = MEMORY[0x277D837D0];
            v38 = sub_268CDD224();
            v39 = v376;
            v40 = v438;
            v41 = v437;
            v376[4] = v38;
            *v39 = v40;
            v39[1] = v41;
            sub_268CD0F7C();
            v379 = v42;
            sub_268F9AC14(v378, &dword_268CBE000, v380, v487, 40, 2);

            MEMORY[0x277D82BD8](v380);
            v382 = 0;
            sub_268D2E630();

            v381 = sub_268F284EC(v438, v437, v524, v382, v382);

            v383 = sub_268E1B5D8(v381, v382);

            sub_268D9C0BC(v532);

            v435 = v383;
            v436 = v456;
            return v435;
          }

          if (sub_268E1B620(v438, v437))
          {
            v374 = 0;
            sub_268DA96FC();

            v372 = v547;
            memset(v547, 0, sizeof(v547));
            v373 = sub_268F284EC(v438, v437, v547, v374, v374);
            sub_268D28414(v372);

            v375 = sub_268E1B6E0(v373, v374);

            sub_268D9C0BC(v532);

            v435 = v375;
            v436 = v456;
            return v435;
          }

          v369 = sub_268F9B284();
          v371 = *sub_268DC7EA8();
          MEMORY[0x277D82BE0](v371);
          v368 = sub_268F9B734();
          v367 = v43;

          v367[3] = MEMORY[0x277D837D0];
          v44 = sub_268CDD224();
          v45 = v438;
          v46 = v367;
          v47 = v437;
          v367[4] = v44;
          *v46 = v45;
          v46[1] = v47;
          sub_268CD0F7C();
          v370 = v48;
          sub_268F9AC14(v369, &dword_268CBE000, v371, v486, 48, 2);

          MEMORY[0x277D82BD8](v371);
        }

        v363 = sub_268F9B284();
        v365 = *sub_268DC7EA8();
        MEMORY[0x277D82BE0](v365);
        v362 = sub_268F9B734();
        v361 = v49;

        v358 = v555;
        v555[0] = v475;
        v366 = 0;
        sub_268F9A3A4();
        v359 = sub_268F9AE64();
        v360 = v50;
        v361[3] = MEMORY[0x277D837D0];
        v51 = sub_268CDD224();
        v52 = v359;
        v53 = v360;
        v54 = v361;
        v361[4] = v51;
        *v54 = v52;
        v54[1] = v53;
        sub_268CD0F7C();
        v364 = v55;
        sub_268F9AC14(v363, &dword_268CBE000, v365, v491, 51, 2);

        MEMORY[0x277D82BD8](v365);
        sub_268D9C0BC(v532);

        v435 = v366;
        v436 = v456;
        return v435;
      }

      v465 = v469;
      v537[0] = v469;
      v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      sub_268DA5FC0();
      v17 = v483;
      sub_268F9AF94();
      v464 = v17;
      if (!v17)
      {
        sub_268CD7930(v537);
        v462 = v464;
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_121;
    }

    if (sub_268F29620(v481))
    {
      v357 = sub_268F9B284();
      v356 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v356);

      v346 = 17;
      v348 = 7;
      v350 = swift_allocObject();
      *(v350 + 16) = 32;
      v351 = swift_allocObject();
      *(v351 + 16) = 8;
      v347 = 32;
      v57 = swift_allocObject();
      v58 = v481;
      v349 = v57;
      *(v57 + 16) = v518;
      *(v57 + 24) = v58;
      v59 = swift_allocObject();
      v60 = v349;
      v353 = v59;
      *(v59 + 16) = v519;
      *(v59 + 24) = v60;
      v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      v352 = sub_268F9B734();
      v354 = v61;

      v62 = v350;
      v63 = v354;
      *v354 = v520;
      v63[1] = v62;

      v64 = v351;
      v65 = v354;
      v354[2] = v521;
      v65[3] = v64;

      v66 = v353;
      v67 = v354;
      v354[4] = v522;
      v67[5] = v66;
      sub_268CD0F7C();

      if (os_log_type_enabled(v356, v357))
      {
        v339 = sub_268F9B3A4();
        v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v340 = sub_268CD5448(0, v338, v338);
        v341 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v342 = &v561;
        v561 = v339;
        v343 = &v560;
        v560 = v340;
        v344 = &v559;
        v559 = v341;
        sub_268CD549C(2, &v561);
        sub_268CD549C(1, v342);
        v68 = v483;
        v557 = v520;
        v558 = v350;
        sub_268CD54B0(&v557, v342, v343, v344);
        v345 = v68;
        if (v68)
        {

          __break(1u);
        }

        else
        {
          v557 = v521;
          v558 = v351;
          sub_268CD54B0(&v557, &v561, &v560, &v559);
          v336 = 0;
          v557 = v522;
          v558 = v353;
          sub_268CD54B0(&v557, &v561, &v560, &v559);
          v335 = 0;
          _os_log_impl(&dword_268CBE000, v356, v357, "Verb is %s, attempting to convert to INLabeledSettingIntent based on setting id.", v339, 0xCu);
          sub_268CD54FC(v340, 0, v338);
          sub_268CD54FC(v341, 1, MEMORY[0x277D84F70] + 8);
          sub_268F9B384();

          v337 = v335;
        }
      }

      else
      {

        v337 = v483;
      }

      v331 = v337;
      MEMORY[0x277D82BD8](v356);
      v69 = v331;
      v70 = sub_268E1B74C(v481, v525, v524);
      v332 = v69;
      v333 = v70;
      v334 = v69;
      if (!v69)
      {
        v330 = v333;

        v435 = v330;
        v436 = v332;
        return v435;
      }

LABEL_121:
      v159 = v334;

      v169 = v159;
      return v154[1];
    }

    if (sub_268F2A01C(v481))
    {
      v329 = sub_268F9B284();
      v328 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v328);

      v318 = 17;
      v320 = 7;
      v322 = swift_allocObject();
      *(v322 + 16) = 32;
      v323 = swift_allocObject();
      *(v323 + 16) = 8;
      v319 = 32;
      v71 = swift_allocObject();
      v72 = v481;
      v321 = v71;
      *(v71 + 16) = v513;
      *(v71 + 24) = v72;
      v73 = swift_allocObject();
      v74 = v321;
      v325 = v73;
      *(v73 + 16) = v514;
      *(v73 + 24) = v74;
      v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      v324 = sub_268F9B734();
      v326 = v75;

      v76 = v322;
      v77 = v326;
      *v326 = v515;
      v77[1] = v76;

      v78 = v323;
      v79 = v326;
      v326[2] = v516;
      v79[3] = v78;

      v80 = v325;
      v81 = v326;
      v326[4] = v517;
      v81[5] = v80;
      sub_268CD0F7C();

      if (os_log_type_enabled(v328, v329))
      {
        v311 = sub_268F9B3A4();
        v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v312 = sub_268CD5448(0, v310, v310);
        v313 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v314 = &v566;
        v566 = v311;
        v315 = &v565;
        v565 = v312;
        v316 = &v564;
        v564 = v313;
        sub_268CD549C(2, &v566);
        sub_268CD549C(1, v314);
        v82 = v483;
        v562 = v515;
        v563 = v322;
        sub_268CD54B0(&v562, v314, v315, v316);
        v317 = v82;
        if (v82)
        {

          __break(1u);
        }

        else
        {
          v562 = v516;
          v563 = v323;
          sub_268CD54B0(&v562, &v566, &v565, &v564);
          v308 = 0;
          v562 = v517;
          v563 = v325;
          sub_268CD54B0(&v562, &v566, &v565, &v564);
          v307 = 0;
          _os_log_impl(&dword_268CBE000, v328, v329, "Verb is %s, attempting to convert to INOpenSettingIntent.", v311, 0xCu);
          sub_268CD54FC(v312, 0, v310);
          sub_268CD54FC(v313, 1, MEMORY[0x277D84F70] + 8);
          sub_268F9B384();

          v309 = v307;
        }
      }

      else
      {

        v309 = v483;
      }

      v303 = v309;
      MEMORY[0x277D82BD8](v328);
      v83 = v303;
      v84 = sub_268E1E080(v481);
      v304 = v83;
      v305 = v84;
      v306 = v83;
      if (!v83)
      {
        v302 = v305;

        v435 = v302;
        v436 = v304;
        return v435;
      }

      v158 = v306;

      v169 = v158;
    }

    else
    {
      v300 = sub_268F2A84C(v481);
      v301 = v85;
      if (v85)
      {
        v298 = v300;
        v299 = v301;
        v296 = v301;
        v297 = v300;
        v572 = v300;
        v573 = v301;
        if (AFMontaraRestricted())
        {
          v291 = sub_268F9B284();
          v293 = *sub_268DC7EA8();
          MEMORY[0x277D82BE0](v293);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
          v294 = 0;
          v292 = sub_268F9B734();
          sub_268F9AC14(v291, &dword_268CBE000, v293, v497, 53, 2);

          MEMORY[0x277D82BD8](v293);
          sub_268CD7620();
          v295 = sub_268DA95CC(v294, v294, v294);

          v435 = v295;
          v436 = v483;
        }

        else
        {
          v290 = sub_268F9B284();
          v289 = *sub_268DC7EA8();
          MEMORY[0x277D82BE0](v289);

          v279 = 17;
          v281 = 7;
          v283 = swift_allocObject();
          *(v283 + 16) = 32;
          v284 = swift_allocObject();
          *(v284 + 16) = 8;
          v280 = 32;
          v86 = swift_allocObject();
          v87 = v481;
          v282 = v86;
          *(v86 + 16) = v492;
          *(v86 + 24) = v87;
          v88 = swift_allocObject();
          v89 = v282;
          v286 = v88;
          *(v88 + 16) = v493;
          *(v88 + 24) = v89;
          v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
          v285 = sub_268F9B734();
          v287 = v90;

          v91 = v283;
          v92 = v287;
          *v287 = v494;
          v92[1] = v91;

          v93 = v284;
          v94 = v287;
          v287[2] = v495;
          v94[3] = v93;

          v95 = v286;
          v96 = v287;
          v287[4] = v496;
          v96[5] = v95;
          sub_268CD0F7C();

          if (os_log_type_enabled(v289, v290))
          {
            v272 = sub_268F9B3A4();
            v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
            v273 = sub_268CD5448(0, v271, v271);
            v274 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v275 = &v571;
            v571 = v272;
            v276 = &v570;
            v570 = v273;
            v277 = &v569;
            v569 = v274;
            sub_268CD549C(2, &v571);
            sub_268CD549C(1, v275);
            v97 = v483;
            v567 = v494;
            v568 = v283;
            sub_268CD54B0(&v567, v275, v276, v277);
            v278 = v97;
            if (v97)
            {

              __break(1u);
            }

            else
            {
              v567 = v495;
              v568 = v284;
              sub_268CD54B0(&v567, &v571, &v570, &v569);
              v269 = 0;
              v567 = v496;
              v568 = v286;
              sub_268CD54B0(&v567, &v571, &v570, &v569);
              v268 = 0;
              _os_log_impl(&dword_268CBE000, v289, v290, "Verb is %s, converting chatGPT intent to INOpenSettingIntent.", v272, 0xCu);
              sub_268CD54FC(v273, 0, v271);
              sub_268CD54FC(v274, 1, MEMORY[0x277D84F70] + 8);
              sub_268F9B384();

              v270 = v268;
            }
          }

          else
          {

            v270 = v483;
          }

          v267 = v270;
          MEMORY[0x277D82BD8](v289);
          v265 = 0;
          sub_268DA96FC();

          v264 = sub_268F284EC(v297, v296, v524, v265, v265);

          v266 = sub_268E1B6E0(v264, v265);

          v435 = v266;
          v436 = v267;
        }

        return v435;
      }

      if (sub_268F2AFA8(v481))
      {
        v263 = sub_268F9B284();
        v262 = *sub_268DC7EA8();
        MEMORY[0x277D82BE0](v262);

        v252 = 17;
        v254 = 7;
        v256 = swift_allocObject();
        *(v256 + 16) = 32;
        v257 = swift_allocObject();
        *(v257 + 16) = 8;
        v253 = 32;
        v98 = swift_allocObject();
        v99 = v481;
        v255 = v98;
        *(v98 + 16) = v508;
        *(v98 + 24) = v99;
        v100 = swift_allocObject();
        v101 = v255;
        v259 = v100;
        *(v100 + 16) = v509;
        *(v100 + 24) = v101;
        v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
        v258 = sub_268F9B734();
        v260 = v102;

        v103 = v256;
        v104 = v260;
        *v260 = v510;
        v104[1] = v103;

        v105 = v257;
        v106 = v260;
        v260[2] = v511;
        v106[3] = v105;

        v107 = v259;
        v108 = v260;
        v260[4] = v512;
        v108[5] = v107;
        sub_268CD0F7C();

        if (os_log_type_enabled(v262, v263))
        {
          v245 = sub_268F9B3A4();
          v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
          v246 = sub_268CD5448(0, v244, v244);
          v247 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v248 = &v578;
          v578 = v245;
          v249 = &v577;
          v577 = v246;
          v250 = &v576;
          v576 = v247;
          sub_268CD549C(2, &v578);
          sub_268CD549C(1, v248);
          v109 = v483;
          v574 = v510;
          v575 = v256;
          sub_268CD54B0(&v574, v248, v249, v250);
          v251 = v109;
          if (v109)
          {

            __break(1u);
          }

          else
          {
            v574 = v511;
            v575 = v257;
            sub_268CD54B0(&v574, &v578, &v577, &v576);
            v242 = 0;
            v574 = v512;
            v575 = v259;
            sub_268CD54B0(&v574, &v578, &v577, &v576);
            v241 = 0;
            _os_log_impl(&dword_268CBE000, v262, v263, "Verb is %s, attempting to convert to INSetBinarySettingIntent.", v245, 0xCu);
            sub_268CD54FC(v246, 0, v244);
            sub_268CD54FC(v247, 1, MEMORY[0x277D84F70] + 8);
            sub_268F9B384();

            v243 = v241;
          }
        }

        else
        {

          v243 = v483;
        }

        v237 = v243;
        MEMORY[0x277D82BD8](v262);
        v110 = v237;
        v112 = sub_268E1F83C(v481, v524, v525, v111);
        v238 = v110;
        v239 = v112;
        v240 = v110;
        if (!v110)
        {
          v236 = v239;

          v435 = v236;
          v436 = v238;
          return v435;
        }

        v157 = v240;

        v169 = v157;
      }

      else
      {
        v230 = *sub_268DDAF28();

        v234 = &v592;
        v592 = v230;
        v113 = sub_268F9A6D4();
        v233 = v591;
        v591[0] = v113;
        v591[1] = v114;
        v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
        v232 = sub_268DA6BFC();
        v235 = sub_268F9AFC4();
        sub_268CD9D30(v233);
        sub_268CD7930(v234);
        if (v235)
        {
          v229 = sub_268F9B284();
          v228 = *sub_268DC7EA8();
          MEMORY[0x277D82BE0](v228);

          v218 = 17;
          v220 = 7;
          v222 = swift_allocObject();
          *(v222 + 16) = 32;
          v223 = swift_allocObject();
          *(v223 + 16) = 8;
          v219 = 32;
          v115 = swift_allocObject();
          v116 = v481;
          v221 = v115;
          *(v115 + 16) = v503;
          *(v115 + 24) = v116;
          v117 = swift_allocObject();
          v118 = v221;
          v225 = v117;
          *(v117 + 16) = v504;
          *(v117 + 24) = v118;
          v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
          v224 = sub_268F9B734();
          v226 = v119;

          v120 = v222;
          v121 = v226;
          *v226 = v505;
          v121[1] = v120;

          v122 = v223;
          v123 = v226;
          v226[2] = v506;
          v123[3] = v122;

          v124 = v225;
          v125 = v226;
          v226[4] = v507;
          v125[5] = v124;
          sub_268CD0F7C();

          if (os_log_type_enabled(v228, v229))
          {
            v211 = sub_268F9B3A4();
            v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
            v212 = sub_268CD5448(0, v210, v210);
            v213 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v214 = &v583;
            v583 = v211;
            v215 = &v582;
            v582 = v212;
            v216 = &v581;
            v581 = v213;
            sub_268CD549C(2, &v583);
            sub_268CD549C(1, v214);
            v126 = v483;
            v579 = v505;
            v580 = v222;
            sub_268CD54B0(&v579, v214, v215, v216);
            v217 = v126;
            if (v126)
            {

              __break(1u);
            }

            else
            {
              v579 = v506;
              v580 = v223;
              sub_268CD54B0(&v579, &v583, &v582, &v581);
              v208 = 0;
              v579 = v507;
              v580 = v225;
              sub_268CD54B0(&v579, &v583, &v582, &v581);
              v207 = 0;
              _os_log_impl(&dword_268CBE000, v228, v229, "Verb is %s, attempting to convert to INGetSettingIntent.", v211, 0xCu);
              sub_268CD54FC(v212, 0, v210);
              sub_268CD54FC(v213, 1, MEMORY[0x277D84F70] + 8);
              sub_268F9B384();

              v209 = v207;
            }
          }

          else
          {

            v209 = v483;
          }

          v203 = v209;
          MEMORY[0x277D82BD8](v228);
          v127 = v203;
          v128 = sub_268E23F1C(v481, v524);
          v204 = v127;
          v205 = v128;
          v206 = v127;
          if (!v127)
          {
            v202 = v205;

            v435 = v202;
            v436 = v204;
            return v435;
          }

          v156 = v206;

          v169 = v156;
        }

        else
        {
          v198 = *sub_268DDB2A8();

          v200 = &v590;
          v590 = v198;
          v129 = sub_268F9A6D4();
          v199 = v589;
          v589[0] = v129;
          v589[1] = v130;
          v201 = sub_268F9AFC4();
          sub_268CD9D30(v199);
          sub_268CD7930(v200);
          if ((v201 & 1) == 0)
          {

            v435 = 0;
            v436 = v483;
            return v435;
          }

          v197 = sub_268F9B284();
          v196 = *sub_268DC7EA8();
          MEMORY[0x277D82BE0](v196);

          v186 = 17;
          v188 = 7;
          v190 = swift_allocObject();
          *(v190 + 16) = 32;
          v191 = swift_allocObject();
          *(v191 + 16) = 8;
          v187 = 32;
          v131 = swift_allocObject();
          v132 = v481;
          v189 = v131;
          *(v131 + 16) = v498;
          *(v131 + 24) = v132;
          v133 = swift_allocObject();
          v134 = v189;
          v193 = v133;
          *(v133 + 16) = v499;
          *(v133 + 24) = v134;
          v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
          v192 = sub_268F9B734();
          v194 = v135;

          v136 = v190;
          v137 = v194;
          *v194 = v500;
          v137[1] = v136;

          v138 = v191;
          v139 = v194;
          v194[2] = v501;
          v139[3] = v138;

          v140 = v193;
          v141 = v194;
          v194[4] = v502;
          v141[5] = v140;
          sub_268CD0F7C();

          if (os_log_type_enabled(v196, v197))
          {
            v179 = sub_268F9B3A4();
            v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
            v180 = sub_268CD5448(0, v178, v178);
            v181 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v182 = &v588;
            v588 = v179;
            v183 = &v587;
            v587 = v180;
            v184 = &v586;
            v586 = v181;
            sub_268CD549C(2, &v588);
            sub_268CD549C(1, v182);
            v142 = v483;
            v584 = v500;
            v585 = v190;
            sub_268CD54B0(&v584, v182, v183, v184);
            v185 = v142;
            if (v142)
            {

              __break(1u);
            }

            else
            {
              v584 = v501;
              v585 = v191;
              sub_268CD54B0(&v584, &v588, &v587, &v586);
              v176 = 0;
              v584 = v502;
              v585 = v193;
              sub_268CD54B0(&v584, &v588, &v587, &v586);
              v175 = 0;
              _os_log_impl(&dword_268CBE000, v196, v197, "Verb is %s, attempting to convert to INSetNumericSettingIntent.", v179, 0xCu);
              sub_268CD54FC(v180, 0, v178);
              sub_268CD54FC(v181, 1, MEMORY[0x277D84F70] + 8);
              sub_268F9B384();

              v177 = v175;
            }
          }

          else
          {

            v177 = v483;
          }

          v171 = v177;
          MEMORY[0x277D82BD8](v196);
          v143 = v171;
          v146 = sub_268E25C10(v481, v525, v144, v145);
          v172 = v143;
          v173 = v146;
          v174 = v143;
          if (!v143)
          {
            v170 = v173;

            v435 = v170;
            v436 = v172;
            return v435;
          }

          v155 = v174;

          v169 = v155;
        }
      }
    }
  }

  else
  {
    v160 = sub_268F9B294();
    v162 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v162);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v163 = 0;
    v161 = sub_268F9B734();
    v165 = 57;
    sub_268F9AC14(v160, &dword_268CBE000, v162, v523);

    MEMORY[0x277D82BD8](v162);
    v166 = sub_268F9A7E4();
    sub_268D91304();
    v164 = 1;
    v168 = swift_allocError();
    v167 = v147;
    v148 = sub_268F9AEF4();
    v149 = v166;
    v150 = v148;
    v151 = v167;
    *v167 = v150;
    v151[1] = v152;
    (*(*(v149 - 8) + 104))();
    swift_willThrow();

    v169 = v168;
  }

  return v154[1];
}

uint64_t sub_268E1B620(uint64_t a1, uint64_t a2)
{
  v5[1] = a1;
  v5[2] = a2;
  v3 = *sub_268E175F0();

  v5[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v4 = sub_268F9AFC4();
  sub_268CD7930(v5);
  return v4 & 1;
}

id sub_268E1B74C(uint64_t a1, void *a2, void *a3)
{
  v444 = a1;
  v429 = a2;
  v430 = a3;
  v440 = "Converting a labeled setting intent.";
  v398 = "Open setting task.";
  v399 = sub_268E30BE4;
  v400 = sub_268CD7608;
  v401 = sub_268CD7600;
  v402 = sub_268CD7600;
  v403 = sub_268CD7614;
  v404 = "Expected labeled value is 'nil'. Fallback to SRR.";
  v405 = sub_268E30BE4;
  v406 = sub_268CD7608;
  v407 = sub_268CD7600;
  v408 = sub_268CD7600;
  v409 = sub_268CD7614;
  v410 = "SRR did not provide an entity. Falling back on converting the parse as open::common_Setting.";
  v411 = "Disable setting task.";
  v412 = sub_268E30BE4;
  v413 = sub_268CD7608;
  v414 = sub_268CD7600;
  v415 = sub_268CD7600;
  v416 = sub_268CD7614;
  v417 = "Enable setting task.";
  v418 = sub_268E30BD8;
  v419 = sub_268CD7608;
  v420 = sub_268CD7600;
  v421 = sub_268CD7600;
  v422 = sub_268CD7614;
  v423 = sub_268E2A9EC;
  v424 = sub_268E30BD8;
  v425 = sub_268CD7608;
  v426 = sub_268CD7600;
  v427 = sub_268CD7600;
  v428 = sub_268CD7614;
  v497 = 0;
  v496 = 0;
  v495 = 0;
  v494 = 0;
  v492 = 0;
  v487 = 0;
  v485 = 0;
  v467 = 0;
  v458 = 0;
  v456 = 0;
  v431 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v444, v429, v430, v3);
  v432 = &v107 - v431;
  v497 = v4;
  v496 = v5;
  v495 = v6;
  v435 = &unk_287991670;
  v433 = 32;
  v434 = 7;
  v7 = swift_allocObject();
  v436 = v7;
  v494 = v7 + 16;
  v438 = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v493 = 0;
  v8 = swift_allocObject();
  v437 = v8;
  v492 = v8 + 16;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v441 = sub_268F9B284();
  v443 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v443);
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v442 = sub_268F9B734();
  sub_268F9AC14(v441, &dword_268CBE000, v443, v440, 36, 2);

  MEMORY[0x277D82BD8](v443);

  sub_268F9A204();

  if (v491[3])
  {
    sub_268F9A354();
    if (swift_dynamicCast())
    {
      v396 = v445;
    }

    else
    {
      v396 = 0;
    }

    v395 = v396;
  }

  else
  {
    sub_268D28414(v491);
    v395 = 0;
  }

  v394 = v395;
  if (!v395)
  {
    v392 = v397;
    goto LABEL_35;
  }

  v393 = v394;
  v376 = v394;
  v458 = v394;
  v373 = sub_268F9B284();
  v375 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v375);
  v374 = sub_268F9B734();
  sub_268F9AC14(v373, &dword_268CBE000, v375, v398, 18, 2);

  MEMORY[0x277D82BD8](v375);

  sub_268F9A324();
  v377 = v457[2];

  v378 = sub_268E28D5C(v377);
  v379 = v9;

  v10 = v379;
  v11 = v436;
  *(v436 + 16) = v378;
  *(v11 + 24) = v10;

  v391 = sub_268F9B284();
  v390 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v390);

  v380 = 17;
  v382 = 7;
  v384 = swift_allocObject();
  *(v384 + 16) = 32;
  v385 = swift_allocObject();
  *(v385 + 16) = 8;
  v381 = 32;
  v12 = swift_allocObject();
  v13 = v436;
  v383 = v12;
  *(v12 + 16) = v399;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v383;
  v387 = v14;
  *(v14 + 16) = v400;
  *(v14 + 24) = v15;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v386 = sub_268F9B734();
  v388 = v16;

  v17 = v384;
  v18 = v388;
  *v388 = v401;
  v18[1] = v17;

  v19 = v385;
  v20 = v388;
  v388[2] = v402;
  v20[3] = v19;

  v21 = v387;
  v22 = v388;
  v388[4] = v403;
  v22[5] = v21;
  sub_268CD0F7C();

  if (os_log_type_enabled(v390, v391))
  {
    v366 = sub_268F9B3A4();
    v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v367 = sub_268CD5448(0, v365, v365);
    v368 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v369 = v450;
    v450[0] = v366;
    v370 = &v449;
    v449 = v367;
    v371 = &v448;
    v448 = v368;
    sub_268CD549C(2, v450);
    sub_268CD549C(1, v369);
    v23 = v397;
    v446 = v401;
    v447 = v384;
    sub_268CD54B0(&v446, v369, v370, v371);
    v372 = v23;
    if (v23)
    {

      __break(1u);
    }

    else
    {
      v446 = v402;
      v447 = v385;
      sub_268CD54B0(&v446, v450, &v449, &v448);
      v362 = 0;
      v446 = v403;
      v447 = v387;
      sub_268CD54B0(&v446, v450, &v449, &v448);
      v361 = 0;
      _os_log_impl(&dword_268CBE000, v390, v391, "Attribute name is %s.", v366, 0xCu);
      sub_268CD54FC(v367, 0, v365);
      sub_268CD54FC(v368, 1, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();

      v363 = v361;
    }
  }

  else
  {

    v363 = v397;
  }

  v358 = v363;
  MEMORY[0x277D82BD8](v390);
  v359 = *(v437 + 16);
  v360 = *(v437 + 24);

  v457[0] = v359;
  v457[1] = v360;
  v357 = v360 == 0;
  v356 = v357;
  sub_268CD9D30(v457);
  if (!v356)
  {
    v311 = v358;
LABEL_33:
    v309 = v311;

    v392 = v309;
LABEL_35:
    v308 = v392;

    sub_268F9A204();

    if (v490[3])
    {
      sub_268F9A444();
      if (swift_dynamicCast())
      {
        v307 = v459;
      }

      else
      {
        v307 = 0;
      }

      v306 = v307;
    }

    else
    {
      sub_268D28414(v490);
      v306 = 0;
    }

    v305 = v306;
    if (v306)
    {
      v304 = v305;
      v286 = v305;
      v467 = v305;
      v283 = sub_268F9B284();
      v285 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v285);
      v284 = sub_268F9B734();
      sub_268F9AC14(v283, &dword_268CBE000, v285, v411, 21, 2);

      MEMORY[0x277D82BD8](v285);

      sub_268F9A5C4();
      v287 = v466[3];

      v288 = sub_268E28D5C(v287);
      v289 = v41;

      v290 = v466;
      swift_beginAccess();
      v42 = v289;
      v43 = v436;
      *(v436 + 16) = v288;
      *(v43 + 24) = v42;

      swift_endAccess();
      v302 = sub_268F9B284();
      v301 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v301);

      v291 = 17;
      v293 = 7;
      v295 = swift_allocObject();
      *(v295 + 16) = 32;
      v296 = swift_allocObject();
      *(v296 + 16) = 8;
      v292 = 32;
      v44 = swift_allocObject();
      v45 = v436;
      v294 = v44;
      *(v44 + 16) = v412;
      *(v44 + 24) = v45;
      v46 = swift_allocObject();
      v47 = v294;
      v298 = v46;
      *(v46 + 16) = v413;
      *(v46 + 24) = v47;
      v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      v297 = sub_268F9B734();
      v299 = v48;

      v49 = v295;
      v50 = v299;
      *v299 = v414;
      v50[1] = v49;

      v51 = v296;
      v52 = v299;
      v299[2] = v415;
      v52[3] = v51;

      v53 = v298;
      v54 = v299;
      v299[4] = v416;
      v54[5] = v53;
      sub_268CD0F7C();

      if (os_log_type_enabled(v301, v302))
      {
        v276 = sub_268F9B3A4();
        v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v277 = sub_268CD5448(0, v275, v275);
        v278 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v279 = &v464;
        v464 = v276;
        v280 = &v463;
        v463 = v277;
        v281 = &v462;
        v462 = v278;
        sub_268CD549C(2, &v464);
        sub_268CD549C(1, v279);
        v55 = v308;
        v460 = v414;
        v461 = v295;
        sub_268CD54B0(&v460, v279, v280, v281);
        v282 = v55;
        if (v55)
        {

          __break(1u);
        }

        else
        {
          v460 = v415;
          v461 = v296;
          sub_268CD54B0(&v460, &v464, &v463, &v462);
          v273 = 0;
          v460 = v416;
          v461 = v298;
          sub_268CD54B0(&v460, &v464, &v463, &v462);
          v272 = 0;
          _os_log_impl(&dword_268CBE000, v301, v302, "Attribute name is %s.", v276, 0xCu);
          sub_268CD54FC(v277, 0, v275);
          sub_268CD54FC(v278, 1, MEMORY[0x277D84F70] + 8);
          sub_268F9B384();

          v274 = v272;
        }
      }

      else
      {

        v274 = v308;
      }

      v271 = v274;
      MEMORY[0x277D82BD8](v301);
      v56 = sub_268E17204();
      v266 = *v56;
      v267 = v56[1];

      v268 = &v465;
      swift_beginAccess();
      v57 = v437;
      v58 = v267;
      *(v437 + 16) = v266;
      *(v57 + 24) = v58;

      swift_endAccess();

      v269 = sub_268F9A5B4();

      v270 = sub_268E2A500(v269);

      v59 = v493;
      v493 = v270;
      MEMORY[0x277D82BD8](v59);

      v303 = v271;
    }

    else
    {
      v303 = v308;
    }

    v265 = v303;

    sub_268F9A204();

    if (v489[3])
    {
      sub_268F9A394();
      if (swift_dynamicCast())
      {
        v264 = v468;
      }

      else
      {
        v264 = 0;
      }

      v263 = v264;
    }

    else
    {
      sub_268D28414(v489);
      v263 = 0;
    }

    v262 = v263;
    if (!v263)
    {
      v260 = v265;
LABEL_101:
      v133 = v260;
      v120 = &v488;
      v124 = 32;
      v125 = 0;
      swift_beginAccess();
      v121 = *(v436 + 16);
      v122 = *(v436 + 24);

      swift_endAccess();
      v123 = 0;
      v130 = sub_268F284EC(v121, v122, v430, 0, 0);

      v487 = v130;
      sub_268DC0720();
      v126 = &v486;
      swift_beginAccess();
      v127 = *(v437 + 16);
      v128 = *(v437 + 24);

      swift_endAccess();
      v131 = &v493;
      v129 = v493;
      MEMORY[0x277D82BE0](v493);
      v132 = sub_268E2AB1C(v130, v127, v128, v129);

      sub_268D35038(v131);

      v134 = v132;
      v135 = v133;
      return v134;
    }

    v261 = v262;
    v240 = v262;
    v485 = v262;
    v237 = sub_268F9B284();
    v239 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v239);
    v238 = sub_268F9B734();
    sub_268F9AC14(v237, &dword_268CBE000, v239, v417, 20, 2);

    MEMORY[0x277D82BD8](v239);

    sub_268F9A5C4();
    v241 = v484[3];

    v242 = sub_268E28D5C(v241);
    v243 = v60;

    v244 = v484;
    swift_beginAccess();
    v61 = v243;
    v62 = v436;
    *(v436 + 16) = v242;
    *(v62 + 24) = v61;

    swift_endAccess();
    v259 = sub_268F9B284();
    v258 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v258);

    v245 = *(v436 + 16);
    v246 = *(v436 + 24);

    v248 = 32;
    v249 = 7;
    v63 = swift_allocObject();
    v64 = v246;
    v250 = v63;
    *(v63 + 16) = v245;
    *(v63 + 24) = v64;
    v247 = 17;
    v252 = swift_allocObject();
    *(v252 + 16) = 32;
    v253 = swift_allocObject();
    *(v253 + 16) = 8;
    v65 = swift_allocObject();
    v66 = v250;
    v251 = v65;
    *(v65 + 16) = v418;
    *(v65 + 24) = v66;
    v67 = swift_allocObject();
    v68 = v251;
    v255 = v67;
    *(v67 + 16) = v419;
    *(v67 + 24) = v68;
    v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    v254 = sub_268F9B734();
    v256 = v69;

    v70 = v252;
    v71 = v256;
    *v256 = v420;
    v71[1] = v70;

    v72 = v253;
    v73 = v256;
    v256[2] = v421;
    v73[3] = v72;

    v74 = v255;
    v75 = v256;
    v256[4] = v422;
    v75[5] = v74;
    sub_268CD0F7C();

    if (os_log_type_enabled(v258, v259))
    {
      v230 = sub_268F9B3A4();
      v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v231 = sub_268CD5448(0, v229, v229);
      v232 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v233 = &v473;
      v473 = v230;
      v234 = &v472;
      v472 = v231;
      v235 = &v471;
      v471 = v232;
      sub_268CD549C(2, &v473);
      sub_268CD549C(1, v233);
      v76 = v265;
      v469 = v420;
      v470 = v252;
      sub_268CD54B0(&v469, v233, v234, v235);
      v236 = v76;
      if (v76)
      {

        __break(1u);
      }

      else
      {
        v469 = v421;
        v470 = v253;
        sub_268CD54B0(&v469, &v473, &v472, &v471);
        v227 = 0;
        v469 = v422;
        v470 = v255;
        sub_268CD54B0(&v469, &v473, &v472, &v471);
        v226 = 0;
        _os_log_impl(&dword_268CBE000, v258, v259, "Attribute name is %s. Assuming environment.", v230, 0xCu);
        sub_268CD54FC(v231, 0, v229);
        sub_268CD54FC(v232, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();

        v228 = v226;
      }
    }

    else
    {

      v228 = v265;
    }

    v224 = v228;
    MEMORY[0x277D82BD8](v258);

    v225 = sub_268F9A5A4();

    if (v225)
    {
      v223 = v225;
      v220 = v225;
      v474[3] = v225;
      v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7F0, &qword_268F9F570);
      sub_268DA6E24();
      sub_268F9B234();
      v221 = v474[2];

      if (v221)
      {
        v218 = v221;
        v216 = v221;
        sub_268F9A064();
        v217 = v474[1];

        if (v217)
        {
          v215 = v217;
          v213 = v217;
          v77 = sub_268DDA6B0();
          v211 = *v77;
          v212 = v77[1];

          v214 = sub_268F9A0A4();

          if (v214)
          {
            v210 = v214;
            v474[0] = v214;
            v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
            sub_268DA5FC0();
            v78 = v224;
            sub_268F9AF94();
            v209 = v78;
            if (v78)
            {
              __break(1u);
LABEL_107:
              v108 = v173;

              sub_268D35038(&v493);

              v110 = v108;
              return v364;
            }

            sub_268CD7930(v474);
            v205 = sub_268F99F64();
            v206 = *(v205 - 8);
            v207 = v205 - 8;
            if ((*(v206 + 48))(v432, 1) != 1)
            {
              v198 = sub_268F99F44();
              v199 = v79;
              (*(v206 + 8))(v432, v205);
              v200 = sub_268F9AE94();
              v201 = v80;

              v202 = v200;
              v203 = v201;
              v204 = v209;
LABEL_79:
              v191 = v204;
              v197 = v203;
              v196 = v202;
              v193 = v437 + 16;
              v192 = &v483;
              v194 = 0;
              swift_beginAccess();

              v81 = v437;
              v82 = v197;
              *(v437 + 16) = v196;
              *(v81 + 24) = v82;

              swift_endAccess();
              v195 = &v482;
              swift_beginAccess();
              swift_endAccess();
              v481[0] = v196;
              v481[1] = v197;
              v190 = v197 == 0;
              v189 = v190;
              sub_268CD9D30(v481);
              if (!v189)
              {
                v168 = v191;
                goto LABEL_93;
              }

              v185 = sub_268F9B284();
              v187 = *sub_268DC7EA8();
              MEMORY[0x277D82BE0](v187);
              v186 = sub_268F9B734();
              sub_268F9AC14(v185, &dword_268CBE000, v187, v404, 49, 2);

              MEMORY[0x277D82BD8](v187);

              v188 = sub_268F9A5A4();

              if (v188 && (v184 = v188, v182 = v188, v474[6] = v188, v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7F0, &qword_268F9F570), sub_268DA6E24(), sub_268F9B234(), v183 = v474[5], , v183 && (v180 = v183, v178 = v183, sub_268F9A064(), v179 = v474[4], , v179)))
              {
                v177 = v179;
                v174 = v179;
                v175 = sub_268F99F04();

                v176 = v175;
              }

              else
              {
                v176 = 0;
              }

              v83 = v191;
              v169 = v176;
              v84 = sub_268E2905C(v444, v176, v429);
              v170 = v83;
              v171 = v84;
              v172 = v85;
              v173 = v83;
              if (!v83)
              {
                v166 = v172;
                v165 = v171;

                v167 = &v475;
                swift_beginAccess();
                v86 = v437;
                v87 = v166;
                *(v437 + 16) = v165;
                *(v86 + 24) = v87;

                swift_endAccess();
                v168 = v170;
LABEL_93:
                v150 = v168;
                v164 = sub_268F9B284();
                v163 = *sub_268DC7EA8();
                MEMORY[0x277D82BE0](v163);

                v151 = *(v437 + 16);
                v152 = *(v437 + 24);

                v154 = 32;
                v155 = 7;
                v88 = swift_allocObject();
                v89 = v152;
                v156 = v88;
                *(v88 + 16) = v151;
                *(v88 + 24) = v89;
                v153 = 17;
                v158 = swift_allocObject();
                *(v158 + 16) = 32;
                v159 = swift_allocObject();
                *(v159 + 16) = 8;
                v90 = swift_allocObject();
                v91 = v156;
                v157 = v90;
                *(v90 + 16) = v424;
                *(v90 + 24) = v91;
                v92 = swift_allocObject();
                v93 = v157;
                v161 = v92;
                *(v92 + 16) = v425;
                *(v92 + 24) = v93;
                v160 = sub_268F9B734();
                v162 = v94;

                v95 = v158;
                v96 = v162;
                *v162 = v426;
                v96[1] = v95;

                v97 = v159;
                v98 = v162;
                v162[2] = v427;
                v98[3] = v97;

                v99 = v161;
                v100 = v162;
                v162[4] = v428;
                v100[5] = v99;
                sub_268CD0F7C();

                if (os_log_type_enabled(v163, v164))
                {
                  v143 = sub_268F9B3A4();
                  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
                  v144 = sub_268CD5448(0, v142, v142);
                  v145 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                  v146 = &v480;
                  v480 = v143;
                  v147 = &v479;
                  v479 = v144;
                  v148 = &v478;
                  v478 = v145;
                  sub_268CD549C(2, &v480);
                  sub_268CD549C(1, v146);
                  v101 = v150;
                  v476 = v426;
                  v477 = v158;
                  sub_268CD54B0(&v476, v146, v147, v148);
                  v149 = v101;
                  if (v101)
                  {

                    __break(1u);
                  }

                  else
                  {
                    v476 = v427;
                    v477 = v159;
                    sub_268CD54B0(&v476, &v480, &v479, &v478);
                    v140 = 0;
                    v476 = v428;
                    v477 = v161;
                    sub_268CD54B0(&v476, &v480, &v479, &v478);
                    v139 = 0;
                    _os_log_impl(&dword_268CBE000, v163, v164, "Labeled value is %s.", v143, 0xCu);
                    sub_268CD54FC(v144, 0, v142);
                    sub_268CD54FC(v145, 1, MEMORY[0x277D84F70] + 8);
                    sub_268F9B384();

                    v141 = v139;
                  }
                }

                else
                {

                  v141 = v150;
                }

                v138 = v141;
                MEMORY[0x277D82BD8](v163);

                v136 = sub_268F9A5B4();

                v137 = sub_268E2A500(v136);

                v102 = v493;
                v493 = v137;
                MEMORY[0x277D82BD8](v102);

                v260 = v138;
                goto LABEL_101;
              }

              goto LABEL_107;
            }

            sub_268D9C0BC(v432);
            v222 = v209;
          }

          else
          {
            v222 = v224;
          }
        }

        else
        {
          v222 = v224;
        }
      }

      else
      {
        v222 = v224;
      }
    }

    else
    {
      v222 = v224;
    }

    v202 = 0;
    v203 = 0;
    v204 = v222;
    goto LABEL_79;
  }

  v352 = sub_268F9B284();
  v354 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v354);
  v353 = sub_268F9B734();
  sub_268F9AC14(v352, &dword_268CBE000, v354, v404, 49, 2);

  MEMORY[0x277D82BD8](v354);

  v355 = sub_268F9A314();

  if (v355 && (v351 = v355, v349 = v355, v450[3] = v355, v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7F0, &qword_268F9F570), sub_268DA6E24(), sub_268F9B234(), v350 = v450[2], , v350 && (v347 = v350, v345 = v350, sub_268F9A064(), v346 = v450[1], , v346)))
  {
    v344 = v346;
    v341 = v346;
    v342 = sub_268F99F04();

    v343 = v342;
  }

  else
  {
    v343 = 0;
  }

  v24 = v358;
  v336 = v343;
  v25 = sub_268E2905C(v444, v343, v429);
  v337 = v24;
  v338 = v25;
  v339 = v26;
  v340 = v24;
  if (!v24)
  {
    v324 = v339;
    v323 = v338;

    v27 = v324;
    v28 = v437;
    *(v437 + 16) = v323;
    *(v28 + 24) = v27;

    v335 = sub_268F9B284();
    v334 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v334);

    v325 = 17;
    v327 = 7;
    v329 = swift_allocObject();
    *(v329 + 16) = 32;
    v330 = swift_allocObject();
    *(v330 + 16) = 8;
    v326 = 32;
    v29 = swift_allocObject();
    v30 = v437;
    v328 = v29;
    *(v29 + 16) = v405;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v328;
    v332 = v31;
    *(v31 + 16) = v406;
    *(v31 + 24) = v32;
    v331 = sub_268F9B734();
    v333 = v33;

    v34 = v329;
    v35 = v333;
    *v333 = v407;
    v35[1] = v34;

    v36 = v330;
    v37 = v333;
    v333[2] = v408;
    v37[3] = v36;

    v38 = v332;
    v39 = v333;
    v333[4] = v409;
    v39[5] = v38;
    sub_268CD0F7C();

    if (os_log_type_enabled(v334, v335))
    {
      v316 = sub_268F9B3A4();
      v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v317 = sub_268CD5448(0, v315, v315);
      v318 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v319 = &v455;
      v455 = v316;
      v320 = &v454;
      v454 = v317;
      v321 = &v453;
      v453 = v318;
      sub_268CD549C(2, &v455);
      sub_268CD549C(1, v319);
      v40 = v337;
      v451 = v407;
      v452 = v329;
      sub_268CD54B0(&v451, v319, v320, v321);
      v322 = v40;
      if (v40)
      {

        __break(1u);
      }

      else
      {
        v451 = v408;
        v452 = v330;
        sub_268CD54B0(&v451, &v455, &v454, &v453);
        v313 = 0;
        v451 = v409;
        v452 = v332;
        sub_268CD54B0(&v451, &v455, &v454, &v453);
        v312 = 0;
        _os_log_impl(&dword_268CBE000, v334, v335, "Resulting environment labeled value is %s", v316, 0xCu);
        sub_268CD54FC(v317, 0, v315);
        sub_268CD54FC(v318, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();

        v314 = v312;
      }
    }

    else
    {

      v314 = v337;
    }

    v310 = v314;
    MEMORY[0x277D82BD8](v334);
    v311 = v310;
    goto LABEL_33;
  }

  v112 = v340;
  v116 = 0;

  v104 = v112;
  v456 = v112;
  v113 = sub_268F9B284();
  v115 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v115);
  v114 = sub_268F9B734();
  sub_268F9AC14(v113, &dword_268CBE000, v115, v410, 92, 2);

  MEMORY[0x277D82BD8](v115);
  v105 = v116;
  v106 = sub_268E1E080(v444);
  v117 = v105;
  v118 = v106;
  v119 = v105;
  if (!v105)
  {
    v111 = v118;

    sub_268D35038(&v493);

    v134 = v111;
    v135 = v117;
    return v134;
  }

  v109 = v119;

  sub_268D35038(&v493);

  v110 = v109;
  return v364;
}