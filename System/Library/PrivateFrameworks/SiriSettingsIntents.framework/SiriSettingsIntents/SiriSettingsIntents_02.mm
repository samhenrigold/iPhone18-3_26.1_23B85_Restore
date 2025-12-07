uint64_t sub_268D10548()
{
  v14 = v0[160];
  v15 = v0[146];
  v8 = v0[114];
  v0[82] = v0;

  sub_268D28588(v8);

  v1 = v14;
  v0[94] = v14;
  v2 = sub_268DC7B48();
  v13 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v12 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v3;
  v4 = v14;
  v0[95] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v9 = sub_268F9AE64();
  v10 = v5;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService makeIntentHandledDialogSyncRF2 | ChangedBinaryValueTo execution error %@", 106, 2, &dword_268CBE000, v13, v12);

  MEMORY[0x277D82BD8](v13);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  sub_268D287E8(v0 + 93);

  MEMORY[0x277D82BD8](v15);

  sub_268CD9D30((v0 + 2));

  v6 = *(v0[82] + 8);

  return v6();
}

uint64_t sub_268D10884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 520) = v3;
  *(v4 + 512) = a3;
  *(v4 + 504) = a2;
  *(v4 + 336) = v4;
  *(v4 + 344) = 0;
  *(v4 + 352) = 0;
  *(v4 + 360) = 0;
  *(v4 + 368) = 0;
  *(v4 + 856) = 0;
  *(v4 + 864) = 0;
  *(v4 + 872) = 0;
  *(v4 + 400) = 0;
  *(v4 + 857) = 0;
  *(v4 + 256) = 0;
  *(v4 + 264) = 0;
  *(v4 + 408) = 0;
  *(v4 + 272) = 0;
  *(v4 + 280) = 0;
  *(v4 + 288) = 0;
  *(v4 + 296) = 0;
  *(v4 + 424) = 0;
  *(v4 + 440) = 0;
  *(v4 + 456) = 0;
  *(v4 + 488) = 0;
  *(v4 + 880) = 0;
  *(v4 + 320) = 0;
  *(v4 + 328) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();
  v5 = sub_268F9AB24();
  *(v4 + 544) = v5;
  *(v4 + 552) = *(v5 - 8);
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 344) = a1;
  *(v4 + 352) = a2;
  *(v4 + 360) = a3;
  *(v4 + 368) = v3;

  return MEMORY[0x2822009F8](sub_268D10A90, 0);
}

uint64_t sub_268D10A90(uint64_t a1)
{
  v133 = v1;
  v125 = v1[64];
  v124 = v1[63];
  v1[42] = v1;
  v2 = sub_268DC7B48();
  v123 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v122 = sub_268F9B284();
  v1[72] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v120 = v3;
  MEMORY[0x277D82BE0](v124);
  v1[47] = v124;
  sub_268CD7620();
  sub_268D28940();
  v118 = sub_268F9AE74();
  v119 = v4;
  v120[3] = MEMORY[0x277D837D0];
  v121 = sub_268CDD224();
  v1[73] = v121;
  v120[4] = v121;
  *v120 = v118;
  v120[1] = v119;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService makeIntentConfirmationDialogRF2 | INSetBinarySettingIntent requires confirmation %@", 117, 2, &dword_268CBE000, v123, v122);

  MEMORY[0x277D82BD8](v123);
  sub_268D23814(v124, v125, v1 + 12);
  memcpy(v1 + 7, v1 + 12, 0x28uLL);
  if (!v1[8])
  {
    sub_268D284D4();
    swift_allocError();
    *v49 = 4;
    swift_willThrow();
    goto LABEL_69;
  }

  v116 = *(v117 + 512);
  v114 = *(v117 + 504);
  memcpy((v117 + 16), (v117 + 56), 0x28uLL);
  sub_268DAB218(v114);
  *(v117 + 856) = v126;
  v115 = *(v117 + 32);
  MEMORY[0x277D82BE0](v116);
  if (v116)
  {
    v112 = *(v117 + 512);
    v113 = [v112 oldValue];
    MEMORY[0x277D82BD8](v112);
    v5 = sub_268D2403C(v115, v113, 0);
  }

  else
  {
    v5 = sub_268D2403C(v115, 0, 1);
  }

  v111 = v5;
  *(v117 + 858) = v5;
  if (v5 == 2)
  {
    v51 = *(v117 + 512);
    v44 = sub_268DC7B48();
    v54 = *v44;
    MEMORY[0x277D82BE0](*v44);
    v53 = sub_268F9B294();
    sub_268F9B734();
    v52 = v45;
    MEMORY[0x277D82BE0](v51);
    *(v117 + 384) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v46 = sub_268F9AE64();
    v52[3] = MEMORY[0x277D837D0];
    v52[4] = v121;
    *v52 = v46;
    v52[1] = v47;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingTemplatingService makeIntentConfirmationDialogRF2 | SetBinarySettingIntent has invalid value %@ while making intent confirmation dialog", 151, 2, &dword_268CBE000, v54, v53);

    MEMORY[0x277D82BD8](v54);
    sub_268D284D4();
    swift_allocError();
    *v48 = 1;
    swift_willThrow();
    sub_268CD9D30(v117 + 16);
    goto LABEL_69;
  }

  *(v117 + 864) = v5 & 1;
  v110 = sub_268D2403C(*(v117 + 40), 0, 1);
  if (v110 == 2)
  {
    v55 = *(v117 + 512);
    v39 = sub_268DC7B48();
    v58 = *v39;
    MEMORY[0x277D82BE0](*v39);
    v57 = sub_268F9B294();
    sub_268F9B734();
    v56 = v40;
    MEMORY[0x277D82BE0](v55);
    *(v117 + 392) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v41 = sub_268F9AE64();
    v56[3] = MEMORY[0x277D837D0];
    v56[4] = v121;
    *v56 = v41;
    v56[1] = v42;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingTemplatingService makeIntentConfirmationDialogRF2 | SetBinarySettingIntentResponse response has invalid old value %@", 132, 2, &dword_268CBE000, v58, v57);

    MEMORY[0x277D82BD8](v58);
    sub_268D284D4();
    swift_allocError();
    *v43 = 3;
    swift_willThrow();
    sub_268CD9D30(v117 + 16);
    goto LABEL_69;
  }

  v102 = *(v117 + 568);
  v101 = *(v117 + 560);
  v103 = *(v117 + 544);
  v99 = *(v117 + 520);
  v100 = *(v117 + 552);
  *(v117 + 872) = v110 & 1;
  sub_268D29170();
  *(v117 + 400) = sub_268CF0C44();
  v6 = sub_268DB98D4();
  v106 = *v6;
  v107 = v6[1];
  v108 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v109 = *v7;
  MEMORY[0x277D82BE0](*v7);
  (*(v100 + 16))(v102, v99 + qword_2802DBFD8, v103);
  sub_268F9AB14();
  v105 = sub_268F9AB04();
  v104 = *(v100 + 8);
  v104(v101, v103);
  v104(v102, v103);
  sub_268DB9934(v106, v107, v108, v109, (v105 ^ 1) & 1);
  *&v8 = MEMORY[0x277D82BD8](v109).n128_u64[0];
  switch(v126)
  {
    case 65:
LABEL_64:
      v36 = sub_268DB98D4();
      v61 = *v36;
      v59 = v36[1];
      v60 = *(v36 + 16);
      v37 = sub_268DC7BA8();
      v62 = *v37;
      MEMORY[0x277D82BE0](*v37);
      sub_268DB9B78(v61, v59, v60, v62);
      MEMORY[0x277D82BD8](v62);
      sub_268D284D4();
      swift_allocError();
      *v38 = 0;
      swift_willThrow();
      MEMORY[0x277D82BD8](*(v117 + 400));
      sub_268CD9D30(v117 + 16);
LABEL_69:

      v50 = *(*(v117 + 336) + 8);

      return v50();
    case 0:
    case 16:
      goto LABEL_43;
    case 26:
      *(v117 + 857) = 1;

      v127 = 26;
      sub_268E12DF8(&v127);
      v76 = v32;

      if ((v76 & 0xFF00) == 0x400)
      {
        v74 = 0;
        v75 = 0;
      }

      else
      {
        v74 = sub_268E127A4(SHIBYTE(v76));
        v75 = v33;
      }

      *(v117 + 800) = v75;
      *(v117 + 792) = v74;
      *(v117 + 256) = v74;
      *(v117 + 264) = v75;

      if (v75)
      {
        *(v117 + 288) = v74;
        *(v117 + 296) = v75;

        v73 = sub_268F23C10();

        if (v73)
        {

          v68 = sub_268F9AE14();

          v69 = [v73 integerForKey_];
          MEMORY[0x277D82BD8](v68);
          MEMORY[0x277D82BD8](v73);
          v70 = v69;
          v71 = 0;
        }

        else
        {
          v70 = 0;
          v71 = 1;
        }

        v128 = v70;
        v129 = v71 & 1;
        if (v71)
        {
          v67 = 0;
        }

        else
        {
          v67 = v128;
        }

        if (v67 >= 1)
        {
          *(v117 + 857) = 0;
          v66 = 0;
        }

        else
        {
          v66 = 1;
        }

        v72 = v66;
      }

      else
      {
        v72 = 1;
      }

      v63 = *(v117 + 520);
      *(v117 + 808) = *(v63 + qword_2802DC000);

      type metadata accessor for SettingsBinarySetting(0);
      sub_268D28814((v117 + 16), (v117 + 136));
      v65 = SettingsBinarySetting.__allocating_init(settingId:value:)(*(v117 + 16), *(v117 + 24), v110 & 1);
      *(v117 + 816) = v65;
      v64 = *(v63 + qword_2802DBFE0);
      *(v117 + 824) = v64;

      v34 = swift_task_alloc();
      v27 = v64;
      v35 = v34;
      v29 = v65;
      *(v117 + 832) = v35;
      *v35 = *(v117 + 336);
      v35[1] = sub_268D13944;
      v30 = v111 & 1;
      v31 = v72 & 1;

      return sub_268DEFCF4(v29, v30, v27, v31);
    case 29:
      v83 = *(v117 + 520);
      *(v117 + 672) = *(v83 + qword_2802DC000);

      v84 = *(v83 + qword_2802DBFE0);
      *(v117 + 680) = v84;

      v19 = swift_task_alloc();
      *(v117 + 688) = v19;
      *v19 = *(v117 + 336);
      v19[1] = sub_268D12F08;

      return sub_268DF2550(v84);
    case 35:
    case 36:
      *(v117 + 712) = *(*(v117 + 520) + qword_2802DC000);

      v132 = v126;
      *(v117 + 304) = BinarySettingIdentifier.rawValue.getter();
      *(v117 + 312) = v20;
      if (*(v117 + 312))
      {
        v21 = *(v117 + 312);
        v130 = *(v117 + 304);
        v131 = v21;
      }

      else
      {
        v130 = sub_268F9AEF4();
        v131 = v22;
        if (*(v117 + 312))
        {
          sub_268CD9D30(v117 + 304);
        }
      }

      v80 = *(v117 + 528);
      sub_268F9A9A4();
      v23 = sub_268F9A9C4();
      (*(*(v23 - 8) + 56))(v80, 0, 1);

      v81 = sub_268D36960();

      v82 = sub_268D38D64();

      v24 = swift_task_alloc();
      *(v117 + 720) = v24;
      *v24 = *(v117 + 336);
      v24[1] = sub_268D1326C;
      v25 = *(v117 + 528);

      return sub_268DF3E24(v25, v81 & 1, v82 & 1);
    case 45:
      v9 = *(v117 + 504);
      *(v117 + 472) = 0;
      v98 = [v9 settingMetadata];
      if (v98 && (v97 = [v98 targetApp], *&v10 = MEMORY[0x277D82BD8](v98).n128_u64[0], v97))
      {
        v11 = [v97 bundleIdentifier];
        v96 = v11;
        if (v11)
        {
          v92 = sub_268F9AE24();
          v93 = v12;
          MEMORY[0x277D82BD8](v96);
          v94 = v92;
          v95 = v93;
        }

        else
        {
          v94 = 0;
          v95 = 0;
        }

        MEMORY[0x277D82BD8](v97);
        v90 = v94;
        v91 = v95;
      }

      else
      {
        v90 = 0;
        v91 = 0;
      }

      if (v91)
      {
        *(v117 + 320) = v90;
        *(v117 + 328) = v91;
        sub_268F9A994();

        *(v117 + 472) = sub_268DE1C68(v90, v91);
      }

      v89 = *(v117 + 520);
      v13 = sub_268DC7B48();
      v88 = *v13;
      MEMORY[0x277D82BE0](*v13);
      v87 = sub_268F9B284();
      sub_268F9B734();
      v86 = v14;
      v85 = *(v117 + 472);

      *(v117 + 480) = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0C0, &qword_268F9D9D0);
      v15 = sub_268F9AE64();
      v86[3] = MEMORY[0x277D837D0];
      v86[4] = v121;
      *v86 = v15;
      v86[1] = v16;
      sub_268CD0F7C();
      sub_268F9AC04("SetBinarySettingTemplatingService makeIntentConfirmationDialogRF2 | Getting confirmation mode for announce notifications. App id: %@", 132, 2, &dword_268CBE000, v88, v87);

      MEMORY[0x277D82BD8](v88);
      *(v117 + 592) = *(v89 + qword_2802DC040);

      v17 = swift_task_alloc();
      *(v117 + 600) = v17;
      *v17 = *(v117 + 336);
      v17[1] = sub_268D127E8;

      return sub_268E02374();
    case 51:
LABEL_43:
      v77 = *(v117 + 520);
      *(v117 + 744) = *(v77 + qword_2802DC000);

      type metadata accessor for SettingsBinarySetting(0);
      sub_268D28814((v117 + 16), (v117 + 176));
      v79 = SettingsBinarySetting.__allocating_init(settingId:value:)(*(v117 + 16), *(v117 + 24), 0);
      *(v117 + 752) = v79;
      v78 = *(v77 + qword_2802DBFE0);
      *(v117 + 760) = v78;

      v26 = swift_task_alloc();
      v27 = v78;
      v28 = v26;
      v29 = v79;
      *(v117 + 768) = v28;
      *v28 = *(v117 + 336);
      v28[1] = sub_268D135D0;
      v30 = v111 & 1;
      v31 = 0;

      return sub_268DEFCF4(v29, v30, v27, v31);
    default:
      goto LABEL_64;
  }
}

uint64_t sub_268D127E8(char a1)
{
  v5 = *v2;
  *(v5 + 336) = *v2;
  *(v5 + 859) = a1;
  *(v5 + 608) = v1;

  if (v1)
  {
    v3 = sub_268D13EE0;
  }

  else
  {

    v3 = sub_268D12970;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D12970()
{
  v1 = *(v0 + 859);
  v7 = v1;
  v10 = *(v0 + 858);
  v8 = *(v0 + 536);
  v6 = *(v0 + 520);
  *(v0 + 336) = v0;
  *(v0 + 880) = v1;
  *(v0 + 616) = *(v6 + qword_2802DC000);

  type metadata accessor for SettingsBinarySetting(0);
  sub_268D28814((v0 + 16), (v0 + 216));
  v13 = SettingsBinarySetting.__allocating_init(settingId:value:)(*(v0 + 16), *(v0 + 24), 0);
  *(v0 + 624) = v13;
  v11 = *(v6 + qword_2802DBFE0);
  *(v0 + 632) = v11;

  sub_268DFC86C(v7);
  sub_268F9A9A4();
  v2 = sub_268F9A9C4();
  (*(*(v2 - 8) + 56))(v8, 0, 1);
  v12 = *(v0 + 472);
  *(v0 + 640) = v12;

  v3 = swift_task_alloc();
  v9[81] = v3;
  *v3 = v9[42];
  v3[1] = sub_268D12B68;
  v4 = v9[67];

  return sub_268DF0E44(v13, v10 & 1, v11, v4, v12);
}

uint64_t sub_268D12B68(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[42] = *v2;
  v7[82] = a1;
  v7[83] = v1;

  if (v1)
  {
    v3 = sub_268D14208;
  }

  else
  {
    v5 = *(v6 + 520);

    sub_268D28588(v5);

    v3 = sub_268D12D30;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D12D30()
{
  v1 = v0[82];
  v7 = v1;
  v0[42] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[50];
  v0[50] = v7;
  MEMORY[0x277D82BD8](v2);
  sub_268D287E8(v0 + 59);
  v12 = v0[82];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[50]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[42] + 8);

  return v5(v12);
}

uint64_t sub_268D12F08(uint64_t a1)
{
  v5 = *v2;
  v5[42] = *v2;
  v5[87] = a1;
  v5[88] = v1;

  if (v1)
  {
    v3 = sub_268D14574;
  }

  else
  {

    v3 = sub_268D130A0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D130A0()
{
  v1 = v0[87];
  v7 = v1;
  v0[42] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[50];
  v0[50] = v7;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[87];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[50]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[42] + 8);

  return v5(v12);
}

uint64_t sub_268D1326C(uint64_t a1)
{
  v6 = *v2;
  v5 = *v2 + 16;
  v6[42] = *v2;
  v6[91] = a1;
  v6[92] = v1;

  if (v1)
  {
    v3 = sub_268D14BA8;
  }

  else
  {
    sub_268D28588(*(v5 + 512));

    v3 = sub_268D13404;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D13404()
{
  v1 = v0[91];
  v7 = v1;
  v0[42] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[50];
  v0[50] = v7;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[91];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[50]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[42] + 8);

  return v5(v12);
}

uint64_t sub_268D135D0(uint64_t a1)
{
  v5 = *v2;
  v5[42] = *v2;
  v5[97] = a1;
  v5[98] = v1;

  if (v1)
  {
    v3 = sub_268D14EB0;
  }

  else
  {

    v3 = sub_268D13778;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D13778()
{
  v1 = v0[97];
  v7 = v1;
  v0[42] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[50];
  v0[50] = v7;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[97];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[50]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[42] + 8);

  return v5(v12);
}

uint64_t sub_268D13944(uint64_t a1)
{
  v5 = *v2;
  v5[42] = *v2;
  v5[105] = a1;
  v5[106] = v1;

  if (v1)
  {
    v3 = sub_268D1487C;
  }

  else
  {

    v3 = sub_268D13AEC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D13AEC()
{
  v1 = v0[105];
  v16 = v1;
  v17 = v0[100];
  v0[42] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[50];
  v0[50] = v16;
  MEMORY[0x277D82BD8](v2);

  if (v17)
  {
    v13 = v15[100];
    v15[34] = v15[99];
    v15[35] = v13;

    v14 = sub_268F23C10();

    if (v14)
    {

      v12 = sub_268F9AE14();

      [v14 setInteger:1 forKey:v12];
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v14);
    }
  }

  v11 = v15[105];
  v3 = sub_268DB98D4();
  v9 = *v3;
  v7 = v3[1];
  v8 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v10 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v15[50]);
  sub_268CD9D30((v15 + 2));

  v5 = *(v15[42] + 8);

  return v5(v11);
}

uint64_t sub_268D13EE0()
{
  v0[42] = v0;

  v19 = v0[76];
  v11 = v0[73];
  v1 = v19;
  v0[61] = v19;
  v2 = sub_268DC7B48();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[62] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService makeIntentConfirmationDialogRF2 | ConfirmBeforeTurningOffAnnounceNotifications execution error %@", 131, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB98D4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  sub_268D287E8(v0 + 59);
  MEMORY[0x277D82BD8](v0[50]);
  sub_268CD9D30((v0 + 2));

  v9 = *(v0[42] + 8);

  return v9();
}

uint64_t sub_268D14208()
{
  v11 = v0[67];
  v0[42] = v0;

  sub_268D28588(v11);

  v20 = v0[83];
  v12 = v0[73];
  v1 = v20;
  v0[61] = v20;
  v2 = sub_268DC7B48();
  v15 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v14 = sub_268F9B294();
  sub_268F9B734();
  v13 = v3;
  v4 = v20;
  v0[62] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = v12;
  *v13 = v5;
  v13[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService makeIntentConfirmationDialogRF2 | ConfirmBeforeTurningOffAnnounceNotifications execution error %@", 131, 2, &dword_268CBE000, v15, v14);

  MEMORY[0x277D82BD8](v15);
  v7 = sub_268DB98D4();
  v18 = *v7;
  v16 = v7[1];
  v17 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v19 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v18, v16, v17, v19);
  MEMORY[0x277D82BD8](v19);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  sub_268D287E8(v0 + 59);
  MEMORY[0x277D82BD8](v0[50]);
  sub_268CD9D30((v0 + 2));

  v9 = *(v0[42] + 8);

  return v9();
}

uint64_t sub_268D14574()
{
  v19 = v0[88];
  v11 = v0[73];
  v0[42] = v0;

  v1 = v19;
  v0[57] = v19;
  v2 = sub_268DC7B48();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[58] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService makeIntentConfirmationDialogRF2 | ConfirmBeforeTurningOffLocationServices execution error %@", 126, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB98D4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[50]);
  sub_268CD9D30((v0 + 2));

  v9 = *(v0[42] + 8);

  return v9();
}

uint64_t sub_268D1487C()
{
  v19 = v0[106];
  v11 = v0[73];
  v0[42] = v0;

  v1 = v19;
  v0[51] = v19;
  v2 = sub_268DC7B48();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[52] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService makeIntentConfirmationDialogRF2 | ConfirmBeforeSeveringConnectionToSiri execution error %@", 124, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB98D4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[50]);
  sub_268CD9D30((v0 + 2));

  v9 = *(v0[42] + 8);

  return v9();
}

uint64_t sub_268D14BA8()
{
  v20 = v0[92];
  v12 = v0[73];
  v1 = v0[66];
  v0[42] = v0;
  sub_268D28588(v1);

  v2 = v20;
  v0[55] = v20;
  v3 = sub_268DC7B48();
  v15 = *v3;
  MEMORY[0x277D82BE0](*v3);
  v14 = sub_268F9B294();
  sub_268F9B734();
  v13 = v4;
  v5 = v20;
  v0[56] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = v12;
  *v13 = v6;
  v13[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService makeIntentConfirmationDialogRF2 | HotspotAirplaneModeEnabledOrCellularDisabled execution error %@", 131, 2, &dword_268CBE000, v15, v14);

  MEMORY[0x277D82BD8](v15);
  v8 = sub_268DB98D4();
  v18 = *v8;
  v16 = v8[1];
  v17 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v19 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v18, v16, v17, v19);
  MEMORY[0x277D82BD8](v19);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[50]);
  sub_268CD9D30((v0 + 2));

  v10 = *(v0[42] + 8);

  return v10();
}

uint64_t sub_268D14EB0()
{
  v19 = v0[98];
  v11 = v0[73];
  v0[42] = v0;

  v1 = v19;
  v0[53] = v19;
  v2 = sub_268DC7B48();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[54] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService makeIntentConfirmationDialogRF2 | ConfirmBeforeSeveringConnectionToSiri execution error %@", 124, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB98D4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[50]);
  sub_268CD9D30((v0 + 2));

  v9 = *(v0[42] + 8);

  return v9();
}

uint64_t sub_268D151C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 272) = v3;
  *(v4 + 264) = a3;
  *(v4 + 256) = a2;
  *(v4 + 176) = v4;
  *(v4 + 184) = 0;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 360) = 0;
  *(v4 + 232) = 0;
  *(v4 + 248) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 280) = v5;
  *(v4 + 288) = *(v5 - 8);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 184) = a1;
  *(v4 + 192) = a2;
  *(v4 + 200) = a3;
  *(v4 + 208) = v3;

  return MEMORY[0x2822009F8](sub_268D15344, 0);
}

