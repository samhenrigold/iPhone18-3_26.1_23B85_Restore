uint64_t sub_225FC9464()
{
  *(v0 + 208) = v0;
  if (*sub_225F7F4BC())
  {
    goto LABEL_14;
  }

  v14 = v15[66];
  sub_2260998E8();
  if (v14)
  {
    v13 = v15[66];
    v15[18] = v15[65];
    v15[19] = v13;
    v1 = swift_task_alloc();
    v15[85] = v1;
    *v1 = v15[26];
    v1[1] = sub_225FC9A68;
    v2 = v15[65];

    return MEMORY[0x28212BDA8](v2, v13);
  }

  v12 = v15[68];
  sub_2260998E8();
  if (v12)
  {
    v11 = v15[68];
    v15[16] = v15[67];
    v15[17] = v11;
    v3 = swift_task_alloc();
    v15[87] = v3;
    *v3 = v15[26];
    v3[1] = sub_225FCA074;
    v4 = v15[67];

    return MEMORY[0x28212BD20](v4, v11);
  }

  v10 = v15[70];
  sub_2260998E8();
  if (!v10)
  {
LABEL_14:
    sub_225EFE6E8(v15 + 38);
    sub_225EFE6E8(v15 + 34);

    v7 = *(v15[26] + 8);

    return v7();
  }

  else
  {
    v9 = v15[70];
    v15[14] = v15[69];
    v15[15] = v9;
    v5 = swift_task_alloc();
    v15[89] = v5;
    *v5 = v15[26];
    v5[1] = sub_225FCA518;
    v6 = v15[69];

    return MEMORY[0x28212BD28](v6, v9);
  }
}

uint64_t sub_225FC9A68()
{
  v4 = *v1;
  *(v4 + 208) = *v1;
  *(v4 + 688) = v0;

  if (v0)
  {
    v2 = sub_225FCA9D4;
  }

  else
  {
    v2 = sub_225FC9BD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225FC9BD0()
{
  v0[26] = v0;

  v10 = v0[68];
  sub_2260998E8();
  if (v10)
  {
    v9 = v0[68];
    v0[16] = v0[67];
    v0[17] = v9;
    v1 = swift_task_alloc();
    v0[87] = v1;
    *v1 = v0[26];
    v1[1] = sub_225FCA074;
    v2 = v0[67];

    return MEMORY[0x28212BD20](v2, v9);
  }

  else
  {
    v8 = v0[70];
    sub_2260998E8();
    if (v8)
    {
      v7 = v0[70];
      v0[14] = v0[69];
      v0[15] = v7;
      v3 = swift_task_alloc();
      v0[89] = v3;
      *v3 = v0[26];
      v3[1] = sub_225FCA518;
      v4 = v0[69];

      return MEMORY[0x28212BD28](v4, v7);
    }

    else
    {
      sub_225EFE6E8(v0 + 38);
      sub_225EFE6E8(v0 + 34);

      v5 = *(v0[26] + 8);

      return v5();
    }
  }
}

uint64_t sub_225FCA074()
{
  v4 = *v1;
  *(v4 + 208) = *v1;
  *(v4 + 704) = v0;

  if (v0)
  {
    v2 = sub_225FCAB60;
  }

  else
  {
    v2 = sub_225FCA1DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225FCA1DC()
{
  v0[26] = v0;

  v5 = v0[70];
  sub_2260998E8();
  if (v5)
  {
    v1 = v0[70];
    v0[14] = v0[69];
    v0[15] = v1;
    v2 = swift_task_alloc();
    v0[89] = v2;
    *v2 = v0[26];
    v2[1] = sub_225FCA518;

    JUMPOUT(0x226098EB8);
  }

  sub_225EFE6E8(v0 + 38);
  sub_225EFE6E8(v0 + 34);

  v3 = *(v0[26] + 8);

  return v3();
}

uint64_t sub_225FCA518()
{
  v4 = *v1;
  *(v4 + 208) = *v1;
  *(v4 + 720) = v0;

  if (v0)
  {
    v2 = sub_225FCACEC;
  }

  else
  {
    v2 = sub_225FCA680;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225FCA680()
{
  v0[26] = v0;

  sub_225EFE6E8(v0 + 38);
  sub_225EFE6E8(v0 + 34);

  v1 = *(v0[26] + 8);

  return v1();
}

uint64_t sub_225FCA83C()
{
  v0[26] = v0;

  sub_225EFE6E8(v0 + 38);
  sub_225EFE6E8(v0 + 34);

  v1 = *(v0[26] + 8);

  return v1();
}

uint64_t sub_225FCA9D4()
{
  v0[26] = v0;

  sub_225EFE6E8(v0 + 38);
  sub_225EFE6E8(v0 + 34);

  v1 = *(v0[26] + 8);

  return v1();
}

uint64_t sub_225FCAB60()
{
  v0[26] = v0;

  sub_225EFE6E8(v0 + 38);
  sub_225EFE6E8(v0 + 34);

  v1 = *(v0[26] + 8);

  return v1();
}

uint64_t sub_225FCACEC()
{
  v0[26] = v0;

  sub_225EFE6E8(v0 + 38);
  sub_225EFE6E8(v0 + 34);

  v1 = *(v0[26] + 8);

  return v1();
}

uint64_t sub_225FCAEA8(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v8 = a2;
  v17 = 0;
  v16 = 0;
  v3 = sub_2260990A8();
  v6 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v9 = &v6 - v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B90, &qword_2260A0C30);
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v13 = &v6 - v7;
  v17 = a1;
  v16 = v4;
  MEMORY[0x277D82BE0](v4);
  sub_226099098();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  sub_226099DD8();
  (*(v11 + 8))(v13, v14);
  return sub_226099DE8();
}

uint64_t sub_225FCB034(uint64_t a1, uint64_t a2)
{
  v3[10] = v2;
  v3[9] = a1;
  v3[5] = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08);
  v3[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A20, &unk_2260A0A10);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A28, &qword_2260A1000);
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = v2;

  return MEMORY[0x2822009F8](sub_225FCB2C4, 0, 0);
}

uint64_t sub_225FCB2C4()
{
  v7 = v0[22];
  v8 = v0[21];
  v6 = v0[20];
  v9 = v0[19];
  v11 = v0[18];
  v10 = v0[17];
  v12 = v0[16];
  v13 = v0[15];
  v4 = v0[14];
  v3 = v0[13];
  v5 = v0[12];
  v14 = v0[11];
  v15 = v0[10];
  v0[5] = v0;
  sub_2260990A8();
  sub_225F819F0();
  sub_225F81A04(v4);
  sub_226099DB8();
  (*(v3 + 8))(v4, v5);
  (*(v6 + 32))(v7, v8, v9);
  (*(v12 + 32))(v11, v10, v13);
  (*(v12 + 16))(v14, v11, v13);
  (*(v12 + 56))(v14, 0, 1, v13);
  sub_225FDA418(v14);
  v0[23] = swift_allocObject();
  MEMORY[0x277D82BE0](v15);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v15);

  sub_226098D78();
  sub_22601FAFC();
  v16 = sub_226099D48();

  return MEMORY[0x2822009F8](sub_225FCB51C, v16, v1);
}

uint64_t sub_225FCB51C()
{
  *(v0 + 40) = v0;
  sub_226098D28();

  return MEMORY[0x2822009F8](sub_225FCB5B4, 0, 0);
}

uint64_t sub_225FCB5B4()
{
  v1 = v0[10];
  v0[5] = v0;
  v8 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioFormat);
  swift_beginAccess();
  v2 = *v8;
  v10 = *v8;
  v0[24] = *v8;
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  v3 = swift_task_alloc();
  v9[25] = v3;
  v4 = sub_22601FB7C();
  *v3 = v9[5];
  v3[1] = sub_225FCB6D4;
  v5 = v9[22];
  v6 = v9[19];

  return MEMORY[0x28212BBD0](v5, v10, v6, v4);
}

uint64_t sub_225FCB6D4()
{
  v4 = *v1;
  *(v4 + 40) = *v1;
  *(v4 + 208) = v0;

  if (v0)
  {
    v2 = sub_225FCB98C;
  }

  else
  {

    v2 = sub_225FCB850;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225FCB850()
{
  v6 = v0[22];
  v4 = v0[20];
  v5 = v0[19];
  v1 = v0[16];
  v0[5] = v0;
  (*(v1 + 8))();
  (*(v4 + 8))(v6, v5);

  v2 = *(v0[5] + 8);

  return v2();
}

uint64_t sub_225FCB98C()
{
  v1 = v0[24];
  v8 = v0[22];
  v6 = v0[20];
  v7 = v0[19];
  v9 = v0[18];
  v4 = v0[16];
  v5 = v0[15];
  v0[5] = v0;
  MEMORY[0x277D82BD8](v1);
  (*(v4 + 8))(v9, v5);
  (*(v6 + 8))(v8, v7);

  v2 = *(v0[5] + 8);

  return v2();
}

uint64_t sub_225FCBAF8(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v27 = a2;
  v26 = a3;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v23 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A50, &qword_2260A0A90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v24 = &v13 - v23;
  v25 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v28 = &v13 - v25;
  v39 = v6;
  v37 = a2;
  v38 = v7;

  sub_226098E78();

  v29 = sub_226098E68();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = *(v30 + 48);
  v33 = v30 + 48;
  if (v32(v28, 1) == 1)
  {

    sub_226022FCC(v28);
    v21 = 0;
  }

  else
  {
    v20 = sub_226098E38();
    (*(v30 + 8))(v28, v29);

    v21 = v20;
  }

  v35 = v21;
  if (v21)
  {
    v36 = v35;
  }

  else
  {
    v19 = 0;
    sub_226098948();
    v36 = sub_22609A4F8();
    if (v35)
    {
      sub_225EFE6E8(&v35);
    }
  }

  v18 = v36;

  sub_226098E78();

  if ((v32)(v24, 1, v29) == 1)
  {

    sub_226022FCC(v24);
    v17 = 2;
  }

  else
  {
    v16 = sub_226098E58();
    (*(v30 + 8))(v24, v29);

    v17 = v16 & 1;
  }

  v34 = v17;
  if (v17 == 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = v34;
  }

  v14 = 1;
  sub_225F829FC();
  v8 = v22;
  v10 = v9 & v14;
  *v22 = v11;
  *(v8 + 8) = v10;
}

uint64_t sub_225FCBE84(uint64_t a1, uint64_t a2)
{
  v3[27] = v2;
  v3[26] = a2;
  v3[25] = a1;
  v3[9] = v3;
  v3[5] = 0;
  v3[6] = 0;
  v3[10] = 0;
  v3[11] = 0;
  v3[16] = 0;
  v3[18] = 0;
  v3[24] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v4 = sub_226098C58();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[5] = a1;
  v3[6] = a2;
  v3[10] = v2;

  return MEMORY[0x2822009F8](sub_225FCC008, 0, 0);
}

uint64_t sub_225FCC008()
{
  v78 = v0;
  v1 = v0[27];
  v0[9] = v0;
  v71 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  v72 = *v71;
  v0[34] = *v71;

  swift_endAccess();
  if (v72)
  {
    *(v70 + 88) = v72;
    v67 = objc_opt_self();
    sub_2260998E8();
    v68 = sub_2260999F8();

    v69 = [v67 speechProfilePathsWithLanguage_];
    MEMORY[0x277D82BD8](v68);
    if (v69)
    {
      v65 = sub_226099C88();
      MEMORY[0x277D82BD8](v69);
      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    *(v70 + 280) = v66;
    if (v66)
    {
      *(v70 + 128) = v66;
      *(v70 + 136) = v66;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
      v62 = sub_226098948();
      *(v70 + 288) = v62;
      v2 = sub_225F156F8();
      v64 = sub_225F15970(sub_225F951C4, 0, v61, v62, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v63);
      *(v70 + 296) = v64;
      *(v70 + 144) = v64;
      v59 = *(v62 - 8);
      *(v70 + 304) = v59;
      v58 = swift_task_alloc();
      *(v70 + 312) = v58;
      *(v70 + 152) = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0);
      v60 = swift_task_alloc();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A30, &qword_2260A0A28);
      sub_22601FC04();
      sub_226099FE8();
      if ((*(v59 + 48))(v60, 1, v62) != 1)
      {
        (*(v59 + 32))(v58, v60, v62);

        v56 = sub_226098958();
        v57 = v3;
        *(v70 + 320) = v56;
        *(v70 + 328) = v3;
        v4 = *(v70 + 264);
        v47 = *(v70 + 224);
        v46 = *(v70 + 232);
        *(v70 + 56) = v56;
        *(v70 + 64) = v3;
        v5 = sub_225F7E9BC();
        (*(v46 + 16))(v4, v5, v47);
        sub_225EF5A38(v56, v57);
        v48 = swift_allocObject();
        *(v48 + 16) = v56;
        *(v48 + 24) = v57;
        oslog = sub_226098C48();
        v55 = sub_22609A088();
        v50 = swift_allocObject();
        *(v50 + 16) = 0;
        v51 = swift_allocObject();
        *(v51 + 16) = 8;
        v49 = swift_allocObject();
        *(v49 + 16) = sub_22601FDD4;
        *(v49 + 24) = v48;
        v52 = swift_allocObject();
        *(v52 + 16) = sub_225F2D374;
        *(v52 + 24) = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        sub_22609A4F8();
        v53 = v6;

        *v53 = sub_225EF7434;
        v53[1] = v50;

        v53[2] = sub_225EF7434;
        v53[3] = v51;

        v53[4] = sub_225EF71D0;
        v53[5] = v52;
        sub_225EF5418();

        if (os_log_type_enabled(oslog, v55))
        {
          buf = sub_22609A188();
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v44 = sub_225EF5468(0, v42, v42);
          v45 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v73 = buf;
          v74 = v44;
          v75 = v45;
          sub_225EF54BC(0, &v73);
          sub_225EF54BC(1, &v73);
          v76 = sub_225EF7434;
          v77 = v50;
          sub_225EF73E8(&v76, &v73, &v74, &v75);
          v76 = sub_225EF7434;
          v77 = v51;
          sub_225EF73E8(&v76, &v73, &v74, &v75);
          v76 = sub_225EF71D0;
          v77 = v52;
          sub_225EF73E8(&v76, &v73, &v74, &v75);
          _os_log_impl(&dword_225EEB000, oslog, v55, "Saving profile snapshot: %ld bytes", buf, 0xCu);
          sub_225EF7AF4(v44, 0, v42);
          sub_225EF7AF4(v45, 0, MEMORY[0x277D84F70] + 8);
          sub_22609A168();
        }

        else
        {
        }

        v40 = *(v70 + 264);
        v41 = *(v70 + 224);
        v39 = *(v70 + 232);
        MEMORY[0x277D82BD8](oslog);
        (*(v39 + 8))(v40, v41);

        return MEMORY[0x2822009F8](sub_225FCDCEC, v72, 0);
      }

      v7 = *(v70 + 256);
      v35 = *(v70 + 224);
      v34 = *(v70 + 232);
      sub_22601F334(v60);

      v8 = sub_225F7E9BC();
      (*(v34 + 16))(v7, v8, v35);
      log = sub_226098C48();
      v36 = sub_22609A098();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v38 = sub_22609A4F8();
      if (os_log_type_enabled(log, v36))
      {
        v30 = sub_22609A188();
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v31 = sub_225EF5468(0, v29, v29);
        v32 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v70 + 160) = v30;
        *(v70 + 168) = v31;
        *(v70 + 176) = v32;
        sub_225EF54BC(0, (v70 + 160));
        sub_225EF54BC(0, (v70 + 160));
        *(v70 + 184) = v38;
        v33 = swift_task_alloc();
        v33[2] = v70 + 160;
        v33[3] = v70 + 168;
        v33[4] = v70 + 176;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();

        _os_log_impl(&dword_225EEB000, log, v36, "No speech profile paths available", v30, 2u);
        sub_225EF7AF4(v31, 0, v29);
        sub_225EF7AF4(v32, 0, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }

      v27 = *(v70 + 256);
      v28 = *(v70 + 224);
      v26 = *(v70 + 232);
      MEMORY[0x277D82BD8](log);
      (*(v26 + 8))(v27, v28);
    }

    else
    {
      v9 = *(v70 + 248);
      v22 = *(v70 + 224);
      v21 = *(v70 + 232);
      v10 = sub_225F7E9BC();
      (*(v21 + 16))(v9, v10, v22);
      v24 = sub_226098C48();
      v23 = sub_22609A098();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v25 = sub_22609A4F8();
      if (os_log_type_enabled(v24, v23))
      {
        v17 = sub_22609A188();
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v18 = sub_225EF5468(0, v16, v16);
        v19 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v70 + 96) = v17;
        *(v70 + 104) = v18;
        *(v70 + 112) = v19;
        sub_225EF54BC(0, (v70 + 96));
        sub_225EF54BC(0, (v70 + 96));
        *(v70 + 120) = v25;
        v20 = swift_task_alloc();
        v20[2] = v70 + 96;
        v20[3] = v70 + 104;
        v20[4] = v70 + 112;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();

        _os_log_impl(&dword_225EEB000, v24, v23, "Failed to load speech profile paths when trying to update Fides record", v17, 2u);
        sub_225EF7AF4(v18, 0, v16);
        sub_225EF7AF4(v19, 0, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }

      v14 = *(v70 + 248);
      v15 = *(v70 + 224);
      v13 = *(v70 + 232);
      MEMORY[0x277D82BD8](v24);
      (*(v13 + 8))(v14, v15);
    }
  }

  v11 = *(*(v70 + 72) + 8);

  return v11();
}

uint64_t sub_225FCDCEC()
{
  v1 = v0[41];
  v2 = v0[40];
  v0[9] = v0;
  sub_225F321DC(v2, v1);

  return MEMORY[0x2822009F8](sub_225FCDD68, 0, 0);
}

uint64_t sub_225FCDD68()
{
  v1 = v0[41];
  v2 = v0[40];
  v0[9] = v0;
  sub_225EF5990(v2, v1);
  (*(v0[38] + 8))();

  v3 = *(v0[9] + 8);

  return v3();
}

uint64_t sub_225FCDEE0()
{
  v3 = [objc_opt_self() processInfo];
  [v3 systemUptime];
  v5 = v1;
  MEMORY[0x277D82BD8](v3);
  v4 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime);
  swift_beginAccess();
  *v4 = v5;
  return swift_endAccess();
}

uint64_t sub_225FCDF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[54] = v6;
  v7[53] = a6;
  v7[52] = a5;
  v7[51] = a4;
  v7[50] = a3;
  v7[49] = a2;
  v7[55] = swift_getObjectType();
  v7[41] = v7;
  v7[42] = 0;
  v7[37] = 0;
  v7[38] = 0;
  v7[39] = 0;
  v7[40] = 0;
  v7[43] = 0;
  v7[44] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A38, &qword_2260A0A38);
  v7[56] = swift_task_alloc();
  v8 = sub_226098C58();
  v7[57] = v8;
  v7[58] = *(v8 - 8);
  v7[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08);
  v7[60] = swift_task_alloc();
  v7[42] = a1;
  v7[37] = a2;
  v7[38] = a3;
  v7[39] = a4;
  v7[40] = a5;
  v7[43] = a6;
  v7[44] = v6;

  return MEMORY[0x2822009F8](sub_225FCE1A4, 0, 0);
}

uint64_t sub_225FCE1A4()
{
  v4 = *(v0 + 432);
  *(v0 + 328) = v0;
  v3 = (v4 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration);
  swift_beginAccess();
  *v3 = 0;
  swift_endAccess();
  v5 = (v4 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioDurationMs);
  swift_beginAccess();
  *v5 = 0;
  swift_endAccess();
  v1 = swift_task_alloc();
  *(v6 + 488) = v1;
  *v1 = *(v6 + 328);
  v1[1] = sub_225FCE2F0;

  return sub_225FDC2A8();
}

uint64_t sub_225FCE2F0()
{
  v5 = *v1;
  v4 = *v1 + 328;
  *(v5 + 328) = *v1;
  *(v5 + 496) = v0;

  if (v0)
  {

    v2 = *(*v4 + 8);

    return v2();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_225FCE4E4, 0, 0);
  }
}

uint64_t sub_225FCE4E4()
{
  v48 = v0;
  v1 = *(v0 + 432);
  *(v0 + 328) = v0;
  v44 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioEnded);
  swift_beginAccess();
  v45 = *v44;
  swift_endAccess();
  if (v45)
  {
    v40 = *(v43 + 480);
    sub_225EF95B0(v40);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v40, 1) == 1)
    {
      return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1340, 0);
    }

    v37 = *(v43 + 480);
    v38 = *(v43 + 432);
    sub_226099DE8();
    (*(v42 + 8))(v37, v41);
    v39 = (v38 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioEnded);
    swift_beginAccess();
    *v39 = 0;
    swift_endAccess();
  }

  v3 = *(v43 + 472);
  v33 = *(v43 + 456);
  v32 = *(v43 + 464);
  v4 = sub_225F7E9BC();
  (*(v32 + 16))(v3, v4, v33);
  v35 = sub_226098C48();
  v34 = sub_22609A078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v36 = sub_22609A4F8();
  if (os_log_type_enabled(v35, v34))
  {
    v5 = *(v43 + 496);
    buf = sub_22609A188();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v29 = sub_225EF5468(0, v27, v27);
    v30 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v43 + 360) = buf;
    *(v43 + 368) = v29;
    *(v43 + 376) = v30;
    sub_225EF54BC(0, (v43 + 360));
    sub_225EF54BC(0, (v43 + 360));
    *(v43 + 384) = v36;
    v31 = swift_task_alloc();
    v31[2] = v43 + 360;
    v31[3] = v43 + 368;
    v31[4] = v43 + 376;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v5)
    {
    }

    _os_log_impl(&dword_225EEB000, v35, v34, "Configuring analyzer to produce single-user transcriber results.", buf, 2u);
    sub_225EF7AF4(v29, 0, v27);
    sub_225EF7AF4(v30, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v24 = *(v43 + 472);
  v25 = *(v43 + 456);
  v26 = *(v43 + 408);
  v23 = *(v43 + 464);
  MEMORY[0x277D82BD8](v35);
  (*(v23 + 8))(v24, v25);
  sub_22601FDE0(v26);
  if (v26)
  {
    v21 = *(v43 + 408);

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v20 = *(v43 + 408);
  sub_22601FDE0(v20);
  if (v20)
  {
    v18 = *(v43 + 416);

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v17 = *(v43 + 424);
  sub_225FDDA80(*(v43 + 392), v22, *(v43 + 400), v19, 0, v46);

  memcpy((v43 + 16), v46, 0x28uLL);
  memset(v47, 0, sizeof(v47));
  memcpy((v43 + 56), v47, 0x28uLL);
  sub_22601FE20((v43 + 16), (v43 + 96));

  if (v17)
  {
    v16 = *(v43 + 448);
    sub_226099358();

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A40, &unk_2260A0A48);
    (*(*(v6 - 8) + 56))(v16, 0, 1);
  }

  else
  {
    v10 = *(v43 + 448);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A40, &unk_2260A0A48);
    (*(*(v9 - 8) + 56))(v10, 1);
  }

  v15 = *(v43 + 448);
  v12 = *(v43 + 432);
  sub_22601FE20((v43 + 56), (v43 + 136));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A40, &unk_2260A0A48);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_225FDEA3C((v43 + 96), v15, (v43 + 136), v11, OpaqueTypeConformance2);
  sub_225F186BC((v43 + 136));
  sub_225F062D0(v15);
  sub_225F186BC((v43 + 96));
  v13 = (v12 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_analyzerOutputHandlerTask);
  swift_beginAccess();
  *v13 = v14;

  swift_endAccess();
  sub_225F186BC((v43 + 56));
  sub_225F186BC((v43 + 16));

  v8 = *(*(v43 + 328) + 8);

  return v8();
}

id sub_225FCEF44(void *a1)
{
  v62 = a1;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v71 = a1;
  if (!a1)
  {
    goto LABEL_9;
  }

  v61 = v62;
  v51 = v62;
  v1 = v62;
  v69 = v62;
  v59 = 0;
  v58 = sub_2260987A8();
  v52 = v58;
  v53 = *(v58 - 8);
  v54 = v53;
  v55 = *(v53 + 64);
  v56 = v11;
  MEMORY[0x28223BE20](v11);
  v60 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
  if (!swift_dynamicCast())
  {

    goto LABEL_9;
  }

  v31 = v11;
  v3 = MEMORY[0x28223BE20](v11);
  v32 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v32;
  (*(v54 + 16))(v32, v3);
  v46 = sub_226098798();
  v33 = v46;
  v34 = *(v46 - 8);
  v40 = v34;
  v37 = *(v34 + 64);
  v35 = v37;
  v49 = v11;
  MEMORY[0x28223BE20](v11);
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = v11 - v38;
  v36 = sub_22601FEB4();
  sub_226098888();
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v41 = v11 - v38;
  sub_226098788();
  v39 = sub_22601FF2C();
  v50 = sub_22609A508();
  v48 = *(v40 + 8);
  v47 = v40 + 8;
  v42 = v48;
  v43 = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v41, v46);
  v48(v45, v46);
  if ((v50 & 1) == 0)
  {
    v14 = *(v54 + 8);
    v15 = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v32, v52);
    v16 = v11;
    v6 = MEMORY[0x28223BE20](v11);
    v17 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v67 = v17;
    (*(v54 + 32))(v17, v6);
    v22 = v11;
    MEMORY[0x28223BE20](v52);
    v18 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
    v21 = v11 - v18;
    sub_226098888();
    v20 = v11;
    MEMORY[0x28223BE20](v11);
    v19 = v11 - v18;
    sub_226098778();
    v23 = sub_22609A508();
    v42(v19, v33);
    v42(v21, v33);
    if (v23)
    {
      v67 = v17;
      v11[0] = type metadata accessor for AFError(0);
      v65 = 1101;
      v11[1] = sub_2260988A8();
      sub_225F1A478();
      sub_2260988C8();
      v12 = v66;
      v8 = v66;
      v13 = v12;

      v14(v17, v52);
      return v13;
    }

    v14(v17, v52);

LABEL_9:
    v9 = v62;
    return v62;
  }

  v68 = v32;
  v24 = type metadata accessor for AFError(0);
  v63 = 1107;
  v25 = sub_2260988A8();
  sub_225F1A478();
  sub_2260988C8();
  v26 = v64;
  v5 = v64;
  v29 = v26;

  v28 = *(v54 + 8);
  v27 = v54 + 8;
  v28(v32, v52);
  v28(v57, v52);

  return v29;
}

void sub_225FCF714(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v2 = *a1;
  *a2 = sub_2260988D8();
}

uint64_t sub_225FCF84C(uint64_t a1, id a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v5 = sub_2260988D8();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  (*(a3 + 16))(a3, a1);
  return MEMORY[0x277D82BD8](v6);
}

uint64_t sub_225FCF95C(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v51 = a2;
  v53 = sub_225EF7450;
  v57 = sub_225EF7B84;
  v59 = sub_225EF7434;
  v61 = sub_225EF7434;
  v64 = sub_225EF7B90;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  v76 = 0;
  v44 = 0;
  v49 = sub_226098C58();
  v47 = *(v49 - 8);
  v48 = v49 - 8;
  v45 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v2 = &v27[-v45];
  v46 = &v27[-v45];
  v78 = v3;
  v79 = v4;
  v77 = v5;
  v6 = sub_225F7E9BC();
  (*(v47 + 16))(v2, v6, v49);
  sub_2260998E8();
  v54 = 32;
  v55 = 7;
  v7 = swift_allocObject();
  v8 = v51;
  v56 = v7;
  *(v7 + 16) = v50;
  *(v7 + 24) = v8;
  v68 = sub_226098C48();
  v69 = sub_22609A088();
  v52 = 17;
  v60 = swift_allocObject();
  *(v60 + 16) = 32;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v9 = swift_allocObject();
  v10 = v56;
  v58 = v9;
  *(v9 + 16) = v53;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v58;
  v65 = v11;
  *(v11 + 16) = v57;
  *(v11 + 24) = v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v63 = sub_22609A4F8();
  v66 = v13;

  v14 = v60;
  v15 = v66;
  *v66 = v59;
  v15[1] = v14;

  v16 = v62;
  v17 = v66;
  v66[2] = v61;
  v17[3] = v16;

  v18 = v65;
  v19 = v66;
  v66[4] = v64;
  v19[5] = v18;
  sub_225EF5418();

  if (os_log_type_enabled(v68, v69))
  {
    v20 = v44;
    v37 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v38 = sub_225EF5468(0, v36, v36);
    v39 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v40 = &v74;
    v74 = v37;
    v41 = &v73;
    v73 = v38;
    v42 = &v72;
    v72 = v39;
    sub_225EF54BC(2, &v74);
    sub_225EF54BC(1, v40);
    v70 = v59;
    v71 = v60;
    sub_225EF73E8(&v70, v40, v41, v42);
    v43 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v70 = v61;
      v71 = v62;
      sub_225EF73E8(&v70, &v74, &v73, &v72);
      v35 = 0;
      v70 = v64;
      v71 = v65;
      sub_225EF73E8(&v70, &v74, &v73, &v72);
      _os_log_impl(&dword_225EEB000, v68, v69, "Visual context requested for language:%s", v37, 0xCu);
      sub_225EF7AF4(v38, 0, v36);
      sub_225EF7AF4(v39, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v68);
  (*(v47 + 8))(v46, v49);
  v31 = MEMORY[0x277D837D0];
  v30 = sub_22609A4F8();
  v29 = v21;
  v22 = sub_226099AA8();
  v23 = v29;
  *v29 = v22;
  v23[1] = v24;
  sub_225EF5418();
  v32 = v25;
  v76 = v25;
  v75[2] = v25;
  v34 = v75;
  v75[0] = v50;
  v75[1] = v51;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F3006C();
  if (sub_226099C38())
  {

    v28 = 1;
  }

  else
  {

    v28 = 0;
  }

  return v28 & 1;
}

uint64_t sub_225FD00D4(uint64_t a1, uint64_t a2)
{
  *(v3 + 200) = v2;
  *(v3 + 192) = a2;
  *(v3 + 184) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 112) = 0;
  *(v3 + 296) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
  *(v3 + 208) = swift_task_alloc();
  v4 = sub_226098C58();
  *(v3 + 216) = v4;
  *(v3 + 224) = *(v4 - 8);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;

  return MEMORY[0x2822009F8](sub_225FD0298, 0, 0);
}

