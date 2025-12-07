uint64_t sub_268EE78D8()
{
  v1 = v0[152];
  v5 = v0[151];
  v0[123] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v5);

  v6 = v0[155];
  v2 = v6;
  v0[132] = v6;
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v3 = *(v0[123] + 8);

  return v3();
}

uint64_t sub_268EE7A80()
{
  v1 = v0[159];
  v5 = v0[158];
  v9 = v0[154];
  v7 = v0[147];
  v6 = v0[145];
  v8 = v0[144];
  v0[123] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v5);

  (*(v6 + 8))(v7, v8);
  MEMORY[0x277D82BD8](v9);
  v10 = v0[161];
  v2 = v10;
  v0[132] = v10;
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v3 = *(v0[123] + 8);

  return v3();
}

uint64_t sub_268EE7C7C()
{
  v1 = v0[172];
  v5 = v0[171];
  v0[123] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v5);

  v6 = v0[175];
  v2 = v6;
  v0[130] = v6;
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v3 = *(v0[123] + 8);

  return v3();
}

uint64_t sub_268EE7E40()
{
  v7 = v0[174];
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v0[123] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v7);
  v8 = v0[177];
  v4 = v8;
  v0[130] = v8;
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v5 = *(v0[123] + 8);

  return v5();
}

uint64_t sub_268EE7FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v13 = a2;
  v11 = a3;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v13, v4, v5);
  v17 = &v9 - v10;
  v20 = v6;
  v19 = v7;
  v18 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
  v16 = sub_268F99B44();
  v15 = sub_268F99B24();
  sub_268EEA2EC(v16, v15, v17);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  return sub_268F99BA4();
}

uint64_t sub_268EE8128(uint64_t a1, uint64_t a2)
{
  v3[37] = v2;
  v3[36] = a2;
  v3[35] = a1;
  v3[24] = v3;
  v3[25] = 0;
  v3[26] = 0;
  v3[22] = 0;
  v3[23] = 0;
  v3[29] = 0;
  v3[31] = 0;
  v3[32] = 0;
  v3[33] = 0;
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
  v3[25] = a2;
  v3[26] = v2;

  return MEMORY[0x2822009F8](sub_268EE8378, 0);
}

uint64_t sub_268EE8378(uint64_t a1)
{
  v49 = v1[37];
  v1[24] = v1;
  v45 = sub_268F9B284();
  v2 = sub_268DC7CC8();
  v46 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v45, &dword_268CBE000, v46, "HandleNumericSettingFlowStrategy: makeFailureHandlingIntentResponse.", 68, 2);

  MEMORY[0x277D82BD8](v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
  v48 = sub_268F99B44();
  v1[27] = v48;
  v47 = sub_268D588E0();
  v3 = SettingIntent.settingIdentifier.getter(v47, &protocol witness table for INSetNumericSettingIntent);
  v1[48] = v4;
  v1[22] = v3;
  v1[23] = v4;
  MEMORY[0x277D82BD8](v48);
  sub_268CDE730(v49 + 112, (v1 + 2));
  v51 = v1[5];
  v50 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v51);
  if (((*(v50 + 16))(v51) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v44 + 2);
LABEL_11:
    v26 = v44[43];
    v23 = v44[40];
    v27 = v44[39];

    sub_268F99B34();
    v25 = sub_268F99B44();
    v24 = sub_268F99B24();
    sub_268ECE950(v25, v24, v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);

    sub_268D2DFAC(v27, (v44 + 28), v26);
    v21 = v44[37];
    v20 = sub_268F99B44();
    v19 = sub_268F99B24();
    v22 = sub_268EE97F4(v20, v19);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    v44[29] = v22;
    sub_268CDE730(v21 + 16, (v44 + 7));
    sub_268CDE730(v21 + 16, (v44 + 12));
    __swift_project_boxed_opaque_existential_1(v44 + 12, v44[15]);
    sub_268F997C4();
    v44[30] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
    sub_268D34954();
    sub_268D349B8();
    sub_268F9AF84();
    v17 = v44[43];
    v18 = v44[41];
    v15 = v44[38];
    v14 = v44[35];
    v16 = v44[42];
    v13 = sub_268F99B44();
    v12 = sub_268F99B24();
    sub_268EEA2EC(v13, v12, v15);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    v44[17] = 0;
    v44[18] = 0;
    v44[19] = 0;
    v44[20] = 0;
    v44[21] = 0;
    sub_268CDD6D4();
    _swift_stdlib_has_malloc_size();
    sub_268D31B10();
    v14[3] = sub_268F99C74();
    v14[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_268F998D4();

    sub_268D28414(v44 + 17);
    sub_268D34AC0(v15);

    __swift_destroy_boxed_opaque_existential_0(v44 + 12);
    __swift_destroy_boxed_opaque_existential_0(v44 + 7);

    (*(v16 + 8))(v17, v18);

    v11 = *(v44[24] + 8);

    return v11();
  }

  v42 = sub_268F99B24();
  v43 = [v42 errorDetail];
  if (v43)
  {
    v38 = sub_268F9AE24();
    v39 = v5;
    MEMORY[0x277D82BD8](v43);
    v40 = v38;
    v41 = v39;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  MEMORY[0x277D82BD8](v42);
  v34 = sub_268F99B44();
  v44[34] = v34;
  v35 = SettingIntent.settingIdentifier.getter(v47, &protocol witness table for INSetNumericSettingIntent);
  v36 = v6;
  MEMORY[0x277D82BD8](v34);
  v37 = sub_268E07564(v40, v41, v35, v36);

  __swift_destroy_boxed_opaque_existential_0(v44 + 2);
  if ((v37 & 1) == 0)
  {
    goto LABEL_11;
  }

  v30 = v44[37];
  sub_268F999C4();
  v7 = sub_268F999B4();
  v44[49] = v7;
  v44[31] = v7;
  v28 = sub_268F9B284();
  v8 = sub_268DC7CC8();
  v29 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268F9B734();
  sub_268F9AC14(v28, &dword_268CBE000, v29, "HandleNumericSettingFlowStrategy: makeFailureHandlingIntentResponse using response framework", 92, 2);

  MEMORY[0x277D82BD8](v29);
  v44[50] = *(v30 + 104);

  v33 = sub_268F99B34();
  v44[51] = v33;
  v31 = sub_268F99B44();
  v44[52] = v31;
  v32 = sub_268F99B24();
  v44[53] = v32;
  v9 = swift_task_alloc();
  v44[54] = v9;
  *v9 = v44[24];
  v9[1] = sub_268EE8E70;

  return sub_268ED6344(v33, v31, v32);
}

uint64_t sub_268EE8E70(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 192) = *v2;
  *(v6 + 440) = a1;
  *(v6 + 448) = v1;

  if (v1)
  {
    v3 = sub_268EE9458;
  }

  else
  {
    v5 = *(v6 + 416);

    v3 = sub_268EE9024;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EE9024(uint64_t a1)
{
  v11 = MEMORY[0x277D5BD48];
  v2 = v1[55];
  v10 = v1[37];
  v8 = v1[36];
  v1[24] = v1;
  v1[33] = v2;
  sub_268F99804();

  v9 = swift_task_alloc();
  *(v9 + 16) = v10;
  *(v9 + 24) = v8;
  sub_268F99B94();

  v13 = (v11 + *v11);
  v3 = swift_task_alloc();
  v12[57] = v3;
  *v3 = v12[24];
  v3[1] = sub_268EE91A0;
  v4 = v12[55];
  v5 = v12[47];
  v6 = v12[35];

  return v13(v6, v4, v5);
}

uint64_t sub_268EE91A0()
{
  v4 = *v1;
  *(v4 + 192) = *v1;
  *(v4 + 464) = v0;

  if (v0)
  {
    v2 = sub_268EE962C;
  }

  else
  {
    v2 = sub_268EE9308;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268EE9308()
{
  v6 = v0[55];
  v1 = v0[47];
  v2 = v0[46];
  v3 = v0[45];
  v0[24] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v6);

  v4 = *(v0[24] + 8);

  return v4();
}

uint64_t sub_268EE9458()
{
  v1 = v0[53];
  v5 = v0[52];
  v0[24] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v5);

  v6 = v0[56];
  v2 = v6;
  v0[32] = v6;
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v3 = *(v0[24] + 8);

  return v3();
}

uint64_t sub_268EE962C()
{
  v7 = v0[55];
  v1 = v0[47];
  v2 = v0[46];
  v3 = v0[45];
  v0[24] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v7);
  v8 = v0[58];
  v4 = v8;
  v0[32] = v8;
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v5 = *(v0[24] + 8);

  return v5();
}

uint64_t sub_268EE97F4(void *a1, void *a2)
{
  v68[1] = 0;
  v64 = 0;
  v61 = 0;
  v59 = 0;
  v57 = 0;
  v68[3] = a1;
  v68[2] = a2;
  sub_268D34954();
  v68[0] = sub_268F9B734();
  v51 = [a2 errorDetail];
  if (v51)
  {
    v44 = sub_268F9AE24();
    v45 = v2;
    MEMORY[0x277D82BD8](v51);
    v46 = v44;
    v47 = v45;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v43 = sub_268E07564(v46, v47, 0, 0);

  if (v43)
  {
    v20 = [a1 settingMetadata];
    if (v20)
    {
      v17 = [v20 settingId];
      v18._countAndFlagsBits = sub_268F9AE24();
      v18._object = v7;
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v17);
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v65 = v19;
    if (v19._object)
    {
      v66 = v65;
    }

    else
    {
      v66._countAndFlagsBits = sub_268F9AEF4();
      v66._object = v8;
    }

    NumericSettingIdentifier.init(rawValue:)(v66);
    v16 = v67;
    if (v67 != 13)
    {
      v64 = v67;

      v63 = v16;
      v15 = sub_268E5787C(&v63);

      if (v15)
      {
        v62 = [a2 updatedValue];
        if (v62)
        {
          v12 = v62;
          MEMORY[0x277D82BE0](v62);
          sub_268D35038(&v62);
          v13 = [v12 value];
          MEMORY[0x277D82BD8](v12);
          v14 = v13;
        }

        else
        {
          sub_268D35038(&v62);
          v14 = 0;
        }

        if (v14)
        {
          v61 = v14;

          v60 = v16;
          v11 = sub_268E574DC(&v60, v14);

          if (v11)
          {
            v59 = v11;
            MEMORY[0x277D82BE0](v11);
            v58 = v11;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
            sub_268F9B064();
            MEMORY[0x277D82BD8](v11);
          }

          MEMORY[0x277D82BD8](v14);
        }
      }
    }
  }

  else
  {

    v41 = *(v49 + 160);

    v42 = [a1 settingMetadata];
    if (v42)
    {
      v36 = [v42 settingId];
      v37 = sub_268F9AE24();
      v38 = v3;
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v36);
      v39 = v37;
      v40 = v38;
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    v35 = sub_268F36E44(v41, v39, v40);

    if (v35)
    {
      v57 = v35;
      v34 = sub_268F9B284();
      v4 = sub_268DC7CC8();
      oslog = *v4;
      MEMORY[0x277D82BE0](*v4);
      MEMORY[0x277D82BE0](v35);
      v27 = swift_allocObject();
      *(v27 + 16) = v35;
      v29 = swift_allocObject();
      *(v29 + 16) = 32;
      v30 = swift_allocObject();
      *(v30 + 16) = 8;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_268D350F4;
      *(v28 + 24) = v27;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_268CD7608;
      *(v31 + 24) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      sub_268F9B734();
      v32 = v5;

      *v32 = sub_268CD7600;
      v32[1] = v29;

      v32[2] = sub_268CD7600;
      v32[3] = v30;

      v32[4] = sub_268CD7614;
      v32[5] = v31;
      sub_268CD0F7C();

      if (os_log_type_enabled(oslog, v34))
      {
        buf = sub_268F9B3A4();
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v25 = sub_268CD5448(0, v23, v23);
        v26 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v56[0] = buf;
        v55 = v25;
        v54 = v26;
        sub_268CD549C(2, v56);
        sub_268CD549C(1, v56);
        v52 = sub_268CD7600;
        v53 = v29;
        sub_268CD54B0(&v52, v56, &v55, &v54);
        v52 = sub_268CD7600;
        v53 = v30;
        sub_268CD54B0(&v52, v56, &v55, &v54);
        v52 = sub_268CD7614;
        v53 = v31;
        sub_268CD54B0(&v52, v56, &v55, &v54);
        _os_log_impl(&dword_268CBE000, oslog, v34, "HandleNumericSettingFlowStrategy: rendered punchout button: %s", buf, 0xCu);
        sub_268CD54FC(v25, 0, v23);
        sub_268CD54FC(v26, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();
      }

      else
      {
      }

      MEMORY[0x277D82BD8](oslog);
      MEMORY[0x277D82BE0](v35);
      v56[1] = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
      sub_268F9B064();
      MEMORY[0x277D82BD8](v35);
    }

    else
    {
      v21 = sub_268F9B284();
      v6 = sub_268DC7CC8();
      v22 = *v6;
      MEMORY[0x277D82BE0](*v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14(v21, &dword_268CBE000, v22, "HandleNumericSettingFlowStrategy: could not render punchout button.", 67, 2);

      MEMORY[0x277D82BD8](v22);
    }
  }

  v10 = v68[0];

  sub_268CD7930(v68);
  return v10;
}

uint64_t sub_268EEA2EC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v55 = a3;
  v75 = a1;
  v73 = a2;
  v71 = sub_268EEB490;
  v57 = "HandleNumericSettingFlowStrategy: Updating NL context update with undo direct invocation failed.";
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCA40, &qword_268F9FFF8);
  v58 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v59 = &v21[-v58];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  v60 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62, v8, v9, v10);
  v61 = &v21[-v60];
  v67 = sub_268F999A4();
  v65 = *(v67 - 8);
  v66 = v67 - 8;
  v63 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62, v73, v11, v12);
  v64 = &v21[-v63];
  v91 = &v21[-v63];
  v90 = v13;
  v89 = v14;
  v88 = v3;
  v72 = swift_allocBox();
  v68 = v15;
  v87 = v15;
  v69 = *(v65 + 56);
  v70 = v65 + 56;
  v69(v15, 1, 1, v67);
  v74 = *sub_268E04568();

  MEMORY[0x277D82BE0](v73);

  sub_268E04CF8(v75, v73, v71, v72);

  MEMORY[0x277D82BD8](v73);

  v76 = [v75 settingMetadata];
  if (v76)
  {
    v54 = v76;
    v48 = v76;
    v49 = [v76 settingId];
    v50 = sub_268F9AE24();
    v51 = v17;
    MEMORY[0x277D82BD8](v48);
    *&v16 = MEMORY[0x277D82BD8](v49).n128_u64[0];
    v52 = v50;
    v53 = v51;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v46 = v53;
  v47 = v52;
  if (!v53)
  {
    goto LABEL_18;
  }

  v44 = v47;
  v45 = v46;
  v42 = v46;
  v43 = v47;
  v84 = v47;
  v85 = v46;
  v18 = [v73 oldValue];
  v83 = v18;
  if (v18)
  {
    v38 = &v83;
    v39 = v83;
    MEMORY[0x277D82BE0](v83);
    sub_268D35038(v38);
    v40 = [v39 value];
    MEMORY[0x277D82BD8](v39);
    v41 = v40;
  }

  else
  {
    sub_268D35038(&v83);
    v41 = 0;
  }

  v37 = v41;
  if (!v41)
  {

LABEL_18:
    v22 = sub_268F9B284();
    v24 = *sub_268DC7CC8();
    MEMORY[0x277D82BE0](v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v23 = sub_268F9B734();
    sub_268F9AC14(v22, &dword_268CBE000, v24, v57, 96, 2);

    MEMORY[0x277D82BD8](v24);
    v25 = &v86;
    swift_beginAccess();
    sub_268EEB498(v68, v55);
    swift_endAccess();
  }

  v36 = v37;
  v31 = v37;
  v82 = v37;
  v34 = v79;
  sub_268CDE730(v56 + 112, v79);
  v33 = v80;
  v32 = v81;
  __swift_project_boxed_opaque_existential_1(v34, v80);
  v35 = (*(v32 + 24))(v33);
  __swift_destroy_boxed_opaque_existential_0(v34);
  if (v35)
  {
    v30 = &v77;
    swift_beginAccess();
    sub_268EEB498(v68, v61);
    swift_endAccess();
    if ((*(v65 + 48))(v61, 1, v67) != 1)
    {
      (*(v65 + 32))(v64, v61, v67);
      v27 = 0;
      type metadata accessor for UndoNumericSetting();
      sub_268F44B34(v43, v42, v31);
      v19 = *(*(sub_268F99C24() - 8) + 56);
      v28 = 0;
      v29 = 1;
      v19(v59);
      sub_268F99934();
      (*(v65 + 16))(v55, v64, v67);
      v69(v55, v28, v29, v67);
      (*(v65 + 8))(v64, v67);
      MEMORY[0x277D82BD8](v31);
    }

    sub_268D34AC0(v61);
  }

  v26 = &v78;
  swift_beginAccess();
  sub_268EEB498(v68, v55);
  swift_endAccess();
  MEMORY[0x277D82BD8](v31);
}

uint64_t sub_268EEAC9C(const void *a1, uint64_t a2)
{
  v10 = a1;
  v8 = a2;
  v16 = 0;
  v15 = 0;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v2, v3, v4);
  v11 = &v7 - v9;
  v16 = v5;
  v12 = swift_projectBox();
  v15 = v12;
  sub_268EEB498(v10, v11);
  v13 = &v14;
  swift_beginAccess();
  sub_268EEB72C(v11, v12);
  return swift_endAccess();
}

uint64_t sub_268EEAD84()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);

  return v2;
}

uint64_t sub_268EEAE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for HandleNumericSettingFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C68](a1, a2, v6, a4);
}

uint64_t sub_268EEAF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for HandleNumericSettingFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C70](a1, a2, v6, a4);
}

uint64_t sub_268EEAFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for HandleNumericSettingFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C48](a1, a2, v6, a4);
}

uint64_t sub_268EEB0A8(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268EE55B0(a1, a2);
}

uint64_t sub_268EEB168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for HandleNumericSettingFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C60](a1, a2, v6, a4);
}

uint64_t sub_268EEB23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for HandleNumericSettingFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C58](a1, a2, v6, a4);
}

uint64_t sub_268EEB310(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268EE8128(a1, a2);
}