uint64_t sub_268D15344()
{
  v1 = v0[33];
  v2 = v0[32];
  v0[22] = v0;
  sub_268D23814(v2, v1, v0 + 12);
  memcpy(v0 + 7, v0 + 12, 0x28uLL);
  if (!v0[8])
  {
    goto LABEL_12;
  }

  v37 = *(v38 + 264);
  memcpy((v38 + 16), (v38 + 56), 0x28uLL);
  MEMORY[0x277D82BE0](v37);
  if (v37)
  {
    v33 = *(v38 + 264);
    v34 = [v33 oldValue];
    MEMORY[0x277D82BD8](v33);
    v35 = v34;
    v36 = 0;
  }

  else
  {
    v35 = 0;
    v36 = 1;
  }

  if (v36)
  {
    sub_268CD9D30(v38 + 16);
LABEL_12:
    sub_268D284D4();
    swift_allocError();
    *v12 = 4;
    swift_willThrow();
    goto LABEL_13;
  }

  *(v38 + 216) = v35;
  v32 = sub_268D2403C(v35, 0, 1);
  if (v32 == 2)
  {
    v14 = *(v38 + 264);
    v8 = sub_268DC7B48();
    v19 = *v8;
    MEMORY[0x277D82BE0](*v8);
    v18 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v17 = v9;
    MEMORY[0x277D82BE0](v14);
    *(v38 + 224) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v15 = sub_268F9AE64();
    v16 = v10;
    v17[3] = MEMORY[0x277D837D0];
    v17[4] = sub_268CDD224();
    *v17 = v15;
    v17[1] = v16;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingTemplatingService makeIntentConfirmationCancelledDialogRF2 | response has invalid old value %@ while forming confirmation cancelled dialog.", 155, 2, &dword_268CBE000, v19, v18);

    MEMORY[0x277D82BD8](v19);
    sub_268D284D4();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();
    sub_268CD9D30(v38 + 16);
LABEL_13:

    v13 = *(*(v38 + 176) + 8);

    return v13();
  }

  v3 = *(v38 + 304);
  v21 = *(v38 + 296);
  v22 = *(v38 + 280);
  v29 = *(v38 + 272);
  v20 = *(v38 + 288);
  *(v38 + 360) = v32 & 1;
  v4 = sub_268DB98D4();
  v25 = *v4;
  v26 = v4[1];
  v27 = *(v4 + 16);
  v5 = sub_268DC7BA8();
  v28 = *v5;
  MEMORY[0x277D82BE0](*v5);
  (*(v20 + 16))(v3, v29 + qword_2802DBFD8, v22);
  sub_268F9AB14();
  v24 = sub_268F9AB04();
  v23 = *(v20 + 8);
  v23(v21, v22);
  v23(v3, v22);
  sub_268DB9934(v25, v26, v27, v28, (v24 ^ 1) & 1);
  MEMORY[0x277D82BD8](v28);
  *(v38 + 312) = *(v29 + qword_2802DC000);

  type metadata accessor for SettingsBinarySetting(0);
  sub_268D28814((v38 + 16), (v38 + 136));
  v31 = SettingsBinarySetting.__allocating_init(settingId:value:)(*(v38 + 16), *(v38 + 24), v32 & 1);
  *(v38 + 320) = v31;
  v30 = *(v29 + qword_2802DBFE0);
  *(v38 + 328) = v30;

  v6 = swift_task_alloc();
  *(v38 + 336) = v6;
  *v6 = *(v38 + 176);
  v6[1] = sub_268D15A7C;

  return sub_268DF75A4(v31, v30);
}

uint64_t sub_268D15A7C(uint64_t a1)
{
  v5 = *v2;
  v5[22] = *v2;
  v5[43] = a1;
  v5[44] = v1;

  if (v1)
  {
    v3 = sub_268D15D64;
  }

  else
  {

    v3 = sub_268D15C20;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D15C20(uint64_t a1)
{
  v2 = v1[43];
  v1[22] = v1;
  v1[31] = v2;
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  sub_268CD9D30((v1 + 2));

  v5 = *(*(v12 + 176) + 8);
  v6 = *(v12 + 344);

  return v5(v6);
}

uint64_t sub_268D15D64()
{
  v19 = v0[44];
  v0[22] = v0;

  v1 = v19;
  v0[29] = v19;
  v2 = sub_268DC7B48();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[30] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService makeIntentConfirmationCancelledDialogRF2 | RetainingCurrentBinaryValue execution error %@", 123, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB98D4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  sub_268CD9D30((v0 + 2));

  v8 = *(v0[22] + 8);

  return v8();
}

uint64_t sub_268D16064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 144) = v3;
  *(v4 + 136) = a3;
  *(v4 + 128) = a2;
  *(v4 + 48) = v4;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 384) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 392) = 0;
  sub_268F99834();
  *(v4 + 152) = swift_task_alloc();
  v5 = sub_268F99BC4();
  *(v4 + 160) = v5;
  *(v4 + 168) = *(v5 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;

  return MEMORY[0x2822009F8](sub_268D16208, 0);
}

uint64_t sub_268D16208()
{
  v1 = *(v0 + 136);
  v60 = v1;
  *(v0 + 48) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v60)
  {
    v55 = *(v59 + 136);
    v56 = [v55 code];
    MEMORY[0x277D82BD8](v55);
    v57 = v56;
    v58 = 0;
  }

  else
  {
    v57 = 0;
    v58 = 1;
  }

  if (v58)
  {
    v25 = sub_268DC7B48();
    v29 = *v25;
    MEMORY[0x277D82BE0](*v25);
    v28 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("SetBinarySettingTemplatingService makeFailureHandlingIntentDialogSyncRF2 | SetBinarySettingIntentResponse does not exist", 120, 2, &dword_268CBE000, v29, v28);

    MEMORY[0x277D82BD8](v29);
    sub_268D284D4();
    swift_allocError();
    *v26 = 4;
    swift_willThrow();
    goto LABEL_39;
  }

  *(v59 + 88) = v57;
  sub_268F99804();
  sub_268D18250();

  sub_268F99B94();

  if (v57 == 6)
  {
    *(v59 + 104) = *(v59 + 128);
    v15 = sub_268CD7620();
    v45._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v15, &protocol witness table for INSetBinarySettingIntent);
    v45._object = v16;
    *(v59 + 296) = v16;
    if (v16)
    {
      *(v59 + 16) = v45._countAndFlagsBits;
      *(v59 + 24) = v16;

      BinarySettingIdentifier.init(rawValue:)(v45);
      if (v61 != 65)
      {
        *(v59 + 384) = v61;
        *(v59 + 385) = v61;
        *(v59 + 386) = 16;
        sub_268D28AD4();
        v17 = sub_268F9B754();
        if (v17)
        {
          v39 = *(v59 + 144);
          v40 = *(v59 + 128);
          *(v59 + 304) = *(v39 + qword_2802F0748);

          type metadata accessor for SettingsBinarySetting(0);

          v44 = SettingsBinarySetting.__allocating_init(settingId:value:)(v45._countAndFlagsBits, v45._object, 0);
          *(v59 + 312) = v44;
          v41 = *(v39 + qword_2802DBFE0);
          *(v59 + 320) = v41;

          v42 = sub_268D2403C([v40 binaryValue], 0, 1);
          v43 = sub_268CDD6D4();
          v18 = swift_task_alloc();
          v9 = v41;
          v10 = v42;
          v19 = v18;
          v12 = v44;
          *(v59 + 328) = v19;
          *v19 = *(v59 + 48);
          v19[1] = sub_268D17744;
          v13 = v43 & 1;

          return sub_268EB8F90(v12, v9, v10, v13);
        }
      }
    }

    *(v59 + 352) = *(*(v59 + 144) + qword_2802F0748);

    v20 = swift_task_alloc();
    *(v59 + 360) = v20;
    *v20 = *(v59 + 48);
    v20[1] = sub_268D17A14;

    return sub_268EB880C();
  }

  if (v57 == 7)
  {
    *(v59 + 112) = *(v59 + 128);
    v6 = sub_268CD7620();
    v54._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v6, &protocol witness table for INSetBinarySettingIntent);
    v54._object = v7;
    *(v59 + 208) = v7;
    if (v7)
    {
      *(v59 + 32) = v54._countAndFlagsBits;
      *(v59 + 40) = v7;

      BinarySettingIdentifier.init(rawValue:)(v54);
      if (v62 != 65)
      {
        *(v59 + 392) = v62;
        v52 = *sub_268E79858();

        *(v59 + 120) = v52;
        *(v59 + 387) = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
        sub_268D28B4C();
        sub_268D288C8();
        v53 = sub_268F9AFC4();
        sub_268CD7930((v59 + 120));
        if (v53)
        {
          v46 = *(v59 + 144);
          v47 = *(v59 + 128);
          *(v59 + 216) = *(v46 + qword_2802F0748);

          type metadata accessor for SettingsBinarySetting(0);

          v51 = SettingsBinarySetting.__allocating_init(settingId:value:)(v54._countAndFlagsBits, v54._object, 0);
          *(v59 + 224) = v51;
          v48 = *(v46 + qword_2802DBFE0);
          *(v59 + 232) = v48;

          v49 = sub_268D2403C([v47 binaryValue], 0, 1);
          v50 = sub_268CDD6D4();
          v8 = swift_task_alloc();
          v9 = v48;
          v10 = v49;
          v11 = v8;
          v12 = v51;
          *(v59 + 240) = v11;
          *v11 = *(v59 + 48);
          v11[1] = sub_268D171EC;
          v13 = v50 & 1;

          return sub_268EB8F90(v12, v9, v10, v13);
        }
      }
    }

    *(v59 + 264) = *(*(v59 + 144) + qword_2802F0748);

    v14 = swift_task_alloc();
    *(v59 + 272) = v14;
    *v14 = *(v59 + 48);
    v14[1] = sub_268D174BC;

    return sub_268EB880C();
  }

  if (v57 == 8)
  {
    v2 = swift_task_alloc();
    *(v59 + 184) = v2;
    *v2 = *(v59 + 48);
    v2[1] = sub_268D16F78;
    v3 = *(v59 + 136);
    v4 = *(v59 + 128);

    return sub_268D1826C(v4, v3);
  }

  v37 = *(v59 + 176);
  v38 = *(v59 + 160);
  v30 = *(v59 + 136);
  v36 = *(v59 + 168);
  v21 = sub_268DC7B48();
  v35 = *v21;
  MEMORY[0x277D82BE0](*v21);
  v34 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v33 = v22;
  MEMORY[0x277D82BE0](v30);
  *(v59 + 96) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
  v31 = sub_268F9AE64();
  v32 = v23;
  v33[3] = MEMORY[0x277D837D0];
  v33[4] = sub_268CDD224();
  *v33 = v31;
  v33[1] = v32;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService makeFailureHandlingIntentDialogSyncRF2 | unsupported error code: %@", 101, 2, &dword_268CBE000, v35, v34);

  MEMORY[0x277D82BD8](v35);
  sub_268D284D4();
  swift_allocError();
  *v24 = 7;
  swift_willThrow();
  (*(v36 + 8))(v37, v38);
LABEL_39:

  v27 = *(*(v59 + 48) + 8);

  return v27();
}