uint64_t sub_225FD0298()
{
  v107 = v0;
  v1 = *(v0 + 184);
  *(v0 + 16) = v0;
  v101 = [v1 language];
  if (v101)
  {
    v96 = sub_226099A08();
    v97 = v2;
    MEMORY[0x277D82BD8](v101);
    v98 = v96;
    v99 = v97;
  }

  else
  {
    v98 = 0;
    v99 = 0;
  }

  if (!v99)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 771, 0);
  }

  v95 = sub_225FCF95C(v98, v99);

  if ((v95 & 1) == 0)
  {
    v13 = *(v100 + 232);
    v25 = *(v100 + 216);
    v24 = *(v100 + 224);
    v14 = sub_225F7E9BC();
    (*(v24 + 16))(v13, v14, v25);
    v27 = sub_226098C48();
    v26 = sub_22609A088();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v28 = sub_22609A4F8();
    if (os_log_type_enabled(v27, v26))
    {
      v20 = sub_22609A188();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v21 = sub_225EF5468(0, v19, v19);
      v22 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v100 + 48) = v20;
      *(v100 + 56) = v21;
      *(v100 + 64) = v22;
      sub_225EF54BC(0, (v100 + 48));
      sub_225EF54BC(0, (v100 + 48));
      *(v100 + 72) = v28;
      v23 = swift_task_alloc();
      v23[2] = v100 + 48;
      v23[3] = v100 + 56;
      v23[4] = v100 + 64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v27, v26, "Visual context not supported", v20, 2u);
      sub_225EF7AF4(v21, 0, v19);
      sub_225EF7AF4(v22, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    v17 = *(v100 + 232);
    v18 = *(v100 + 216);
    v16 = *(v100 + 224);
    MEMORY[0x277D82BD8](v27);
    (*(v16 + 8))(v17, v18);
LABEL_31:

    v15 = *(*(v100 + 16) + 8);

    return v15(0);
  }

  v94 = [*(v100 + 184) messagesContext];
  if (v94)
  {
    sub_22601FA78();
    v92 = sub_226099C88();
    MEMORY[0x277D82BD8](v94);
    v93 = v92;
  }

  else
  {
    v93 = 0;
  }

  *(v100 + 264) = v93;
  if (!v93)
  {
LABEL_25:
    v11 = *(v100 + 240);
    v38 = *(v100 + 216);
    v37 = *(v100 + 224);
    v12 = sub_225F7E9BC();
    (*(v37 + 16))(v11, v12, v38);
    v40 = sub_226098C48();
    v39 = sub_22609A088();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v41 = sub_22609A4F8();
    if (os_log_type_enabled(v40, v39))
    {
      v33 = sub_22609A188();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v34 = sub_225EF5468(0, v32, v32);
      v35 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v100 + 80) = v33;
      *(v100 + 88) = v34;
      *(v100 + 96) = v35;
      sub_225EF54BC(0, (v100 + 80));
      sub_225EF54BC(0, (v100 + 80));
      *(v100 + 104) = v41;
      v36 = swift_task_alloc();
      v36[2] = v100 + 80;
      v36[3] = v100 + 88;
      v36[4] = v100 + 96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v40, v39, "No visual context entities to fetch", v33, 2u);
      sub_225EF7AF4(v34, 0, v32);
      sub_225EF7AF4(v35, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    v30 = *(v100 + 240);
    v31 = *(v100 + 216);
    v29 = *(v100 + 224);
    MEMORY[0x277D82BD8](v40);
    (*(v29 + 8))(v30, v31);
    goto LABEL_31;
  }

  *(v100 + 112) = v93;
  *(v100 + 120) = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E8, &qword_2260A09A8);
  sub_22601F9F0();
  if (sub_22609A008())
  {

    goto LABEL_25;
  }

  v91 = *sub_225F82870();

  sub_225F8798C(sub_225FD1CB4, 0, v91, MEMORY[0x277D839B0], MEMORY[0x277D839B0]);

  v90 = *(v100 + 297);
  *(v100 + 296) = v90 & 1;
  if ((v90 & 1) == 0)
  {
    v9 = *(v100 + 248);
    v51 = *(v100 + 216);
    v50 = *(v100 + 224);
    v10 = sub_225F7E9BC();
    (*(v50 + 16))(v9, v10, v51);
    log = sub_226098C48();
    v52 = sub_22609A088();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v54 = sub_22609A4F8();
    if (os_log_type_enabled(log, v52))
    {
      v46 = sub_22609A188();
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v47 = sub_225EF5468(0, v45, v45);
      v48 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v100 + 128) = v46;
      *(v100 + 136) = v47;
      *(v100 + 144) = v48;
      sub_225EF54BC(0, (v100 + 128));
      sub_225EF54BC(0, (v100 + 128));
      *(v100 + 152) = v54;
      v49 = swift_task_alloc();
      v49[2] = v100 + 128;
      v49[3] = v100 + 136;
      v49[4] = v100 + 144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, log, v52, "Visual context task in progress. Skip", v46, 2u);
      sub_225EF7AF4(v47, 0, v45);
      sub_225EF7AF4(v48, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    v43 = *(v100 + 248);
    v44 = *(v100 + 216);
    v42 = *(v100 + 224);
    MEMORY[0x277D82BD8](log);
    (*(v42 + 8))(v43, v44);

    goto LABEL_31;
  }

  v4 = *(v100 + 256);
  v79 = *(v100 + 216);
  v78 = *(v100 + 224);
  v5 = sub_225F7E9BC();
  (*(v78 + 16))(v4, v5, v79);
  v80 = swift_allocObject();
  *(v80 + 16) = v90;
  oslog = sub_226098C48();
  v89 = sub_22609A088();
  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  v85 = swift_allocObject();
  *(v85 + 16) = 4;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_225EF3E24;
  *(v81 + 24) = v80;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_225EF70FC;
  *(v82 + 24) = v81;
  v83 = swift_allocObject();
  *(v83 + 16) = sub_225EF7108;
  *(v83 + 24) = v82;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_225EF7150;
  *(v86 + 24) = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v87 = v6;

  *v87 = sub_225EF7434;
  v87[1] = v84;

  v87[2] = sub_225EF7434;
  v87[3] = v85;

  v87[4] = sub_225EF715C;
  v87[5] = v86;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v89))
  {
    buf = sub_22609A188();
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v76 = sub_225EF5468(0, v74, v74);
    v77 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v102 = buf;
    v103 = v76;
    v104 = v77;
    sub_225EF54BC(0, &v102);
    sub_225EF54BC(1, &v102);
    v105 = sub_225EF7434;
    v106 = v84;
    sub_225EF73E8(&v105, &v102, &v103, &v104);
    v105 = sub_225EF7434;
    v106 = v85;
    sub_225EF73E8(&v105, &v102, &v103, &v104);
    v105 = sub_225EF715C;
    v106 = v86;
    sub_225EF73E8(&v105, &v102, &v103, &v104);
    _os_log_impl(&dword_225EEB000, oslog, v89, "Visual context task proceed = %{BOOL}d", buf, 8u);
    sub_225EF7AF4(v76, 0, v74);
    sub_225EF7AF4(v77, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v56 = *(v100 + 256);
  v57 = *(v100 + 216);
  v70 = *(v100 + 208);
  v69 = *(v100 + 200);
  v58 = *(v100 + 192);
  v64 = *(v100 + 184);
  v55 = *(v100 + 224);
  MEMORY[0x277D82BD8](oslog);
  (*(v55 + 8))(v56, v57);
  v67 = sub_226099DA8();
  v68 = *(*(v67 - 8) + 56);
  v68(v70, 1);
  sub_2260998E8();
  v62 = sub_226098A78();
  v61 = *(v62 - 8);
  v59 = *(v61 + 64);
  v65 = swift_task_alloc();
  (*(v61 + 16))(v65, v58, v62);
  MEMORY[0x277D82BE0](v64);
  v60 = (*(v61 + 80) + 40) & ~*(v61 + 80);
  v63 = (v60 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  *(v66 + 2) = 0;
  *(v66 + 3) = 0;
  *(v66 + 4) = v93;
  (*(v61 + 32))(&v66[v60], v65, v62);
  *&v66[v63] = v64;
  *&v66[(v63 + 15) & 0xFFFFFFFFFFFFFFF8] = v69;

  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A48, &qword_2260A0A68);
  v71 = sub_225F38F2C(0, 0, v70, &unk_2260A0A60, v66, v73);
  *(v100 + 272) = v71;
  *(v100 + 160) = v71;
  (v68)(v70, 1, 1, v67);

  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v71;
  v7[5] = v69;
  v72 = sub_225F38F2C(0, 0, v70, &unk_2260A0A78, v7, v73);
  *(v100 + 280) = v72;
  *(v100 + 168) = v72;
  v8 = swift_task_alloc();
  *(v100 + 288) = v8;
  *v8 = *(v100 + 16);
  v8[1] = sub_225FD1A6C;

  return MEMORY[0x282200460](v100 + 176, v72, v73);
}

uint64_t sub_225FD1A6C()
{
  *(*v0 + 16) = *v0;

  return MEMORY[0x2822009F8](sub_225FD1B84, 0, 0);
}

uint64_t sub_225FD1B84()
{
  *(v0 + 16) = v0;
  v3 = *(v0 + 176);

  v1 = *(*(v0 + 16) + 8);

  return v1(v3);
}

char *sub_225FD1CB4@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  *result = 1;
  *a2 = (v3 ^ 1) & 1;
  return result;
}

uint64_t sub_225FD1D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 456) = a6;
  *(v6 + 448) = a5;
  *(v6 + 440) = a4;
  *(v6 + 432) = a1;
  *(v6 + 288) = v6;
  *(v6 + 296) = 0;
  *(v6 + 304) = 0;
  *(v6 + 312) = 0;
  *(v6 + 320) = 0;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  *(v6 + 504) = 0;
  *(v6 + 376) = 0;
  *(v6 + 176) = 0;
  *(v6 + 184) = 0;
  *(v6 + 208) = 0;
  *(v6 + 216) = 0;
  *(v6 + 392) = 0;
  memset((v6 + 56), 0, 0x28uLL);
  *(v6 + 408) = 0;
  v7 = sub_226098C58();
  *(v6 + 464) = v7;
  *(v6 + 472) = *(v7 - 8);
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 296) = a4;
  *(v6 + 304) = a5;
  *(v6 + 312) = a6;

  return MEMORY[0x2822009F8](sub_225FD1EB4, 0, 0);
}

void sub_225FD1EB4()
{
  v155 = v0;
  v1 = v0[62];
  v128 = v0[59];
  v129 = v0[58];
  v131 = v0[55];
  v0[36] = v0;
  v2 = sub_225F7E9BC();
  v130 = *(v128 + 16);
  v130(v1, v2, v129);
  sub_2260998E8();
  v132 = swift_allocObject();
  *(v132 + 16) = v131;
  v138 = sub_226098C48();
  v139 = sub_22609A078();
  v134 = swift_allocObject();
  *(v134 + 16) = 32;
  v135 = swift_allocObject();
  *(v135 + 16) = 8;
  v133 = swift_allocObject();
  *(v133 + 16) = sub_22602482C;
  *(v133 + 24) = v132;
  v136 = swift_allocObject();
  *(v136 + 16) = sub_225EF7B84;
  *(v136 + 24) = v133;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v137 = v3;

  *v137 = sub_225EF7434;
  v137[1] = v134;

  v137[2] = sub_225EF7434;
  v137[3] = v135;

  v137[4] = sub_225EF7B90;
  v137[5] = v136;
  sub_225EF5418();

  if (os_log_type_enabled(v138, v139))
  {
    buf = sub_22609A188();
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v125 = sub_225EF5468(0, v123, v123);
    v126 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v150 = buf;
    v151 = v125;
    v152 = v126;
    sub_225EF54BC(2, &v150);
    sub_225EF54BC(1, &v150);
    v153 = sub_225EF7434;
    v154 = v134;
    sub_225EF73E8(&v153, &v150, &v151, &v152);
    v153 = sub_225EF7434;
    v154 = v135;
    sub_225EF73E8(&v153, &v150, &v151, &v152);
    v153 = sub_225EF7B90;
    v154 = v136;
    sub_225EF73E8(&v153, &v150, &v151, &v152);
    _os_log_impl(&dword_225EEB000, v138, v139, "Fetch contextual entities from visual context count: %s", buf, 0xCu);
    sub_225EF7AF4(v125, 0, v123);
    sub_225EF7AF4(v126, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v116 = *(v127 + 496);
  v117 = *(v127 + 464);
  v120 = *(v127 + 448);
  v121 = *(v127 + 440);
  v115 = *(v127 + 472);
  MEMORY[0x277D82BD8](v138);
  v118 = *(v115 + 8);
  v118(v116, v117);
  sub_226024834();
  v119 = sub_225F26174();
  *(v127 + 320) = v119;
  type metadata accessor for CESASelfHelper();
  sub_22603E620(v120, 0);
  sub_22609A4F8();
  *(v127 + 328) = sub_226099F08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786520, &unk_2260A0490);
  *(v127 + 336) = sub_22609A4F8();
  sub_2260998E8();
  *(v127 + 344) = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E8, &qword_2260A09A8);
  sub_22601F9F0();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CC0, &qword_2260A0E48);
    sub_22609A388();
    v114 = *(v127 + 352);
    if (!v114)
    {
      v4 = *(v127 + 488);
      v103 = *(v127 + 464);
      sub_225EFE6E8((v127 + 144));
      v5 = sub_225F7E9BC();
      v130(v4, v5, v103);
      v104 = *(v127 + 328);
      sub_2260998E8();
      sub_2260998E8();
      v105 = swift_allocObject();
      *(v105 + 16) = v104;
      oslog = sub_226098C48();
      v112 = sub_22609A0A8();
      v107 = swift_allocObject();
      *(v107 + 16) = 0;
      v108 = swift_allocObject();
      *(v108 + 16) = 8;
      v106 = swift_allocObject();
      *(v106 + 16) = sub_226024898;
      *(v106 + 24) = v105;
      v109 = swift_allocObject();
      *(v109 + 16) = sub_225F2D374;
      *(v109 + 24) = v106;
      sub_22609A4F8();
      v110 = v6;

      *v110 = sub_225EF7434;
      v110[1] = v107;

      v110[2] = sub_225EF7434;
      v110[3] = v108;

      v110[4] = sub_225EF71D0;
      v110[5] = v109;
      sub_225EF5418();

      if (os_log_type_enabled(oslog, v112))
      {
        v69 = sub_22609A188();
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v70 = sub_225EF5468(0, v68, v68);
        v71 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v145 = v69;
        v146 = v70;
        v147 = v71;
        sub_225EF54BC(0, &v145);
        sub_225EF54BC(1, &v145);
        v148 = sub_225EF7434;
        v149 = v107;
        sub_225EF73E8(&v148, &v145, &v146, &v147);
        v148 = sub_225EF7434;
        v149 = v108;
        sub_225EF73E8(&v148, &v145, &v146, &v147);
        v148 = sub_225EF71D0;
        v149 = v109;
        sub_225EF73E8(&v148, &v145, &v146, &v147);
        _os_log_impl(&dword_225EEB000, oslog, v112, "Found %ld contextual entities in visual context", v69, 0xCu);
        sub_225EF7AF4(v70, 0, v68);
        sub_225EF7AF4(v71, 0, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }

      else
      {
      }

      v65 = *(v127 + 488);
      v66 = *(v127 + 464);
      MEMORY[0x277D82BD8](oslog);
      v118(v65, v66);
      swift_beginAccess();
      swift_endAccess();
      v67 = sub_226099F28();

      if (v67 > 0)
      {
        v62 = *(v127 + 456);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0);
        v63 = swift_task_alloc();
        v64 = [v62 requestIdentifier];
        if (v64)
        {
          v58 = sub_226099A08();
          v59 = v20;
          MEMORY[0x277D82BD8](v64);
          v60 = v58;
          v61 = v59;
        }

        else
        {
          v60 = 0;
          v61 = 0;
        }

        *(v127 + 160) = v60;
        *(v127 + 168) = v61;
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E0, &qword_2260A02D0);
        v57 = sub_226098A78();
        sub_225FBE9D0(sub_225FBE98C, 0, v56, MEMORY[0x277D84A98], v57, v122, v63);
        sub_225EFE6BC(v127 + 160);
        type metadata accessor for CESAExperimentationManager();
        v54 = swift_task_alloc();
        sub_225F7BF50(v63, v54);
        v55 = *(v57 - 8);
        if ((*(v55 + 48))(v54, 1) == 1)
        {
          v53 = 0;
        }

        else
        {
          v52 = sub_226098A38();
          (*(v55 + 8))(v54, v57);
          v53 = v52;
        }

        sub_226046714(4u, v53);
        MEMORY[0x277D82BD8](v53);

        sub_225F7C078(v63);
      }

      v48 = *(v127 + 448);
      v49 = *(v127 + 336);
      sub_2260998E8();
      sub_22603F798(v48, v49);

      sub_225F1B360();

      v50 = sub_225F1B428();
      *(v127 + 504) = v50 & 1;

      v51 = *sub_225F82870();

      sub_225F8798C(sub_225FD46E0, 0, v51, MEMORY[0x277D839B0], MEMORY[0x277D84F78] + 8);
      v21 = *(v127 + 480);
      v37 = *(v127 + 464);

      v22 = sub_225F7E9BC();
      v130(v21, v22, v37);
      v38 = swift_allocObject();
      *(v38 + 16) = v50 & 1;
      log = sub_226098C48();
      v47 = sub_22609A0A8();
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      v43 = swift_allocObject();
      *(v43 + 16) = 4;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_225EF3E24;
      *(v39 + 24) = v38;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_225EF70FC;
      *(v40 + 24) = v39;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_225EF7108;
      *(v41 + 24) = v40;
      v44 = swift_allocObject();
      *(v44 + 16) = sub_225EF7150;
      *(v44 + 24) = v41;
      sub_22609A4F8();
      v45 = v23;

      *v45 = sub_225EF7434;
      v45[1] = v42;

      v45[2] = sub_225EF7434;
      v45[3] = v43;

      v45[4] = sub_225EF715C;
      v45[5] = v44;
      sub_225EF5418();

      if (os_log_type_enabled(log, v47))
      {
        v34 = sub_22609A188();
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v35 = sub_225EF5468(0, v33, v33);
        v36 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v140 = v34;
        v141 = v35;
        v142 = v36;
        sub_225EF54BC(0, &v140);
        sub_225EF54BC(1, &v140);
        v143 = sub_225EF7434;
        v144 = v42;
        sub_225EF73E8(&v143, &v140, &v141, &v142);
        v143 = sub_225EF7434;
        v144 = v43;
        sub_225EF73E8(&v143, &v140, &v141, &v142);
        v143 = sub_225EF715C;
        v144 = v44;
        sub_225EF73E8(&v143, &v140, &v141, &v142);
        _os_log_impl(&dword_225EEB000, log, v47, "Visual context config enabled:%{BOOL}d", v34, 8u);
        sub_225EF7AF4(v35, 0, v33);
        sub_225EF7AF4(v36, 0, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }

      else
      {
      }

      v31 = *(v127 + 480);
      v32 = *(v127 + 464);
      MEMORY[0x277D82BD8](log);
      v118(v31, v32);
      if (v50)
      {
        swift_beginAccess();
        v27 = *(v127 + 328);
        sub_2260998E8();
        swift_endAccess();
        *(v127 + 360) = v27;
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
        v29 = sub_226099628();
        v24 = sub_2260248A0();
        v30 = sub_225F15970(sub_225FD46FC, 0, v28, v29, MEMORY[0x277D84A98], v24, MEMORY[0x277D84AC0], v122);
        v26 = *(v127 + 432);
        sub_225EFE6E8((v127 + 360));
        *(v127 + 368) = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D20, &qword_2260A0F00);
        sub_226024928();
        *v26 = sub_226099D18();
      }

      else
      {
        **(v127 + 432) = 0;
      }

      sub_225EFE6E8((v127 + 336));
      sub_225EFE6E8((v127 + 328));
      MEMORY[0x277D82BD8](v119);

      v25 = *(*(v127 + 288) + 8);

      v25();
      return;
    }

    *(v127 + 376) = v114;
    v113 = [v114 sender];
    if (v113)
    {
      sub_226099A08();
      v101 = v7;
      MEMORY[0x277D82BD8](v113);
      v102 = v101;
    }

    else
    {
      v102 = 0;
    }

    if (!v102)
    {
      sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 800, 0);
      return;
    }

    v100 = sub_226099B18();

    if ((v100 & 1) == 0)
    {
      v99 = [v114 sender];
      if (v99)
      {
        v95 = sub_226099A08();
        v96 = v8;
        MEMORY[0x277D82BD8](v99);
        v97 = v95;
        v98 = v96;
      }

      else
      {
        v97 = 0;
        v98 = 0;
      }

      if (!v98)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 802, 0);
        return;
      }

      v93 = *(v127 + 456);
      *(v127 + 272) = v97;
      *(v127 + 280) = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
      sub_226099F48();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786328, &unk_2260A05C0);
      sub_22609A4F8();
      v92 = v9;
      v10 = sub_22603F678();
      sub_225F4C5E0(v10, v92);
      v94 = [v93 applicationName];
      if (v94)
      {
        v88 = sub_226099A08();
        v89 = v11;
        MEMORY[0x277D82BD8](v94);
        v90 = v88;
        v91 = v89;
      }

      else
      {
        v90 = 0;
        v91 = 0;
      }

      if (!v91)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 803, 0);
        return;
      }

      v92[2] = v90;
      v92[3] = v91;
      v12 = sub_22603F6D8();
      sub_225F4C5E0(v12, v92 + 4);
      v13 = sub_22603F738();
      sub_225F4C5E0(v13, v92 + 6);
      sub_225EF5418();
      *(v127 + 424) = sub_2260998A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786330, &qword_2260A04C0);
      sub_226099CE8();
    }

    v87 = [v114 messages];
    if (v87)
    {
      v85 = sub_226099C88();
      MEMORY[0x277D82BD8](v87);
      v86 = v85;
    }

    else
    {
      v86 = 0;
    }

    if (!v86)
    {
      sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 805, 0);
      return;
    }

    *(v127 + 384) = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    sub_225F156F8();
    sub_22609A028();
LABEL_32:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E48, &unk_22609F970);
    sub_22609A388();
    v84 = *(v127 + 200);
    if (v84)
    {
      break;
    }

    sub_225EFE6E8((v127 + 176));
    MEMORY[0x277D82BD8](v114);
  }

  *(v127 + 208) = *(v127 + 192);
  *(v127 + 216) = v84;
  sub_2260998E8();
  v82 = sub_2260999F8();

  v83 = [v119 tagEntitiesWithTagNamesIn_];
  MEMORY[0x277D82BD8](v82);
  sub_2260249B0();
  sub_226024A14();
  *(v127 + 392) = sub_226099EE8();
  MEMORY[0x277D82BD8](v83);
  sub_2260998E8();
  sub_226099F18();
  memcpy((v127 + 56), (v127 + 16), 0x28uLL);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D50, &unk_2260A0F08);
    sub_226099F68();
    v81 = *(v127 + 400);
    if (!v81)
    {
      sub_225F15874((v127 + 56));

      goto LABEL_32;
    }

    v79 = *(v127 + 456);
    *(v127 + 408) = v81;
    v77 = [v81 entityContent];
    *(v127 + 240) = sub_226099A08();
    *(v127 + 248) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
    sub_226099F48();
    MEMORY[0x277D82BD8](v77);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786328, &unk_2260A05C0);
    sub_22609A4F8();
    v78 = v15;
    v16 = sub_22603F678();
    sub_225F4C5E0(v16, v78);
    v80 = [v79 applicationName];
    if (v80)
    {
      v73 = sub_226099A08();
      v74 = v17;
      MEMORY[0x277D82BD8](v80);
      v75 = v73;
      v76 = v74;
    }

    else
    {
      v75 = 0;
      v76 = 0;
    }

    if (!v76)
    {
      break;
    }

    v78[2] = v75;
    v78[3] = v76;
    v18 = sub_22603F6D8();
    sub_225F4C5E0(v18, v78 + 4);
    v72 = [v81 tagName];
    v78[6] = sub_226099A08();
    v78[7] = v19;
    sub_225EF5418();
    MEMORY[0x277D82BD8](v72);
    *(v127 + 416) = sub_2260998A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786330, &qword_2260A04C0);
    sub_226099CE8();
    MEMORY[0x277D82BD8](v81);
  }

  sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 811, 0);
}

uint64_t sub_225FD4630(uint64_t a1)
{
  sub_22601FA78();
  sub_226099CD8();
  return sub_226099A28();
}

uint64_t sub_225FD4684(uint64_t a1)
{
  sub_2260998E8();
  v2 = sub_226099F28();

  return v2;
}

uint64_t sub_225FD4758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 224) = a4;
  *(v4 + 216) = a1;
  *(v4 + 128) = v4;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 416) = 0;
  v5 = sub_22609A358();
  *(v4 + 232) = v5;
  *(v4 + 240) = *(v5 - 8);
  *(v4 + 248) = swift_task_alloc();
  v6 = sub_22609A348();
  *(v4 + 256) = v6;
  *(v4 + 264) = *(v6 - 8);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  v7 = sub_226098C58();
  *(v4 + 288) = v7;
  *(v4 + 296) = *(v7 - 8);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 136) = a4;

  return MEMORY[0x2822009F8](sub_225FD4978, 0, 0);
}