uint64_t sub_268EEB3E8(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for HandleNumericSettingFlowStrategy();
  v2 = sub_268EEB5E8();
  v3 = sub_268E04070(a1, a2, v7, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

void *sub_268EEB498(const void *a1, void *a2)
{
  v6 = sub_268F999A4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_268EEB5E8()
{
  v2 = qword_2802DE170;
  if (!qword_2802DE170)
  {
    type metadata accessor for HandleNumericSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EEB668(uint64_t a1)
{
  result = sub_268EEB694();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268EEB694()
{
  v2 = qword_2802DE178;
  if (!qword_2802DE178)
  {
    type metadata accessor for HandleNumericSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE178);
    return WitnessTable;
  }

  return v2;
}

void *sub_268EEB72C(const void *a1, void *a2)
{
  v7 = sub_268F999A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
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
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_268EEBA4C()
{
  v2 = *(v0 + qword_280FE37A0);

  return v2;
}

uint64_t sub_268EEBA80@<X0>(uint64_t a1@<X8>)
{
  v4 = qword_280FE3800;
  v2 = sub_268F9AB24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268EEBAEC()
{
  v2 = *(v0 + qword_280FE37C8);

  return v2;
}

uint64_t sub_268EEBB20()
{
  v2 = *(v0 + qword_280FE3808);

  return v2;
}

uint64_t sub_268EEBB54()
{
  v2 = *(v0 + qword_280FE37E0);

  return v2;
}

uint64_t sub_268EEBBB0()
{
  v2 = *(v0 + qword_280FE80B0);

  return v2;
}

uint64_t sub_268EEBBE4()
{
  v2 = *(v0 + qword_280FE80A8);

  return v2;
}

uint64_t sub_268EEBC40()
{
  v2 = *(v0 + qword_280FE37C0);

  return v2;
}

uint64_t sub_268EEBC9C()
{
  v2 = *(v0 + qword_280FE37F8);

  return v2;
}

uint64_t sub_268EEBCD0()
{
  v2 = *(v0 + qword_280FE37A8);

  return v2;
}

uint64_t sub_268EEBD04()
{
  v2 = *(v0 + qword_280FE37B8);

  return v2;
}

uint64_t sub_268EEBD38()
{
  v2 = *(v0 + qword_280FE3818);

  return v2;
}

uint64_t sub_268EEBD6C()
{
  v2 = *(v0 + qword_280FE37E8);

  return v2;
}

uint64_t sub_268EEBDA0()
{
  v2 = *(v0 + qword_280FE37F0);

  return v2;
}

uint64_t sub_268EEBDFC()
{
  v2 = *(v0 + qword_280FE37D8);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_268EEBE60()
{

  v1 = sub_268F9AA34();

  return v1 & 1;
}

uint64_t sub_268EEBF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v146 = a1;
  v156 = a2;
  v147 = a3;
  v148 = a4;
  v149 = a5;
  v150 = a6;
  v157 = a7;
  v151 = a8;
  v152 = a9;
  v153 = a10;
  v154 = a11;
  v161 = a12;
  v162 = a13;
  v163 = a14;
  v155 = a15;
  v204 = 0;
  v202 = 0;
  v203 = 0;
  v200 = 0;
  v201 = 0;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v164 = *v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC060, &unk_268F9D980);
  v144 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, v17, v18, v19);
  v145 = &v69 - v144;
  v158 = sub_268F9AB24();
  v159 = *(v158 - 8);
  v160 = v158 - 8;
  v20 = MEMORY[0x28223BE20](v157, v156, v147, v148);
  v165 = &v69 - v21;
  v206 = *(v164 + qword_280FE8090);
  v205 = *(v164 + qword_280FE8090 + 8);
  v202 = v22;
  v203 = v23;
  v200 = v24;
  v201 = v25;
  v199 = v26;
  v198 = v27;
  v197 = v28;
  v196 = v29;
  v195 = v30;
  v194 = v31;
  v193 = v32;
  v192 = v161;
  v191 = v162;
  v190 = v163;
  v189 = v33;
  v204 = v15;
  v166 = v15;
  if (MEMORY[0x26D62DA00](v20))
  {
    v141 = sub_268F99874();
    v142 = sub_268F9B594();

    v143 = v142;
  }

  else
  {

    v143 = v157;
  }

  v34 = v158;
  v35 = v165;
  v36 = v159;
  v37 = v151;
  *(v166 + qword_280FE37A0) = v143;
  v135 = v204;
  v133 = *(v36 + 16);
  v134 = v36 + 16;
  v133(v35, v37, v34);
  (*(v159 + 32))(v135 + qword_280FE3800, v165, v158);
  v137 = v204;
  sub_268F9AA44();
  v136 = v188;
  sub_268CDE730(v150, v188);
  *(v137 + qword_280FE37C8) = sub_268F9AA14();
  sub_268F9AB14();
  sub_268CDF9B4();
  v140 = sub_268F9B8A4();
  v138 = *(v159 + 8);
  v139 = v159 + 8;
  v138(v165, v158);
  if (v140)
  {
    v109 = v204;
    v129 = 0;
    SettingIntentCATs = type metadata accessor for GetSettingIntentCATs(0);
    v133(v165, v151, v158);
    v126 = sub_268F9A8C4();
    v107 = v177;
    sub_268CDE730(v150, v177);
    sub_268F9A894();
    v38 = sub_268F9A904();
    v39 = v129;
    *(v109 + qword_280FE3808) = v38;
    v112 = v204;
    SettingIntentCATsSimple = type metadata accessor for GetSettingIntentCATsSimple(v39);
    v133(v165, v151, v158);
    v110 = v176;
    sub_268CDE730(v150, v176);
    sub_268F9A894();
    v40 = sub_268F9A9F4();
    v41 = v129;
    *(v112 + qword_280FE37E0) = v40;
    v115 = v204;
    v114 = type metadata accessor for SettingIntentCATs(v41);
    v133(v165, v151, v158);
    v113 = v175;
    sub_268CDE730(v150, v175);
    sub_268F9A894();
    v42 = sub_268F9A904();
    v43 = v129;
    *(v115 + qword_280FE80B0) = v42;
    v118 = v204;
    v117 = type metadata accessor for SettingIntentCATsSimple(v43);
    v133(v165, v151, v158);
    v116 = v174;
    sub_268CDE730(v150, v174);
    sub_268F9A894();
    v44 = sub_268F9A9F4();
    v45 = v129;
    *(v118 + qword_280FE80A8) = v44;
    v121 = v204;
    v120 = type metadata accessor for SetBinarySettingIntentCATPatternsExecutor(v45);
    v133(v165, v151, v158);
    v119 = v172;
    sub_268CDE730(v150, v172);
    sub_268F9A894();
    v46 = sub_268F9A904();
    v173[3] = v120;
    v173[4] = &off_28798CE80;
    v173[0] = v46;
    sub_268CDF978(v173, v121 + qword_280FE37B0);
    v124 = v204;
    v123 = type metadata accessor for SetBinarySettingIntentCATsSimple(v129);
    v133(v165, v151, v158);
    v122 = v171;
    sub_268CDE730(v150, v171);
    sub_268F9A894();
    v47 = sub_268F9A9F4();
    v48 = v129;
    *(v124 + qword_280FE37C0) = v47;
    v128 = v204;
    SettingIntentCATPatternsExecutor = type metadata accessor for GetSettingIntentCATPatternsExecutor(v48);
    v133(v165, v151, v158);
    v125 = v169;
    sub_268CDE730(v150, v169);
    sub_268F9A894();
    v49 = sub_268F9A904();
    v170[3] = SettingIntentCATPatternsExecutor;
    v170[4] = &off_287994088;
    v170[0] = v49;
    sub_268CDF978(v170, v128 + qword_280FE37D0);
    v132 = v204;
    v131 = type metadata accessor for SettingIntentCATPatternsExecutor(v129);
    v133(v165, v151, v158);
    v130 = v167;
    sub_268CDE730(v150, v167);
    sub_268F9A894();
    v50 = sub_268F9A904();
    v168[3] = v131;
    v168[4] = &off_287992048;
    v168[0] = v50;
    sub_268CDF978(v168, v132 + qword_280FE80A0);
  }

  else
  {
    v88 = v204;
    v104 = 0;
    type metadata accessor for GetSettingIntentCATs(0);
    sub_268CDFA34();
    v51 = sub_268F9A904();
    v52 = v104;
    *(v88 + qword_280FE3808) = v51;
    v91 = v204;
    v90 = type metadata accessor for GetSettingIntentCATsSimple(v52);
    v133(v165, v151, v158);
    v95 = sub_268F9A8C4();
    v89 = v187;
    sub_268CDE730(v150, v187);
    sub_268F9A894();
    v53 = sub_268F9A9F4();
    v54 = v104;
    *(v91 + qword_280FE37E0) = v53;
    v92 = v204;
    type metadata accessor for SettingIntentCATs(v54);
    sub_268CDFA34();
    v55 = sub_268F9A904();
    v56 = v104;
    *(v92 + qword_280FE80B0) = v55;
    v96 = v204;
    v94 = type metadata accessor for SettingIntentCATsSimple(v56);
    v133(v165, v151, v158);
    v93 = v186;
    sub_268CDE730(v150, v186);
    sub_268F9A894();
    v57 = sub_268F9A9F4();
    v58 = v104;
    *(v96 + qword_280FE80A8) = v57;
    v99 = v204;
    v98 = type metadata accessor for SetBinarySettingIntentCATsSimple(v58);
    v133(v165, v151, v158);
    v97 = v185;
    sub_268CDE730(v150, v185);
    sub_268F9A894();
    v59 = sub_268F9A9F4();
    v60 = v104;
    *(v99 + qword_280FE37C0) = v59;
    v101 = v204;
    v100 = type metadata accessor for SetBinarySettingIntentCATPatternsExecutor(v60);
    sub_268CDFA34();
    v61 = sub_268F9A904();
    v184[3] = v100;
    v184[4] = &off_28798CE80;
    v184[0] = v61;
    sub_268CDF978(v184, v101 + qword_280FE37B0);
    v103 = v204;
    v102 = type metadata accessor for GetSettingIntentCATPatternsExecutor(v104);
    sub_268CDFA34();
    v62 = sub_268F9A904();
    v183[3] = v102;
    v183[4] = &off_287994088;
    v183[0] = v62;
    sub_268CDF978(v183, v103 + qword_280FE37D0);
    v106 = v204;
    v105 = type metadata accessor for SettingIntentCATPatternsExecutor(v104);
    sub_268CDFA34();
    v63 = sub_268F9A904();
    v182[3] = v105;
    v182[4] = &off_287992048;
    v182[0] = v63;
    sub_268CDF978(v182, v106 + qword_280FE80A0);
  }

  v70 = v204;

  *(v70 + qword_280FE37F8) = v152;
  v71 = v204;

  *(v71 + qword_280FE37A8) = v153;
  v72 = v204;

  *(v72 + qword_280FE37B8) = v154;
  v73 = v204;

  *(v73 + qword_280FE3818) = v161;
  v74 = v204;

  v64 = v150;
  *(v74 + qword_280FE37E8) = v162;
  v75 = v204;
  v76 = v181;
  sub_268CDE730(v64, v181);
  sub_268CDF978(v76, v75 + qword_280FE3810);
  v77 = v204;

  v65 = v155;
  *(v77 + qword_280FE37F0) = v163;
  v78 = v204;
  MEMORY[0x277D82BE0](v65);
  v66 = v149;
  *(v78 + qword_280FE37D8) = v155;
  v79 = v204;
  v80 = v180;
  sub_268CDE730(v66, v180);
  sub_268CDF978(v80, v79 + qword_280FE3820);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC068, &qword_268FA5B90);
  v83 = 0;
  v82 = sub_268F9B734();
  v81 = type metadata accessor for INIntentSlotValueType(v83);
  sub_268CDFA4C();
  v84 = sub_268F9ADA4();
  v85 = v179;
  sub_268CDE730(v149, v179);
  v86 = v178;
  sub_268CDE730(v150, v178);
  v67 = sub_268F99BD4();
  (*(*(v67 - 8) + 56))(v145, 1);
  v87 = sub_268F99AA4();

  v204 = v87;
  MEMORY[0x277D82BD8](v155);

  v138(v151, v158);

  __swift_destroy_boxed_opaque_existential_0(v150);
  __swift_destroy_boxed_opaque_existential_0(v149);

  return v87;
}

uint64_t sub_268EECD84(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v59 = a1;
  v64 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v53 = "Handling intent in the main process.";
  v54 = &dword_268CBE000;
  v55 = sub_268EEE9B0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  v61 = *v5;
  v60 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59, v64, v56, v57);
  v62 = (v28 - v60);
  v82 = v6;
  v81 = v7;
  v80 = v8;
  v78 = v9;
  v79 = v10;
  v77 = v5;
  v76 = *(v61 + qword_280FE8090);
  v75 = *(v61 + qword_280FE8090 + 8);
  v63 = *(v5 + qword_280FE37D8);
  MEMORY[0x277D82BE0](v63);
  v65 = [v64 settingMetadata];
  if (v65)
  {
    v51 = v65;
    v45 = v65;
    v46 = [v65 settingId];
    v47 = sub_268F9AE24();
    v48 = v11;
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    v49 = v47;
    v50 = v48;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v67 = v49;
  v68 = v50;
  if (v50)
  {
    v69 = v67;
    v70 = v68;
  }

  else
  {
    v69 = sub_268F9AEF4();
    v70 = v12;
    if (v68)
    {
      sub_268CD9D30(&v67);
    }
  }

  v44 = v70;
  sub_268DE0918(v69, v70, v71);

  MEMORY[0x277D82BD8](v63);
  if (v71[3])
  {
    p_dst = &__dst;
    sub_268CDF978(v71, &__dst);
    v42 = v73;
    v43 = v74;
    __swift_project_boxed_opaque_existential_1(p_dst, v73);
    if ((*(v43 + 16))(v64, v42))
    {
      v36 = *sub_268DC866C();
      MEMORY[0x277D82BE0](v36);
      v34 = sub_268F9B284();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v33 = sub_268F9B734();
      v31 = v13;
      MEMORY[0x277D82BE0](v64);
      v28[1] = &v66;
      v66 = v64;
      v28[0] = sub_268D2E630();
      sub_268D59CAC();
      v29 = sub_268F9AE74();
      v30 = v14;
      v31[3] = MEMORY[0x277D837D0];
      v15 = sub_268CDD224();
      v16 = v29;
      v17 = v30;
      v18 = v31;
      v31[4] = v15;
      *v18 = v16;
      v18[1] = v17;
      sub_268CD0F7C();
      v35 = v19;
      sub_268F9AC04(v53, 36, 2, v54, v36, v34);

      MEMORY[0x277D82BD8](v36);
      v40 = &__dst;
      v37 = v73;
      v38 = v74;
      __swift_project_boxed_opaque_existential_1(&__dst, v73);

      MEMORY[0x277D82BE0](v64);
      v20 = swift_allocObject();
      v21 = v58;
      v22 = v52;
      v23 = v59;
      v24 = v38;
      v25 = v20;
      v26 = v64;
      v39 = v25;
      v25[2] = v57;
      v25[3] = v21;
      v25[4] = v22;
      v25[5] = v23;
      v25[6] = v26;
      (*(v24 + 24))();

      return __swift_destroy_boxed_opaque_existential_0(v40);
    }

    __swift_destroy_boxed_opaque_existential_0(&__dst);
  }

  else
  {
    sub_268D28414(v71);
  }

  sub_268EEE378(v59, v64, v56, v62);
  v57(v62);
  sub_268D28378(v62);
}

uint64_t sub_268EED430(void *a1, void (*a2)(id *, __n128), uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v43 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v40 = "Got main process response %@. Handling.";
  v38 = &dword_268CBE000;
  v58 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v52 = 0;
  v51 = 0;
  v29 = *a4;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43, v23, v24, v25);
  v30 = (&v23 - v28);
  v58 = v6;
  v56 = v7;
  v57 = v8;
  v55 = v9;
  v44 = 0;
  v54 = *(v29 + qword_280FE8090);
  v53 = *(v29 + qword_280FE8090 + 8);
  v52 = v10;
  v51 = v11;
  v42 = *sub_268DC866C();
  MEMORY[0x277D82BE0](v42);
  v39 = sub_268F9B284();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v37 = sub_268F9B734();
  v35 = v12;
  MEMORY[0x277D82BE0](v43);
  v32 = &v50;
  v50 = v43;
  v31 = sub_268CDD0DC();
  sub_268CDD1A4();
  v33 = sub_268F9AE74();
  v34 = v13;
  v35[3] = MEMORY[0x277D837D0];
  v14 = sub_268CDD224();
  v15 = v33;
  v16 = v34;
  v17 = v35;
  v35[4] = v14;
  *v17 = v15;
  v17[1] = v16;
  sub_268CD0F7C();
  v41 = v18;
  sub_268F9AC04(v40, 39, 2, v38, v42, v39);

  *&v19 = MEMORY[0x277D82BD8](v42).n128_u64[0];
  v20 = [v43 code];
  v47 = &v49;
  v49 = v20;
  v45 = &v48;
  v48 = 3;
  v46 = type metadata accessor for INGetSettingIntentResponseCode(v44);
  sub_268DDD0E4();
  if (sub_268F9B754())
  {

    MEMORY[0x277D82BE0](v43);
    sub_268EEE378(v26, v27, v43, v30);
  }

  else
  {

    MEMORY[0x277D82BE0](v43);
    sub_268EF11E8(v27, v43, v30);
  }

  v21 = MEMORY[0x277D82BD8](v43);
  v23(v30, v21);
  sub_268D28378(v30);
}

uint64_t sub_268EED844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = v4;
  v5[27] = a4;
  v5[26] = a3;
  v5[25] = a2;
  v5[24] = a1;
  v5[14] = v5;
  v5[15] = 0;
  v5[16] = 0;
  v5[17] = 0;
  v5[18] = 0;
  v5[20] = 0;
  v5[15] = a2;
  v5[16] = a3;
  v5[17] = a4;
  v5[18] = v4;
  return MEMORY[0x2822009F8](sub_268EED8C8, 0);
}

uint64_t sub_268EED8C8()
{
  v1 = v0[28];
  v32 = v0[26];
  v0[14] = v0;
  v31 = *(v1 + qword_280FE37D8);
  MEMORY[0x277D82BE0](v31);
  v33 = [v32 settingMetadata];
  if (v33)
  {
    v25 = [v33 settingId];
    v26 = sub_268F9AE24();
    v27 = v2;
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v25);
    v28 = v26;
    v29 = v27;
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  *(v30 + 96) = v28;
  *(v30 + 104) = v29;
  if (*(v30 + 104))
  {
    v34 = *(v30 + 96);
    v35 = *(v30 + 104);
  }

  else
  {
    v34 = sub_268F9AEF4();
    v35 = v3;
    if (*(v30 + 104))
    {
      sub_268CD9D30(v30 + 96);
    }
  }

  sub_268DE0918(v34, v35, (v30 + 56));

  MEMORY[0x277D82BD8](v31);
  if (*(v30 + 80))
  {
    v24 = *(v30 + 208);
    sub_268CDF978((v30 + 56), (v30 + 16));
    v22 = *(v30 + 40);
    v23 = *(v30 + 48);
    __swift_project_boxed_opaque_existential_1((v30 + 16), v22);
    v4 = (*(v23 + 16))(v24, v22);
    if (v4)
    {
      v13 = *(v30 + 208);
      v5 = sub_268DC866C();
      v18 = *v5;
      MEMORY[0x277D82BE0](*v5);
      v17 = sub_268F9B284();
      *(v30 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v16 = v6;
      MEMORY[0x277D82BE0](v13);
      *(v30 + 152) = v13;
      sub_268D2E630();
      sub_268D59CAC();
      v14 = sub_268F9AE74();
      v15 = v7;
      v16[3] = MEMORY[0x277D837D0];
      v8 = sub_268CDD224();
      *(v30 + 240) = v8;
      v16[4] = v8;
      *v16 = v14;
      v16[1] = v15;
      sub_268CD0F7C();
      sub_268F9AC04("Handling intent in the main process.", 36, 2, &dword_268CBE000, v18, v17);

      MEMORY[0x277D82BD8](v18);
      v19 = *(v30 + 40);
      v20 = *(v30 + 48);
      __swift_project_boxed_opaque_existential_1((v30 + 16), v19);
      v21 = (*(v20 + 32) + **(v20 + 32));
      v9 = swift_task_alloc();
      *(v30 + 248) = v9;
      *v9 = *(v30 + 112);
      v9[1] = sub_268EEDEF8;
      v10 = *(v30 + 208);

      return v21(v10, v19, v20);
    }

    __swift_destroy_boxed_opaque_existential_0((v30 + 16));
  }

  else
  {
    sub_268D28414((v30 + 56));
  }

  sub_268EEE378(*(v30 + 200), *(v30 + 208), *(v30 + 216), *(v30 + 192));
  v12 = *(*(v30 + 112) + 8);

  return v12();
}

uint64_t sub_268EEDEF8(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 112) = *v1;
  *(v3 + 256) = a1;

  return MEMORY[0x2822009F8](sub_268EEE014, 0);
}

uint64_t sub_268EEE014()
{
  v19 = v0[32];
  v15 = v0[30];
  v0[14] = v0;
  v0[20] = v19;
  v1 = sub_268DC866C();
  v18 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v17 = sub_268F9B284();
  sub_268F9B734();
  v16 = v2;
  MEMORY[0x277D82BE0](v19);
  v0[21] = v19;
  sub_268CDD0DC();
  sub_268CDD1A4();
  v3 = sub_268F9AE74();
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = v15;
  *v16 = v3;
  v16[1] = v4;
  sub_268CD0F7C();
  sub_268F9AC04("Got main process response %@. Handling.", 39, 2, &dword_268CBE000, v18, v17);

  v0[22] = [v19 code];
  v0[23] = 3;
  type metadata accessor for INGetSettingIntentResponseCode(0);
  sub_268DDD0E4();
  if (sub_268F9B754())
  {
    v13 = v14[32];
    v11 = v14[26];
    v12 = v14[25];
    v10 = v14[24];
    MEMORY[0x277D82BE0](v13);
    sub_268EEE378(v12, v11, v13, v10);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    v9 = v14[32];
    v8 = v14[26];
    v7 = v14[24];
    MEMORY[0x277D82BE0](v9);
    sub_268EF11E8(v8, v9, v7);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v9);
  }

  __swift_destroy_boxed_opaque_existential_0(v14 + 2);
  v5 = *(v14[14] + 8);

  return v5();
}

void sub_268EEE378(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = sub_268D2E630();
  v38._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v37, &protocol witness table for INGetSettingIntent);
  v38._object = v4;
  if (v4)
  {

    BinarySettingIdentifier.init(rawValue:)(v38);
    if (v40 == 65)
    {

      NumericSettingIdentifier.init(rawValue:)(v38);
      if (v39 == 13)
      {
        v8 = sub_268DC866C();
        v27 = *v8;
        MEMORY[0x277D82BE0](*v8);
        v26 = sub_268F9B294();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        v25 = v9;
        MEMORY[0x277D82BE0](a2);
        sub_268D59CAC();
        v23 = sub_268F9AE74();
        v24 = v10;
        v25[3] = MEMORY[0x277D837D0];
        v25[4] = sub_268CDD224();
        *v25 = v23;
        v25[1] = v24;
        sub_268CD0F7C();
        sub_268F9AC04("GetSettingIntent's settingMetadata contains unsupported setting identifier", 74, 2, &dword_268CBE000, v27, v26);

        MEMORY[0x277D82BD8](v27);
        sub_268D28BD4();
        v11 = swift_allocError();
        *v12 = 1;
        *a4 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_268EEFBC0(a1, a2, a3, a4);
      }
    }

    else
    {
      v5 = sub_268DC7B48();
      v32 = *v5;
      MEMORY[0x277D82BE0](*v5);
      v31 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v30 = v6;
      MEMORY[0x277D82BE0](a2);
      sub_268D59CAC();
      v28 = sub_268F9AE74();
      v29 = v7;
      v30[3] = MEMORY[0x277D837D0];
      v30[4] = sub_268CDD224();
      *v30 = v28;
      v30[1] = v29;
      sub_268CD0F7C();
      sub_268F9AC04("GetSettingTemplatingService.makeIntentHandledDialog normally handling intent: %@", 80, 2, &dword_268CBE000, v32, v31);

      MEMORY[0x277D82BD8](v32);
      sub_268EEE9C8(a1, a2, a3, a4);
    }
  }

  else
  {
    v13 = sub_268DC866C();
    v22 = *v13;
    MEMORY[0x277D82BE0](*v13);
    v21 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v20 = v14;
    MEMORY[0x277D82BE0](a2);
    sub_268D59CAC();
    v18 = sub_268F9AE74();
    v19 = v15;
    v20[3] = MEMORY[0x277D837D0];
    v20[4] = sub_268CDD224();
    *v20 = v18;
    v20[1] = v19;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingIntent has no settingMetadata", 39, 2, &dword_268CBE000, v22, v21);

    MEMORY[0x277D82BD8](v22);
    sub_268D28BD4();
    v16 = swift_allocError();
    *v17 = 2;
    *a4 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    swift_storeEnumTagMultiPayload();
  }
}

void sub_268EEE9C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v122 = a4;
  v130 = a1;
  v132 = a2;
  v131 = a3;
  v124 = "Providing verbose version of DescribeBinarySettingState CAT for %@.";
  v125 = &dword_268CBE000;
  v126 = "GetSettingIntentResponse response has invalid value %@";
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v153 = 0u;
  v154 = 0u;
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v147 = 0;
  v148 = 0;
  v145 = 0;
  v144 = 0;
  v140 = *v4;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v128 = (*(*(v127 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127, v5, v6, v7);
  v129 = (v47 - v128);
  v161 = v47 - v128;
  v133 = sub_268F9AB24();
  v134 = *(v133 - 8);
  v135 = v133 - 8;
  v137 = *(v134 + 64);
  v136 = (v137 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v132, v131, v8, v9);
  v138 = v47 - v136;
  v139 = (v137 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v11, v47 - v136, v12);
  v141 = v47 - v139;
  v160 = v13;
  v159 = v14;
  v158 = v15;
  v157 = v4;
  v156 = *(v140 + qword_280FE8090);
  v155 = *(v140 + qword_280FE8090 + 8);
  *&v142 = sub_268F1A720(v14, v15);
  *(&v142 + 1) = v16;
  *&v143 = v17;
  *(&v143 + 1) = v18;
  if (!v16)
  {
    sub_268D28BD4();
    v47[3] = 1;
    v44 = swift_allocError();
    v45 = v122;
    *v46 = 2;
    *v45 = v44;
    swift_storeEnumTagMultiPayload();
    return;
  }

  v120 = v142;
  v121 = v143;
  v116 = *(&v143 + 1);
  v117 = *(&v142 + 1);
  v118 = v142;
  v153 = v142;
  v154 = v143;
  v119 = sub_268E07A88(v143);
  if (v119 == 2)
  {
    v56 = *sub_268DC866C();
    MEMORY[0x277D82BE0](v56);
    v54 = sub_268F9B294();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v53 = sub_268F9B734();
    v51 = v34;
    MEMORY[0x277D82BE0](v131);
    v48 = &v152;
    v152 = v131;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v49 = sub_268F9AE64();
    v50 = v35;
    v51[3] = MEMORY[0x277D837D0];
    v36 = sub_268CDD224();
    v37 = v49;
    v38 = v50;
    v39 = v51;
    v51[4] = v36;
    *v39 = v37;
    v39[1] = v38;
    sub_268CD0F7C();
    v55 = v40;
    sub_268F9AC04(v126, 54, 2, v125, v56, v54);

    MEMORY[0x277D82BD8](v56);
    sub_268D28BD4();
    v57 = 1;
    v41 = swift_allocError();
    v42 = v122;
    *v43 = 1;
    *v42 = v41;
    swift_storeEnumTagMultiPayload();

    return;
  }

  v115 = v119;
  v107 = v119;
  v151 = v119 & 1;
  v150 = 0;
  v108 = *(v123 + qword_280FE37B8);

  v114 = sub_268F23C10();

  v149 = v114;

  v109 = *(v123 + qword_280FE37A8);

  v110 = sub_268E12F2C();
  v111 = v19;

  v112 = MEMORY[0x26D62DB30](v118, v117, v110, v111);
  v113 = v20;

  v147 = v112;
  v148 = v113;
  MEMORY[0x277D82BE0](v114);
  if (v114)
  {
    v106 = v114;
    v102 = v114;

    v101 = sub_268F9AE14();

    v103 = [v102 integerForKey_];
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](v102);
    v104 = v103;
    v105 = 0;
  }

  else
  {
    v104 = 0;
    v105 = 1;
  }

  v100 = v104;
  if (v105)
  {
    v98 = 0;
  }

  else
  {
    v99 = v100;
    v97 = v100;
    v144 = v100;
    v95 = *(v123 + qword_280FE37A8);

    v96 = sub_268E12F10();

    if (v97 < v96)
    {
      MEMORY[0x277D82BE0](v114);
      if (v114)
      {
        v94 = v114;
        v92 = v114;
        v93 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          __break(1u);
          return;
        }

        v91 = sub_268F9AE14();

        [v92 setInteger:v93 forKey:v91];
        MEMORY[0x277D82BD8](v91);
        MEMORY[0x277D82BD8](v92);
      }

      v89 = *sub_268DC866C();
      MEMORY[0x277D82BE0](v89);
      v87 = sub_268F9B284();
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v86 = sub_268F9B734();
      v84 = v22;

      v84[3] = MEMORY[0x277D837D0];
      v23 = sub_268CDD224();
      v24 = v118;
      v25 = v84;
      v26 = v117;
      v84[4] = v23;
      *v25 = v24;
      v25[1] = v26;
      sub_268CD0F7C();
      v88 = v27;
      sub_268F9AC04(v124, 67, 2, v125, v89, v87);

      MEMORY[0x277D82BD8](v89);
      v150 = 1;
      v90 = 1;
    }

    else
    {
      v90 = 0;
    }

    v98 = v90;
  }

  v28 = v141;
  v74 = v98;
  v29 = sub_268DB98D4();
  v78 = *v29;
  v79 = v29[1];
  v80 = *(v29 + 16);
  v81 = *sub_268DC7BA8();
  MEMORY[0x277D82BE0](v81);
  (*(v134 + 16))(v28, v123 + qword_280FE3800, v133);
  sub_268F9AB14();
  v77 = sub_268F9AB04();
  v76 = *(v134 + 8);
  v75 = v134 + 8;
  v76(v138, v133);
  v76(v141, v133);
  sub_268DB9934(v78, v79, v80, v81, (v77 ^ 1) & 1);
  MEMORY[0x277D82BD8](v81);

  v146 = 45;
  v30 = BinarySettingIdentifier.rawValue.getter();
  v82 = v31;
  v83 = MEMORY[0x26D62DB50](v118, v117, v30);

  if (v83)
  {
    v69 = *(v123 + qword_280FE3808);

    type metadata accessor for SettingsMultiSetting(0);

    v68 = sub_268E067CC(v118, v117, v107 & 1);
    v66 = sub_268E07A88(v116);
    v67 = *(v123 + qword_280FE37C8);

    sub_268CDAE64(v68, v66, v74 & 1, v67);

    v32 = sub_268DB98D4();
    v72 = *v32;
    v70 = v32[1];
    v71 = *(v32 + 16);
    v73 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v73);
    sub_268DB9B78(v72, v70, v71, v73);
    MEMORY[0x277D82BD8](v73);
  }

  else
  {
    v145 = v129;
    v61 = *(v123 + qword_280FE3808);

    type metadata accessor for SettingsBinarySetting(0);

    v60 = SettingsBinarySetting.__allocating_init(settingId:value:)(v118, v117, v107 & 1);
    v58 = sub_268E07A88(v116);
    v59 = *(v123 + qword_280FE37C8);

    sub_268CDA85C(v60, v58, v74 & 1, v59);

    v33 = sub_268DB98D4();
    v64 = *v33;
    v62 = v33[1];
    v63 = *(v33 + 16);
    v65 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v65);
    sub_268DB9B78(v64, v62, v63, v65);
    MEMORY[0x277D82BD8](v65);
  }

  sub_268D28A00(v129, v122);
  sub_268D28378(v129);

  MEMORY[0x277D82BD8](v114);
}

double sub_268EEFA10@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  MEMORY[0x277D82BE0](a3);
  [a3 _intentResponseCode];
  MEMORY[0x277D82BD8](a3);
  type metadata accessor for INIntentResponseCode(0);
  sub_268ECCA4C();
  if (sub_268F9B754())
  {
    MEMORY[0x277D82BE0](a3);
    sub_268EEE378(a2, a1, a3, a4);
  }

  else
  {
    MEMORY[0x277D82BE0](a3);
    sub_268EF11E8(a1, a3, a4);
  }

  *&result = MEMORY[0x277D82BD8](a3).n128_u64[0];
  return result;
}