uint64_t sub_268D16F78(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[24] = a1;
  v5[25] = v1;

  if (v1)
  {
    v3 = sub_268D17C9C;
  }

  else
  {
    v3 = sub_268D170E8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D170E8()
{
  v1 = v0[22];
  v2 = v0[21];
  v3 = v0[20];
  v0[6] = v0;
  (*(v2 + 8))(v1, v3);
  v6 = v0[24];

  v4 = *(v0[6] + 8);

  return v4(v6);
}

uint64_t sub_268D171EC(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[31] = a1;
  v5[32] = v1;

  if (v1)
  {
    v3 = sub_268D17EA4;
  }

  else
  {

    v3 = sub_268D17390;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D17390()
{
  v4 = v0[22];
  v3 = v0[21];
  v5 = v0[20];
  v0[6] = v0;

  (*(v3 + 8))(v4, v5);
  v6 = v0[31];

  v1 = *(v0[6] + 8);

  return v1(v6);
}

uint64_t sub_268D174BC(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[35] = a1;
  v5[36] = v1;

  if (v1)
  {
    v3 = sub_268D17D90;
  }

  else
  {

    v3 = sub_268D17640;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D17640()
{
  v1 = v0[22];
  v2 = v0[21];
  v3 = v0[20];
  v0[6] = v0;
  (*(v2 + 8))(v1, v3);
  v6 = v0[35];

  v4 = *(v0[6] + 8);

  return v4(v6);
}

uint64_t sub_268D17744(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[42] = a1;
  v5[43] = v1;

  if (v1)
  {
    v3 = sub_268D18104;
  }

  else
  {

    v3 = sub_268D178E8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D178E8()
{
  v4 = v0[22];
  v3 = v0[21];
  v5 = v0[20];
  v0[6] = v0;

  (*(v3 + 8))(v4, v5);
  v6 = v0[42];

  v1 = *(v0[6] + 8);

  return v1(v6);
}

uint64_t sub_268D17A14(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[46] = a1;
  v5[47] = v1;

  if (v1)
  {
    v3 = sub_268D17FF0;
  }

  else
  {

    v3 = sub_268D17B98;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D17B98()
{
  v1 = v0[22];
  v2 = v0[21];
  v3 = v0[20];
  v0[6] = v0;
  (*(v2 + 8))(v1, v3);
  v6 = v0[46];

  v4 = *(v0[6] + 8);

  return v4(v6);
}

uint64_t sub_268D17C9C()
{
  v1 = v0[22];
  v2 = v0[21];
  v3 = v0[20];
  v0[6] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = *(v0[6] + 8);

  return v4();
}

uint64_t sub_268D17D90()
{
  v4 = v0[22];
  v3 = v0[21];
  v5 = v0[20];
  v0[6] = v0;

  (*(v3 + 8))(v4, v5);

  v1 = *(v0[6] + 8);

  return v1();
}

uint64_t sub_268D17EA4()
{
  v4 = v0[22];
  v3 = v0[21];
  v5 = v0[20];
  v0[6] = v0;

  (*(v3 + 8))(v4, v5);

  v1 = *(v0[6] + 8);

  return v1();
}

uint64_t sub_268D17FF0()
{
  v4 = v0[22];
  v3 = v0[21];
  v5 = v0[20];
  v0[6] = v0;

  (*(v3 + 8))(v4, v5);

  v1 = *(v0[6] + 8);

  return v1();
}

uint64_t sub_268D18104()
{
  v4 = v0[22];
  v3 = v0[21];
  v5 = v0[20];
  v0[6] = v0;

  (*(v3 + 8))(v4, v5);

  v1 = *(v0[6] + 8);

  return v1();
}

uint64_t sub_268D1826C(uint64_t a1, uint64_t a2)
{
  *(v3 + 680) = v2;
  *(v3 + 672) = a2;
  *(v3 + 664) = a1;
  *(v3 + 568) = v3;
  *(v3 + 576) = 0;
  *(v3 + 584) = 0;
  *(v3 + 592) = 0;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  *(v3 + 608) = 0;
  *(v3 + 624) = 0;
  *(v3 + 504) = 0;
  *(v3 + 512) = 0;
  *(v3 + 1528) = 0;
  *(v3 + 520) = 0;
  *(v3 + 528) = 0;
  *(v3 + 1536) = 0;
  *(v3 + 536) = 0;
  *(v3 + 544) = 0;
  *(v3 + 552) = 0;
  *(v3 + 560) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v3 + 688) = swift_task_alloc();
  *(v3 + 696) = swift_task_alloc();
  *(v3 + 704) = swift_task_alloc();
  v4 = sub_268F9A9C4();
  *(v3 + 712) = v4;
  *(v3 + 720) = *(v4 - 8);
  *(v3 + 728) = swift_task_alloc();
  *(v3 + 736) = swift_task_alloc();
  *(v3 + 744) = swift_task_alloc();
  v5 = sub_268F9AB24();
  *(v3 + 752) = v5;
  *(v3 + 760) = *(v5 - 8);
  *(v3 + 768) = swift_task_alloc();
  *(v3 + 776) = swift_task_alloc();
  *(v3 + 576) = a1;
  *(v3 + 584) = a2;
  *(v3 + 592) = v2;

  return MEMORY[0x2822009F8](sub_268D184FC, 0);
}

uint64_t sub_268D184FC()
{
  v245 = v0;
  v1 = *(v0 + 672);
  v241 = v1;
  *(v0 + 568) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v241)
  {
    v238 = *(v240 + 672);
    v239 = [v238 errorDetail];
    if (v239)
    {
      v234 = sub_268F9AE24();
      v235 = v2;
      MEMORY[0x277D82BD8](v239);
      v236 = v234;
      v237 = v235;
    }

    else
    {
      v236 = 0;
      v237 = 0;
    }

    MEMORY[0x277D82BD8](v238);
    v232 = v236;
    v233 = v237;
  }

  else
  {
    v232 = 0;
    v233 = 0;
  }

  *(v240 + 784) = v233;
  if (!v233)
  {
    v93 = *(v240 + 672);
    v78 = sub_268DC7B48();
    v98 = *v78;
    MEMORY[0x277D82BE0](*v78);
    v97 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v96 = v79;
    MEMORY[0x277D82BE0](v93);
    *(v240 + 600) = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v94 = sub_268F9AE64();
    v95 = v80;
    v96[3] = MEMORY[0x277D837D0];
    v96[4] = sub_268CDD224();
    *v96 = v94;
    v96[1] = v95;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | contains error code 'other reason' but no details: %@", 117, 2, &dword_268CBE000, v98, v97);

    MEMORY[0x277D82BD8](v98);
    sub_268D284D4();
    swift_allocError();
    *v81 = 5;
    swift_willThrow();
    goto LABEL_112;
  }

  v3 = *(v240 + 672);
  v4 = *(v240 + 664);
  *(v240 + 216) = v232;
  *(v240 + 224) = v233;
  sub_268D23814(v4, v3, (v240 + 96));
  memcpy((v240 + 56), (v240 + 96), 0x28uLL);
  if (!*(v240 + 64))
  {
    sub_268D284D4();
    swift_allocError();
    *v77 = 4;
    swift_willThrow();

LABEL_112:

    v87 = *(*(v240 + 568) + 8);

    return v87();
  }

  v223 = *(v240 + 776);
  v222 = *(v240 + 768);
  v224 = *(v240 + 752);
  v220 = *(v240 + 680);
  v221 = *(v240 + 760);
  memcpy((v240 + 16), (v240 + 56), 0x28uLL);
  sub_268D29170();
  *(v240 + 608) = sub_268CF0C44();
  v5 = sub_268DB98D4();
  v227 = *v5;
  v228 = v5[1];
  v229 = *(v5 + 16);
  v6 = sub_268DC7BA8();
  v230 = *v6;
  MEMORY[0x277D82BE0](*v6);
  (*(v221 + 16))(v223, v220 + qword_2802DBFD8, v224);
  sub_268F9AB14();
  v226 = sub_268F9AB04();
  v225 = *(v221 + 8);
  v225(v222, v224);
  v225(v223, v224);
  sub_268DB9934(v227, v228, v229, v230, (v226 ^ 1) & 1);
  MEMORY[0x277D82BD8](v230);

  *(v240 + 232) = sub_268E948B8(8);
  *(v240 + 240) = v7;
  v231 = MEMORY[0x26D62DB50](*(v240 + 232), *(v240 + 240), v232, v233);
  sub_268CD9D30(v240 + 232);
  if (v231)
  {
    v219 = *(v240 + 680);

    *(v240 + 792) = *(v219 + qword_2802F0748);

    v8 = swift_task_alloc();
    *(v240 + 800) = v8;
    *v8 = *(v240 + 568);
    v8[1] = sub_268D1B5A4;

    return sub_268EBDCB0();
  }

  *(v240 + 248) = sub_268E948B8(5);
  *(v240 + 256) = v10;
  v218 = MEMORY[0x26D62DB50](*(v240 + 248), *(v240 + 256), v232, v233);
  sub_268CD9D30(v240 + 248);
  if (v218)
  {
    v217 = *(v240 + 680);

    *(v240 + 824) = *(v217 + qword_2802F0748);

    v11 = swift_task_alloc();
    *(v240 + 832) = v11;
    *v11 = *(v240 + 568);
    v11[1] = sub_268D1B938;

    return sub_268EBB618();
  }

  *(v240 + 264) = sub_268E948B8(6);
  *(v240 + 272) = v12;
  v216 = MEMORY[0x26D62DB50](*(v240 + 264), *(v240 + 272), v232, v233);
  sub_268CD9D30(v240 + 264);
  if (v216)
  {
    v215 = *(v240 + 680);

    *(v240 + 856) = *(v215 + qword_2802F0748);

    v13 = swift_task_alloc();
    *(v240 + 864) = v13;
    *v13 = *(v240 + 568);
    v13[1] = sub_268D1BCCC;

    return sub_268EBBAE8();
  }

  *(v240 + 280) = sub_268E948B8(3);
  *(v240 + 288) = v14;
  v214 = MEMORY[0x26D62DB50](*(v240 + 280), *(v240 + 288), v232, v233);
  sub_268CD9D30(v240 + 280);
  if (v214)
  {
    v212 = *(v240 + 664);

    v213 = [v212 settingMetadata];
    if (v213)
    {
      v207 = [v213 settingId];
      v208 = sub_268F9AE24();
      v209 = v15;
      MEMORY[0x277D82BD8](v213);
      MEMORY[0x277D82BD8](v207);
      v210 = v208;
      v211 = v209;
    }

    else
    {
      v210 = 0;
      v211 = 0;
    }

    *(v240 + 888) = v211;
    if (v211)
    {
      v203 = *(v240 + 680);
      *(v240 + 552) = v210;
      *(v240 + 560) = v211;
      *(v240 + 896) = *(v203 + qword_2802F0748);

      type metadata accessor for SettingsBinarySetting(0);

      v206 = SettingsBinarySetting.__allocating_init(settingId:value:)(v210, v211, 0);
      *(v240 + 904) = v206;
      v204 = *(v203 + qword_2802DBFE0);
      *(v240 + 912) = v204;

      v205 = sub_268CDD6D4();
      v16 = swift_task_alloc();
      *(v240 + 920) = v16;
      *v16 = *(v240 + 568);
      v16[1] = sub_268D1C060;

      return sub_268EB8F90(v206, v204, 2, v205 & 1);
    }

    v17 = sub_268DB98D4();
    v199 = *v17;
    v197 = v17[1];
    v198 = *(v17 + 16);
    v18 = sub_268DC7BA8();
    v200 = *v18;
    MEMORY[0x277D82BE0](*v18);
    sub_268DB9B78(v199, v197, v198, v200);
    MEMORY[0x277D82BD8](v200);
    sub_268D28BD4();
    v201 = swift_allocError();
    *v19 = 2;
    swift_willThrow();
    v202 = v201;
    goto LABEL_111;
  }

  *(v240 + 296) = sub_268E948B8(11);
  *(v240 + 304) = v20;
  v196 = MEMORY[0x26D62DB50](*(v240 + 296), *(v240 + 304), v232, v233);
  sub_268CD9D30(v240 + 296);
  if (v196)
  {
    v193 = *(v240 + 680);

    *(v240 + 944) = *(v193 + qword_2802DC000);

    v195 = *(v193 + qword_2802DBFE0);
    *(v240 + 952) = v195;

    v194 = sub_268CDD6D4();
    v21 = swift_task_alloc();
    *(v240 + 960) = v21;
    *v21 = *(v240 + 568);
    v21[1] = sub_268D1C428;

    return sub_268DF4F38(v195, v194 & 1);
  }

  *(v240 + 312) = sub_268E948B8(12);
  *(v240 + 320) = v22;
  v192 = MEMORY[0x26D62DB50](*(v240 + 312), *(v240 + 320), v232, v233);
  sub_268CD9D30(v240 + 312);
  if (v192)
  {
    v189 = *(v240 + 744);
    v190 = *(v240 + 712);
    v191 = *(v240 + 704);
    v187 = *(v240 + 680);
    v188 = *(v240 + 720);

    sub_268E948B8(12);
    sub_268F9A9A4();
    *(v240 + 984) = *(v187 + qword_2802DC000);

    (*(v188 + 16))(v191, v189, v190);
    (*(v188 + 56))(v191, 0, 1, v190);
    v23 = swift_task_alloc();
    *(v240 + 992) = v23;
    *v23 = *(v240 + 568);
    v23[1] = sub_268D1C7CC;
    v24 = *(v240 + 704);

    return sub_268DF2E84(v24);
  }

  *(v240 + 328) = sub_268E948B8(15);
  *(v240 + 336) = v25;
  v186 = MEMORY[0x26D62DB50](*(v240 + 328), *(v240 + 336), v232, v233);
  sub_268CD9D30(v240 + 328);
  if (v186)
  {
    v183 = *(v240 + 736);
    v184 = *(v240 + 712);
    v185 = *(v240 + 696);
    v181 = *(v240 + 680);
    v182 = *(v240 + 720);

    sub_268E948B8(15);
    sub_268F9A9A4();
    *(v240 + 1016) = *(v181 + qword_2802DC000);

    (*(v182 + 16))(v185, v183, v184);
    (*(v182 + 56))(v185, 0, 1, v184);
    v26 = swift_task_alloc();
    *(v240 + 1024) = v26;
    *v26 = *(v240 + 568);
    v26[1] = sub_268D1CBA8;
    v24 = *(v240 + 696);

    return sub_268DF2E84(v24);
  }

  *(v240 + 344) = sub_268E948B8(13);
  *(v240 + 352) = v27;
  v180 = MEMORY[0x26D62DB50](*(v240 + 344), *(v240 + 352), v232, v233);
  sub_268CD9D30(v240 + 344);
  if (v180)
  {
    v177 = *(v240 + 728);
    v178 = *(v240 + 712);
    v179 = *(v240 + 688);
    v175 = *(v240 + 680);
    v176 = *(v240 + 720);

    sub_268E948B8(13);
    sub_268F9A9A4();
    *(v240 + 1048) = *(v175 + qword_2802DC000);

    (*(v176 + 16))(v179, v177, v178);
    (*(v176 + 56))(v179, 0, 1, v178);
    v28 = swift_task_alloc();
    *(v240 + 1056) = v28;
    *v28 = *(v240 + 568);
    v28[1] = sub_268D1CF84;
    v24 = *(v240 + 688);

    return sub_268DF2E84(v24);
  }

  *(v240 + 360) = sub_268E948B8(18);
  *(v240 + 368) = v29;
  v174 = MEMORY[0x26D62DB50](*(v240 + 360), *(v240 + 368), v232, v233);
  sub_268CD9D30(v240 + 360);
  if (v174)
  {
    v173 = *(v240 + 680);

    *(v240 + 1080) = *(v173 + qword_2802DC000);

    v30 = swift_task_alloc();
    *(v240 + 1088) = v30;
    *v30 = *(v240 + 568);
    v30[1] = sub_268D1D360;

    return sub_268DF82AC();
  }

  *(v240 + 376) = sub_268E948B8(17);
  *(v240 + 384) = v31;
  v172 = MEMORY[0x26D62DB50](*(v240 + 376), *(v240 + 384), v232, v233);
  sub_268CD9D30(v240 + 376);
  if (v172)
  {
    v170 = *(v240 + 664);

    sub_268DAB218(v170);
    v244[0] = v243[1];
    v169 = sub_268F397B4(v244);
    *(v240 + 1529) = v169;

    *(v240 + 1536) = v169;
    v32 = [v170 settingMetadata];
    v171 = v32;
    if (v32)
    {
      v164 = [v32 settingId];
      v165 = sub_268F9AE24();
      v166 = v33;
      MEMORY[0x277D82BD8](v171);
      MEMORY[0x277D82BD8](v164);
      v167 = v165;
      v168 = v166;
    }

    else
    {
      v167 = 0;
      v168 = 0;
    }

    *(v240 + 1120) = v168;
    *(v240 + 1112) = v167;
    if (v168)
    {
      *(v240 + 536) = v167;
      *(v240 + 544) = v168;
      v244[1] = 45;
      v34 = BinarySettingIdentifier.rawValue.getter();
      v163 = MEMORY[0x26D62DB50](v167, v168, v34);

      if (v163)
      {
        *(v240 + 1128) = *(*(v240 + 680) + qword_2802F0748);

        type metadata accessor for SettingsMultiSetting(0);

        v162 = sub_268E067CC(v167, v168, 0);
        *(v240 + 1136) = v162;
        v35 = swift_task_alloc();
        *(v240 + 1144) = v35;
        *v35 = *(v240 + 568);
        v35[1] = sub_268D1D6F4;

        return sub_268EC0E00(v169, v162);
      }

      *(v240 + 1168) = *(*(v240 + 680) + qword_2802F0748);

      v244[2] = 44;
      v36 = BinarySettingIdentifier.rawValue.getter();
      v160 = MEMORY[0x26D62DB50](v36);

      *(v240 + 1176) = type metadata accessor for SettingsBinarySetting(0);

      v161 = SettingsBinarySetting.__allocating_init(settingId:value:)(v167, v168, 0);
      *(v240 + 1184) = v161;
      v37 = swift_task_alloc();
      v38 = v161;
      *(v240 + 1192) = v37;
      *v37 = *(v240 + 568);
      v37[1] = sub_268D1DACC;
      v39 = v169;
      v40 = v160 & 1;

      return sub_268EC1F74(v39, v40, 0, v38);
    }

    v41 = sub_268DB98D4();
    v157 = *v41;
    v155 = v41[1];
    v156 = *(v41 + 16);
    v42 = sub_268DC7BA8();
    v158 = *v42;
    MEMORY[0x277D82BE0](*v42);
    sub_268DB9B78(v157, v155, v156, v158);
    MEMORY[0x277D82BD8](v158);
    sub_268D28BD4();
    v159 = swift_allocError();
    *v43 = 2;
    swift_willThrow();
    v202 = v159;
    goto LABEL_111;
  }

  *(v240 + 392) = sub_268E948B8(2);
  *(v240 + 400) = v44;
  v154 = MEMORY[0x26D62DB50](*(v240 + 392), *(v240 + 400), v232, v233);
  sub_268CD9D30(v240 + 392);
  if (v154)
  {
    v149 = *(v240 + 680);
    v150 = *(v240 + 664);

    *(v240 + 1256) = *(v149 + qword_2802DC000);

    type metadata accessor for SettingsMultiSetting(0);
    sub_268D28814((v240 + 16), (v240 + 176));
    v152 = *(v240 + 16);
    v151 = *(v240 + 24);
    *(v240 + 648) = [v150 binaryValue];
    *(v240 + 656) = 1;
    type metadata accessor for INBinarySettingValue(0);
    sub_268CD925C();
    v45 = sub_268F9B754();
    v153 = sub_268E067CC(v152, v151, v45 & 1);
    *(v240 + 1264) = v153;
    v46 = swift_task_alloc();
    *(v240 + 1272) = v46;
    *v46 = *(v240 + 568);
    v46[1] = sub_268D1E1A8;

    return sub_268DE7608(v153);
  }

  else
  {

    *(v240 + 408) = sub_268E948B8(1);
    *(v240 + 416) = v47;
    v148 = MEMORY[0x26D62DB50](*(v240 + 408), *(v240 + 416), v232, v233);
    sub_268CD9D30(v240 + 408);
    if (v148)
    {
      v146 = *(v240 + 664);

      sub_268DAB218(v146);
      v243[0] = v242;
      v145 = sub_268F397B4(v243);

      *(v240 + 1528) = v145;
      v48 = [v146 settingMetadata];
      v147 = v48;
      if (v48)
      {
        v140 = [v48 settingId];
        v141 = sub_268F9AE24();
        v142 = v49;
        MEMORY[0x277D82BD8](v147);
        MEMORY[0x277D82BD8](v140);
        v143 = v141;
        v144 = v142;
      }

      else
      {
        v143 = 0;
        v144 = 0;
      }

      *(v240 + 1296) = v144;
      if (v144)
      {
        v50 = *(v240 + 680);
        *(v240 + 520) = v143;
        *(v240 + 528) = v144;
        *(v240 + 1304) = *(v50 + qword_2802F0748);

        type metadata accessor for SettingsBinarySetting(0);

        v139 = SettingsBinarySetting.__allocating_init(settingId:value:)(v143, v144, 0);
        *(v240 + 1312) = v139;
        v51 = swift_task_alloc();
        v38 = v139;
        *(v240 + 1320) = v51;
        *v51 = *(v240 + 568);
        v51[1] = sub_268D1E54C;
        v39 = v145;
        v40 = 0;

        return sub_268EC1F74(v39, v40, 0, v38);
      }

      v52 = sub_268DB98D4();
      v136 = *v52;
      v134 = v52[1];
      v135 = *(v52 + 16);
      v53 = sub_268DC7BA8();
      v137 = *v53;
      MEMORY[0x277D82BE0](*v53);
      sub_268DB9B78(v136, v134, v135, v137);
      MEMORY[0x277D82BD8](v137);
      sub_268D284D4();
      v138 = swift_allocError();
      *v54 = 4;
      swift_willThrow();
      v202 = v138;
LABEL_111:
      v82 = v202;
      *(v240 + 624) = v202;
      v83 = sub_268DC7B48();
      v92 = *v83;
      MEMORY[0x277D82BE0](*v83);
      v91 = sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v90 = v84;
      v85 = v202;
      *(v240 + 632) = v202;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
      v88 = sub_268F9AE64();
      v89 = v86;
      v90[3] = MEMORY[0x277D837D0];
      v90[4] = sub_268CDD224();
      *v90 = v88;
      v90[1] = v89;
      sub_268CD0F7C();
      sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v92, v91);

      MEMORY[0x277D82BD8](v92);
      sub_268D290F8();
      swift_allocError();
      swift_willThrow();

      MEMORY[0x277D82BD8](*(v240 + 608));
      sub_268CD9D30(v240 + 16);

      goto LABEL_112;
    }

    *(v240 + 424) = sub_268E948B8(9);
    *(v240 + 432) = v55;
    v133 = MEMORY[0x26D62DB50](*(v240 + 424), *(v240 + 432), v232, v233);
    sub_268CD9D30(v240 + 424);
    if (v133)
    {
      v132 = *(v240 + 680);

      *(v240 + 1344) = *(v132 + qword_2802DC000);

      v56 = swift_task_alloc();
      *(v240 + 1352) = v56;
      *v56 = *(v240 + 568);
      v56[1] = sub_268D1E908;

      return sub_268DE62B0();
    }

    else
    {

      *(v240 + 440) = sub_268E948B8(0);
      *(v240 + 448) = v57;
      v131 = MEMORY[0x26D62DB50](*(v240 + 440), *(v240 + 448), v232, v233);
      sub_268CD9D30(v240 + 440);
      if (v131)
      {
        v129 = *(v240 + 664);

        v130 = [v129 settingMetadata];
        if (v130 && (v128 = [v130 targetApp], *&v58 = MEMORY[0x277D82BD8](v130).n128_u64[0], v128))
        {
          v59 = [v128 bundleIdentifier];
          v127 = v59;
          if (v59)
          {
            v123 = sub_268F9AE24();
            v124 = v60;
            MEMORY[0x277D82BD8](v127);
            v125 = v123;
            v126 = v124;
          }

          else
          {
            v125 = 0;
            v126 = 0;
          }

          MEMORY[0x277D82BD8](v128);
          v121 = v125;
          v122 = v126;
        }

        else
        {
          v121 = 0;
          v122 = 0;
        }

        *(v240 + 1376) = v122;
        if (!v122)
        {
          v113 = *(v240 + 664);
          v63 = sub_268DC7B48();
          v118 = *v63;
          MEMORY[0x277D82BE0](*v63);
          v117 = sub_268F9B294();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
          sub_268F9B734();
          v116 = v64;
          MEMORY[0x277D82BE0](v113);
          *(v240 + 640) = v113;
          sub_268CD7620();
          sub_268D28940();
          v114 = sub_268F9AE74();
          v115 = v65;
          v116[3] = MEMORY[0x277D837D0];
          v116[4] = sub_268CDD224();
          *v116 = v114;
          v116[1] = v115;
          sub_268CD0F7C();
          sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | 'appNotInstalledForAnnounceNotifications' error is missing app bundle id: %@", 140, 2, &dword_268CBE000, v118, v117);

          MEMORY[0x277D82BD8](v118);
          sub_268D284D4();
          v119 = swift_allocError();
          *v66 = 1;
          swift_willThrow();
          v202 = v119;
          goto LABEL_111;
        }

        v61 = *(v240 + 680);
        *(v240 + 504) = v121;
        *(v240 + 512) = v122;
        *(v240 + 1384) = *(v61 + qword_2802DC000);

        sub_268F9A994();

        v120 = sub_268DE1C68(v121, v122);
        *(v240 + 1392) = v120;
        v62 = swift_task_alloc();
        *(v240 + 1400) = v62;
        *v62 = *(v240 + 568);
        v62[1] = sub_268D1EC9C;

        return sub_268DE5840(v120);
      }

      else
      {

        *(v240 + 456) = sub_268E948B8(20);
        *(v240 + 464) = v67;
        v112 = MEMORY[0x26D62DB50](*(v240 + 456), *(v240 + 464), v232, v233);
        sub_268CD9D30(v240 + 456);
        if (v112)
        {
          v111 = *(v240 + 680);

          *(v240 + 1424) = *(v111 + qword_2802DC000);

          v68 = swift_task_alloc();
          *(v240 + 1432) = v68;
          *v68 = *(v240 + 568);
          v68[1] = sub_268D1F054;

          return sub_268DF7DDC();
        }

        else
        {

          *(v240 + 472) = sub_268E948B8(7);
          *(v240 + 480) = v69;
          v110 = MEMORY[0x26D62DB50](*(v240 + 472), *(v240 + 480), v232, v233);
          sub_268CD9D30(v240 + 472);
          if (v110)
          {
            v108 = *(v240 + 680);

            *(v240 + 1456) = *(v108 + qword_2802F0748);

            type metadata accessor for SettingsBinarySetting(0);
            sub_268D28814((v240 + 16), (v240 + 136));
            v109 = SettingsBinarySetting.__allocating_init(settingId:value:)(*(v240 + 16), *(v240 + 24), 0);
            *(v240 + 1464) = v109;
            v70 = swift_task_alloc();
            *(v240 + 1472) = v70;
            *v70 = *(v240 + 568);
            v70[1] = sub_268D1F3E8;

            return sub_268EBBFB8(v109);
          }

          else
          {

            *(v240 + 488) = sub_268E948B8(22);
            *(v240 + 496) = v71;
            v107 = MEMORY[0x26D62DB50](*(v240 + 488), *(v240 + 496), v232, v233);
            sub_268CD9D30(v240 + 488);
            if ((v107 & 1) == 0)
            {
              v99 = *(v240 + 672);

              v73 = sub_268DC7B48();
              v104 = *v73;
              MEMORY[0x277D82BE0](*v73);
              v103 = sub_268F9B294();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
              sub_268F9B734();
              v102 = v74;
              MEMORY[0x277D82BE0](v99);
              *(v240 + 616) = v99;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
              v100 = sub_268F9AE64();
              v101 = v75;
              v102[3] = MEMORY[0x277D837D0];
              v102[4] = sub_268CDD224();
              *v102 = v100;
              v102[1] = v101;
              sub_268CD0F7C();
              sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | 'other reason' error code contains unsupported error detail: %@", 127, 2, &dword_268CBE000, v104, v103);

              MEMORY[0x277D82BD8](v104);
              sub_268D284D4();
              v105 = swift_allocError();
              *v76 = 8;
              swift_willThrow();
              v202 = v105;
              goto LABEL_111;
            }

            v106 = *(v240 + 680);

            *(v240 + 1496) = *(v106 + qword_2802F0748);

            v72 = swift_task_alloc();
            *(v240 + 1504) = v72;
            *v72 = *(v240 + 568);
            v72[1] = sub_268D1F78C;

            return sub_268EBB148();
          }
        }
      }
    }
  }
}

uint64_t sub_268D1B5A4(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[101] = a1;
  v5[102] = v1;

  if (v1)
  {
    v3 = sub_268D1FB20;
  }

  else
  {

    v3 = sub_268D1B738;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1B738()
{
  v1 = v0[101];
  v7 = v1;
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v7;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[101];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[71] + 8);

  return v5(v12);
}

uint64_t sub_268D1B938(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[105] = a1;
  v5[106] = v1;

  if (v1)
  {
    v3 = sub_268D1FE34;
  }

  else
  {

    v3 = sub_268D1BACC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1BACC()
{
  v1 = v0[105];
  v7 = v1;
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v7;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[105];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[71] + 8);

  return v5(v12);
}

uint64_t sub_268D1BCCC(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[109] = a1;
  v5[110] = v1;

  if (v1)
  {
    v3 = sub_268D20148;
  }

  else
  {

    v3 = sub_268D1BE60;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1BE60()
{
  v1 = v0[109];
  v7 = v1;
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v7;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[109];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[71] + 8);

  return v5(v12);
}

uint64_t sub_268D1C060(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[116] = a1;
  v5[117] = v1;

  if (v1)
  {
    v3 = sub_268D2045C;
  }

  else
  {

    v3 = sub_268D1C214;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1C214()
{
  v1 = v0[116];
  v7 = v1;
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v7;
  MEMORY[0x277D82BD8](v2);

  v12 = v0[116];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[71] + 8);

  return v5(v12);
}

uint64_t sub_268D1C428(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[121] = a1;
  v5[122] = v1;

  if (v1)
  {
    v3 = sub_268D207A4;
  }

  else
  {

    v3 = sub_268D1C5CC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1C5CC()
{
  v1 = v0[121];
  v7 = v1;
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v7;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[121];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[71] + 8);

  return v5(v12);
}

uint64_t sub_268D1C7CC(uint64_t a1)
{
  v6 = *v2;
  v5 = *v2 + 16;
  v6[71] = *v2;
  v6[125] = a1;
  v6[126] = v1;

  if (v1)
  {
    v3 = sub_268D20AC8;
  }

  else
  {
    sub_268D28588(*(v5 + 688));

    v3 = sub_268D1C970;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1C970()
{
  v1 = v0[125];
  v8 = v1;
  v10 = v0[93];
  v9 = v0[90];
  v11 = v0[89];
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v8;
  v3 = MEMORY[0x277D82BD8](v2);
  (*(v9 + 8))(v10, v11, v3);
  v16 = v0[125];
  v4 = sub_268DB98D4();
  v14 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v5 = sub_268DC7BA8();
  v15 = *v5;
  MEMORY[0x277D82BE0](*v5);
  sub_268DB9B78(v14, v12, v13, v15);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6(v16);
}

uint64_t sub_268D1CBA8(uint64_t a1)
{
  v6 = *v2;
  v5 = *v2 + 16;
  v6[71] = *v2;
  v6[129] = a1;
  v6[130] = v1;

  if (v1)
  {
    v3 = sub_268D20E24;
  }

  else
  {
    sub_268D28588(*(v5 + 680));

    v3 = sub_268D1CD4C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1CD4C()
{
  v1 = v0[129];
  v8 = v1;
  v10 = v0[92];
  v9 = v0[90];
  v11 = v0[89];
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v8;
  v3 = MEMORY[0x277D82BD8](v2);
  (*(v9 + 8))(v10, v11, v3);
  v16 = v0[129];
  v4 = sub_268DB98D4();
  v14 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v5 = sub_268DC7BA8();
  v15 = *v5;
  MEMORY[0x277D82BE0](*v5);
  sub_268DB9B78(v14, v12, v13, v15);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6(v16);
}

uint64_t sub_268D1CF84(uint64_t a1)
{
  v6 = *v2;
  v5 = *v2 + 16;
  v6[71] = *v2;
  v6[133] = a1;
  v6[134] = v1;

  if (v1)
  {
    v3 = sub_268D21180;
  }

  else
  {
    sub_268D28588(*(v5 + 672));

    v3 = sub_268D1D128;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1D128()
{
  v1 = v0[133];
  v8 = v1;
  v10 = v0[91];
  v9 = v0[90];
  v11 = v0[89];
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v8;
  v3 = MEMORY[0x277D82BD8](v2);
  (*(v9 + 8))(v10, v11, v3);
  v16 = v0[133];
  v4 = sub_268DB98D4();
  v14 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v5 = sub_268DC7BA8();
  v15 = *v5;
  MEMORY[0x277D82BE0](*v5);
  sub_268DB9B78(v14, v12, v13, v15);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6(v16);
}

uint64_t sub_268D1D360(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[137] = a1;
  v5[138] = v1;

  if (v1)
  {
    v3 = sub_268D214DC;
  }

  else
  {

    v3 = sub_268D1D4F4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1D4F4()
{
  v1 = v0[137];
  v7 = v1;
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v7;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[137];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[71] + 8);

  return v5(v12);
}

uint64_t sub_268D1D6F4(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[144] = a1;
  v5[145] = v1;

  if (v1)
  {
    v3 = sub_268D217F0;
  }

  else
  {

    v3 = sub_268D1D898;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1D898()
{
  v1 = v0[144];
  v7 = v1;
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v7;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[144];

  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[71] + 8);

  return v5(v12);
}

uint64_t sub_268D1DACC(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[150] = a1;
  v5[151] = v1;

  if (v1)
  {
    v3 = sub_268D21B2C;
  }

  else
  {

    v3 = sub_268D1DC70;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1DC70()
{
  v1 = v0[150];
  v8 = v0[140];
  v7 = v0[139];
  v6 = v0[85];
  v0[71] = v0;
  v2 = v0[76];
  v0[76] = v1;
  MEMORY[0x277D82BD8](v2);
  v0[152] = *(v6 + qword_2802F0748);

  v10 = SettingsBinarySetting.__allocating_init(settingId:value:)(v7, v8, 0);
  v0[153] = v10;
  v3 = swift_task_alloc();
  *(v9 + 1232) = v3;
  *v3 = *(v9 + 568);
  v3[1] = sub_268D1DDD0;
  v4 = *(v9 + 1529) & 1;

  return sub_268EC1F74(v4, 0, 0, v10);
}

uint64_t sub_268D1DDD0(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[155] = a1;
  v5[156] = v1;

  if (v1)
  {
    v3 = sub_268D21E68;
  }

  else
  {

    v3 = sub_268D1DF74;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1DF74()
{
  v1 = v0[155];
  v7 = v1;
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v7;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[155];

  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[71] + 8);

  return v5(v12);
}

uint64_t sub_268D1E1A8(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[160] = a1;
  v5[161] = v1;

  if (v1)
  {
    v3 = sub_268D221A4;
  }

  else
  {

    v3 = sub_268D1E34C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1E34C()
{
  v1 = v0[160];
  v7 = v1;
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v7;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[160];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[71] + 8);

  return v5(v12);
}

uint64_t sub_268D1E54C(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[166] = a1;
  v5[167] = v1;

  if (v1)
  {
    v3 = sub_268D224C8;
  }

  else
  {

    v3 = sub_268D1E6F0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1E6F0()
{
  v1 = v0[166];
  v7 = v1;
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v7;
  MEMORY[0x277D82BD8](v2);

  v12 = v0[166];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[71] + 8);

  return v5(v12);
}

uint64_t sub_268D1E908(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[170] = a1;
  v5[171] = v1;

  if (v1)
  {
    v3 = sub_268D22804;
  }

  else
  {

    v3 = sub_268D1EA9C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1EA9C()
{
  v1 = v0[170];
  v7 = v1;
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v7;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[170];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[71] + 8);

  return v5(v12);
}

uint64_t sub_268D1EC9C(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[176] = a1;
  v5[177] = v1;

  if (v1)
  {
    v3 = sub_268D22B18;
  }

  else
  {

    v3 = sub_268D1EE40;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1EE40()
{
  v1 = v0[176];
  v7 = v1;
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v7;
  MEMORY[0x277D82BD8](v2);

  v12 = v0[176];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[71] + 8);

  return v5(v12);
}

uint64_t sub_268D1F054(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[180] = a1;
  v5[181] = v1;

  if (v1)
  {
    v3 = sub_268D22E50;
  }

  else
  {

    v3 = sub_268D1F1E8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1F1E8()
{
  v1 = v0[180];
  v7 = v1;
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v7;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[180];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[71] + 8);

  return v5(v12);
}

uint64_t sub_268D1F3E8(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[185] = a1;
  v5[186] = v1;

  if (v1)
  {
    v3 = sub_268D23164;
  }

  else
  {

    v3 = sub_268D1F58C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1F58C()
{
  v1 = v0[185];
  v7 = v1;
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v7;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[185];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[71] + 8);

  return v5(v12);
}

uint64_t sub_268D1F78C(uint64_t a1)
{
  v5 = *v2;
  v5[71] = *v2;
  v5[189] = a1;
  v5[190] = v1;

  if (v1)
  {
    v3 = sub_268D23488;
  }

  else
  {

    v3 = sub_268D1F920;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D1F920()
{
  v1 = v0[189];
  v7 = v1;
  v0[71] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[76];
  v0[76] = v7;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[189];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[71] + 8);

  return v5(v12);
}

uint64_t sub_268D1FB20()
{
  v0[71] = v0;

  v13 = v0[102];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D1FE34()
{
  v0[71] = v0;

  v13 = v0[106];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D20148()
{
  v0[71] = v0;

  v13 = v0[110];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D2045C()
{
  v0[71] = v0;

  v13 = v0[117];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D207A4()
{
  v0[71] = v0;

  v13 = v0[122];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D20AC8()
{
  v10 = v0[93];
  v9 = v0[90];
  v11 = v0[89];
  v1 = v0[88];
  v0[71] = v0;
  sub_268D28588(v1);

  (*(v9 + 8))(v10, v11);
  v17 = v0[126];
  v2 = v17;
  v0[78] = v17;
  v3 = sub_268DC7B48();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  v15 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v4;
  v5 = v17;
  v0[79] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v12 = sub_268F9AE64();
  v13 = v6;
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v16, v15);

  MEMORY[0x277D82BD8](v16);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v7 = *(v0[71] + 8);

  return v7();
}

uint64_t sub_268D20E24()
{
  v10 = v0[92];
  v9 = v0[90];
  v11 = v0[89];
  v1 = v0[87];
  v0[71] = v0;
  sub_268D28588(v1);

  (*(v9 + 8))(v10, v11);
  v17 = v0[130];
  v2 = v17;
  v0[78] = v17;
  v3 = sub_268DC7B48();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  v15 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v4;
  v5 = v17;
  v0[79] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v12 = sub_268F9AE64();
  v13 = v6;
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v16, v15);

  MEMORY[0x277D82BD8](v16);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v7 = *(v0[71] + 8);

  return v7();
}

uint64_t sub_268D21180()
{
  v10 = v0[91];
  v9 = v0[90];
  v11 = v0[89];
  v1 = v0[86];
  v0[71] = v0;
  sub_268D28588(v1);

  (*(v9 + 8))(v10, v11);
  v17 = v0[134];
  v2 = v17;
  v0[78] = v17;
  v3 = sub_268DC7B48();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  v15 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v4;
  v5 = v17;
  v0[79] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v12 = sub_268F9AE64();
  v13 = v6;
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v16, v15);

  MEMORY[0x277D82BD8](v16);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v7 = *(v0[71] + 8);

  return v7();
}

uint64_t sub_268D214DC()
{
  v0[71] = v0;

  v13 = v0[138];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D217F0()
{
  v0[71] = v0;

  v13 = v0[145];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D21B2C()
{
  v0[71] = v0;

  v13 = v0[151];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D21E68()
{
  v0[71] = v0;

  v13 = v0[156];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D221A4()
{
  v0[71] = v0;

  v13 = v0[161];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D224C8()
{
  v0[71] = v0;

  v13 = v0[167];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D22804()
{
  v0[71] = v0;

  v13 = v0[171];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D22B18()
{
  v0[71] = v0;

  v13 = v0[177];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D22E50()
{
  v0[71] = v0;

  v13 = v0[181];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D23164()
{
  v0[71] = v0;

  v13 = v0[186];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D23488()
{
  v0[71] = v0;

  v13 = v0[190];
  v1 = v13;
  v0[78] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[79] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService handleOtherFailureReasonRF2 | SettingIntent or SetBinarySettingIntent CAT executor contains error code %@", 139, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[76]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[71] + 8);

  return v6();
}

uint64_t sub_268D2379C()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_268D237EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

void sub_268D23814(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v71 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  v61 = 0;
  v4 = *v3;
  v77 = a1;
  v76 = a2;
  v75 = v3;
  v74 = *(v4 + qword_2802F0750);
  v73 = *(v4 + qword_2802F0750 + 8);
  v54 = [a1 settingMetadata];
  if (!v54)
  {
    v13 = sub_268DC7B48();
    v20 = *v13;
    MEMORY[0x277D82BE0](*v13);
    v19 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v18 = v14;
    MEMORY[0x277D82BE0](a1);
    v72 = a1;
    sub_268CD7620();
    sub_268D28940();
    v16 = sub_268F9AE74();
    v17 = v15;
    v18[3] = MEMORY[0x277D837D0];
    v18[4] = sub_268CDD224();
    *v18 = v16;
    v18[1] = v17;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingIntent doesn't have setting metadata %@", 55, 2, &dword_268CBE000, v20, v19);

    MEMORY[0x277D82BD8](v20);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_22;
  }

  v71 = v54;
  MEMORY[0x277D82BE0](a2);
  if (!a2)
  {
    v12 = sub_268DC7B48();
    v22 = *v12;
    MEMORY[0x277D82BE0](*v12);
    v21 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("SetBinarySettingIntentResponse does not exist", 45, 2, &dword_268CBE000, v22, v21);

    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v54);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_22;
  }

  v70 = a2;
  v42 = [v54 settingId];
  v43 = sub_268F9AE24();
  v44 = v5;
  v68 = v43;
  v69 = v5;
  v45 = [a1 binaryValue];
  v67 = v45;
  v46 = [a2 oldValue];
  v66 = v46;
  v65 = a1;
  v6 = sub_268CD7620();
  v48 = SettingIntent.settingIdentifier.getter(v6, &protocol witness table for INSetBinarySettingIntent);
  v49 = v7;

  v64 = 1;
  v47 = BinarySettingIdentifier.rawValue.getter();
  v50 = v8;

  v62[0] = v48;
  v62[1] = v49;
  *&v63 = v47;
  *(&v63 + 1) = v50;
  if (!v49)
  {
    if (!*(&v63 + 1))
    {
      sub_268CD9D30(v62);
      v41 = 1;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  sub_268D28874(v62, &v57);
  if (!*(&v63 + 1))
  {
    sub_268CD9D30(&v57);
LABEL_11:
    sub_268D28550(v62);
    v41 = 0;
    goto LABEL_9;
  }

  v56 = v57;
  v55 = v63;
  v40 = MEMORY[0x26D62DB50](v57, *(&v57 + 1), v63, *(&v63 + 1));
  sub_268CD9D30(&v55);
  sub_268CD9D30(&v56);
  sub_268CD9D30(v62);
  v41 = v40;
LABEL_9:

  if (v41)
  {
    v59 = v45;
    v58 = 3;
    type metadata accessor for INBinarySettingValue(0);
    sub_268CD925C();
    v39 = sub_268F9B754();
  }

  else
  {
    v39 = 0;
  }

  if (v39)
  {
    v38 = 1;
  }

  else
  {
    v38 = [a2 updatedValue];
  }

  v61 = v38;
  if (sub_268F9AF14())
  {
    v9 = sub_268DC7B48();
    v32 = *v9;
    MEMORY[0x277D82BE0](*v9);
    v31 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v30 = v10;
    MEMORY[0x277D82BE0](v54);
    v60 = v54;
    sub_268D291D4();
    sub_268D29238();
    v28 = sub_268F9AE74();
    v29 = v11;
    v30[3] = MEMORY[0x277D837D0];
    v30[4] = sub_268CDD224();
    *v30 = v28;
    v30[1] = v29;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingIntentResponse setting metadata doesn't have setting ID %@", 74, 2, &dword_268CBE000, v32, v31);

    MEMORY[0x277D82BD8](v32);

    MEMORY[0x277D82BD8](a2);
    MEMORY[0x277D82BD8](v54);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
  }

  else
  {
    sub_268D237EC(v43, v44, v45, v46, v38, v78);
    v23 = v78[0];
    v24 = v78[1];
    v25 = v78[2];
    v26 = v78[3];
    v27 = v78[4];
    MEMORY[0x277D82BD8](a2);
    MEMORY[0x277D82BD8](v54);
    v33 = v23;
    v34 = v24;
    v35 = v25;
    v36 = v26;
    v37 = v27;
  }

LABEL_22:
  *a3 = v33;
  a3[1] = v34;
  a3[2] = v35;
  a3[3] = v36;
  a3[4] = v37;
}

uint64_t sub_268D2403C(uint64_t a1, uint64_t a2, char a3)
{
  switch(a1)
  {
    case 1:
      return 1;
    case 2:
      return 0;
    case 3:
      if (a3)
      {
        v7 = 0;
      }

      else
      {
        type metadata accessor for INBinarySettingValue(0);
        sub_268D292B8();
        v7 = sub_268F9AE04() ^ 1;
      }

      if (v7)
      {
        if (a3)
        {
          v6 = 0;
        }

        else
        {
          type metadata accessor for INBinarySettingValue(0);
          sub_268D292B8();
          v6 = sub_268F9AE04();
        }

        v5 = v6 ^ 1;
      }

      else
      {
        v5 = 0;
      }

      if (v5)
      {
        if (a3)
        {
          v4 = 0;
        }

        else
        {
          type metadata accessor for INBinarySettingValue(0);
          sub_268D292B8();
          v4 = sub_268F9AE04();
        }

        return (v4 ^ 1) & 1;
      }

      else
      {
        return 2;
      }

    default:
      return 2;
  }
}

uint64_t sub_268D244E8(uint64_t a1)
{
  type metadata accessor for INBinarySettingValue(0);
  sub_268CD925C();
  return sub_268F9B754() & 1;
}

BOOL sub_268D245A8(void *a1)
{
  v108 = a1;
  v117 = 0;
  v116 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v106 = *v1;
  v88 = 0;
  v78 = sub_268F99214();
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (v79[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2, v3, v4);
  v82 = &v36[-v81];
  v83 = sub_268F992F4();
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (v84[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v88, v5, v6, v7);
  v87 = &v36[-v86];
  v89 = sub_268F99314();
  v90 = *(v89 - 8);
  v91 = v89 - 8;
  v92 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v88, v8, v9, v10);
  v93 = &v36[-v92];
  v94 = sub_268F990E4();
  v95 = *(v94 - 8);
  v96 = v94 - 8;
  v97 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v94, v11, v12, v13);
  v98 = &v36[-v97];
  v99 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0E0, qword_268F9DA30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v108, v14, v15, v16);
  v100 = &v36[-v99];
  v101 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18, &v36[-v99], v19, v20);
  v102 = &v36[-v101];
  v103 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, &v36[-v101], v23, v24);
  v104 = &v36[-v103];
  v105 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26, &v36[-v103], v27, v28);
  v107 = &v36[-v105];
  v117 = v29;
  v116 = v1;
  v115 = *(v106 + qword_2802F0750);
  v114 = *(v106 + qword_2802F0750 + 8);
  MEMORY[0x277D82BE0](v29);
  if (v108)
  {
    v76 = v108;
    v73 = v108;
    v113 = v108;
    v74 = [v108 dateComponentsRange];
    v75 = [v74 endDateComponents];
    if (v75)
    {
      v72 = v75;
      v71 = v75;
      sub_268F99094();
      (*(v95 + 32))(v104, v98, v94);
      (*(v95 + 56))(v104, 0, 1, v94);
      MEMORY[0x277D82BD8](v71);
    }

    else
    {
      (*(v95 + 56))(v104, 1, 1, v94);
    }

    sub_268D29338(v104, v107);
    v30 = MEMORY[0x277D82BD8](v74);
    v69 = *(v95 + 48);
    v70 = v95 + 48;
    if (v69(v107, 1, v94, v30) == 1)
    {
      sub_268D29460(v107);
      v67 = 0;
      v68 = 1;
    }

    else
    {
      v65 = sub_268F990A4();
      v66 = v31;
      (*(v95 + 8))(v107, v94);
      v67 = v65;
      v68 = v66;
    }

    v64 = v67;
    if (v68)
    {
      MEMORY[0x277D82BD8](v73);
      return 0;
    }

    else
    {
      v63 = v64;
      v62 = v64;
      v112 = v64;
      sub_268F992E4();
      v32 = *MEMORY[0x277CC9980];
      v51 = v84[13];
      v52 = v84 + 13;
      v51(v87, v32, v83);
      v53 = v79[2];
      v54 = v79 + 2;
      v53(v82, v77 + qword_2802DC028, v78);
      v61 = sub_268F99304();
      v55 = v79[1];
      v56 = v79 + 1;
      v55(v82, v78);
      v57 = v84[1];
      v58 = v84 + 1;
      v57(v87, v83);
      v59 = *(v90 + 8);
      v60 = v90 + 8;
      v59(v93, v89);
      v111 = v61;
      if (v62 == v61)
      {
        v49 = [v73 dateComponentsRange];
        v50 = [v49 endDateComponents];
        if (v50)
        {
          v48 = v50;
          v47 = v50;
          sub_268F99094();
          (*(v95 + 32))(v100, v98, v94);
          (*(v95 + 56))(v100, 0, 1, v94);
          MEMORY[0x277D82BD8](v47);
        }

        else
        {
          (*(v95 + 56))(v100, 1, 1, v94);
        }

        sub_268D29338(v100, v102);
        v33 = MEMORY[0x277D82BD8](v49);
        if (v69(v102, 1, v94, v33) == 1)
        {
          sub_268D29460(v102);
          v45 = 0;
          v46 = 1;
        }

        else
        {
          v43 = sub_268F990C4();
          v44 = v34;
          (*(v95 + 8))(v102, v94);
          v45 = v43;
          v46 = v44;
        }

        v109 = v45;
        v110 = v46 & 1;
        if (v46)
        {
          v42 = 100;
        }

        else
        {
          v42 = v109;
        }

        v38 = v42;
        sub_268F992E4();
        v51(v87, *MEMORY[0x277CC99A0], v83);
        v53(v82, v77 + qword_2802DC028, v78);
        v39 = sub_268F99304();
        v55(v82, v78);
        v57(v87, v83);
        v59(v93, v89);
        v40 = v39 >= v38;
        MEMORY[0x277D82BD8](v73);
        return v40;
      }

      else
      {
        v37 = v62 < v61;
        MEMORY[0x277D82BD8](v73);
        return v37;
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268D25234(void *a1)
{
  v62 = a1;
  v68 = 0;
  v67 = 0;
  v64 = 0;
  v63 = 0;
  v60 = *v1;
  v52 = sub_268F990E4();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52, v2, v3, v4);
  v56 = &v22 - v55;
  v57 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0E0, qword_268F9DA30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62, v5, v6, v7);
  v58 = &v22 - v57;
  v59 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, &v22 - v57, v10, v11);
  v61 = &v22 - v59;
  v68 = v12;
  v67 = v1;
  v66 = *(v60 + qword_2802F0750);
  v65 = *(v60 + qword_2802F0750 + 8);
  MEMORY[0x277D82BE0](v12);
  if (v62)
  {
    v51 = v62;
    v48 = v62;
    v64 = v62;
    v49 = [v62 dateComponentsRange];
    v50 = [v49 endDateComponents];
    if (v50)
    {
      v47 = v50;
      v46 = v50;
      sub_268F99094();
      (*(v53 + 32))(v58, v56, v52);
      (*(v53 + 56))(v58, 0, 1, v52);
      MEMORY[0x277D82BD8](v46);
    }

    else
    {
      (*(v53 + 56))(v58, 1, 1, v52);
    }

    sub_268D29338(v58, v61);
    v13 = MEMORY[0x277D82BD8](v49);
    if ((*(v53 + 48))(v61, 1, v52, v13) == 1)
    {
      sub_268D29460(v61);
      v44 = 0;
      v45 = 1;
    }

    else
    {
      v42 = sub_268F990A4();
      v43 = v14;
      (*(v53 + 8))(v61, v52);
      v44 = v42;
      v45 = v43;
    }

    v41 = v44;
    if (v45)
    {
      v22 = sub_268F9AEF4();
      v23 = v19;
      MEMORY[0x277D82BD8](v48);
      v36 = v22;
      v37 = v23;
    }

    else
    {
      v40 = v41;
      v39 = v41;
      v63 = v41;
      if (v41 >= 5 && v39 < 12)
      {
        v34 = sub_268F9AEF4();
        v35 = v15;
        MEMORY[0x277D82BD8](v48);
        v36 = v34;
        v37 = v35;
      }

      else if (v39 >= 12 && v39 < 18)
      {
        v31 = sub_268F9AEF4();
        v32 = v16;
        MEMORY[0x277D82BD8](v48);
        v36 = v31;
        v37 = v32;
      }

      else
      {
        if (v39 >= 18 && v39 <= 23)
        {
          v29 = 1;
        }

        else
        {
          v28 = (v39 & 0x8000000000000000) == 0 && v39 < 5;
          v29 = v28;
        }

        if (v29)
        {
          v26 = sub_268F9AEF4();
          v27 = v17;
          MEMORY[0x277D82BD8](v48);
          v36 = v26;
          v37 = v27;
        }

        else
        {
          v24 = sub_268F9AEF4();
          v25 = v18;
          MEMORY[0x277D82BD8](v48);
          v36 = v24;
          v37 = v25;
        }
      }
    }
  }

  else
  {
    v36 = sub_268F9AEF4();
    v37 = v20;
  }

  return v36;
}

uint64_t sub_268D25968(uint64_t a1, char a2)
{
  *(v3 + 160) = v2;
  *(v3 + 249) = a2 & 1;
  *(v3 + 152) = a1;
  *(v3 + 112) = v3;
  *(v3 + 120) = 0;
  *(v3 + 248) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 120) = a1;
  *(v3 + 248) = a2 & 1;
  *(v3 + 128) = v2;
  return MEMORY[0x2822009F8](sub_268D259EC, 0);
}

uint64_t sub_268D259EC()
{
  v1 = *(v0 + 152);
  *(v0 + 112) = v0;
  v15 = *v1;
  v16 = v1[1];

  v2 = BinarySettingIdentifier.rawValue.getter();
  v17 = MEMORY[0x26D62DB50](v15, v16, v2);

  if (v17)
  {
    v12 = *(v14 + 249);
    v9 = *(v14 + 152);
    *(v14 + 168) = *(*(v14 + 160) + qword_2802F0748);

    type metadata accessor for SettingsMultiSetting(0);
    v10 = *v9;
    v11 = v9[1];

    v13 = sub_268E067CC(v10, v11, v12 & 1);
    *(v14 + 176) = v13;
    v3 = swift_task_alloc();
    *(v14 + 184) = v3;
    *v3 = *(v14 + 112);
    v3[1] = sub_268D25C68;

    return sub_268EBCE34(v13);
  }

  else
  {
    v7 = *(v14 + 249);
    v6 = *(v14 + 152);
    *(v14 + 208) = *(*(v14 + 160) + qword_2802F0748);

    v8 = sub_268CDFAE8(v6, v7 & 1, 1);
    *(v14 + 216) = v8;
    v5 = swift_task_alloc();
    *(v14 + 224) = v5;
    *v5 = *(v14 + 112);
    v5[1] = sub_268D26118;

    return sub_268EB7990(v8);
  }
}

uint64_t sub_268D25C68(uint64_t a1)
{
  v5 = *v2;
  v5[14] = *v2;
  v5[24] = a1;
  v5[25] = v1;

  if (v1)
  {
    v3 = sub_268D265C8;
  }

  else
  {

    v3 = sub_268D25DFC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D25DFC(uint64_t a1)
{
  v21 = *(v1 + 192);
  *(v1 + 112) = v1;
  if (v21)
  {
    *(v20 + 144) = v21;
    v18 = sub_268E0739C(v21);
    v19 = v2;
    v3 = MEMORY[0x277D82BD8](v21);
    v4 = *(*(v20 + 112) + 8);

    return v4(v18, v19, v3);
  }

  else
  {
    v11 = *(v20 + 152);
    v6 = sub_268DC7B48();
    v17 = *v6;
    MEMORY[0x277D82BE0](*v6);
    v16 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v15 = v7;
    *(v20 + 32) = *v11;
    sub_268D28874((v20 + 32), (v20 + 80));
    *(v20 + 96) = *(v20 + 32);
    v12 = MEMORY[0x277D837D0];
    v13 = sub_268F9AE84();
    v14 = v8;
    v15[3] = v12;
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingTemplatingService getSettingName | multiSettingName CAT failed", 78, 2, &dword_268CBE000, v17, v16);

    MEMORY[0x277D82BD8](v17);
    sub_268D284D4();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v10 = *(*(v20 + 112) + 8);

    return v10();
  }
}

uint64_t sub_268D26118(uint64_t a1)
{
  v5 = *v2;
  v5[14] = *v2;
  v5[29] = a1;
  v5[30] = v1;

  if (v1)
  {
    v3 = sub_268D26904;
  }

  else
  {

    v3 = sub_268D262AC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D262AC(uint64_t a1)
{
  v21 = *(v1 + 232);
  *(v1 + 112) = v1;
  if (v21)
  {
    *(v20 + 136) = v21;
    v18 = sub_268E0739C(v21);
    v19 = v2;
    v3 = MEMORY[0x277D82BD8](v21);
    v4 = *(*(v20 + 112) + 8);

    return v4(v18, v19, v3);
  }

  else
  {
    v11 = *(v20 + 152);
    v6 = sub_268DC7B48();
    v17 = *v6;
    MEMORY[0x277D82BE0](*v6);
    v16 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v15 = v7;
    *(v20 + 16) = *v11;
    sub_268D28874((v20 + 16), (v20 + 48));
    *(v20 + 64) = *(v20 + 16);
    v12 = MEMORY[0x277D837D0];
    v13 = sub_268F9AE84();
    v14 = v8;
    v15[3] = v12;
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingTemplatingService getSettingName | binarySettingName CAT failed", 79, 2, &dword_268CBE000, v17, v16);

    MEMORY[0x277D82BD8](v17);
    sub_268D284D4();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v10 = *(*(v20 + 112) + 8);

    return v10();
  }
}

uint64_t sub_268D265C8()
{
  v15 = *(v0 + 200);
  *(v0 + 112) = v0;

  v7 = *(v14 + 152);
  v1 = sub_268DC7B48();
  v13 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v12 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v2;
  *(v14 + 32) = *v7;
  sub_268D28874((v14 + 32), (v14 + 80));
  *(v14 + 96) = *(v14 + 32);
  v8 = MEMORY[0x277D837D0];
  v9 = sub_268F9AE84();
  v10 = v3;
  v11[3] = v8;
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService getSettingName | multiSettingName CAT failed", 78, 2, &dword_268CBE000, v13, v12);

  MEMORY[0x277D82BD8](v13);
  sub_268D284D4();
  swift_allocError();
  *v4 = 1;
  swift_willThrow();
  v5 = *(*(v14 + 112) + 8);

  return v5();
}

uint64_t sub_268D26904()
{
  v15 = *(v0 + 240);
  *(v0 + 112) = v0;

  v7 = *(v14 + 152);
  v1 = sub_268DC7B48();
  v13 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v12 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v2;
  *(v14 + 16) = *v7;
  sub_268D28874((v14 + 16), (v14 + 48));
  *(v14 + 64) = *(v14 + 16);
  v8 = MEMORY[0x277D837D0];
  v9 = sub_268F9AE84();
  v10 = v3;
  v11[3] = v8;
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService getSettingName | binarySettingName CAT failed", 79, 2, &dword_268CBE000, v13, v12);

  MEMORY[0x277D82BD8](v13);
  sub_268D284D4();
  swift_allocError();
  *v4 = 1;
  swift_willThrow();
  v5 = *(*(v14 + 112) + 8);

  return v5();
}

uint64_t sub_268D26C40(uint64_t a1, char a2)
{
  *(v3 + 104) = v2;
  *(v3 + 153) = a2 & 1;
  *(v3 + 96) = a1;
  *(v3 + 64) = v3;
  *(v3 + 72) = 0;
  *(v3 + 152) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 72) = a1;
  *(v3 + 152) = a2 & 1;
  *(v3 + 80) = v2;
  return MEMORY[0x2822009F8](sub_268D26CB8, 0);
}

uint64_t sub_268D26CB8()
{
  v1 = *(v0 + 104);
  v5 = *(v0 + 153);
  v4 = *(v0 + 96);
  *(v0 + 64) = v0;
  *(v0 + 112) = *(v1 + qword_2802F0748);

  v7 = sub_268CDFAE8(v4, v5 & 1, 1);
  *(v0 + 120) = v7;
  v2 = swift_task_alloc();
  *(v6 + 128) = v2;
  *v2 = *(v6 + 64);
  v2[1] = sub_268D26DC0;

  return sub_268EB818C(v7);
}

uint64_t sub_268D26DC0(uint64_t a1)
{
  v5 = *v2;
  v5[8] = *v2;
  v5[17] = a1;
  v5[18] = v1;

  if (v1)
  {
    v3 = sub_268D27258;
  }

  else
  {

    v3 = sub_268D26F54;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D26F54(uint64_t a1)
{
  v21 = *(v1 + 136);
  *(v1 + 64) = v1;
  if (v21)
  {
    *(v20 + 88) = v21;
    v18 = sub_268E0739C(v21);
    v19 = v2;
    v3 = MEMORY[0x277D82BD8](v21);
    v4 = *(*(v20 + 64) + 8);

    return v4(v18, v19, v3);
  }

  else
  {
    v11 = *(v20 + 96);
    v6 = sub_268DC7B48();
    v17 = *v6;
    MEMORY[0x277D82BE0](*v6);
    v16 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v15 = v7;
    *(v20 + 16) = *v11;
    sub_268D28874((v20 + 16), (v20 + 32));
    *(v20 + 48) = *(v20 + 16);
    v12 = MEMORY[0x277D837D0];
    v13 = sub_268F9AE84();
    v14 = v8;
    v15[3] = v12;
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingTemplatingService getSettingName | binarySettingPageName CAT failed", 83, 2, &dword_268CBE000, v17, v16);

    MEMORY[0x277D82BD8](v17);
    sub_268D284D4();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v10 = *(*(v20 + 64) + 8);

    return v10();
  }
}

uint64_t sub_268D27258()
{
  v15 = *(v0 + 144);
  *(v0 + 64) = v0;

  v7 = *(v14 + 96);
  v1 = sub_268DC7B48();
  v13 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v12 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v2;
  *(v14 + 16) = *v7;
  sub_268D28874((v14 + 16), (v14 + 32));
  *(v14 + 48) = *(v14 + 16);
  v8 = MEMORY[0x277D837D0];
  v9 = sub_268F9AE84();
  v10 = v3;
  v11[3] = v8;
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService getSettingName | binarySettingPageName CAT failed", 83, 2, &dword_268CBE000, v13, v12);

  MEMORY[0x277D82BD8](v13);
  sub_268D284D4();
  swift_allocError();
  *v4 = 1;
  swift_willThrow();
  v5 = *(*(v14 + 64) + 8);

  return v5();
}

uint64_t sub_268D2785C()
{
  sub_268CD7930((v0 + qword_2802DBFD0));
  v4 = qword_2802DBFD8;
  v1 = sub_268F9AB24();
  (*(*(v1 - 8) + 8))(v0 + v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_2802DBFE8));
  __swift_destroy_boxed_opaque_existential_0((v0 + qword_2802DBFF0));

  v5 = qword_2802DC028;
  v2 = sub_268F99214();
  (*(*(v2 - 8) + 8))(v0 + v5);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_2802DC050));

  return __swift_destroy_boxed_opaque_existential_0((v0 + qword_2802DC058));
}

uint64_t sub_268D27A9C()
{
  v5 = sub_268F99AB4();
  sub_268CD7930((v5 + qword_2802DBFD0));
  v3 = qword_2802DBFD8;
  v0 = sub_268F9AB24();
  (*(*(v0 - 8) + 8))(v5 + v3);

  __swift_destroy_boxed_opaque_existential_0((v5 + qword_2802DBFE8));
  __swift_destroy_boxed_opaque_existential_0((v5 + qword_2802DBFF0));

  v4 = qword_2802DC028;
  v1 = sub_268F99214();
  (*(*(v1 - 8) + 8))(v5 + v4);

  __swift_destroy_boxed_opaque_existential_0((v5 + qword_2802DC050));

  __swift_destroy_boxed_opaque_existential_0((v5 + qword_2802DC058));
  return v5;
}

BOOL sub_268D27DC8(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      case 7:
        v4 = 7;
        break;
      case 8:
        v4 = 8;
        break;
      default:
        v4 = 9;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      case 7:
        v3 = 7;
        break;
      case 8:
        v3 = 8;
        break;
      default:
        v3 = 9;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

id *sub_268D28378(id *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v1 = sub_268F999F4();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

void *sub_268D28414(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

unint64_t sub_268D284D4()
{
  v2 = qword_2802DC078;
  if (!qword_2802DC078)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC078);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D28588(uint64_t a1)
{
  v3 = sub_268F9A9C4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

id *sub_268D28630(id *a1, id *a2)
{
  if (a2 != a1)
  {
    sub_268D28378(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }

    else
    {
      v2 = sub_268F999F4();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }
  }

  return a2;
}

void *sub_268D28718(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v2 = sub_268F999F4();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_268D28814(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  a2[2] = a1[2];
  a2[3] = a1[3];
  a2[4] = a1[4];
  return result;
}

void *sub_268D28874(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

_BYTE *sub_268D288B4(_BYTE *a1, _BYTE *a2)
{
  result = a2;
  *a2 = *a1;
  return result;
}

unint64_t sub_268D288C8()
{
  v2 = qword_280FE4538;
  if (!qword_280FE4538)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE4538);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D28940()
{
  v2 = qword_2802DC088;
  if (!qword_2802DC088)
  {
    sub_268CD7620();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC088);
    return WitnessTable;
  }

  return v2;
}

void *sub_268D28A00(id *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a1;
    v3 = *a1;
    *a2 = v5;
  }

  else
  {
    v2 = sub_268F999F4();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t sub_268D28AD4()
{
  v2 = qword_280FE4530;
  if (!qword_280FE4530)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE4530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D28B4C()
{
  v2 = qword_2802DC098;
  if (!qword_2802DC098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC090, &qword_268F9D9A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC098);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D28BD4()
{
  v2 = qword_2802DC0A0;
  if (!qword_2802DC0A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC0A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D28C4C()
{
  v2 = qword_2802DC0A8;
  if (!qword_2802DC0A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC0A8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D28CD0()
{
  v2 = qword_2802DC0B8;
  if (!qword_2802DC0B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC0B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D28EFC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);

  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);

  *(a2 + 24) = v4;
  *(a2 + 32) = *(a1 + 32);
  v5 = *(a1 + 40);

  *(a2 + 40) = v5;
  *(a2 + 48) = *(a1 + 48);
  v6 = *(a1 + 56);

  *(a2 + 56) = v6;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 65) = *(a1 + 65);
  *(a2 + 72) = *(a1 + 72);
  v7 = *(a1 + 80);

  *(a2 + 80) = v7;
  *(a2 + 88) = *(a1 + 88);
  v9 = *(a1 + 96);

  result = a2;
  *(a2 + 96) = v9;
  *(a2 + 104) = *(a1 + 104);
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_268D29010(void *a1)
{
}

unint64_t sub_268D29078()
{
  v2 = qword_2802DC0C8;
  if (!qword_2802DC0C8)
  {
    type metadata accessor for INSetBinarySettingIntentResponseCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC0C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D290F8()
{
  v2 = qword_2802DC0D0;
  if (!qword_2802DC0D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC0D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D29170()
{
  v2 = qword_280FE27A0;
  if (!qword_280FE27A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE27A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D291D4()
{
  v2 = qword_280FE27D0;
  if (!qword_280FE27D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE27D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D29238()
{
  v2 = qword_2802DC0D8;
  if (!qword_2802DC0D8)
  {
    sub_268D291D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC0D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D292B8()
{
  v2 = qword_2802DCAD0;
  if (!qword_2802DCAD0)
  {
    type metadata accessor for INBinarySettingValue(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCAD0);
    return WitnessTable;
  }

  return v2;
}

void *sub_268D29338(const void *a1, void *a2)
{
  v6 = sub_268F990E4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0E0, qword_268F9DA30);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268D29460(uint64_t a1)
{
  v3 = sub_268F990E4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_268D29508()
{
  v2 = qword_2802DC0E8[0];
  if (!qword_2802DC0E8[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_2802DC0E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D295B4(uint64_t a1)
{
  inited = sub_268F9AB24();
  if (v1 <= 0x3F)
  {
    inited = sub_268F99214();
    if (v2 <= 0x3F)
    {
      inited = swift_initClassMetadata2();
      if (!inited)
      {
        return 0;
      }
    }
  }

  return inited;
}

uint64_t sub_268D297D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_268D29860(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_268D29978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_268D29B88(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF6)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 9) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 246;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 10;
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

_BYTE *sub_268D29CF0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF6)
  {
    v5 = ((a3 + 9) >> 8) + 1;
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

  if (a2 > 0xF6)
  {
    v4 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
      *result = a2 + 9;
    }
  }

  return result;
}

unint64_t sub_268D29F28()
{
  v2 = qword_2802DC1F0;
  if (!qword_2802DC1F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC1F0);
    return WitnessTable;
  }

  return v2;
}

void *sub_268D29FC8(const void *a1, void *a2)
{
  v7 = sub_268F9A9C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
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
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

void *sub_268D2A1F0(const void *a1, void *a2)
{
  v6 = sub_268F9A9C4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268D2A318(uint64_t a1)
{
  v9 = type metadata accessor for SFSymbolStructSpeakableString(0);
  if (!(*(*(v9 - 8) + 48))(a1, 1))
  {
    v5 = sub_268F9A9C4();
    v4 = *(v5 - 8);
    v3 = *(v4 + 8);
    v3(a1);
    v6 = a1 + *(v9 + 20);
    v7 = *(v4 + 48);
    if (!v7())
    {
      (v3)(v6, v5);
    }

    v2 = a1 + *(v9 + 24);
    if (!v7())
    {
      (v3)(v2, v5);
    }
  }

  return a1;
}

uint64_t sub_268D2A4A0(uint64_t a1, uint64_t a2)
{
  v10 = sub_268F9A9C4();
  v9 = *(v10 - 8);
  v8 = *(v9 + 32);
  (v8)(a2, a1);
  v12 = type metadata accessor for SFSymbolStructSpeakableString(0);
  v13 = *(v12 + 20);
  v14 = *(v9 + 48);
  if ((v14)(a1 + v13, 1, v10))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v13), (a1 + v13), *(*(v2 - 8) + 64));
  }

  else
  {
    v8();
    (*(v9 + 56))(a2 + v13, 0, 1, v10);
  }

  __dst = (a2 + *(v12 + 24));
  __src = (a1 + *(v12 + 24));
  if (v14())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (v8)(__dst, __src, v10);
    (*(v9 + 56))(__dst, 0, 1, v10);
  }

  return a2;
}

uint64_t sub_268D2A724(uint64_t a1)
{
  v5 = sub_268F9A9C4();
  v4 = *(v5 - 8);
  v3 = *(v4 + 8);
  v3(a1);
  v7 = type metadata accessor for SFSymbolStructSpeakableString(0);
  v8 = *(v7 + 20);
  v9 = *(v4 + 48);
  if (!(v9)(a1 + v8, 1, v5))
  {
    (v3)(a1 + v8, v5);
  }

  v2 = a1 + *(v7 + 24);
  if (!v9())
  {
    (v3)(v2, v5);
  }

  return a1;
}

uint64_t sub_268D2A8D4()
{
  v7 = sub_268F9AEF4();
  v8 = v0;
  v1 = sub_268D2A940();
  result = sub_268F39F28(v1, v2, v7, v8);
  qword_2802F0760 = result;
  qword_2802F0768 = v4;
  qword_2802F0770 = v5;
  qword_2802F0778 = v6;
  return result;
}

uint64_t *sub_268D2A970()
{
  if (qword_2802DAF48 != -1)
  {
    swift_once();
  }

  return &qword_2802F0760;
}

uint64_t sub_268D2A9D0()
{
  v1 = *sub_268D2A970();

  return v1;
}

uint64_t sub_268D2AB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268D2AA5C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268D2AB54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268D2AA9C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_268D2ABB8()
{
  v2 = qword_2802DC200;
  if (!qword_2802DC200)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC200);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D2AC64(uint64_t a1)
{
  v8 = a1;
  v17 = 0;
  v16 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC230, &unk_268F9DDE0);
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v9 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v2, v3, v4);
  v14 = &v7 - v9;
  v17 = v5;
  v16 = v1;
  v10 = v5[3];
  v11 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v10);
  sub_268D2ABB8();
  sub_268F9B844();
  return (*(v12 + 8))(v14, v15);
}

uint64_t sub_268D2AD8C(void *a1)
{
  swift_allocObject();
  v5 = sub_268D2AE18(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_268D2AE74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268D2AD8C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_268D2AF88(void *a1)
{
  a1[1] = sub_268D2AFCC();
  a1[2] = sub_268D2B04C();
  result = sub_268D2B0CC();
  a1[3] = result;
  return result;
}

unint64_t sub_268D2AFCC()
{
  v2 = qword_2802DC208;
  if (!qword_2802DC208)
  {
    type metadata accessor for LaunchEnvPicker();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC208);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2B04C()
{
  v2 = qword_2802DC210;
  if (!qword_2802DC210)
  {
    type metadata accessor for LaunchEnvPicker();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2B0CC()
{
  v2 = qword_2802DC218;
  if (!qword_2802DC218)
  {
    type metadata accessor for LaunchEnvPicker();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2B164()
{
  v2 = qword_2802DC220;
  if (!qword_2802DC220)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2B1F8()
{
  v2 = qword_2802DC228;
  if (!qword_2802DC228)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC228);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D2B274()
{
  type metadata accessor for BargeInStateProvider();
  sub_268F99C44();
  result = sub_268D2B2E8(v1);
  qword_280FE81D8 = result;
  return result;
}

uint64_t *sub_268D2B334()
{
  if (qword_280FE50E0 != -1)
  {
    swift_once();
  }

  return &qword_280FE81D8;
}

uint64_t sub_268D2B394()
{
  v1 = *sub_268D2B334();

  return v1;
}

uint64_t sub_268D2B3E4(void *a1)
{
  v6 = 0;
  v7 = a1;
  sub_268CDE730(a1, v5);
  sub_268CDF978(v5, (v1 + 16));
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t sub_268D2B440()
{
  v93 = 0;
  v67 = 0;
  v55 = sub_268F9A784();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55, v1, v2, v3);
  v59 = &v35[-v58];
  v60 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v35[-v58], v5, v6, v7);
  v61 = &v35[-v60];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC238, &qword_268F9DDF0);
  v63 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62, v8, v9, v10);
  v64 = &v35[-v63];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC240, &qword_268F9DDF8);
  v65 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v12, v13, v14);
  v66 = &v35[-v65];
  v68 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC248, &qword_268F9DE00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67, v15, v16, v17);
  v69 = &v35[-v68];
  v70 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, &v35[-v68], v20, v21);
  v71 = &v35[-v70];
  v72 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, &v35[-v70], v24, v25);
  v73 = &v35[-v72];
  v82 = sub_268F9A794();
  v78 = *(v82 - 8);
  v79 = v82 - 8;
  v74 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v82, v26, v27, v28);
  v80 = &v35[-v74];
  v75 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v35[-v74], v30, v31, v32);
  v81 = &v35[-v75];
  v93 = v0;
  v85 = v90;
  sub_268CDE730(v0 + 16, v90);
  v77 = v91;
  v76 = v92;
  __swift_project_boxed_opaque_existential_1(v85, v91);
  sub_268F99794();
  (*(v78 + 104))(v80, *MEMORY[0x277D61C78], v82);
  sub_268D2BDDC();
  v86 = sub_268F9B754();
  v84 = *(v78 + 8);
  v83 = v78 + 8;
  v84(v80, v82);
  v84(v81, v82);
  __swift_destroy_boxed_opaque_existential_0(v85);
  if ((v86 & 1) == 0)
  {
    v47 = &v87;
    sub_268CDE730(v54 + 16, &v87);
    v49 = v88;
    v48 = v89;
    __swift_project_boxed_opaque_existential_1(v47, v88);
    sub_268F997A4();
    v50 = sub_268F9A7D4();
    v51 = *(v50 - 8);
    v52 = v50 - 8;
    if ((*(v51 + 48))(v66, 1) == 1)
    {
      __swift_destroy_boxed_opaque_existential_0(&v87);
      sub_268D2BE5C(v66);
      (*(v56 + 56))(v73, 1, 1, v55);
    }

    else
    {
      sub_268F9A7C4();
      (*(v51 + 8))(v66, v50);
      (*(v56 + 56))(v73, 0, 1, v55);
      __swift_destroy_boxed_opaque_existential_0(&v87);
    }

    sub_268F9A774();
    v33 = *(v56 + 56);
    v44 = 1;
    v33(v71, 0);
    v43 = &v64[*(v62 + 48)];
    sub_268D2BF04(v73, v64);
    sub_268D2BF04(v71, v43);
    v45 = *(v56 + 48);
    v46 = v56 + 48;
    if (v45(v64, v44, v55) == 1)
    {
      if (v45(v43, 1, v55) != 1)
      {
        goto LABEL_12;
      }

      sub_268D2C158(v64);
      v42 = 1;
    }

    else
    {
      sub_268D2BF04(v64, v69);
      if (v45(v43, 1, v55) == 1)
      {
        (*(v56 + 8))(v69, v55);
LABEL_12:
        sub_268D2C02C(v64);
        v42 = 0;
        goto LABEL_11;
      }

      v38 = *(v56 + 32);
      v37 = v56 + 32;
      v38(v61, v69, v55);
      v38(v59, v43, v55);
      sub_268D2C200();
      v41 = sub_268F9AE04();
      v40 = *(v56 + 8);
      v39 = v56 + 8;
      v40(v59, v55);
      v40(v61, v55);
      sub_268D2C158(v64);
      v42 = v41;
    }

LABEL_11:
    v36 = v42;
    sub_268D2C158(v71);
    sub_268D2C158(v73);
    v53 = v36;
    return v53 & 1;
  }

  v53 = 1;
  return v53 & 1;
}

unint64_t sub_268D2BDDC()
{
  v2 = qword_280FE66B0;
  if (!qword_280FE66B0)
  {
    sub_268F9A794();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE66B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D2BE5C(uint64_t a1)
{
  v3 = sub_268F9A7D4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_268D2BF04(const void *a1, void *a2)
{
  v6 = sub_268F9A784();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC248, &qword_268F9DE00);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268D2C02C(uint64_t a1)
{
  v4 = sub_268F9A784();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC238, &qword_268F9DDF0) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

uint64_t sub_268D2C158(uint64_t a1)
{
  v3 = sub_268F9A784();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_268D2C200()
{
  v2 = qword_280FE66B8;
  if (!qword_280FE66B8)
  {
    sub_268F9A784();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE66B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D2C2F4()
{
  sub_268D2DF48();
  sub_268DC7C08();

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802DC250 = result;
  return result;
}

uint64_t *sub_268D2C374()
{
  if (qword_2802DAF58 != -1)
  {
    swift_once();
  }

  return &qword_2802DC250;
}

uint64_t sub_268D2C3D4()
{
  v7 = sub_268F9AEF4();
  v8 = v0;
  v1 = sub_268D2A940();
  result = sub_268F39F28(v1, v2, v7, v8);
  qword_2802F0780 = result;
  qword_2802F0788 = v4;
  qword_2802F0790 = v5;
  qword_2802F0798 = v6;
  return result;
}

uint64_t *sub_268D2C440()
{
  if (qword_2802DAF60 != -1)
  {
    swift_once();
  }

  return &qword_2802F0780;
}

uint64_t sub_268D2C4A0()
{
  v1 = sub_268D2C440();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t sub_268D2C524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_268D2C440();

  swift_beginAccess();
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;

  swift_endAccess();
}

uint64_t sub_268D2C5DC()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_268D2C614()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_268D2C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4[2] = a1;
  v4[3] = a2;

  v4[4] = a3;
  v4[5] = a4;

  return v10;
}

uint64_t sub_268D2C758(void *a1, void *a2)
{
  v9 = a1[2];
  v12 = a1[3];

  v10 = a2[2];
  v11 = a2[3];

  v15 = MEMORY[0x26D62DB50](v9, v12, v10, v11);

  if (v15)
  {
    v3 = a1[4];
    v6 = a1[5];

    v4 = a2[4];
    v5 = a2[5];

    v7 = MEMORY[0x26D62DB50](v3, v6, v4, v5);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_268D2C8A0(uint64_t a1, uint64_t a2)
{
  sub_268E4F23C(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v9 = v2;
  *v2 = sub_268E4F2C8(0);
  v9[1] = v3;
  sub_268CD4334();
  v9[5] = MEMORY[0x277D83B88];
  v9[2] = v4;
  v9[6] = sub_268E4F2C8(1);
  v9[7] = v5;

  v9[11] = MEMORY[0x277D837D0];
  v9[8] = a1;
  v9[9] = a2;
  sub_268CD0F7C();
  sub_268F9ADA4();
  return sub_268F99BF4();
}

uint64_t sub_268D2C9E8(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;

  v12[0] = sub_268F9AEF4();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x26D62DB50](v12[0], v2, a1, a2);
  sub_268CD9D30(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  v11[0] = sub_268F9AEF4();
  v11[1] = v3;
  v6 = MEMORY[0x26D62DB50](v11[0], v3, a1, a2);
  sub_268CD9D30(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_268D2CD2C()
{
  v2 = qword_2802DC260;
  if (!qword_2802DC260)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC260);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D2CEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268D2C9E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268D2CF34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268D2CB8C();
  *a1 = result;
  return result;
}

unint64_t sub_268D2CF90()
{
  v2 = qword_2802DC268;
  if (!qword_2802DC268)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC268);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D2D03C()
{
  sub_268CD9D30(v0 + 16);
  sub_268CD9D30(v0 + 32);
  return v2;
}

uint64_t sub_268D2D0BC(uint64_t a1)
{
  v11 = a1;
  v28 = 0;
  v27 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2A8, &qword_268F9E0B0);
  v12 = *(v22 - 8);
  v13 = v22 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v17 = v9 - v14;
  v28 = v5;
  v27 = v1;
  v15 = v5[3];
  v16 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v15);
  sub_268D2CF90();
  sub_268F9B844();
  v6 = v19;
  v20 = v18[2];
  v21 = v18[3];

  v26 = 0;
  sub_268F9B6A4();
  v23 = v6;
  v24 = v6;
  if (v6)
  {
    v9[1] = v24;

    return (*(v12 + 8))(v17, v22);
  }

  else
  {

    v7 = v23;
    v9[3] = v18[4];
    v9[4] = v18[5];

    v25 = 1;
    sub_268F9B6A4();
    v9[5] = v7;
    v10 = v7;
    if (v7)
    {
      v9[0] = v10;
    }

    return (*(v12 + 8))(v17, v22);
  }
}

uint64_t sub_268D2D340(void *a1)
{
  swift_allocObject();
  v5 = sub_268D2D3CC(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_268D2D3CC(void *a1)
{
  v32 = a1;
  v46 = 0;
  v45 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2A0, &qword_268F9E0A8);
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32, v2, v3, v4);
  v37 = v18 - v36;
  v46 = v5;
  v45 = v1;
  v39 = v5[3];
  v40 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v39);
  sub_268D2CF90();
  v6 = v38;
  sub_268F9B834();
  v41 = v6;
  v42 = v6;
  if (v6)
  {
    v21 = v42;
    v22 = 0;
    v19 = 0;
    v20 = v42;
    v18[2] = v31;
    v18[1] = v31;
    type metadata accessor for UndoBinarySetting();
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0(v32);
    return v18[0];
  }

  else
  {
    v44 = 0;
    v7 = sub_268F9B614();
    v27 = 0;
    v28 = v7;
    v29 = v8;
    v30 = 0;
    v9 = v31;
    *(v31 + 16) = v7;
    *(v9 + 24) = v8;
    v43 = 1;
    v10 = sub_268F9B614();
    v23 = 0;
    v24 = v10;
    v25 = v11;
    v26 = 0;
    v12 = v31;
    v13 = v33;
    v14 = v37;
    v15 = v34;
    v16 = v25;
    *(v31 + 32) = v24;
    *(v12 + 40) = v16;
    (*(v15 + 8))(v14, v13);
    __swift_destroy_boxed_opaque_existential_0(v32);
    return v31;
  }
}

uint64_t sub_268D2D734@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268D2D340(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_268D2D834(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
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

_BYTE *sub_268D2D99C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
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

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_268D2DBC8(void *a1)
{
  a1[1] = sub_268D2DC0C();
  a1[2] = sub_268D2DC8C();
  result = sub_268D2DD0C();
  a1[3] = result;
  return result;
}

unint64_t sub_268D2DC0C()
{
  v2 = qword_2802DC270;
  if (!qword_2802DC270)
  {
    type metadata accessor for UndoBinarySetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC270);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2DC8C()
{
  v2 = qword_2802DC278;
  if (!qword_2802DC278)
  {
    type metadata accessor for UndoBinarySetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC278);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2DD0C()
{
  v2 = qword_2802DC280;
  if (!qword_2802DC280)
  {
    type metadata accessor for UndoBinarySetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2DDA4()
{
  v2 = qword_2802DC288;
  if (!qword_2802DC288)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC288);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2DE38()
{
  v2 = qword_2802DC290;
  if (!qword_2802DC290)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2DECC()
{
  v2 = qword_2802DC298;
  if (!qword_2802DC298)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC298);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2DF48()
{
  v2 = qword_280FE2720;
  if (!qword_280FE2720)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE2720);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268D2DFAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3);
  result = sub_268D350FC(18, 0, 0);
  if (result)
  {
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_268D2E0CC()
{
  v0 = sub_268DDE5B4();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_280FE7FC8 = v2;
  return result;
}

uint64_t *sub_268D2E10C()
{
  if (qword_280FE2AE8 != -1)
  {
    swift_once();
  }

  return &qword_280FE7FC8;
}

uint64_t sub_268D2E16C()
{
  v0 = sub_268D2E10C();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268D2E1C4()
{
  v2 = *(v0 + 96);

  return v2;
}

uint64_t sub_268D2E1F0()
{
  v2 = *(v0 + 104);

  return v2;
}

uint64_t sub_268D2E21C()
{
  v2 = *(v0 + 112);

  return v2;
}

uint64_t sub_268D2E288()
{
  v2 = *(v0 + 200);

  return v2;
}

uint64_t sub_268D2E338(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = v8;

  v8[14] = a5;

  v8[12] = a3;

  v8[13] = a4;
  sub_268CDE730(a1, v22);
  sub_268CDF978(v22, v8 + 2);
  sub_268CDE730(a2, v21);
  sub_268CDF978(v21, v8 + 7);
  sub_268CDE730(a6, v20);
  sub_268CDF978(v20, v8 + 15);
  sub_268CDE730(a7, v19);
  sub_268CDF978(v19, v8 + 20);

  v8[25] = a8;

  __swift_destroy_boxed_opaque_existential_0(a7);
  __swift_destroy_boxed_opaque_existential_0(a6);

  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v18;
}

uint64_t sub_268D2E4C8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_268F9B284();
  v3 = sub_268DC7C68();
  v8 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v7, &dword_268CBE000, v8, "GetSettingHandleIntentFlowStrategy: makeSiriKitIntentHandler.", 61, 2);

  MEMORY[0x277D82BD8](v8);

  v4 = sub_268D2E10C();
  MEMORY[0x277D82BE0](*v4);
  MEMORY[0x277D82BE0](a2);
  sub_268D2E630();
  sub_268F99694();
  v5 = sub_268F996A4();
  return (*(*(v5 - 8) + 56))(a3, 0, 1);
}

unint64_t sub_268D2E630()
{
  v2 = qword_280FE27C8;
  if (!qword_280FE27C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE27C8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268D2E694(uint64_t a1, uint64_t a2)
{
  *(v3 + 2248) = v2;
  *(v3 + 2240) = a2;
  *(v3 + 2232) = a1;
  *(v3 + 2152) = v3;
  *(v3 + 2160) = 0;
  *(v3 + 2168) = 0;
  *(v3 + 2640) = 0;
  *(v3 + 2184) = 0;
  *(v3 + 2200) = 0;
  *(v3 + 2208) = 0;
  *(v3 + 2216) = 0;
  *(v3 + 2224) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  *(v3 + 2256) = swift_task_alloc();
  *(v3 + 2264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  *(v3 + 2272) = swift_task_alloc();
  v4 = sub_268F999F4();
  *(v3 + 2280) = v4;
  *(v3 + 2288) = *(v4 - 8);
  *(v3 + 2296) = swift_task_alloc();
  sub_268F99834();
  *(v3 + 2304) = swift_task_alloc();
  v5 = sub_268F99BC4();
  *(v3 + 2312) = v5;
  *(v3 + 2320) = *(v5 - 8);
  *(v3 + 2328) = swift_task_alloc();
  *(v3 + 2336) = swift_task_alloc();
  *(v3 + 2160) = a2;
  *(v3 + 2168) = v2;

  return MEMORY[0x2822009F8](sub_268D2E904, 0);
}

uint64_t sub_268D2E904(uint64_t a1)
{
  v31 = *(v1 + 2248);
  *(v1 + 2152) = v1;
  v27 = sub_268F9B284();
  v2 = sub_268DC7C68();
  v28 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v27, &dword_268CBE000, v28, "GetSettingHandleIntentFlowStrategy: makeIntentHandledResponse.", 62, 2);

  MEMORY[0x277D82BD8](v28);
  type metadata accessor for AuthenticationHandler();
  sub_268CDE730(v31 + 16, v1 + 1632);
  v3 = sub_268CDC590();
  sub_268E4C814((v1 + 1632), v3);
  *(v1 + 2344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
  v29 = sub_268F99B44();
  v30 = sub_268E4CA7C(v29);
  *(v1 + 161) = v30 & 1;
  MEMORY[0x277D82BD8](v29);

  *(v1 + 2640) = v30 & 1;
  sub_268CDE730(v31 + 120, v1 + 1672);
  v33 = *(v1 + 1696);
  v32 = *(v1 + 1704);
  __swift_project_boxed_opaque_existential_1((v1 + 1672), v33);
  v34 = (*(v32 + 56))(v33);
  __swift_destroy_boxed_opaque_existential_0((v1 + 1672));
  if (v34)
  {
    v22 = v26[281];
    v4 = v26[280];
    v19 = sub_268F9B284();
    v5 = sub_268DC7CC8();
    v20 = *v5;
    MEMORY[0x277D82BE0](*v5);
    sub_268F9B734();
    sub_268F9AC14(v19, &dword_268CBE000, v20, "GetSettingHandleIntentFlowStrategy makeIntentHandledResponse | using RF2", 72, 2);

    MEMORY[0x277D82BD8](v20);
    sub_268F99804();

    v21 = swift_task_alloc();
    *(v21 + 16) = v22;
    *(v21 + 24) = v4;
    sub_268F99B94();

    v26[294] = *(v22 + 112);

    v25 = sub_268F99B34();
    v26[295] = v25;
    v23 = sub_268F99B44();
    v26[296] = v23;
    v24 = sub_268F99B24();
    v26[297] = v24;
    v6 = swift_task_alloc();
    v26[298] = v6;
    *v6 = v26[269];
    v6[1] = sub_268D2EFE8;

    return sub_268F0A0DC(v25, v23, v24);
  }

  sub_268CDE730(v26[281] + 120, (v26 + 214));
  v18 = v26[217];
  v17 = v26[218];
  __swift_project_boxed_opaque_existential_1(v26 + 214, v18);
  if (((*(v17 + 16))(v18) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v26 + 214);
LABEL_12:
    v26[325] = *(v26[281] + 112);

    v11 = sub_268F99B34();
    v26[326] = v11;
    v12 = sub_268F99B44();
    v26[327] = v12;
    v13 = sub_268F99B24();
    v26[328] = v13;
    v9 = swift_task_alloc();
    v26[329] = v9;
    *v9 = v26[269];
    v9[1] = sub_268D30B78;
    v10 = v26[284];

    return sub_268EED844(v10, v11, v12, v13);
  }

  __swift_destroy_boxed_opaque_existential_0(v26 + 214);
  if (v30)
  {
    goto LABEL_12;
  }

  v26[316] = *(v26[281] + 112);

  v16 = sub_268F99B34();
  v26[317] = v16;
  v14 = sub_268F99B44();
  v26[318] = v14;
  v15 = sub_268F99B24();
  v26[319] = v15;
  v8 = swift_task_alloc();
  v26[320] = v8;
  *v8 = v26[269];
  v8[1] = sub_268D30540;

  return sub_268EF3DEC(v16, v14, v15);
}

uint64_t sub_268D2EFE8(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[269] = *v2;
  v7[299] = a1;
  v7[300] = v1;

  if (v1)
  {
    v3 = sub_268D312B8;
  }

  else
  {
    v5 = *(v6 + 2352);

    v3 = sub_268D2F1AC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D2F1AC()
{
  v1 = v0[299];
  v2 = v0[281];
  v0[269] = v0;
  v0[277] = v1;
  v0[301] = *(v2 + 112);

  v6 = sub_268F99B34();
  v0[302] = v6;
  v7 = sub_268F99B44();
  v0[303] = v7;
  v8 = sub_268F99B24();
  v0[304] = v8;
  v3 = swift_task_alloc();
  *(v5 + 2440) = v3;
  *v3 = *(v5 + 2152);
  v3[1] = sub_268D2F2F4;

  return sub_268F04F2C(v5 + 1952, v6, v7, v8);
}

uint64_t sub_268D2F2F4()
{
  v6 = *v1;
  v5 = *v1 + 16;
  *(v6 + 2152) = *v1;
  *(v6 + 2448) = v0;

  if (v0)
  {
    v2 = sub_268D314B0;
  }

  else
  {
    v4 = *(v5 + 2408);

    v2 = sub_268D2F4B0;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268D2F4B0()
{
  v37 = v0;
  *(v0 + 2152) = v0;
  if (*(v0 + 1976))
  {
    sub_268CDF978(v32 + 244, v32 + 239);
    sub_268CDE730((v32 + 239), (v32 + 249));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2D8, &qword_268F9E0E0);
    if (swift_dynamicCast())
    {
      memcpy(v36, v32 + 162, sizeof(v36));
      memcpy(v35, v36, sizeof(v35));
      memcpy(v32 + 148, v35, 0x70uLL);
    }

    else
    {
      memset(v33, 0, sizeof(v33));
      memcpy(v32 + 148, v33, 0x70uLL);
    }

    memcpy(v32 + 176, v32 + 148, 0x70uLL);
    if (v32[177])
    {
      v29 = v32[299];
      v32[278] = v32 + 176;
      sub_268F999C4();
      v32[307] = sub_268F999B4();
      sub_268D28EFC((v32 + 176), (v32 + 190));
      memcpy(v32 + 21, v32 + 176, 0x70uLL);
      sub_268D34FC0((v32 + 21));
      v32[267] = &type metadata for SnippetModels;
      v32[268] = sub_268D34E18();
      v1 = swift_allocObject();
      v32[264] = v1;
      memcpy((v1 + 16), v32 + 21, 0x91uLL);
      sub_268D29170();
      sub_268F9B734();
      v28 = v2;
      MEMORY[0x277D82BE0](v29);
      *v28 = v29;
      sub_268CD0F7C();
      v30 = v3;
      v32[308] = v3;
      v31 = (MEMORY[0x277D5BD38] + *MEMORY[0x277D5BD38]);
      v4 = swift_task_alloc();
      v5 = v32 + 264;
      v6 = v30;
      v7 = v31;
      v32[309] = v4;
      *v4 = v32[269];
      v4[1] = sub_268D2FCC8;
      v8 = v32[292];
      v9 = v32[279];
    }

    else
    {
      sub_268CDE730((v32 + 239), (v32 + 254));
      if (swift_dynamicCast())
      {
        memcpy(__dst, v32 + 58, sizeof(__dst));
        memcpy(v32 + 130, __dst, 0x90uLL);
        nullsub_1();
        memcpy(v32 + 40, v32 + 130, 0x90uLL);
      }

      else
      {
        sub_268D34B74(v32 + 76);
        memcpy(v32 + 40, v32 + 76, 0x90uLL);
      }

      memcpy(v32 + 94, v32 + 40, 0x90uLL);
      if (sub_268D34BC0((v32 + 94)) == 1)
      {
        __swift_destroy_boxed_opaque_existential_0(v32 + 239);
        goto LABEL_18;
      }

      v25 = v32[299];
      sub_268F999C4();
      v32[310] = sub_268F999B4();
      sub_268D34CD8(v32 + 94, v32 + 112);
      memcpy(v32 + 2, v32 + 94, 0x90uLL);
      sub_268D34E04((v32 + 2));
      v32[262] = &type metadata for SnippetModels;
      v32[263] = sub_268D34E18();
      v11 = swift_allocObject();
      v32[259] = v11;
      memcpy((v11 + 16), v32 + 2, 0x91uLL);
      sub_268D29170();
      sub_268F9B734();
      v24 = v12;
      MEMORY[0x277D82BE0](v25);
      *v24 = v25;
      sub_268CD0F7C();
      v26 = v13;
      v32[311] = v13;
      v27 = (MEMORY[0x277D5BD38] + *MEMORY[0x277D5BD38]);
      v14 = swift_task_alloc();
      v5 = v32 + 259;
      v6 = v26;
      v7 = v27;
      v32[312] = v14;
      *v14 = v32[269];
      v14[1] = sub_268D2FFB0;
      v8 = v32[292];
      v9 = v32[279];
    }

    return v7(v9, v5, v6, v8);
  }

  sub_268D28414(v32 + 244);
LABEL_18:
  v21 = v32[299];
  sub_268F999C4();
  v32[313] = sub_268F999B4();
  sub_268D29170();
  sub_268F9B734();
  v20 = v15;
  MEMORY[0x277D82BE0](v21);
  *v20 = v21;
  sub_268CD0F7C();
  v22 = v16;
  v32[314] = v16;
  v23 = (MEMORY[0x277D5BD50] + *MEMORY[0x277D5BD50]);
  v17 = swift_task_alloc();
  v32[315] = v17;
  *v17 = v32[269];
  v17[1] = sub_268D3028C;
  v18 = v32[292];
  v19 = v32[279];

  return v23(v19, v22, v18);
}

uint64_t sub_268D2FCC8()
{
  v2 = (*v0 + 2112);
  *(*v0 + 2152) = *v0;

  __swift_destroy_boxed_opaque_existential_0(v2);

  return MEMORY[0x2822009F8](sub_268D2FE38, 0);
}

uint64_t sub_268D2FE38()
{
  v4 = v0[299];
  v6 = v0[292];
  v5 = v0[290];
  v7 = v0[289];
  v0[269] = v0;
  sub_268D29010(v0 + 176);
  __swift_destroy_boxed_opaque_existential_0(v0 + 239);
  v1 = MEMORY[0x277D82BD8](v4);
  (*(v5 + 8))(v6, v7, v1);

  v2 = *(v0[269] + 8);

  return v2();
}

uint64_t sub_268D2FFB0()
{
  v2 = (*v0 + 2072);
  *(*v0 + 2152) = *v0;

  __swift_destroy_boxed_opaque_existential_0(v2);

  return MEMORY[0x2822009F8](sub_268D30120, 0);
}

uint64_t sub_268D30120()
{
  v4 = v0[299];
  v6 = v0[292];
  v5 = v0[290];
  v7 = v0[289];
  v0[269] = v0;
  sub_268D34F58(v0 + 94);
  __swift_destroy_boxed_opaque_existential_0(v0 + 239);
  v1 = MEMORY[0x277D82BD8](v4);
  (*(v5 + 8))(v6, v7, v1);

  v2 = *(v0[269] + 8);

  return v2();
}

uint64_t sub_268D3028C()
{
  *(*v0 + 2152) = *v0;

  return MEMORY[0x2822009F8](sub_268D303EC, 0);
}

uint64_t sub_268D303EC()
{
  v1 = v0[299];
  v6 = v0[292];
  v5 = v0[290];
  v7 = v0[289];
  v0[269] = v0;
  v2 = MEMORY[0x277D82BD8](v1);
  (*(v5 + 8))(v6, v7, v2);

  v3 = *(v0[269] + 8);

  return v3();
}

uint64_t sub_268D30540(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[269] = *v2;
  v7[321] = a1;
  v7[322] = v1;

  if (v1)
  {
    v3 = sub_268D316C4;
  }

  else
  {
    v5 = *(v6 + 2528);

    v3 = sub_268D30704;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D30704(uint64_t a1)
{
  v2 = v1[321];
  v10 = v1[281];
  v8 = v1[280];
  v1[269] = v1;
  v1[275] = v2;
  sub_268F99804();

  v9 = swift_task_alloc();
  *(v9 + 16) = v10;
  *(v9 + 24) = v8;
  sub_268F99B94();

  sub_268CDE730(v10 + 160, (v1 + 234));
  v12 = v1[237];
  v13 = v1[238];
  __swift_project_boxed_opaque_existential_1(v1 + 234, v12);
  v3 = swift_task_alloc();
  v11[323] = v3;
  *v3 = v11[269];
  v3[1] = sub_268D3089C;
  v4 = v11[321];
  v5 = v11[291];
  v6 = v11[279];

  return MEMORY[0x2821BB480](v6, v4, v5, v12, v13);
}

uint64_t sub_268D3089C()
{
  v4 = *v1;
  *(v4 + 2152) = *v1;
  *(v4 + 2592) = v0;

  if (v0)
  {
    v2 = sub_268D31814;
  }

  else
  {
    v2 = sub_268D30A14;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268D30A14()
{
  v6 = v0[321];
  v4 = v0[291];
  v3 = v0[290];
  v5 = v0[289];
  v0[269] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 234);
  (*(v3 + 8))(v4, v5);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[269] + 8);

  return v1();
}

uint64_t sub_268D30B78()
{
  v2 = *(*v0 + 2624);
  v3 = *(*v0 + 2616);
  *(*v0 + 2152) = *v0;

  return MEMORY[0x2822009F8](sub_268D30D18, 0);
}

uint64_t sub_268D30D18()
{
  v1 = v0[287];
  v2 = v0[283];
  v0[269] = v0;
  sub_268D2DFAC(v2, (v0 + 272), v1);
  if (*(v16 + 161))
  {
    sub_268D34954();
    v15 = sub_268F9B734();
  }

  else
  {
    v13 = sub_268F99B44();
    v12 = sub_268F99B24();
    v14 = sub_268D32EF4(v13, v12);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    v15 = v14;
  }

  v11 = *(v16 + 2248);
  *(v16 + 2184) = v15;
  sub_268CDE730(v11 + 16, v16 + 1752);
  sub_268CDE730(v11 + 16, v16 + 1792);
  __swift_project_boxed_opaque_existential_1((v16 + 1792), *(v16 + 1816));
  sub_268F997C4();
  *(v16 + 2192) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
  sub_268D34954();
  sub_268D349B8();
  sub_268F9AF84();
  v9 = *(v16 + 2296);
  v10 = *(v16 + 2280);
  v7 = *(v16 + 2256);
  v6 = *(v16 + 2232);
  v8 = *(v16 + 2288);
  v3 = sub_268F999A4();
  (*(*(v3 - 8) + 56))(v7, 1);
  *(v16 + 1832) = 0;
  *(v16 + 1840) = 0;
  *(v16 + 1848) = 0;
  *(v16 + 1856) = 0;
  *(v16 + 1864) = 0;
  sub_268CDD6D4();
  _swift_stdlib_has_malloc_size();
  sub_268D31B10();
  v6[3] = sub_268F99C74();
  v6[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_268F998D4();

  sub_268D28414((v16 + 1832));
  sub_268D34AC0(v7);

  __swift_destroy_boxed_opaque_existential_0((v16 + 1792));
  __swift_destroy_boxed_opaque_existential_0((v16 + 1752));

  (*(v8 + 8))(v9, v10);

  v4 = *(*(v16 + 2152) + 8);

  return v4();
}

uint64_t sub_268D312B8()
{
  v1 = v0[297];
  v5 = v0[296];
  v7 = v0[292];
  v6 = v0[290];
  v8 = v0[289];
  v0[269] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v5);

  (*(v6 + 8))(v7, v8);
  v9 = v0[300];
  v2 = v9;
  v0[276] = v9;
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v3 = *(v0[269] + 8);

  return v3();
}

uint64_t sub_268D314B0()
{
  v1 = v0[304];
  v6 = v0[303];
  v7 = v0[299];
  v9 = v0[292];
  v8 = v0[290];
  v10 = v0[289];
  v0[269] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v6);

  v2 = MEMORY[0x277D82BD8](v7);
  (*(v8 + 8))(v9, v10, v2);
  v11 = v0[306];
  v3 = v11;
  v0[276] = v11;
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v4 = *(v0[269] + 8);

  return v4();
}

uint64_t sub_268D316C4()
{
  v1 = v0[319];
  v4 = v0[318];
  v0[269] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[269] + 8);

  return v2();
}

uint64_t sub_268D31814()
{
  v6 = v0[321];
  v4 = v0[291];
  v3 = v0[290];
  v5 = v0[289];
  v0[269] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 234);
  (*(v3 + 8))(v4, v5);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[269] + 8);

  return v1();
}

uint64_t sub_268D31978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v9 = a2;
  v11 = a3;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13, v9, v4, v5);
  v17 = &v9 - v10;
  v20 = v6;
  v19 = v7;
  v18 = a3;
  v16 = *(v7 + 200);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
  v15 = sub_268F99B44();
  v14 = sub_268F99B24();
  sub_268D59EE4(v15, v14, v17);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);

  return sub_268F99BA4();
}

uint64_t sub_268D31AC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = MEMORY[0x277D82BE0](*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_268D31B2C(uint64_t a1, uint64_t a2)
{
  v3[37] = v2;
  v3[36] = a2;
  v3[35] = a1;
  v3[27] = v3;
  v3[28] = 0;
  v3[29] = 0;
  v3[32] = 0;
  v3[34] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  v3[38] = swift_task_alloc();
  v3[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v3[40] = swift_task_alloc();
  v4 = sub_268F999F4();
  v3[41] = v4;
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();
  sub_268F99834();
  v3[44] = swift_task_alloc();
  v5 = sub_268F99BC4();
  v3[45] = v5;
  v3[46] = *(v5 - 8);
  v3[47] = swift_task_alloc();
  v3[28] = a2;
  v3[29] = v2;

  return MEMORY[0x2822009F8](sub_268D31D6C, 0);
}

uint64_t sub_268D31D6C(uint64_t a1)
{
  *(v1 + 216) = v1;
  v39 = sub_268F9B284();
  v2 = sub_268DC7C68();
  v40 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v39, &dword_268CBE000, v40, "GetSettingHandleIntentFlowStrategy: makeFailureHandlingIntentResponse.", 70, 2);

  MEMORY[0x277D82BD8](v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
  v41 = sub_268F99B24();
  v42 = [v41 errorDetail];
  if (v42)
  {
    v34 = sub_268F9AE24();
    v35 = v3;
    MEMORY[0x277D82BD8](v42);
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  MEMORY[0x277D82BD8](v41);
  v30 = sub_268F99B44();
  v38[30] = v30;
  v4 = sub_268D2E630();
  v31 = SettingIntent.settingIdentifier.getter(v4, &protocol witness table for INGetSettingIntent);
  v32 = v5;
  MEMORY[0x277D82BD8](v30);
  v33 = sub_268E07564(v36, v37, v31, v32);

  if ((v33 & 1) == 0)
  {

    goto LABEL_11;
  }

  sub_268CDE730(v38[37] + 120, (v38 + 22));
  v28 = v38[25];
  v27 = v38[26];
  __swift_project_boxed_opaque_existential_1(v38 + 22, v28);
  v29 = (*(v27 + 16))(v28);
  __swift_destroy_boxed_opaque_existential_0(v38 + 22);

  if ((v29 & 1) == 0)
  {
LABEL_11:
    v22 = v38[43];
    v19 = v38[40];
    v23 = v38[39];

    sub_268F99B34();
    v21 = sub_268F99B44();
    v20 = sub_268F99B24();
    sub_268EF11E8(v21, v20, v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);

    sub_268D2DFAC(v23, (v38 + 31), v22);
    v17 = v38[37];
    v16 = sub_268F99B44();
    v15 = sub_268F99B24();
    v18 = sub_268D32EF4(v16, v15);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    v38[32] = v18;
    sub_268CDE730(v17 + 16, (v38 + 2));
    sub_268CDE730(v17 + 16, (v38 + 7));
    __swift_project_boxed_opaque_existential_1(v38 + 7, v38[10]);
    sub_268F997C4();
    v38[33] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
    sub_268D34954();
    sub_268D349B8();
    sub_268F9AF84();
    v13 = v38[43];
    v14 = v38[41];
    v11 = v38[38];
    v10 = v38[35];
    v12 = v38[42];
    v8 = sub_268F999A4();
    (*(*(v8 - 8) + 56))(v11, 1);
    v38[12] = 0;
    v38[13] = 0;
    v38[14] = 0;
    v38[15] = 0;
    v38[16] = 0;
    sub_268CDD6D4();
    _swift_stdlib_has_malloc_size();
    sub_268D31B10();
    v10[3] = sub_268F99C74();
    v10[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v10);
    sub_268F998D4();

    sub_268D28414(v38 + 12);
    sub_268D34AC0(v11);

    __swift_destroy_boxed_opaque_existential_0(v38 + 7);
    __swift_destroy_boxed_opaque_existential_0(v38 + 2);

    (*(v12 + 8))(v13, v14);

    v9 = *(v38[27] + 8);

    return v9();
  }

  v38[48] = *(v38[37] + 112);

  v26 = sub_268F99B34();
  v38[49] = v26;
  v24 = sub_268F99B44();
  v38[50] = v24;
  v25 = sub_268F99B24();
  v38[51] = v25;
  v6 = swift_task_alloc();
  v38[52] = v6;
  *v6 = v38[27];
  v6[1] = sub_268D326D0;

  return sub_268EFA4A4(v26, v24, v25);
}

uint64_t sub_268D326D0(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 216) = *v2;
  *(v6 + 424) = a1;
  *(v6 + 432) = v1;

  if (v1)
  {
    v3 = sub_268D32C88;
  }

  else
  {
    v5 = *(v6 + 400);

    v3 = sub_268D32884;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D32884(uint64_t a1)
{
  v2 = v1[53];
  v8 = v1[37];
  v1[27] = v1;
  v1[34] = v2;
  sub_268F99804();
  sub_268D18250();

  sub_268F99B94();

  sub_268CDE730(v8 + 160, (v1 + 17));
  v10 = v1[20];
  v11 = v1[21];
  __swift_project_boxed_opaque_existential_1(v1 + 17, v10);
  v3 = swift_task_alloc();
  v9[55] = v3;
  *v3 = v9[27];
  v3[1] = sub_268D329E0;
  v4 = v9[53];
  v5 = v9[47];
  v6 = v9[35];

  return MEMORY[0x2821BB480](v6, v4, v5, v10, v11);
}

uint64_t sub_268D329E0()
{
  v4 = *v1;
  *(v4 + 216) = *v1;
  *(v4 + 448) = v0;

  if (v0)
  {
    v2 = sub_268D32DB4;
  }

  else
  {
    v2 = sub_268D32B48;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268D32B48()
{
  v6 = v0[53];
  v4 = v0[47];
  v3 = v0[46];
  v5 = v0[45];
  v0[27] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  (*(v3 + 8))(v4, v5);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[27] + 8);

  return v1();
}

uint64_t sub_268D32C88()
{
  v1 = v0[51];
  v4 = v0[50];
  v0[27] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[27] + 8);

  return v2();
}

uint64_t sub_268D32DB4()
{
  v6 = v0[53];
  v4 = v0[47];
  v3 = v0[46];
  v5 = v0[45];
  v0[27] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  (*(v3 + 8))(v4, v5);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[27] + 8);

  return v1();
}

uint64_t sub_268D32EF4(void *a1, void *a2)
{
  v116[1] = 0;
  v109 = 0;
  v106 = 0;
  v102 = 0;
  v98 = 0;
  v90 = 0;
  v82 = 0;
  v116[3] = a1;
  v116[2] = a2;
  sub_268D34954();
  v116[0] = sub_268F9B734();
  v76 = [a2 errorDetail];
  if (v76)
  {
    v69 = sub_268F9AE24();
    v70 = v2;
    MEMORY[0x277D82BD8](v76);
    v71 = v69;
    v72 = v70;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v68 = sub_268E078D0(v71, v72);

  if (v68)
  {

    v66 = *(v74 + 112);

    v67 = [a1 settingMetadata];
    if (v67)
    {
      v61 = [v67 settingId];
      v62 = sub_268F9AE24();
      v63 = v4;
      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v61);
      v64 = v62;
      v65 = v63;
    }

    else
    {
      v64 = 0;
      v65 = 0;
    }

    v60 = sub_268F36E44(v66, v64, v65);

    if (v60)
    {
      v82 = v60;
      v59 = sub_268F9B284();
      v5 = sub_268DC7D28();
      oslog = *v5;
      MEMORY[0x277D82BE0](*v5);
      MEMORY[0x277D82BE0](v60);
      v52 = swift_allocObject();
      *(v52 + 16) = v60;
      v54 = swift_allocObject();
      *(v54 + 16) = 32;
      v55 = swift_allocObject();
      *(v55 + 16) = 8;
      v53 = swift_allocObject();
      *(v53 + 16) = sub_268D350F4;
      *(v53 + 24) = v52;
      v56 = swift_allocObject();
      *(v56 + 16) = sub_268CD7608;
      *(v56 + 24) = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      sub_268F9B734();
      v57 = v6;

      *v57 = sub_268CD7600;
      v57[1] = v54;

      v57[2] = sub_268CD7600;
      v57[3] = v55;

      v57[4] = sub_268CD7614;
      v57[5] = v56;
      sub_268CD0F7C();

      if (os_log_type_enabled(oslog, v59))
      {
        buf = sub_268F9B3A4();
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v50 = sub_268CD5448(0, v48, v48);
        v51 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v81[0] = buf;
        v80 = v50;
        v79 = v51;
        sub_268CD549C(2, v81);
        sub_268CD549C(1, v81);
        v77 = sub_268CD7600;
        v78 = v54;
        sub_268CD54B0(&v77, v81, &v80, &v79);
        v77 = sub_268CD7600;
        v78 = v55;
        sub_268CD54B0(&v77, v81, &v80, &v79);
        v77 = sub_268CD7614;
        v78 = v56;
        sub_268CD54B0(&v77, v81, &v80, &v79);
        _os_log_impl(&dword_268CBE000, oslog, v59, "GetSettingHandleIntentFlowStrategy: rendered punchout button: %s", buf, 0xCu);
        sub_268CD54FC(v50, 0, v48);
        sub_268CD54FC(v51, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();
      }

      else
      {
      }

      MEMORY[0x277D82BD8](oslog);
      MEMORY[0x277D82BE0](v60);
      v81[1] = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
      sub_268F9B064();
      v3 = MEMORY[0x277D82BD8](v60).n128_u64[0];
    }

    else
    {
      v46 = sub_268F9B284();
      v7 = sub_268DC7D28();
      v47 = *v7;
      MEMORY[0x277D82BE0](*v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14(v46, &dword_268CBE000, v47, "GetSettingHandleIntentFlowStrategy: could not render punchout button.", 69, 2);

      v3 = MEMORY[0x277D82BD8](v47).n128_u64[0];
    }
  }

  v45 = [a1 settingMetadata];
  if (v45)
  {
    v42 = [v45 settingId];
    v43._countAndFlagsBits = sub_268F9AE24();
    v43._object = v8;
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v42);
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  v113 = v44;
  if (v44._object)
  {
    v114 = v113;
  }

  else
  {
    v114._countAndFlagsBits = sub_268F9AEF4();
    v114._object = v9;
    if (v113._object)
    {
      sub_268CD9D30(&v113);
    }
  }

  BinarySettingIdentifier.init(rawValue:)(v114);
  v41 = v115;
  if (v115 == 65)
  {
    goto LABEL_42;
  }

  v98 = v115;

  v97 = v41;
  v40 = sub_268E57758(&v97);

  if (!v40)
  {
    goto LABEL_42;
  }

  v96 = v41;
  v39 = [a2 settingResponseDatas];
  if (v39)
  {
    sub_268CDD140();
    v37 = sub_268F9B014();
    MEMORY[0x277D82BD8](v39);
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v95 = v38;
  if (v38)
  {
    v35 = v95;

    sub_268CD7930(&v95);
    v84 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2E8, qword_268F9E0F0);
    sub_268D3506C();
    sub_268F9B234();
    v36 = v83;

    if (v36)
    {
      v32 = [v36 binaryValue];
      MEMORY[0x277D82BD8](v36);
      v33 = v32;
      v34 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    sub_268CD7930(&v95);
  }

  v33 = 0;
  v34 = 1;
LABEL_33:
  v91 = v33;
  v92 = v34 & 1;
  v93 = 1;
  v94 = 0;
  if ((v34 & 1) == 0)
  {
    v87 = v33;
    v88 = v34 & 1;
    v86 = v87;
    v85 = v93;
    type metadata accessor for INBinarySettingValue(0);
    sub_268D292B8();
    sub_268F9AE04();
  }

  sub_268D34FD4();
  v31 = sub_268F9B314();
  v30 = sub_268E57258(&v96, v31);
  MEMORY[0x277D82BD8](v31);

  if (v30)
  {
    v90 = v30;
    MEMORY[0x277D82BE0](v30);
    v89 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
    sub_268F9B064();
    MEMORY[0x277D82BD8](v30);
    goto LABEL_76;
  }

LABEL_42:
  v29 = [a1 settingMetadata];
  if (v29)
  {
    v26 = [v29 settingId];
    v27._countAndFlagsBits = sub_268F9AE24();
    v27._object = v10;
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v26);
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v110 = v28;
  if (v28._object)
  {
    v111 = v110;
  }

  else
  {
    v111._countAndFlagsBits = sub_268F9AEF4();
    v111._object = v11;
    if (v110._object)
    {
      sub_268CD9D30(&v110);
    }
  }

  NumericSettingIdentifier.init(rawValue:)(v111);
  v25 = v112;
  if (v112 != 13)
  {
    v109 = v112;

    v108 = v25;
    v24 = sub_268E5787C(&v108);

    if (v24)
    {
      v23 = [a2 settingResponseDatas];
      if (v23)
      {
        sub_268CDD140();
        v21 = sub_268F9B014();
        MEMORY[0x277D82BD8](v23);
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v107 = v22;
      if (v22)
      {
        v19 = v107;

        sub_268CD7930(&v107);
        v100 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2E8, qword_268F9E0F0);
        sub_268D3506C();
        sub_268F9B234();
        v20 = v99;

        if (v20)
        {
          v17 = [v20 numericValue];
          MEMORY[0x277D82BD8](v20);
          v18 = v17;
          goto LABEL_61;
        }
      }

      else
      {
        sub_268CD7930(&v107);
      }

      v18 = 0;
LABEL_61:
      if (v18)
      {
        v106 = v18;

        v105 = v25;
        v12 = [v18 value];
        v103 = v12;
        if (v12)
        {
          v104 = v103;
        }

        else
        {
          sub_268D34FD4();
          v104 = sub_268F9B314();
          if (v103)
          {
            sub_268D35038(&v103);
          }
        }

        v15 = v104;
        v16 = sub_268E574DC(&v105, v104);
        MEMORY[0x277D82BD8](v15);

        if (v16)
        {
          v102 = v16;
          MEMORY[0x277D82BE0](v16);
          v101 = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
          sub_268F9B064();
          MEMORY[0x277D82BD8](v16);
        }

        MEMORY[0x277D82BD8](v18);
      }
    }
  }

LABEL_76:
  v14 = v116[0];

  sub_268CD7930(v116);
  return v14;
}

uint64_t sub_268D34040(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_268D34954();
  sub_268D35350();
  return sub_268F9AE74();
}

uint64_t sub_268D3409C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);

  return v2;
}

uint64_t sub_268D34164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  SettingHandleIntentFlowStrategy = type metadata accessor for GetSettingHandleIntentFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C68](a1, a2, SettingHandleIntentFlowStrategy, a4);
}

uint64_t sub_268D34238()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_268D343C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  SettingHandleIntentFlowStrategy = type metadata accessor for GetSettingHandleIntentFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C70](a1, a2, SettingHandleIntentFlowStrategy, a4);
}

uint64_t sub_268D34498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  SettingHandleIntentFlowStrategy = type metadata accessor for GetSettingHandleIntentFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C48](a1, a2, SettingHandleIntentFlowStrategy, a4);
}

uint64_t sub_268D3456C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268D2E694(a1, a2);
}

uint64_t sub_268D3462C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  SettingHandleIntentFlowStrategy = type metadata accessor for GetSettingHandleIntentFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C60](a1, a2, SettingHandleIntentFlowStrategy, a4);
}

uint64_t sub_268D34700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  SettingHandleIntentFlowStrategy = type metadata accessor for GetSettingHandleIntentFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C58](a1, a2, SettingHandleIntentFlowStrategy, a4);
}

uint64_t sub_268D347D4(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268D31B2C(a1, a2);
}

uint64_t sub_268D348AC(uint64_t a1, uint64_t a2)
{
  SettingHandleIntentFlowStrategy = type metadata accessor for GetSettingHandleIntentFlowStrategy();
  v2 = sub_268D3520C();
  v3 = sub_268E04070(a1, a2, SettingHandleIntentFlowStrategy, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

unint64_t sub_268D34954()
{
  v2 = qword_2802DC2C8;
  if (!qword_2802DC2C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC2C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D349B8()
{
  v2 = qword_2802DC2D0;
  if (!qword_2802DC2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC2C0, &qword_268F9FFF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC2D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t sub_268D34AC0(uint64_t a1)
{
  v3 = sub_268F999A4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_268D34B74(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  result[15] = 0;
  result[16] = 0;
  result[17] = 0;
  return result;
}

uint64_t sub_268D34BC0(uint64_t a1)
{
  v2 = -1;
  if (!HIDWORD(*(a1 + 8)))
  {
    v2 = *(a1 + 8);
  }

  return (v2 + 1);
}

void *sub_268D34CD8(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  v4 = a1[3];

  a2[3] = v4;
  a2[4] = a1[4];
  v5 = a1[5];

  a2[5] = v5;
  a2[6] = a1[6];
  v6 = a1[7];

  a2[7] = v6;
  a2[8] = a1[8];
  v7 = a1[9];

  a2[9] = v7;
  a2[10] = a1[10];
  a2[11] = a1[11];
  a2[12] = a1[12];
  a2[13] = a1[13];
  a2[14] = a1[14];
  a2[15] = a1[15];
  v9 = a1[16];

  result = a2;
  a2[16] = v9;
  a2[17] = a1[17];
  return result;
}

unint64_t sub_268D34E18()
{
  v2 = qword_2802DC2E0;
  if (!qword_2802DC2E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC2E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D34E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_268D34F58(void *a1)
{
}

unint64_t sub_268D34FD4()
{
  v2 = qword_280FE2730;
  if (!qword_280FE2730)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE2730);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D3506C()
{
  v2 = qword_2802DC2F0;
  if (!qword_2802DC2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC2E8, qword_268F9E0F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC2F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D35134(uint64_t result)
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

    sub_268D353D0();
    v1 = sub_268F9B044();

    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_268D3520C()
{
  v2 = qword_280FE2AD0;
  if (!qword_280FE2AD0)
  {
    type metadata accessor for GetSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2AD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D352A4()
{
  v2 = qword_280FE2AE0;
  if (!qword_280FE2AE0)
  {
    type metadata accessor for GetSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2AE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D35324(uint64_t a1)
{
  result = sub_268D352A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268D35350()
{
  v2 = qword_2802DC2F8;
  if (!qword_2802DC2F8)
  {
    sub_268D34954();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC2F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D353D0()
{
  v2 = qword_2802DC300;
  if (!qword_2802DC300)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC300);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_268D35434()
{
  if (qword_280FE6EF0 != -1)
  {
    swift_once();
  }

  return &qword_280FE6EF8;
}

uint64_t sub_268D35494()
{
  type metadata accessor for SettingsNativeApiClient();
  memset(v2, 0, sizeof(v2));
  memset(v1, 0, sizeof(v1));
  result = SettingsNativeApiClient.__allocating_init(aceServiceInvoker:aceServiceInvokerAsync:)(v2, v1);
  qword_280FE6EF8 = result;
  return result;
}

uint64_t static SettingsNativeApiClient.shared.getter()
{
  v1 = *sub_268D35434();

  return v1;
}

double sub_268D355CC()
{
  v1 = objc_opt_self();
  sub_268CDD000();
  v2 = sub_268F9B2C4();
  [v1 setSharedInstanceQueue_];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

uint64_t sub_268D35638()
{
  if (qword_280FE6F08 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_268D356AC()
{
  result = sub_268F9AEF4();
  qword_2802DC308 = result;
  qword_2802DC310 = v1;
  return result;
}

uint64_t *sub_268D356F0()
{
  if (qword_2802DAF70 != -1)
  {
    swift_once();
  }

  return &qword_2802DC308;
}

uint64_t sub_268D35750()
{
  v1 = *sub_268D356F0();

  return v1;
}

uint64_t sub_268D3578C()
{
  result = sub_268F9AEF4();
  qword_2802DC318 = result;
  qword_2802DC320 = v1;
  return result;
}

uint64_t *sub_268D357D0()
{
  if (qword_2802DAF78 != -1)
  {
    swift_once();
  }

  return &qword_2802DC318;
}

uint64_t sub_268D35830()
{
  v1 = *sub_268D357D0();

  return v1;
}

uint64_t sub_268D358CC()
{
  swift_beginAccess();
  v4 = *(v0 + 96);
  swift_endAccess();
  if (v4 == 2)
  {
    swift_beginAccess();
    *(v3 + 96) = 1;
    swift_endAccess();
    v2 = 1;
  }

  else
  {
    v2 = v4;
  }

  return v2 & 1;
}

uint64_t sub_268D35994(char a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
  return swift_endAccess();
}

uint64_t (*sub_268D359FC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_268D358CC() & 1;
  return sub_268D35A60;
}

uint64_t sub_268D35AC0()
{
  swift_beginAccess();
  v4 = *(v0 + 97);
  swift_endAccess();
  if (v4 == 2)
  {
    swift_beginAccess();
    *(v3 + 97) = 0;
    swift_endAccess();
    v2 = 0;
  }

  else
  {
    v2 = v4;
  }

  return v2 & 1;
}

uint64_t sub_268D35B84(char a1)
{
  swift_beginAccess();
  *(v1 + 97) = a1;
  return swift_endAccess();
}

uint64_t (*sub_268D35BEC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_268D35AC0() & 1;
  return sub_268D35C50;
}

uint64_t SettingsNativeApiClient.init(aceServiceInvoker:aceServiceInvokerAsync:)(void *a1, void *a2)
{
  v11 = a1;
  v10 = a2;
  v9 = v2;
  v2[96] = 2;
  v2[97] = 2;
  sub_268D35D60(a1, v8);
  memcpy(v2 + 16, v8, 0x28uLL);
  sub_268D35D60(a2, v7);
  memcpy(v2 + 56, v7, 0x28uLL);
  sub_268D35638();
  sub_268D28414(a2);
  sub_268D28414(a1);
  return v6;
}

void *sub_268D35D60(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

BOOL sub_268D35DF4(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_268D360B4()
{
  v2 = qword_2802DC328;
  if (!qword_2802DC328)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC328);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D3618C(void (*a1)(void), uint64_t a2)
{

  a1(0);
}

uint64_t sub_268D36220()
{
  sub_268F9A764();
  if (sub_268F9A744())
  {
    sub_268F9A734();

    v2 = sub_268F9AB64();

    v3 = v2 & 1;
  }

  else
  {
    v3 = 2;
  }

  if (v3 == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = v3;
  }

  return v1 & 1;
}

double sub_268D36314(char a1)
{
  sub_268D3638C();
  v3 = sub_268CF0C44();
  [v3 setEnabled_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

unint64_t sub_268D3638C()
{
  v2 = qword_2802DC330;
  if (!qword_2802DC330)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC330);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268D363F0()
{
  v7 = *MEMORY[0x277D85DE8];
  memset(__b, 0, sizeof(__b));
  sub_268D3638C();
  v2 = sub_268CF0C44();
  memset(v5, 0, sizeof(v5));
  memcpy(__dst, v5, sizeof(__dst));
  memcpy(v6, __dst, sizeof(v6));
  memcpy(__b, v6, sizeof(__b));
  [v2 getBlueLightStatus_];
  v1 = __b[1];
  MEMORY[0x277D82BD8](v2);
  return v1 & 1;
}

uint64_t sub_268D36508()
{
  v31 = 0;
  v21 = sub_268F99144();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v1, v2, v3);
  v25 = &v14 - v24;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v26 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v27 = &v14 - v26;
  v28 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v26, v9, v10, v11);
  v29 = &v14 - v28;
  v31 = v0;
  v30 = [objc_opt_self() preferencesURL];
  if (v30)
  {
    v20 = v30;
    v19 = v30;
    sub_268F99124();
    (*(v22 + 32))(v27, v25, v21);
    (*(v22 + 56))(v27, 0, 1, v21);
    MEMORY[0x277D82BD8](v19);
  }

  else
  {
    (*(v22 + 56))(v27, 1, 1, v21);
  }

  sub_268D367F8(v27, v29);
  if ((*(v22 + 48))(v29, 1, v21) == 1)
  {
    sub_268CDC480(v29);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v15 = sub_268F99104();
    v16 = v12;
    (*(v22 + 8))(v29, v21);
    v17 = v15;
    v18 = v16;
  }

  return v17;
}

void *sub_268D367F8(const void *a1, void *a2)
{
  v6 = sub_268F99144();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268D369F4()
{
  v31 = 0;
  v21 = sub_268F99144();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v1, v2, v3);
  v25 = &v14 - v24;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v26 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v27 = &v14 - v26;
  v28 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v26, v9, v10, v11);
  v29 = &v14 - v28;
  v31 = v0;
  v30 = [objc_opt_self() preferencesURL];
  if (v30)
  {
    v20 = v30;
    v19 = v30;
    sub_268F99124();
    (*(v22 + 32))(v27, v25, v21);
    (*(v22 + 56))(v27, 0, 1, v21);
    MEMORY[0x277D82BD8](v19);
  }

  else
  {
    (*(v22 + 56))(v27, 1, 1, v21);
  }

  sub_268D367F8(v27, v29);
  if ((*(v22 + 48))(v29, 1, v21) == 1)
  {
    sub_268CDC480(v29);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v15 = sub_268F99104();
    v16 = v12;
    (*(v22 + 8))(v29, v21);
    v17 = v15;
    v18 = v16;
  }

  return v17;
}

uint64_t sub_268D36E0C()
{
  v31 = 0;
  v21 = sub_268F99144();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v1, v2, v3);
  v25 = &v14 - v24;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v26 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v27 = &v14 - v26;
  v28 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v26, v9, v10, v11);
  v29 = &v14 - v28;
  v31 = v0;
  v30 = [objc_opt_self() preferencesURL];
  if (v30)
  {
    v20 = v30;
    v19 = v30;
    sub_268F99124();
    (*(v22 + 32))(v27, v25, v21);
    (*(v22 + 56))(v27, 0, 1, v21);
    MEMORY[0x277D82BD8](v19);
  }

  else
  {
    (*(v22 + 56))(v27, 1, 1, v21);
  }

  sub_268D367F8(v27, v29);
  if ((*(v22 + 48))(v29, 1, v21) == 1)
  {
    sub_268CDC480(v29);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v15 = sub_268F99104();
    v16 = v12;
    (*(v22 + 8))(v29, v21);
    v17 = v15;
    v18 = v16;
  }

  return v17;
}