uint64_t sub_225FD4978()
{
  v0[16] = v0;
  v1 = swift_allocObject();
  v0[41] = v1;
  v0[18] = v1 + 16;
  *(v1 + 16) = 0;
  v58 = v0[41];
  swift_beginAccess();
  v59 = *(v58 + 16);
  swift_endAccess();
  if (v59 < 60)
  {
    v46 = *(v57 + 328);
    v2 = *(v57 + 320);
    v44 = *(v57 + 288);
    v43 = *(v57 + 296);
    v3 = sub_225F7E9BC();
    v4 = *(v43 + 16);
    *(v57 + 336) = v4;
    *(v57 + 344) = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v4(v2, v3, v44);

    v55 = sub_226098C48();
    v56 = sub_22609A078();
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    v49 = swift_allocObject();
    *(v49 + 16) = 8;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_225FD8A38;
    *(v45 + 24) = 0;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_225F2D374;
    *(v50 + 24) = v45;
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_225F2D274;
    *(v47 + 24) = v46;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_225F2D374;
    *(v53 + 24) = v47;
    *(v57 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v54 = v5;

    *v54 = sub_225EF7434;
    v54[1] = v48;

    v54[2] = sub_225EF7434;
    v54[3] = v49;

    v54[4] = sub_225EF71D0;
    v54[5] = v50;

    v54[6] = sub_225EF7434;
    v54[7] = v51;

    v54[8] = sub_225EF7434;
    v54[9] = v52;

    v54[10] = sub_225EF71D0;
    v54[11] = v53;
    sub_225EF5418();

    if (os_log_type_enabled(v55, v56))
    {
      buf = sub_22609A188();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v41 = sub_225EF5468(0, v39, v39);
      v42 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v57 + 192) = buf;
      *(v57 + 200) = v41;
      *(v57 + 208) = v42;
      sub_225EF54BC(0, (v57 + 192));
      sub_225EF54BC(2, (v57 + 192));
      *(v57 + 112) = sub_225EF7434;
      *(v57 + 120) = v48;
      sub_225EF73E8((v57 + 112), v57 + 192, v57 + 200, v57 + 208);
      *(v57 + 112) = sub_225EF7434;
      *(v57 + 120) = v49;
      sub_225EF73E8((v57 + 112), v57 + 192, v57 + 200, v57 + 208);
      *(v57 + 112) = sub_225EF71D0;
      *(v57 + 120) = v50;
      sub_225EF73E8((v57 + 112), v57 + 192, v57 + 200, v57 + 208);
      *(v57 + 112) = sub_225EF7434;
      *(v57 + 120) = v51;
      sub_225EF73E8((v57 + 112), v57 + 192, v57 + 200, v57 + 208);
      *(v57 + 112) = sub_225EF7434;
      *(v57 + 120) = v52;
      sub_225EF73E8((v57 + 112), v57 + 192, v57 + 200, v57 + 208);
      *(v57 + 112) = sub_225EF71D0;
      *(v57 + 120) = v53;
      sub_225EF73E8((v57 + 112), v57 + 192, v57 + 200, v57 + 208);
      _os_log_impl(&dword_225EEB000, v55, v56, "Start polling for fetching visual context entities at %ldms cadence and total wait %ldms", buf, 0x16u);
      sub_225EF7AF4(v41, 0, v39);
      sub_225EF7AF4(v42, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    v32 = *(v57 + 320);
    v33 = *(v57 + 288);
    v36 = *(v57 + 272);
    v37 = *(v57 + 256);
    v31 = *(v57 + 296);
    v35 = *(v57 + 264);
    MEMORY[0x277D82BD8](v55);
    v6 = *(v31 + 8);
    *(v57 + 360) = v6;
    *(v57 + 368) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v32, v33);
    sub_22609A328();
    *(v57 + 184) = 20;
    sub_225EF81C4();
    v34 = sub_22609A618();
    sub_225FD8A44(v36, v34, v7);
    v8 = *(v35 + 8);
    *(v57 + 376) = v8;
    *(v57 + 384) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v36, v37);
    *(v57 + 88) = 0;
    *(v57 + 96) = 0;
    *(v57 + 104) = 1;
    v38 = sub_225F3E9A8();
    sub_225F7E764();
    v9 = swift_task_alloc();
    *(v57 + 392) = v9;
    *v9 = *(v57 + 128);
    v9[1] = sub_225FD58F0;
    v10 = *(v57 + 280);
    v11 = *(v57 + 248);
    v12 = *(v57 + 232);

    return MEMORY[0x282200488](v10, v57 + 88, v11, v12, v38);
  }

  else
  {
    v13 = *(v57 + 304);
    v27 = *(v57 + 288);
    v26 = *(v57 + 296);
    v14 = sub_225F7E9BC();
    (*(v26 + 16))(v13, v14, v27);
    oslog = sub_226098C48();
    v28 = sub_22609A078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v30 = sub_22609A4F8();
    if (os_log_type_enabled(oslog, v28))
    {
      v22 = sub_22609A188();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v23 = sub_225EF5468(0, v21, v21);
      v24 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v57 + 152) = v22;
      *(v57 + 160) = v23;
      *(v57 + 168) = v24;
      sub_225EF54BC(0, (v57 + 152));
      sub_225EF54BC(0, (v57 + 152));
      *(v57 + 176) = v30;
      v25 = swift_task_alloc();
      v25[2] = v57 + 152;
      v25[3] = v57 + 160;
      v25[4] = v57 + 168;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, oslog, v28, "Abort polling fetching visual context entities", v22, 2u);
      sub_225EF7AF4(v23, 0, v21);
      sub_225EF7AF4(v24, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    v18 = *(v57 + 304);
    v19 = *(v57 + 288);
    v20 = *(v57 + 216);
    v17 = *(v57 + 296);
    MEMORY[0x277D82BD8](oslog);
    (*(v17 + 8))(v18, v19);
    *v20 = 0;

    v15 = *(*(v57 + 128) + 8);

    return v15();
  }
}

uint64_t sub_225FD58F0()
{
  v7 = *v1;
  v7[16] = *v1;
  v7[50] = v0;

  if (v0)
  {
    v2 = sub_225FD7350;
  }

  else
  {
    v6 = v7[47];
    v4 = v7[35];
    v5 = v7[32];
    (*(v7[30] + 8))(v7[31], v7[29]);
    v6(v4, v5);
    v2 = sub_225FD5AB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_225FD5AB8()
{
  v96 = v0;
  v0[16] = v0;
  v88 = v0[50];
  v89 = v0[41];
  swift_beginAccess();
  v90 = *(v89 + 16);
  v1 = swift_endAccess();
  if (__OFADD__(v90, 20))
  {
    __break(1u);
LABEL_27:
    MEMORY[0x282200460](v1, v2, v3);
    return;
  }

  v59 = *(v87 + 328);
  swift_beginAccess();
  *(v59 + 16) = v90 + 20;
  swift_endAccess();
  v60 = *sub_225F82870();

  sub_225F8798C(sub_225F1B4EC, 0, v60, MEMORY[0x277D839B0], MEMORY[0x277D839B0]);
  if (!v88)
  {

    v16 = *(v87 + 105);
    *(v87 + 416) = v16 & 1;
    if ((v16 & 1) == 0)
    {
      v48 = *(v87 + 336);
      v49 = *(v87 + 328);
      v17 = *(v87 + 312);
      v47 = *(v87 + 288);
      v18 = sub_225F7E9BC();
      v48(v17, v18, v47);

      v50 = *(v49 + 16);

      v51 = swift_allocObject();
      *(v51 + 16) = v50;
      log = sub_226098C48();
      v58 = sub_22609A078();
      v53 = swift_allocObject();
      *(v53 + 16) = 0;
      v54 = swift_allocObject();
      *(v54 + 16) = 8;
      v52 = swift_allocObject();
      *(v52 + 16) = sub_226024824;
      *(v52 + 24) = v51;
      v55 = swift_allocObject();
      *(v55 + 16) = sub_225F2D374;
      *(v55 + 24) = v52;
      sub_22609A4F8();
      v56 = v19;

      *v56 = sub_225EF7434;
      v56[1] = v53;

      v56[2] = sub_225EF7434;
      v56[3] = v54;

      v56[4] = sub_225EF71D0;
      v56[5] = v55;
      sub_225EF5418();

      if (os_log_type_enabled(log, v58))
      {
        v44 = sub_22609A188();
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v45 = sub_225EF5468(0, v43, v43);
        v46 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v91 = v44;
        v92 = v45;
        v93 = v46;
        sub_225EF54BC(0, &v91);
        sub_225EF54BC(1, &v91);
        v94 = sub_225EF7434;
        v95 = v53;
        sub_225EF73E8(&v94, &v91, &v92, &v93);
        v94 = sub_225EF7434;
        v95 = v54;
        sub_225EF73E8(&v94, &v91, &v92, &v93);
        v94 = sub_225EF71D0;
        v95 = v55;
        sub_225EF73E8(&v94, &v91, &v92, &v93);
        _os_log_impl(&dword_225EEB000, log, v58, "Cancel polling for fetching visual context entities at total wait %ldms", v44, 0xCu);
        sub_225EF7AF4(v45, 0, v43);
        sub_225EF7AF4(v46, 0, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }

      else
      {
      }

      v42 = *(v87 + 360);
      v40 = *(v87 + 312);
      v41 = *(v87 + 288);
      MEMORY[0x277D82BD8](log);
      v42(v40, v41);
      v20 = swift_task_alloc();
      *(v87 + 408) = v20;
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A48, &qword_2260A0A68);
      *v20 = *(v87 + 128);
      v20[1] = sub_225FD713C;
      v2 = *(v87 + 224);
      v1 = *(v87 + 216);

      goto LABEL_27;
    }

    v38 = *(v87 + 328);
    swift_beginAccess();
    v39 = *(v38 + 16);
    swift_endAccess();
    if (v39 < 60)
    {
      v76 = *(v87 + 328);
      v5 = *(v87 + 320);
      v74 = *(v87 + 288);
      v73 = *(v87 + 296);
      v6 = sub_225F7E9BC();
      v7 = *(v73 + 16);
      *(v87 + 336) = v7;
      *(v87 + 344) = (v73 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v7(v5, v6, v74);

      oslog = sub_226098C48();
      v86 = sub_22609A078();
      v78 = swift_allocObject();
      *(v78 + 16) = 0;
      v79 = swift_allocObject();
      *(v79 + 16) = 8;
      v75 = swift_allocObject();
      *(v75 + 16) = sub_225FD8A38;
      *(v75 + 24) = 0;
      v80 = swift_allocObject();
      *(v80 + 16) = sub_225F2D374;
      *(v80 + 24) = v75;
      v81 = swift_allocObject();
      *(v81 + 16) = 0;
      v82 = swift_allocObject();
      *(v82 + 16) = 8;
      v77 = swift_allocObject();
      *(v77 + 16) = sub_225F2D274;
      *(v77 + 24) = v76;
      v83 = swift_allocObject();
      *(v83 + 16) = sub_225F2D374;
      *(v83 + 24) = v77;
      *(v87 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      sub_22609A4F8();
      v84 = v8;

      *v84 = sub_225EF7434;
      v84[1] = v78;

      v84[2] = sub_225EF7434;
      v84[3] = v79;

      v84[4] = sub_225EF71D0;
      v84[5] = v80;

      v84[6] = sub_225EF7434;
      v84[7] = v81;

      v84[8] = sub_225EF7434;
      v84[9] = v82;

      v84[10] = sub_225EF71D0;
      v84[11] = v83;
      sub_225EF5418();

      if (os_log_type_enabled(oslog, v86))
      {
        buf = sub_22609A188();
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v71 = sub_225EF5468(0, v69, v69);
        v72 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v87 + 192) = buf;
        *(v87 + 200) = v71;
        *(v87 + 208) = v72;
        sub_225EF54BC(0, (v87 + 192));
        sub_225EF54BC(2, (v87 + 192));
        *(v87 + 112) = sub_225EF7434;
        *(v87 + 120) = v78;
        sub_225EF73E8((v87 + 112), v87 + 192, v87 + 200, v87 + 208);
        *(v87 + 112) = sub_225EF7434;
        *(v87 + 120) = v79;
        sub_225EF73E8((v87 + 112), v87 + 192, v87 + 200, v87 + 208);
        *(v87 + 112) = sub_225EF71D0;
        *(v87 + 120) = v80;
        sub_225EF73E8((v87 + 112), v87 + 192, v87 + 200, v87 + 208);
        *(v87 + 112) = sub_225EF7434;
        *(v87 + 120) = v81;
        sub_225EF73E8((v87 + 112), v87 + 192, v87 + 200, v87 + 208);
        *(v87 + 112) = sub_225EF7434;
        *(v87 + 120) = v82;
        sub_225EF73E8((v87 + 112), v87 + 192, v87 + 200, v87 + 208);
        *(v87 + 112) = sub_225EF71D0;
        *(v87 + 120) = v83;
        sub_225EF73E8((v87 + 112), v87 + 192, v87 + 200, v87 + 208);
        _os_log_impl(&dword_225EEB000, oslog, v86, "Start polling for fetching visual context entities at %ldms cadence and total wait %ldms", buf, 0x16u);
        sub_225EF7AF4(v71, 0, v69);
        sub_225EF7AF4(v72, 0, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }

      v62 = *(v87 + 320);
      v63 = *(v87 + 288);
      v66 = *(v87 + 272);
      v67 = *(v87 + 256);
      v61 = *(v87 + 296);
      v65 = *(v87 + 264);
      MEMORY[0x277D82BD8](oslog);
      v9 = *(v61 + 8);
      *(v87 + 360) = v9;
      *(v87 + 368) = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v9(v62, v63);
      sub_22609A328();
      *(v87 + 184) = 20;
      sub_225EF81C4();
      v64 = sub_22609A618();
      sub_225FD8A44(v66, v64, v10);
      v11 = *(v65 + 8);
      *(v87 + 376) = v11;
      *(v87 + 384) = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v11(v66, v67);
      *(v87 + 88) = 0;
      *(v87 + 96) = 0;
      *(v87 + 104) = 1;
      v68 = sub_225F3E9A8();
      sub_225F7E764();
      v12 = swift_task_alloc();
      *(v87 + 392) = v12;
      *v12 = *(v87 + 128);
      v12[1] = sub_225FD58F0;
      v13 = *(v87 + 280);
      v14 = *(v87 + 248);
      v15 = *(v87 + 232);

      MEMORY[0x282200488](v13, v87 + 88, v14, v15, v68);
    }

    else
    {
      v21 = *(v87 + 304);
      v34 = *(v87 + 288);
      v33 = *(v87 + 296);
      v22 = sub_225F7E9BC();
      (*(v33 + 16))(v21, v22, v34);
      v36 = sub_226098C48();
      v35 = sub_22609A078();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v37 = sub_22609A4F8();
      if (os_log_type_enabled(v36, v35))
      {
        v29 = sub_22609A188();
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v30 = sub_225EF5468(0, v28, v28);
        v31 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v87 + 152) = v29;
        *(v87 + 160) = v30;
        *(v87 + 168) = v31;
        sub_225EF54BC(0, (v87 + 152));
        sub_225EF54BC(0, (v87 + 152));
        *(v87 + 176) = v37;
        v32 = swift_task_alloc();
        v32[2] = v87 + 152;
        v32[3] = v87 + 160;
        v32[4] = v87 + 168;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();

        _os_log_impl(&dword_225EEB000, v36, v35, "Abort polling fetching visual context entities", v29, 2u);
        sub_225EF7AF4(v30, 0, v28);
        sub_225EF7AF4(v31, 0, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }

      v25 = *(v87 + 304);
      v26 = *(v87 + 288);
      v27 = *(v87 + 216);
      v24 = *(v87 + 296);
      MEMORY[0x277D82BD8](v36);
      (*(v24 + 8))(v25, v26);
      *v27 = 0;

      v23 = *(*(v87 + 128) + 8);

      v23();
    }
  }
}

uint64_t sub_225FD713C()
{
  *(*v0 + 128) = *v0;

  return MEMORY[0x2822009F8](sub_225FD7254, 0, 0);
}

uint64_t sub_225FD7254()
{
  *(v0 + 128) = v0;

  v1 = *(*(v0 + 128) + 8);

  return v1();
}

void sub_225FD7350()
{
  v102 = v0;
  v94 = v0[50];
  v93 = v0[47];
  v91 = v0[35];
  v92 = v0[32];
  v1 = v0[31];
  v2 = v0[30];
  v3 = v0[29];
  v0[16] = v0;
  (*(v2 + 8))(v1, v3);
  v93(v91, v92);

  v95 = v0[41];
  swift_beginAccess();
  v96 = *(v95 + 16);
  v4 = swift_endAccess();
  if (__OFADD__(v96, 20))
  {
    __break(1u);
LABEL_25:
    MEMORY[0x282200460](v4, v5, v6);
    return;
  }

  v62 = *(v90 + 328);
  swift_beginAccess();
  *(v62 + 16) = v96 + 20;
  swift_endAccess();
  v63 = *sub_225F82870();

  sub_225F8798C(sub_225F1B4EC, 0, v63, MEMORY[0x277D839B0], MEMORY[0x277D839B0]);

  v19 = *(v90 + 105);
  *(v90 + 416) = v19 & 1;
  if ((v19 & 1) == 0)
  {
    v51 = *(v90 + 336);
    v52 = *(v90 + 328);
    v20 = *(v90 + 312);
    v50 = *(v90 + 288);
    v21 = sub_225F7E9BC();
    v51(v20, v21, v50);

    v53 = *(v52 + 16);

    v54 = swift_allocObject();
    *(v54 + 16) = v53;
    log = sub_226098C48();
    v61 = sub_22609A078();
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_226024824;
    *(v55 + 24) = v54;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_225F2D374;
    *(v58 + 24) = v55;
    sub_22609A4F8();
    v59 = v22;

    *v59 = sub_225EF7434;
    v59[1] = v56;

    v59[2] = sub_225EF7434;
    v59[3] = v57;

    v59[4] = sub_225EF71D0;
    v59[5] = v58;
    sub_225EF5418();

    if (os_log_type_enabled(log, v61))
    {
      v47 = sub_22609A188();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v48 = sub_225EF5468(0, v46, v46);
      v49 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v97 = v47;
      v98 = v48;
      v99 = v49;
      sub_225EF54BC(0, &v97);
      sub_225EF54BC(1, &v97);
      v100 = sub_225EF7434;
      v101 = v56;
      sub_225EF73E8(&v100, &v97, &v98, &v99);
      v100 = sub_225EF7434;
      v101 = v57;
      sub_225EF73E8(&v100, &v97, &v98, &v99);
      v100 = sub_225EF71D0;
      v101 = v58;
      sub_225EF73E8(&v100, &v97, &v98, &v99);
      _os_log_impl(&dword_225EEB000, log, v61, "Cancel polling for fetching visual context entities at total wait %ldms", v47, 0xCu);
      sub_225EF7AF4(v48, 0, v46);
      sub_225EF7AF4(v49, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v45 = *(v90 + 360);
    v43 = *(v90 + 312);
    v44 = *(v90 + 288);
    MEMORY[0x277D82BD8](log);
    v45(v43, v44);
    v23 = swift_task_alloc();
    *(v90 + 408) = v23;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A48, &qword_2260A0A68);
    *v23 = *(v90 + 128);
    v23[1] = sub_225FD713C;
    v5 = *(v90 + 224);
    v4 = *(v90 + 216);

    goto LABEL_25;
  }

  v41 = *(v90 + 328);
  swift_beginAccess();
  v42 = *(v41 + 16);
  swift_endAccess();
  if (v42 < 60)
  {
    v79 = *(v90 + 328);
    v8 = *(v90 + 320);
    v77 = *(v90 + 288);
    v76 = *(v90 + 296);
    v9 = sub_225F7E9BC();
    v10 = *(v76 + 16);
    *(v90 + 336) = v10;
    *(v90 + 344) = (v76 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v8, v9, v77);

    oslog = sub_226098C48();
    v89 = sub_22609A078();
    v81 = swift_allocObject();
    *(v81 + 16) = 0;
    v82 = swift_allocObject();
    *(v82 + 16) = 8;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_225FD8A38;
    *(v78 + 24) = 0;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_225F2D374;
    *(v83 + 24) = v78;
    v84 = swift_allocObject();
    *(v84 + 16) = 0;
    v85 = swift_allocObject();
    *(v85 + 16) = 8;
    v80 = swift_allocObject();
    *(v80 + 16) = sub_225F2D274;
    *(v80 + 24) = v79;
    v86 = swift_allocObject();
    *(v86 + 16) = sub_225F2D374;
    *(v86 + 24) = v80;
    *(v90 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v87 = v11;

    *v87 = sub_225EF7434;
    v87[1] = v81;

    v87[2] = sub_225EF7434;
    v87[3] = v82;

    v87[4] = sub_225EF71D0;
    v87[5] = v83;

    v87[6] = sub_225EF7434;
    v87[7] = v84;

    v87[8] = sub_225EF7434;
    v87[9] = v85;

    v87[10] = sub_225EF71D0;
    v87[11] = v86;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v89))
    {
      buf = sub_22609A188();
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v74 = sub_225EF5468(0, v72, v72);
      v75 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v90 + 192) = buf;
      *(v90 + 200) = v74;
      *(v90 + 208) = v75;
      sub_225EF54BC(0, (v90 + 192));
      sub_225EF54BC(2, (v90 + 192));
      *(v90 + 112) = sub_225EF7434;
      *(v90 + 120) = v81;
      sub_225EF73E8((v90 + 112), v90 + 192, v90 + 200, v90 + 208);
      *(v90 + 112) = sub_225EF7434;
      *(v90 + 120) = v82;
      sub_225EF73E8((v90 + 112), v90 + 192, v90 + 200, v90 + 208);
      *(v90 + 112) = sub_225EF71D0;
      *(v90 + 120) = v83;
      sub_225EF73E8((v90 + 112), v90 + 192, v90 + 200, v90 + 208);
      *(v90 + 112) = sub_225EF7434;
      *(v90 + 120) = v84;
      sub_225EF73E8((v90 + 112), v90 + 192, v90 + 200, v90 + 208);
      *(v90 + 112) = sub_225EF7434;
      *(v90 + 120) = v85;
      sub_225EF73E8((v90 + 112), v90 + 192, v90 + 200, v90 + 208);
      *(v90 + 112) = sub_225EF71D0;
      *(v90 + 120) = v86;
      sub_225EF73E8((v90 + 112), v90 + 192, v90 + 200, v90 + 208);
      _os_log_impl(&dword_225EEB000, oslog, v89, "Start polling for fetching visual context entities at %ldms cadence and total wait %ldms", buf, 0x16u);
      sub_225EF7AF4(v74, 0, v72);
      sub_225EF7AF4(v75, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    v65 = *(v90 + 320);
    v66 = *(v90 + 288);
    v69 = *(v90 + 272);
    v70 = *(v90 + 256);
    v64 = *(v90 + 296);
    v68 = *(v90 + 264);
    MEMORY[0x277D82BD8](oslog);
    v12 = *(v64 + 8);
    *(v90 + 360) = v12;
    *(v90 + 368) = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v65, v66);
    sub_22609A328();
    *(v90 + 184) = 20;
    sub_225EF81C4();
    v67 = sub_22609A618();
    sub_225FD8A44(v69, v67, v13);
    v14 = *(v68 + 8);
    *(v90 + 376) = v14;
    *(v90 + 384) = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v69, v70);
    *(v90 + 88) = 0;
    *(v90 + 96) = 0;
    *(v90 + 104) = 1;
    v71 = sub_225F3E9A8();
    sub_225F7E764();
    v15 = swift_task_alloc();
    *(v90 + 392) = v15;
    *v15 = *(v90 + 128);
    v15[1] = sub_225FD58F0;
    v16 = *(v90 + 280);
    v17 = *(v90 + 248);
    v18 = *(v90 + 232);

    MEMORY[0x282200488](v16, v90 + 88, v17, v18, v71);
  }

  else
  {
    v24 = *(v90 + 304);
    v37 = *(v90 + 288);
    v36 = *(v90 + 296);
    v25 = sub_225F7E9BC();
    (*(v36 + 16))(v24, v25, v37);
    v39 = sub_226098C48();
    v38 = sub_22609A078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v40 = sub_22609A4F8();
    if (os_log_type_enabled(v39, v38))
    {
      v32 = sub_22609A188();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v33 = sub_225EF5468(0, v31, v31);
      v34 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v90 + 152) = v32;
      *(v90 + 160) = v33;
      *(v90 + 168) = v34;
      sub_225EF54BC(0, (v90 + 152));
      sub_225EF54BC(0, (v90 + 152));
      *(v90 + 176) = v40;
      v35 = swift_task_alloc();
      v35[2] = v90 + 152;
      v35[3] = v90 + 160;
      v35[4] = v90 + 168;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v39, v38, "Abort polling fetching visual context entities", v32, 2u);
      sub_225EF7AF4(v33, 0, v31);
      sub_225EF7AF4(v34, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    v28 = *(v90 + 304);
    v29 = *(v90 + 288);
    v30 = *(v90 + 216);
    v27 = *(v90 + 296);
    MEMORY[0x277D82BD8](v39);
    (*(v27 + 8))(v28, v29);
    *v30 = 0;

    v26 = *(*(v90 + 128) + 8);

    v26();
  }
}

uint64_t sub_225FD8AB8()
{
  v0[7] = v0;
  v0[8] = 0;
  v1 = sub_226098C58();
  v0[17] = v1;
  v0[18] = *(v1 - 8);
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v2 = sub_22609A358();
  v0[21] = v2;
  v0[22] = *(v2 - 8);
  v0[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225FD8C18, 0, 0);
}

uint64_t sub_225FD8C18()
{
  *(v0 + 56) = v0;
  v1 = sub_225F7F580();
  v2 = v1[1];
  *(v0 + 40) = *v1;
  *(v0 + 48) = v2;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v8 = sub_225F3E9A8();
  sub_225F7E764();
  v3 = swift_task_alloc();
  v7[24] = v3;
  *v3 = v7[7];
  v3[1] = sub_225FD8D60;
  v4 = v7[23];
  v5 = v7[21];

  return sub_225F7E788(v0 + 40, v0 + 16, v4, v5, v8);
}

uint64_t sub_225FD8D60()
{
  v4 = *v1;
  v4[7] = *v1;
  v4[25] = v0;

  if (v0)
  {
    v2 = sub_225FD91EC;
  }

  else
  {
    (*(v4[22] + 8))(v4[23], v4[21]);
    v2 = sub_225FD8EF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225FD8EF8()
{
  v1 = *(v0 + 160);
  v13 = *(v0 + 144);
  v14 = *(v0 + 136);
  *(v0 + 56) = v0;
  v2 = sub_225F7E9BC();
  (*(v13 + 16))(v1, v2, v14);
  v16 = sub_226098C48();
  v15 = sub_22609A0A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v17 = sub_22609A4F8();
  if (!os_log_type_enabled(v16, v15))
  {

LABEL_6:
    v6 = *(v0 + 160);
    v7 = *(v0 + 136);
    v5 = *(v0 + 144);
    MEMORY[0x277D82BD8](v16);
    (*(v5 + 8))(v6, v7);
    abort();
  }

  v3 = *(v0 + 200);
  buf = sub_22609A188();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
  v10 = sub_225EF5468(0, v8, v8);
  v11 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
  *(v0 + 104) = buf;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  sub_225EF54BC(0, (v0 + 104));
  sub_225EF54BC(0, (v0 + 104));
  *(v0 + 128) = v17;
  v12 = swift_task_alloc();
  v12[2] = v0 + 104;
  v12[3] = v0 + 112;
  v12[4] = v0 + 120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
  sub_225EFE598();
  sub_226099C28();
  if (!v3)
  {

    _os_log_impl(&dword_225EEB000, v16, v15, "Crashing since we failed to cancel the previous recognition", buf, 2u);
    sub_225EF7AF4(v10, 0, v8);
    sub_225EF7AF4(v11, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();

    goto LABEL_6;
  }
}

uint64_t sub_225FD91EC()
{
  v19 = v0[25];
  v1 = v0[23];
  v2 = v0[22];
  v3 = v0[21];
  v4 = v0[19];
  v20 = v0[18];
  v21 = v0[17];
  v0[7] = v0;
  (*(v2 + 8))(v1, v3);
  v5 = v19;
  v0[8] = v19;
  v6 = sub_225F7E9BC();
  (*(v20 + 16))(v4, v6, v21);
  v23 = sub_226098C48();
  v22 = sub_22609A0A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v24 = sub_22609A4F8();
  if (os_log_type_enabled(v23, v22))
  {
    buf = sub_22609A188();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v15 = sub_225EF5468(0, v13, v13);
    v16 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v18 + 72) = buf;
    *(v18 + 80) = v15;
    *(v18 + 88) = v16;
    sub_225EF54BC(0, (v18 + 72));
    sub_225EF54BC(0, (v18 + 72));
    *(v18 + 96) = v24;
    v17 = swift_task_alloc();
    v17[2] = v18 + 72;
    v17[3] = v18 + 80;
    v17[4] = v18 + 88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, v23, v22, "Abort timeout to cancel the previous recognition", buf, 2u);
    sub_225EF7AF4(v15, 0, v13);
    sub_225EF7AF4(v16, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  v11 = *(v18 + 200);
  v12 = *(v18 + 152);
  v10 = *(v18 + 136);
  v9 = *(v18 + 144);
  MEMORY[0x277D82BD8](v23);
  (*(v9 + 8))(v12, v10);

  v7 = *(*(v18 + 56) + 8);

  return v7();
}

uint64_t sub_225FD95D4()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v2 = sub_226098C58();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[3] = v0;

  return MEMORY[0x2822009F8](sub_225FD96C8, 0, 0);
}

uint64_t sub_225FD96C8()
{
  v42 = v0;
  v1 = v0[7];
  v18 = v0[6];
  v19 = v0[5];
  v20 = v0[4];
  v0[2] = v0;
  v2 = sub_225F7E9BC();
  (*(v18 + 16))(v1, v2, v19);
  MEMORY[0x277D82BE0](v20);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v35 = sub_226098C48();
  v36 = sub_22609A0A8();
  v25 = swift_allocObject();
  *(v25 + 16) = 64;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_225F3E198;
  *(v22 + 24) = v21;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_225F3E1C8;
  *(v27 + 24) = v22;
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_225FFB60C;
  *(v23 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_225EF7B84;
  *(v30 + 24) = v23;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_225FFB63C;
  *(v24 + 24) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_225F2D374;
  *(v33 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v34 = v3;

  *v34 = sub_225EF7434;
  v34[1] = v25;

  v34[2] = sub_225EF7434;
  v34[3] = v26;

  v34[4] = sub_225F3E358;
  v34[5] = v27;

  v34[6] = sub_225EF7434;
  v34[7] = v28;

  v34[8] = sub_225EF7434;
  v34[9] = v29;

  v34[10] = sub_225EF7B90;
  v34[11] = v30;

  v34[12] = sub_225EF7434;
  v34[13] = v31;

  v34[14] = sub_225EF7434;
  v34[15] = v32;

  v34[16] = sub_225EF71D0;
  v34[17] = v33;
  sub_225EF5418();

  if (os_log_type_enabled(v35, v36))
  {
    buf = sub_22609A188();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v15 = sub_225EF5468(1, v13, v13);
    v16 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v37 = buf;
    v38 = v15;
    v39 = v16;
    sub_225EF54BC(2, &v37);
    sub_225EF54BC(3, &v37);
    v40 = sub_225EF7434;
    v41 = v25;
    sub_225EF73E8(&v40, &v37, &v38, &v39);
    v40 = sub_225EF7434;
    v41 = v26;
    sub_225EF73E8(&v40, &v37, &v38, &v39);
    v40 = sub_225F3E358;
    v41 = v27;
    sub_225EF73E8(&v40, &v37, &v38, &v39);
    v40 = sub_225EF7434;
    v41 = v28;
    sub_225EF73E8(&v40, &v37, &v38, &v39);
    v40 = sub_225EF7434;
    v41 = v29;
    sub_225EF73E8(&v40, &v37, &v38, &v39);
    v40 = sub_225EF7B90;
    v41 = v30;
    sub_225EF73E8(&v40, &v37, &v38, &v39);
    v40 = sub_225EF7434;
    v41 = v31;
    sub_225EF73E8(&v40, &v37, &v38, &v39);
    v40 = sub_225EF7434;
    v41 = v32;
    sub_225EF73E8(&v40, &v37, &v38, &v39);
    v40 = sub_225EF71D0;
    v41 = v33;
    sub_225EF73E8(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_225EEB000, v35, v36, "%@ %s:%ld queue task enqueued", buf, 0x20u);
    sub_225EF7AF4(v15, 1, v13);
    sub_225EF7AF4(v16, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v8 = v17[7];
  v9 = v17[5];
  v10 = v17[4];
  v7 = v17[6];
  MEMORY[0x277D82BD8](v35);
  (*(v7 + 8))(v8, v9);
  MEMORY[0x277D82BE0](v10);
  v11 = swift_task_alloc();
  v17[8] = v11;
  *(v11 + 16) = v10;
  v4 = swift_task_alloc();
  v17[9] = v4;
  *v4 = v17[2];
  v4[1] = sub_225FDA234;
  v5 = MEMORY[0x277D84F78] + 8;

  return sub_225FFB2A4(v12, 0, 0, sub_226020200, v11, v5);
}

uint64_t sub_225FDA234()
{
  v2 = *(*v0 + 32);
  *(*v0 + 16) = *v0;

  return MEMORY[0x2822009F8](sub_225FDA38C, 0, 0);
}

uint64_t sub_225FDA38C()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_225FDA418(uint64_t a1)
{
  v6 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v8 = v5 - v7;
  v17 = v2;
  v16 = v1;
  sub_226020208(v2, v5 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v10 = *(v9 - 8);
  v11 = v9 - 8;
  if ((*(v10 + 48))(v8, 1) == 1)
  {
    sub_225EF97AC(v8);
    v13 = 0uLL;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v15 = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
    (*(v10 + 32))(boxed_opaque_existential_0, v8, v9);
  }

  v5[0] = v5[2] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__audioEnqueuer;
  v5[1] = &v12;
  swift_beginAccess();
  sub_22601E698(&v13, v5[0]);
  swift_endAccess();
  return sub_225EF97AC(v6);
}

uint64_t sub_225FDA5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v165 = a6;
  v194 = a5;
  v164 = a4;
  v163 = a3;
  v167 = a2;
  v162 = a1;
  v146 = a6;
  v166 = 0;
  v222 = 0;
  v221 = 0;
  v220 = 0;
  v219 = 0;
  v218 = 0;
  v217 = 0;
  v216 = 0;
  v215 = 0;
  v214 = 0;
  v213 = 0;
  v212 = 0;
  v209 = 0;
  v203 = 0;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A50, &qword_2260A0A90);
  v147 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8);
  v148 = &v51 - v147;
  v149 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v166);
  v150 = &v51 - v149;
  v151 = sub_226098E68();
  v152 = *(v151 - 8);
  v153 = v152;
  v154 = *(v152 + 64);
  MEMORY[0x28223BE20](v166);
  v156 = (v154 + 15) & 0xFFFFFFFFFFFFFFF0;
  v155 = &v51 - v156;
  MEMORY[0x28223BE20](v8);
  v157 = &v51 - v156;
  v222 = &v51 - v156;
  v158 = sub_226099808();
  v159 = *(v158 - 8);
  v160 = v159;
  MEMORY[0x28223BE20](v166);
  v161 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_226098E98();
  v168 = v192;
  v184 = *(v192 - 8);
  v185 = v192 - 8;
  v181 = v184;
  v169 = v184;
  v170 = *(v184 + 64);
  MEMORY[0x28223BE20](v166);
  v172 = (v170 + 15) & 0xFFFFFFFFFFFFFFF0;
  v171 = &v51 - v172;
  MEMORY[0x28223BE20](v10);
  v173 = &v51 - v172;
  v221 = v11;
  v220 = v12;
  v219 = v13;
  v218 = v14;
  v217 = v15;
  v216 = v16;
  v215 = v6;
  v178 = sub_2260996F8();
  v177 = sub_22609A4F8();
  v174 = v17;
  v18 = *(v178 - 8);
  v176 = *(v18 + 104);
  v175 = v18 + 104;
  v176();
  (v176)(v174 + *(v175 - 32), *MEMORY[0x277CDCD98], v178);
  sub_225EF5418();
  v179 = v19;
  sub_22602033C(v20);
  v180 = sub_226099F08();
  v214 = v180;
  v191 = sub_22609A4F8();
  v188 = v21;
  v190 = *(v181 + 104);
  v189 = v181 + 104;
  v182 = v190;
  v183 = (v181 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v190();
  v186 = *(v184 + 72);
  (v190)(v188 + v186, *MEMORY[0x277CDCAB0], v192);
  v187 = 2 * v186;
  (v190)(v188 + 2 * v186, *MEMORY[0x277CDCAA8], v192);
  (v190)(v188 + v187 + v186, *MEMORY[0x277CDCAA0], v192);
  sub_225EF5418();
  v193 = v22;
  sub_2260203BC(v23);
  v213 = sub_226099F08();
  if (v194)
  {
    (v182)(v171, *MEMORY[0x277CDCAC0], v168);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A68, &qword_2260A0AA0);
    sub_226099F48();
    (*(v169 + 8))(v173, v168);
  }

  if (*sub_225F7F4BC())
  {
    sub_2260998E8();
    v132 = sub_226098FC8();
    v125 = sub_22609A4F8();
    v28 = v27;
    v29 = *MEMORY[0x277CDCB08];
    v30 = *(v132 - 8);
    v129 = *(v30 + 104);
    v128 = v30 + 104;
    (v129)(v28, v29);
    sub_225EF5418();
    v211[1] = v31;
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A58, &qword_2260A0A98);
    v134 = sub_22601F4EC(v32);
    v135 = sub_22602043C();
    v131 = sub_226099F38();
    v130 = sub_22609A4F8();
    v127 = v33;
    v129();
    v126 = *(v128 - 32);
    (v129)(v127 + v126, *MEMORY[0x277CDCB10], v132);
    (v129)(v127 + 2 * v126, *MEMORY[0x277CDCB20], v132);
    sub_225EF5418();
    v211[0] = v34;
    v136 = v211;
    v138 = MEMORY[0x22AA73010]();
    v137 = v138;
    sub_225EFE6E8(v136);
    sub_2260998E8();
    v212 = v138;
    v145 = v137;
  }

  else
  {
    sub_2260998E8();
    v140 = sub_226098FC8();
    v139 = sub_22609A4F8();
    (*(*(v140 - 8) + 104))(v24, *MEMORY[0x277CDCB08]);
    sub_225EF5418();
    v195 = v25;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A58, &qword_2260A0A98);
    v142 = sub_22601F4EC(v26);
    sub_22602043C();
    v144 = sub_226099F38();
    v143 = v144;
    sub_2260998E8();
    v212 = v144;
    v145 = v143;
  }

  v102 = v145;
  sub_2260998E8();
  v118 = 0;
  v110 = sub_226098FC8();
  v116 = 1;
  v103 = sub_22609A4F8();
  v36 = v35;
  v37 = *MEMORY[0x277CDCB00];
  v38 = *(v110 - 8);
  v107 = *(v38 + 104);
  v106 = v38 + 104;
  (v107)(v36, v37);
  sub_225EF5418();
  v210[1] = v39;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A58, &qword_2260A0A98);
  v112 = sub_22601F4EC(v40);
  v113 = sub_22602043C();
  v109 = sub_226099F38();
  v108 = sub_22609A4F8();
  v105 = v41;
  v107();
  v104 = *(v106 - 32);
  (v107)(v105 + v104, *MEMORY[0x277CDCB10], v110);
  (v107)(v105 + 2 * v104, *MEMORY[0x277CDCB20], v110);
  sub_225EF5418();
  v210[0] = v42;
  v114 = v210;
  v117 = MEMORY[0x22AA73010]();
  v115 = v117;
  sub_225EFE6E8(v114);
  v209 = v117;
  v207 = v118;
  v208 = v118;
  sub_226099AA8();
  v121 = v43;
  v120 = sub_2260999F8();
  v119 = *MEMORY[0x277CEF5E8];
  v44 = v119;
  v122 = _AFPreferencesValueForKeyWithContext();

  v123 = v122;
  v124 = &v206;
  sub_22609A238();
  if (swift_dynamicCast())
  {
    v100 = v204;
    v101 = v205;
  }

  else
  {
    v100 = 0;
    v101 = 0;
  }

  v98 = v101;
  v99 = v100;
  if (v101)
  {
    v96 = v99;
    v97 = v98;
    v95 = v98;
    v94 = v99;
    v196 = v99;
    v197 = v98;
    swift_unknownObjectRelease();
    sub_2260998E8();
    v207 = v94;
    v208 = v95;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v203 = 0;
  if ([objc_opt_self() cooldownDisabledForDevice])
  {
    v93 = 1;
  }

  else
  {
    v93 = v146;
  }

  v90 = *(v160 + 16);
  v91 = (v160 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v90(v161, v167, v158);
  v92 = (*(v160 + 88))(v161, v158);
  if (v92 == *MEMORY[0x277CDCE50] || v92 == *MEMORY[0x277CDCE28] || v92 == *MEMORY[0x277CDCE20])
  {
    v200 = 0;
    v201 = 0;
  }

  else
  {
    v200 = sub_226098E28();
    v201 = v45;
    (*(v160 + 8))(v161, v158);
  }

  v57 = v200;
  v58 = v201;
  sub_2260998E8();
  v202[0] = v57;
  v202[1] = v58;
  v52 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64);
  v65 = &v51;
  MEMORY[0x28223BE20](&v51);
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = &v51 - v53;
  v66 = 0;
  v46 = *(*(sub_226098948() - 8) + 56);
  v82 = 1;
  v46(v63, 1);
  v56 = sub_226098E58();
  v64 = &v51;
  MEMORY[0x28223BE20](&v51);
  v59 = &v51 - v53;
  sub_226098E48();
  v60 = sub_226098E38();
  v61 = sub_226098E18();
  v62 = v207;
  v55 = v208;
  sub_2260998E8();
  v54 = sub_226098E08();
  sub_225F49850();
  v81 = 0;
  sub_226098DF8();
  (*(v153 + 32))(v157, v155, v151);
  v70 = sub_226099078();
  v73 = sub_226098AB8();
  v67 = *(v73 - 8);
  v68 = v67;
  v72 = *(v67 + 64);
  v71 = &v51;
  v47 = MEMORY[0x28223BE20](&v51);
  v75 = (v72 + 15) & 0xFFFFFFFFFFFFFFF0;
  v69 = &v51 - v75;
  v74 = *(v68 + 16);
  v76 = v68 + 16;
  v74(v47);
  v90(v150, v167, v158);
  v78 = *(v160 + 56);
  v77 = v160 + 56;
  v78(v150, v81, v82, v158);
  v80 = *(v153 + 16);
  v79 = v153 + 16;
  v80(v148, v157, v151);
  v84 = *(v153 + 56);
  v83 = v153 + 56;
  v84(v148, v81, v82, v151);
  v86 = v213;
  sub_2260998E8();
  sub_2260998E8();
  sub_2260998E8();
  v88 = sub_226099058();
  v199 = v88;
  v87 = &v51;
  v48 = MEMORY[0x28223BE20](&v51);
  v85 = &v51 - v75;
  v49(v48);
  v90(v150, v167, v158);
  v78(v150, v81, v82, v158);
  v80(v148, v157, v151);
  v84(v148, v81, v82, v151);
  sub_2260998E8();
  sub_2260998E8();
  v89 = sub_226099058();
  v198 = v89;
  (*(v153 + 8))(v157, v151);
  sub_225EFE6BC(v202);
  sub_225EFE6BC(&v207);

  sub_225EFE6E8(&v212);
  sub_225EFE6E8(&v213);

  return v88;
}

uint64_t sub_225FDB7E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  v4 = "Fatal error";
  v5 = "Unexpectedly found nil while unwrapping an Optional value";
  v6 = "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift";
  v14 = 0;
  v15 = 0;
  v8 = *a1;
  v7 = a1[1];
  v14 = v8;
  v15 = v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v10 = &v3 - v9;
  sub_226098938();
  v11 = sub_226098948();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  if ((*(v12 + 48))(v10, 1) == 1)
  {
    sub_22609A3B8(v4, 11, 2, v5, 57, 2, v6, 62, 2, 1011, 0);
    __break(1u);
  }

  return (*(v12 + 32))(v3, v10, v11);
}

void sub_225FDB998(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6 = a1[1];
  sub_22609A4F8();
  v5 = v2;
  sub_2260998E8();
  *v5 = v4;
  v5[1] = v6;
  sub_225EF5418();
  *a2 = v3;
}

uint64_t sub_225FDBADC()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioFormat);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDBB4C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioFormat);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_225FDBBE4()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDBC48(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_225FDBCB4()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDBD18(double a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_225FDBD84()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDBDE8(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_225FDBE54()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioPackets);
  swift_beginAccess();
  v3 = *v2;
  sub_2260998E8();
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDBEBC(uint64_t a1)
{
  sub_2260998E8();
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioPackets);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_225FDBF40()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedRequestEagerResultData);
  swift_beginAccess();
  v3 = *v2;
  sub_2260998E8();
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDBFA8(uint64_t a1)
{
  sub_2260998E8();
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedRequestEagerResultData);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_225FDC02C()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioEnded);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_225FDC094(char a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioEnded);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_225FDC108()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioDurationMs);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDC16C(double a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioDurationMs);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_225FDC1D8()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDC23C(double a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_225FDC2A8()
{
  *(v1 + 488) = v0;
  *(v1 + 392) = v1;
  *(v1 + 400) = 0;
  *(v1 + 280) = 0;
  *(v1 + 288) = 0;
  *(v1 + 296) = 0;
  *(v1 + 304) = 0;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  *(v1 + 368) = 0;
  *(v1 + 312) = 0;
  *(v1 + 320) = 0;
  *(v1 + 424) = 0;
  *(v1 + 328) = 0;
  *(v1 + 336) = 0;
  *(v1 + 448) = 0;
  *(v1 + 456) = 0;
  *(v1 + 464) = 0;
  *(v1 + 400) = v0;
  return MEMORY[0x2822009F8](sub_225FDC324, 0, 0);
}

uint64_t sub_225FDC324()
{
  v1 = v0[61];
  v0[49] = v0;
  v41 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedRequestEagerResultData);
  swift_beginAccess();
  v42 = *v41;
  sub_2260998E8();
  swift_endAccess();
  v0[51] = v42;
  v0[62] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A70, &qword_2260A0AA8);
  sub_2260204C4();
  v43 = sub_22609A008();

  if ((v43 & 1) == 0)
  {
    v37 = *(v40 + 488);
    *(v40 + 424) = sub_226099848();
    v38 = (v37 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedRequestEagerResultData);
    swift_beginAccess();
    v39 = *v38;
    sub_2260998E8();
    swift_endAccess();
    *(v40 + 432) = v39;
    sub_22609A028();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A98, &qword_2260A0AC8);
      sub_22609A388();
      v36 = *(v40 + 376);
      if (*(v40 + 384))
      {
        break;
      }

      v2 = *(v40 + 488);
      *(v40 + 456) = v36;
      v34 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
      swift_beginAccess();
      v35 = *v34;
      swift_endAccess();
      if ((v35 & 0x8000000000000000) != 0)
      {
        return sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
      }

      if (!v35)
      {
        return sub_22609A3B8("Fatal error", 11, 2, "Division by zero", 16, 2, "Swift/IntegerTypes.swift", 24, 2, 8046, 0);
      }

      v30 = *(v40 + 488);
      *(v40 + 472) = v36 / 2 / v35;
      sub_2260205D4();
      sub_226099EC8();
      v33 = v4 * *sub_225F7F6FC();
      *(v40 + 464) = v33;
      v31 = (v30 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
      swift_beginAccess();
      v32 = *v31;
      swift_endAccess();
      *(v40 + 464) = v33 - v32;
      if (v33 - v32 >= 0.0)
      {
        *(v40 + 480) = (v33 - v32) / *sub_225F7F6FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786AA0, &qword_2260A0AD0);
        sub_226099CE8();
      }
    }

    sub_225EFE6E8((v40 + 328));
    v25 = *(v40 + 424);
    sub_2260998E8();
    *(v40 + 440) = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786AA0, &qword_2260A0AD0);
    v27 = type metadata accessor for CMTime(0);
    v5 = sub_225F2DEE0();
    v29 = sub_225F15970(sub_225FF5958, 0, v26, v27, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v28);
    *(v40 + 504) = v29;
    v23 = *(v40 + 488);
    sub_225EFE6E8((v40 + 440));
    *(v40 + 448) = v29;
    v24 = (v23 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
    swift_beginAccess();
    if (*v24)
    {
      *(v40 + 512) = *v24;

      swift_endAccess();
      v6 = swift_task_alloc();
      *(v40 + 520) = v6;
      *v6 = *(v40 + 392);
      v6[1] = sub_225FDCEF8;

      return MEMORY[0x28212BDD8](v29);
    }

    swift_endAccess();

    sub_225EFE6E8((v40 + 424));
  }

  v21 = (*(v40 + 488) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioPackets);
  swift_beginAccess();
  v22 = *v21;
  sub_2260998E8();
  swift_endAccess();
  *(v40 + 416) = v22;
  *(v40 + 536) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A80, &qword_2260A0AB0);
  sub_22602054C();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A90, &qword_2260A0AB8);
    sub_22609A388();
    v15 = *(v40 + 16);
    *(v40 + 544) = v15;
    v16 = *(v40 + 24);
    *(v40 + 552) = v16;
    v17 = *(v40 + 32);
    v18 = *(v40 + 40);
    v19 = *(v40 + 48);
    v20 = *(v40 + 56);
    if ((v16 & 0xF000000000000000) == 0xF000000000000000)
    {
      break;
    }

    *(v40 + 296) = v15;
    *(v40 + 304) = v16;
    *(v40 + 344) = v17;
    *(v40 + 352) = v18 & 1;
    *(v40 + 360) = v19;
    *(v40 + 368) = v20 & 1;
    v7 = sub_225EF6A9C(v15, v16);
    v13 = v7;
    v14 = v8;
    *(v40 + 560) = v7;
    *(v40 + 568) = v8;
    if ((v8 & 0xF000000000000000) != 0xF000000000000000)
    {
      *(v40 + 312) = v7;
      *(v40 + 320) = v8;
      v9 = swift_task_alloc();
      *(v40 + 576) = v9;
      *v9 = *(v40 + 392);
      v9[1] = sub_225FDD4E4;

      return sub_225EF6EC8(v13, v14, v17, v18 & 1, v19, v20 & 1);
    }

    sub_225EF5990(*(v40 + 544), *(v40 + 552));
  }

  v12 = *(v40 + 488);
  sub_225EFE6E8((v40 + 280));
  v11 = (v12 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength);
  swift_beginAccess();
  *v11 = 0;
  swift_endAccess();
  swift_beginAccess();
  sub_225F7B3F4();
  sub_226099CF8();
  swift_endAccess();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E90, &qword_2260A0860);
  sub_225F7B3F4();
  sub_226099CF8();
  swift_endAccess();
  v10 = *(*(v40 + 392) + 8);

  return v10();
}