void sub_268EEFBC0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v155 = a4;
  v164 = a1;
  v166 = a2;
  v165 = a3;
  v157 = "Providing verbose CAT for displayBrightness.";
  v158 = &dword_268CBE000;
  v159 = "Providing spoken-only version of CAT for displayBrightness.";
  v160 = "GetSettingIntentResponse response has invalid value %@";
  v202 = 0;
  v201 = 0;
  v200 = 0;
  v199 = 0;
  v198 = 0;
  v193 = 0;
  v194 = 0;
  v195 = 0;
  v191 = 0;
  v188 = 0;
  v189 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v180 = 0;
  v181 = 0;
  v179 = 0;
  v174 = *v4;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v162 = (*(*(v161 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v161, v5, v6, v7);
  v163 = (v60 - v162);
  v202 = v60 - v162;
  v167 = sub_268F9AB24();
  v168 = *(v167 - 8);
  v169 = v167 - 8;
  v171 = *(v168 + 64);
  v170 = (v171 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v166, v165, v8, v9);
  v172 = v60 - v170;
  v173 = (v171 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v11, v60 - v170, v12);
  v175 = v60 - v173;
  v201 = v13;
  v200 = v14;
  v199 = v15;
  v198 = v4;
  v197 = *(v174 + qword_280FE8090);
  v196 = *(v174 + qword_280FE8090 + 8);
  v176 = sub_268F1B14C(v14, v15);
  v177 = v16;
  v178 = v17;
  if (v16)
  {
    v152 = v176;
    v153 = v177;
    v154 = v178;
    v150 = v178;
    v148 = v177;
    v149 = v176;
    v193 = v176;
    v194 = v177;
    v195 = v178;
    MEMORY[0x277D82BE0](v178);
    v151 = [v150 value];
    if (v151)
    {
      v147 = v151;
      v144 = v151;
      v191 = v151;
      MEMORY[0x277D82BD8](v150);

      v190 = 2;
      v18 = NumericSettingIdentifier.rawValue.getter();
      v145 = v19;
      v146 = MEMORY[0x26D62DB50](v149, v148, v18);

      if ((v146 & 1) == 0)
      {
LABEL_21:
        v87 = sub_268E07C44(v166);
        v88 = v26;
        v188 = v87;
        v189 = v26;
        v82 = MEMORY[0x277D837D0];
        v81 = sub_268F9B734();
        v80 = v27;
        v28 = sub_268E42B68(2);
        v29 = v80;
        *v80 = v28;
        v29[1] = v30;
        v31 = sub_268E42B68(4);
        v32 = v80;
        v80[2] = v31;
        v32[3] = v33;
        v34 = sub_268E42B68(5);
        v35 = v80;
        v80[4] = v34;
        v35[5] = v36;
        sub_268CD0F7C();
        v85 = &v187;
        v187 = v37;
        v38 = sub_268F9AE94();
        v84 = v186;
        v186[0] = v38;
        v186[1] = v39;
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
        sub_268DA6BFC();
        v40 = sub_268F9AFC4();
        v41 = v175;
        v86 = v40;
        sub_268CD9D30(v84);
        sub_268CD7930(v85);
        v95 = 1;
        v185 = v86 & 1;
        v89 = sub_268E42B68(13);
        v91 = v42;
        v43 = sub_268F9AE94();
        v90 = v44;
        v92 = MEMORY[0x26D62DB50](v89, v91, v43);

        v184 = v92 & 1 & v95;
        v45 = sub_268DB98D4();
        v97 = *v45;
        v98 = v45[1];
        v99 = *(v45 + 16);
        v100 = *sub_268DC7BA8();
        MEMORY[0x277D82BE0](v100);
        (*(v168 + 16))(v41, v156 + qword_280FE3800, v167);
        sub_268F9AB14();
        v96 = sub_268F9AB04();
        v94 = *(v168 + 8);
        v93 = v168 + 8;
        v94(v172, v167);
        v94(v175, v167);
        sub_268DB9934(v97, v98, v99, v100, (v96 ^ v95) & 1);
        MEMORY[0x277D82BD8](v100);
        v183 = v163;
        v75 = *(v156 + qword_280FE3808);

        type metadata accessor for SettingsNumericSetting(0);

        MEMORY[0x277D82BE0](v144);
        v74 = SettingsNumericSetting.__allocating_init(settingId:value:)(v149, v148, v144);
        v73 = *(v156 + qword_280FE37C8);

        v71 = *(v156 + qword_280FE3818);

        v72 = sub_268EADBD0();

        sub_268CDB484(v74, v73, v72, v86 & 1, v92 & 1);

        v46 = sub_268DB98D4();
        v78 = *v46;
        v76 = v46[1];
        v77 = *(v46 + 16);
        v79 = *sub_268DC7BA8();
        MEMORY[0x277D82BE0](v79);
        sub_268DB9B78(v78, v76, v77, v79);
        MEMORY[0x277D82BD8](v79);
        sub_268D28A00(v163, v155);
        sub_268D28378(v163);

        MEMORY[0x277D82BD8](v144);

        MEMORY[0x277D82BD8](v150);
        return;
      }

      v137 = *(v156 + qword_280FE37B8);

      v143 = sub_268F23C10();

      v182 = v143;

      v138 = *(v156 + qword_280FE37A8);

      v139 = sub_268E12F2C();
      v140 = v20;

      v141 = MEMORY[0x26D62DB30](v149, v148, v139, v140);
      v142 = v21;

      v180 = v141;
      v181 = v142;
      MEMORY[0x277D82BE0](v143);
      if (v143)
      {
        v136 = v143;
        v132 = v143;

        v131 = sub_268F9AE14();

        v133 = [v132 integerForKey_];
        MEMORY[0x277D82BD8](v131);
        MEMORY[0x277D82BD8](v132);
        v134 = v133;
        v135 = 0;
      }

      else
      {
        v134 = 0;
        v135 = 1;
      }

      v130 = v134;
      if (v135)
      {
LABEL_20:

        MEMORY[0x277D82BD8](v143);
        goto LABEL_21;
      }

      v129 = v130;
      v128 = v130;
      v179 = v130;
      v126 = *(v156 + qword_280FE37A8);

      v127 = sub_268E12F10();

      if (v128 >= v127)
      {
        v22 = v175;
        v110 = *sub_268DC866C();
        MEMORY[0x277D82BE0](v110);
        v108 = sub_268F9B284();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v118 = 0;
        v109 = sub_268F9B734();
        sub_268F9AC04(v159, 59, 2, v158, v110, v108);

        MEMORY[0x277D82BD8](v110);
        v23 = sub_268DB98D4();
        v114 = *v23;
        v115 = v23[1];
        v116 = *(v23 + 16);
        v117 = *sub_268DC7BA8();
        MEMORY[0x277D82BE0](v117);
        (*(v168 + 16))(v22, v156 + qword_280FE3800, v167);
        sub_268F9AB14();
        v113 = sub_268F9AB04();
        v112 = *(v168 + 8);
        v111 = v168 + 8;
        v112(v172, v167);
        v112(v175, v167);
        sub_268DB9934(v114, v115, v116, v117, (v113 ^ 1) & 1);
        MEMORY[0x277D82BD8](v117);
        v121 = *(v156 + qword_280FE3808);

        type metadata accessor for SettingsNumericSetting(v118);

        MEMORY[0x277D82BE0](v144);
        v120 = SettingsNumericSetting.__allocating_init(settingId:value:)(v149, v148, v144);
        v119 = *(v156 + qword_280FE37C8);

        sub_268CDB9C4(v120, v119);

        v24 = sub_268DB98D4();
        v124 = *v24;
        v122 = v24[1];
        v123 = *(v24 + 16);
        v125 = *sub_268DC7BA8();
        MEMORY[0x277D82BE0](v125);
        sub_268DB9B78(v124, v122, v123, v125);
        MEMORY[0x277D82BD8](v125);
        sub_268D28A00(v163, v155);
        sub_268D28378(v163);

        MEMORY[0x277D82BD8](v143);
        MEMORY[0x277D82BD8](v144);

        MEMORY[0x277D82BD8](v150);
        return;
      }

      MEMORY[0x277D82BE0](v143);
      if (!v143)
      {
LABEL_17:
        v103 = *sub_268DC866C();
        MEMORY[0x277D82BE0](v103);
        v101 = sub_268F9B284();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v102 = sub_268F9B734();
        sub_268F9AC04(v157, 44, 2, v158, v103, v101);

        MEMORY[0x277D82BD8](v103);
        goto LABEL_20;
      }

      v107 = v143;
      v105 = v143;
      v106 = v128 + 1;
      if (!__OFADD__(v128, 1))
      {

        v104 = sub_268F9AE14();

        [v105 setInteger:v106 forKey:v104];
        MEMORY[0x277D82BD8](v104);
        MEMORY[0x277D82BD8](v105);
        goto LABEL_17;
      }

      __break(1u);
    }

    else
    {
      MEMORY[0x277D82BD8](v150);
      v69 = *sub_268DC866C();
      MEMORY[0x277D82BE0](v69);
      v67 = sub_268F9B294();
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v66 = sub_268F9B734();
      v64 = v47;
      MEMORY[0x277D82BE0](v165);
      v61 = &v192;
      v192 = v165;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
      v62 = sub_268F9AE64();
      v63 = v48;
      v64[3] = MEMORY[0x277D837D0];
      v49 = sub_268CDD224();
      v50 = v62;
      v51 = v63;
      v52 = v64;
      v64[4] = v49;
      *v52 = v50;
      v52[1] = v51;
      sub_268CD0F7C();
      v68 = v53;
      sub_268F9AC04(v160, 54, 2, v158, v69, v67);

      MEMORY[0x277D82BD8](v69);
      sub_268D28BD4();
      v70 = 1;
      v54 = swift_allocError();
      v55 = v155;
      *v56 = 1;
      *v55 = v54;
      swift_storeEnumTagMultiPayload();

      MEMORY[0x277D82BD8](v150);
    }
  }

  else
  {
    sub_268D28BD4();
    v60[3] = 1;
    v57 = swift_allocError();
    v58 = v155;
    *v59 = 2;
    *v58 = v57;
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268EF1074(uint64_t a1, void *a2, void *a3, void (*a4)(id *), uint64_t a5)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v19 = a5;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v13 = *v5;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v15, v16, v17);
  v18 = (&v12 - v12);
  v27 = v6;
  v26 = v7;
  v25 = v8;
  v23 = v9;
  v24 = v10;
  v22 = v5;
  v21 = *(v13 + qword_280FE8090);
  v20 = *(v13 + qword_280FE8090 + 8);

  sub_268EF11E8(v15, v16, v18);
  v17(v18);
  sub_268D28378(v18);
}

void sub_268EF11E8(void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v19 = [a3 code];
    MEMORY[0x277D82BD8](a3);
    v20 = v19;
    v21 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 1;
  }

  if (v21)
  {
    v9 = sub_268DC866C();
    v13 = *v9;
    MEMORY[0x277D82BE0](*v9);
    v12 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("GetSettingIntentResponse does not exist", 39, 2, &dword_268CBE000, v13, v12);

    MEMORY[0x277D82BD8](v13);
    sub_268D28BD4();
    v10 = swift_allocError();
    *v11 = 2;
    *a4 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    swift_storeEnumTagMultiPayload();
  }

  else if (v20 == 6)
  {

    sub_268F537E4();
  }

  else if (v20 == 7)
  {
    sub_268EF162C(a2, a3, a4);
  }

  else
  {
    v4 = sub_268DC866C();
    v18 = *v4;
    MEMORY[0x277D82BE0](*v4);
    v17 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v16 = v5;
    MEMORY[0x277D82BE0](a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v14 = sub_268F9AE64();
    v15 = v6;
    v16[3] = MEMORY[0x277D837D0];
    v16[4] = sub_268CDD224();
    *v16 = v14;
    v16[1] = v15;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingIntentResponse contains unsupported error code: %@", 60, 2, &dword_268CBE000, v18, v17);

    MEMORY[0x277D82BD8](v18);
    sub_268D284D4();
    v7 = swift_allocError();
    *v8 = 7;
    *a4 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    swift_storeEnumTagMultiPayload();
  }
}

void sub_268EF162C(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v196 = a3;
  v208 = a1;
  v216 = a2;
  v198 = "GetSettingIntentResponse 'other reason' error code contains unsupported error detail: %@";
  v199 = &dword_268CBE000;
  v200 = "GetSettingIntentResponse contains error code 'other reason' but no details: %@";
  v242 = 0;
  v241 = 0;
  v240 = 0;
  v239 = 0;
  v236 = 0;
  v237 = 0;
  v224 = 0;
  v225 = 0;
  v221 = 0;
  v222 = 0;
  v219 = 0;
  v217 = 0;
  v218 = 0;
  v214 = *v3;
  v201 = sub_268F9AB24();
  v202 = *(v201 - 8);
  v203 = v201 - 8;
  v204 = (*(v202 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v201, v4, v5, v6);
  v205 = v77 - v204;
  v206 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v77 - v204, v8, v9, v10);
  v207 = v77 - v206;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v211 = *(*(v209 - 8) + 64);
  v210 = (v211 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v216, v11, v12, v13);
  v212 = (v77 - v210);
  v213 = (v211 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v15, v16, v17);
  v215 = (v77 - v213);
  v242 = v77 - v213;
  v241 = v18;
  v240 = v19;
  v239 = v3;
  v238[2] = *(v214 + qword_280FE8090);
  v238[1] = *(v214 + qword_280FE8090 + 8);
  MEMORY[0x277D82BE0](v19);
  if (v216)
  {
    v195 = v216;
    v193 = v216;
    v194 = [v216 errorDetail];
    if (v194)
    {
      v192 = v194;
      v187 = v194;
      v188 = sub_268F9AE24();
      v189 = v20;
      MEMORY[0x277D82BD8](v187);
      v190 = v188;
      v191 = v189;
    }

    else
    {
      v190 = 0;
      v191 = 0;
    }

    v184 = v191;
    v183 = v190;
    MEMORY[0x277D82BD8](v193);
    v185 = v183;
    v186 = v184;
  }

  else
  {
    v185 = 0;
    v186 = 0;
  }

  v181 = v186;
  v182 = v185;
  if (v186)
  {
    v179 = v182;
    v180 = v181;
    v21 = v207;
    v176 = v181;
    v175 = v182;
    v236 = v182;
    v237 = v181;
    v166 = sub_268D28BD4();
    v169 = 1;
    v22 = swift_allocError();
    v23 = v215;
    *v24 = 4;
    *v23 = v22;
    swift_storeEnumTagMultiPayload();
    v25 = sub_268DB98D4();
    v171 = *v25;
    v172 = v25[1];
    v173 = *(v25 + 16);
    v174 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v174);
    (*(v202 + 16))(v21, v197 + qword_280FE3800, v201);
    sub_268F9AB14();
    v170 = sub_268F9AB04();
    v168 = *(v202 + 8);
    v167 = v202 + 8;
    v168(v205, v201);
    v168(v207, v201);
    sub_268DB9934(v171, v172, v173, v174, (v170 ^ v169) & 1);
    MEMORY[0x277D82BD8](v174);

    v26 = sub_268E948B8(3);
    v177 = v235;
    v235[0] = v26;
    v235[1] = v27;
    v234[2] = v175;
    v234[3] = v176;
    v178 = MEMORY[0x26D62DB50](v26, v27, v175, v176);
    sub_268CD9D30(v177);
    if (v178)
    {

      v165 = [v208 settingMetadata];
      if (v165)
      {
        v164 = v165;
        v158 = v165;
        v159 = [v165 settingId];
        v160 = sub_268F9AE24();
        v161 = v28;
        MEMORY[0x277D82BD8](v158);
        MEMORY[0x277D82BD8](v159);
        v162 = v160;
        v163 = v161;
      }

      else
      {
        v162 = 0;
        v163 = 0;
      }

      v156 = v163;
      v157 = v162;
      if (!v163)
      {
        v142 = 1;
        v29 = swift_allocError();
        v30 = v212;
        *v31 = 2;
        *v30 = v29;
        swift_storeEnumTagMultiPayload();
        sub_268D28630(v212, v215);
        v32 = sub_268DB98D4();
        v145 = *v32;
        v143 = v32[1];
        v144 = *(v32 + 16);
        v146 = *sub_268DC7BA8();
        MEMORY[0x277D82BE0](v146);
        sub_268DB9B78(v145, v143, v144, v146);
        MEMORY[0x277D82BD8](v146);
        sub_268D28718(v215, v196);

        return;
      }

      v154 = v157;
      v155 = v156;
      v152 = v156;
      v153 = v157;
      v217 = v157;
      v218 = v156;
      if (sub_268E07AE4(v157, v156))
      {
        v151 = *(v197 + qword_280FE80B0);

        type metadata accessor for SettingsBinarySetting(0);

        v150 = SettingsBinarySetting.__allocating_init(settingId:value:)(v153, v152, 0);
        v149 = *(v197 + qword_280FE37C8);

        sub_268F54220(v150, v149, 2);

        sub_268D28630(v212, v215);
      }

      else if (sub_268E07B94(v153, v152))
      {
        v148 = *(v197 + qword_280FE80B0);

        v147 = *(v197 + qword_280FE37C8);

        sub_268F548D0(v147);

        sub_268D28630(v212, v215);
      }
    }

    else
    {

      v33 = sub_268E948B8(17);
      v140 = v234;
      v234[0] = v33;
      v234[1] = v34;
      v233[2] = v175;
      v233[3] = v176;
      v141 = MEMORY[0x26D62DB50](v33, v34, v175, v176);
      sub_268CD9D30(v140);
      if (v141)
      {

        v223 = v208;
        v35 = sub_268D2E630();
        v138 = SettingIntent.settingIdentifier.getter(v35, &protocol witness table for INGetSettingIntent);
        v139 = v36;
        if (!v36)
        {
          v125 = 1;
          v38 = swift_allocError();
          v39 = v212;
          *v40 = 2;
          *v39 = v38;
          swift_storeEnumTagMultiPayload();
          sub_268D28630(v212, v215);
          v41 = sub_268DB98D4();
          v128 = *v41;
          v126 = v41[1];
          v127 = *(v41 + 16);
          v129 = *sub_268DC7BA8();
          MEMORY[0x277D82BE0](v129);
          sub_268DB9B78(v128, v126, v127, v129);
          MEMORY[0x277D82BD8](v129);
          sub_268D28718(v215, v196);

          return;
        }

        v136 = v138;
        v137 = v139;
        v135 = v139;
        v131 = v138;
        v221 = v138;
        v222 = v139;
        v130 = *(v197 + qword_280FE37F8);

        v37._countAndFlagsBits = v131;
        v37._object = v135;
        BinarySettingIdentifier.init(rawValue:)(v37);
        v220[0] = v220[1];
        v132 = sub_268F397B4(v220);

        v219 = v132;
        v134 = *(v197 + qword_280FE3808);

        type metadata accessor for SettingsBinarySetting(0);

        v133 = SettingsBinarySetting.__allocating_init(settingId:value:)(v131, v135, 0);
        sub_268CDBDD0(v133, v132);

        sub_268D28630(v212, v215);
      }

      else
      {

        v42 = sub_268E948B8(7);
        v123 = v233;
        v233[0] = v42;
        v233[1] = v43;
        v232[2] = v175;
        v232[3] = v176;
        v124 = MEMORY[0x26D62DB50](v42, v43, v175, v176);
        sub_268CD9D30(v123);
        if (v124)
        {

          v226 = v208;
          v44 = sub_268D2E630();
          v121 = SettingIntent.settingIdentifier.getter(v44, &protocol witness table for INGetSettingIntent);
          v122 = v45;
          if (!v45)
          {
            v110 = 1;
            v46 = swift_allocError();
            v47 = v212;
            *v48 = 2;
            *v47 = v46;
            swift_storeEnumTagMultiPayload();
            sub_268D28630(v212, v215);
            v49 = sub_268DB98D4();
            v113 = *v49;
            v111 = v49[1];
            v112 = *(v49 + 16);
            v114 = *sub_268DC7BA8();
            MEMORY[0x277D82BE0](v114);
            sub_268DB9B78(v113, v111, v112, v114);
            MEMORY[0x277D82BD8](v114);
            sub_268D28718(v215, v196);

            return;
          }

          v119 = v121;
          v120 = v122;
          v118 = v122;
          v115 = v121;
          v224 = v121;
          v225 = v122;
          v117 = *(v197 + qword_280FE80B0);

          type metadata accessor for SettingsBinarySetting(0);

          v116 = SettingsBinarySetting.__allocating_init(settingId:value:)(v115, v118, 0);
          sub_268F5525C(v116);

          sub_268D28630(v212, v215);
        }

        else
        {

          v50 = sub_268E948B8(23);
          v108 = v232;
          v232[0] = v50;
          v232[1] = v51;
          v231[1] = v175;
          v231[2] = v176;
          v109 = MEMORY[0x26D62DB50](v50, v51, v175, v176);
          sub_268CD9D30(v108);
          if (v109)
          {

            v101 = 0;
            type metadata accessor for SettingIntentCATs(0);
            sub_268CDFA34();
            v107 = sub_268F9A904();
            v102 = *(v197 + qword_280FE37E8);

            v230 = v208;
            v52 = sub_268D2E630();
            v53 = SettingIntent.deviceCategory.getter(v52, &protocol witness table for INGetSettingIntent);
            v105 = sub_268D3DD54(v53, v54 & 1);

            v106 = v227;
            sub_268CDE730(v197 + qword_280FE3810, v227);
            v104 = v228;
            v103 = v229;
            __swift_project_boxed_opaque_existential_1(v106, v228);
            v55 = sub_268F997F4();
            sub_268F5767C(v105 & 1, v55 & 1);
            __swift_destroy_boxed_opaque_existential_0(v106);
          }

          else
          {

            v99 = *sub_268DC866C();
            MEMORY[0x277D82BE0](v99);
            v97 = sub_268F9B294();
            v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
            v96 = sub_268F9B734();
            v94 = v56;
            MEMORY[0x277D82BE0](v216);
            v91 = v231;
            v231[0] = v216;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
            v92 = sub_268F9AE64();
            v93 = v57;
            v94[3] = MEMORY[0x277D837D0];
            v58 = sub_268CDD224();
            v59 = v92;
            v60 = v93;
            v61 = v94;
            v94[4] = v58;
            *v61 = v59;
            v61[1] = v60;
            sub_268CD0F7C();
            v98 = v62;
            sub_268F9AC04(v198, 88, 2, v199, v99, v97);

            MEMORY[0x277D82BD8](v99);
            v100 = 1;
            v63 = swift_allocError();
            v64 = v212;
            *v65 = 4;
            *v64 = v63;
            swift_storeEnumTagMultiPayload();
          }

          sub_268D28630(v212, v215);
        }
      }
    }

    v66 = sub_268DB98D4();
    v89 = *v66;
    v87 = v66[1];
    v88 = *(v66 + 16);
    v90 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v90);
    sub_268DB9B78(v89, v87, v88, v90);
    MEMORY[0x277D82BD8](v90);
    sub_268D28718(v215, v196);
  }

  else
  {
    v85 = *sub_268DC866C();
    MEMORY[0x277D82BE0](v85);
    v83 = sub_268F9B294();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v82 = sub_268F9B734();
    v80 = v67;
    MEMORY[0x277D82BE0](v216);
    v77[1] = v238;
    v238[0] = v216;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v78 = sub_268F9AE64();
    v79 = v68;
    v80[3] = MEMORY[0x277D837D0];
    v69 = sub_268CDD224();
    v70 = v78;
    v71 = v79;
    v72 = v80;
    v80[4] = v69;
    *v72 = v70;
    v72[1] = v71;
    sub_268CD0F7C();
    v84 = v73;
    sub_268F9AC04(v200, 78, 2, v199, v85, v83);

    MEMORY[0x277D82BD8](v85);
    sub_268D28BD4();
    v86 = 1;
    v74 = swift_allocError();
    v75 = v196;
    *v76 = 3;
    *v75 = v74;
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268EF27A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = v3;
  v4[11] = a3;
  v4[10] = a2;
  v4[9] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  return MEMORY[0x2822009F8](sub_268EF2820, 0);
}

uint64_t sub_268EF2820()
{
  v1 = v0[11];
  v12 = v1;
  v0[2] = v0;
  MEMORY[0x277D82BE0](v1);
  v13 = [v12 _intentResponseCode];
  MEMORY[0x277D82BD8](v12);
  v0[7] = v13;
  v0[8] = 4;
  type metadata accessor for INIntentResponseCode(0);
  sub_268ECCA4C();
  if (sub_268F9B754())
  {
    v10 = v11[11];
    MEMORY[0x277D82BE0](v10);
    v2 = swift_task_alloc();
    v11[13] = v2;
    *v2 = v11[2];
    v2[1] = sub_268EF2A5C;
    v3 = v11[10];
    v4 = v11[9];

    return sub_268EF2F84(v3, v4, v10);
  }

  else
  {
    v9 = v11[11];
    MEMORY[0x277D82BE0](v9);
    v6 = swift_task_alloc();
    v11[15] = v6;
    *v6 = v11[2];
    v6[1] = sub_268EF2C38;
    v7 = v11[10];
    v8 = v11[9];

    return sub_268EFA4A4(v7, v8, v9);
  }
}

uint64_t sub_268EF2A5C(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 112) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268EF2E14, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268EF2C38(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 128) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268EF2ECC, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268EF2E14()
{
  v1 = *(v0 + 88);
  *(v0 + 16) = v0;
  v2 = MEMORY[0x277D82BD8](v1);
  v3 = *(*(v0 + 16) + 8);

  return v3(v5, v2);
}

uint64_t sub_268EF2ECC()
{
  v1 = *(v0 + 88);
  *(v0 + 16) = v0;
  v2 = MEMORY[0x277D82BD8](v1);
  v3 = *(*(v0 + 16) + 8);

  return v3(v5, v2);
}

uint64_t sub_268EF2F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[15] = a3;
  v4[14] = a2;
  v4[13] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = v3;
  return MEMORY[0x2822009F8](sub_268EF3008, 0);
}

uint64_t sub_268EF3008()
{
  v1 = v0[14];
  v0[4] = v0;
  v0[9] = v1;
  v43 = sub_268D2E630();
  v44._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v43, &protocol witness table for INGetSettingIntent);
  v44._object = v2;
  v0[17] = v2;
  if (v2)
  {
    v42[2] = v44._countAndFlagsBits;
    v42[3] = v2;

    BinarySettingIdentifier.init(rawValue:)(v44);
    if (v45 != 65)
    {
      v36 = v42[14];
      v3 = sub_268DC7B48();
      v41 = *v3;
      MEMORY[0x277D82BE0](*v3);
      v40 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v39 = v4;
      MEMORY[0x277D82BE0](v36);
      v42[12] = v36;
      sub_268D59CAC();
      v37 = sub_268F9AE74();
      v38 = v5;
      v39[3] = MEMORY[0x277D837D0];
      v39[4] = sub_268CDD224();
      *v39 = v37;
      v39[1] = v38;
      sub_268CD0F7C();
      sub_268F9AC04("GetSettingTemplatingService.makeIntentHandledDialog normally handling intent: %@", 80, 2, &dword_268CBE000, v41, v40);

      MEMORY[0x277D82BD8](v41);
      v6 = swift_task_alloc();
      v42[18] = v6;
      *v6 = v42[4];
      v6[1] = sub_268EF3834;
      v7 = v42[15];
      v8 = v42[14];
      v9 = v42[13];

      return sub_268EF5148(v9, v8, v7);
    }

    NumericSettingIdentifier.init(rawValue:)(v44);
    if (v46 != 13)
    {
      v11 = swift_task_alloc();
      v42[21] = v11;
      *v11 = v42[4];
      v11[1] = sub_268EF3A5C;
      v12 = v42[15];
      v13 = v42[14];
      v14 = v42[13];

      return sub_268EF7CE0(v14, v13, v12);
    }

    v30 = v42[14];
    v15 = sub_268DC866C();
    v35 = *v15;
    MEMORY[0x277D82BE0](*v15);
    v34 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v33 = v16;
    MEMORY[0x277D82BE0](v30);
    v42[11] = v30;
    sub_268D59CAC();
    v31 = sub_268F9AE74();
    v32 = v17;
    v33[3] = MEMORY[0x277D837D0];
    v33[4] = sub_268CDD224();
    *v33 = v31;
    v33[1] = v32;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingIntent's settingMetadata contains unsupported setting identifier", 74, 2, &dword_268CBE000, v35, v34);

    MEMORY[0x277D82BD8](v35);
    sub_268D28BD4();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  else
  {
    v24 = v42[14];
    v19 = sub_268DC866C();
    v29 = *v19;
    MEMORY[0x277D82BE0](*v19);
    v28 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v27 = v20;
    MEMORY[0x277D82BE0](v24);
    v42[10] = v24;
    sub_268D59CAC();
    v25 = sub_268F9AE74();
    v26 = v21;
    v27[3] = MEMORY[0x277D837D0];
    v27[4] = sub_268CDD224();
    *v27 = v25;
    v27[1] = v26;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingIntent has no settingMetadata", 39, 2, &dword_268CBE000, v29, v28);

    MEMORY[0x277D82BD8](v29);
    sub_268D28BD4();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
  }

  v23 = *(v42[4] + 8);

  return v23();
}

uint64_t sub_268EF3834(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[19] = a1;
  v5[20] = v1;

  if (v1)
  {
    v3 = sub_268EF3C84;
  }

  else
  {
    v3 = sub_268EF39A4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EF39A4()
{
  *(v0 + 32) = v0;

  v1 = *(v0 + 152);
  v2 = *(*(v0 + 32) + 8);

  return v2(v1);
}

uint64_t sub_268EF3A5C(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[22] = a1;
  v5[23] = v1;

  if (v1)
  {
    v3 = sub_268EF3D38;
  }

  else
  {
    v3 = sub_268EF3BCC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EF3BCC()
{
  *(v0 + 32) = v0;

  v1 = *(v0 + 176);
  v2 = *(*(v0 + 32) + 8);

  return v2(v1);
}

uint64_t sub_268EF3C84()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268EF3D38()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268EF3DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = v3;
  v4[26] = a3;
  v4[25] = a2;
  v4[24] = a1;
  v4[14] = v4;
  v4[15] = 0;
  v4[16] = 0;
  v4[17] = 0;
  v4[18] = 0;
  v4[20] = 0;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = a3;
  v4[18] = v3;
  return MEMORY[0x2822009F8](sub_268EF3E6C, 0);
}

uint64_t sub_268EF3E6C()
{
  v1 = v0[27];
  v35 = v0[25];
  v0[14] = v0;
  v34 = *(v1 + qword_280FE37D8);
  MEMORY[0x277D82BE0](v34);
  v36 = [v35 settingMetadata];
  if (v36)
  {
    v28 = [v36 settingId];
    v29 = sub_268F9AE24();
    v30 = v2;
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v28);
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v33[12] = v31;
  v33[13] = v32;
  if (v33[13])
  {
    v37 = v33[12];
    v38 = v33[13];
  }

  else
  {
    v37 = sub_268F9AEF4();
    v38 = v3;
    if (v33[13])
    {
      sub_268CD9D30((v33 + 12));
    }
  }

  sub_268DE0918(v37, v38, v33 + 7);

  MEMORY[0x277D82BD8](v34);
  if (v33[10])
  {
    v27 = v33[25];
    sub_268CDF978(v33 + 7, v33 + 2);
    v25 = v33[5];
    v26 = v33[6];
    __swift_project_boxed_opaque_existential_1(v33 + 2, v25);
    v4 = (*(v26 + 16))(v27, v25);
    if (v4)
    {
      v16 = v33[25];
      v5 = sub_268DC866C();
      v21 = *v5;
      MEMORY[0x277D82BE0](*v5);
      v20 = sub_268F9B284();
      v33[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v19 = v6;
      MEMORY[0x277D82BE0](v16);
      v33[19] = v16;
      sub_268D2E630();
      sub_268D59CAC();
      v17 = sub_268F9AE74();
      v18 = v7;
      v19[3] = MEMORY[0x277D837D0];
      v8 = sub_268CDD224();
      v33[29] = v8;
      v19[4] = v8;
      *v19 = v17;
      v19[1] = v18;
      sub_268CD0F7C();
      sub_268F9AC04("Handling intent in the main process.", 36, 2, &dword_268CBE000, v21, v20);

      MEMORY[0x277D82BD8](v21);
      v22 = v33[5];
      v23 = v33[6];
      __swift_project_boxed_opaque_existential_1(v33 + 2, v22);
      v24 = (*(v23 + 32) + **(v23 + 32));
      v9 = swift_task_alloc();
      v33[30] = v9;
      *v9 = v33[14];
      v9[1] = sub_268EF44A4;
      v10 = v33[25];

      return v24(v10, v22, v23);
    }

    __swift_destroy_boxed_opaque_existential_0(v33 + 2);
  }

  else
  {
    sub_268D28414(v33 + 7);
  }

  v12 = swift_task_alloc();
  v33[38] = v12;
  *v12 = v33[14];
  v12[1] = sub_268EF4D98;
  v13 = v33[26];
  v14 = v33[25];
  v15 = v33[24];

  return sub_268EF2F84(v15, v14, v13);
}

uint64_t sub_268EF44A4(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 112) = *v1;
  *(v3 + 248) = a1;

  return MEMORY[0x2822009F8](sub_268EF45C0, 0);
}

uint64_t sub_268EF45C0()
{
  v19 = v0[31];
  v15 = v0[29];
  v0[14] = v0;
  v0[20] = v19;
  v1 = sub_268DC866C();
  v18 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v17 = sub_268F9B284();
  sub_268F9B734();
  v16 = v2;
  MEMORY[0x277D82BE0](v19);
  v0[21] = v19;
  sub_268CDD0DC();
  sub_268CDD1A4();
  v3 = sub_268F9AE74();
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = v15;
  *v16 = v3;
  v16[1] = v4;
  sub_268CD0F7C();
  sub_268F9AC04("Got main process response %@. Handling.", 39, 2, &dword_268CBE000, v18, v17);

  v0[22] = [v19 code];
  v0[23] = 3;
  type metadata accessor for INGetSettingIntentResponseCode(0);
  sub_268DDD0E4();
  if (sub_268F9B754())
  {
    v13 = v14[31];
    MEMORY[0x277D82BE0](v13);
    v5 = swift_task_alloc();
    v14[32] = v5;
    *v5 = v14[14];
    v5[1] = sub_268EF4908;
    v6 = v14[25];
    v7 = v14[24];

    return sub_268EF2F84(v7, v6, v13);
  }

  else
  {
    v12 = v14[31];
    MEMORY[0x277D82BE0](v12);
    v9 = swift_task_alloc();
    v14[35] = v9;
    *v9 = v14[14];
    v9[1] = sub_268EF4B50;
    v10 = v14[25];
    v11 = v14[24];

    return sub_268EFA4A4(v11, v10, v12);
  }
}

uint64_t sub_268EF4908(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 112) = *v2;
  *(v5 + 264) = a1;
  *(v5 + 272) = v1;

  if (v1)
  {
    v3 = sub_268EF4F90;
  }

  else
  {

    v3 = sub_268EF4A8C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EF4A8C()
{
  v1 = v0[31];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[33];
  v3 = *(v0[14] + 8);

  return v3(v2);
}

uint64_t sub_268EF4B50(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 112) = *v2;
  *(v5 + 288) = a1;
  *(v5 + 296) = v1;

  if (v1)
  {
    v3 = sub_268EF506C;
  }

  else
  {

    v3 = sub_268EF4CD4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EF4CD4()
{
  v1 = v0[31];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[36];
  v3 = *(v0[14] + 8);

  return v3(v2);
}

uint64_t sub_268EF4D98(uint64_t a1)
{
  v7 = *v2;
  *(v7 + 112) = *v2;
  v8 = v7 + 112;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    v3 = a1;
    v4 = *(*v8 + 8);
  }

  return v4(v3);
}

uint64_t sub_268EF4F90()
{
  v3 = v0[31];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = *(v0[14] + 8);

  return v1();
}

uint64_t sub_268EF506C()
{
  v3 = v0[31];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = *(v0[14] + 8);

  return v1();
}

uint64_t sub_268EF5148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 272) = v3;
  *(v4 + 264) = a3;
  *(v4 + 256) = a2;
  *(v4 + 144) = v4;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 400) = 0;
  *(v4 + 401) = 0;
  *(v4 + 192) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 200) = 0;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 240) = 0;
  *(v4 + 248) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 280) = v5;
  *(v4 + 288) = *(v5 - 8);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;

  return MEMORY[0x2822009F8](sub_268EF52E8, 0);
}

void *sub_268EF52E8(double a1)
{
  v2 = v1[33];
  v3 = v1[32];
  v1[18] = v1;
  v78 = sub_268F1A720(v3, v2);
  v79 = v4;
  v80 = v5;
  v81 = v6;
  v1[39] = v4;
  if (!v4)
  {
    sub_268D28BD4();
    swift_allocError();
    *v30 = 2;
    swift_willThrow();
    goto LABEL_28;
  }

  *(v77 + 96) = v78;
  *(v77 + 104) = v4;
  *(v77 + 112) = v5;
  *(v77 + 120) = v6;
  v76 = sub_268E07A88(v5);
  if (v76 == 2)
  {
    v32 = *(v77 + 264);
    v26 = sub_268DC866C();
    v37 = *v26;
    MEMORY[0x277D82BE0](*v26);
    v36 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v35 = v27;
    MEMORY[0x277D82BE0](v32);
    *(v77 + 184) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v33 = sub_268F9AE64();
    v34 = v28;
    v35[3] = MEMORY[0x277D837D0];
    v35[4] = sub_268CDD224();
    *v35 = v33;
    v35[1] = v34;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingIntentResponse response has invalid value %@", 54, 2, &dword_268CBE000, v37, v36);

    MEMORY[0x277D82BD8](v37);
    sub_268D28BD4();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();

LABEL_28:

    v31 = *(*(v77 + 144) + 8);

    return v31();
  }

  *(v77 + 400) = v76 & 1;

  v75 = sub_268F23C10();
  *(v77 + 320) = v75;

  *(v77 + 192) = v75;

  v71 = sub_268E12F2C();
  v72 = v7;

  v73 = MEMORY[0x26D62DB30](v78, v79, v71, v72);
  v74 = v8;
  *(v77 + 328) = v8;

  *(v77 + 128) = v73;
  *(v77 + 136) = v74;
  MEMORY[0x277D82BE0](v75);
  if (v75)
  {

    v67 = sub_268F9AE14();

    v68 = [v75 integerForKey_];
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v75);
    v69 = v68;
    v70 = 0;
  }

  else
  {
    v69 = 0;
    v70 = 1;
  }

  if (v70)
  {
    v66 = 0;
  }

  else
  {
    *(v77 + 248) = v69;

    v65 = sub_268E12F10();

    if (v69 >= v65)
    {
      v63 = 0;
    }

    else
    {
      MEMORY[0x277D82BE0](v75);
      if (v75)
      {
        result = v75;
        if (__OFADD__(v69, 1))
        {
          __break(1u);
          return result;
        }

        v64 = sub_268F9AE14();

        [v75 setInteger:v69 + 1 forKey:v64];
        MEMORY[0x277D82BD8](v64);
        MEMORY[0x277D82BD8](v75);
      }

      v11 = sub_268DC866C();
      v62 = *v11;
      MEMORY[0x277D82BE0](*v11);
      v61 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v60 = v12;

      v60[3] = MEMORY[0x277D837D0];
      v60[4] = sub_268CDD224();
      *v60 = v78;
      v60[1] = v79;
      sub_268CD0F7C();
      sub_268F9AC04("Providing verbose version of DescribeBinarySettingState CAT for %@.", 67, 2, &dword_268CBE000, v62, v61);

      MEMORY[0x277D82BD8](v62);
      *(v77 + 401) = 1;
      v63 = 1;
    }

    v66 = v63;
  }

  v13 = *(v77 + 304);
  v51 = *(v77 + 296);
  v52 = *(v77 + 280);
  v49 = *(v77 + 272);
  v50 = *(v77 + 288);
  v14 = sub_268DB9CB4();
  v55 = *v14;
  v56 = v14[1];
  v57 = *(v14 + 16);
  v15 = sub_268DC7BA8();
  v58 = *v15;
  MEMORY[0x277D82BE0](*v15);
  (*(v50 + 16))(v13, v49 + qword_280FE3800, v52);
  sub_268F9AB14();
  v54 = sub_268F9AB04();
  v53 = *(v50 + 8);
  v53(v51, v52);
  v53(v13, v52);
  sub_268DB9934(v55, v56, v57, v58, (v54 ^ 1) & 1);
  MEMORY[0x277D82BD8](v58);

  v16 = BinarySettingIdentifier.rawValue.getter();
  v59 = MEMORY[0x26D62DB50](v78, v79, v16);

  if (v59)
  {
    v44 = *(v77 + 272);
    sub_268CDE730(v44 + qword_280FE37D0, v77 + 56);
    v46 = *(v77 + 80);
    v47 = *(v77 + 88);
    __swift_project_boxed_opaque_existential_1((v77 + 56), v46);

    v45 = swift_task_alloc();
    *(v77 + 336) = v45;
    *(v45 + 16) = v44;
    *(v45 + 24) = v78;
    *(v45 + 32) = v79;
    *(v45 + 40) = v80;
    *(v45 + 48) = v81;
    *(v45 + 56) = v76 & 1;
    v48 = (*(v47 + 16) + **(v47 + 16));
    v17 = swift_task_alloc();
    v18 = sub_268F1C008;
    v19 = v45;
    v20 = v46;
    v21 = v47;
    v22 = v48;
    *(v77 + 344) = v17;
    *v17 = *(v77 + 144);
    v17[1] = sub_268EF61B0;
    v23 = v76 & 1;
    v24 = v66 & 1;
  }

  else
  {
    v38 = *(v77 + 272);
    v39 = *(v77 + 256);
    sub_268CDE730(v38 + qword_280FE37D0, v77 + 16);
    v41 = *(v77 + 40);
    v42 = *(v77 + 48);
    __swift_project_boxed_opaque_existential_1((v77 + 16), v41);

    MEMORY[0x277D82BE0](v39);
    v40 = swift_task_alloc();
    *(v77 + 368) = v40;
    *(v40 + 16) = v38;
    *(v40 + 24) = v78;
    *(v40 + 32) = v79;
    *(v40 + 40) = v80;
    *(v40 + 48) = v81;
    *(v40 + 56) = v76 & 1;
    *(v40 + 64) = v39;
    v43 = (*(v42 + 32) + **(v42 + 32));
    v25 = swift_task_alloc();
    v18 = sub_268F1BFE4;
    v19 = v40;
    v20 = v41;
    v21 = v42;
    v22 = v43;
    *(v77 + 376) = v25;
    *v25 = *(v77 + 144);
    v25[1] = sub_268EF6508;
    v23 = v76 & 1;
    v24 = v66 & 1;
  }

  return v22(v23, v24, v18, v19, v20, v21);
}

uint64_t sub_268EF61B0(uint64_t a1)
{
  v5 = *v2;
  v5[18] = *v2;
  v5[44] = a1;
  v5[45] = v1;

  if (v1)
  {
    v3 = sub_268EF6870;
  }

  else
  {

    v3 = sub_268EF6354;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EF6354()
{
  v1 = v0[44];
  v10 = v0[40];
  v0[18] = v0;
  v0[30] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = sub_268DB9CB4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](v10);

  v11 = v0[44];

  v4 = *(v0[18] + 8);

  return v4(v11);
}

uint64_t sub_268EF6508(uint64_t a1)
{
  v6 = *v2;
  v6[18] = *v2;
  v6[48] = a1;
  v6[49] = v1;

  if (v1)
  {
    v3 = sub_268EF6BA0;
  }

  else
  {
    v5 = v6[32];

    v3 = sub_268EF66BC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EF66BC()
{
  v1 = v0[48];
  v10 = v0[40];
  v0[18] = v0;
  v0[27] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_268DB9CB4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](v10);

  v11 = v0[48];

  v4 = *(v0[18] + 8);

  return v4(v11);
}

uint64_t sub_268EF6870()
{
  v19 = v0[45];
  v20 = v0[40];
  v0[18] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v19;
  v0[28] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[29] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingIntent#describeMultiSettingState pattern execution error %@", 69, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB9CB4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v20);

  v8 = *(v0[18] + 8);

  return v8();
}

uint64_t sub_268EF6BA0()
{
  v20 = v0[49];
  v21 = v0[40];
  v10 = v0[32];
  v0[18] = v0;

  MEMORY[0x277D82BD8](v10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v20;
  v0[25] = v20;
  v2 = sub_268DC866C();
  v15 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v14 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v13 = v3;
  v4 = v20;
  v0[26] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v11 = sub_268F9AE64();
  v12 = v5;
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = sub_268CDD224();
  *v13 = v11;
  v13[1] = v12;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingIntent#describeBinarySettingState pattern execution error %@", 70, 2, &dword_268CBE000, v15, v14);

  MEMORY[0x277D82BD8](v15);
  v6 = sub_268DB9CB4();
  v18 = *v6;
  v16 = v6[1];
  v17 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v19 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v18, v16, v17, v19);
  MEMORY[0x277D82BD8](v19);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v21);

  v8 = *(v0[18] + 8);

  return v8();
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268EF6EE8(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  v50 = a1;
  v40 = a2;
  v51._countAndFlagsBits = a3;
  v51._object = a4;
  v39 = a5;
  v48 = a6;
  v45 = a7;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0;
  v60 = 0;
  v55 = 0;
  v42 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v32 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8, v9, v10);
  v33 = &v23 - v32;
  v46 = 0;
  v34 = type metadata accessor for SFSymbolStructSpeakableString(0);
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34, v11, v12, v13);
  v38 = &v23 - v37;
  v69 = &v23 - v37;
  v41 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50, v40, v51._countAndFlagsBits, v51._object);
  v43 = &v23 - v41;
  v68 = v14;
  v67 = v15;
  v66 = *(v42 + qword_280FE8090);
  v65 = *(v42 + qword_280FE8090 + 8);
  *&v63 = v16;
  *(&v63 + 1) = v17;
  *&v64 = v18;
  *(&v64 + 1) = v19;
  v62 = v20 & 1;
  v44 = *(v15 + qword_280FE37C8);

  *v50 = v44;

  type metadata accessor for SettingsMultiSetting(v46);

  v47 = sub_268E067CC(v51._countAndFlagsBits, v51._object, v45 & 1);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(v46);
  *(v50 + SettingIntentDescribeMultiSettingStateParameters[6]) = v47;

  v21 = sub_268E07A88(v48);
  *(v50 + SettingIntentDescribeMultiSettingStateParameters[7]) = v21;

  result.value = BinarySettingIdentifier.init(rawValue:)(v51).value;
  v52 = v61;
  if (v61 != 65)
  {
    v31 = v52;
    v60 = v52;
    v29 = 45;
    v59 = 45;
    sub_268E0697C(&v59, v43);
    sub_268D29FC8(v43, v50 + SettingIntentDescribeMultiSettingStateParameters[5]);
    v58 = v29;
    sub_268E06F58(&v58, v43);
    sub_268D29FC8(v43, v50 + SettingIntentDescribeMultiSettingStateParameters[8]);
    v57 = v29;
    sub_268E06FB0(&v57, 0, 1u, v43);
    sub_268D29FC8(v43, v50 + SettingIntentDescribeMultiSettingStateParameters[14]);
    sub_268E798B8(v43);
    sub_268D29FC8(v43, v50 + SettingIntentDescribeMultiSettingStateParameters[10]);

    result.value = BinarySettingIdentifier.init(rawValue:)(v51).value;
    v30 = v56;
    if (v56 != 65)
    {
      v28 = v30;
      v27 = v30;
      v55 = v30;
      v54 = v30;
      sub_268E799BC(v43);
      sub_268D29FC8(v43, v50 + SettingIntentDescribeMultiSettingStateParameters[9]);
      v53 = v27;
      sub_268E7A8B4(v33);
      if ((*(v35 + 48))(v33, 1, v34) == 1)
      {
        return sub_268D2A318(v33);
      }

      else
      {
        sub_268D2A4A0(v33, v38);
        v26 = sub_268F9A9C4();
        v24 = *(v26 - 8);
        v25 = v26 - 8;
        (*(v24 + 16))(v43, v38);
        (*(v24 + 56))(v43, 0, 1, v26);
        sub_268D29FC8(v43, v50 + SettingIntentDescribeMultiSettingStateParameters[11]);
        sub_268D2A1F0((v38 + *(v34 + 20)), v43);
        sub_268D29FC8(v43, v50 + SettingIntentDescribeMultiSettingStateParameters[13]);
        sub_268D2A1F0((v38 + *(v34 + 24)), v43);
        sub_268D29FC8(v43, v50 + SettingIntentDescribeMultiSettingStateParameters[12]);
        return sub_268D2A724(v38);
      }
    }
  }

  return result;
}

double sub_268EF7508(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v50 = v84;
  v63 = a1;
  v53 = a2;
  v64._countAndFlagsBits = a3;
  v64._object = a4;
  v51 = a5;
  v61 = a6;
  v58 = a7;
  v52 = a8;
  v84[1] = 0;
  v84[0] = 0;
  v83 = 0;
  v79 = 0u;
  v80 = 0u;
  v78 = 0;
  v77 = 0;
  v75 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v55 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v43 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v44 = v31 - v43;
  v59 = 0;
  v45 = type metadata accessor for SFSymbolStructSpeakableString(0);
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45, v12, v13, v14);
  v49 = v31 - v48;
  v50[1] = v31 - v48;
  v54 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63, v53, v64._countAndFlagsBits, v64._object);
  v15 = v55;
  v56 = v31 - v54;
  *v17 = v16;
  v83 = v18;
  v82 = *(v15 + qword_280FE8090);
  v81 = *(v15 + qword_280FE8090 + 8);
  *&v79 = v19;
  *(&v79 + 1) = v20;
  *&v80 = v21;
  *(&v80 + 1) = v22;
  v78 = v23 & 1;
  v77 = v24;
  v57 = *(v18 + qword_280FE37C8);

  *v63 = v57;

  type metadata accessor for SettingsBinarySetting(v59);

  v60 = SettingsBinarySetting.__allocating_init(settingId:value:)(v64._countAndFlagsBits, v64._object, v58 & 1);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(v59);
  *(v63 + SettingIntentDescribeBinarySettingStateParameters[6]) = v60;

  v25 = sub_268E07A88(v61);
  *(v63 + SettingIntentDescribeBinarySettingStateParameters[7]) = v25;

  BinarySettingIdentifier.init(rawValue:)(v64);
  v65 = v76;
  if (v76 != 65)
  {
    v42 = v65;
    v40 = v65;
    v75 = v65;
    v74 = v65;
    sub_268E0697C(&v74, v56);
    sub_268D29FC8(v56, v63 + SettingIntentDescribeBinarySettingStateParameters[5]);
    v73 = v40;
    sub_268E06F58(&v73, v56);
    sub_268D29FC8(v56, v63 + SettingIntentDescribeBinarySettingStateParameters[8]);
    sub_268E798B8(v56);
    sub_268D29FC8(v56, v63 + SettingIntentDescribeBinarySettingStateParameters[10]);

    BinarySettingIdentifier.init(rawValue:)(v64);
    v41 = v72;
    if (v72 != 65)
    {
      v39 = v41;
      v38 = v41;
      v68 = v41;
      v67 = v41;
      sub_268E799BC(v56);
      sub_268D29FC8(v56, v63 + SettingIntentDescribeBinarySettingStateParameters[9]);
      v66 = v38;
      sub_268E7A8B4(v44);
      if ((*(v46 + 48))(v44, 1, v45) == 1)
      {
        sub_268D2A318(v44);
      }

      else
      {
        sub_268D2A4A0(v44, v49);
        v37 = sub_268F9A9C4();
        v35 = *(v37 - 8);
        v36 = v37 - 8;
        (*(v35 + 16))(v56, v49);
        (*(v35 + 56))(v56, 0, 1, v37);
        sub_268D29FC8(v56, v63 + SettingIntentDescribeBinarySettingStateParameters[11]);
        sub_268D2A1F0((v49 + *(v45 + 20)), v56);
        sub_268D29FC8(v56, v63 + SettingIntentDescribeBinarySettingStateParameters[13]);
        sub_268D2A1F0((v49 + *(v45 + 24)), v56);
        sub_268D29FC8(v56, v63 + SettingIntentDescribeBinarySettingStateParameters[12]);
        sub_268D2A724(v49);
      }
    }

    *(v63 + SettingIntentDescribeBinarySettingStateParameters[17]) = !sub_268E0829C();
    v32 = 0;
    v31[2] = sub_268D291D4();

    v31[1] = sub_268E62B3C();
    v71 = v52;
    v27 = sub_268D2E630();
    v28 = SettingIntent.deviceCategory.getter(v27, &protocol witness table for INGetSettingIntent);
    v30 = sub_268E3D824(v32, v32, v32, v32, v28, v29 & 1);
    v34 = sub_268F2B620(v64._countAndFlagsBits, v64._object, v30, v32);
    v70 = v34;
    sub_268CD7620();
    MEMORY[0x277D82BE0](v34);
    v33 = sub_268DA95CC(v34, 3, v32);
    v69 = v33;
    sub_268E06D9C(v33, v56);
    sub_268D29FC8(v56, v63 + SettingIntentDescribeBinarySettingStateParameters[14]);
    MEMORY[0x277D82BD8](v33);
    *&result = MEMORY[0x277D82BD8](v34).n128_u64[0];
  }

  return result;
}

uint64_t sub_268EF7CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 272) = v3;
  *(v4 + 264) = a3;
  *(v4 + 256) = a2;
  *(v4 + 136) = v4;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 184) = 0;
  *(v4 + 424) = 0;
  *(v4 + 432) = 0;
  *(v4 + 192) = 0;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 248) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 280) = v5;
  *(v4 + 288) = *(v5 - 8);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;
  *(v4 + 160) = a3;
  *(v4 + 168) = v3;

  return MEMORY[0x2822009F8](sub_268EF7E84, 0);
}

void *sub_268EF7E84(double a1)
{
  v2 = v1[33];
  v3 = v1[32];
  v1[17] = v1;
  v89 = sub_268F1B14C(v3, v2);
  v90 = v4;
  v91 = v5;
  v1[39] = v4;
  v1[40] = v5;
  if (!v4)
  {
    sub_268D28BD4();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
    goto LABEL_29;
  }

  *(v88 + 96) = v89;
  *(v88 + 104) = v4;
  *(v88 + 112) = v5;
  MEMORY[0x277D82BE0](v5);
  v6 = [v91 value];
  v87 = v6;
  *(v88 + 328) = v6;
  if (!v6)
  {
    v29 = *(v88 + 264);
    MEMORY[0x277D82BD8](v91);
    v23 = sub_268DC866C();
    v34 = *v23;
    MEMORY[0x277D82BE0](*v23);
    v33 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v32 = v24;
    MEMORY[0x277D82BE0](v29);
    *(v88 + 176) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v30 = sub_268F9AE64();
    v31 = v25;
    v32[3] = MEMORY[0x277D837D0];
    v32[4] = sub_268CDD224();
    *v32 = v30;
    v32[1] = v31;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingIntentResponse response has invalid value %@", 54, 2, &dword_268CBE000, v34, v33);

    MEMORY[0x277D82BD8](v34);
    sub_268D28BD4();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    MEMORY[0x277D82BD8](v91);
LABEL_29:

    v28 = *(*(v88 + 136) + 8);

    return v28();
  }

  *(v88 + 184) = v6;
  MEMORY[0x277D82BD8](v91);

  v7 = NumericSettingIdentifier.rawValue.getter();
  v86 = MEMORY[0x26D62DB50](v89, v90, v7);

  if (v86)
  {

    v85 = sub_268F23C10();
    *(v88 + 336) = v85;

    *(v88 + 216) = v85;

    v81 = sub_268E12F2C();
    v82 = v8;

    v83 = MEMORY[0x26D62DB30](v89, v90, v81, v82);
    v84 = v9;
    *(v88 + 344) = v9;

    *(v88 + 120) = v83;
    *(v88 + 128) = v84;
    MEMORY[0x277D82BE0](v85);
    if (v85)
    {

      v77 = sub_268F9AE14();

      v78 = [v85 integerForKey_];
      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v85);
      v79 = v78;
      v80 = 0;
    }

    else
    {
      v79 = 0;
      v80 = 1;
    }

    if ((v80 & 1) == 0)
    {
      *(v88 + 224) = v79;

      v76 = sub_268E12F10();

      if (v79 >= v76)
      {
        v10 = *(v88 + 304);
        v62 = *(v88 + 296);
        v63 = *(v88 + 280);
        v70 = *(v88 + 272);
        v71 = *(v88 + 256);
        v61 = *(v88 + 288);
        v11 = sub_268DC866C();
        v60 = *v11;
        MEMORY[0x277D82BE0](*v11);
        v59 = sub_268F9B284();
        *(v88 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        sub_268F9AC04("Providing spoken-only version of CAT for displayBrightness.", 59, 2, &dword_268CBE000, v60, v59);

        MEMORY[0x277D82BD8](v60);
        v12 = sub_268DB9CB4();
        v66 = *v12;
        v67 = v12[1];
        v68 = *(v12 + 16);
        v13 = sub_268DC7BA8();
        v69 = *v13;
        MEMORY[0x277D82BE0](*v13);
        (*(v61 + 16))(v10, v70 + qword_280FE3800, v63);
        sub_268F9AB14();
        v65 = sub_268F9AB04();
        v64 = *(v61 + 8);
        v64(v62, v63);
        v64(v10, v63);
        sub_268DB9934(v66, v67, v68, v69, (v65 ^ 1) & 1);
        MEMORY[0x277D82BD8](v69);
        sub_268CDE730(v70 + qword_280FE37D0, v88 + 56);
        v73 = *(v88 + 80);
        v74 = *(v88 + 88);
        __swift_project_boxed_opaque_existential_1((v88 + 56), v73);

        MEMORY[0x277D82BE0](v91);
        MEMORY[0x277D82BE0](v87);
        MEMORY[0x277D82BE0](v71);
        v72 = swift_task_alloc();
        *(v88 + 360) = v72;
        v72[2] = v70;
        v72[3] = v89;
        v72[4] = v90;
        v72[5] = v91;
        v72[6] = v87;
        v72[7] = v71;
        v75 = (*(v74 + 40) + **(v74 + 40));
        v14 = swift_task_alloc();
        *(v88 + 368) = v14;
        *v14 = *(v88 + 136);
        v14[1] = sub_268EF916C;

        return v75(sub_268F1C044, v72, v73, v74);
      }

      MEMORY[0x277D82BE0](v85);
      if (v85)
      {
        result = v85;
        if (__OFADD__(v79, 1))
        {
          __break(1u);
          return result;
        }

        v58 = sub_268F9AE14();

        [v85 setInteger:v79 + 1 forKey:v58];
        MEMORY[0x277D82BD8](v58);
        MEMORY[0x277D82BD8](v85);
      }

      v17 = sub_268DC866C();
      v57 = *v17;
      MEMORY[0x277D82BE0](*v17);
      v56 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC04("Providing verbose CAT for displayBrightness.", 44, 2, &dword_268CBE000, v57, v56);

      MEMORY[0x277D82BD8](v57);
    }

    MEMORY[0x277D82BD8](v85);
  }

  v52 = *(v88 + 256);
  v53 = sub_268E07FF4(v52);
  *(v88 + 424) = v53 & 1;
  sub_268E07C44(v52);
  v54 = sub_268F9AE94();
  v55 = v18;

  v92 = sub_268E493BC(v54, v55);
  if (v92 == 16)
  {
    v51 = 0;
  }

  else
  {
    *(v88 + 425) = 13;
    *(v88 + 426) = v92;
    sub_268E4A21C();
    v51 = sub_268F9AE04();
  }

  v19 = *(v88 + 304);
  v36 = *(v88 + 296);
  v37 = *(v88 + 280);
  v44 = *(v88 + 272);
  v45 = *(v88 + 256);
  v35 = *(v88 + 288);
  *(v88 + 432) = v51 & 1;
  v20 = sub_268DB9CB4();
  v40 = *v20;
  v41 = v20[1];
  v42 = *(v20 + 16);
  v21 = sub_268DC7BA8();
  v43 = *v21;
  MEMORY[0x277D82BE0](*v21);
  (*(v35 + 16))(v19, v44 + qword_280FE3800, v37);
  sub_268F9AB14();
  v39 = sub_268F9AB04();
  v38 = *(v35 + 8);
  v38(v36, v37);
  v38(v19, v37);
  sub_268DB9934(v40, v41, v42, v43, (v39 ^ 1) & 1);
  MEMORY[0x277D82BD8](v43);
  sub_268CDE730(v44 + qword_280FE37D0, v88 + 16);
  v48 = *(v88 + 40);
  v49 = *(v88 + 48);
  __swift_project_boxed_opaque_existential_1((v88 + 16), v48);

  v46 = sub_268EADBD0();

  MEMORY[0x277D82BE0](v91);
  MEMORY[0x277D82BE0](v87);
  MEMORY[0x277D82BE0](v45);
  v47 = swift_task_alloc();
  *(v88 + 392) = v47;
  v47[2] = v44;
  v47[3] = v89;
  v47[4] = v90;
  v47[5] = v91;
  v47[6] = v87;
  v47[7] = v45;
  v50 = (*(v49 + 48) + **(v49 + 48));
  v22 = swift_task_alloc();
  *(v88 + 400) = v22;
  *v22 = *(v88 + 136);
  v22[1] = sub_268EF9518;

  return v50(v53 & 1, v51 & 1, v46, sub_268F1C028, v47, v48, v49);
}