uint64_t sub_225FDCEF8()
{
  v4 = *v1;
  *(v4 + 392) = *v1;
  *(v4 + 528) = v0;

  if (v0)
  {
    v2 = sub_225FDD9CC;
  }

  else
  {

    v2 = sub_225FDD078;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225FDD078()
{
  v0[49] = v0;

  sub_225EFE6E8(v0 + 53);
  v17 = (v0[61] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioPackets);
  swift_beginAccess();
  v18 = *v17;
  sub_2260998E8();
  swift_endAccess();
  v0[52] = v18;
  v0[67] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A80, &qword_2260A0AB0);
  sub_22602054C();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A90, &qword_2260A0AB8);
    sub_22609A388();
    v10 = *(v16 + 16);
    *(v16 + 544) = v10;
    v11 = *(v16 + 24);
    *(v16 + 552) = v11;
    v12 = *(v16 + 32);
    v13 = *(v16 + 40);
    v14 = *(v16 + 48);
    v15 = *(v16 + 56);
    if ((v11 & 0xF000000000000000) == 0xF000000000000000)
    {
      break;
    }

    *(v16 + 296) = v10;
    *(v16 + 304) = v11;
    *(v16 + 344) = v12;
    *(v16 + 352) = v13 & 1;
    *(v16 + 360) = v14;
    *(v16 + 368) = v15 & 1;
    v1 = sub_225EF6A9C(v10, v11);
    v8 = v1;
    v9 = v2;
    *(v16 + 560) = v1;
    *(v16 + 568) = v2;
    if ((v2 & 0xF000000000000000) != 0xF000000000000000)
    {
      *(v16 + 312) = v1;
      *(v16 + 320) = v2;
      v3 = swift_task_alloc();
      *(v16 + 576) = v3;
      *v3 = *(v16 + 392);
      v3[1] = sub_225FDD4E4;

      return sub_225EF6EC8(v8, v9, v12, v13 & 1, v14, v15 & 1);
    }

    sub_225EF5990(*(v16 + 544), *(v16 + 552));
  }

  v7 = *(v16 + 488);
  sub_225EFE6E8((v16 + 280));
  v6 = (v7 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength);
  swift_beginAccess();
  *v6 = 0;
  swift_endAccess();
  swift_beginAccess();
  sub_225F7B3F4();
  sub_226099CF8();
  swift_endAccess();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E90, &qword_2260A0860);
  sub_225F7B3F4();
  sub_226099CF8();
  swift_endAccess();
  v5 = *(*(v16 + 392) + 8);

  return v5();
}

uint64_t sub_225FDD4E4()
{
  *(*v0 + 392) = *v0;

  return MEMORY[0x2822009F8](sub_225FDD5FC, 0, 0);
}

uint64_t sub_225FDD5FC()
{
  v1 = v0[71];
  v2 = v0[70];
  v0[49] = v0;
  sub_225EF5990(v2, v1);
  do
  {
    sub_225EF5990(*(v18 + 544), *(v18 + 552));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A90, &qword_2260A0AB8);
    sub_22609A388();
    v14 = *(v18 + 16);
    *(v18 + 544) = v14;
    v15 = *(v18 + 24);
    *(v18 + 552) = v15;
    v10 = *(v18 + 32);
    v11 = *(v18 + 40);
    v12 = *(v18 + 48);
    v13 = *(v18 + 56);
    if ((v15 & 0xF000000000000000) == 0xF000000000000000)
    {
      v9 = *(v18 + 488);
      sub_225EFE6E8((v18 + 280));
      v8 = (v9 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength);
      swift_beginAccess();
      *v8 = 0;
      swift_endAccess();
      swift_beginAccess();
      sub_225F7B3F4();
      sub_226099CF8();
      swift_endAccess();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E90, &qword_2260A0860);
      sub_225F7B3F4();
      sub_226099CF8();
      swift_endAccess();
      v7 = *(*(v18 + 392) + 8);

      return v7();
    }

    *(v18 + 296) = v14;
    *(v18 + 304) = v15;
    *(v18 + 344) = v10;
    *(v18 + 352) = v11 & 1;
    *(v18 + 360) = v12;
    *(v18 + 368) = v13 & 1;
    v3 = sub_225EF6A9C(v14, v15);
    v16 = v3;
    v17 = v4;
    *(v18 + 560) = v3;
    *(v18 + 568) = v4;
  }

  while ((v4 & 0xF000000000000000) == 0xF000000000000000);
  *(v18 + 312) = v3;
  *(v18 + 320) = v4;
  v5 = swift_task_alloc();
  *(v18 + 576) = v5;
  *v5 = *(v18 + 392);
  v5[1] = sub_225FDD4E4;

  return sub_225EF6EC8(v16, v17, v10, v11 & 1, v12, v13 & 1);
}

uint64_t sub_225FDD9CC()
{
  *(v0 + 392) = v0;

  sub_225EFE6E8((v0 + 424));
  v1 = *(*(v3 + 392) + 8);

  return v1();
}