uint64_t sub_268EF916C(uint64_t a1)
{
  v8 = *v2;
  v8[17] = *v2;
  v8[47] = a1;
  v8[48] = v1;

  if (v1)
  {
    v3 = sub_268EF9898;
  }

  else
  {
    v6 = v8[41];
    v5 = v8[40];
    v7 = v8[32];

    v3 = sub_268EF9340;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EF9340()
{
  v1 = v0[47];
  v10 = v0[42];
  v11 = v0[41];
  v12 = v0[40];
  v0[17] = v0;
  v0[31] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = sub_268DB9CB4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v12);
  v13 = v0[47];

  v4 = *(v0[17] + 8);

  return v4(v13);
}

uint64_t sub_268EF9518(uint64_t a1)
{
  v8 = *v2;
  v8[17] = *v2;
  v8[51] = a1;
  v8[52] = v1;

  if (v1)
  {
    v3 = sub_268EF9C24;
  }

  else
  {
    v6 = v8[41];
    v5 = v8[40];
    v7 = v8[32];

    v3 = sub_268EF96EC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EF96EC()
{
  v1 = v0[51];
  v10 = v0[41];
  v11 = v0[40];
  v0[17] = v0;
  v0[26] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_268DB9CB4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);

  MEMORY[0x277D82BD8](v11);
  v12 = v0[51];

  v4 = *(v0[17] + 8);

  return v4(v12);
}

uint64_t sub_268EF9898()
{
  v20 = v0[48];
  v21 = v0[42];
  v22 = v0[41];
  v23 = v0[40];
  v10 = v0[32];
  v0[17] = v0;

  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v20;
  v0[29] = v20;
  v2 = sub_268DC866C();
  v15 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v14 = sub_268F9B294();
  sub_268F9B734();
  v13 = v3;
  v4 = v20;
  v0[30] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v11 = sub_268F9AE64();
  v12 = v5;
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = sub_268CDD224();
  *v13 = v11;
  v13[1] = v12;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingIntent#describeNumericSettingStateSpokenOnly pattern execution error %@", 81, 2, &dword_268CBE000, v15, v14);

  MEMORY[0x277D82BD8](v15);
  v6 = sub_268DB9CB4();
  v18 = *v6;
  v16 = v6[1];
  v17 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v19 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v18, v16, v17, v19);
  MEMORY[0x277D82BD8](v19);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);

  MEMORY[0x277D82BD8](v23);

  v8 = *(v0[17] + 8);

  return v8();
}

uint64_t sub_268EF9C24()
{
  v20 = v0[52];
  v21 = v0[41];
  v22 = v0[40];
  v10 = v0[32];
  v0[17] = v0;

  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v20;
  v0[24] = v20;
  v2 = sub_268DC866C();
  v15 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v14 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v13 = v3;
  v4 = v20;
  v0[25] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v11 = sub_268F9AE64();
  v12 = v5;
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = sub_268CDD224();
  *v13 = v11;
  v13[1] = v12;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingIntent#describeNumericSettingState pattern execution error %@", 71, 2, &dword_268CBE000, v15, v14);

  MEMORY[0x277D82BD8](v15);
  v6 = sub_268DB9CB4();
  v18 = *v6;
  v16 = v6[1];
  v17 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v19 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v18, v16, v17, v19);
  MEMORY[0x277D82BD8](v19);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v21);

  MEMORY[0x277D82BD8](v22);

  v8 = *(v0[17] + 8);

  return v8();
}

void *sub_268EF9F94(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v32 = a1;
  v24 = a2;
  v27 = a3;
  v30 = a4;
  v29 = a5;
  v22 = a6;
  v23 = a7;
  v44 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v36 = 0;
  v20 = *a2;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32, v24, v27, v30);
  v33 = &v19 - v19;
  v44 = v7;
  v43 = v8;
  v31 = 0;
  v42 = *(v20 + qword_280FE8090);
  v41 = *(v20 + qword_280FE8090 + 8);
  v38 = v9;
  v39 = v10;
  v40 = v11;
  v37 = v12;
  v36 = v13;
  v21 = *(v8 + qword_280FE37C8);

  *(v32 + 8) = v21;

  type metadata accessor for SettingsNumericSetting(v31);

  MEMORY[0x277D82BE0](v22);
  v14 = SettingsNumericSetting.__allocating_init(settingId:value:)(v27, v30, v22);
  *(v32 + 16) = v14;

  MEMORY[0x277D82BE0](v29);
  v35 = v23;
  v15 = sub_268D2E630();
  v25 = SettingIntent.deviceCategory.getter(v15, &protocol witness table for INGetSettingIntent);
  v26 = v16;
  v28 = v34;
  sub_268CDE730(v24 + qword_280FE3810, v34);
  sub_268E0A770(v27, v30, v29, v26 & 1, v28, v33);
  __swift_destroy_boxed_opaque_existential_0(v28);
  MEMORY[0x277D82BD8](v29);

  SettingIntentDescribeNumericSettingStateSpokenOnlyParameters = type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters(v31);
  return sub_268D29FC8(v33, (v32 + *(SettingIntentDescribeNumericSettingStateSpokenOnlyParameters + 28)));
}

void *sub_268EFA21C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v32 = a1;
  v24 = a2;
  v27 = a3;
  v30 = a4;
  v29 = a5;
  v22 = a6;
  v23 = a7;
  v44 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v36 = 0;
  v20 = *a2;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32, v24, v27, v30);
  v33 = &v19 - v19;
  v44 = v7;
  v43 = v8;
  v31 = 0;
  v42 = *(v20 + qword_280FE8090);
  v41 = *(v20 + qword_280FE8090 + 8);
  v38 = v9;
  v39 = v10;
  v40 = v11;
  v37 = v12;
  v36 = v13;
  v21 = *(v8 + qword_280FE37C8);

  *(v32 + 8) = v21;

  type metadata accessor for SettingsNumericSetting(v31);

  MEMORY[0x277D82BE0](v22);
  v14 = SettingsNumericSetting.__allocating_init(settingId:value:)(v27, v30, v22);
  *(v32 + 24) = v14;

  MEMORY[0x277D82BE0](v29);
  v35 = v23;
  v15 = sub_268D2E630();
  v25 = SettingIntent.deviceCategory.getter(v15, &protocol witness table for INGetSettingIntent);
  v26 = v16;
  v28 = v34;
  sub_268CDE730(v24 + qword_280FE3810, v34);
  sub_268E0A770(v27, v30, v29, v26 & 1, v28, v33);
  __swift_destroy_boxed_opaque_existential_0(v28);
  MEMORY[0x277D82BD8](v29);

  SettingIntentDescribeNumericSettingStateParameters = type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters(v31);
  return sub_268D29FC8(v33, (v32 + *(SettingIntentDescribeNumericSettingStateParameters + 40)));
}

uint64_t sub_268EFA4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 224) = v3;
  *(v4 + 216) = a3;
  *(v4 + 208) = a2;
  *(v4 + 112) = v4;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 304) = 0;
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;
  *(v4 + 136) = a3;
  *(v4 + 144) = v3;
  return MEMORY[0x2822009F8](sub_268EFA528, 0);
}

uint64_t sub_268EFA528()
{
  v1 = *(v0 + 216);
  v69 = v1;
  *(v0 + 112) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v69)
  {
    v64 = *(v68 + 216);
    v65 = [v64 code];
    MEMORY[0x277D82BD8](v64);
    v66 = v65;
    v67 = 0;
  }

  else
  {
    v66 = 0;
    v67 = 1;
  }

  if (v67)
  {
    v25 = sub_268DC866C();
    v29 = *v25;
    MEMORY[0x277D82BE0](*v25);
    v28 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("GetSettingIntentResponse does not exist", 39, 2, &dword_268CBE000, v29, v28);

    MEMORY[0x277D82BD8](v29);
    sub_268D28BD4();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();
LABEL_25:
    v27 = *(*(v68 + 112) + 8);

    return v27();
  }

  *(v68 + 152) = v66;
  if (v66 != 6)
  {
    if (v66 == 7)
    {
      v2 = swift_task_alloc();
      *(v68 + 232) = v2;
      *v2 = *(v68 + 112);
      v2[1] = sub_268EFB264;
      v3 = *(v68 + 216);
      v4 = *(v68 + 208);

      return sub_268EFD960(v4, v3);
    }

    v30 = *(v68 + 216);
    v21 = sub_268DC866C();
    v35 = *v21;
    MEMORY[0x277D82BE0](*v21);
    v34 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v33 = v22;
    MEMORY[0x277D82BE0](v30);
    *(v68 + 160) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v31 = sub_268F9AE64();
    v32 = v23;
    v33[3] = MEMORY[0x277D837D0];
    v33[4] = sub_268CDD224();
    *v33 = v31;
    v33[1] = v32;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingIntentResponse contains unsupported error code: %@", 60, 2, &dword_268CBE000, v35, v34);

    MEMORY[0x277D82BD8](v35);
    sub_268D284D4();
    swift_allocError();
    *v24 = 7;
    swift_willThrow();
    goto LABEL_25;
  }

  v55 = *(v68 + 216);
  v62 = *(v68 + 208);
  v6 = sub_268DC866C();
  v61 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v60 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v58 = v7;
  MEMORY[0x277D82BE0](v55);
  *(v68 + 168) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
  v56 = sub_268F9AE64();
  v57 = v8;
  v58[3] = MEMORY[0x277D837D0];
  v59 = sub_268CDD224();
  v58[4] = v59;
  *v58 = v56;
  v58[1] = v57;
  sub_268CD0F7C();
  sub_268F9AC04("Rendering failureUnsupported.", 29, 2, &dword_268CBE000, v61, v60);

  MEMORY[0x277D82BD8](v61);
  *(v68 + 176) = v62;
  v9 = sub_268D2E630();
  v63._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v9, &protocol witness table for INGetSettingIntent);
  v63._object = v10;
  *(v68 + 240) = v10;
  if (v10)
  {
    *(v68 + 96) = v63._countAndFlagsBits;
    *(v68 + 104) = v10;

    BinarySettingIdentifier.init(rawValue:)(v63);
    if (v70 != 65)
    {
      *(v68 + 304) = v70;
      v53 = *sub_268E79858();

      *(v68 + 192) = v53;
      *(v68 + 305) = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
      sub_268D28B4C();
      sub_268D288C8();
      v54 = sub_268F9AFC4();
      sub_268CD7930((v68 + 192));
      if (v54)
      {
        v48 = *(v68 + 224);
        v44 = *(v68 + 216);
        v11 = sub_268DC866C();
        v47 = *v11;
        MEMORY[0x277D82BE0](*v11);
        v46 = sub_268F9B284();
        sub_268F9B734();
        v45 = v12;
        MEMORY[0x277D82BE0](v44);
        *(v68 + 200) = v44;
        v13 = sub_268F9AE64();
        v45[3] = MEMORY[0x277D837D0];
        v45[4] = v59;
        *v45 = v13;
        v45[1] = v14;
        sub_268CD0F7C();
        sub_268F9AC04("Rendering Noise Management case.", 32, 2, &dword_268CBE000, v47, v46);

        MEMORY[0x277D82BD8](v47);
        sub_268CDE730(v48 + qword_280FE80A0, v68 + 56);
        v50 = *(v68 + 80);
        v51 = *(v68 + 88);
        __swift_project_boxed_opaque_existential_1((v68 + 56), v50);

        v49 = swift_task_alloc();
        *(v68 + 248) = v49;
        *(v49 + 16) = v63;
        *(v49 + 32) = v48;
        v52 = (*(v51 + 24) + **(v51 + 24));
        v15 = swift_task_alloc();
        *(v68 + 256) = v15;
        *v15 = *(v68 + 112);
        v15[1] = sub_268EFB470;

        return v52(sub_268F1C060, v49, v50, v51);
      }
    }
  }

  v40 = *(v68 + 224);
  v36 = *(v68 + 216);
  v16 = sub_268DC866C();
  v39 = *v16;
  MEMORY[0x277D82BE0](*v16);
  v38 = sub_268F9B284();
  sub_268F9B734();
  v37 = v17;
  MEMORY[0x277D82BE0](v36);
  *(v68 + 184) = v36;
  v18 = sub_268F9AE64();
  v37[3] = MEMORY[0x277D837D0];
  v37[4] = v59;
  *v37 = v18;
  v37[1] = v19;
  sub_268CD0F7C();
  sub_268F9AC04("Rendering standard response.", 28, 2, &dword_268CBE000, v39, v38);

  MEMORY[0x277D82BD8](v39);
  sub_268CDE730(v40 + qword_280FE80A0, v68 + 16);
  v43 = *(v68 + 40);
  v41 = *(v68 + 48);
  __swift_project_boxed_opaque_existential_1((v68 + 16), v43);
  v42 = (*(v41 + 40) + **(v41 + 40));
  v20 = swift_task_alloc();
  *(v68 + 280) = v20;
  *v20 = *(v68 + 112);
  v20[1] = sub_268EFB6E4;

  return v42(v43, v41);
}

uint64_t sub_268EFB264(uint64_t a1)
{
  v7 = *v2;
  *(v7 + 112) = *v2;
  v8 = v7 + 112;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    v3 = a1;
    v4 = *(*v8 + 8);
  }

  return v4(v3);
}

uint64_t sub_268EFB470(uint64_t a1)
{
  v5 = *v2;
  v5[14] = *v2;
  v5[33] = a1;
  v5[34] = v1;

  if (v1)
  {
    v3 = sub_268EFB9C0;
  }

  else
  {

    v3 = sub_268EFB614;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EFB614()
{
  v0[14] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v1 = v0[33];
  v2 = *(v0[14] + 8);

  return v2(v1);
}

uint64_t sub_268EFB6E4(uint64_t a1)
{
  v5 = *v2;
  v5[14] = *v2;
  v5[36] = a1;
  v5[37] = v1;

  if (v1)
  {
    v3 = sub_268EFB90C;
  }

  else
  {
    v3 = sub_268EFB854;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EFB854()
{
  v0[14] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[36];
  v2 = *(v0[14] + 8);

  return v2(v1);
}

uint64_t sub_268EFB90C()
{
  *(v0 + 112) = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(*(v0 + 112) + 8);

  return v1();
}

uint64_t sub_268EFB9C0()
{
  *(v0 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v1 = *(*(v0 + 112) + 8);

  return v1();
}

uint64_t sub_268EFBAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SettingsBinarySetting(0);

  *(a1 + 8) = SettingsBinarySetting.__allocating_init(settingId:value:)(a2, a3, 0);

  *(a1 + 16) = sub_268CDD6D4() & 1;
  v9 = *(a4 + qword_280FE37C8);

  *a1 = v9;

  DoesNotSupportBinarySettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters(0);
  result = a1;
  *(a1 + *(DoesNotSupportBinarySettingParameters + 36)) = 2;
  *(a1 + *(DoesNotSupportBinarySettingParameters + 32)) = 1;
  return result;
}

uint64_t sub_268EFBC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 160) = v3;
  *(v4 + 152) = a2;
  *(v4 + 72) = v4;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 240) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 168) = v5;
  *(v4 + 176) = *(v5 - 8);
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 80) = a1;
  *(v4 + 88) = a2;
  *(v4 + 96) = a3;
  *(v4 + 104) = v3;

  return MEMORY[0x2822009F8](sub_268EFBD84, 0);
}

uint64_t sub_268EFBD84()
{
  v39 = v0[19];
  v0[9] = v0;
  v1 = sub_268DC866C();
  v38 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v37 = sub_268F9B284();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v36 = v2;
  MEMORY[0x277D82BE0](v39);
  v0[14] = v39;
  v40 = sub_268D2E630();
  sub_268D59CAC();
  v34 = sub_268F9AE74();
  v35 = v3;
  v36[3] = MEMORY[0x277D837D0];
  v4 = sub_268CDD224();
  v0[26] = v4;
  v36[4] = v4;
  *v36 = v34;
  v36[1] = v35;
  sub_268CD0F7C();
  sub_268F9AC04("INGetSettingIntent requires confirmation %@", 43, 2, &dword_268CBE000, v38, v37);

  MEMORY[0x277D82BD8](v38);
  v0[15] = v39;
  v0[7] = SettingIntent.settingIdentifier.getter(v40, &protocol witness table for INGetSettingIntent);
  v0[8] = v5;
  if (v0[8])
  {
    v42 = *(v33 + 56);
  }

  else
  {
    v42._countAndFlagsBits = sub_268F9AEF4();
    v42._object = v6;
    if (*(v33 + 64))
    {
      sub_268CD9D30(v33 + 56);
    }
  }

  v25 = *(v33 + 192);
  v24 = *(v33 + 184);
  v26 = *(v33 + 168);
  v22 = *(v33 + 160);
  v23 = *(v33 + 176);
  BinarySettingIdentifier.init(rawValue:)(v42);
  *(v33 + 240) = v41;
  sub_268D28C4C();
  *(v33 + 128) = sub_268CF0C44();
  v7 = sub_268DB9CB4();
  v29 = *v7;
  v30 = v7[1];
  v31 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v32 = *v8;
  MEMORY[0x277D82BE0](*v8);
  (*(v23 + 16))(v25, v22 + qword_280FE3800, v26);
  sub_268F9AB14();
  v28 = sub_268F9AB04();
  v27 = *(v23 + 8);
  v27(v24, v26);
  v27(v25, v26);
  sub_268DB9934(v29, v30, v31, v32, (v28 ^ 1) & 1);
  MEMORY[0x277D82BD8](v32);
  if (v41 != 65 && (v41 == 35 || v41 == 36))
  {
    sub_268CDE730(*(v33 + 160) + qword_280FE37D0, v33 + 16);
    v21 = *(v33 + 40);
    v19 = *(v33 + 48);
    __swift_project_boxed_opaque_existential_1((v33 + 16), v21);
    v20 = (*(v19 + 56) + **(v19 + 56));
    v9 = swift_task_alloc();
    *(v33 + 216) = v9;
    *v9 = *(v33 + 72);
    v9[1] = sub_268EFC4D4;

    return v20(v21, v19);
  }

  else
  {
    v11 = sub_268DB9CB4();
    v17 = *v11;
    v15 = v11[1];
    v16 = *(v11 + 16);
    v12 = sub_268DC7BA8();
    v18 = *v12;
    MEMORY[0x277D82BE0](*v12);
    sub_268DB9B78(v17, v15, v16, v18);
    MEMORY[0x277D82BD8](v18);
    sub_268D284D4();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    MEMORY[0x277D82BD8](*(v33 + 128));

    v14 = *(*(v33 + 72) + 8);

    return v14();
  }
}

uint64_t sub_268EFC4D4(uint64_t a1)
{
  v5 = *v2;
  v5[9] = *v2;
  v5[28] = a1;
  v5[29] = v1;

  if (v1)
  {
    v3 = sub_268EFC7A4;
  }

  else
  {
    v3 = sub_268EFC644;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EFC644()
{
  v1 = v0[28];
  v8 = v1;
  v0[9] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[16];
  v0[16] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = sub_268DB9CB4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[16]);

  v5 = *(*(v13 + 72) + 8);
  v6 = *(v13 + 224);

  return v5(v6);
}

uint64_t sub_268EFC7A4()
{
  v19 = v0[29];
  v11 = v0[26];
  v0[9] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v19;
  v0[17] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[18] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingIntent#HotspotDiscoverabilityPrompt pattern execution error %@", 72, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB9CB4();
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

  MEMORY[0x277D82BD8](v0[16]);

  v9 = *(v0[9] + 8);

  return v9();
}

uint64_t sub_268EFCA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = v3;
  v4[17] = a2;
  v4[9] = v4;
  v4[10] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v4[14] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[16] = 0;
  v5 = sub_268F9AB24();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = v3;

  return MEMORY[0x2822009F8](sub_268EFCBE4, 0);
}

uint64_t sub_268EFCBE4()
{
  v1 = v0[22];
  v40 = v0[21];
  v39 = v0[20];
  v41 = v0[19];
  v38 = v0[18];
  v48 = v0[17];
  v0[9] = v0;
  v2 = sub_268DB98D4();
  v44 = *v2;
  v45 = v2[1];
  v46 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v47 = *v3;
  MEMORY[0x277D82BE0](*v3);
  (*(v39 + 16))(v1, v38 + qword_280FE3800, v41);
  sub_268F9AB14();
  v43 = sub_268F9AB04();
  v42 = *(v39 + 8);
  v42(v40, v41);
  v42(v1, v41);
  sub_268DB9934(v44, v45, v46, v47, (v43 ^ 1) & 1);
  v49 = [v48 settingMetadata];
  if (v49)
  {
    v34 = [v49 settingId];
    v35._countAndFlagsBits = sub_268F9AE24();
    v35._object = v4;
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v34);
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  *(v37 + 184) = v36._object;
  if (v36._object)
  {
    *(v37 + 56) = v36;

    BinarySettingIdentifier.init(rawValue:)(v36);
    if (v50 != 65 && (v50 == 35 || v50 == 36))
    {
      sub_268CDE730(*(v37 + 144) + qword_280FE37B0, v37 + 16);
      v30 = *(v37 + 40);
      v31 = *(v37 + 48);
      __swift_project_boxed_opaque_existential_1((v37 + 16), v30);
      v33 = sub_268E948B8(14);
      v29 = v5;
      *(v37 + 192) = v5;
      v32 = (*(v31 + 128) + **(v31 + 128));
      v6 = swift_task_alloc();
      *(v37 + 200) = v6;
      *v6 = *(v37 + 72);
      v6[1] = sub_268EFD404;

      return v32(v33, v29, v30, v31);
    }

    sub_268D28CD0();
    v27 = swift_allocError();
    swift_willThrow();

    v28 = v27;
  }

  else
  {
    v8 = sub_268DB98D4();
    v24 = *v8;
    v22 = v8[1];
    v23 = *(v8 + 16);
    v9 = sub_268DC7BA8();
    v25 = *v9;
    MEMORY[0x277D82BE0](*v9);
    sub_268DB9B78(v24, v22, v23, v25);
    MEMORY[0x277D82BD8](v25);
    sub_268D28BD4();
    v26 = swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v28 = v26;
  }

  v11 = v28;
  *(v37 + 112) = v28;
  v12 = sub_268DC7B48();
  v21 = *v12;
  MEMORY[0x277D82BE0](*v12);
  v20 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v19 = v13;
  v14 = v28;
  *(v37 + 120) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v17 = sub_268F9AE64();
  v18 = v15;
  v19[3] = MEMORY[0x277D837D0];
  v19[4] = sub_268CDD224();
  *v19 = v17;
  v19[1] = v18;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#RetainingCurrentBinaryValue pattern execution error %@", 77, 2, &dword_268CBE000, v21, v20);

  MEMORY[0x277D82BD8](v21);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v16 = *(*(v37 + 72) + 8);

  return v16();
}