uint64_t sub_225FDDA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v55 = a6;
  v107 = a1;
  v108 = a2;
  v109 = a3;
  v119 = a4;
  v110 = a5;
  v56 = MEMORY[0x277CDCB48];
  v57 = MEMORY[0x277CDCCB0];
  v58 = &unk_2260A0B70;
  v59 = &unk_2260A0B80;
  v60 = &unk_2260A0B88;
  v61 = MEMORY[0x277CDCB60];
  v62 = &unk_2260A0B28;
  v63 = &unk_2260A0B38;
  v64 = &unk_2260A0B40;
  v65 = &unk_2260A0B50;
  v66 = &unk_2260A0B58;
  v67 = &unk_2260A0B60;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AB8, &qword_2260A0AD8);
  v69 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68);
  v70 = v27 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AC0, &qword_2260A0AE0);
  v72 = (*(*(v71 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v73 = v27 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AC8, &qword_2260A0AE8);
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74);
  v78 = v27 - v77;
  v133 = v27 - v77;
  v79 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v80 = v27 - v79;
  v132 = v27 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AD0, &qword_2260A0AF0);
  v82 = (*(*(v81 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81);
  v83 = v27 - v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AD8, &qword_2260A0AF8);
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v84);
  v88 = v27 - v87;
  v131 = v27 - v87;
  v89 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v90 = v27 - v89;
  v130 = v27 - v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AE0, &qword_2260A0B00);
  v92 = (*(*(v91 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v91);
  v93 = v27 - v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AE8, &qword_2260A0B08);
  v95 = *(v94 - 8);
  v96 = v94 - 8;
  v97 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v94);
  v98 = v27 - v97;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AF0, &qword_2260A0B10);
  v100 = *(v99 - 8);
  v101 = v99 - 8;
  v102 = (*(v100 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v99);
  v103 = v27 - v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AF8, &qword_2260A0B18);
  v105 = (*(*(v104 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v104);
  v106 = v27 - v105;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B00, &qword_2260A0B20);
  v112 = *(v111 - 8);
  v113 = v111 - 8;
  v115 = *(v112 + 64);
  v114 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v119);
  v116 = v27 - v114;
  v129 = v27 - v114;
  v117 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v118 = v27 - v117;
  v128 = v27 - v117;
  v127 = v12;
  v126 = v13;
  v125 = v14;
  v124 = v15;
  v123 = v16 & 1;
  v122 = v6;

  if (v119)
  {
    v54 = v119;
    v53 = v119;
    v121 = v119;

    if (v108)
    {
      v52 = v108;
      v51 = v108;
      v120 = v108;
      sub_226098FD8();
      sub_226099468();
      v37 = 1;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v39 = swift_getOpaqueTypeConformance2();
      sub_226098BB8();
      v41 = *(v95 + 8);
      v40 = v95 + 8;
      v41(v98, v94);
      v43 = *(v100 + 8);
      v42 = v100 + 8;
      v43(v103, v99);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B40, &qword_2260A0B78);
      v45 = sub_22602097C();
      v47 = 0;
      sub_226099EA8();
      sub_226098FD8();
      sub_226099468();
      sub_226098BB8();
      v41(v98, v94);
      v43(v103, v99);
      sub_226099EA8();
      sub_226020A04();
      sub_226098BB8();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B58, &qword_2260A0B90);
      v55[3] = v17;
      v18 = sub_226020A8C();
      v19 = v55;
      v55[4] = v18;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
      v48 = type metadata accessor for CombinedTranscriberOutput(0);
      sub_226020B14();
      sub_226099EA8();
      v50 = *(v112 + 8);
      v49 = v112 + 8;
      v50(v116, v111);
      v50(v118, v111);
    }
  }

  if (v110)
  {
    sub_226099008();
    v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B08, &qword_2260A0B30);
    v27[1] = swift_getOpaqueTypeConformance2();
    v27[3] = 0;
    sub_226099EA8();
    sub_226099008();
    sub_226099EA8();
    sub_22602064C();
    sub_226098BB8();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B18, &qword_2260A0B48);
    v55[3] = v24;
    v25 = sub_2260206D4();
    v26 = v55;
    v55[4] = v25;
    v27[2] = __swift_allocate_boxed_opaque_existential_0(v26);
    sub_22602075C();
    sub_226099EA8();
    v28 = *(v75 + 8);
    v27[4] = v75 + 8;
    v28(v78, v74);
    return (v28)(v80, v74);
  }

  else
  {
    sub_226098FD8();
    v31 = 0;
    v29 = sub_226098FA8();
    v30 = swift_getOpaqueTypeConformance2();
    v33 = 0;
    sub_226099EA8();
    sub_226098FD8();
    sub_226099EA8();
    sub_2260207E4();
    sub_226098BB8();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B38, &qword_2260A0B68);
    v55[3] = v21;
    v22 = sub_22602086C();
    v23 = v55;
    v55[4] = v22;
    v32 = __swift_allocate_boxed_opaque_existential_0(v23);
    v34 = type metadata accessor for CombinedTranscriberOutput(v31);
    sub_2260208F4();
    sub_226099EA8();
    v36 = *(v85 + 8);
    v35 = v85 + 8;
    v36(v88, v84);
    return (v36)(v90, v84);
  }
}

uint64_t sub_225FDEA3C(void *a1, const void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v28 = a2;
  v27 = a3;
  v37 = a4;
  v31 = a5;
  v21 = 0;
  v41 = &unk_2260A0BA0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v50 = a4;
  v39 = 0;
  v38 = sub_22609A198();
  v19 = *(v38 - 8);
  v29 = v19;
  v30 = *(v19 + 64);
  v20 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v35 = &v19 - v20;
  v22 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v40 = &v19 - v22;
  v49 = v6;
  v48 = v7;
  v47 = v8;
  v46 = v5;
  v23 = (v5 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
  v24 = &v45;
  swift_beginAccess();
  *v23 = 0;
  swift_endAccess();
  sub_225F7FA28();
  v9 = v25;
  v10 = sub_226099DA8();
  (*(*(v10 - 8) + 56))(v40, 0, 1);
  v32 = v44;
  sub_22601FE20(v26, v44);
  MEMORY[0x277D82BE0](v9);
  v33 = v43;
  sub_22601FE20(v27, v43);
  sub_225F317FC(v28, v35, v37, v38);
  v36 = (*(v29 + 80) + 136) & ~*(v29 + 80);
  v11 = swift_allocObject();
  v12 = v31;
  v13 = v32;
  v14 = v37;
  v42 = v11;
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v14;
  v11[5] = v12;
  v34 = 40;
  memcpy(v11 + 6, v13, 0x28uLL);
  v15 = v42;
  v16 = v33;
  v17 = v34;
  v42[11] = v9;
  memcpy((v15 + 96), v16, v17);
  sub_226020B9C(v35, v42 + v36, v37, v38);
  return sub_225F38F2C(v39, v39, v40, v41, v42, MEMORY[0x277D84F78] + 8);
}

uint64_t CoreEmbeddedSpeechAnalyzer.addAudioPacket(_:)(uint64_t a1, unint64_t a2)
{
  sub_225EF5A38(a1, a2);
  v6 = sub_226098968();
  sub_225EF5990(a1, a2);
  [v5 addAudioPacket:v6 packetRecordedTime:0 packetReadyUpstreamTime:?];
  return MEMORY[0x277D82BD8](v6);
}

Swift::Void __swiftcall CoreEmbeddedSpeechAnalyzer.pauseRecognition()()
{
  v71 = sub_225F3E198;
  v73 = sub_225F3E1C8;
  v75 = sub_225FDFCFC;
  v76 = sub_225EF7B84;
  v80 = sub_225FDFD2C;
  v83 = sub_225F2D374;
  v85 = sub_225EF7434;
  v87 = sub_225EF7434;
  v89 = sub_225F3E358;
  v91 = sub_225EF7434;
  v93 = sub_225EF7434;
  v95 = sub_225EF7B90;
  v97 = sub_225EF7434;
  v99 = sub_225EF7434;
  v102 = sub_225EF71D0;
  v53 = &unk_2260A0BC0;
  v113 = 0;
  v54 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v59 = &v35 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v64 = &v35 - v63;
  v69 = sub_226098C58();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v65 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69);
  v0 = &v35 - v65;
  v66 = &v35 - v65;
  v113 = v1;
  v2 = sub_225F7E9BC();
  (*(v67 + 16))(v0, v2, v69);
  MEMORY[0x277D82BE0](v70);
  v82 = 7;
  v72 = swift_allocObject();
  *(v72 + 16) = v70;
  v106 = sub_226098C48();
  v107 = sub_22609A0A8();
  v78 = 17;
  v86 = swift_allocObject();
  *(v86 + 16) = 64;
  v88 = swift_allocObject();
  v79 = 8;
  *(v88 + 16) = 8;
  v81 = 32;
  v3 = swift_allocObject();
  v4 = v72;
  v74 = v3;
  *(v3 + 16) = v71;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v74;
  v90 = v5;
  *(v5 + 16) = v73;
  *(v5 + 24) = v6;
  v92 = swift_allocObject();
  *(v92 + 16) = 32;
  v94 = swift_allocObject();
  *(v94 + 16) = v79;
  v7 = swift_allocObject();
  v77 = v7;
  *(v7 + 16) = v75;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  v9 = v77;
  v96 = v8;
  *(v8 + 16) = v76;
  *(v8 + 24) = v9;
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  v100 = swift_allocObject();
  *(v100 + 16) = v79;
  v10 = swift_allocObject();
  v84 = v10;
  *(v10 + 16) = v80;
  *(v10 + 24) = 0;
  v11 = swift_allocObject();
  v12 = v84;
  v103 = v11;
  *(v11 + 16) = v83;
  *(v11 + 24) = v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v101 = sub_22609A4F8();
  v104 = v13;

  v14 = v86;
  v15 = v104;
  *v104 = v85;
  v15[1] = v14;

  v16 = v88;
  v17 = v104;
  v104[2] = v87;
  v17[3] = v16;

  v18 = v90;
  v19 = v104;
  v104[4] = v89;
  v19[5] = v18;

  v20 = v92;
  v21 = v104;
  v104[6] = v91;
  v21[7] = v20;

  v22 = v94;
  v23 = v104;
  v104[8] = v93;
  v23[9] = v22;

  v24 = v96;
  v25 = v104;
  v104[10] = v95;
  v25[11] = v24;

  v26 = v98;
  v27 = v104;
  v104[12] = v97;
  v27[13] = v26;

  v28 = v100;
  v29 = v104;
  v104[14] = v99;
  v29[15] = v28;

  v30 = v103;
  v31 = v104;
  v104[16] = v102;
  v31[17] = v30;
  sub_225EF5418();

  if (os_log_type_enabled(v106, v107))
  {
    v32 = v54;
    v46 = sub_22609A188();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v45 = 1;
    v47 = sub_225EF5468(1, v44, v44);
    v48 = sub_225EF5468(v45, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v49 = v112;
    v112[0] = v46;
    v50 = &v111;
    v111 = v47;
    v51 = &v110;
    v110 = v48;
    sub_225EF54BC(2, v112);
    sub_225EF54BC(3, v49);
    v108 = v85;
    v109 = v86;
    sub_225EF73E8(&v108, v49, v50, v51);
    v52 = v32;
    if (v32)
    {

      __break(1u);
    }

    else
    {
      v108 = v87;
      v109 = v88;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v43 = 0;
      v108 = v89;
      v109 = v90;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v42 = 0;
      v108 = v91;
      v109 = v92;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v41 = 0;
      v108 = v93;
      v109 = v94;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v40 = 0;
      v108 = v95;
      v109 = v96;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v39 = 0;
      v108 = v97;
      v109 = v98;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v38 = 0;
      v108 = v99;
      v109 = v100;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v37 = 0;
      v108 = v102;
      v109 = v103;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      _os_log_impl(&dword_225EEB000, v106, v107, "%@ %s:%ld queue task enqueued", v46, 0x20u);
      v36 = 1;
      sub_225EF7AF4(v47, 1, v44);
      sub_225EF7AF4(v48, v36, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v106);
  (*(v67 + 8))(v66, v69);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v70);
  v33 = swift_allocObject();
  v34 = v53;
  *(v33 + 16) = v70;
  v112[1] = v34;
  v112[2] = v33;
  sub_226099DD8();
  (*(v56 + 8))(v59, v55);
  (*(v61 + 8))(v64, v60);
}

uint64_t sub_225FDFD38(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v2[5] = v2;
  v2[6] = 0;
  v2[7] = 0;
  v3 = sub_226098C58();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[6] = a2;

  return MEMORY[0x2822009F8](sub_225FDFE4C, 0, 0);
}

uint64_t sub_225FDFE4C()
{
  v43 = v0;
  v1 = v0[12];
  v19 = v0[10];
  v20 = v0[9];
  v21 = v0[8];
  v0[5] = v0;
  v2 = sub_225F7E9BC();
  v3 = *(v19 + 16);
  v0[13] = v3;
  v0[14] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v20);
  MEMORY[0x277D82BE0](v21);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v36 = sub_226098C48();
  v37 = sub_22609A0A8();
  v26 = swift_allocObject();
  *(v26 + 16) = 64;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_225F3E198;
  *(v23 + 24) = v22;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_225F3E1C8;
  *(v28 + 24) = v23;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_225FDFCFC;
  *(v24 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_225EF7B84;
  *(v31 + 24) = v24;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_225FE1324;
  *(v25 + 24) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_225F2D374;
  *(v34 + 24) = v25;
  v0[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v35 = v4;

  *v35 = sub_225EF7434;
  v35[1] = v26;

  v35[2] = sub_225EF7434;
  v35[3] = v27;

  v35[4] = sub_225F3E358;
  v35[5] = v28;

  v35[6] = sub_225EF7434;
  v35[7] = v29;

  v35[8] = sub_225EF7434;
  v35[9] = v30;

  v35[10] = sub_225EF7B90;
  v35[11] = v31;

  v35[12] = sub_225EF7434;
  v35[13] = v32;

  v35[14] = sub_225EF7434;
  v35[15] = v33;

  v35[16] = sub_225EF71D0;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_22609A188();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v16 = sub_225EF5468(1, v14, v14);
    v17 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v38 = buf;
    v39 = v16;
    v40 = v17;
    sub_225EF54BC(2, &v38);
    sub_225EF54BC(3, &v38);
    v41 = sub_225EF7434;
    v42 = v26;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225EF7434;
    v42 = v27;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225F3E358;
    v42 = v28;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225EF7434;
    v42 = v29;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225EF7434;
    v42 = v30;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225EF7B90;
    v42 = v31;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225EF7434;
    v42 = v32;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225EF7434;
    v42 = v33;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225EF71D0;
    v42 = v34;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_225EEB000, v36, v37, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v16, 1, v14);
    sub_225EF7AF4(v17, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v10 = v18[12];
  v11 = v18[9];
  v12 = v18[8];
  v9 = v18[10];
  MEMORY[0x277D82BD8](v36);
  v5 = *(v9 + 8);
  v18[16] = v5;
  v18[17] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v10, v11);
  v13 = (v12 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  if (*v13)
  {
    v18[18] = *v13;

    swift_endAccess();
    v8 = swift_task_alloc();
    v18[19] = v8;
    *v8 = v18[5];
    v8[1] = sub_225FE0A80;

    return MEMORY[0x28212BDE0]();
  }

  else
  {
    swift_endAccess();
    sub_225FE1330(v18[8]);

    v6 = *(v18[5] + 8);

    return v6();
  }
}

uint64_t sub_225FE0A80()
{
  v4 = *v1;
  *(v4 + 40) = *v1;
  *(v4 + 160) = v0;

  if (v0)
  {
    v2 = sub_225FE0CB4;
  }

  else
  {

    v2 = sub_225FE0BFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225FE0BFC()
{
  *(v0 + 40) = v0;
  sub_225FE1330(*(v0 + 64));

  v1 = *(*(v0 + 40) + 8);

  return v1();
}

uint64_t sub_225FE0CB4()
{
  v34 = v0;
  v19 = v0[20];
  v18 = v0[13];
  v1 = v0[11];
  v17 = v0[9];
  v0[5] = v0;

  v2 = v19;
  v0[7] = v19;
  v3 = sub_225F7E9BC();
  v18(v1, v3, v17);
  v4 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  sub_225F3EAE8();

  v27 = sub_226098C48();
  v28 = sub_22609A098();
  v23 = swift_allocObject();
  *(v23 + 16) = 64;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_225F3EA68;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_225F3EA70;
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_225F3E1C8;
  *(v25 + 24) = v22;
  sub_22609A4F8();
  v26 = v5;

  *v26 = sub_225EF7434;
  v26[1] = v23;

  v26[2] = sub_225EF7434;
  v26[3] = v24;

  v26[4] = sub_225F3E358;
  v26[5] = v25;
  sub_225EF5418();

  if (os_log_type_enabled(v27, v28))
  {
    buf = sub_22609A188();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v14 = sub_225EF5468(1, v12, v12);
    v15 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v14;
    v31 = v15;
    sub_225EF54BC(2, &v29);
    sub_225EF54BC(1, &v29);
    v32 = sub_225EF7434;
    v33 = v23;
    sub_225EF73E8(&v32, &v29, &v30, &v31);
    v32 = sub_225EF7434;
    v33 = v24;
    sub_225EF73E8(&v32, &v29, &v30, &v31);
    v32 = sub_225F3E358;
    v33 = v25;
    sub_225EF73E8(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_225EEB000, v27, v28, "Pausing recognition failed with the error: %@", buf, 0xCu);
    sub_225EF7AF4(v14, 1, v12);
    sub_225EF7AF4(v15, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v11 = v16[20];
  v10 = v16[16];
  v8 = v16[11];
  v9 = v16[9];
  MEMORY[0x277D82BD8](v27);
  v10(v8, v9);

  sub_225FE1330(v16[8]);

  v6 = *(v16[5] + 8);

  return v6();
}

uint64_t sub_225FE1330(uint64_t a1)
{
  v51 = a1;
  v52 = sub_225F3E198;
  v54 = sub_225F3E1C8;
  v56 = sub_225FDFCFC;
  v57 = sub_225EF7B84;
  v61 = sub_22601D474;
  v64 = sub_225F2D374;
  v66 = sub_225EF7434;
  v68 = sub_225EF7434;
  v70 = sub_225F3E358;
  v72 = sub_225EF7434;
  v74 = sub_225EF7434;
  v76 = sub_225EF7B90;
  v78 = sub_225EF7434;
  v80 = sub_225EF7434;
  v83 = sub_225EF71D0;
  v94 = 0;
  v45 = 0;
  v50 = sub_226098C58();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v1 = v35 - v46;
  v47 = v35 - v46;
  v94 = v2;
  v3 = sub_225F7E9BC();
  (*(v48 + 16))(v1, v3, v50);
  MEMORY[0x277D82BE0](v51);
  v63 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v87 = sub_226098C48();
  v88 = sub_22609A0A8();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 64;
  v69 = swift_allocObject();
  v60 = 8;
  *(v69 + 16) = 8;
  v62 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v52;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v71 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = v60;
  v8 = swift_allocObject();
  v58 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v58;
  v77 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v60;
  v11 = swift_allocObject();
  v65 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v65;
  v84 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v82 = sub_22609A4F8();
  v85 = v14;

  v15 = v67;
  v16 = v85;
  *v85 = v66;
  v16[1] = v15;

  v17 = v69;
  v18 = v85;
  v85[2] = v68;
  v18[3] = v17;

  v19 = v71;
  v20 = v85;
  v85[4] = v70;
  v20[5] = v19;

  v21 = v73;
  v22 = v85;
  v85[6] = v72;
  v22[7] = v21;

  v23 = v75;
  v24 = v85;
  v85[8] = v74;
  v24[9] = v23;

  v25 = v77;
  v26 = v85;
  v85[10] = v76;
  v26[11] = v25;

  v27 = v79;
  v28 = v85;
  v85[12] = v78;
  v28[13] = v27;

  v29 = v81;
  v30 = v85;
  v85[14] = v80;
  v30[15] = v29;

  v31 = v84;
  v32 = v85;
  v85[16] = v83;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v87, v88))
  {
    v33 = v45;
    v38 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = 1;
    v39 = sub_225EF5468(1, v36, v36);
    v40 = sub_225EF5468(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v93;
    v93 = v38;
    v42 = &v92;
    v92 = v39;
    v43 = &v91;
    v91 = v40;
    sub_225EF54BC(2, &v93);
    sub_225EF54BC(3, v41);
    v89 = v66;
    v90 = v67;
    sub_225EF73E8(&v89, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v89 = v68;
      v90 = v69;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[7] = 0;
      v89 = v70;
      v90 = v71;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[6] = 0;
      v89 = v72;
      v90 = v73;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[5] = 0;
      v89 = v74;
      v90 = v75;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[4] = 0;
      v89 = v76;
      v90 = v77;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[3] = 0;
      v89 = v78;
      v90 = v79;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[2] = 0;
      v89 = v80;
      v90 = v81;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[1] = 0;
      v89 = v83;
      v90 = v84;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_225EEB000, v87, v88, "%@ %s:%ld queue task complete", v38, 0x20u);
      v35[0] = 1;
      sub_225EF7AF4(v39, 1, v36);
      sub_225EF7AF4(v40, v35[0], MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v87);
  return (*(v48 + 8))(v47, v50);
}

Swift::Void __swiftcall CoreEmbeddedSpeechAnalyzer.resumeRecognition(withPrefixText:postfixText:selectedText:)(Swift::String withPrefixText, Swift::String postfixText, Swift::String selectedText)
{
  countAndFlagsBits = withPrefixText._countAndFlagsBits;
  object = withPrefixText._object;
  v80 = postfixText;
  v81 = selectedText;
  v90 = sub_225F3E198;
  v92 = sub_225F3E1C8;
  v94 = sub_225FE2EF0;
  v95 = sub_225EF7B84;
  v99 = sub_225FE2F20;
  v102 = sub_225F2D374;
  v104 = sub_225EF7434;
  v106 = sub_225EF7434;
  v108 = sub_225F3E358;
  v110 = sub_225EF7434;
  v112 = sub_225EF7434;
  v114 = sub_225EF7B90;
  v116 = sub_225EF7434;
  v118 = sub_225EF7434;
  v121 = sub_225EF71D0;
  v68 = &unk_2260A0BD0;
  v137 = 0;
  v138 = 0;
  v135 = 0;
  v136 = 0;
  v133 = 0;
  v134 = 0;
  v132 = 0;
  v69 = 0;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v70);
  v74 = &v50 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v75);
  v79 = &v50 - v78;
  v88 = sub_226098C58();
  v86 = *(v88 - 8);
  v87 = v88 - 8;
  v84 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](countAndFlagsBits);
  v3 = &v50 - v84;
  v85 = &v50 - v84;
  v137 = v4;
  v138 = v5;
  v135 = v6;
  v136 = v7;
  v133 = v8;
  v134 = v9;
  v132 = v10;
  v11 = sub_225F7E9BC();
  (*(v86 + 16))(v3, v11, v88);
  MEMORY[0x277D82BE0](v89);
  v101 = 7;
  v91 = swift_allocObject();
  *(v91 + 16) = v89;
  v125 = sub_226098C48();
  v126 = sub_22609A0A8();
  v97 = 17;
  v105 = swift_allocObject();
  *(v105 + 16) = 64;
  v107 = swift_allocObject();
  v98 = 8;
  *(v107 + 16) = 8;
  v100 = 32;
  v12 = swift_allocObject();
  v13 = v91;
  v93 = v12;
  *(v12 + 16) = v90;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v93;
  v109 = v14;
  *(v14 + 16) = v92;
  *(v14 + 24) = v15;
  v111 = swift_allocObject();
  *(v111 + 16) = 32;
  v113 = swift_allocObject();
  *(v113 + 16) = v98;
  v16 = swift_allocObject();
  v96 = v16;
  *(v16 + 16) = v94;
  *(v16 + 24) = 0;
  v17 = swift_allocObject();
  v18 = v96;
  v115 = v17;
  *(v17 + 16) = v95;
  *(v17 + 24) = v18;
  v117 = swift_allocObject();
  *(v117 + 16) = 0;
  v119 = swift_allocObject();
  *(v119 + 16) = v98;
  v19 = swift_allocObject();
  v103 = v19;
  *(v19 + 16) = v99;
  *(v19 + 24) = 0;
  v20 = swift_allocObject();
  v21 = v103;
  v122 = v20;
  *(v20 + 16) = v102;
  *(v20 + 24) = v21;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v120 = sub_22609A4F8();
  v123 = v22;

  v23 = v105;
  v24 = v123;
  *v123 = v104;
  v24[1] = v23;

  v25 = v107;
  v26 = v123;
  v123[2] = v106;
  v26[3] = v25;

  v27 = v109;
  v28 = v123;
  v123[4] = v108;
  v28[5] = v27;

  v29 = v111;
  v30 = v123;
  v123[6] = v110;
  v30[7] = v29;

  v31 = v113;
  v32 = v123;
  v123[8] = v112;
  v32[9] = v31;

  v33 = v115;
  v34 = v123;
  v123[10] = v114;
  v34[11] = v33;

  v35 = v117;
  v36 = v123;
  v123[12] = v116;
  v36[13] = v35;

  v37 = v119;
  v38 = v123;
  v123[14] = v118;
  v38[15] = v37;

  v39 = v122;
  v40 = v123;
  v123[16] = v121;
  v40[17] = v39;
  sub_225EF5418();

  if (os_log_type_enabled(v125, v126))
  {
    v41 = v69;
    v61 = sub_22609A188();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v60 = 1;
    v62 = sub_225EF5468(1, v59, v59);
    v63 = sub_225EF5468(v60, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v64 = v131;
    v131[0] = v61;
    v65 = &v130;
    v130 = v62;
    v66 = &v129;
    v129 = v63;
    sub_225EF54BC(2, v131);
    sub_225EF54BC(3, v64);
    v127 = v104;
    v128 = v105;
    sub_225EF73E8(&v127, v64, v65, v66);
    v67 = v41;
    if (v41)
    {

      __break(1u);
    }

    else
    {
      v127 = v106;
      v128 = v107;
      sub_225EF73E8(&v127, v131, &v130, &v129);
      v58 = 0;
      v127 = v108;
      v128 = v109;
      sub_225EF73E8(&v127, v131, &v130, &v129);
      v57 = 0;
      v127 = v110;
      v128 = v111;
      sub_225EF73E8(&v127, v131, &v130, &v129);
      v56 = 0;
      v127 = v112;
      v128 = v113;
      sub_225EF73E8(&v127, v131, &v130, &v129);
      v55 = 0;
      v127 = v114;
      v128 = v115;
      sub_225EF73E8(&v127, v131, &v130, &v129);
      v54 = 0;
      v127 = v116;
      v128 = v117;
      sub_225EF73E8(&v127, v131, &v130, &v129);
      v53 = 0;
      v127 = v118;
      v128 = v119;
      sub_225EF73E8(&v127, v131, &v130, &v129);
      v52 = 0;
      v127 = v121;
      v128 = v122;
      sub_225EF73E8(&v127, v131, &v130, &v129);
      _os_log_impl(&dword_225EEB000, v125, v126, "%@ %s:%ld queue task enqueued", v61, 0x20u);
      v51 = 1;
      sub_225EF7AF4(v62, 1, v59);
      sub_225EF7AF4(v63, v51, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v125);
  (*(v86 + 8))(v85, v88);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v89);
  sub_2260998E8();
  sub_2260998E8();
  sub_2260998E8();
  v42 = swift_allocObject();
  v43 = countAndFlagsBits;
  v44 = object;
  v45 = v80._countAndFlagsBits;
  v46 = v80._object;
  v47 = v81._countAndFlagsBits;
  v48 = v81._object;
  v49 = v68;
  *(v42 + 16) = v89;
  *(v42 + 24) = v43;
  *(v42 + 32) = v44;
  *(v42 + 40) = v45;
  *(v42 + 48) = v46;
  *(v42 + 56) = v47;
  *(v42 + 64) = v48;
  v131[1] = v49;
  v131[2] = v42;
  sub_226099DD8();
  (*(v71 + 8))(v74, v70);
  (*(v76 + 8))(v79, v75);
}

uint64_t sub_225FE2F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = a8;
  v8[28] = a7;
  v8[27] = a6;
  v8[26] = a5;
  v8[25] = a4;
  v8[24] = a3;
  v8[23] = a2;
  v8[14] = v8;
  v8[15] = 0;
  v8[8] = 0;
  v8[9] = 0;
  v8[10] = 0;
  v8[11] = 0;
  v8[12] = 0;
  v8[13] = 0;
  v8[16] = 0;
  v8[17] = 0;
  v8[18] = 0;
  v8[22] = 0;
  sub_2260991E8();
  v8[30] = swift_task_alloc();
  v9 = sub_226098C58();
  v8[31] = v9;
  v8[32] = *(v9 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[15] = a2;
  v8[8] = a3;
  v8[9] = a4;
  v8[10] = a5;
  v8[11] = a6;
  v8[12] = a7;
  v8[13] = a8;

  return MEMORY[0x2822009F8](sub_225FE311C, 0, 0);
}

uint64_t sub_225FE311C()
{
  v47 = v0;
  v1 = v0[34];
  v23 = v0[32];
  v24 = v0[31];
  v25 = v0[23];
  v0[14] = v0;
  v2 = sub_225F7E9BC();
  v3 = *(v23 + 16);
  v0[35] = v3;
  v0[36] = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v24);
  MEMORY[0x277D82BE0](v25);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v40 = sub_226098C48();
  v41 = sub_22609A0A8();
  v30 = swift_allocObject();
  *(v30 + 16) = 64;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_225F3E198;
  *(v27 + 24) = v26;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_225F3E1C8;
  *(v32 + 24) = v27;
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_225FE2EF0;
  *(v28 + 24) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_225EF7B84;
  *(v35 + 24) = v28;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_225FE50EC;
  *(v29 + 24) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_225F2D374;
  *(v38 + 24) = v29;
  v0[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v39 = v4;

  *v39 = sub_225EF7434;
  v39[1] = v30;

  v39[2] = sub_225EF7434;
  v39[3] = v31;

  v39[4] = sub_225F3E358;
  v39[5] = v32;

  v39[6] = sub_225EF7434;
  v39[7] = v33;

  v39[8] = sub_225EF7434;
  v39[9] = v34;

  v39[10] = sub_225EF7B90;
  v39[11] = v35;

  v39[12] = sub_225EF7434;
  v39[13] = v36;

  v39[14] = sub_225EF7434;
  v39[15] = v37;

  v39[16] = sub_225EF71D0;
  v39[17] = v38;
  sub_225EF5418();

  if (os_log_type_enabled(v40, v41))
  {
    buf = sub_22609A188();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v20 = sub_225EF5468(1, v18, v18);
    v21 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v42 = buf;
    v43 = v20;
    v44 = v21;
    sub_225EF54BC(2, &v42);
    sub_225EF54BC(3, &v42);
    v45 = sub_225EF7434;
    v46 = v30;
    sub_225EF73E8(&v45, &v42, &v43, &v44);
    v45 = sub_225EF7434;
    v46 = v31;
    sub_225EF73E8(&v45, &v42, &v43, &v44);
    v45 = sub_225F3E358;
    v46 = v32;
    sub_225EF73E8(&v45, &v42, &v43, &v44);
    v45 = sub_225EF7434;
    v46 = v33;
    sub_225EF73E8(&v45, &v42, &v43, &v44);
    v45 = sub_225EF7434;
    v46 = v34;
    sub_225EF73E8(&v45, &v42, &v43, &v44);
    v45 = sub_225EF7B90;
    v46 = v35;
    sub_225EF73E8(&v45, &v42, &v43, &v44);
    v45 = sub_225EF7434;
    v46 = v36;
    sub_225EF73E8(&v45, &v42, &v43, &v44);
    v45 = sub_225EF7434;
    v46 = v37;
    sub_225EF73E8(&v45, &v42, &v43, &v44);
    v45 = sub_225EF71D0;
    v46 = v38;
    sub_225EF73E8(&v45, &v42, &v43, &v44);
    _os_log_impl(&dword_225EEB000, v40, v41, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v20, 1, v18);
    sub_225EF7AF4(v21, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v13 = v22[34];
  v14 = v22[31];
  v15 = v22[23];
  v12 = v22[32];
  MEMORY[0x277D82BD8](v40);
  v5 = *(v12 + 8);
  v22[38] = v5;
  v22[39] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v13, v14);
  v16 = (v15 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v17 = *v16;
  v22[40] = *v16;

  swift_endAccess();
  if (v17)
  {
    v6 = v22[23];
    v22[16] = v17;
    v10 = (v6 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
    swift_beginAccess();
    v11 = *v10;
    v22[41] = *v10;

    swift_endAccess();
    if (v11)
    {
      v22[17] = v11;
      v7 = swift_task_alloc();
      v22[42] = v7;
      *v7 = v22[14];
      v7[1] = sub_225FE3F50;

      return MEMORY[0x28212BC38]();
    }
  }

  sub_225FE50F8(v22[23]);

  v8 = *(v22[14] + 8);

  return v8();
}

uint64_t sub_225FE3F50(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 112) = *v1;
  *(v3 + 344) = a1;

  return MEMORY[0x2822009F8](sub_225FE406C, 0, 0);
}

uint64_t sub_225FE406C()
{
  v17 = v0[29];
  v15 = v0[28];
  v14 = v0[27];
  v12 = v0[26];
  v11 = v0[25];
  v9 = v0[24];
  v0[14] = v0;
  v0[18] = sub_226099188();

  sub_2260991A8();
  sub_22609A4F8();
  v10 = v1;
  sub_2260998E8();
  *v10 = v9;
  v10[1] = v11;
  sub_225EF5418();
  v0[19] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7869C0, &qword_2260A0948);
  sub_226099948();
  sub_2260991B8();
  sub_22609A4F8();
  v13 = v3;
  sub_2260998E8();
  *v13 = v12;
  v13[1] = v14;
  sub_225EF5418();
  v0[20] = v4;
  sub_226099948();
  sub_2260991D8();
  sub_22609A4F8();
  v16 = v5;
  sub_2260998E8();
  *v16 = v15;
  v16[1] = v17;
  sub_225EF5418();
  v0[21] = v6;
  sub_226099948();
  v7 = swift_task_alloc();
  *(v18 + 352) = v7;
  *v7 = *(v18 + 112);
  v7[1] = sub_225FE42D8;

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225FE42D8(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 112) = *v1;
  *(v3 + 360) = a1;

  return MEMORY[0x2822009F8](sub_225FE43F4, 0, 0);
}

uint64_t sub_225FE43F4()
{
  v0[14] = v0;
  v4 = v0[18];
  v0[46] = v4;
  sub_2260998E8();
  v1 = swift_task_alloc();
  *(v3 + 376) = v1;
  *v1 = *(v3 + 112);
  v1[1] = sub_225FE44B4;

  return MEMORY[0x28212BEE8](v4);
}

uint64_t sub_225FE44B4()
{
  v3 = *v0;
  *(v3 + 112) = *v0;

  v1 = swift_task_alloc();
  *(v3 + 384) = v1;
  *v1 = *(v3 + 112);
  v1[1] = sub_225FE4698;

  return MEMORY[0x28212BE10]();
}

uint64_t sub_225FE4698()
{
  v4 = *v1;
  *(v4 + 112) = *v1;
  *(v4 + 392) = v0;

  if (v0)
  {
    v2 = sub_225FE4930;
  }

  else
  {
    v2 = sub_225FE4800;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225FE4800()
{
  v0[14] = v0;
  sub_225EFE6E8(v0 + 18);
  v3 = v0[23];

  sub_225FE50F8(v3);

  v1 = *(v0[14] + 8);

  return v1();
}

uint64_t sub_225FE4930()
{
  v35 = v0;
  v20 = v0[49];
  v19 = v0[35];
  v1 = v0[33];
  v18 = v0[31];
  v0[14] = v0;
  sub_225EFE6E8(v0 + 18);
  v2 = v20;
  v0[22] = v20;
  v3 = sub_225F7E9BC();
  v19(v1, v3, v18);
  v4 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  sub_225F3EAE8();

  v28 = sub_226098C48();
  v29 = sub_22609A098();
  v24 = swift_allocObject();
  *(v24 + 16) = 64;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_225F3EA68;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_225F3EA70;
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_225F3E1C8;
  *(v26 + 24) = v23;
  sub_22609A4F8();
  v27 = v5;

  *v27 = sub_225EF7434;
  v27[1] = v24;

  v27[2] = sub_225EF7434;
  v27[3] = v25;

  v27[4] = sub_225F3E358;
  v27[5] = v26;
  sub_225EF5418();

  if (os_log_type_enabled(v28, v29))
  {
    buf = sub_22609A188();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v15 = sub_225EF5468(1, v13, v13);
    v16 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v30 = buf;
    v31 = v15;
    v32 = v16;
    sub_225EF54BC(2, &v30);
    sub_225EF54BC(1, &v30);
    v33 = sub_225EF7434;
    v34 = v24;
    sub_225EF73E8(&v33, &v30, &v31, &v32);
    v33 = sub_225EF7434;
    v34 = v25;
    sub_225EF73E8(&v33, &v30, &v31, &v32);
    v33 = sub_225F3E358;
    v34 = v26;
    sub_225EF73E8(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_225EEB000, v28, v29, "Resuming recognition failed with the error: %@", buf, 0xCu);
    sub_225EF7AF4(v15, 1, v13);
    sub_225EF7AF4(v16, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v11 = v17[49];
  v10 = v17[38];
  v8 = v17[33];
  v9 = v17[31];
  MEMORY[0x277D82BD8](v28);
  v10(v8, v9);

  v12 = v17[23];

  sub_225FE50F8(v12);

  v6 = *(v17[14] + 8);

  return v6();
}

uint64_t sub_225FE50F8(uint64_t a1)
{
  v51 = a1;
  v52 = sub_225F3E198;
  v54 = sub_225F3E1C8;
  v56 = sub_225FE2EF0;
  v57 = sub_225EF7B84;
  v61 = sub_22601D480;
  v64 = sub_225F2D374;
  v66 = sub_225EF7434;
  v68 = sub_225EF7434;
  v70 = sub_225F3E358;
  v72 = sub_225EF7434;
  v74 = sub_225EF7434;
  v76 = sub_225EF7B90;
  v78 = sub_225EF7434;
  v80 = sub_225EF7434;
  v83 = sub_225EF71D0;
  v94 = 0;
  v45 = 0;
  v50 = sub_226098C58();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v1 = v35 - v46;
  v47 = v35 - v46;
  v94 = v2;
  v3 = sub_225F7E9BC();
  (*(v48 + 16))(v1, v3, v50);
  MEMORY[0x277D82BE0](v51);
  v63 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v87 = sub_226098C48();
  v88 = sub_22609A0A8();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 64;
  v69 = swift_allocObject();
  v60 = 8;
  *(v69 + 16) = 8;
  v62 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v52;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v71 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = v60;
  v8 = swift_allocObject();
  v58 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v58;
  v77 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v60;
  v11 = swift_allocObject();
  v65 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v65;
  v84 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v82 = sub_22609A4F8();
  v85 = v14;

  v15 = v67;
  v16 = v85;
  *v85 = v66;
  v16[1] = v15;

  v17 = v69;
  v18 = v85;
  v85[2] = v68;
  v18[3] = v17;

  v19 = v71;
  v20 = v85;
  v85[4] = v70;
  v20[5] = v19;

  v21 = v73;
  v22 = v85;
  v85[6] = v72;
  v22[7] = v21;

  v23 = v75;
  v24 = v85;
  v85[8] = v74;
  v24[9] = v23;

  v25 = v77;
  v26 = v85;
  v85[10] = v76;
  v26[11] = v25;

  v27 = v79;
  v28 = v85;
  v85[12] = v78;
  v28[13] = v27;

  v29 = v81;
  v30 = v85;
  v85[14] = v80;
  v30[15] = v29;

  v31 = v84;
  v32 = v85;
  v85[16] = v83;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v87, v88))
  {
    v33 = v45;
    v38 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = 1;
    v39 = sub_225EF5468(1, v36, v36);
    v40 = sub_225EF5468(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v93;
    v93 = v38;
    v42 = &v92;
    v92 = v39;
    v43 = &v91;
    v91 = v40;
    sub_225EF54BC(2, &v93);
    sub_225EF54BC(3, v41);
    v89 = v66;
    v90 = v67;
    sub_225EF73E8(&v89, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v89 = v68;
      v90 = v69;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[7] = 0;
      v89 = v70;
      v90 = v71;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[6] = 0;
      v89 = v72;
      v90 = v73;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[5] = 0;
      v89 = v74;
      v90 = v75;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[4] = 0;
      v89 = v76;
      v90 = v77;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[3] = 0;
      v89 = v78;
      v90 = v79;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[2] = 0;
      v89 = v80;
      v90 = v81;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[1] = 0;
      v89 = v83;
      v90 = v84;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_225EEB000, v87, v88, "%@ %s:%ld queue task complete", v38, 0x20u);
      v35[0] = 1;
      sub_225EF7AF4(v39, 1, v36);
      sub_225EF7AF4(v40, v35[0], MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v87);
  return (*(v48 + 8))(v47, v50);
}

Swift::Void __swiftcall CoreEmbeddedSpeechAnalyzer.updateVoiceCommandContext(withPrefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:)(Swift::String_optional withPrefixText, Swift::String_optional postfixText, Swift::String_optional selectedText, NSNumber_optional disambiguationActive, NSNumber_optional cursorInVisibleText, NSNumber_optional favorCommandSuppression, NSNumber_optional abortCommandSuppression, NSNumber_optional undoEvent)
{
  countAndFlagsBits = withPrefixText.value._countAndFlagsBits;
  object = withPrefixText.value._object;
  v86 = postfixText;
  v87 = selectedText;
  isa = disambiguationActive.value.super.super.isa;
  v89 = *&disambiguationActive.is_nil;
  v92 = cursorInVisibleText.value.super.super.isa;
  v93 = *&cursorInVisibleText.is_nil;
  v94 = favorCommandSuppression.value.super.super.isa;
  v100 = sub_225F3E198;
  v102 = sub_225F3E1C8;
  v104 = sub_225FE6F0C;
  v105 = sub_225EF7B84;
  v109 = sub_225FE6F3C;
  v112 = sub_225F2D374;
  v114 = sub_225EF7434;
  v116 = sub_225EF7434;
  v118 = sub_225F3E358;
  v120 = sub_225EF7434;
  v122 = sub_225EF7434;
  v124 = sub_225EF7B90;
  v126 = sub_225EF7434;
  v128 = sub_225EF7434;
  v131 = sub_225EF71D0;
  v74 = &unk_2260A0BE0;
  v152 = 0;
  v153 = 0;
  v150 = 0;
  v151 = 0;
  v148 = 0;
  v149 = 0;
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v75 = 0;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v80 = v64 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81);
  v85 = v64 - v84;
  v98 = sub_226098C58();
  v96 = *(v98 - 8);
  v97 = v98 - 8;
  MEMORY[0x28223BE20](countAndFlagsBits);
  v9 = v64 - v8;
  v95 = v64 - v8;
  v152 = v10;
  v153 = v11;
  v150 = v12;
  v151 = v13;
  v148 = v14;
  v149 = v15;
  v147 = v16;
  v146 = v17;
  v145 = v92;
  v144 = v93;
  v143 = v94;
  v142 = v18;
  v19 = sub_225F7E9BC();
  (*(v96 + 16))(v9, v19, v98);
  MEMORY[0x277D82BE0](v99);
  v111 = 7;
  v101 = swift_allocObject();
  *(v101 + 16) = v99;
  v135 = sub_226098C48();
  v136 = sub_22609A0A8();
  v107 = 17;
  v115 = swift_allocObject();
  *(v115 + 16) = 64;
  v117 = swift_allocObject();
  v108 = 8;
  *(v117 + 16) = 8;
  v110 = 32;
  v20 = swift_allocObject();
  v21 = v101;
  v103 = v20;
  *(v20 + 16) = v100;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v103;
  v119 = v22;
  *(v22 + 16) = v102;
  *(v22 + 24) = v23;
  v121 = swift_allocObject();
  *(v121 + 16) = 32;
  v123 = swift_allocObject();
  *(v123 + 16) = v108;
  v24 = swift_allocObject();
  v106 = v24;
  *(v24 + 16) = v104;
  *(v24 + 24) = 0;
  v25 = swift_allocObject();
  v26 = v106;
  v125 = v25;
  *(v25 + 16) = v105;
  *(v25 + 24) = v26;
  v127 = swift_allocObject();
  *(v127 + 16) = 0;
  v129 = swift_allocObject();
  *(v129 + 16) = v108;
  v27 = swift_allocObject();
  v113 = v27;
  *(v27 + 16) = v109;
  *(v27 + 24) = 0;
  v28 = swift_allocObject();
  v29 = v113;
  v132 = v28;
  *(v28 + 16) = v112;
  *(v28 + 24) = v29;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v130 = sub_22609A4F8();
  v133 = v30;

  v31 = v115;
  v32 = v133;
  *v133 = v114;
  v32[1] = v31;

  v33 = v117;
  v34 = v133;
  v133[2] = v116;
  v34[3] = v33;

  v35 = v119;
  v36 = v133;
  v133[4] = v118;
  v36[5] = v35;

  v37 = v121;
  v38 = v133;
  v133[6] = v120;
  v38[7] = v37;

  v39 = v123;
  v40 = v133;
  v133[8] = v122;
  v40[9] = v39;

  v41 = v125;
  v42 = v133;
  v133[10] = v124;
  v42[11] = v41;

  v43 = v127;
  v44 = v133;
  v133[12] = v126;
  v44[13] = v43;

  v45 = v129;
  v46 = v133;
  v133[14] = v128;
  v46[15] = v45;

  v47 = v132;
  v48 = v133;
  v133[16] = v131;
  v48[17] = v47;
  sub_225EF5418();

  if (os_log_type_enabled(v135, v136))
  {
    v49 = v75;
    v67 = sub_22609A188();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v66 = 1;
    v68 = sub_225EF5468(1, v65, v65);
    v69 = sub_225EF5468(v66, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v70 = v141;
    v141[0] = v67;
    v71 = &v140;
    v140 = v68;
    v72 = &v139;
    v139 = v69;
    sub_225EF54BC(2, v141);
    sub_225EF54BC(3, v70);
    v137 = v114;
    v138 = v115;
    sub_225EF73E8(&v137, v70, v71, v72);
    v73 = v49;
    if (v49)
    {

      __break(1u);
    }

    else
    {
      v137 = v116;
      v138 = v117;
      sub_225EF73E8(&v137, v141, &v140, &v139);
      v64[7] = 0;
      v137 = v118;
      v138 = v119;
      sub_225EF73E8(&v137, v141, &v140, &v139);
      v64[6] = 0;
      v137 = v120;
      v138 = v121;
      sub_225EF73E8(&v137, v141, &v140, &v139);
      v64[5] = 0;
      v137 = v122;
      v138 = v123;
      sub_225EF73E8(&v137, v141, &v140, &v139);
      v64[4] = 0;
      v137 = v124;
      v138 = v125;
      sub_225EF73E8(&v137, v141, &v140, &v139);
      v64[3] = 0;
      v137 = v126;
      v138 = v127;
      sub_225EF73E8(&v137, v141, &v140, &v139);
      v64[2] = 0;
      v137 = v128;
      v138 = v129;
      sub_225EF73E8(&v137, v141, &v140, &v139);
      v64[1] = 0;
      v137 = v131;
      v138 = v132;
      sub_225EF73E8(&v137, v141, &v140, &v139);
      _os_log_impl(&dword_225EEB000, v135, v136, "%@ %s:%ld queue task enqueued", v67, 0x20u);
      v64[0] = 1;
      sub_225EF7AF4(v68, 1, v65);
      sub_225EF7AF4(v69, v64[0], MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v135);
  (*(v96 + 8))(v95, v98);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v99);
  sub_2260998E8();
  sub_2260998E8();
  sub_2260998E8();
  MEMORY[0x277D82BE0](isa);
  MEMORY[0x277D82BE0](v89);
  MEMORY[0x277D82BE0](v92);
  MEMORY[0x277D82BE0](v93);
  MEMORY[0x277D82BE0](v94);
  v50 = swift_allocObject();
  v51 = countAndFlagsBits;
  v52 = object;
  v53 = v86.value._countAndFlagsBits;
  v54 = v87.value._countAndFlagsBits;
  v55 = v87.value._object;
  v56 = isa;
  v57 = v89;
  v58 = v92;
  v59 = v93;
  v60 = v94;
  v61 = v74;
  v62 = v50;
  v63 = v86.value._object;
  *(v62 + 16) = v99;
  *(v62 + 24) = v51;
  *(v62 + 32) = v52;
  *(v62 + 40) = v53;
  *(v62 + 48) = v63;
  *(v62 + 56) = v54;
  *(v62 + 64) = v55;
  *(v62 + 72) = v56;
  *(v62 + 80) = v57;
  *(v62 + 88) = v58;
  *(v62 + 96) = v59;
  *(v62 + 104) = v60;
  v141[1] = v61;
  v141[2] = v62;
  sub_226099DD8();
  (*(v77 + 8))(v80, v76);
  (*(v82 + 8))(v85, v81);
}

uint64_t sub_225FE6F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[33] = v24;
  v8[32] = v23;
  v8[31] = v22;
  v8[30] = v21;
  v8[29] = v20;
  v8[28] = a8;
  v8[27] = a7;
  v8[26] = a6;
  v8[25] = a5;
  v8[24] = a4;
  v8[23] = a3;
  v8[22] = a2;
  v8[14] = v8;
  v8[15] = 0;
  v8[8] = 0;
  v8[9] = 0;
  v8[10] = 0;
  v8[11] = 0;
  v8[12] = 0;
  v8[13] = 0;
  v8[16] = 0;
  v8[17] = 0;
  v8[18] = 0;
  v8[19] = 0;
  v8[20] = 0;
  v8[21] = 0;
  v11 = sub_2260995B8();
  v8[34] = v11;
  v8[35] = *(v11 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v12 = sub_226098C58();
  v8[38] = v12;
  v8[39] = *(v12 - 8);
  v8[40] = swift_task_alloc();
  v8[15] = a2;
  v8[8] = a3;
  v8[9] = a4;
  v8[10] = a5;
  v8[11] = a6;
  v8[12] = a7;
  v8[13] = a8;
  v8[16] = v20;
  v8[17] = v21;
  v8[18] = v22;
  v8[19] = v23;
  v8[20] = v24;

  return MEMORY[0x2822009F8](sub_225FE7224, 0, 0);
}

uint64_t sub_225FE7224()
{
  v50 = v0;
  v1 = v0[40];
  v26 = v0[39];
  v27 = v0[38];
  v28 = v0[22];
  v0[14] = v0;
  v2 = sub_225F7E9BC();
  (*(v26 + 16))(v1, v2, v27);
  MEMORY[0x277D82BE0](v28);
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v43 = sub_226098C48();
  v44 = sub_22609A0A8();
  v33 = swift_allocObject();
  *(v33 + 16) = 64;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_225F3E198;
  *(v30 + 24) = v29;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_225F3E1C8;
  *(v35 + 24) = v30;
  v36 = swift_allocObject();
  *(v36 + 16) = 32;
  v37 = swift_allocObject();
  *(v37 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_225FE6F0C;
  *(v31 + 24) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_225EF7B84;
  *(v38 + 24) = v31;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_225FE9090;
  *(v32 + 24) = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_225F2D374;
  *(v41 + 24) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v42 = v3;

  *v42 = sub_225EF7434;
  v42[1] = v33;

  v42[2] = sub_225EF7434;
  v42[3] = v34;

  v42[4] = sub_225F3E358;
  v42[5] = v35;

  v42[6] = sub_225EF7434;
  v42[7] = v36;

  v42[8] = sub_225EF7434;
  v42[9] = v37;

  v42[10] = sub_225EF7B90;
  v42[11] = v38;

  v42[12] = sub_225EF7434;
  v42[13] = v39;

  v42[14] = sub_225EF7434;
  v42[15] = v40;

  v42[16] = sub_225EF71D0;
  v42[17] = v41;
  sub_225EF5418();

  if (os_log_type_enabled(v43, v44))
  {
    buf = sub_22609A188();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v23 = sub_225EF5468(1, v21, v21);
    v24 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v45 = buf;
    v46 = v23;
    v47 = v24;
    sub_225EF54BC(2, &v45);
    sub_225EF54BC(3, &v45);
    v48 = sub_225EF7434;
    v49 = v33;
    sub_225EF73E8(&v48, &v45, &v46, &v47);
    v48 = sub_225EF7434;
    v49 = v34;
    sub_225EF73E8(&v48, &v45, &v46, &v47);
    v48 = sub_225F3E358;
    v49 = v35;
    sub_225EF73E8(&v48, &v45, &v46, &v47);
    v48 = sub_225EF7434;
    v49 = v36;
    sub_225EF73E8(&v48, &v45, &v46, &v47);
    v48 = sub_225EF7434;
    v49 = v37;
    sub_225EF73E8(&v48, &v45, &v46, &v47);
    v48 = sub_225EF7B90;
    v49 = v38;
    sub_225EF73E8(&v48, &v45, &v46, &v47);
    v48 = sub_225EF7434;
    v49 = v39;
    sub_225EF73E8(&v48, &v45, &v46, &v47);
    v48 = sub_225EF7434;
    v49 = v40;
    sub_225EF73E8(&v48, &v45, &v46, &v47);
    v48 = sub_225EF71D0;
    v49 = v41;
    sub_225EF73E8(&v48, &v45, &v46, &v47);
    _os_log_impl(&dword_225EEB000, v43, v44, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v23, 1, v21);
    sub_225EF7AF4(v24, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v16 = v25[40];
  v17 = v25[38];
  v18 = v25[22];
  v15 = v25[39];
  MEMORY[0x277D82BD8](v43);
  (*(v15 + 8))(v16, v17);
  v19 = (v18 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v20 = *v19;
  v25[41] = *v19;

  swift_endAccess();
  if (v20)
  {
    v4 = v25[22];
    v25[21] = v20;
    v13 = (v4 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
    swift_beginAccess();
    v14 = *v13;

    swift_endAccess();
    if (v14)
    {
      v10 = v25[33];
      v9 = v25[32];
      v8 = v25[31];
      v12 = v25[30];
      v11 = v25[29];

      sub_2260998E8();
      sub_2260998E8();
      sub_2260998E8();
      MEMORY[0x277D82BE0](v11);
      MEMORY[0x277D82BE0](v12);
      MEMORY[0x277D82BE0](v8);
      MEMORY[0x277D82BE0](v9);
      MEMORY[0x277D82BE0](v10);
      sub_2260995A8();
      v5 = swift_task_alloc();
      v25[42] = v5;
      *v5 = v25[14];
      v5[1] = sub_225FE8368;

      return MEMORY[0x28212BC38]();
    }
  }

  sub_225FE909C(v25[22]);

  v6 = *(v25[14] + 8);

  return v6();
}

uint64_t sub_225FE8368(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 112) = *v1;
  *(v3 + 344) = a1;

  return MEMORY[0x2822009F8](sub_225FE8484, 0, 0);
}

uint64_t sub_225FE8484()
{
  v9 = v0[37];
  v8 = v0[35];
  v10 = v0[34];
  v0[14] = v0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CD8, &qword_2260A0E70);
  v0[44] = v11;
  sub_22609A4F8();
  v7 = v1;
  v6 = *(v11 + 48);
  sub_226099148();
  *(v7 + v6 + 24) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + v6));
  v3 = *(v8 + 16);
  v0[45] = v3;
  v0[46] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(boxed_opaque_existential_0, v9, v10);
  sub_225EF5418();
  v0[47] = sub_226099158();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CE0, &qword_2260A0E78);
  v0[48] = v13;
  v0[49] = sub_2260239A4();
  v14 = sub_2260998A8();
  v0[50] = v14;
  v4 = swift_task_alloc();
  *(v12 + 408) = v4;
  *v4 = *(v12 + 112);
  v4[1] = sub_225FE8650;

  return MEMORY[0x28212BEF0](v14, v13);
}

uint64_t sub_225FE8650()
{
  *(*v0 + 112) = *v0;

  return MEMORY[0x2822009F8](sub_225FE87A8, 0, 0);
}

uint64_t sub_225FE87A8()
{
  v1 = *(v0 + 264);
  v11 = v1;
  *(v0 + 112) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v11)
  {
    v7 = v10[32];
    v6 = v10[31];
    v9 = v10[30];
    v8 = v10[29];
    MEMORY[0x277D82BD8](v10[33]);
    sub_2260998E8();
    sub_2260998E8();
    sub_2260998E8();
    MEMORY[0x277D82BE0](v8);
    MEMORY[0x277D82BE0](v9);
    MEMORY[0x277D82BE0](v6);
    MEMORY[0x277D82BE0](v7);
    sub_2260995A8();
    v2 = swift_task_alloc();
    v10[52] = v2;
    *v2 = v10[14];
    v2[1] = sub_225FE8B0C;

    return MEMORY[0x28212BC38]();
  }

  else
  {
    v5 = v10[22];
    (*(v10[35] + 8))(v10[37], v10[34]);

    sub_225FE909C(v5);

    v3 = *(v10[14] + 8);

    return v3();
  }
}

uint64_t sub_225FE8B0C(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 112) = *v1;
  *(v3 + 424) = a1;

  return MEMORY[0x2822009F8](sub_225FE8C28, 0, 0);
}

uint64_t sub_225FE8C28()
{
  v10 = v0[45];
  v11 = v0[44];
  v8 = v0[36];
  v9 = v0[34];
  v0[14] = v0;
  sub_22609A4F8();
  v7 = v1;
  v6 = *(v11 + 48);
  sub_226099148();
  *(v7 + v6 + 24) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + v6));
  v10(boxed_opaque_existential_0, v8, v9);
  sub_225EF5418();
  v13 = sub_2260998A8();
  v0[54] = v13;
  v3 = swift_task_alloc();
  v12[55] = v3;
  *v3 = v12[14];
  v3[1] = sub_225FE8D94;
  v4 = v12[48];

  return MEMORY[0x28212BEF0](v13, v4);
}

uint64_t sub_225FE8D94()
{
  *(*v0 + 112) = *v0;

  return MEMORY[0x2822009F8](sub_225FE8EEC, 0, 0);
}

uint64_t sub_225FE8EEC()
{
  v1 = v0[36];
  v2 = v0[35];
  v3 = v0[34];
  v0[14] = v0;
  (*(v2 + 8))(v1, v3);
  v6 = v0[22];
  (*(v0[35] + 8))(v0[37], v0[34]);

  sub_225FE909C(v6);

  v4 = *(v0[14] + 8);

  return v4();
}

uint64_t sub_225FE909C(uint64_t a1)
{
  v51 = a1;
  v52 = sub_225F3E198;
  v54 = sub_225F3E1C8;
  v56 = sub_225FE6F0C;
  v57 = sub_225EF7B84;
  v61 = sub_22601D48C;
  v64 = sub_225F2D374;
  v66 = sub_225EF7434;
  v68 = sub_225EF7434;
  v70 = sub_225F3E358;
  v72 = sub_225EF7434;
  v74 = sub_225EF7434;
  v76 = sub_225EF7B90;
  v78 = sub_225EF7434;
  v80 = sub_225EF7434;
  v83 = sub_225EF71D0;
  v94 = 0;
  v45 = 0;
  v50 = sub_226098C58();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v1 = v35 - v46;
  v47 = v35 - v46;
  v94 = v2;
  v3 = sub_225F7E9BC();
  (*(v48 + 16))(v1, v3, v50);
  MEMORY[0x277D82BE0](v51);
  v63 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v87 = sub_226098C48();
  v88 = sub_22609A0A8();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 64;
  v69 = swift_allocObject();
  v60 = 8;
  *(v69 + 16) = 8;
  v62 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v52;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v71 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = v60;
  v8 = swift_allocObject();
  v58 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v58;
  v77 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v60;
  v11 = swift_allocObject();
  v65 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v65;
  v84 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v82 = sub_22609A4F8();
  v85 = v14;

  v15 = v67;
  v16 = v85;
  *v85 = v66;
  v16[1] = v15;

  v17 = v69;
  v18 = v85;
  v85[2] = v68;
  v18[3] = v17;

  v19 = v71;
  v20 = v85;
  v85[4] = v70;
  v20[5] = v19;

  v21 = v73;
  v22 = v85;
  v85[6] = v72;
  v22[7] = v21;

  v23 = v75;
  v24 = v85;
  v85[8] = v74;
  v24[9] = v23;

  v25 = v77;
  v26 = v85;
  v85[10] = v76;
  v26[11] = v25;

  v27 = v79;
  v28 = v85;
  v85[12] = v78;
  v28[13] = v27;

  v29 = v81;
  v30 = v85;
  v85[14] = v80;
  v30[15] = v29;

  v31 = v84;
  v32 = v85;
  v85[16] = v83;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v87, v88))
  {
    v33 = v45;
    v38 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = 1;
    v39 = sub_225EF5468(1, v36, v36);
    v40 = sub_225EF5468(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v93;
    v93 = v38;
    v42 = &v92;
    v92 = v39;
    v43 = &v91;
    v91 = v40;
    sub_225EF54BC(2, &v93);
    sub_225EF54BC(3, v41);
    v89 = v66;
    v90 = v67;
    sub_225EF73E8(&v89, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v89 = v68;
      v90 = v69;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[7] = 0;
      v89 = v70;
      v90 = v71;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[6] = 0;
      v89 = v72;
      v90 = v73;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[5] = 0;
      v89 = v74;
      v90 = v75;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[4] = 0;
      v89 = v76;
      v90 = v77;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[3] = 0;
      v89 = v78;
      v90 = v79;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[2] = 0;
      v89 = v80;
      v90 = v81;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[1] = 0;
      v89 = v83;
      v90 = v84;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_225EEB000, v87, v88, "%@ %s:%ld queue task complete", v38, 0x20u);
      v35[0] = 1;
      sub_225EF7AF4(v39, 1, v36);
      sub_225EF7AF4(v40, v35[0], MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v87);
  return (*(v48 + 8))(v47, v50);
}

Swift::Void __swiftcall CoreEmbeddedSpeechAnalyzer.finishAudio()()
{
  v71 = sub_225F3E198;
  v73 = sub_225F3E1C8;
  v75 = sub_225FEAD88;
  v76 = sub_225EF7B84;
  v80 = sub_225FEADB8;
  v83 = sub_225F2D374;
  v85 = sub_225EF7434;
  v87 = sub_225EF7434;
  v89 = sub_225F3E358;
  v91 = sub_225EF7434;
  v93 = sub_225EF7434;
  v95 = sub_225EF7B90;
  v97 = sub_225EF7434;
  v99 = sub_225EF7434;
  v102 = sub_225EF71D0;
  v53 = &unk_2260A0BF0;
  v113 = 0;
  v54 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v59 = &v35 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v64 = &v35 - v63;
  v69 = sub_226098C58();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v65 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69);
  v0 = &v35 - v65;
  v66 = &v35 - v65;
  v113 = v1;
  v2 = sub_225F7E9BC();
  (*(v67 + 16))(v0, v2, v69);
  MEMORY[0x277D82BE0](v70);
  v82 = 7;
  v72 = swift_allocObject();
  *(v72 + 16) = v70;
  v106 = sub_226098C48();
  v107 = sub_22609A0A8();
  v78 = 17;
  v86 = swift_allocObject();
  *(v86 + 16) = 64;
  v88 = swift_allocObject();
  v79 = 8;
  *(v88 + 16) = 8;
  v81 = 32;
  v3 = swift_allocObject();
  v4 = v72;
  v74 = v3;
  *(v3 + 16) = v71;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v74;
  v90 = v5;
  *(v5 + 16) = v73;
  *(v5 + 24) = v6;
  v92 = swift_allocObject();
  *(v92 + 16) = 32;
  v94 = swift_allocObject();
  *(v94 + 16) = v79;
  v7 = swift_allocObject();
  v77 = v7;
  *(v7 + 16) = v75;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  v9 = v77;
  v96 = v8;
  *(v8 + 16) = v76;
  *(v8 + 24) = v9;
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  v100 = swift_allocObject();
  *(v100 + 16) = v79;
  v10 = swift_allocObject();
  v84 = v10;
  *(v10 + 16) = v80;
  *(v10 + 24) = 0;
  v11 = swift_allocObject();
  v12 = v84;
  v103 = v11;
  *(v11 + 16) = v83;
  *(v11 + 24) = v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v101 = sub_22609A4F8();
  v104 = v13;

  v14 = v86;
  v15 = v104;
  *v104 = v85;
  v15[1] = v14;

  v16 = v88;
  v17 = v104;
  v104[2] = v87;
  v17[3] = v16;

  v18 = v90;
  v19 = v104;
  v104[4] = v89;
  v19[5] = v18;

  v20 = v92;
  v21 = v104;
  v104[6] = v91;
  v21[7] = v20;

  v22 = v94;
  v23 = v104;
  v104[8] = v93;
  v23[9] = v22;

  v24 = v96;
  v25 = v104;
  v104[10] = v95;
  v25[11] = v24;

  v26 = v98;
  v27 = v104;
  v104[12] = v97;
  v27[13] = v26;

  v28 = v100;
  v29 = v104;
  v104[14] = v99;
  v29[15] = v28;

  v30 = v103;
  v31 = v104;
  v104[16] = v102;
  v31[17] = v30;
  sub_225EF5418();

  if (os_log_type_enabled(v106, v107))
  {
    v32 = v54;
    v46 = sub_22609A188();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v45 = 1;
    v47 = sub_225EF5468(1, v44, v44);
    v48 = sub_225EF5468(v45, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v49 = v112;
    v112[0] = v46;
    v50 = &v111;
    v111 = v47;
    v51 = &v110;
    v110 = v48;
    sub_225EF54BC(2, v112);
    sub_225EF54BC(3, v49);
    v108 = v85;
    v109 = v86;
    sub_225EF73E8(&v108, v49, v50, v51);
    v52 = v32;
    if (v32)
    {

      __break(1u);
    }

    else
    {
      v108 = v87;
      v109 = v88;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v43 = 0;
      v108 = v89;
      v109 = v90;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v42 = 0;
      v108 = v91;
      v109 = v92;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v41 = 0;
      v108 = v93;
      v109 = v94;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v40 = 0;
      v108 = v95;
      v109 = v96;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v39 = 0;
      v108 = v97;
      v109 = v98;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v38 = 0;
      v108 = v99;
      v109 = v100;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v37 = 0;
      v108 = v102;
      v109 = v103;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      _os_log_impl(&dword_225EEB000, v106, v107, "%@ %s:%ld queue task enqueued", v46, 0x20u);
      v36 = 1;
      sub_225EF7AF4(v47, 1, v44);
      sub_225EF7AF4(v48, v36, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v106);
  (*(v67 + 8))(v66, v69);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v70);
  v33 = swift_allocObject();
  v34 = v53;
  *(v33 + 16) = v70;
  v112[1] = v34;
  v112[2] = v33;
  sub_226099DD8();
  (*(v56 + 8))(v59, v55);
  (*(v61 + 8))(v64, v60);
}

uint64_t sub_225FEADC4(uint64_t a1, uint64_t a2)
{
  v2[14] = a2;
  v2[11] = v2;
  v2[12] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
  v2[15] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08);
  v2[19] = swift_task_alloc();
  v4 = sub_226098C58();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v2[12] = a2;

  return MEMORY[0x2822009F8](sub_225FEAFA8, 0, 0);
}

uint64_t sub_225FEAFA8()
{
  v55 = v0;
  v1 = v0[22];
  v31 = v0[21];
  v32 = v0[20];
  v33 = v0[14];
  v0[11] = v0;
  v2 = sub_225F7E9BC();
  (*(v31 + 16))(v1, v2, v32);
  MEMORY[0x277D82BE0](v33);
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  v48 = sub_226098C48();
  v49 = sub_22609A0A8();
  v38 = swift_allocObject();
  *(v38 + 16) = 64;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_225F3E198;
  *(v35 + 24) = v34;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_225F3E1C8;
  *(v40 + 24) = v35;
  v41 = swift_allocObject();
  *(v41 + 16) = 32;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_225FEAD88;
  *(v36 + 24) = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_225EF7B84;
  *(v43 + 24) = v36;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_225FEBDB0;
  *(v37 + 24) = 0;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_225F2D374;
  *(v46 + 24) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v47 = v3;

  *v47 = sub_225EF7434;
  v47[1] = v38;

  v47[2] = sub_225EF7434;
  v47[3] = v39;

  v47[4] = sub_225F3E358;
  v47[5] = v40;

  v47[6] = sub_225EF7434;
  v47[7] = v41;

  v47[8] = sub_225EF7434;
  v47[9] = v42;

  v47[10] = sub_225EF7B90;
  v47[11] = v43;

  v47[12] = sub_225EF7434;
  v47[13] = v44;

  v47[14] = sub_225EF7434;
  v47[15] = v45;

  v47[16] = sub_225EF71D0;
  v47[17] = v46;
  sub_225EF5418();

  if (os_log_type_enabled(v48, v49))
  {
    buf = sub_22609A188();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v28 = sub_225EF5468(1, v26, v26);
    v29 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v50 = buf;
    v51 = v28;
    v52 = v29;
    sub_225EF54BC(2, &v50);
    sub_225EF54BC(3, &v50);
    v53 = sub_225EF7434;
    v54 = v38;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7434;
    v54 = v39;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225F3E358;
    v54 = v40;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7434;
    v54 = v41;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7434;
    v54 = v42;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7B90;
    v54 = v43;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7434;
    v54 = v44;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7434;
    v54 = v45;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF71D0;
    v54 = v46;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    _os_log_impl(&dword_225EEB000, v48, v49, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v28, 1, v26);
    sub_225EF7AF4(v29, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v21 = v30[22];
  v22 = v30[20];
  v23 = v30[14];
  v20 = v30[21];
  MEMORY[0x277D82BD8](v48);
  (*(v20 + 8))(v21, v22);
  v24 = (v23 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v25 = *v24;

  swift_endAccess();
  v30[13] = v25;
  if (v30[13])
  {
    sub_225EF5A0C(v30 + 13);
  }

  else
  {
    sub_225EF5A0C(v30 + 13);
    v19 = (v30[14] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioEnded);
    swift_beginAccess();
    *v19 = 1;
    swift_endAccess();
  }

  v17 = v30[19];
  v18 = v30[16];
  v16 = v30[17];
  sub_225EF95B0(v17);
  if ((*(v16 + 48))(v17, 1, v18))
  {
    sub_225EF97AC(v30[19]);
  }

  else
  {
    v12 = v30[19];
    v14 = v30[18];
    v15 = v30[16];
    v13 = v30[17];
    (*(v13 + 16))(v14);
    sub_225EF97AC(v12);
    sub_226099DE8();
    (*(v13 + 8))(v14, v15);
  }

  v11 = v30[15];
  v10 = v30[14];
  v4 = sub_226099DA8();
  (*(*(v4 - 8) + 56))(v11, 1);
  v8 = (v10 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v9 = *v8;

  swift_endAccess();
  MEMORY[0x277D82BE0](v10);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v10;
  v5[5] = v9;
  sub_225F38F2C(0, 0, v11, &unk_2260A0E68, v5, MEMORY[0x277D84F78] + 8);

  sub_225FEBDBC(v10);

  v6 = *(v30[11] + 8);

  return v6();
}

uint64_t sub_225FEBDBC(uint64_t a1)
{
  v51 = a1;
  v52 = sub_225F3E198;
  v54 = sub_225F3E1C8;
  v56 = sub_225FEAD88;
  v57 = sub_225EF7B84;
  v61 = sub_22601D498;
  v64 = sub_225F2D374;
  v66 = sub_225EF7434;
  v68 = sub_225EF7434;
  v70 = sub_225F3E358;
  v72 = sub_225EF7434;
  v74 = sub_225EF7434;
  v76 = sub_225EF7B90;
  v78 = sub_225EF7434;
  v80 = sub_225EF7434;
  v83 = sub_225EF71D0;
  v94 = 0;
  v45 = 0;
  v50 = sub_226098C58();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v1 = v35 - v46;
  v47 = v35 - v46;
  v94 = v2;
  v3 = sub_225F7E9BC();
  (*(v48 + 16))(v1, v3, v50);
  MEMORY[0x277D82BE0](v51);
  v63 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v87 = sub_226098C48();
  v88 = sub_22609A0A8();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 64;
  v69 = swift_allocObject();
  v60 = 8;
  *(v69 + 16) = 8;
  v62 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v52;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v71 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = v60;
  v8 = swift_allocObject();
  v58 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v58;
  v77 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v60;
  v11 = swift_allocObject();
  v65 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v65;
  v84 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v82 = sub_22609A4F8();
  v85 = v14;

  v15 = v67;
  v16 = v85;
  *v85 = v66;
  v16[1] = v15;

  v17 = v69;
  v18 = v85;
  v85[2] = v68;
  v18[3] = v17;

  v19 = v71;
  v20 = v85;
  v85[4] = v70;
  v20[5] = v19;

  v21 = v73;
  v22 = v85;
  v85[6] = v72;
  v22[7] = v21;

  v23 = v75;
  v24 = v85;
  v85[8] = v74;
  v24[9] = v23;

  v25 = v77;
  v26 = v85;
  v85[10] = v76;
  v26[11] = v25;

  v27 = v79;
  v28 = v85;
  v85[12] = v78;
  v28[13] = v27;

  v29 = v81;
  v30 = v85;
  v85[14] = v80;
  v30[15] = v29;

  v31 = v84;
  v32 = v85;
  v85[16] = v83;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v87, v88))
  {
    v33 = v45;
    v38 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = 1;
    v39 = sub_225EF5468(1, v36, v36);
    v40 = sub_225EF5468(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v93;
    v93 = v38;
    v42 = &v92;
    v92 = v39;
    v43 = &v91;
    v91 = v40;
    sub_225EF54BC(2, &v93);
    sub_225EF54BC(3, v41);
    v89 = v66;
    v90 = v67;
    sub_225EF73E8(&v89, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v89 = v68;
      v90 = v69;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[7] = 0;
      v89 = v70;
      v90 = v71;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[6] = 0;
      v89 = v72;
      v90 = v73;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[5] = 0;
      v89 = v74;
      v90 = v75;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[4] = 0;
      v89 = v76;
      v90 = v77;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[3] = 0;
      v89 = v78;
      v90 = v79;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[2] = 0;
      v89 = v80;
      v90 = v81;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[1] = 0;
      v89 = v83;
      v90 = v84;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_225EEB000, v87, v88, "%@ %s:%ld queue task complete", v38, 0x20u);
      v35[0] = 1;
      sub_225EF7AF4(v39, 1, v36);
      sub_225EF7AF4(v40, v35[0], MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v87);
  return (*(v48 + 8))(v47, v50);
}

uint64_t sub_225FEC990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a5;
  v5[7] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[6] = 0;
  v6 = sub_226099D58();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = sub_226098C58();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[3] = a4;
  v5[4] = a5;

  return MEMORY[0x2822009F8](sub_225FECB44, 0, 0);
}

uint64_t sub_225FECB44()
{
  v76 = v0;
  v1 = v0[16];
  v47 = v0[13];
  v48 = v0[12];
  v49 = v0[7];
  v0[2] = v0;
  v2 = sub_225F7E9BC();
  v3 = *(v47 + 16);
  v0[17] = v3;
  v0[18] = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v48);
  MEMORY[0x277D82BE0](v49);
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  v64 = sub_226098C48();
  v65 = sub_22609A0A8();
  v54 = swift_allocObject();
  *(v54 + 16) = 64;
  v55 = swift_allocObject();
  *(v55 + 16) = 8;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_225F3E198;
  *(v51 + 24) = v50;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_225F3E1C8;
  *(v56 + 24) = v51;
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v58 = swift_allocObject();
  *(v58 + 16) = 8;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_225FEAD88;
  *(v52 + 24) = 0;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_225EF7B84;
  *(v59 + 24) = v52;
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_225FF0120;
  *(v53 + 24) = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_225F2D374;
  *(v62 + 24) = v53;
  v0[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v63 = v4;

  *v63 = sub_225EF7434;
  v63[1] = v54;

  v63[2] = sub_225EF7434;
  v63[3] = v55;

  v63[4] = sub_225F3E358;
  v63[5] = v56;

  v63[6] = sub_225EF7434;
  v63[7] = v57;

  v63[8] = sub_225EF7434;
  v63[9] = v58;

  v63[10] = sub_225EF7B90;
  v63[11] = v59;

  v63[12] = sub_225EF7434;
  v63[13] = v60;

  v63[14] = sub_225EF7434;
  v63[15] = v61;

  v63[16] = sub_225EF71D0;
  v63[17] = v62;
  sub_225EF5418();

  if (os_log_type_enabled(v64, v65))
  {
    buf = sub_22609A188();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v44 = sub_225EF5468(1, v42, v42);
    v45 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v71 = buf;
    v72 = v44;
    v73 = v45;
    sub_225EF54BC(2, &v71);
    sub_225EF54BC(3, &v71);
    v74 = sub_225EF7434;
    v75 = v54;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v55;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225F3E358;
    v75 = v56;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v57;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v58;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7B90;
    v75 = v59;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v60;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v61;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF71D0;
    v75 = v62;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    _os_log_impl(&dword_225EEB000, v64, v65, "%@ %s:%ld waiting for finish ", buf, 0x20u);
    sub_225EF7AF4(v44, 1, v42);
    sub_225EF7AF4(v45, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v39 = v46[16];
  v40 = v46[12];
  v41 = v46[8];
  v38 = v46[13];
  MEMORY[0x277D82BD8](v64);
  v5 = *(v38 + 8);
  v46[20] = v5;
  v46[21] = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v39, v40);

  if (v41)
  {
    v6 = swift_task_alloc();
    v46[22] = v6;
    *v6 = v46[2];
    v6[1] = sub_225FEE21C;

    return MEMORY[0x28212BBF0]();
  }

  else
  {
    v20 = v46[17];
    v7 = v46[15];
    v19 = v46[12];
    v21 = v46[7];
    v8 = sub_225F7E9BC();
    v20(v7, v8, v19);
    MEMORY[0x277D82BE0](v21);
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    oslog = sub_226098C48();
    v37 = sub_22609A0A8();
    v26 = swift_allocObject();
    *(v26 + 16) = 64;
    v27 = swift_allocObject();
    *(v27 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_225F3E198;
    *(v23 + 24) = v22;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_225F3E1C8;
    *(v28 + 24) = v23;
    v29 = swift_allocObject();
    *(v29 + 16) = 32;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_225FEAD88;
    *(v24 + 24) = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_225EF7B84;
    *(v31 + 24) = v24;
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_225FF012C;
    *(v25 + 24) = 0;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_225F2D374;
    *(v34 + 24) = v25;
    sub_22609A4F8();
    v35 = v9;

    *v35 = sub_225EF7434;
    v35[1] = v26;

    v35[2] = sub_225EF7434;
    v35[3] = v27;

    v35[4] = sub_225F3E358;
    v35[5] = v28;

    v35[6] = sub_225EF7434;
    v35[7] = v29;

    v35[8] = sub_225EF7434;
    v35[9] = v30;

    v35[10] = sub_225EF7B90;
    v35[11] = v31;

    v35[12] = sub_225EF7434;
    v35[13] = v32;

    v35[14] = sub_225EF7434;
    v35[15] = v33;

    v35[16] = sub_225EF71D0;
    v35[17] = v34;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v37))
    {
      v16 = sub_22609A188();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v17 = sub_225EF5468(1, v15, v15);
      v18 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v66 = v16;
      v67 = v17;
      v68 = v18;
      sub_225EF54BC(2, &v66);
      sub_225EF54BC(3, &v66);
      v69 = sub_225EF7434;
      v70 = v26;
      sub_225EF73E8(&v69, &v66, &v67, &v68);
      v69 = sub_225EF7434;
      v70 = v27;
      sub_225EF73E8(&v69, &v66, &v67, &v68);
      v69 = sub_225F3E358;
      v70 = v28;
      sub_225EF73E8(&v69, &v66, &v67, &v68);
      v69 = sub_225EF7434;
      v70 = v29;
      sub_225EF73E8(&v69, &v66, &v67, &v68);
      v69 = sub_225EF7434;
      v70 = v30;
      sub_225EF73E8(&v69, &v66, &v67, &v68);
      v69 = sub_225EF7B90;
      v70 = v31;
      sub_225EF73E8(&v69, &v66, &v67, &v68);
      v69 = sub_225EF7434;
      v70 = v32;
      sub_225EF73E8(&v69, &v66, &v67, &v68);
      v69 = sub_225EF7434;
      v70 = v33;
      sub_225EF73E8(&v69, &v66, &v67, &v68);
      v69 = sub_225EF71D0;
      v70 = v34;
      sub_225EF73E8(&v69, &v66, &v67, &v68);
      _os_log_impl(&dword_225EEB000, oslog, v37, "%@ %s:%ld finished ", v16, 0x20u);
      sub_225EF7AF4(v17, 1, v15);
      sub_225EF7AF4(v18, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v13 = v46[20];
    v14 = v46[15];
    v12 = v46[12];
    MEMORY[0x277D82BD8](oslog);
    v13(v14, v12);

    v10 = *(v46[2] + 8);

    return v10();
  }
}

uint64_t sub_225FEE21C()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 184) = v0;

  if (v0)
  {
    v2 = sub_225FEEEFC;
  }

  else
  {

    v2 = sub_225FEE398;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225FEE398()
{
  v39 = v0;
  v0[2] = v0;
  v14 = v0[23];
  v16 = v0[17];
  v1 = v0[15];
  v15 = v0[12];
  v17 = v0[7];
  v2 = sub_225F7E9BC();
  v16(v1, v2, v15);
  MEMORY[0x277D82BE0](v17);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v32 = sub_226098C48();
  v33 = sub_22609A0A8();
  v22 = swift_allocObject();
  *(v22 + 16) = 64;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_225F3E198;
  *(v19 + 24) = v18;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_225F3E1C8;
  *(v24 + 24) = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_225FEAD88;
  *(v20 + 24) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_225EF7B84;
  *(v27 + 24) = v20;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_225FF012C;
  *(v21 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_225F2D374;
  *(v30 + 24) = v21;
  sub_22609A4F8();
  v31 = v3;

  *v31 = sub_225EF7434;
  v31[1] = v22;

  v31[2] = sub_225EF7434;
  v31[3] = v23;

  v31[4] = sub_225F3E358;
  v31[5] = v24;

  v31[6] = sub_225EF7434;
  v31[7] = v25;

  v31[8] = sub_225EF7434;
  v31[9] = v26;

  v31[10] = sub_225EF7B90;
  v31[11] = v27;

  v31[12] = sub_225EF7434;
  v31[13] = v28;

  v31[14] = sub_225EF7434;
  v31[15] = v29;

  v31[16] = sub_225EF71D0;
  v31[17] = v30;
  sub_225EF5418();

  if (os_log_type_enabled(v32, v33))
  {
    buf = sub_22609A188();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v11 = sub_225EF5468(1, v9, v9);
    v12 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v34 = buf;
    v35 = v11;
    v36 = v12;
    sub_225EF54BC(2, &v34);
    sub_225EF54BC(3, &v34);
    v37 = sub_225EF7434;
    v38 = v22;
    sub_225EF73E8(&v37, &v34, &v35, &v36);
    if (v14)
    {
    }

    v37 = sub_225EF7434;
    v38 = v23;
    sub_225EF73E8(&v37, &v34, &v35, &v36);
    v37 = sub_225F3E358;
    v38 = v24;
    sub_225EF73E8(&v37, &v34, &v35, &v36);
    v37 = sub_225EF7434;
    v38 = v25;
    sub_225EF73E8(&v37, &v34, &v35, &v36);
    v37 = sub_225EF7434;
    v38 = v26;
    sub_225EF73E8(&v37, &v34, &v35, &v36);
    v37 = sub_225EF7B90;
    v38 = v27;
    sub_225EF73E8(&v37, &v34, &v35, &v36);
    v37 = sub_225EF7434;
    v38 = v28;
    sub_225EF73E8(&v37, &v34, &v35, &v36);
    v37 = sub_225EF7434;
    v38 = v29;
    sub_225EF73E8(&v37, &v34, &v35, &v36);
    v37 = sub_225EF71D0;
    v38 = v30;
    sub_225EF73E8(&v37, &v34, &v35, &v36);
    _os_log_impl(&dword_225EEB000, v32, v33, "%@ %s:%ld finished ", buf, 0x20u);
    sub_225EF7AF4(v11, 1, v9);
    sub_225EF7AF4(v12, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v7 = v13[20];
  v8 = v13[15];
  v6 = v13[12];
  MEMORY[0x277D82BD8](v32);
  v7(v8, v6);

  v5 = *(v13[2] + 8);

  return v5();
}

uint64_t sub_225FEEEFC()
{
  v71 = v0;
  v60 = v0[23];
  v0[2] = v0;

  v1 = v60;
  v0[5] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
  if (swift_dynamicCast())
  {
    v32 = *(v59 + 184);
    (*(*(v59 + 80) + 8))(*(v59 + 88), *(v59 + 72));
  }

  else
  {
    v22 = *(v59 + 184);
    v21 = *(v59 + 136);
    v7 = *(v59 + 112);
    v20 = *(v59 + 96);

    v8 = v22;
    *(v59 + 48) = v22;
    v9 = sub_225F7E9BC();
    v21(v7, v9, v20);
    v10 = v22;
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    sub_225F3EAE8();

    log = sub_226098C48();
    v31 = sub_22609A098();
    v26 = swift_allocObject();
    *(v26 + 16) = 64;
    v27 = swift_allocObject();
    *(v27 + 16) = 8;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_225F3EA68;
    *(v24 + 24) = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_225F3EA70;
    *(v25 + 24) = v24;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_225F3E1C8;
    *(v28 + 24) = v25;
    sub_22609A4F8();
    v29 = v11;

    *v29 = sub_225EF7434;
    v29[1] = v26;

    v29[2] = sub_225EF7434;
    v29[3] = v27;

    v29[4] = sub_225F3E358;
    v29[5] = v28;
    sub_225EF5418();

    if (os_log_type_enabled(log, v31))
    {
      v17 = sub_22609A188();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v18 = sub_225EF5468(1, v16, v16);
      v19 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v66 = v17;
      v67 = v18;
      v68 = v19;
      sub_225EF54BC(2, &v66);
      sub_225EF54BC(1, &v66);
      v69 = sub_225EF7434;
      v70 = v26;
      sub_225EF73E8(&v69, &v66, &v67, &v68);
      v69 = sub_225EF7434;
      v70 = v27;
      sub_225EF73E8(&v69, &v66, &v67, &v68);
      v69 = sub_225F3E358;
      v70 = v28;
      sub_225EF73E8(&v69, &v66, &v67, &v68);
      _os_log_impl(&dword_225EEB000, log, v31, "Finishing recognition failed with the error: %@", v17, 0xCu);
      sub_225EF7AF4(v18, 1, v16);
      sub_225EF7AF4(v19, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v15 = *(v59 + 184);
    v14 = *(v59 + 160);
    v12 = *(v59 + 112);
    v13 = *(v59 + 96);
    MEMORY[0x277D82BD8](log);
    v14(v12, v13);
  }

  v41 = *(v59 + 136);
  v2 = *(v59 + 120);
  v40 = *(v59 + 96);
  v42 = *(v59 + 56);
  v3 = sub_225F7E9BC();
  v41(v2, v3, v40);
  MEMORY[0x277D82BE0](v42);
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  oslog = sub_226098C48();
  v58 = sub_22609A0A8();
  v47 = swift_allocObject();
  *(v47 + 16) = 64;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_225F3E198;
  *(v44 + 24) = v43;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_225F3E1C8;
  *(v49 + 24) = v44;
  v50 = swift_allocObject();
  *(v50 + 16) = 32;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_225FEAD88;
  *(v45 + 24) = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_225EF7B84;
  *(v52 + 24) = v45;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_225FF012C;
  *(v46 + 24) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_225F2D374;
  *(v55 + 24) = v46;
  sub_22609A4F8();
  v56 = v4;

  *v56 = sub_225EF7434;
  v56[1] = v47;

  v56[2] = sub_225EF7434;
  v56[3] = v48;

  v56[4] = sub_225F3E358;
  v56[5] = v49;

  v56[6] = sub_225EF7434;
  v56[7] = v50;

  v56[8] = sub_225EF7434;
  v56[9] = v51;

  v56[10] = sub_225EF7B90;
  v56[11] = v52;

  v56[12] = sub_225EF7434;
  v56[13] = v53;

  v56[14] = sub_225EF7434;
  v56[15] = v54;

  v56[16] = sub_225EF71D0;
  v56[17] = v55;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v58))
  {
    buf = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v38 = sub_225EF5468(1, v36, v36);
    v39 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v61 = buf;
    v62 = v38;
    v63 = v39;
    sub_225EF54BC(2, &v61);
    sub_225EF54BC(3, &v61);
    v64 = sub_225EF7434;
    v65 = v47;
    sub_225EF73E8(&v64, &v61, &v62, &v63);
    v64 = sub_225EF7434;
    v65 = v48;
    sub_225EF73E8(&v64, &v61, &v62, &v63);
    v64 = sub_225F3E358;
    v65 = v49;
    sub_225EF73E8(&v64, &v61, &v62, &v63);
    v64 = sub_225EF7434;
    v65 = v50;
    sub_225EF73E8(&v64, &v61, &v62, &v63);
    v64 = sub_225EF7434;
    v65 = v51;
    sub_225EF73E8(&v64, &v61, &v62, &v63);
    v64 = sub_225EF7B90;
    v65 = v52;
    sub_225EF73E8(&v64, &v61, &v62, &v63);
    v64 = sub_225EF7434;
    v65 = v53;
    sub_225EF73E8(&v64, &v61, &v62, &v63);
    v64 = sub_225EF7434;
    v65 = v54;
    sub_225EF73E8(&v64, &v61, &v62, &v63);
    v64 = sub_225EF71D0;
    v65 = v55;
    sub_225EF73E8(&v64, &v61, &v62, &v63);
    _os_log_impl(&dword_225EEB000, oslog, v58, "%@ %s:%ld finished ", buf, 0x20u);
    sub_225EF7AF4(v38, 1, v36);
    sub_225EF7AF4(v39, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v34 = *(v59 + 160);
  v35 = *(v59 + 120);
  v33 = *(v59 + 96);
  MEMORY[0x277D82BD8](oslog);
  v34(v35, v33);

  v5 = *(*(v59 + 16) + 8);

  return v5();
}

Swift::Void __swiftcall CoreEmbeddedSpeechAnalyzer.stopAudioDecoding()()
{
  v71 = sub_225F3E198;
  v73 = sub_225F3E1C8;
  v75 = sub_225FF0FAC;
  v76 = sub_225EF7B84;
  v80 = sub_225FF0FDC;
  v83 = sub_225F2D374;
  v85 = sub_225EF7434;
  v87 = sub_225EF7434;
  v89 = sub_225F3E358;
  v91 = sub_225EF7434;
  v93 = sub_225EF7434;
  v95 = sub_225EF7B90;
  v97 = sub_225EF7434;
  v99 = sub_225EF7434;
  v102 = sub_225EF71D0;
  v53 = &unk_2260A0C00;
  v113 = 0;
  v54 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v59 = &v35 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v64 = &v35 - v63;
  v69 = sub_226098C58();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v65 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69);
  v0 = &v35 - v65;
  v66 = &v35 - v65;
  v113 = v1;
  v2 = sub_225F7E9BC();
  (*(v67 + 16))(v0, v2, v69);
  MEMORY[0x277D82BE0](v70);
  v82 = 7;
  v72 = swift_allocObject();
  *(v72 + 16) = v70;
  v106 = sub_226098C48();
  v107 = sub_22609A0A8();
  v78 = 17;
  v86 = swift_allocObject();
  *(v86 + 16) = 64;
  v88 = swift_allocObject();
  v79 = 8;
  *(v88 + 16) = 8;
  v81 = 32;
  v3 = swift_allocObject();
  v4 = v72;
  v74 = v3;
  *(v3 + 16) = v71;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v74;
  v90 = v5;
  *(v5 + 16) = v73;
  *(v5 + 24) = v6;
  v92 = swift_allocObject();
  *(v92 + 16) = 32;
  v94 = swift_allocObject();
  *(v94 + 16) = v79;
  v7 = swift_allocObject();
  v77 = v7;
  *(v7 + 16) = v75;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  v9 = v77;
  v96 = v8;
  *(v8 + 16) = v76;
  *(v8 + 24) = v9;
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  v100 = swift_allocObject();
  *(v100 + 16) = v79;
  v10 = swift_allocObject();
  v84 = v10;
  *(v10 + 16) = v80;
  *(v10 + 24) = 0;
  v11 = swift_allocObject();
  v12 = v84;
  v103 = v11;
  *(v11 + 16) = v83;
  *(v11 + 24) = v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v101 = sub_22609A4F8();
  v104 = v13;

  v14 = v86;
  v15 = v104;
  *v104 = v85;
  v15[1] = v14;

  v16 = v88;
  v17 = v104;
  v104[2] = v87;
  v17[3] = v16;

  v18 = v90;
  v19 = v104;
  v104[4] = v89;
  v19[5] = v18;

  v20 = v92;
  v21 = v104;
  v104[6] = v91;
  v21[7] = v20;

  v22 = v94;
  v23 = v104;
  v104[8] = v93;
  v23[9] = v22;

  v24 = v96;
  v25 = v104;
  v104[10] = v95;
  v25[11] = v24;

  v26 = v98;
  v27 = v104;
  v104[12] = v97;
  v27[13] = v26;

  v28 = v100;
  v29 = v104;
  v104[14] = v99;
  v29[15] = v28;

  v30 = v103;
  v31 = v104;
  v104[16] = v102;
  v31[17] = v30;
  sub_225EF5418();

  if (os_log_type_enabled(v106, v107))
  {
    v32 = v54;
    v46 = sub_22609A188();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v45 = 1;
    v47 = sub_225EF5468(1, v44, v44);
    v48 = sub_225EF5468(v45, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v49 = v112;
    v112[0] = v46;
    v50 = &v111;
    v111 = v47;
    v51 = &v110;
    v110 = v48;
    sub_225EF54BC(2, v112);
    sub_225EF54BC(3, v49);
    v108 = v85;
    v109 = v86;
    sub_225EF73E8(&v108, v49, v50, v51);
    v52 = v32;
    if (v32)
    {

      __break(1u);
    }

    else
    {
      v108 = v87;
      v109 = v88;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v43 = 0;
      v108 = v89;
      v109 = v90;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v42 = 0;
      v108 = v91;
      v109 = v92;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v41 = 0;
      v108 = v93;
      v109 = v94;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v40 = 0;
      v108 = v95;
      v109 = v96;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v39 = 0;
      v108 = v97;
      v109 = v98;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v38 = 0;
      v108 = v99;
      v109 = v100;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v37 = 0;
      v108 = v102;
      v109 = v103;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      _os_log_impl(&dword_225EEB000, v106, v107, "%@ %s:%ld queue task enqueued", v46, 0x20u);
      v36 = 1;
      sub_225EF7AF4(v47, 1, v44);
      sub_225EF7AF4(v48, v36, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v106);
  (*(v67 + 8))(v66, v69);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v70);
  v33 = swift_allocObject();
  v34 = v53;
  *(v33 + 16) = v70;
  v112[1] = v34;
  v112[2] = v33;
  sub_226099DD8();
  (*(v56 + 8))(v59, v55);
  (*(v61 + 8))(v64, v60);
}

uint64_t sub_225FF0FE8(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v2[5] = v2;
  v2[6] = 0;
  v3 = sub_226098C58();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[6] = a2;

  return MEMORY[0x2822009F8](sub_225FF10E0, 0, 0);
}

uint64_t sub_225FF10E0()
{
  v41 = v0;
  v1 = v0[10];
  v17 = v0[9];
  v18 = v0[8];
  v19 = v0[7];
  v0[5] = v0;
  v2 = sub_225F7E9BC();
  (*(v17 + 16))(v1, v2, v18);
  MEMORY[0x277D82BE0](v19);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v34 = sub_226098C48();
  v35 = sub_22609A0A8();
  v24 = swift_allocObject();
  *(v24 + 16) = 64;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_225F3E198;
  *(v21 + 24) = v20;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_225F3E1C8;
  *(v26 + 24) = v21;
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_225FF0FAC;
  *(v22 + 24) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_225EF7B84;
  *(v29 + 24) = v22;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_225FF1EA0;
  *(v23 + 24) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_225F2D374;
  *(v32 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v33 = v3;

  *v33 = sub_225EF7434;
  v33[1] = v24;

  v33[2] = sub_225EF7434;
  v33[3] = v25;

  v33[4] = sub_225F3E358;
  v33[5] = v26;

  v33[6] = sub_225EF7434;
  v33[7] = v27;

  v33[8] = sub_225EF7434;
  v33[9] = v28;

  v33[10] = sub_225EF7B90;
  v33[11] = v29;

  v33[12] = sub_225EF7434;
  v33[13] = v30;

  v33[14] = sub_225EF7434;
  v33[15] = v31;

  v33[16] = sub_225EF71D0;
  v33[17] = v32;
  sub_225EF5418();

  if (os_log_type_enabled(v34, v35))
  {
    buf = sub_22609A188();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v14 = sub_225EF5468(1, v12, v12);
    v15 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v36 = buf;
    v37 = v14;
    v38 = v15;
    sub_225EF54BC(2, &v36);
    sub_225EF54BC(3, &v36);
    v39 = sub_225EF7434;
    v40 = v24;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7434;
    v40 = v25;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225F3E358;
    v40 = v26;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7434;
    v40 = v27;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7434;
    v40 = v28;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7B90;
    v40 = v29;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7434;
    v40 = v30;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7434;
    v40 = v31;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF71D0;
    v40 = v32;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    _os_log_impl(&dword_225EEB000, v34, v35, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v14, 1, v12);
    sub_225EF7AF4(v15, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v8 = v16[10];
  v9 = v16[8];
  v10 = v16[7];
  v7 = v16[9];
  MEMORY[0x277D82BD8](v34);
  (*(v7 + 8))(v8, v9);
  v11 = (v10 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  if (*v11)
  {
    v16[11] = *v11;

    swift_endAccess();
    v6 = swift_task_alloc();
    v16[12] = v6;
    *v6 = v16[5];
    v6[1] = sub_225FF1CC4;

    return MEMORY[0x28212BBD8]();
  }

  else
  {
    swift_endAccess();
    sub_225FF1EAC(v16[7]);

    v4 = *(v16[5] + 8);

    return v4();
  }
}

uint64_t sub_225FF1CC4()
{
  *(*v0 + 40) = *v0;

  return MEMORY[0x2822009F8](sub_225FF1DFC, 0, 0);
}

uint64_t sub_225FF1DFC()
{
  *(v0 + 40) = v0;
  sub_225FF1EAC(*(v0 + 56));

  v1 = *(*(v0 + 40) + 8);

  return v1();
}

uint64_t sub_225FF1EAC(uint64_t a1)
{
  v51 = a1;
  v52 = sub_225F3E198;
  v54 = sub_225F3E1C8;
  v56 = sub_225FF0FAC;
  v57 = sub_225EF7B84;
  v61 = sub_22601D4A4;
  v64 = sub_225F2D374;
  v66 = sub_225EF7434;
  v68 = sub_225EF7434;
  v70 = sub_225F3E358;
  v72 = sub_225EF7434;
  v74 = sub_225EF7434;
  v76 = sub_225EF7B90;
  v78 = sub_225EF7434;
  v80 = sub_225EF7434;
  v83 = sub_225EF71D0;
  v94 = 0;
  v45 = 0;
  v50 = sub_226098C58();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v1 = v35 - v46;
  v47 = v35 - v46;
  v94 = v2;
  v3 = sub_225F7E9BC();
  (*(v48 + 16))(v1, v3, v50);
  MEMORY[0x277D82BE0](v51);
  v63 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v87 = sub_226098C48();
  v88 = sub_22609A0A8();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 64;
  v69 = swift_allocObject();
  v60 = 8;
  *(v69 + 16) = 8;
  v62 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v52;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v71 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = v60;
  v8 = swift_allocObject();
  v58 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v58;
  v77 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v60;
  v11 = swift_allocObject();
  v65 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v65;
  v84 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v82 = sub_22609A4F8();
  v85 = v14;

  v15 = v67;
  v16 = v85;
  *v85 = v66;
  v16[1] = v15;

  v17 = v69;
  v18 = v85;
  v85[2] = v68;
  v18[3] = v17;

  v19 = v71;
  v20 = v85;
  v85[4] = v70;
  v20[5] = v19;

  v21 = v73;
  v22 = v85;
  v85[6] = v72;
  v22[7] = v21;

  v23 = v75;
  v24 = v85;
  v85[8] = v74;
  v24[9] = v23;

  v25 = v77;
  v26 = v85;
  v85[10] = v76;
  v26[11] = v25;

  v27 = v79;
  v28 = v85;
  v85[12] = v78;
  v28[13] = v27;

  v29 = v81;
  v30 = v85;
  v85[14] = v80;
  v30[15] = v29;

  v31 = v84;
  v32 = v85;
  v85[16] = v83;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v87, v88))
  {
    v33 = v45;
    v38 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = 1;
    v39 = sub_225EF5468(1, v36, v36);
    v40 = sub_225EF5468(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v93;
    v93 = v38;
    v42 = &v92;
    v92 = v39;
    v43 = &v91;
    v91 = v40;
    sub_225EF54BC(2, &v93);
    sub_225EF54BC(3, v41);
    v89 = v66;
    v90 = v67;
    sub_225EF73E8(&v89, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v89 = v68;
      v90 = v69;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[7] = 0;
      v89 = v70;
      v90 = v71;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[6] = 0;
      v89 = v72;
      v90 = v73;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[5] = 0;
      v89 = v74;
      v90 = v75;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[4] = 0;
      v89 = v76;
      v90 = v77;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[3] = 0;
      v89 = v78;
      v90 = v79;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[2] = 0;
      v89 = v80;
      v90 = v81;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[1] = 0;
      v89 = v83;
      v90 = v84;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_225EEB000, v87, v88, "%@ %s:%ld queue task complete", v38, 0x20u);
      v35[0] = 1;
      sub_225EF7AF4(v39, 1, v36);
      sub_225EF7AF4(v40, v35[0], MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v87);
  return (*(v48 + 8))(v47, v50);
}

Swift::Void __swiftcall CoreEmbeddedSpeechAnalyzer.requestEagerResult()()
{
  v71 = sub_225F3E198;
  v73 = sub_225F3E1C8;
  v75 = sub_225FF38F4;
  v76 = sub_225EF7B84;
  v80 = sub_225FF3924;
  v83 = sub_225F2D374;
  v85 = sub_225EF7434;
  v87 = sub_225EF7434;
  v89 = sub_225F3E358;
  v91 = sub_225EF7434;
  v93 = sub_225EF7434;
  v95 = sub_225EF7B90;
  v97 = sub_225EF7434;
  v99 = sub_225EF7434;
  v102 = sub_225EF71D0;
  v53 = &unk_2260A0C10;
  v113 = 0;
  v54 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v59 = &v35 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v64 = &v35 - v63;
  v69 = sub_226098C58();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v65 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69);
  v0 = &v35 - v65;
  v66 = &v35 - v65;
  v113 = v1;
  v2 = sub_225F7E9BC();
  (*(v67 + 16))(v0, v2, v69);
  MEMORY[0x277D82BE0](v70);
  v82 = 7;
  v72 = swift_allocObject();
  *(v72 + 16) = v70;
  v106 = sub_226098C48();
  v107 = sub_22609A0A8();
  v78 = 17;
  v86 = swift_allocObject();
  *(v86 + 16) = 64;
  v88 = swift_allocObject();
  v79 = 8;
  *(v88 + 16) = 8;
  v81 = 32;
  v3 = swift_allocObject();
  v4 = v72;
  v74 = v3;
  *(v3 + 16) = v71;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v74;
  v90 = v5;
  *(v5 + 16) = v73;
  *(v5 + 24) = v6;
  v92 = swift_allocObject();
  *(v92 + 16) = 32;
  v94 = swift_allocObject();
  *(v94 + 16) = v79;
  v7 = swift_allocObject();
  v77 = v7;
  *(v7 + 16) = v75;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  v9 = v77;
  v96 = v8;
  *(v8 + 16) = v76;
  *(v8 + 24) = v9;
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  v100 = swift_allocObject();
  *(v100 + 16) = v79;
  v10 = swift_allocObject();
  v84 = v10;
  *(v10 + 16) = v80;
  *(v10 + 24) = 0;
  v11 = swift_allocObject();
  v12 = v84;
  v103 = v11;
  *(v11 + 16) = v83;
  *(v11 + 24) = v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v101 = sub_22609A4F8();
  v104 = v13;

  v14 = v86;
  v15 = v104;
  *v104 = v85;
  v15[1] = v14;

  v16 = v88;
  v17 = v104;
  v104[2] = v87;
  v17[3] = v16;

  v18 = v90;
  v19 = v104;
  v104[4] = v89;
  v19[5] = v18;

  v20 = v92;
  v21 = v104;
  v104[6] = v91;
  v21[7] = v20;

  v22 = v94;
  v23 = v104;
  v104[8] = v93;
  v23[9] = v22;

  v24 = v96;
  v25 = v104;
  v104[10] = v95;
  v25[11] = v24;

  v26 = v98;
  v27 = v104;
  v104[12] = v97;
  v27[13] = v26;

  v28 = v100;
  v29 = v104;
  v104[14] = v99;
  v29[15] = v28;

  v30 = v103;
  v31 = v104;
  v104[16] = v102;
  v31[17] = v30;
  sub_225EF5418();

  if (os_log_type_enabled(v106, v107))
  {
    v32 = v54;
    v46 = sub_22609A188();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v45 = 1;
    v47 = sub_225EF5468(1, v44, v44);
    v48 = sub_225EF5468(v45, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v49 = v112;
    v112[0] = v46;
    v50 = &v111;
    v111 = v47;
    v51 = &v110;
    v110 = v48;
    sub_225EF54BC(2, v112);
    sub_225EF54BC(3, v49);
    v108 = v85;
    v109 = v86;
    sub_225EF73E8(&v108, v49, v50, v51);
    v52 = v32;
    if (v32)
    {

      __break(1u);
    }

    else
    {
      v108 = v87;
      v109 = v88;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v43 = 0;
      v108 = v89;
      v109 = v90;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v42 = 0;
      v108 = v91;
      v109 = v92;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v41 = 0;
      v108 = v93;
      v109 = v94;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v40 = 0;
      v108 = v95;
      v109 = v96;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v39 = 0;
      v108 = v97;
      v109 = v98;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v38 = 0;
      v108 = v99;
      v109 = v100;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v37 = 0;
      v108 = v102;
      v109 = v103;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      _os_log_impl(&dword_225EEB000, v106, v107, "%@ %s:%ld queue task enqueued", v46, 0x20u);
      v36 = 1;
      sub_225EF7AF4(v47, 1, v44);
      sub_225EF7AF4(v48, v36, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v106);
  (*(v67 + 8))(v66, v69);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v70);
  v33 = swift_allocObject();
  v34 = v53;
  *(v33 + 16) = v70;
  v112[1] = v34;
  v112[2] = v33;
  sub_226099DD8();
  (*(v56 + 8))(v59, v55);
  (*(v61 + 8))(v64, v60);
}

uint64_t sub_225FF3930(uint64_t a1, uint64_t a2)
{
  v2[18] = a2;
  v2[14] = v2;
  v2[15] = 0;
  v2[17] = 0;
  v2[26] = 0;
  v2[27] = 0;
  v2[28] = 0;
  v3 = sub_226098C58();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[15] = a2;

  return MEMORY[0x2822009F8](sub_225FF3A38, 0, 0);
}

uint64_t sub_225FF3A38()
{
  v55 = v0;
  v1 = v0[21];
  v30 = v0[20];
  v31 = v0[19];
  v32 = v0[18];
  v0[14] = v0;
  v2 = sub_225F7E9BC();
  (*(v30 + 16))(v1, v2, v31);
  MEMORY[0x277D82BE0](v32);
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  v47 = sub_226098C48();
  v48 = sub_22609A0A8();
  v37 = swift_allocObject();
  *(v37 + 16) = 64;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_225F3E198;
  *(v34 + 24) = v33;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_225F3E1C8;
  *(v39 + 24) = v34;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_225FF38F4;
  *(v35 + 24) = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_225EF7B84;
  *(v42 + 24) = v35;
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_225FF4CC0;
  *(v36 + 24) = 0;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_225F2D374;
  *(v45 + 24) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v46 = v3;

  *v46 = sub_225EF7434;
  v46[1] = v37;

  v46[2] = sub_225EF7434;
  v46[3] = v38;

  v46[4] = sub_225F3E358;
  v46[5] = v39;

  v46[6] = sub_225EF7434;
  v46[7] = v40;

  v46[8] = sub_225EF7434;
  v46[9] = v41;

  v46[10] = sub_225EF7B90;
  v46[11] = v42;

  v46[12] = sub_225EF7434;
  v46[13] = v43;

  v46[14] = sub_225EF7434;
  v46[15] = v44;

  v46[16] = sub_225EF71D0;
  v46[17] = v45;
  sub_225EF5418();

  if (os_log_type_enabled(v47, v48))
  {
    buf = sub_22609A188();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v27 = sub_225EF5468(1, v25, v25);
    v28 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v50 = buf;
    v51 = v27;
    v52 = v28;
    sub_225EF54BC(2, &v50);
    sub_225EF54BC(3, &v50);
    v53 = sub_225EF7434;
    v54 = v37;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7434;
    v54 = v38;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225F3E358;
    v54 = v39;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7434;
    v54 = v40;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7434;
    v54 = v41;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7B90;
    v54 = v42;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7434;
    v54 = v43;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7434;
    v54 = v44;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF71D0;
    v54 = v45;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    _os_log_impl(&dword_225EEB000, v47, v48, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v27, 1, v25);
    sub_225EF7AF4(v28, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v20 = v29[21];
  v21 = v29[19];
  v22 = v29[18];
  v19 = v29[20];
  MEMORY[0x277D82BD8](v47);
  (*(v19 + 8))(v20, v21);
  v23 = (v22 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  v24 = *v23;
  v29[22] = *v23;

  swift_endAccess();
  if (v24)
  {
    v4 = v29[18];
    v29[17] = v24;
    v17 = (v4 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioDurationMs);
    swift_beginAccess();
    v18 = *v17;
    swift_endAccess();
    if (((*&v18 >> 52) & 0x7FFLL) == 0x7FF)
    {
      return sub_22609A3B8("Fatal error", 11, 2, "Double value cannot be converted to Int64 because it is either infinite or NaN", 78, 2, "Swift/IntegerTypes.swift", 24, 2, 6876, 0);
    }

    else if (v18 > -9.22337204e18)
    {
      if (v18 < 9.22337204e18)
      {
        v49 = sub_22609A0D8();
        v12 = v7;
        v13 = v8;
        v29[26] = v49;
        v29[27] = v7;
        v29[28] = v8;
        type metadata accessor for CMTime(0);
        sub_22609A4F8();
        *v9 = v49;
        v9[1] = v12;
        v9[2] = v13;
        sub_225EF5418();
        v14 = v10;
        v29[23] = v10;
        v11 = swift_task_alloc();
        v29[24] = v11;
        *v11 = v29[14];
        v11[1] = sub_225FF499C;

        return MEMORY[0x28212BDD8](v14);
      }

      else
      {
        return sub_22609A3B8("Fatal error", 11, 2, "Double value cannot be converted to Int64 because the result would be greater than Int64.max", 92, 2, "Swift/IntegerTypes.swift", 24, 2, 6882, 0);
      }
    }

    else
    {
      return sub_22609A3B8("Fatal error", 11, 2, "Double value cannot be converted to Int64 because the result would be less than Int64.min", 89, 2, "Swift/IntegerTypes.swift", 24, 2, 6879, 0);
    }
  }

  else
  {
    v15 = (v29[18] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength);
    swift_beginAccess();
    v16 = *v15;
    swift_endAccess();
    v29[16] = v16;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A70, &qword_2260A0AA8);
    sub_226099CE8();
    swift_endAccess();
    sub_225FF4CCC(v29[18]);

    v5 = *(v29[14] + 8);

    return v5();
  }
}

uint64_t sub_225FF499C()
{
  v4 = *v1;
  *(v4 + 112) = *v1;
  *(v4 + 200) = v0;

  if (v0)
  {
    v2 = sub_225FF4BE0;
  }

  else
  {

    v2 = sub_225FF4B18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225FF4B18()
{
  *(v0 + 112) = v0;

  sub_225FF4CCC(*(v0 + 144));

  v1 = *(*(v0 + 112) + 8);

  return v1();
}

uint64_t sub_225FF4BE0()
{
  v3 = v0[25];
  v0[14] = v0;

  sub_225FF4CCC(v0[18]);

  v1 = *(v0[14] + 8);

  return v1();
}

uint64_t sub_225FF4CCC(uint64_t a1)
{
  v51 = a1;
  v52 = sub_225F3E198;
  v54 = sub_225F3E1C8;
  v56 = sub_225FF38F4;
  v57 = sub_225EF7B84;
  v61 = sub_22601D4B0;
  v64 = sub_225F2D374;
  v66 = sub_225EF7434;
  v68 = sub_225EF7434;
  v70 = sub_225F3E358;
  v72 = sub_225EF7434;
  v74 = sub_225EF7434;
  v76 = sub_225EF7B90;
  v78 = sub_225EF7434;
  v80 = sub_225EF7434;
  v83 = sub_225EF71D0;
  v94 = 0;
  v45 = 0;
  v50 = sub_226098C58();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v1 = v35 - v46;
  v47 = v35 - v46;
  v94 = v2;
  v3 = sub_225F7E9BC();
  (*(v48 + 16))(v1, v3, v50);
  MEMORY[0x277D82BE0](v51);
  v63 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v87 = sub_226098C48();
  v88 = sub_22609A0A8();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 64;
  v69 = swift_allocObject();
  v60 = 8;
  *(v69 + 16) = 8;
  v62 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v52;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v71 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = v60;
  v8 = swift_allocObject();
  v58 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v58;
  v77 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v60;
  v11 = swift_allocObject();
  v65 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v65;
  v84 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v82 = sub_22609A4F8();
  v85 = v14;

  v15 = v67;
  v16 = v85;
  *v85 = v66;
  v16[1] = v15;

  v17 = v69;
  v18 = v85;
  v85[2] = v68;
  v18[3] = v17;

  v19 = v71;
  v20 = v85;
  v85[4] = v70;
  v20[5] = v19;

  v21 = v73;
  v22 = v85;
  v85[6] = v72;
  v22[7] = v21;

  v23 = v75;
  v24 = v85;
  v85[8] = v74;
  v24[9] = v23;

  v25 = v77;
  v26 = v85;
  v85[10] = v76;
  v26[11] = v25;

  v27 = v79;
  v28 = v85;
  v85[12] = v78;
  v28[13] = v27;

  v29 = v81;
  v30 = v85;
  v85[14] = v80;
  v30[15] = v29;

  v31 = v84;
  v32 = v85;
  v85[16] = v83;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v87, v88))
  {
    v33 = v45;
    v38 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = 1;
    v39 = sub_225EF5468(1, v36, v36);
    v40 = sub_225EF5468(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v93;
    v93 = v38;
    v42 = &v92;
    v92 = v39;
    v43 = &v91;
    v91 = v40;
    sub_225EF54BC(2, &v93);
    sub_225EF54BC(3, v41);
    v89 = v66;
    v90 = v67;
    sub_225EF73E8(&v89, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v89 = v68;
      v90 = v69;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[7] = 0;
      v89 = v70;
      v90 = v71;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[6] = 0;
      v89 = v72;
      v90 = v73;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[5] = 0;
      v89 = v74;
      v90 = v75;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[4] = 0;
      v89 = v76;
      v90 = v77;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[3] = 0;
      v89 = v78;
      v90 = v79;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[2] = 0;
      v89 = v80;
      v90 = v81;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[1] = 0;
      v89 = v83;
      v90 = v84;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_225EEB000, v87, v88, "%@ %s:%ld queue task complete", v38, 0x20u);
      v35[0] = 1;
      sub_225EF7AF4(v39, 1, v36);
      sub_225EF7AF4(v40, v35[0], MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v87);
  return (*(v48 + 8))(v47, v50);
}