uint64_t sub_268EFD404(uint64_t a1)
{
  v5 = *v2;
  v5[9] = *v2;
  v5[26] = a1;
  v5[27] = v1;

  if (v1)
  {
    v3 = sub_268EFD6D0;
  }

  else
  {

    v3 = sub_268EFD588;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EFD588()
{
  v1 = v0[26];
  v0[9] = v0;
  v0[16] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);

  v4 = *(*(v11 + 72) + 8);
  v5 = *(v11 + 208);

  return v4(v5);
}

uint64_t sub_268EFD6D0()
{
  v0[9] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v13 = v0[27];
  v1 = v13;
  v0[14] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[15] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#RetainingCurrentBinaryValue pattern execution error %@", 77, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v6 = *(v0[9] + 8);

  return v6();
}

uint64_t sub_268EFD960(uint64_t a1, uint64_t a2)
{
  *(v3 + 896) = v2;
  *(v3 + 888) = a2;
  *(v3 + 880) = a1;
  *(v3 + 608) = v3;
  *(v3 + 616) = 0;
  *(v3 + 624) = 0;
  *(v3 + 632) = 0;
  *(v3 + 416) = 0;
  *(v3 + 424) = 0;
  *(v3 + 656) = 0;
  *(v3 + 672) = 0;
  *(v3 + 680) = 0;
  *(v3 + 696) = 0;
  *(v3 + 704) = 0;
  *(v3 + 720) = 0;
  *(v3 + 728) = 0;
  *(v3 + 736) = 0;
  *(v3 + 1288) = 0;
  *(v3 + 544) = 0;
  *(v3 + 552) = 0;
  *(v3 + 744) = 0;
  *(v3 + 760) = 0;
  *(v3 + 560) = 0;
  *(v3 + 568) = 0;
  *(v3 + 776) = 0;
  *(v3 + 792) = 0;
  *(v3 + 576) = 0;
  *(v3 + 584) = 0;
  *(v3 + 808) = 0;
  *(v3 + 1296) = 0;
  *(v3 + 1304) = 0;
  *(v3 + 816) = 0;
  *(v3 + 1312) = 0;
  *(v3 + 1320) = 0;
  *(v3 + 1328) = 0;
  *(v3 + 592) = 0;
  *(v3 + 600) = 0;
  *(v3 + 832) = 0;
  *(v3 + 848) = 0;
  *(v3 + 856) = 0;
  *(v3 + 872) = 0;
  v4 = sub_268F9AB24();
  *(v3 + 904) = v4;
  *(v3 + 912) = *(v4 - 8);
  *(v3 + 920) = swift_task_alloc();
  *(v3 + 928) = swift_task_alloc();
  *(v3 + 616) = a1;
  *(v3 + 624) = a2;
  *(v3 + 632) = v2;

  return MEMORY[0x2822009F8](sub_268EFDB38, 0);
}

uint64_t sub_268EFDB38()
{
  v217 = v0;
  v1 = *(v0 + 888);
  v211 = v1;
  *(v0 + 608) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v211)
  {
    v208 = *(v210 + 888);
    v209 = [v208 errorDetail];
    if (v209)
    {
      v204 = sub_268F9AE24();
      v205 = v2;
      MEMORY[0x277D82BD8](v209);
      v206 = v204;
      v207 = v205;
    }

    else
    {
      v206 = 0;
      v207 = 0;
    }

    MEMORY[0x277D82BD8](v208);
    v202 = v206;
    v203 = v207;
  }

  else
  {
    v202 = 0;
    v203 = 0;
  }

  *(v210 + 936) = v203;
  if (!v203)
  {
    v75 = *(v210 + 888);
    v71 = sub_268DC866C();
    v80 = *v71;
    MEMORY[0x277D82BE0](*v71);
    v79 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v78 = v72;
    MEMORY[0x277D82BE0](v75);
    *(v210 + 640) = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v76 = sub_268F9AE64();
    v77 = v73;
    v78[3] = MEMORY[0x277D837D0];
    v78[4] = sub_268CDD224();
    *v78 = v76;
    v78[1] = v77;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingIntentResponse contains error code 'other reason' but no details: %@", 78, 2, &dword_268CBE000, v80, v79);

    MEMORY[0x277D82BD8](v80);
    sub_268D28BD4();
    swift_allocError();
    *v74 = 3;
    swift_willThrow();
    goto LABEL_70;
  }

  v3 = *(v210 + 928);
  v193 = *(v210 + 920);
  v194 = *(v210 + 904);
  v191 = *(v210 + 896);
  v192 = *(v210 + 912);
  *(v210 + 416) = v202;
  *(v210 + 424) = v203;
  v4 = sub_268DB9CB4();
  v197 = *v4;
  v198 = v4[1];
  v199 = *(v4 + 16);
  v5 = sub_268DC7BA8();
  v200 = *v5;
  MEMORY[0x277D82BE0](*v5);
  (*(v192 + 16))(v3, v191 + qword_280FE3800, v194);
  sub_268F9AB14();
  v196 = sub_268F9AB04();
  v195 = *(v192 + 8);
  v195(v193, v194);
  v195(v3, v194);
  sub_268DB9934(v197, v198, v199, v200, (v196 ^ 1) & 1);
  MEMORY[0x277D82BD8](v200);

  *(v210 + 432) = sub_268E948B8(3);
  *(v210 + 440) = v6;
  v201 = MEMORY[0x26D62DB50](*(v210 + 432), *(v210 + 440), v202, v203);
  sub_268CD9D30(v210 + 432);
  if (v201)
  {
    v189 = *(v210 + 880);

    v190 = [v189 settingMetadata];
    if (v190)
    {
      v184 = [v190 settingId];
      v185 = sub_268F9AE24();
      v186 = v7;
      MEMORY[0x277D82BD8](v190);
      MEMORY[0x277D82BD8](v184);
      v187 = v185;
      v188 = v186;
    }

    else
    {
      v187 = 0;
      v188 = 0;
    }

    *(v210 + 944) = v188;
    if (v188)
    {
      *(v210 + 592) = v187;
      *(v210 + 600) = v188;
      if (sub_268E07AE4(v187, v188))
      {
        v179 = *(v210 + 896);
        sub_268CDE730(v179 + qword_280FE80A0, v210 + 376);
        v181 = *(v210 + 400);
        v182 = *(v210 + 408);
        __swift_project_boxed_opaque_existential_1((v210 + 376), v181);

        v180 = swift_task_alloc();
        *(v210 + 952) = v180;
        v180[2] = v179;
        v180[3] = v187;
        v180[4] = v188;
        v183 = (*(v182 + 24) + **(v182 + 24));
        v8 = swift_task_alloc();
        v9 = v180;
        v10 = v181;
        v11 = v182;
        v12 = v183;
        v13 = v8;
        v14 = sub_268F1C0C0;
        *(v210 + 960) = v13;
        *v13 = *(v210 + 608);
        v13[1] = sub_268F0038C;

        return v12(v14, v9, v10, v11);
      }

      if (sub_268E07B94(v187, v188))
      {
        v174 = *(v210 + 896);
        sub_268CDE730(v174 + qword_280FE80A0, v210 + 336);
        v176 = *(v210 + 360);
        v177 = *(v210 + 368);
        __swift_project_boxed_opaque_existential_1((v210 + 336), v176);

        v175 = swift_task_alloc();
        *(v210 + 984) = v175;
        v175[2] = v174;
        v175[3] = v187;
        v175[4] = v188;
        v178 = (*(v177 + 48) + **(v177 + 48));
        v15 = swift_task_alloc();
        v9 = v175;
        v10 = v176;
        v11 = v177;
        v12 = v178;
        v16 = v15;
        v14 = sub_268F1C0B0;
        *(v210 + 992) = v16;
        *v16 = *(v210 + 608);
        v16[1] = sub_268F006A4;

        return v12(v14, v9, v10, v11);
      }

      v68 = sub_268DB98D4();
      v83 = *v68;
      v81 = v68[1];
      v82 = *(v68 + 16);
      v69 = sub_268DC7BA8();
      v84 = *v69;
      MEMORY[0x277D82BE0](*v69);
      sub_268DB9B78(v83, v81, v82, v84);
      MEMORY[0x277D82BD8](v84);
      sub_268D28BD4();
      swift_allocError();
      *v70 = 4;
      swift_willThrow();
    }

    else
    {
      v17 = sub_268DB98D4();
      v172 = *v17;
      v170 = v17[1];
      v171 = *(v17 + 16);
      v18 = sub_268DC7BA8();
      v173 = *v18;
      MEMORY[0x277D82BE0](*v18);
      sub_268DB9B78(v172, v170, v171, v173);
      MEMORY[0x277D82BD8](v173);
      sub_268D28BD4();
      swift_allocError();
      *v19 = 2;
      swift_willThrow();
    }

    goto LABEL_70;
  }

  *(v210 + 448) = sub_268E948B8(17);
  *(v210 + 456) = v20;
  v168 = MEMORY[0x26D62DB50](*(v210 + 448), *(v210 + 456), v202, v203);
  sub_268CD9D30(v210 + 448);
  if ((v168 & 1) == 0)
  {

    *(v210 + 464) = sub_268E948B8(7);
    *(v210 + 472) = v36;
    v137 = MEMORY[0x26D62DB50](*(v210 + 464), *(v210 + 472), v202, v203);
    sub_268CD9D30(v210 + 464);
    if (v137)
    {
      v134 = *(v210 + 880);

      *(v210 + 768) = v134;
      v37 = sub_268D2E630();
      v135 = SettingIntent.settingIdentifier.getter(v37, &protocol witness table for INGetSettingIntent);
      v136 = v38;
      *(v210 + 1120) = v38;
      if (v38)
      {
        v39 = *(v210 + 896);
        *(v210 + 560) = v135;
        *(v210 + 568) = v38;
        sub_268CDE730(v39 + qword_280FE80A0, v210 + 176);
        v131 = *(v210 + 200);
        v132 = *(v210 + 208);
        __swift_project_boxed_opaque_existential_1((v210 + 176), v131);

        v130 = swift_task_alloc();
        *(v210 + 1128) = v130;
        *(v130 + 16) = v135;
        *(v130 + 24) = v136;
        v133 = (*(v132 + 32) + **(v132 + 32));
        v40 = swift_task_alloc();
        v9 = v130;
        v10 = v131;
        v11 = v132;
        v12 = v133;
        v41 = v40;
        v14 = sub_268F1C078;
        *(v210 + 1136) = v41;
        *v41 = *(v210 + 608);
        v41[1] = sub_268F013CC;

        return v12(v14, v9, v10, v11);
      }

      v42 = sub_268DB98D4();
      v128 = *v42;
      v126 = v42[1];
      v127 = *(v42 + 16);
      v43 = sub_268DC7BA8();
      v129 = *v43;
      MEMORY[0x277D82BE0](*v43);
      sub_268DB9B78(v128, v126, v127, v129);
      MEMORY[0x277D82BD8](v129);
      sub_268D28BD4();
      swift_allocError();
      *v44 = 2;
      swift_willThrow();
    }

    else
    {

      *(v210 + 480) = sub_268E948B8(10);
      *(v210 + 488) = v45;
      v125 = MEMORY[0x26D62DB50](*(v210 + 480), *(v210 + 488), v202, v203);
      sub_268CD9D30(v210 + 480);
      if (v125)
      {
        v123 = *(v210 + 880);

        v124 = [v123 settingMetadata];
        if (v124)
        {
          v121 = [v124 targetDevice];
          *&v46 = MEMORY[0x277D82BD8](v124).n128_u64[0];
          v122 = v121;
        }

        else
        {
          v122 = 0;
        }

        *(v210 + 1160) = v122;
        if (v122)
        {
          v120 = *(v210 + 880);
          *(v210 + 728) = v122;
          *(v210 + 736) = [v122 deviceCategory];
          *(v210 + 1288) = sub_268E07FF4(v120) & 1;
          *(v210 + 544) = sub_268F9AEF4();
          *(v210 + 552) = v47;
          *(v210 + 544) = ReadBatteryDeviceCategory.rawValue.getter();
          *(v210 + 552) = v48;

          sub_268CDE730(*(v210 + 896) + qword_280FE37D0, v210 + 136);
          v117 = *(v210 + 160);
          v118 = *(v210 + 168);
          __swift_project_boxed_opaque_existential_1((v210 + 136), v117);
          v116 = swift_task_alloc();
          *(v210 + 1168) = v116;
          *(v116 + 16) = v210 + 544;
          v119 = (*(v118 + 8) + **(v118 + 8));
          v49 = swift_task_alloc();
          v9 = v116;
          v10 = v117;
          v11 = v118;
          v12 = v119;
          v50 = v49;
          v14 = sub_268F1C070;
          *(v210 + 1176) = v50;
          *v50 = *(v210 + 608);
          v50[1] = sub_268F016D4;

          return v12(v14, v9, v10, v11);
        }

        v51 = sub_268DC866C();
        v115 = *v51;
        MEMORY[0x277D82BE0](*v51);
        v114 = sub_268F9B294();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        sub_268F9AC04("GetSettingIntent#targetDeviceNotFoundReadBattery pattern execution error missing target device.", 95, 2, &dword_268CBE000, v115, v114);

        MEMORY[0x277D82BD8](v115);
        sub_268D28CD0();
        swift_allocError();
        swift_willThrow();
      }

      else
      {

        *(v210 + 496) = sub_268E948B8(12);
        *(v210 + 504) = v52;
        v113 = MEMORY[0x26D62DB50](*(v210 + 496), *(v210 + 504), v202, v203);
        sub_268CD9D30(v210 + 496);
        if (v113)
        {
          v107 = *(v210 + 896);

          sub_268CDE730(v107 + qword_280FE37B0, v210 + 96);
          v109 = *(v210 + 120);
          v110 = *(v210 + 128);
          __swift_project_boxed_opaque_existential_1((v210 + 96), v109);
          v112 = sub_268E948B8(12);
          v108 = v53;
          *(v210 + 1200) = v53;
          v111 = (*(v110 + 128) + **(v110 + 128));
          v54 = swift_task_alloc();
          v9 = v108;
          v10 = v109;
          v11 = v110;
          v12 = v111;
          v55 = v54;
          v14 = v112;
          *(v210 + 1208) = v55;
          *v55 = *(v210 + 608);
          v55[1] = sub_268F019E4;

          return v12(v14, v9, v10, v11);
        }

        *(v210 + 512) = sub_268E948B8(16);
        *(v210 + 520) = v56;
        v106 = MEMORY[0x26D62DB50](*(v210 + 512), *(v210 + 520), v202, v203);
        sub_268CD9D30(v210 + 512);
        if (v106)
        {
          v100 = *(v210 + 896);

          sub_268CDE730(v100 + qword_280FE37B0, v210 + 56);
          v102 = *(v210 + 80);
          v103 = *(v210 + 88);
          __swift_project_boxed_opaque_existential_1((v210 + 56), v102);
          v105 = sub_268E948B8(16);
          v101 = v57;
          *(v210 + 1232) = v57;
          v104 = (*(v103 + 128) + **(v103 + 128));
          v58 = swift_task_alloc();
          v9 = v101;
          v10 = v102;
          v11 = v103;
          v12 = v104;
          v59 = v58;
          v14 = v105;
          *(v210 + 1240) = v59;
          *v59 = *(v210 + 608);
          v59[1] = sub_268F01CC8;

          return v12(v14, v9, v10, v11);
        }

        *(v210 + 528) = sub_268E948B8(22);
        *(v210 + 536) = v60;
        v99 = MEMORY[0x26D62DB50](*(v210 + 528), *(v210 + 536), v202, v203);
        sub_268CD9D30(v210 + 528);
        if (v99)
        {
          v95 = *(v210 + 896);

          sub_268CDE730(v95 + qword_280FE80A0, v210 + 16);
          v98 = *(v210 + 40);
          v96 = *(v210 + 48);
          __swift_project_boxed_opaque_existential_1((v210 + 16), v98);
          v97 = (*(v96 + 104) + **(v96 + 104));
          v61 = swift_task_alloc();
          *(v210 + 1264) = v61;
          *v61 = *(v210 + 608);
          v61[1] = sub_268F01FAC;

          return v97(v98, v96);
        }

        v85 = *(v210 + 888);

        v62 = sub_268DC866C();
        v90 = *v62;
        MEMORY[0x277D82BE0](*v62);
        v89 = sub_268F9B294();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        v88 = v63;
        MEMORY[0x277D82BE0](v85);
        *(v210 + 648) = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
        v86 = sub_268F9AE64();
        v87 = v64;
        v88[3] = MEMORY[0x277D837D0];
        v88[4] = sub_268CDD224();
        *v88 = v86;
        v88[1] = v87;
        sub_268CD0F7C();
        sub_268F9AC04("GetSettingIntentResponse 'other reason' error code contains unsupported error detail: %@", 88, 2, &dword_268CBE000, v90, v89);

        MEMORY[0x277D82BD8](v90);
        v65 = sub_268DB98D4();
        v93 = *v65;
        v91 = v65[1];
        v92 = *(v65 + 16);
        v66 = sub_268DC7BA8();
        v94 = *v66;
        MEMORY[0x277D82BE0](*v66);
        sub_268DB9B78(v93, v91, v92, v94);
        MEMORY[0x277D82BD8](v94);
        sub_268D28BD4();
        swift_allocError();
        *v67 = 4;
        swift_willThrow();
      }
    }

LABEL_70:

    v30 = v169;
    v31 = *(*(v210 + 608) + 8);

    return v31(v30);
  }

  v166 = *(v210 + 880);

  *(v210 + 800) = v166;
  v21 = sub_268D2E630();
  v167._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v21, &protocol witness table for INGetSettingIntent);
  v167._object = v22;
  *(v210 + 1016) = v22;
  if (!v22)
  {
    v33 = sub_268DB98D4();
    v140 = *v33;
    v138 = v33[1];
    v139 = *(v33 + 16);
    v34 = sub_268DC7BA8();
    v141 = *v34;
    MEMORY[0x277D82BE0](*v34);
    sub_268DB9B78(v140, v138, v139, v141);
    MEMORY[0x277D82BD8](v141);
    sub_268D28BD4();
    swift_allocError();
    *v35 = 2;
    swift_willThrow();

    goto LABEL_70;
  }

  *(v210 + 576) = v167._countAndFlagsBits;
  *(v210 + 584) = v22;
  sub_268D28C4C();
  *(v210 + 808) = sub_268CF0C44();
  v23 = BinarySettingIdentifier.rawValue.getter();
  v165 = MEMORY[0x26D62DB50](v167._countAndFlagsBits, v167._object, v23);

  if (v165)
  {
    v159 = *(v210 + 896);

    v215[2] = 45;
    v24._countAndFlagsBits = BinarySettingIdentifier.rawValue.getter();
    BinarySettingIdentifier.init(rawValue:)(v24);
    v216 = v215[1];
    v164 = sub_268F397B4(&v216);

    *(v210 + 1328) = v164;
    sub_268CDE730(v159 + qword_280FE80A0, v210 + 296);
    v161 = *(v210 + 320);
    v162 = *(v210 + 328);
    __swift_project_boxed_opaque_existential_1((v210 + 296), v161);

    v160 = swift_task_alloc();
    *(v210 + 1024) = v160;
    *(v160 + 16) = v167;
    v163 = (*(v162 + 64) + **(v162 + 64));
    v25 = swift_task_alloc();
    *(v210 + 1032) = v25;
    *v25 = *(v210 + 608);
    v25[1] = sub_268F009BC;

    return v163(v164, sub_268F1C0A4, v160, v161, v162);
  }

  else
  {

    BinarySettingIdentifier.init(rawValue:)(v167);
    if (v212 == 65)
    {

      NumericSettingIdentifier.init(rawValue:)(v167);
      if (v213 == 13)
      {
        v28 = sub_268DB9CB4();
        v150 = *v28;
        v148 = v28[1];
        v149 = *(v28 + 16);
        v29 = sub_268DC7BA8();
        v151 = *v29;
        MEMORY[0x277D82BE0](*v29);
        sub_268DB9B78(v150, v148, v149, v151);
        MEMORY[0x277D82BD8](v151);
        v152 = *(v210 + 808);
        MEMORY[0x277D82BE0](v152);
        MEMORY[0x277D82BD8](*(v210 + 808));

        v30 = v152;
        v31 = *(*(v210 + 608) + 8);

        return v31(v30);
      }

      v142 = *(v210 + 896);
      *(v210 + 1296) = v213;

      v214 = v213;
      v147 = sub_268F3988C(&v214);

      *(v210 + 1304) = v147;
      sub_268CDE730(v142 + qword_280FE80A0, v210 + 216);
      v144 = *(v210 + 240);
      v145 = *(v210 + 248);
      __swift_project_boxed_opaque_existential_1((v210 + 216), v144);

      v143 = swift_task_alloc();
      *(v210 + 1088) = v143;
      *(v143 + 16) = v167;
      *(v143 + 32) = v213;
      v146 = (*(v145 + 72) + **(v145 + 72));
      v32 = swift_task_alloc();
      *(v210 + 1096) = v32;
      *v32 = *(v210 + 608);
      v32[1] = sub_268F0105C;

      return v146(v147, sub_268F1C084, v143, v144, v145);
    }

    else
    {
      v153 = *(v210 + 896);
      *(v210 + 1312) = v212;

      v215[0] = v212;
      v158 = sub_268F397B4(v215);

      *(v210 + 1320) = v158;
      sub_268CDE730(v153 + qword_280FE37D0, v210 + 256);
      v155 = *(v210 + 280);
      v156 = *(v210 + 288);
      __swift_project_boxed_opaque_existential_1((v210 + 256), v155);

      v154 = swift_task_alloc();
      *(v210 + 1056) = v154;
      *(v154 + 16) = v167;
      *(v154 + 32) = v212;
      v157 = (*(v156 + 24) + **(v156 + 24));
      v27 = swift_task_alloc();
      *(v210 + 1064) = v27;
      *v27 = *(v210 + 608);
      v27[1] = sub_268F00D00;

      return v157(v158, sub_268F1C094, v154, v155, v156);
    }
  }
}

uint64_t sub_268F0038C(uint64_t a1)
{
  v5 = *v2;
  v5[76] = *v2;
  v5[121] = a1;
  v5[122] = v1;

  if (v1)
  {
    v3 = sub_268F0227C;
  }

  else
  {

    v3 = sub_268F00534;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F00534()
{
  v1 = v0[121];
  v0[76] = v0;
  v0[109] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  v2 = sub_268DB9CB4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  v10 = v0[121];

  v4 = *(v0[76] + 8);

  return v4(v10);
}

uint64_t sub_268F006A4(uint64_t a1)
{
  v5 = *v2;
  v5[76] = *v2;
  v5[125] = a1;
  v5[126] = v1;

  if (v1)
  {
    v3 = sub_268F02580;
  }

  else
  {

    v3 = sub_268F0084C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F0084C()
{
  v1 = v0[125];
  v0[76] = v0;
  v0[106] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  v2 = sub_268DB9CB4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  v10 = v0[125];

  v4 = *(v0[76] + 8);

  return v4(v10);
}

uint64_t sub_268F009BC(uint64_t a1)
{
  v5 = *v2;
  v5[76] = *v2;
  v5[130] = a1;
  v5[131] = v1;

  if (v1)
  {
    v3 = sub_268F02884;
  }

  else
  {

    v3 = sub_268F00B54;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F00B54()
{
  v1 = v0[130];
  v0[76] = v0;
  v2 = v0[101];
  v0[101] = v1;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v3 = sub_268DB9CB4();
  v9 = *v3;
  v7 = v3[1];
  v8 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v10 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  v11 = v0[101];
  MEMORY[0x277D82BE0](v11);
  MEMORY[0x277D82BD8](v0[101]);

  v5 = *(v0[76] + 8);

  return v5(v11);
}

uint64_t sub_268F00D00(uint64_t a1)
{
  v5 = *v2;
  v5[76] = *v2;
  v5[134] = a1;
  v5[135] = v1;

  if (v1)
  {
    v3 = sub_268F02BAC;
  }

  else
  {

    v3 = sub_268F00E98;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F00E98()
{
  v1 = v0[134];
  v0[76] = v0;
  v2 = v0[101];
  v0[101] = v1;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v3 = sub_268DB9CB4();
  v9 = *v3;
  v7 = v3[1];
  v8 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v10 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  v11 = v0[101];
  MEMORY[0x277D82BE0](v11);
  MEMORY[0x277D82BD8](v0[101]);

  v5 = *(v0[76] + 8);

  return v5(v11);
}

uint64_t sub_268F0105C(uint64_t a1)
{
  v5 = *v2;
  v5[76] = *v2;
  v5[138] = a1;
  v5[139] = v1;

  if (v1)
  {
    v3 = sub_268F02ED8;
  }

  else
  {

    v3 = sub_268F011F4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F011F4()
{
  v1 = v0[138];
  v0[76] = v0;
  v2 = v0[101];
  v0[101] = v1;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v3 = sub_268DB9CB4();
  v9 = *v3;
  v7 = v3[1];
  v8 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v10 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  v11 = v0[101];
  MEMORY[0x277D82BE0](v11);
  MEMORY[0x277D82BD8](v0[101]);

  v5 = *(v0[76] + 8);

  return v5(v11);
}

uint64_t sub_268F013CC(uint64_t a1)
{
  v5 = *v2;
  v5[76] = *v2;
  v5[143] = a1;
  v5[144] = v1;

  if (v1)
  {
    v3 = sub_268F03204;
  }

  else
  {

    v3 = sub_268F01564;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F01564()
{
  v1 = v0[143];
  v0[76] = v0;
  v0[99] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v2 = sub_268DB9CB4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  v10 = v0[143];

  v4 = *(v0[76] + 8);

  return v4(v10);
}

uint64_t sub_268F016D4(uint64_t a1)
{
  v5 = *v2;
  v5[76] = *v2;
  v5[148] = a1;
  v5[149] = v1;

  if (v1)
  {
    v3 = sub_268F034F8;
  }

  else
  {

    v3 = sub_268F0185C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F0185C()
{
  v1 = v0[148];
  v10 = v0[145];
  v0[76] = v0;
  v0[95] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v2 = sub_268DB9CB4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);
  sub_268CD9D30((v0 + 68));
  MEMORY[0x277D82BD8](v10);

  v11 = v0[148];

  v4 = *(v0[76] + 8);

  return v4(v11);
}

uint64_t sub_268F019E4(uint64_t a1)
{
  v5 = *v2;
  v5[76] = *v2;
  v5[152] = a1;
  v5[153] = v1;

  if (v1)
  {
    v3 = sub_268F037FC;
  }

  else
  {

    v3 = sub_268F01B6C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F01B6C()
{
  v1 = v0[152];
  v0[76] = v0;
  v0[90] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2 = sub_268DB9CB4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  v10 = v0[152];

  v4 = *(v0[76] + 8);

  return v4(v10);
}

uint64_t sub_268F01CC8(uint64_t a1)
{
  v5 = *v2;
  v5[76] = *v2;
  v5[156] = a1;
  v5[157] = v1;

  if (v1)
  {
    v3 = sub_268F03AD4;
  }

  else
  {

    v3 = sub_268F01E50;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F01E50()
{
  v1 = v0[156];
  v0[76] = v0;
  v0[87] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = sub_268DB9CB4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  v10 = v0[156];

  v4 = *(v0[76] + 8);

  return v4(v10);
}

uint64_t sub_268F01FAC(uint64_t a1)
{
  v5 = *v2;
  v5[76] = *v2;
  v5[159] = a1;
  v5[160] = v1;

  if (v1)
  {
    v3 = sub_268F03DAC;
  }

  else
  {
    v3 = sub_268F02120;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F02120()
{
  v1 = v0[159];
  v0[76] = v0;
  v0[84] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_268DB9CB4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  v10 = v0[159];

  v4 = *(v0[76] + 8);

  return v4(v10);
}

uint64_t sub_268F0227C()
{
  v19 = v0[122];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  v1 = v19;
  v0[107] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[108] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent#DeviceDoesNotSupportBinarySetting pattern execution error %@", 74, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB9CB4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[76] + 8);

  return v8();
}

uint64_t sub_268F02580()
{
  v19 = v0[126];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  v1 = v19;
  v0[104] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[105] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingIntent#DeviceDoesNotSupportNumericSetting pattern execution error %@", 78, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB9CB4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[76] + 8);

  return v8();
}

uint64_t sub_268F02884()
{
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  MEMORY[0x277D82BD8](v0[101]);
  v19 = v0[131];
  v1 = v19;
  v0[102] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[103] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingIntent#SiriCannotChangeSetting pattern execution error %@", 67, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB9CB4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[76] + 8);

  return v8();
}

uint64_t sub_268F02BAC()
{
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  MEMORY[0x277D82BD8](v0[101]);
  v19 = v0[135];
  v1 = v19;
  v0[102] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[103] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingIntent#SiriCannotChangeSetting pattern execution error %@", 67, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB9CB4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[76] + 8);

  return v8();
}

uint64_t sub_268F02ED8()
{
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  MEMORY[0x277D82BD8](v0[101]);
  v19 = v0[139];
  v1 = v19;
  v0[102] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[103] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingIntent#SiriCannotChangeSetting pattern execution error %@", 67, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB9CB4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[76] + 8);

  return v8();
}

uint64_t sub_268F03204()
{
  v19 = v0[144];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v1 = v19;
  v0[97] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[98] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent#FocusNotConfigured pattern execution error %@", 59, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB9CB4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[76] + 8);

  return v8();
}

uint64_t sub_268F034F8()
{
  v19 = v0[149];
  v20 = v0[145];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = v19;
  v0[93] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[94] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingIntent#DeviceDoesNotSupportNumericSetting pattern execution error %@", 78, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB9CB4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  sub_268CD9D30((v0 + 68));
  MEMORY[0x277D82BD8](v20);

  v8 = *(v0[76] + 8);

  return v8();
}

uint64_t sub_268F037FC()
{
  v19 = v0[153];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v19;
  v0[88] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[89] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#DescribeHotspotDiscoverability pattern execution error %@", 80, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB9CB4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[76] + 8);

  return v8();
}

uint64_t sub_268F03AD4()
{
  v19 = v0[157];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v19;
  v0[85] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[86] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#DescribeHotspotDiscoverability pattern execution error %@", 80, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB9CB4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[76] + 8);

  return v8();
}

uint64_t sub_268F03DAC()
{
  v19 = v0[160];
  v0[76] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v19;
  v0[82] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[83] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#DisplaySettingsDisabledForCurrentMode pattern execution error %@", 87, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB9CB4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[76] + 8);

  return v8();
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268F0407C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v30 = a1;
  v21 = a2;
  v31._countAndFlagsBits = a3;
  v31._object = a4;
  v41 = 0;
  v40 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v25 = *a2;
  v22 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v21, v31._countAndFlagsBits, v31._object);
  v23 = &v16 - v22;
  v24 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v26 = &v16 - v24;
  v41 = v9;
  v40 = v10;
  v28 = 0;
  v39 = *(v25 + qword_280FE8090);
  v38 = *(v25 + qword_280FE8090 + 8);
  v36 = v11;
  v37 = v12;
  v27 = *(v10 + qword_280FE37C8);

  *v30 = v27;

  type metadata accessor for SettingsBinarySetting(v28);

  v29 = 1;
  v13 = SettingsBinarySetting.__allocating_init(settingId:value:)(v31._countAndFlagsBits, v31._object, 0);
  *(v30 + 8) = v13;

  *(v30 + 16) = sub_268CDD6D4() & v29;

  result.value = BinarySettingIdentifier.init(rawValue:)(v31).value;
  v32 = v35;
  if (v35 != 65)
  {
    v20 = v32;
    v34 = v32;
    v33 = v32;
    sub_268E0697C(&v33, v26);
    v19 = 0;
    DoesNotSupportBinarySettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters(0);
    sub_268D29FC8(v26, (v30 + *(DoesNotSupportBinarySettingParameters + 28)));
    sub_268D2A1F0((v30 + *(DoesNotSupportBinarySettingParameters + 28)), v23);
    v15 = sub_268F9A9C4();
    v17 = (*(*(v15 - 8) + 48))(v23, 1) == 1;
    v16 = v17;
    result.value = sub_268D28588(v23);
    *(v30 + *(DoesNotSupportBinarySettingParameters + 32)) = v16;
  }

  return result;
}

SiriSettingsIntents::NumericSettingIdentifier_optional sub_268F0437C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v31 = a1;
  v22 = a2;
  v32._countAndFlagsBits = a3;
  v32._object = a4;
  v42 = 0;
  v41 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v26 = *a2;
  v23 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31, v22, v32._countAndFlagsBits, v32._object);
  v24 = &v17 - v23;
  v25 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v27 = &v17 - v25;
  v42 = v9;
  v41 = v10;
  v29 = 0;
  v40 = *(v26 + qword_280FE8090);
  v39 = *(v26 + qword_280FE8090 + 8);
  v37 = v11;
  v38 = v12;
  v28 = *(v10 + qword_280FE37C8);

  *v31 = v28;

  v30 = type metadata accessor for SettingsNumericSetting(v29);

  sub_268D34FD4();
  v13 = sub_268F2B5E0(v29);
  v14 = SettingsNumericSetting.__allocating_init(settingId:value:)(v32._countAndFlagsBits, v32._object, v13);
  *(v31 + 8) = v14;

  *(v31 + 16) = sub_268CDD6D4() & 1;

  result.value = NumericSettingIdentifier.init(rawValue:)(v32).value;
  v33 = v36;
  if (v36 != 13)
  {
    v21 = v33;
    v35 = v33;
    v34 = v33;
    sub_268E0AE44(&v34, v27);
    v20 = 0;
    DoesNotSupportNumericSettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportNumericSettingParameters(0);
    sub_268D29FC8(v27, (v31 + *(DoesNotSupportNumericSettingParameters + 28)));
    sub_268D2A1F0((v31 + *(DoesNotSupportNumericSettingParameters + 28)), v24);
    v16 = sub_268F9A9C4();
    v18 = (*(*(v16 - 8) + 48))(v24, 1) == 1;
    v17 = v18;
    result.value = sub_268D28588(v24);
    *(v31 + *(DoesNotSupportNumericSettingParameters + 32)) = v17;
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268F04688(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a1;
  v24._countAndFlagsBits = a2;
  v24._object = a3;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v24._countAndFlagsBits, v24._object, v3);
  v20 = &v14 - v19;
  v21 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, &v14 - v19);
  v22 = &v14 - v21;
  v31 = v8;
  v29 = v9;
  v30 = v10;
  type metadata accessor for SettingsMultiSetting(0);

  v11 = sub_268E067CC(v24._countAndFlagsBits, v24._object, 0);
  *(v23 + 8) = v11;

  result.value = BinarySettingIdentifier.init(rawValue:)(v24).value;
  v25 = v28;
  if (v28 != 65)
  {
    v18 = v25;
    v27 = v25;
    v26 = v25;
    sub_268E0697C(&v26, v22);
    v17 = 0;
    v16 = type metadata accessor for SettingIntentSiriCannotChangeMultiSettingParameters(0);
    sub_268D29FC8(v22, (v23 + *(v16 + 24)));
    sub_268D2A1F0((v23 + *(v16 + 24)), v20);
    v13 = sub_268F9A9C4();
    v15 = (*(*(v13 - 8) + 48))(v20, 1) == 1;
    v14 = v15;
    result.value = sub_268D28588(v20);
    *(v23 + *(v16 + 28)) = v14;
  }

  return result;
}

uint64_t sub_268F048D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v31 = a1;
  v24 = a2;
  v25 = a3;
  v28 = a4;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v22 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31, v24, v25, v28);
  v34 = &v20 - v22;
  v23 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v29 = &v20 - v23;
  v39 = v9;
  v37 = v10;
  v38 = v11;
  v36 = v12;
  v32 = 0;
  type metadata accessor for SettingsBinarySetting(0);

  v33 = 1;
  v13 = SettingsBinarySetting.__allocating_init(settingId:value:)(v24, v25, 0);
  *(v31 + 8) = v13;

  v35[1] = 44;
  v14 = BinarySettingIdentifier.rawValue.getter();
  v26 = v15;
  v27 = MEMORY[0x26D62DB50](v14);

  v16 = v28;
  v17 = v29;
  *(v31 + 1) = v27 & v33;
  v35[0] = v16;
  sub_268E0697C(v35, v17);
  v30 = type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters(v32);
  sub_268D29FC8(v29, (v31 + *(v30 + 28)));
  sub_268D2A1F0((v31 + *(v30 + 28)), v34);
  v18 = sub_268F9A9C4();
  v21 = (*(*(v18 - 8) + 48))(v34, v33) == 1;
  v20 = v21;
  result = sub_268D28588(v34);
  *(v31 + *(v30 + 32)) = v20;
  return result;
}

uint64_t sub_268F04B34(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v27 = a1;
  v22 = a2;
  v21 = a3;
  v24 = a4;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27, v22, v21, v24);
  v29 = &v16 - v18;
  v19 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v25 = &v16 - v19;
  v34 = v9;
  v32 = v10;
  v33 = v11;
  v31 = v12;
  v28 = 0;
  v20 = type metadata accessor for SettingsNumericSetting(0);

  sub_268D34FD4();
  v13 = sub_268F2B5E0(v28);
  v23 = SettingsNumericSetting.__allocating_init(settingId:value:)(v22, v21, v13);
  v26 = type metadata accessor for SettingIntentSiriCannotChangeNumericSettingParameters(v28);
  *(v27 + v26[7]) = v23;

  v30 = v24;
  sub_268E0AE44(&v30, v25);
  sub_268D29FC8(v25, (v27 + v26[6]));
  sub_268D2A1F0((v27 + v26[6]), v29);
  v14 = sub_268F9A9C4();
  v17 = (*(*(v14 - 8) + 48))(v29, 1) == 1;
  v16 = v17;
  result = sub_268D28588(v29);
  *(v27 + v26[9]) = v16;
  return result;
}

uint64_t sub_268F04D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SettingsBinarySetting(0);

  *(a1 + 8) = SettingsBinarySetting.__allocating_init(settingId:value:)(a2, a3, 0);
}

void *sub_268F04DF8(void *a1, uint64_t *a2)
{
  v15 = a1;
  v9 = a2;
  v17 = 0;
  v16 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, v9, v2, v3);
  v14 = &v8 - v8;
  v17 = v4;
  v16 = v5;
  v10 = *v5;
  v11 = v5[1];

  v12 = *v9;
  v13 = v9[1];

  sub_268F9A9A4();
  v6 = sub_268F9A9C4();
  (*(*(v6 - 8) + 56))(v14, 0, 1);
  return sub_268D29FC8(v14, v15);
}

uint64_t sub_268F04F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[114] = v4;
  v5[113] = a4;
  v5[112] = a3;
  v5[111] = a2;
  v5[110] = a1;
  v5[100] = v5;
  v5[101] = 0;
  v5[102] = 0;
  v5[103] = 0;
  v5[104] = 0;
  v5[98] = 0;
  v5[99] = 0;
  v5[101] = a2;
  v5[102] = a3;
  v5[103] = a4;
  v5[104] = v4;
  return MEMORY[0x2822009F8](sub_268F04FB4, 0);
}

uint64_t sub_268F04FB4()
{
  v1 = v0[112];
  v0[100] = v0;
  v0[105] = v1;
  v52 = sub_268D2E630();
  v53._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v52, &protocol witness table for INGetSettingIntent);
  v53._object = v2;
  v0[115] = v2;
  if (v2)
  {
    v51[98] = v53._countAndFlagsBits;
    v51[99] = v2;

    BinarySettingIdentifier.init(rawValue:)(v53);
    if (v54 != 65)
    {
      v45 = v51[112];
      v3 = sub_268DC866C();
      v50 = *v3;
      MEMORY[0x277D82BE0](*v3);
      v49 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v48 = v4;
      MEMORY[0x277D82BE0](v45);
      v51[109] = v45;
      sub_268D59CAC();
      v46 = sub_268F9AE74();
      v47 = v5;
      v48[3] = MEMORY[0x277D837D0];
      v48[4] = sub_268CDD224();
      *v48 = v46;
      v48[1] = v47;
      sub_268CD0F7C();
      sub_268F9AC04("GetSettingTemplatingService makeSnippetModel | making binary snippet model for intent %@", 88, 2, &dword_268CBE000, v50, v49);

      MEMORY[0x277D82BD8](v50);
      v6 = swift_task_alloc();
      v51[116] = v6;
      *v6 = v51[100];
      v6[1] = sub_268F05924;
      v7 = v51[113];
      v8 = v51[112];
      v9 = v51[111];

      return sub_268F06108((v51 + 56), v9, v8, v7);
    }

    NumericSettingIdentifier.init(rawValue:)(v53);
    if (v55 != 13)
    {
      v39 = v51[112];
      v11 = sub_268DC866C();
      v44 = *v11;
      MEMORY[0x277D82BE0](*v11);
      v43 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v42 = v12;
      MEMORY[0x277D82BE0](v39);
      v51[108] = v39;
      sub_268D59CAC();
      v40 = sub_268F9AE74();
      v41 = v13;
      v42[3] = MEMORY[0x277D837D0];
      v42[4] = sub_268CDD224();
      *v42 = v40;
      v42[1] = v41;
      sub_268CD0F7C();
      sub_268F9AC04("GetSettingTemplatingService makeSnippetModel | making numeric snippet model for intent %@", 89, 2, &dword_268CBE000, v44, v43);

      MEMORY[0x277D82BD8](v44);
      v14 = swift_task_alloc();
      v51[118] = v14;
      *v14 = v51[100];
      v14[1] = sub_268F05C60;
      v15 = v51[113];
      v16 = v51[112];
      v17 = v51[111];

      return sub_268F07744((v51 + 2), v17, v16, v15);
    }

    v33 = v51[112];
    v18 = sub_268DC866C();
    v38 = *v18;
    MEMORY[0x277D82BE0](*v18);
    v37 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v36 = v19;
    MEMORY[0x277D82BE0](v33);
    v51[107] = v33;
    sub_268D59CAC();
    v34 = sub_268F9AE74();
    v35 = v20;
    v36[3] = MEMORY[0x277D837D0];
    v36[4] = sub_268CDD224();
    *v36 = v34;
    v36[1] = v35;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService makeSnippetModel | settingMetadata contains unsupported setting identifier", 102, 2, &dword_268CBE000, v38, v37);

    MEMORY[0x277D82BD8](v38);
    sub_268D28BD4();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
  }

  else
  {
    v27 = v51[112];
    v22 = sub_268DC866C();
    v32 = *v22;
    MEMORY[0x277D82BE0](*v22);
    v31 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v30 = v23;
    MEMORY[0x277D82BE0](v27);
    v51[106] = v27;
    sub_268D59CAC();
    v28 = sub_268F9AE74();
    v29 = v24;
    v30[3] = MEMORY[0x277D837D0];
    v30[4] = sub_268CDD224();
    *v30 = v28;
    v30[1] = v29;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService makeSnippetModel | GetSettingIntent has no settingMetadata", 86, 2, &dword_268CBE000, v32, v31);

    MEMORY[0x277D82BD8](v32);
    sub_268D28BD4();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();
  }

  v26 = *(v51[100] + 8);

  return v26();
}

uint64_t sub_268F05924()
{
  v4 = *v1;
  *(v4 + 800) = *v1;
  *(v4 + 936) = v0;

  if (v0)
  {
    v2 = sub_268F05FA8;
  }

  else
  {
    v2 = sub_268F05A98;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268F05A98()
{
  v0[100] = v0;
  memcpy(v0 + 84, v0 + 56, 0x70uLL);
  memcpy(v0 + 70, v0 + 84, 0x70uLL);
  if (v0[71])
  {
    v5 = v6[110];
    v5[3] = &type metadata for BinarySettingModel;
    v5[4] = sub_268F1C148();
    v1 = swift_allocObject();
    *v5 = v1;
    memcpy((v1 + 16), v6 + 70, 0x70uLL);
  }

  else
  {
    v4 = v6[110];
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
  }

  v2 = *(v6[100] + 8);

  return v2();
}

uint64_t sub_268F05C60()
{
  v4 = *v1;
  *(v4 + 800) = *v1;
  *(v4 + 952) = v0;

  if (v0)
  {
    v2 = sub_268F06058;
  }

  else
  {
    v2 = sub_268F05DD4;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268F05DD4()
{
  v0[100] = v0;
  memcpy(v0 + 38, v0 + 2, 0x90uLL);
  memcpy(v0 + 20, v0 + 38, 0x90uLL);
  if (sub_268D34BC0((v0 + 20)) == 1)
  {
    v4 = v6[110];
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
  }

  else
  {
    v5 = v6[110];
    v5[3] = &type metadata for NumericSettingModel;
    v5[4] = sub_268F1C0D0();
    v1 = swift_allocObject();
    *v5 = v1;
    memcpy((v1 + 16), v6 + 20, 0x90uLL);
  }

  v2 = *(v6[100] + 8);

  return v2();
}

uint64_t sub_268F05FA8()
{
  *(v0 + 800) = v0;

  v1 = *(*(v0 + 800) + 8);

  return v1();
}

uint64_t sub_268F06058()
{
  *(v0 + 800) = v0;

  v1 = *(*(v0 + 800) + 8);

  return v1();
}

uint64_t sub_268F06108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 744) = v4;
  *(v5 + 736) = a4;
  *(v5 + 728) = a3;
  *(v5 + 720) = a1;
  *(v5 + 656) = v5;
  *(v5 + 664) = 0;
  *(v5 + 672) = 0;
  *(v5 + 680) = 0;
  *(v5 + 688) = 0;
  *(v5 + 576) = 0u;
  *(v5 + 592) = 0u;
  *(v5 + 896) = 0;
  *(v5 + 704) = 0;
  *(v5 + 608) = 0;
  *(v5 + 616) = 0;
  *(v5 + 624) = 0;
  *(v5 + 632) = 0;
  *(v5 + 904) = 0;
  v11 = *v4;
  v6 = sub_268F9A9C4();
  *(v5 + 752) = v6;
  *(v5 + 760) = *(v6 - 8);
  *(v5 + 768) = swift_task_alloc();
  *(v5 + 664) = a2;
  *(v5 + 672) = a3;
  *(v5 + 680) = a4;
  *(v5 + 688) = v4;
  *(v5 + 776) = *(v11 + qword_280FE8090);
  *(v5 + 784) = *(v11 + qword_280FE8090 + 8);

  return MEMORY[0x2822009F8](sub_268F062D4, 0);
}

uint64_t sub_268F062D4(double a1)
{
  v2 = v1[92];
  v3 = v1[91];
  v1[82] = v1;
  v26 = sub_268F1A720(v3, v2);
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v1[99] = v26;
  v1[100] = v4;
  v1[101] = v5;
  v1[102] = v6;
  if (v4)
  {
    v23 = v4;
    *(v25 + 576) = v26;
    *(v25 + 584) = v4;
    *(v25 + 592) = v5;
    *(v25 + 600) = v6;
    v24 = sub_268E07A88(v5);
    *(v25 + 897) = v24;
    if (v24 != 2)
    {
      *(v25 + 896) = v24 & 1;
      v7 = sub_268CDFACC();
      v8 = sub_268F17A54(v26, v27, v28, v29, v24 & 1, v7 & 1);
      *(v25 + 824) = v8;
      *(v25 + 704) = v8;
      v9 = swift_task_alloc();
      *(v25 + 832) = v9;
      *v9 = *(v25 + 656);
      v9[1] = sub_268F06750;

      return sub_268F18090(v26, v23, v28, v29, v24 & 1);
    }

    v17 = *(v25 + 736);
    v11 = sub_268DC866C();
    v22 = *v11;
    MEMORY[0x277D82BE0](*v11);
    v21 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v20 = v12;
    MEMORY[0x277D82BE0](v17);
    *(v25 + 696) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v18 = sub_268F9AE64();
    v19 = v13;
    v20[3] = MEMORY[0x277D837D0];
    v20[4] = sub_268CDD224();
    *v20 = v18;
    v20[1] = v19;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService makeSnippetModel | response has invalid new value %@", 80, 2, &dword_268CBE000, v22, v21);

    MEMORY[0x277D82BD8](v22);
    sub_268D28BD4();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
  }

  else
  {
    sub_268D28BD4();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
  }

  v16 = *(*(v25 + 656) + 8);

  return v16();
}

uint64_t sub_268F06750(uint64_t a1, uint64_t a2)
{
  v14 = *v3;
  v11 = *v3 + 16;
  v12 = (*v3 + 656);
  v13 = (*v3 + 608);
  v14[82] = *v3;
  v14[105] = v2;
  v14[106] = a1;
  v14[107] = a2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_268F07570, 0);
  }

  else
  {
    v10 = *(v11 + 784);
    v9 = *(v11 + 881);
    *v13 = a1;
    v13[1] = a2;
    v4 = swift_task_alloc();
    *(v11 + 848) = v4;
    *v4 = *v12;
    v4[1] = sub_268F069C0;
    v5 = *(v11 + 800);
    v6 = *(v11 + 792);
    v7 = *(v11 + 776);

    return sub_268F193F4(v7, v10, v6, v5, v9 & 1);
  }
}

uint64_t sub_268F069C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[82] = *v3;
  v6[109] = v2;
  v6[110] = a1;
  v6[111] = a2;

  if (v2)
  {
    v4 = sub_268F07650;
  }

  else
  {
    v4 = sub_268F06B38;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268F06B38()
{
  v53 = v0;
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v49 = *(v0 + 792);
  *(v0 + 656) = v0;
  *(v0 + 624) = v2;
  *(v0 + 632) = v1;

  BinarySettingIdentifier.init(rawValue:)(v49);
  if (v50 == 65)
  {
    v21 = *(v48 + 792);
    v22 = *(v48 + 800);
    v16 = sub_268DC866C();
    v28 = *v16;
    MEMORY[0x277D82BE0](*v16);
    v27 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v26 = v17;

    *(v48 + 640) = v21;
    *(v48 + 648) = v22;
    v23 = MEMORY[0x277D837D0];
    v24 = sub_268F9AE84();
    v25 = v18;
    v26[3] = v23;
    v26[4] = sub_268CDD224();
    *v26 = v24;
    v26[1] = v25;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService makeSnippetModel | invalid setting identifier %@", 76, 2, &dword_268CBE000, v28, v27);

    MEMORY[0x277D82BD8](v28);
    sub_268D28BD4();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    v20 = *(*(v48 + 656) + 8);

    return v20();
  }

  else
  {
    v42 = *(v48 + 824);
    v47 = *(v48 + 792);
    v3 = *(v48 + 768);
    settingId_8 = *(v48 + 752);
    v41 = *(v48 + 760);
    *(v48 + 904) = v50;

    (*(v41 + 16))(v3, v42 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier, settingId_8);

    settingId = sub_268F9A9B4();
    v45 = v4;
    (*(v41 + 8))(v3, settingId_8);
    graphicIcon._countAndFlagsBits = sub_268E7AE3C();
    graphicIcon._object = v5;

    BinarySettingIdentifier.init(rawValue:)(v47);
    if (v51 == 65)
    {
      url = 0;
    }

    else
    {
      v52[119] = v51;
      url.value._countAndFlagsBits = sub_268E7B768();
      url.value._object = v6;
    }

    v39 = *(v48 + 728);
    directInvocationId = *sub_268E7EE28();

    *(v48 + 712) = v39;
    v7 = sub_268D2E630();
    SettingIntent.deviceCategory.getter(v7, &protocol witness table for INGetSettingIntent);
    if (v8)
    {
      v36 = 0;
      v37 = 1;
    }

    else
    {
      sub_268CD4334();
      v36 = v9;
      v37 = 0;
    }

    if (v37)
    {
      deviceCategoryInt = 0;
    }

    else
    {
      deviceCategoryInt = v36;
    }

    v10._object = v45;
    v10._countAndFlagsBits = settingId;
    __dst = *(v48 + 720);
    BinarySettingModel.init(settingId:graphicIcon:label:secondLabel:oldValue:updatedValue:url:directInvocationId:deviceCategoryInt:)((v48 + 16), v10, graphicIcon, *(v48 + 848), *(v48 + 880), *(v48 + 897) & 1, *(v48 + 897) & 1, url, directInvocationId, deviceCategoryInt);
    memcpy((v48 + 128), (v48 + 16), 0x70uLL);
    v11 = sub_268DC866C();
    v33 = *v11;
    MEMORY[0x277D82BE0](*v11);
    v32 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v31 = v12;
    sub_268D28EFC(v48 + 128, v48 + 240);
    memcpy((v48 + 352), (v48 + 128), 0x70uLL);
    v29 = sub_268F9AE64();
    v30 = v13;
    v31[3] = MEMORY[0x277D837D0];
    v31[4] = sub_268CDD224();
    *v31 = v29;
    v31[1] = v30;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService makeSnippetModel | returning resultModel %@", 71, 2, &dword_268CBE000, v33, v32);

    MEMORY[0x277D82BD8](v33);
    sub_268D28EFC(v48 + 128, v48 + 464);
    memcpy(v52, (v48 + 128), 0x70uLL);
    memcpy(__dst, v52, 0x70uLL);
    sub_268D29010((v48 + 128));

    v14 = *(*(v48 + 656) + 8);

    return v14();
  }
}

uint64_t sub_268F07570()
{
  *(v0 + 656) = v0;

  v1 = *(*(v0 + 656) + 8);

  return v1();
}

uint64_t sub_268F07650()
{
  *(v0 + 656) = v0;

  v1 = *(*(v0 + 656) + 8);

  return v1();
}

uint64_t sub_268F07744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1096) = v4;
  *(v5 + 1088) = a4;
  *(v5 + 1080) = a3;
  *(v5 + 1072) = a1;
  *(v5 + 968) = v5;
  *(v5 + 976) = 0;
  *(v5 + 984) = 0;
  *(v5 + 992) = 0;
  *(v5 + 1000) = 0;
  *(v5 + 880) = 0;
  *(v5 + 888) = 0;
  *(v5 + 896) = 0;
  *(v5 + 1016) = 0;
  *(v5 + 904) = 0;
  *(v5 + 912) = 0;
  *(v5 + 1184) = 0;
  *(v5 + 1188) = 0;
  *(v5 + 1024) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 976) = a2;
  *(v5 + 984) = a3;
  *(v5 + 992) = a4;
  *(v5 + 1000) = v4;

  return MEMORY[0x2822009F8](sub_268F078A8, 0);
}

uint64_t sub_268F078A8(double a1)
{
  v2 = v1[136];
  v3 = v1[135];
  v1[121] = v1;
  v39._countAndFlagsBits = sub_268F1B14C(v3, v2);
  v39._object = v4;
  v40 = v5;
  v1[140] = v39._countAndFlagsBits;
  v1[141] = v4;
  v1[142] = v5;
  if (!v4)
  {
    sub_268D28BD4();
    swift_allocError();
    *v16 = 2;
    swift_willThrow();
LABEL_32:

    v8 = *(*(v38 + 968) + 8);

    return v8();
  }

  v37 = v4;
  v36 = v5;
  *(v38 + 880) = v39._countAndFlagsBits;
  *(v38 + 888) = v4;
  *(v38 + 896) = v5;

  NumericSettingIdentifier.init(rawValue:)(v39);
  *(v38 + 1187) = v41;
  *(v38 + 1196) = 0;
  sub_268D288B4((v38 + 1187), (v38 + 1185));
  sub_268D288B4((v38 + 1196), (v38 + 1186));
  if (*(v38 + 1185) == 13)
  {
    if (*(v38 + 1186) != 13)
    {
      goto LABEL_13;
    }

LABEL_10:
    __dst = *(v38 + 1072);
    v7 = sub_268DC858C();
    v34 = *v7;
    MEMORY[0x277D82BE0](*v7);
    v33 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("GetSettingTemplatingService makeNumericSnippetModel | omitting snippet for battery utterance", 92, 2, &dword_268CBE000, v34, v33);

    MEMORY[0x277D82BD8](v34);
    sub_268D34B74((v38 + 736));
    memcpy(__dst, (v38 + 736), 0x90uLL);

    MEMORY[0x277D82BD8](v40);

    v8 = *(*(v38 + 968) + 8);

    return v8();
  }

  sub_268D288B4((v38 + 1185), (v38 + 1198));
  if (*(v38 + 1186) != 13)
  {
    *(v38 + 1199) = *(v38 + 1198);
    *(v38 + 1200) = *(v38 + 1186);
    sub_268D91118();
    v6 = sub_268F9AE04();
    if (v6)
    {
      goto LABEL_10;
    }
  }

LABEL_13:
  v32 = *(v38 + 1088);
  MEMORY[0x277D82BE0](v32);
  if (v32)
  {
    v30 = *(v38 + 1088);
    v31 = [v30 settingResponseDatas];
    if (v31)
    {
      sub_268CDD140();
      v28 = sub_268F9B014();
      MEMORY[0x277D82BD8](v31);
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    *(v38 + 1048) = v29;
    if (*(v38 + 1048))
    {
      v26 = *(v38 + 1048);

      sub_268CD7930((v38 + 1048));
      MEMORY[0x277D82BD8](v30);
      *(v38 + 1056) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2E8, qword_268F9E0F0);
      sub_268D3506C();
      sub_268F9B234();
      v27 = *(v38 + 1064);

      if (v27)
      {
        v25 = [v27 numericValue];
        *&v9 = MEMORY[0x277D82BD8](v27).n128_u64[0];
        if (v25)
        {
          v23 = [v25 value];
          MEMORY[0x277D82BD8](v25);
          v24 = v23;
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_268CD7930((v38 + 1048));
      MEMORY[0x277D82BD8](v30);
    }
  }

  v24 = 0;
LABEL_25:
  *(v38 + 1144) = v24;
  if (!v24)
  {
    v17 = *(v38 + 1088);
    v12 = sub_268DC858C();
    v22 = *v12;
    MEMORY[0x277D82BE0](*v12);
    v21 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v20 = v13;
    MEMORY[0x277D82BE0](v17);
    *(v38 + 1008) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v18 = sub_268F9AE64();
    v19 = v14;
    v20[3] = MEMORY[0x277D837D0];
    v20[4] = sub_268CDD224();
    *v20 = v18;
    v20[1] = v19;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService makeNumericSnippetModel | response has invalid value %@", 83, 2, &dword_268CBE000, v22, v21);

    MEMORY[0x277D82BD8](v22);
    sub_268D28BD4();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();

    MEMORY[0x277D82BD8](v40);
    goto LABEL_32;
  }

  *(v38 + 1016) = v24;
  v10 = swift_task_alloc();
  *(v38 + 1152) = v10;
  *v10 = *(v38 + 968);
  v10[1] = sub_268F08388;

  return sub_268F19D6C(v39._countAndFlagsBits, v37, v36, v24);
}

uint64_t sub_268F08388(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[121] = *v3;
  v6[145] = v2;
  v6[146] = a1;
  v6[147] = a2;

  if (v2)
  {
    v4 = sub_268F0946C;
  }

  else
  {
    v4 = sub_268F08500;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268F08500()
{
  v87 = v0;
  object = v0[73]._object;
  countAndFlagsBits = v0[73]._countAndFlagsBits;
  v77 = v0[70];
  v0[60]._object = v0;
  v0[56]._object = countAndFlagsBits;
  v0[57]._countAndFlagsBits = object;

  NumericSettingIdentifier.init(rawValue:)(v77);
  if (v78 == 13)
  {
    v30 = *(v76 + 1120);
    v38 = *(v76 + 1144);
    v39 = *(v76 + 1136);
    v31 = *(v76 + 1128);
    v23 = sub_268DC858C();
    v37 = *v23;
    MEMORY[0x277D82BE0](*v23);
    v36 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v35 = v24;

    *(v76 + 920) = v30;
    *(v76 + 928) = v31;
    v32 = MEMORY[0x277D837D0];
    v33 = sub_268F9AE84();
    v34 = v25;
    v35[3] = v32;
    v35[4] = sub_268CDD224();
    *v35 = v33;
    v35[1] = v34;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService makeNumericSnippetModel | invalid setting identifier %@", 83, 2, &dword_268CBE000, v37, v36);

    MEMORY[0x277D82BD8](v37);
    sub_268D28BD4();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    MEMORY[0x277D82BD8](v38);

    MEMORY[0x277D82BD8](v39);

    v27 = *(*(v76 + 968) + 8);

    return v27();
  }

  else
  {
    *(v76 + 1184) = v78;
    v79[0] = v78;
    *(v76 + 1188) = sub_268E07EE4(v79);
    *(v76 + 1192) = v3;
    sub_268F9B734();
    *v4 = 1;
    v4[1] = 2;
    sub_268CD0F7C();
    *(v76 + 1024) = v5;
    *(v76 + 1032) = v5;
    *(v76 + 1197) = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC910, "ā");
    sub_268DB7A80();
    sub_268D91118();
    if (sub_268F9AFC4())
    {
      v72 = *(v76 + 1112);
      v79[1] = v78;
      settingId._countAndFlagsBits = NumericSettingIdentifier.rawValue.getter();
      settingId._object = v6;
      v79[2] = v78;
      graphicIcon._countAndFlagsBits = sub_268EB0934();
      graphicIcon._object = v7;
      v81 = v78;
      sub_268EB0234(v72);
      v73 = sub_268F9A9C4();
      v74 = *(v73 - 8);
      v75 = *(v74 + 48);
      if (v75(v72, 1) == 1)
      {
        sub_268D28588(*(v76 + 1112));
        v68 = 0;
        v69 = 0;
      }

      else
      {
        v65 = *(v76 + 1112);
        v66 = sub_268F9A9B4();
        v67 = v8;
        (*(v74 + 8))(v65, v73);
        v68 = v66;
        v69 = v67;
      }

      *(v76 + 936) = v68;
      *(v76 + 944) = v69;
      if (*(v76 + 944))
      {
        v9 = *(v76 + 944);
        v80._countAndFlagsBits = *(v76 + 936);
        v80._object = v9;
      }

      else
      {
        v80._countAndFlagsBits = sub_268F9AEF4();
        v80._object = v10;
        if (*(v76 + 944))
        {
          sub_268CD9D30(v76 + 936);
        }
      }

      v11 = *(v76 + 1104);
      v64 = v11;
      leftIconName = v80;
      v83 = v78;
      sub_268EB0474(v11);
      if ((v75)(v64, 1, v73) == 1)
      {
        sub_268D28588(*(v76 + 1104));
        v61 = 0;
        v62 = 0;
      }

      else
      {
        v58 = *(v76 + 1104);
        v59 = sub_268F9A9B4();
        v60 = v12;
        (*(v74 + 8))(v58, v73);
        v61 = v59;
        v62 = v60;
      }

      *(v76 + 952) = v61;
      *(v76 + 960) = v62;
      if (*(v76 + 960))
      {
        v13 = *(v76 + 960);
        v82._countAndFlagsBits = *(v76 + 952);
        v82._object = v13;
      }

      else
      {
        v82._countAndFlagsBits = sub_268F9AEF4();
        v82._object = v14;
        if (*(v76 + 960))
        {
          sub_268CD9D30(v76 + 952);
        }
      }

      v56 = *(v76 + 1080);
      v50 = *(v76 + 1144);
      rightIconName = v82;

      [v50 0x1FAD21978];
      oldValue = v15;
      [v50 0x1FAD21978];
      updatedValue = v16;
      sub_268F9B124();
      minValue = v17;
      sub_268F9B124();
      maxValue = v18;
      v84[0] = v78;
      step = sub_268E07F78(v84);
      v84[1] = v78;
      url.value._countAndFlagsBits = sub_268EB0030();
      url.value._object = v19;
      *(v76 + 1040) = v56;
      v20 = sub_268D2E630();
      SettingIntent.deviceCategory.getter(v20, &protocol witness table for INGetSettingIntent);
      if (v21)
      {
        v47 = 0;
        v48 = 1;
      }

      else
      {
        sub_268CD4334();
        v47 = v22;
        v48 = 0;
      }

      v85 = v47;
      v86 = v48 & 1;
      if (v48)
      {
        deviceCategoryInt = 0;
      }

      else
      {
        deviceCategoryInt = v85;
      }

      __dst = *(v76 + 1072);
      v44 = *(v76 + 1144);
      v45 = *(v76 + 1136);
      NumericSettingModel.init(settingId:graphicIcon:leftIconName:rightIconName:label:oldValue:updatedValue:minValue:maxValue:step:url:deviceCategoryInt:)((v76 + 160), settingId, graphicIcon, leftIconName, rightIconName, *(v76 + 1168), oldValue, updatedValue, minValue, maxValue, step, url, deviceCategoryInt);
      memcpy((v76 + 448), (v76 + 160), 0x90uLL);
      sub_268D34CD8((v76 + 448), (v76 + 592));
      memcpy((v76 + 304), (v76 + 448), 0x90uLL);
      nullsub_1();
      memcpy(__dst, (v76 + 304), 0x90uLL);
      sub_268D34F58((v76 + 448));

      MEMORY[0x277D82BD8](v44);

      MEMORY[0x277D82BD8](v45);
    }

    else
    {
      v40 = *(v76 + 1072);
      v41 = *(v76 + 1144);
      v42 = *(v76 + 1136);
      sub_268D34B74((v76 + 16));
      memcpy(v40, (v76 + 16), 0x90uLL);

      MEMORY[0x277D82BD8](v41);

      MEMORY[0x277D82BD8](v42);
    }

    v29 = *(*(v76 + 968) + 8);

    return v29();
  }
}

uint64_t sub_268F0946C()
{
  v1 = v0[143];
  v4 = v0[142];
  v0[121] = v0;
  MEMORY[0x277D82BD8](v1);

  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[121] + 8);

  return v2();
}

uint64_t sub_268F09578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = v3;
  v4[11] = a3;
  v4[10] = a2;
  v4[9] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  return MEMORY[0x2822009F8](sub_268F095F0, 0);
}

uint64_t sub_268F095F0()
{
  v1 = v0[11];
  v12 = v1;
  v0[2] = v0;
  MEMORY[0x277D82BE0](v1);
  v13 = [v12 _intentResponseCode];
  MEMORY[0x277D82BD8](v12);
  v0[7] = v13;
  v0[8] = 4;
  type metadata accessor for INIntentResponseCode(0);
  sub_268ECCA4C();
  if (sub_268F9B754())
  {
    v10 = v11[11];
    MEMORY[0x277D82BE0](v10);
    v2 = swift_task_alloc();
    v11[13] = v2;
    *v2 = v11[2];
    v2[1] = sub_268EF2A5C;
    v3 = v11[10];
    v4 = v11[9];

    return sub_268F0982C(v3, v4, v10);
  }

  else
  {
    v9 = v11[11];
    MEMORY[0x277D82BE0](v9);
    v6 = swift_task_alloc();
    v11[15] = v6;
    *v6 = v11[2];
    v6[1] = sub_268EF2C38;
    v7 = v11[10];
    v8 = v11[9];

    return sub_268F0E814(v7, v8, v9);
  }
}

uint64_t sub_268F0982C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[15] = a3;
  v4[14] = a2;
  v4[13] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = v3;
  return MEMORY[0x2822009F8](sub_268F098B0, 0);
}

uint64_t sub_268F098B0()
{
  v1 = v0[14];
  v0[4] = v0;
  v0[9] = v1;
  v43 = sub_268D2E630();
  v44._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v43, &protocol witness table for INGetSettingIntent);
  v44._object = v2;
  v0[17] = v2;
  if (v2)
  {
    v42[2] = v44._countAndFlagsBits;
    v42[3] = v2;

    BinarySettingIdentifier.init(rawValue:)(v44);
    if (v45 != 65)
    {
      v36 = v42[14];
      v3 = sub_268DC7B48();
      v41 = *v3;
      MEMORY[0x277D82BE0](*v3);
      v40 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v39 = v4;
      MEMORY[0x277D82BE0](v36);
      v42[12] = v36;
      sub_268D59CAC();
      v37 = sub_268F9AE74();
      v38 = v5;
      v39[3] = MEMORY[0x277D837D0];
      v39[4] = sub_268CDD224();
      *v39 = v37;
      v39[1] = v38;
      sub_268CD0F7C();
      sub_268F9AC04("GetSettingTemplatingService makeIntentHandledDialogSyncRF2 | makeIntentHandledDialog normally handling intent: %@", 113, 2, &dword_268CBE000, v41, v40);

      MEMORY[0x277D82BD8](v41);
      v6 = swift_task_alloc();
      v42[18] = v6;
      *v6 = v42[4];
      v6[1] = sub_268EF3834;
      v7 = v42[15];
      v8 = v42[14];
      v9 = v42[13];

      return sub_268F0ABF8(v9, v8, v7);
    }

    NumericSettingIdentifier.init(rawValue:)(v44);
    if (v46 != 13)
    {
      v11 = swift_task_alloc();
      v42[21] = v11;
      *v11 = v42[4];
      v11[1] = sub_268EF3A5C;
      v12 = v42[15];
      v13 = v42[14];
      v14 = v42[13];

      return sub_268F0C810(v14, v13, v12);
    }

    v30 = v42[14];
    v15 = sub_268DC866C();
    v35 = *v15;
    MEMORY[0x277D82BE0](*v15);
    v34 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v33 = v16;
    MEMORY[0x277D82BE0](v30);
    v42[11] = v30;
    sub_268D59CAC();
    v31 = sub_268F9AE74();
    v32 = v17;
    v33[3] = MEMORY[0x277D837D0];
    v33[4] = sub_268CDD224();
    *v33 = v31;
    v33[1] = v32;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService makeIntentHandledDialogSyncRF2 | settingMetadata contains unsupported setting identifier", 116, 2, &dword_268CBE000, v35, v34);

    MEMORY[0x277D82BD8](v35);
    sub_268D28BD4();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  else
  {
    v24 = v42[14];
    v19 = sub_268DC866C();
    v29 = *v19;
    MEMORY[0x277D82BE0](*v19);
    v28 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v27 = v20;
    MEMORY[0x277D82BE0](v24);
    v42[10] = v24;
    sub_268D59CAC();
    v25 = sub_268F9AE74();
    v26 = v21;
    v27[3] = MEMORY[0x277D837D0];
    v27[4] = sub_268CDD224();
    *v27 = v25;
    v27[1] = v26;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService makeIntentHandledDialogSyncRF2 | GetSettingIntent has no settingMetadata", 100, 2, &dword_268CBE000, v29, v28);

    MEMORY[0x277D82BD8](v29);
    sub_268D28BD4();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
  }

  v23 = *(v42[4] + 8);

  return v23();
}

uint64_t sub_268F0A0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = v3;
  v4[26] = a3;
  v4[25] = a2;
  v4[24] = a1;
  v4[14] = v4;
  v4[15] = 0;
  v4[16] = 0;
  v4[17] = 0;
  v4[18] = 0;
  v4[20] = 0;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = a3;
  v4[18] = v3;
  return MEMORY[0x2822009F8](sub_268F0A15C, 0);
}

uint64_t sub_268F0A15C()
{
  v1 = v0[27];
  v35 = v0[25];
  v0[14] = v0;
  v34 = *(v1 + qword_280FE37D8);
  MEMORY[0x277D82BE0](v34);
  v36 = [v35 settingMetadata];
  if (v36)
  {
    v28 = [v36 settingId];
    v29 = sub_268F9AE24();
    v30 = v2;
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v28);
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v33[12] = v31;
  v33[13] = v32;
  if (v33[13])
  {
    v37 = v33[12];
    v38 = v33[13];
  }

  else
  {
    v37 = sub_268F9AEF4();
    v38 = v3;
    if (v33[13])
    {
      sub_268CD9D30((v33 + 12));
    }
  }

  sub_268DE0918(v37, v38, v33 + 7);

  MEMORY[0x277D82BD8](v34);
  if (v33[10])
  {
    v27 = v33[25];
    sub_268CDF978(v33 + 7, v33 + 2);
    v25 = v33[5];
    v26 = v33[6];
    __swift_project_boxed_opaque_existential_1(v33 + 2, v25);
    v4 = (*(v26 + 16))(v27, v25);
    if (v4)
    {
      v16 = v33[25];
      v5 = sub_268DC866C();
      v21 = *v5;
      MEMORY[0x277D82BE0](*v5);
      v20 = sub_268F9B284();
      v33[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v19 = v6;
      MEMORY[0x277D82BE0](v16);
      v33[19] = v16;
      sub_268D2E630();
      sub_268D59CAC();
      v17 = sub_268F9AE74();
      v18 = v7;
      v19[3] = MEMORY[0x277D837D0];
      v8 = sub_268CDD224();
      v33[29] = v8;
      v19[4] = v8;
      *v19 = v17;
      v19[1] = v18;
      sub_268CD0F7C();
      sub_268F9AC04("Handling intent in the main process.", 36, 2, &dword_268CBE000, v21, v20);

      MEMORY[0x277D82BD8](v21);
      v22 = v33[5];
      v23 = v33[6];
      __swift_project_boxed_opaque_existential_1(v33 + 2, v22);
      v24 = (*(v23 + 32) + **(v23 + 32));
      v9 = swift_task_alloc();
      v33[30] = v9;
      *v9 = v33[14];
      v9[1] = sub_268F0A794;
      v10 = v33[25];

      return v24(v10, v22, v23);
    }

    __swift_destroy_boxed_opaque_existential_0(v33 + 2);
  }

  else
  {
    sub_268D28414(v33 + 7);
  }

  v12 = swift_task_alloc();
  v33[38] = v12;
  *v12 = v33[14];
  v12[1] = sub_268EF4D98;
  v13 = v33[26];
  v14 = v33[25];
  v15 = v33[24];

  return sub_268F0982C(v15, v14, v13);
}

uint64_t sub_268F0A794(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 112) = *v1;
  *(v3 + 248) = a1;

  return MEMORY[0x2822009F8](sub_268F0A8B0, 0);
}

uint64_t sub_268F0A8B0()
{
  v19 = v0[31];
  v15 = v0[29];
  v0[14] = v0;
  v0[20] = v19;
  v1 = sub_268DC866C();
  v18 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v17 = sub_268F9B284();
  sub_268F9B734();
  v16 = v2;
  MEMORY[0x277D82BE0](v19);
  v0[21] = v19;
  sub_268CDD0DC();
  sub_268CDD1A4();
  v3 = sub_268F9AE74();
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = v15;
  *v16 = v3;
  v16[1] = v4;
  sub_268CD0F7C();
  sub_268F9AC04("Got main process response %@. Handling.", 39, 2, &dword_268CBE000, v18, v17);

  v0[22] = [v19 code];
  v0[23] = 3;
  type metadata accessor for INGetSettingIntentResponseCode(0);
  sub_268DDD0E4();
  if (sub_268F9B754())
  {
    v13 = v14[31];
    MEMORY[0x277D82BE0](v13);
    v5 = swift_task_alloc();
    v14[32] = v5;
    *v5 = v14[14];
    v5[1] = sub_268EF4908;
    v6 = v14[25];
    v7 = v14[24];

    return sub_268F0982C(v7, v6, v13);
  }

  else
  {
    v12 = v14[31];
    MEMORY[0x277D82BE0](v12);
    v9 = swift_task_alloc();
    v14[35] = v9;
    *v9 = v14[14];
    v9[1] = sub_268EF4B50;
    v10 = v14[25];
    v11 = v14[24];

    return sub_268F0E814(v11, v10, v12);
  }
}

uint64_t sub_268F0ABF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 192) = v3;
  *(v4 + 184) = a3;
  *(v4 + 176) = a2;
  *(v4 + 64) = v4;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 352) = 0;
  *(v4 + 353) = 0;
  *(v4 + 112) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 360) = 0;
  *(v4 + 120) = 0;
  *(v4 + 136) = 0;
  *(v4 + 368) = 0;
  *(v4 + 144) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 200) = v5;
  *(v4 + 208) = *(v5 - 8);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;

  return MEMORY[0x2822009F8](sub_268F0ADA0, 0);
}

void *sub_268F0ADA0(double a1)
{
  v2 = v1[23];
  v3 = v1[22];
  v1[8] = v1;
  v68 = sub_268F1A720(v3, v2);
  v69 = v4;
  v70 = v6;
  v1[29] = v4;
  if (!v4)
  {
    sub_268D28BD4();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
    goto LABEL_28;
  }

  *(v67 + 16) = v68;
  *(v67 + 24) = v4;
  *(v67 + 32) = v5;
  *(v67 + 40) = v6;
  v66 = sub_268E07A88(v5);
  if (v66 == 2)
  {
    v25 = *(v67 + 184);
    v19 = sub_268DC866C();
    v30 = *v19;
    MEMORY[0x277D82BE0](*v19);
    v29 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v28 = v20;
    MEMORY[0x277D82BE0](v25);
    *(v67 + 104) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v26 = sub_268F9AE64();
    v27 = v21;
    v28[3] = MEMORY[0x277D837D0];
    v28[4] = sub_268CDD224();
    *v28 = v26;
    v28[1] = v27;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService makeIntentHandledDialogBinaryRF2 | response has invalid value %@", 92, 2, &dword_268CBE000, v30, v29);

    MEMORY[0x277D82BD8](v30);
    sub_268D28BD4();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();

LABEL_28:

    v24 = *(*(v67 + 64) + 8);

    return v24();
  }

  *(v67 + 352) = v66 & 1;

  v65 = sub_268F23C10();
  *(v67 + 240) = v65;

  *(v67 + 112) = v65;

  v61 = sub_268E12F2C();
  v62 = v7;

  v63 = MEMORY[0x26D62DB30](v68, v69, v61, v62);
  v64 = v8;
  *(v67 + 248) = v8;

  *(v67 + 48) = v63;
  *(v67 + 56) = v64;
  MEMORY[0x277D82BE0](v65);
  if (v65)
  {

    v57 = sub_268F9AE14();

    v58 = [v65 integerForKey_];
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v65);
    v59 = v58;
    v60 = 0;
  }

  else
  {
    v59 = 0;
    v60 = 1;
  }

  if (v60)
  {
    v56 = 0;
  }

  else
  {
    *(v67 + 168) = v59;

    v55 = sub_268E12F10();

    if (v59 < v55)
    {
      MEMORY[0x277D82BE0](v65);
      if (v65)
      {
        result = v65;
        if (__OFADD__(v59, 1))
        {
          __break(1u);
          return result;
        }

        v54 = sub_268F9AE14();

        [v65 setInteger:v59 + 1 forKey:v54];
        MEMORY[0x277D82BD8](v54);
        MEMORY[0x277D82BD8](v65);
      }

      v11 = sub_268DC866C();
      v52 = *v11;
      MEMORY[0x277D82BE0](*v11);
      v51 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v50 = v12;

      v50[3] = MEMORY[0x277D837D0];
      v50[4] = sub_268CDD224();
      *v50 = v68;
      v50[1] = v69;
      sub_268CD0F7C();
      sub_268F9AC04("GetSettingTemplatingService makeIntentHandledDialogBinaryRF2 | Providing verbose version of DescribeBinarySettingState CAT for %@.", 130, 2, &dword_268CBE000, v52, v51);

      MEMORY[0x277D82BD8](v52);
      *(v67 + 353) = 1;
      v53 = 1;
    }

    else
    {
      v53 = 0;
    }

    v56 = v53;
  }

  v13 = *(v67 + 224);
  v41 = *(v67 + 216);
  v42 = *(v67 + 200);
  v39 = *(v67 + 192);
  v40 = *(v67 + 208);
  v14 = sub_268DB98D4();
  v45 = *v14;
  v46 = v14[1];
  v47 = *(v14 + 16);
  v15 = sub_268DC7BA8();
  v48 = *v15;
  MEMORY[0x277D82BE0](*v15);
  (*(v40 + 16))(v13, v39 + qword_280FE3800, v42);
  sub_268F9AB14();
  v44 = sub_268F9AB04();
  v43 = *(v40 + 8);
  v43(v41, v42);
  v43(v13, v42);
  sub_268DB9934(v45, v46, v47, v48, (v44 ^ 1) & 1);
  MEMORY[0x277D82BD8](v48);

  v16 = BinarySettingIdentifier.rawValue.getter();
  v49 = MEMORY[0x26D62DB50](v68, v69, v16);

  if (v49)
  {
    v35 = *(v67 + 192);
    v36 = sub_268E07A88(v70);
    *(v67 + 368) = v36;
    *(v67 + 256) = *(v35 + qword_280FE37E0);

    type metadata accessor for SettingsMultiSetting(0);

    v38 = sub_268E067CC(v68, v69, v66 & 1);
    *(v67 + 264) = v38;
    v37 = *(v35 + qword_280FE37C8);
    *(v67 + 272) = v37;

    v17 = swift_task_alloc();
    *(v67 + 280) = v17;
    *v17 = *(v67 + 64);
    v17[1] = sub_268F0BB00;

    return sub_268F4ABBC(v38, v36, v56 & 1, v37);
  }

  else
  {
    v31 = *(v67 + 192);
    v32 = sub_268E07A88(v70);
    *(v67 + 360) = v32;
    *(v67 + 304) = *(v31 + qword_280FE37E0);

    type metadata accessor for SettingsBinarySetting(0);

    v34 = SettingsBinarySetting.__allocating_init(settingId:value:)(v68, v69, v66 & 1);
    *(v67 + 312) = v34;
    v33 = *(v31 + qword_280FE37C8);
    *(v67 + 320) = v33;

    v18 = swift_task_alloc();
    *(v67 + 328) = v18;
    *v18 = *(v67 + 64);
    v18[1] = sub_268F0BE54;

    return sub_268F494C0(v34, v32, v56 & 1, v33);
  }
}

uint64_t sub_268F0BB00(uint64_t a1)
{
  v5 = *v2;
  v5[8] = *v2;
  v5[36] = a1;
  v5[37] = v1;

  if (v1)
  {
    v3 = sub_268F0C1A8;
  }

  else
  {

    v3 = sub_268F0BCA4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F0BCA4()
{
  v1 = v0[36];
  v10 = v0[30];
  v0[8] = v0;
  v0[20] = v1;
  v2 = sub_268DB98D4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](v10);

  v11 = v0[36];

  v4 = *(v0[8] + 8);

  return v4(v11);
}

uint64_t sub_268F0BE54(uint64_t a1)
{
  v5 = *v2;
  v5[8] = *v2;
  v5[42] = a1;
  v5[43] = v1;

  if (v1)
  {
    v3 = sub_268F0C4DC;
  }

  else
  {

    v3 = sub_268F0BFF8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F0BFF8()
{
  v1 = v0[42];
  v10 = v0[30];
  v0[8] = v0;
  v0[17] = v1;
  v2 = sub_268DB98D4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](v10);

  v11 = v0[42];

  v4 = *(v0[8] + 8);

  return v4(v11);
}

uint64_t sub_268F0C1A8()
{
  v19 = v0[37];
  v20 = v0[30];
  v0[8] = v0;

  v1 = v19;
  v0[18] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[19] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService makeIntentHandledDialogBinaryRF2 | describeMultiSettingState cat execution error %@", 111, 2, &dword_268CBE000, v14, v13);

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

  MEMORY[0x277D82BD8](v20);

  v8 = *(v0[8] + 8);

  return v8();
}

uint64_t sub_268F0C4DC()
{
  v19 = v0[43];
  v20 = v0[30];
  v0[8] = v0;

  v1 = v19;
  v0[15] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[16] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService makeIntentHandledDialogBinaryRF2 | describeBinarySettingState cat execution error %@", 112, 2, &dword_268CBE000, v14, v13);

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

  MEMORY[0x277D82BD8](v20);

  v8 = *(v0[8] + 8);

  return v8();
}

uint64_t sub_268F0C810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 192) = v3;
  *(v4 + 184) = a3;
  *(v4 + 176) = a2;
  *(v4 + 56) = v4;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 104) = 0;
  *(v4 + 376) = 0;
  *(v4 + 384) = 0;
  *(v4 + 112) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 168) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 200) = v5;
  *(v4 + 208) = *(v5 - 8);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;

  return MEMORY[0x2822009F8](sub_268F0C9B4, 0);
}

void *sub_268F0C9B4(double a1)
{
  v2 = v1[23];
  v3 = v1[22];
  v1[7] = v1;
  v83 = sub_268F1B14C(v3, v2);
  v84 = v4;
  v85 = v5;
  v1[29] = v4;
  v1[30] = v5;
  if (!v4)
  {
    sub_268D28BD4();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
    goto LABEL_29;
  }

  *(v82 + 16) = v83;
  *(v82 + 24) = v4;
  *(v82 + 32) = v5;
  MEMORY[0x277D82BE0](v5);
  v6 = [v85 value];
  v81 = v6;
  *(v82 + 248) = v6;
  if (!v6)
  {
    v29 = *(v82 + 184);
    MEMORY[0x277D82BD8](v85);
    v23 = sub_268DC866C();
    v34 = *v23;
    MEMORY[0x277D82BE0](*v23);
    v33 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v32 = v24;
    MEMORY[0x277D82BE0](v29);
    *(v82 + 96) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v30 = sub_268F9AE64();
    v31 = v25;
    v32[3] = MEMORY[0x277D837D0];
    v32[4] = sub_268CDD224();
    *v32 = v30;
    v32[1] = v31;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService makeIntentHandledDialogNumericSyncRF2 | response has invalid value %@", 97, 2, &dword_268CBE000, v34, v33);

    MEMORY[0x277D82BD8](v34);
    sub_268D28BD4();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    MEMORY[0x277D82BD8](v85);
LABEL_29:

    v28 = *(*(v82 + 56) + 8);

    return v28();
  }

  *(v82 + 104) = v6;
  MEMORY[0x277D82BD8](v85);

  v7 = NumericSettingIdentifier.rawValue.getter();
  v80 = MEMORY[0x26D62DB50](v83, v84, v7);

  if (v80)
  {

    v79 = sub_268F23C10();
    *(v82 + 256) = v79;

    *(v82 + 136) = v79;

    v75 = sub_268E12F2C();
    v76 = v8;

    v77 = MEMORY[0x26D62DB30](v83, v84, v75, v76);
    v78 = v9;
    *(v82 + 264) = v9;

    *(v82 + 40) = v77;
    *(v82 + 48) = v78;
    MEMORY[0x277D82BE0](v79);
    if (v79)
    {

      v71 = sub_268F9AE14();

      v72 = [v79 integerForKey_];
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v79);
      v73 = v72;
      v74 = 0;
    }

    else
    {
      v73 = 0;
      v74 = 1;
    }

    if ((v74 & 1) == 0)
    {
      *(v82 + 144) = v73;

      v70 = sub_268E12F10();

      if (v73 >= v70)
      {
        v10 = *(v82 + 224);
        v59 = *(v82 + 216);
        v60 = *(v82 + 200);
        v67 = *(v82 + 192);
        v58 = *(v82 + 208);
        v11 = sub_268DC866C();
        v57 = *v11;
        MEMORY[0x277D82BE0](*v11);
        v56 = sub_268F9B284();
        *(v82 + 272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        sub_268F9AC04("GetSettingTemplatingService makeIntentHandledDialogNumericSyncRF2 | Providing spoken-only version of CAT for displayBrightness.", 127, 2, &dword_268CBE000, v57, v56);

        MEMORY[0x277D82BD8](v57);
        v12 = sub_268DB98D4();
        v63 = *v12;
        v64 = v12[1];
        v65 = *(v12 + 16);
        v13 = sub_268DC7BA8();
        v66 = *v13;
        MEMORY[0x277D82BE0](*v13);
        (*(v58 + 16))(v10, v67 + qword_280FE3800, v60);
        sub_268F9AB14();
        v62 = sub_268F9AB04();
        v61 = *(v58 + 8);
        v61(v59, v60);
        v61(v10, v60);
        sub_268DB9934(v63, v64, v65, v66, (v62 ^ 1) & 1);
        MEMORY[0x277D82BD8](v66);
        *(v82 + 280) = *(v67 + qword_280FE37E0);

        type metadata accessor for SettingsNumericSetting(0);

        MEMORY[0x277D82BE0](v81);
        v69 = SettingsNumericSetting.__allocating_init(settingId:value:)(v83, v84, v81);
        *(v82 + 288) = v69;
        v68 = *(v67 + qword_280FE37C8);
        *(v82 + 296) = v68;

        v14 = swift_task_alloc();
        *(v82 + 304) = v14;
        *v14 = *(v82 + 56);
        v14[1] = sub_268F0DACC;

        return sub_268F4CFF4(v69, v68);
      }

      MEMORY[0x277D82BE0](v79);
      if (v79)
      {
        result = v79;
        if (__OFADD__(v73, 1))
        {
          __break(1u);
          return result;
        }

        v55 = sub_268F9AE14();

        [v79 setInteger:v73 + 1 forKey:v55];
        MEMORY[0x277D82BD8](v55);
        MEMORY[0x277D82BD8](v79);
      }

      v17 = sub_268DC866C();
      v54 = *v17;
      MEMORY[0x277D82BE0](*v17);
      v53 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC04("GetSettingTemplatingService makeIntentHandledDialogNumericSyncRF2 | Providing verbose CAT for displayBrightness.", 112, 2, &dword_268CBE000, v54, v53);

      MEMORY[0x277D82BD8](v54);
    }

    MEMORY[0x277D82BD8](v79);
  }

  v49 = *(v82 + 176);
  v50 = sub_268E07FF4(v49);
  *(v82 + 376) = v50 & 1;
  sub_268E07C44(v49);
  v51 = sub_268F9AE94();
  v52 = v18;

  v86 = sub_268E493BC(v51, v52);
  if (v86 == 16)
  {
    v48 = 0;
  }

  else
  {
    *(v82 + 377) = 13;
    *(v82 + 378) = v86;
    sub_268E4A21C();
    v48 = sub_268F9AE04();
  }

  v19 = *(v82 + 224);
  v36 = *(v82 + 216);
  v37 = *(v82 + 200);
  v44 = *(v82 + 192);
  v35 = *(v82 + 208);
  *(v82 + 384) = v48 & 1;
  v20 = sub_268DB98D4();
  v40 = *v20;
  v41 = v20[1];
  v42 = *(v20 + 16);
  v21 = sub_268DC7BA8();
  v43 = *v21;
  MEMORY[0x277D82BE0](*v21);
  (*(v35 + 16))(v19, v44 + qword_280FE3800, v37);
  sub_268F9AB14();
  v39 = sub_268F9AB04();
  v38 = *(v35 + 8);
  v38(v36, v37);
  v38(v19, v37);
  sub_268DB9934(v40, v41, v42, v43, (v39 ^ 1) & 1);
  MEMORY[0x277D82BD8](v43);
  *(v82 + 328) = *(v44 + qword_280FE37E0);

  type metadata accessor for SettingsNumericSetting(0);

  MEMORY[0x277D82BE0](v81);
  v47 = SettingsNumericSetting.__allocating_init(settingId:value:)(v83, v84, v81);
  *(v82 + 336) = v47;
  v45 = *(v44 + qword_280FE37C8);
  *(v82 + 344) = v45;

  v46 = sub_268EADBD0();

  v22 = swift_task_alloc();
  *(v82 + 352) = v22;
  *v22 = *(v82 + 56);
  v22[1] = sub_268F0DE40;

  return sub_268F4BD30(v47, v45, v46, v50 & 1, v48 & 1);
}