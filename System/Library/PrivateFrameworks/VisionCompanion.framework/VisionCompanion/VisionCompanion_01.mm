uint64_t sub_2330A2CAC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_2330A2FF4;
  }

  else
  {
    v4 = sub_2330A2DC0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2330A2DC0()
{
  v14 = v0;
  if (qword_2814EAD80 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  v0[31] = __swift_project_value_buffer(v1, qword_2814EBD80);

  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[29];
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_233098F44(0x6553656369766544, 0xEC00000072657672, &v13);
    *(v6 + 12) = 2080;
    v8 = MEMORY[0x2383995E0](v4, v5);
    v10 = sub_233098F44(v8, v9, &v13);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_233084000, v2, v3, "%s fetched CloudKit devices: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v7, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  sub_233090F8C((v0 + 7));
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v11 = swift_task_alloc();
  v0[32] = v11;
  *v11 = v0;
  v11[1] = sub_2330A327C;

  return sub_23309B4C0(0);
}

uint64_t sub_2330A2FF4()
{
  v14 = v0;
  v1 = v0[30];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (qword_2814EAD80 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBD80);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2960();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_233098F44(0x6553656369766544, 0xEC00000072657672, &v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_233084000, v4, v5, "%s failed to update AuthKit devices %@", v6, 0x16u);
    sub_2330952BC(v7, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2330A327C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {

    v4 = sub_2330A3EEC;
  }

  else
  {
    v4 = sub_2330A3398;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2330A3398()
{
  v107 = v0;
  v1 = v0[33];
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[33]; v2; i = v0[33])
  {
    v4 = 0;
    v5 = v0[20];
    v104 = v1 & 0xC000000000000001;
    v99 = i + 32;
    v101 = v1 & 0xFFFFFFFFFFFFFF8;
    v1 = v5 + 32;
    v6 = MEMORY[0x277D84F90];
    while (v104)
    {
      v7 = MEMORY[0x238399A10](v4, v0[33]);
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      v10 = v0[18];
      v9 = v0[19];
      sub_2330B088C(v7, v10);
      if ((*(v5 + 48))(v10, 1, v9) == 1)
      {
        sub_2330952BC(v0[18], &qword_27DDDDE78, &qword_2330F4AF0);
      }

      else
      {
        v11 = *v1;
        (*v1)(v0[27], v0[18], v0[19]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_233098870(0, v6[2] + 1, 1, v6);
        }

        v12 = v6;
        v13 = v6[2];
        v14 = v12;
        v15 = v12[3];
        if (v13 >= v15 >> 1)
        {
          v14 = sub_233098870((v15 > 1), v13 + 1, 1, v14);
        }

        v16 = v0[27];
        v17 = v0[19];
        v14[2] = v13 + 1;
        v18 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13;
        v6 = v14;
        v11(v18, v16, v17);
      }

      ++v4;
      if (v8 == v2)
      {
        goto LABEL_23;
      }
    }

    if (v4 >= *(v101 + 16))
    {
      goto LABEL_20;
    }

    v7 = *(v99 + 8 * v4);
    v8 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v2 = sub_2330F2CB0();
  }

  v6 = MEMORY[0x277D84F90];
LABEL_23:

  v19 = sub_2330F23A0();
  v20 = sub_2330F2980();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[19];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v106[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_233098F44(0x6553656369766544, 0xEC00000072657672, v106);
    *(v22 + 12) = 2080;
    v24 = MEMORY[0x2383995E0](v6, v21);
    v26 = sub_233098F44(v24, v25, v106);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_233084000, v19, v20, "%s fetched AuthKit devices: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v23, -1, -1);
    MEMORY[0x23839A490](v22, -1, -1);
  }

  v100 = v6;
  v102 = v6[2];
  if (v102)
  {
    v27 = 0;
    v28 = v0[20];
    v105 = (v28 + 8);
    v29 = (v28 + 32);
    v30 = v0[34];
    v95 = MEMORY[0x277D84F90];
    while (v27 < v100[2])
    {
      v31 = v0[29];
      v32 = v0[26];
      v33 = v0[17];
      v34 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v35 = *(v28 + 72);
      (*(v28 + 16))(v32, v100 + v34 + v35 * v27, v0[19]);
      sub_2330A71AC(v32, v31, v33);
      v36 = v0[19];
      if (v30)
      {
        v49 = v0[26];

        (*v105)(v49, v36);

        return;
      }

      v37 = v0[17];
      (*v105)(v0[26], v36);
      if ((*(v28 + 48))(v37, 1, v36) == 1)
      {
        sub_2330952BC(v0[17], &qword_27DDDDE78, &qword_2330F4AF0);
      }

      else
      {
        v39 = v0[24];
        v38 = v0[25];
        v40 = v0[19];
        v41 = *v29;
        (*v29)(v38, v0[17], v40);
        v41(v39, v38, v40);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v42 = v95;
        }

        else
        {
          v42 = sub_233098870(0, v95[2] + 1, 1, v95);
        }

        v44 = v42[2];
        v43 = v42[3];
        v45 = v42;
        if (v44 >= v43 >> 1)
        {
          v42 = sub_233098870((v43 > 1), v44 + 1, 1, v42);
        }

        v46 = v0[24];
        v47 = v0[19];
        v42[2] = v44 + 1;
        v95 = v42;
        (v41)(v42 + v34 + v44 * v35, v46, v47, v45);
      }

      v30 = 0;
      if (v102 == ++v27)
      {
        v6 = v100;
        v48 = v95;
        goto LABEL_43;
      }
    }

    goto LABEL_79;
  }

  v48 = MEMORY[0x277D84F90];
LABEL_43:
  v96 = v48;
  v0[35] = v48;
  v50 = v0[29];
  v94 = *(v50 + 16);
  if (v94)
  {
    v51 = 0;
    v52 = v0[20];
    v92 = (v0[14] + 8);
    v93 = v52;
    v88 = (v52 + 32);
    v98 = -v102;
    v89 = MEMORY[0x277D84F90];
    v90 = v0[29];
    v91 = (v52 + 8);
    while (v51 < *(v50 + 16))
    {
      v55 = v0[15];
      v54 = v0[16];
      v56 = v0[13];
      v57 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      v97 = v51;
      v103 = *(v93 + 72);
      v58 = v0[29] + v57 + v103 * v51;
      v59 = *(v93 + 16);
      v59(v0[23], v58, v0[19]);
      sub_2330F2350();
      sub_2330F2310();
      sub_2330A835C(&qword_27DDDDF88, MEMORY[0x277D78468], MEMORY[0x277D78478]);
      v60 = sub_2330F2B60();
      v61 = *v92;
      (*v92)(v55, v56);
      v61(v54, v56);
      if (v60)
      {
        v62 = v6 + v57;
        v63 = -1;
        while (v98 + v63 != -1)
        {
          if (++v63 >= v6[2])
          {
            __break(1u);
            goto LABEL_78;
          }

          v59(v0[22], v62, v0[19]);
          v64 = sub_2330F22D0();
          v66 = v65;
          v67 = sub_2330F22D0();
          v69 = v0[22];
          v70 = v0[19];
          if (v64 == v67 && v66 == v68)
          {

            v73 = *v91;
            (*v91)(v69, v70);
            v6 = v100;
LABEL_64:
            v73(v0[23], v0[19]);
            v50 = v90;
            v53 = v97;
            goto LABEL_46;
          }

          v62 += v103;
          v72 = sub_2330F2DC0();

          v73 = *v91;
          (*v91)(v69, v70);
          v6 = v100;
          if (v72)
          {
            goto LABEL_64;
          }
        }

        v74 = *v88;
        (*v88)(v0[21], v0[23], v0[19]);
        v75 = v89;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v106[0] = v89;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2330AC67C(0, *(v89 + 16) + 1, 1);
          v75 = v106[0];
        }

        v50 = v90;
        v53 = v97;
        v78 = *(v75 + 16);
        v77 = *(v75 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_2330AC67C((v77 > 1), v78 + 1, 1);
          v75 = v106[0];
        }

        v79 = v0[21];
        v80 = v0[19];
        *(v75 + 16) = v78 + 1;
        v89 = v75;
        v74(v75 + v57 + v78 * v103, v79, v80);
      }

      else
      {
        (*v91)(v0[23], v0[19]);
        v53 = v97;
        v50 = v90;
      }

LABEL_46:
      v51 = v53 + 1;
      if (v51 == v94)
      {
        v81 = v89;
        goto LABEL_67;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return;
  }

  v81 = MEMORY[0x277D84F90];
LABEL_67:
  v0[36] = v81;

  if (v96[2] || *(v81 + 16))
  {
    v0[37] = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v82 = swift_task_alloc();
    v0[38] = v82;
    *v82 = v0;
    v82[1] = sub_2330A417C;

    sub_2330B881C();
  }

  else
  {

    v83 = sub_2330F23A0();
    v84 = sub_2330F2980();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v106[0] = v86;
      *v85 = 136315138;
      *(v85 + 4) = sub_233098F44(0x6553656369766544, 0xEC00000072657672, v106);
      _os_log_impl(&dword_233084000, v83, v84, "%s not updating AuthKit devices; devices unchanged", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      MEMORY[0x23839A490](v86, -1, -1);
      MEMORY[0x23839A490](v85, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v87 = v0[1];

    v87();
  }
}

uint64_t sub_2330A3EEC()
{
  v14 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[34];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (qword_2814EAD80 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBD80);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2960();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_233098F44(0x6553656369766544, 0xEC00000072657672, &v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_233084000, v4, v5, "%s failed to update AuthKit devices %@", v6, 0x16u);
    sub_2330952BC(v7, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2330A417C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[39] = v3;
  *v3 = v2;
  v3[1] = sub_2330A42E4;
  v4 = v1[37];
  v5 = v1[36];
  v6 = v1[35];

  return sub_2330965C8(v3, v4, v6, v5);
}

uint64_t sub_2330A42E4()
{
  v2 = *v1;
  *(v2 + 320) = v0;

  v3 = *(v2 + 296);
  if (v0)
  {

    v4 = sub_2330A4730;
  }

  else
  {
    v4 = sub_2330A4424;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2330A4424()
{
  sub_2330B868C(*(v0 + 296));

  return MEMORY[0x2822009F8](sub_2330A448C, 0, 0);
}

uint64_t sub_2330A448C()
{
  v20 = v0;

  v1 = sub_2330F23A0();
  v2 = sub_2330F2980();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[35];
  v4 = v0[36];
  if (v3)
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_233098F44(0x6553656369766544, 0xEC00000072657672, &v19);
    *(v7 + 12) = 2080;
    v9 = MEMORY[0x2383995E0](v5, v6);
    v11 = v10;

    v12 = sub_233098F44(v9, v11, &v19);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2080;
    v13 = MEMORY[0x2383995E0](v4, v6);
    v15 = v14;

    v16 = sub_233098F44(v13, v15, &v19);

    *(v7 + 24) = v16;
    _os_log_impl(&dword_233084000, v1, v2, "%s updated AuthKit devices; added devices: %s, removed devices: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v7, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v17 = v0[1];

  return v17();
}

uint64_t sub_2330A4730()
{
  sub_2330B868C(*(v0 + 296));

  return MEMORY[0x2822009F8](sub_2330A4798, 0, 0);
}

uint64_t sub_2330A4798()
{
  v14 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[40];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (qword_2814EAD80 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBD80);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2960();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_233098F44(0x6553656369766544, 0xEC00000072657672, &v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_233084000, v4, v5, "%s failed to update AuthKit devices %@", v6, 0x16u);
    sub_2330952BC(v7, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2330A4A28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330A4ABC(a1);
}

uint64_t sub_2330A4ABC(uint64_t a1)
{
  v1[12] = a1;
  v1[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDF68, &qword_2330F4AE8);
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE78, &qword_2330F4AF0);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v2 = sub_2330F2370();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330A4C44, 0, 0);
}

uint64_t sub_2330A4C44()
{
  sub_233090A7C();
  if (sub_2330F2380())
  {
    sub_233090CD8((v0 + 2));
    sub_233091A08((v0 + 7));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_2330A4E10;

    return DeviceCloudKitCoordinator.fetchDevices()();
  }

  else
  {
    sub_2330A7B40();
    swift_allocError();
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_2330A4E10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_2330A5704;
  }

  else
  {
    v4 = sub_2330A4F24;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2330A4F24()
{
  v73 = v0;
  if (qword_2814EAD80 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  *(v0 + 232) = __swift_project_value_buffer(v1, qword_2814EBD80);

  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 152);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v72[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_233098F44(0x6553656369766544, 0xEC00000072657672, v72);
    *(v6 + 12) = 2080;
    v8 = MEMORY[0x2383995E0](v4, v5);
    v10 = sub_233098F44(v8, v9, v72);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_233084000, v2, v3, "%s fetched CloudKit devices: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v7, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  v11 = *(v0 + 216);
  v12 = *(v0 + 200);
  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  sub_2330B130C();
  *(swift_task_alloc() + 16) = v12;
  sub_2330A77AC(sub_2330A7AB0, v11, v15);

  sub_2330A7AD0(v15, v16);
  v17 = *(v13 + 48);
  v18 = v17(v16, 1, v14);
  v20 = *(v0 + 192);
  v19 = *(v0 + 200);
  if (v18 == 1)
  {
    v21 = *(v0 + 152);
    v22 = *(v0 + 160);
    sub_2330952BC(*(v0 + 136), &qword_27DDDDE78, &qword_2330F4AF0);
    v23 = *(v22 + 16);
    v24 = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v20, v19, v21);
    v25 = v23;
  }

  else
  {
    v26 = *(v0 + 184);
    v27 = *(v0 + 152);
    v28 = *(v0 + 160);
    v29 = *(v0 + 136);
    sub_2330B0CA4(*(v0 + 200), v26);
    (*(v28 + 8))(v29, v27);
    (*(v28 + 32))(v20, v26, v27);
    v25 = *(v28 + 16);
    v24 = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  v30 = *(v0 + 192);
  v31 = *(v0 + 152);
  v32 = *(v0 + 160);
  v33 = *(v0 + 144);
  v34 = *(v0 + 128);
  v36 = *(v0 + 104);
  v35 = *(v0 + 112);
  *(v0 + 240) = v25;
  *(v0 + 248) = v24;
  v71 = v25;
  v25(v34, v30, v31);
  (*(v32 + 56))(v34, 0, 1, v31);
  v37 = *(v36 + 48);
  sub_2330A7AD0(v34, v35);
  sub_2330A7AD0(v33, v35 + v37);
  v38 = v17(v35, 1, v31);
  v39 = *(v0 + 152);
  if (v38 == 1)
  {
    sub_2330952BC(*(v0 + 128), &qword_27DDDDE78, &qword_2330F4AF0);
    if (v17(v35 + v37, 1, v39) == 1)
    {
      sub_2330952BC(*(v0 + 112), &qword_27DDDDE78, &qword_2330F4AF0);
LABEL_18:
      v59 = sub_2330F23A0();
      v60 = sub_2330F2980();
      v61 = os_log_type_enabled(v59, v60);
      v62 = *(v0 + 192);
      v63 = *(v0 + 152);
      v64 = *(v0 + 160);
      v65 = *(v0 + 144);
      if (v61)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v72[0] = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_233098F44(0x6553656369766544, 0xEC00000072657672, v72);
        _os_log_impl(&dword_233084000, v59, v60, "%s not updating local device; device unchanged", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x23839A490](v67, -1, -1);
        MEMORY[0x23839A490](v66, -1, -1);
      }

      v68 = *(v64 + 8);
      v68(v62, v63);
      sub_2330952BC(v65, &qword_27DDDDE78, &qword_2330F4AF0);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v68(*(v0 + 200), *(v0 + 152));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

      v69 = *(v0 + 8);

      return v69();
    }

    goto LABEL_13;
  }

  sub_2330A7AD0(*(v0 + 112), *(v0 + 120));
  if (v17(v35 + v37, 1, v39) == 1)
  {
    v40 = *(v0 + 152);
    v41 = *(v0 + 160);
    v42 = *(v0 + 120);
    sub_2330952BC(*(v0 + 128), &qword_27DDDDE78, &qword_2330F4AF0);
    (*(v41 + 8))(v42, v40);
LABEL_13:
    sub_2330952BC(*(v0 + 112), &qword_27DDDDF68, &qword_2330F4AE8);
    goto LABEL_14;
  }

  v52 = *(v0 + 176);
  v53 = *(v0 + 152);
  v54 = *(v0 + 160);
  v55 = *(v0 + 120);
  v70 = *(v0 + 128);
  v56 = *(v0 + 112);
  (*(v54 + 32))(v52, v35 + v37, v53);
  sub_2330A835C(&qword_27DDDDF78, MEMORY[0x277D78490], MEMORY[0x277D784A0]);
  v57 = sub_2330F25A0();
  v58 = *(v54 + 8);
  v58(v52, v53);
  sub_2330952BC(v70, &qword_27DDDDE78, &qword_2330F4AF0);
  v58(v55, v53);
  sub_2330952BC(v56, &qword_27DDDDE78, &qword_2330F4AF0);
  if (v57)
  {
    goto LABEL_18;
  }

LABEL_14:
  v43 = *(v0 + 192);
  v44 = *(v0 + 152);
  v45 = *(v0 + 160);
  v46 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDEB8, &unk_2330F44B0);
  v47 = *(v45 + 80);
  *(v0 + 328) = v47;
  v48 = (v47 + 32) & ~v47;
  v49 = swift_allocObject();
  *(v0 + 256) = v49;
  *(v49 + 16) = xmmword_2330F46B0;
  v71(v49 + v48, v43, v44);
  *(v0 + 264) = *v46;
  v50 = swift_task_alloc();
  *(v0 + 272) = v50;
  *v50 = v0;
  v50[1] = sub_2330A5988;

  return sub_2330B881C();
}

uint64_t sub_2330A5704()
{
  v14 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[28];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (qword_2814EAD80 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBD80);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2960();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_233098F44(0x6553656369766544, 0xEC00000072657672, &v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_233084000, v4, v5, "%s failed to update local device %@", v6, 0x16u);
    sub_2330952BC(v7, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2330A5988()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[35] = v3;
  *v3 = v2;
  v3[1] = sub_2330A5AE4;
  v4 = v1[33];
  v5 = v1[32];
  v6 = MEMORY[0x277D84F90];

  return sub_2330965C8(v3, v4, v5, v6);
}

uint64_t sub_2330A5AE4()
{
  v2 = *v1;
  *(v2 + 288) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  v5 = *(v2 + 160);
  v6 = *(v2 + 152);
  v7 = (*(v2 + 328) + 32) & ~*(v2 + 328);
  swift_setDeallocating();
  v8 = *(v5 + 8);
  v9 = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    *(v2 + 312) = v8;
    *(v2 + 320) = v9;
    v8(v4 + v7, v6);
    swift_deallocClassInstance();
    v10 = sub_2330A6014;
  }

  else
  {
    *(v2 + 296) = v8;
    *(v2 + 304) = v9;
    v8(v4 + v7, v6);
    swift_deallocClassInstance();
    v10 = sub_2330A5CD0;
  }

  return MEMORY[0x2822009F8](v10, v3, 0);
}

uint64_t sub_2330A5CD0()
{
  sub_2330B868C(*(v0 + 264));

  return MEMORY[0x2822009F8](sub_2330A5D38, 0, 0);
}

uint64_t sub_2330A5D38()
{
  v21 = v0;
  (*(v0 + 240))(*(v0 + 168), *(v0 + 192), *(v0 + 152));
  v1 = sub_2330F23A0();
  v2 = sub_2330F2980();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 296);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  if (v3)
  {
    v19 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v5;
    v20 = v17;
    *v9 = 136315394;
    *(v9 + 4) = sub_233098F44(0x6553656369766544, 0xEC00000072657672, &v20);
    *(v9 + 12) = 2080;
    sub_2330A835C(&qword_27DDDDF70, MEMORY[0x277D78490], MEMORY[0x277D784B0]);
    v10 = sub_2330F2D80();
    v12 = v11;
    v4(v6, v7);
    v13 = sub_233098F44(v10, v12, &v20);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_233084000, v1, v2, "%s updated local device %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v17, -1, -1);
    MEMORY[0x23839A490](v9, -1, -1);

    v4(v18, v7);
    v14 = v19;
  }

  else
  {

    v4(v6, v7);
    v4(v5, v7);
    v14 = v8;
  }

  sub_2330952BC(v14, &qword_27DDDDE78, &qword_2330F4AF0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  (*(v0 + 296))(*(v0 + 200), *(v0 + 152));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2330A6014()
{
  sub_2330B868C(*(v0 + 264));

  return MEMORY[0x2822009F8](sub_2330A607C, 0, 0);
}

uint64_t sub_2330A607C()
{
  v18 = v0;
  v1 = v0[39];
  v2 = v0[25];
  v4 = v0[18];
  v3 = v0[19];
  v1(v0[24], v3);
  sub_2330952BC(v4, &qword_27DDDDE78, &qword_2330F4AF0);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1(v2, v3);
  v5 = v0[36];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (qword_2814EAD80 != -1)
  {
    swift_once();
  }

  v6 = sub_2330F23C0();
  __swift_project_value_buffer(v6, qword_2814EBD80);
  v7 = v5;
  v8 = sub_2330F23A0();
  v9 = sub_2330F2960();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_233098F44(0x6553656369766544, 0xEC00000072657672, &v17);
    *(v10 + 12) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_233084000, v8, v9, "%s failed to update local device %@", v10, 0x16u);
    sub_2330952BC(v11, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x23839A490](v12, -1, -1);
    MEMORY[0x23839A490](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_2330A6358()
{
  if (sub_233090A7C())
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    sub_2330924B0((v0 + 2));
    v3 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_23308C264;

    return sub_2330C93EC(v3);
  }
}

uint64_t sub_2330A6460()
{
  sub_233090CD8((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_2330A650C;

  return DeviceCloudKitCoordinator.registerForPushNotifications()();
}

uint64_t sub_2330A650C()
{

  return MEMORY[0x2822009F8](sub_2330A6608, 0, 0);
}

uint64_t sub_2330A6608()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_2330A66A8;

  return DeviceCloudKitCoordinator.removeDuplicateDevices()();
}

uint64_t sub_2330A66A8()
{

  return MEMORY[0x2822009F8](sub_2330953EC, 0, 0);
}

uint64_t sub_2330A67A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330877C8;

  return sub_2330A6838(a1);
}

uint64_t sub_2330A6858()
{
  sub_233090CD8((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_2330A6904;

  return DeviceCloudKitCoordinator.registerForPushNotifications()();
}

uint64_t sub_2330A6904()
{

  return MEMORY[0x2822009F8](sub_2330A6A00, 0, 0);
}

uint64_t sub_2330A6A00()
{
  if (sub_233090A7C())
  {
    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_2330A6C24;
    v2 = v0[7];

    return sub_2330A4ABC(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_2330A6B0C;
    v5 = v0[7];

    return sub_2330A292C(v5);
  }
}

uint64_t sub_2330A6B0C()
{

  if (v0)
  {

    v1 = sub_2330953EC;
  }

  else
  {
    v1 = sub_23308D118;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2330A6C24()
{

  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_2330953EC, 0, 0);
}

uint64_t sub_2330A6D3C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 104) = a1;
  return MEMORY[0x2822009F8](sub_2330A6D60, 0, 0);
}

uint64_t sub_2330A6D60()
{
  sub_233092F5C((v0 + 2));
  v0[9] = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_2330A6E0C;

  return sub_2330B881C();
}

uint64_t sub_2330A6E0C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_2330A6F50;
  v4 = *(v1 + 56);
  v5 = *(v1 + 104);

  return sub_2330E8E74(v3, v5, v4);
}

uint64_t sub_2330A6F50()
{
  v2 = *(*v1 + 72);
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_2330A70E0;
  }

  else
  {
    v3 = sub_2330A7078;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_2330A7078()
{
  sub_2330B868C(*(v0 + 72));

  return MEMORY[0x2822009F8](sub_2330953F0, 0, 0);
}

uint64_t sub_2330A70E0()
{
  sub_2330B868C(*(v0 + 72));

  return MEMORY[0x2822009F8](sub_2330A7148, 0, 0);
}

uint64_t sub_2330A7148()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2330A71AC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v52 = a2;
  v54 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDF68, &qword_2330F4AE8);
  MEMORY[0x28223BE20](v49, v4);
  v56 = &v45 - v5;
  v6 = sub_2330F2370();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v45 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE78, &qword_2330F4AF0);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v47 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v45 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v45 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v45 - v31;
  v55 = a1;
  v33 = v53;
  sub_2330A77AC(sub_2330A89C4, v52, &v45 - v31);
  v52 = v33;
  sub_2330A7AD0(v32, v29);
  v48 = *(v7 + 48);
  if (v48(v29, 1, v6) == 1)
  {
    sub_2330952BC(v29, &qword_27DDDDE78, &qword_2330F4AF0);
    v34 = *(v7 + 16);
    v34(v17, a1, v6);
  }

  else
  {
    sub_2330B0CA4(a1, v14);
    (*(v7 + 8))(v29, v6);
    (*(v7 + 32))(v17, v14, v6);
    v34 = *(v7 + 16);
  }

  v53 = v17;
  v34(v25, v17, v6);
  v50 = *(v7 + 56);
  v51 = v7 + 56;
  v50(v25, 0, 1, v6);
  v35 = *(v49 + 48);
  v36 = v56;
  sub_2330A7AD0(v25, v56);
  sub_2330A7AD0(v32, v36 + v35);
  v37 = v48;
  if (v48(v36, 1, v6) == 1)
  {
    sub_2330952BC(v25, &qword_27DDDDE78, &qword_2330F4AF0);
    v38 = v56;
    sub_2330952BC(v32, &qword_27DDDDE78, &qword_2330F4AF0);
    if (v37(v38 + v35, 1, v6) == 1)
    {
      sub_2330952BC(v38, &qword_27DDDDE78, &qword_2330F4AF0);
      v39 = *(v7 + 8);
LABEL_12:
      v41 = v54;
      v39(v53, v6);
      v42 = 1;
      return v50(v41, v42, 1, v6);
    }

    goto LABEL_9;
  }

  v40 = v47;
  sub_2330A7AD0(v36, v47);
  if (v37(v36 + v35, 1, v6) == 1)
  {
    sub_2330952BC(v25, &qword_27DDDDE78, &qword_2330F4AF0);
    v38 = v56;
    sub_2330952BC(v32, &qword_27DDDDE78, &qword_2330F4AF0);
    (*(v7 + 8))(v40, v6);
LABEL_9:
    sub_2330952BC(v38, &qword_27DDDDF68, &qword_2330F4AE8);
    v41 = v54;
    (*(v7 + 32))(v54, v53, v6);
    goto LABEL_10;
  }

  v43 = v46;
  v48 = *(v7 + 32);
  v48(v46, v36 + v35, v6);
  sub_2330A835C(&qword_27DDDDF78, MEMORY[0x277D78490], MEMORY[0x277D784A0]);
  LODWORD(v49) = sub_2330F25A0();
  v39 = *(v7 + 8);
  v39(v43, v6);
  sub_2330952BC(v25, &qword_27DDDDE78, &qword_2330F4AF0);
  sub_2330952BC(v32, &qword_27DDDDE78, &qword_2330F4AF0);
  v39(v40, v6);
  sub_2330952BC(v56, &qword_27DDDDE78, &qword_2330F4AF0);
  if (v49)
  {
    goto LABEL_12;
  }

  v41 = v54;
  v48(v54, v53, v6);
LABEL_10:
  v42 = 0;
  return v50(v41, v42, 1, v6);
}

uint64_t sub_2330A77AC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_2330F2370();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_2330A7980(uint64_t a1)
{
  v1 = sub_2330F22D0();
  v3 = v2;
  if (v1 == sub_2330F22D0() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2330F2DC0();
  }

  return v5 & 1;
}

uint64_t sub_2330A7A1C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_23309FC3C(v2);
}

uint64_t sub_2330A7AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE78, &qword_2330F4AF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2330A7B40()
{
  result = qword_27DDDDF80;
  if (!qword_27DDDDF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDDF80);
  }

  return result;
}

uint64_t sub_2330A7B94()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2330A7C24;

  return sub_2330A0E80(v0);
}

uint64_t sub_2330A7C24(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_2330A7D30()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330A7C24;

  return sub_2330A10EC(v2);
}

uint64_t sub_2330A7DDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233088E00;

  return sub_2330A1318(a1, v4);
}

unint64_t sub_2330A7E94()
{
  result = qword_2814EAEC0;
  if (!qword_2814EAEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814EAEC0);
  }

  return result;
}

uint64_t sub_2330A7EE8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_233088E00;

  return sub_2330A1520(v0);
}

uint64_t sub_2330A7F78()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2330A8008;

  return sub_2330A1BAC(v0);
}

uint64_t sub_2330A8008(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2330A8104()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330A89E0;

  return sub_2330A1E08(v2);
}

uint64_t sub_2330A81B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233088E00;

  return sub_2330A2020(a1, v4);
}

unint64_t sub_2330A8268()
{
  result = qword_2814EACE0;
  if (!qword_2814EACE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DDDDF90, &qword_2330F4B80);
    v1 = MEMORY[0x277D78490];
    sub_2330A835C(&qword_2814EADC8, MEMORY[0x277D78490], MEMORY[0x277D784A8]);
    sub_2330A835C(&qword_2814EADD0, v1, MEMORY[0x277D78498]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814EACE0);
  }

  return result;
}

uint64_t sub_2330A835C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2330A83A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2330877C8;

  return sub_2330A221C(a1, v1);
}

uint64_t sub_2330A843C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_233088E00;

  return sub_2330A2898(v0);
}

uint64_t sub_2330A84CC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_233088E00;

  return sub_2330A4A28(v0);
}

uint64_t sub_2330A855C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2330877C8;

  return sub_2330A6338(v0);
}

uint64_t sub_2330A85EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233088E00;

  return sub_2330ACB70(a1, v4);
}

uint64_t sub_2330A86A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_233088E00;

  return sub_2330A6440(a1, v4, v5, v6);
}

uint64_t sub_2330A8758()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_233088E00;

  return sub_2330A67A4(v0);
}

uint64_t sub_2330A87E8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_233088E00;

  return sub_2330A6338(v0);
}

uint64_t objectdestroy_49Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2330A88C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_233088E00;

  return sub_233086B70(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_2330A89E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_2330F2340();
  v72 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v59 - v9;
  if (sub_2330F2AA0() == 0x656369766544 && v11 == 0xE600000000000000)
  {
  }

  else
  {
    v12 = sub_2330F2DC0();

    if ((v12 & 1) == 0)
    {
LABEL_26:
      if (qword_2814EAD80 != -1)
      {
        swift_once();
      }

      v37 = sub_2330F23C0();
      __swift_project_value_buffer(v37, qword_2814EBD80);
      v38 = a1;
      v39 = sub_2330F23A0();
      v40 = sub_2330F2980();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v73 = v43;
        *v41 = 136315394;
        *(v41 + 4) = sub_233098F44(0x656369766544, 0xE600000000000000, &v73);
        *(v41 + 12) = 2112;
        *(v41 + 14) = v38;
        *v42 = v38;
        v44 = v38;
        _os_log_impl(&dword_233084000, v39, v40, "%s skipping unsupported Device record version: %@", v41, 0x16u);
        sub_23309AE8C(v42);
        MEMORY[0x23839A490](v42, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x23839A490](v43, -1, -1);
        MEMORY[0x23839A490](v41, -1, -1);
      }

      v45 = 1;
      goto LABEL_31;
    }
  }

  v13 = [a1 encryptedValues];
  v14 = sub_2330F25C0();
  v15 = [v13 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v15)
  {
    goto LABEL_26;
  }

  v73 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE270, &qword_2330F4C70);
  if ((swift_dynamicCast() & 1) == 0 || v75 != 4)
  {
    goto LABEL_26;
  }

  v16 = [a1 encryptedValues];
  v17 = sub_2330F25C0();
  v18 = [v16 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v18)
  {
    goto LABEL_36;
  }

  v75 = v18;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v69 = v73;
  v70 = v74;
  v19 = [a1 encryptedValues];
  v20 = sub_2330F25C0();
  v21 = [v19 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v21 || (v75 = v21, (swift_dynamicCast() & 1) == 0))
  {
LABEL_35:

LABEL_36:
    if (qword_2814EAD80 != -1)
    {
      swift_once();
    }

    v47 = sub_2330F23C0();
    __swift_project_value_buffer(v47, qword_2814EBD80);
    v48 = a1;
    v49 = sub_2330F23A0();
    v50 = sub_2330F2960();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v73 = v53;
      *v51 = 136315394;
      *(v51 + 4) = sub_233098F44(0x656369766544, 0xE600000000000000, &v73);
      *(v51 + 12) = 2112;
      *(v51 + 14) = v48;
      *v52 = v48;
      v54 = v48;
      _os_log_impl(&dword_233084000, v49, v50, "%s found invalid Device record: %@", v51, 0x16u);
      sub_23309AE8C(v52);
      MEMORY[0x23839A490](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x23839A490](v53, -1, -1);
      MEMORY[0x23839A490](v51, -1, -1);
    }

    v45 = 0;
LABEL_31:
    sub_2330A9EF8();
    swift_allocError();
    *v46 = v45;
    swift_willThrow();

    return;
  }

  v67 = v73;
  v68 = v74;
  v22 = [a1 encryptedValues];
  v23 = sub_2330F25C0();
  v24 = [v22 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v24 || (v75 = v24, (swift_dynamicCast() & 1) == 0))
  {
LABEL_34:

    goto LABEL_35;
  }

  v65 = v73;
  v66 = v74;
  v25 = [a1 encryptedValues];
  v26 = sub_2330F25C0();
  v27 = [v25 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v27 || (v75 = v27, (swift_dynamicCast() & 1) == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  v63 = v73;
  v64 = v74;
  v28 = [a1 encryptedValues];
  v29 = sub_2330F25C0();
  v30 = [v28 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v30 || (v73 = v30, (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_33;
  }

  v62 = v75;
  v31 = [a1 encryptedValues];
  v32 = sub_2330F25C0();
  v33 = [v31 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v33)
  {
    v75 = v33;
    v34 = swift_dynamicCast();
    if (v34)
    {
      v35 = v73;
    }

    else
    {
      v35 = 0;
    }

    if (v34)
    {
      v36 = v74;
    }

    else
    {
      v36 = 0;
    }

    v60 = v36;
    v61 = v35;
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  v55 = [a1 encryptedValues];
  v56 = sub_2330F25C0();
  v57 = [v55 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v57)
  {
    v75 = v57;
    swift_dynamicCast();
  }

  sub_2330F2320();
  v58 = v72;
  (*(v72 + 16))(v7, v10, v3);
  sub_2330F22E0();

  (*(v58 + 8))(v10, v3);
}

uint64_t sub_2330A9398(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2330F2CB0())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x238399A10](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a3 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 encryptedValues];
      swift_getObjectType();
      sub_2330F2A40();
      swift_unknownObjectRelease();
      if (v18)
      {
        if (v17 == a1 && v18 == a2)
        {

LABEL_15:
          v12 = [v9 recordID];
          v13 = [v12 recordName];

          v14 = sub_2330F25F0();
          return v14;
        }

        v7 = sub_2330F2DC0();

        if (v7)
        {
          goto LABEL_15;
        }
      }

      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 0;
}

void *sub_2330A9588(uint64_t a1, uint64_t a2)
{
  v3 = sub_2330F2340();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2330F1EE0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233099620(0, &qword_2814EAC90, 0x277CBC5F8);
  sub_2330F25F0();
  sub_2330F2990();
  sub_233099620(0, &qword_27DDDDE80, 0x277CBC5D0);
  if (a2)
  {
  }

  else
  {
    sub_2330F1ED0();
    sub_2330F1EC0();
    (*(v8 + 8))(v11, v7);
  }

  v12 = sub_2330F2920();
  sub_233099620(0, &qword_27DDDDFA0, 0x277CBC5A0);
  v39 = v12;
  v13 = sub_2330F2A90();
  [v13 encryptedValues];
  v14 = sub_2330F22F0();
  v16 = MEMORY[0x277D837D0];
  v17 = MEMORY[0x277CBBE08];
  if (v15)
  {
    v18 = MEMORY[0x277CBBE08];
    v19 = MEMORY[0x277D837D0];
  }

  else
  {
    v14 = 0;
    v19 = 0;
    v18 = 0;
    v44 = 0;
  }

  v42 = v14;
  v43 = v15;
  v45 = v19;
  v46 = v18;
  swift_getObjectType();
  sub_2330F2A30();
  swift_unknownObjectRelease();
  v20 = [v13 encryptedValues];
  swift_getObjectType();
  v21 = sub_2330F22D0();
  v45 = v16;
  v46 = v17;
  v42 = v21;
  v43 = v22;
  sub_2330F2A30();
  swift_unknownObjectRelease();
  v23 = [v13 encryptedValues];
  swift_getObjectType();
  v24 = sub_2330F22A0();
  v45 = v16;
  v46 = v17;
  v42 = v24;
  v43 = v25;
  sub_2330F2A30();
  swift_unknownObjectRelease();
  v26 = [v13 encryptedValues];
  swift_getObjectType();
  v27 = sub_2330F22C0();
  v45 = v16;
  v46 = v17;
  v42 = v27;
  v43 = v28;
  sub_2330F2A30();
  swift_unknownObjectRelease();
  [v13 encryptedValues];
  v29 = sub_2330F22B0();
  if (v30)
  {
    v31 = MEMORY[0x277CBBE08];
    v32 = MEMORY[0x277D837D0];
  }

  else
  {
    v29 = 0;
    v32 = 0;
    v31 = 0;
    v44 = 0;
  }

  v42 = v29;
  v43 = v30;
  v45 = v32;
  v46 = v31;
  swift_getObjectType();
  sub_2330F2A30();
  swift_unknownObjectRelease();
  v33 = [v13 encryptedValues];
  swift_getObjectType();
  v34 = sub_2330F2360();
  v45 = v16;
  v46 = v17;
  v42 = v34;
  v43 = v35;
  sub_2330F2A30();
  swift_unknownObjectRelease();
  [v13 encryptedValues];
  swift_getObjectType();
  sub_2330F2350();
  v36 = sub_2330F2330();
  (*(v40 + 8))(v6, v41);
  v45 = MEMORY[0x277D83E88];
  v46 = MEMORY[0x277CBBEE0];
  v42 = v36;
  sub_2330F2A30();
  swift_unknownObjectRelease();
  v37 = [v13 encryptedValues];
  swift_getObjectType();
  v45 = MEMORY[0x277D83B88];
  v46 = MEMORY[0x277CBBE20];
  v42 = 4;
  sub_2330F2A30();
  swift_unknownObjectRelease();

  return v13;
}

uint64_t sub_2330A9B74(unint64_t a1)
{
  v28 = MEMORY[0x277D84FA0];
  v27 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2330F2CB0())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v4 = 0;
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x238399A10](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 encryptedValues];
      v10 = sub_2330F25C0();
      v11 = [v9 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v11 && (v24 = v11, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE270, &qword_2330F4C70), swift_dynamicCast()))
      {
        v13 = v25;
        v12 = v26;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v25 = 0;
        v26 = 0;
      }

      v14 = v28;

      v15 = sub_23309B2E0(v13, v12, v14);

      if (v15)
      {
        v16 = v7;
        MEMORY[0x2383995B0]();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2330F27F0();
        }

        sub_2330F2810();
        v5 = v27;
      }

      sub_23309D908(&v24, v13, v12);

      ++v4;
      if (v8 == i)
      {
        v3 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_21:

  if (!(v5 >> 62))
  {
    v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_23;
    }

LABEL_34:

    return MEMORY[0x277D84F90];
  }

  v17 = sub_2330F2CB0();
  if (!v17)
  {
    goto LABEL_34;
  }

LABEL_23:
  v25 = v3;
  result = sub_2330F2C70();
  if (v17 < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x238399A10](v19, v5);
      }

      else
      {
        v20 = *(v5 + 8 * v19 + 32);
      }

      v21 = v20;
      ++v19;
      v22 = [v20 recordID];

      sub_2330F2C50();
      sub_2330F2C80();
      sub_2330F2C90();
      sub_2330F2C60();
    }

    while (v17 != v19);

    return v25;
  }

  return result;
}

unint64_t sub_2330A9EF8()
{
  result = qword_27DDDDFB0;
  if (!qword_27DDDDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDDFB0);
  }

  return result;
}

unint64_t sub_2330A9F60()
{
  result = qword_27DDDDFC0;
  if (!qword_27DDDDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDDFC0);
  }

  return result;
}

uint64_t TVContentRequestCloudKitCoordinator.fetchRequests()()
{
  v1 = sub_2330F2110();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330AA074, 0, 0);
}

uint64_t sub_2330AA074()
{
  sub_233099620(0, &qword_2814EAC08, 0x277CBC578);
  v1 = [objc_opt_self() predicateWithValue_];
  v2 = sub_2330F2A80();
  v0[6] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDFD0, &qword_2330F5BD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2330F4D50;
  v4 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v5 = sub_2330F25C0();
  v6 = [v4 initWithKey:v5 ascending:0];

  *(v3 + 32) = v6;
  sub_233099620(0, &qword_27DDDDFD8, 0x277CCAC98);
  v7 = sub_2330F27C0();

  [v2 setSortDescriptors_];

  sub_233099620(0, &qword_2814EAC90, 0x277CBC5F8);
  sub_2330F25F0();
  v8 = sub_2330F2990();
  v0[7] = v8;
  if (qword_2814EB0F8 != -1)
  {
    swift_once();
  }

  v9 = *MEMORY[0x277CBBFC0];
  v10 = v8;
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_2330AA2F4;

  return MEMORY[0x28210DF20](v2, v8, 0, v9);
}

uint64_t sub_2330AA2F4(uint64_t a1, void *a2)
{
  v5 = *v3;
  *(v5 + 72) = a1;
  *(v5 + 80) = v2;

  if (v2)
  {
    v6 = sub_2330AA7C0;
  }

  else
  {

    v6 = sub_2330AA420;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2330AA420()
{
  v3 = *(v1 + 72);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v1 + 32);
    v34 = MEMORY[0x277D84F90];
    sub_2330AC6C0(0, v4, 0);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = v34;
    v9 = *(v3 + 32);
    v8 = *(v3 + 40);
    if (*(v3 + 48))
    {
LABEL_4:
      v11 = *(v1 + 48);
      v10 = *(v1 + 56);
      *(v1 + 16) = v8;
      sub_2330996C0(v8);
      sub_2330996C0(v8);
      v12 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE470, &qword_2330F46A0);
      swift_willThrowTypedImpl();

      sub_2330996CC(v8);
LABEL_11:

      v21 = *(v1 + 8);

      return v21();
    }

    v17 = *(v1 + 80);
    v18 = *(v1 + 40);
    sub_2330996C0(*(v3 + 40));
    sub_2330996C0(v8);
    v19 = v9;
    sub_2330E69E8(v8, v18);
    if (v17)
    {
      v20 = *(v1 + 56);

      sub_2330996CC(v8);
      goto LABEL_11;
    }

    sub_2330996CC(v8);
    v2 = *(v34 + 16);
    v6 = *(v34 + 24);
    v0 = v2 + 1;
    if (v2 >= v6 >> 1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v22 = *(v1 + 40);
      v23 = *(v1 + 24);
      *(v7 + 16) = v0;
      v33 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v32 = *(v5 + 72);
      v24 = *(v5 + 32);
      v24(v7 + v33 + v32 * v2, v22, v23);
      if (v4 == 1)
      {
        break;
      }

      v5 = v3 + 72;
      v26 = 1;
      while (1)
      {
        v6 = *(v3 + 16);
        if (v26 >= v6)
        {
          break;
        }

        v9 = *(v5 - 16);
        v8 = *(v5 - 8);
        if (*v5)
        {
          goto LABEL_4;
        }

        v27 = *(v1 + 40);
        sub_2330996C0(*(v5 - 8));
        sub_2330996C0(v8);
        v28 = v9;
        sub_2330E69E8(v8, v27);

        sub_2330996CC(v8);
        v34 = v7;
        v2 = *(v7 + 16);
        v29 = *(v7 + 24);
        v0 = v2 + 1;
        if (v2 >= v29 >> 1)
        {
          sub_2330AC6C0((v29 > 1), v2 + 1, 1);
        }

        ++v26;
        v30 = *(v1 + 40);
        v31 = *(v1 + 24);
        *(v7 + 16) = v0;
        v24(v7 + v33 + v32 * v2, v30, v31);
        v5 += 24;
        if (v4 == v26)
        {
          goto LABEL_16;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      sub_2330AC6C0((v6 > 1), v0, 1);
      v7 = v34;
    }

LABEL_16:
    v25 = *(v1 + 56);
  }

  else
  {
    v14 = *(v1 + 48);
    v13 = *(v1 + 56);

    v7 = MEMORY[0x277D84F90];
  }

  v15 = *(v1 + 8);

  return v15(v7);
}

uint64_t sub_2330AA7C0()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2330AA834(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2330F2110();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330AA8F4, 0, 0);
}

uint64_t sub_2330AA8F4()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[4];
    v15 = MEMORY[0x277D84F90];
    sub_2330F2C70();
    v7 = *(v4 + 16);
    v5 = v4 + 16;
    v6 = v7;
    v8 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v9 = *(v5 + 56);
    do
    {
      v10 = v0[5];
      v11 = v0[3];
      v6(v10, v8, v11);
      sub_2330E7684();
      (*(v5 - 8))(v10, v11);
      sub_2330F2C50();
      sub_2330F2C80();
      sub_2330F2C90();
      sub_2330F2C60();
      v8 += v9;
      --v2;
    }

    while (v2);
    v3 = v15;
  }

  v0[6] = v3;
  if (qword_2814EB0F8 != -1)
  {
    swift_once();
  }

  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_2330AAABC;
  v13 = MEMORY[0x277D84F90];

  return MEMORY[0x28210DE78](v3, v13, 0, 1);
}

uint64_t sub_2330AAABC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2330AACE0;
  }

  else
  {

    v2 = sub_2330AABFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2330AABFC()
{
  sub_233099620(0, &qword_2814EAC10, 0x277CCA9A0);
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  v2 = sub_2330F25C0();
  [v1 postNotificationName:v2 object:0];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2330AACE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2330AAD6C(uint64_t a1)
{
  v2 = sub_2330E7684();
  v1[3] = v2;
  if (qword_2814EB0F8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDFD0, &qword_2330F5BD0);
  v3 = swift_allocObject();
  v1[4] = v3;
  *(v3 + 16) = xmmword_2330F4D50;
  *(v3 + 32) = v2;
  v4 = v2;
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = sub_2330AAEA0;
  v6 = MEMORY[0x277D84F90];

  return MEMORY[0x28210DE78](v3, v6, 1, 1);
}

uint64_t sub_2330AAEA0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2330AB0C0;
  }

  else
  {

    v2 = sub_2330AAFE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2330AAFE0()
{
  v1 = *(v0 + 24);
  sub_233099620(0, &qword_2814EAC10, 0x277CCA9A0);
  v2 = [swift_getObjCClassFromMetadata() defaultCenter];
  v3 = sub_2330F25C0();
  [v2 postNotificationName:v3 object:0];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2330AB0C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2330AB128(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2330F20C0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_2330F2290();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330AB244, 0, 0);
}

uint64_t sub_2330AB244()
{
  sub_2330F21A0();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_2330AB2E4;
  v2 = *(v0 + 64);

  return sub_2330AB958(v2);
}

uint64_t sub_2330AB2E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_2330AB868;
  }

  else
  {
    v7 = sub_2330AB458;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2330AB458()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  [*(v0 + 80) encryptedValues];
  swift_getObjectType();
  sub_2330F21C0();
  sub_2330F20B0();
  (*(v2 + 8))(v1, v3);
  sub_2330F2A30();
  swift_unknownObjectRelease();
  if (qword_2814EB0F8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDFD0, &qword_2330F5BD0);
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  *(v5 + 16) = xmmword_2330F4D50;
  *(v5 + 32) = v4;
  v6 = v4;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_2330AB628;
  v8 = MEMORY[0x277D84F90];

  return MEMORY[0x28210DE78](v5, v8, 0, 1);
}

uint64_t sub_2330AB628()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2330AB8D8;
  }

  else
  {

    v2 = sub_2330AB768;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2330AB768()
{
  v1 = *(v0 + 80);
  sub_233099620(0, &qword_2814EAC10, 0x277CCA9A0);
  v2 = [swift_getObjCClassFromMetadata() defaultCenter];
  v3 = sub_2330F25C0();
  [v2 postNotificationName:v3 object:0];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2330AB868()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2330AB8D8()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2330AB978()
{
  sub_233099620(0, &qword_2814EAC90, 0x277CBC5F8);
  sub_2330F25F0();
  sub_2330F2990();
  sub_233099620(0, &qword_27DDDDE80, 0x277CBC5D0);
  sub_2330F2280();
  v1 = sub_2330F2920();
  v0[20] = v1;
  if (qword_2814EB0F8 != -1)
  {
    swift_once();
  }

  v2 = qword_2814EB100;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2330ABB60;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDFE0, &qword_2330F4DD8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2330B8688;
  v0[13] = &block_descriptor_2;
  v0[14] = v3;
  [v2 fetchRecordWithID:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2330ABB60()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_2330ABCD8;
  }

  else
  {
    v2 = sub_2330ABC70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2330ABC70()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2330ABCD8()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t TVContentRequestCloudKitCoordinator.registerForPushNotifications()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330ABE00;

  return sub_2330B7964(0xD000000000000010, 0x80000002330F7DC0);
}

uint64_t sub_2330ABE00(void *a1)
{
  v4 = *v2;
  *(v4 + 24) = v1;

  if (!v1)
  {

    v5 = swift_task_alloc();
    *(v4 + 32) = v5;
    *v5 = v4;
    v5[1] = sub_2330ABFA8;

    JUMPOUT(0x2330B800CLL);
  }

  return MEMORY[0x2822009F8](sub_2330AC0BC, 0, 0);
}

uint64_t sub_2330ABFA8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_2330AC48C;
  }

  else
  {
    v4 = sub_2330AC2AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2330AC0BC()
{
  v14 = v0;
  v1 = *(v0 + 24);
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDE0);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2960();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_233098F44(0xD000000000000023, 0x80000002330F4D60, &v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_233084000, v4, v5, "%s failed to register for CloudKit subscription: %@", v6, 0x16u);
    sub_23309AE8C(v7);
    MEMORY[0x23839A490](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2330AC2AC()
{
  v15 = v0;
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDE0);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2980();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_233098F44(0xD000000000000023, 0x80000002330F4D60, &v14);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v7;
    *v9 = v7;
    v11 = v7;
    _os_log_impl(&dword_233084000, v4, v5, "%s registered CloudKit subscription %@", v8, 0x16u);
    sub_23309AE8C(v9);
    MEMORY[0x23839A490](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x23839A490](v10, -1, -1);
    MEMORY[0x23839A490](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2330AC48C()
{
  v14 = v0;
  v1 = *(v0 + 48);
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDE0);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2960();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_233098F44(0xD000000000000023, 0x80000002330F4D60, &v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_233084000, v4, v5, "%s failed to register for CloudKit subscription: %@", v6, 0x16u);
    sub_23309AE8C(v7);
    MEMORY[0x23839A490](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

void *sub_2330AC67C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2330AC724(a1, a2, a3, *v3, &qword_27DDDDEB8, &unk_2330F44B0, MEMORY[0x277D78490]);
  *v3 = result;
  return result;
}

void *sub_2330AC6C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2330AC724(a1, a2, a3, *v3, &qword_27DDDDFE8, &unk_2330F4DF0, MEMORY[0x277D783D0]);
  *v3 = result;
  return result;
}

char *sub_2330AC704(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2330AC900(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2330AC724(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2330AC900(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE880, &qword_2330F44A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t PushNotificationDispatch.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t PushNotificationDispatch.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t sub_2330ACAA4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 112);
  *(v4 + 112) = 0x8000000000000000;
  sub_2330AE604(&unk_2330F4BC8, v8, v7, isUniquelyReferenced_nonNull_native);
  *(v4 + 112) = v11;
  return swift_endAccess();
}

uint64_t sub_2330ACB70(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_2330877C8;

  return v5();
}

uint64_t sub_2330ACC58(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_beginAccess();
  v4 = sub_2330AD184(v3);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 112);
    v10 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2330AF158();
      v8 = v10;
    }

    sub_2330AE178(v6, v8);
    *(v2 + 112) = v8;
  }

  return swift_endAccess();
}

uint64_t sub_2330ACD08(_BYTE *a1)
{
  *(v2 + 40) = v1;
  *(v2 + 64) = *a1;
  return MEMORY[0x2822009F8](sub_2330ACD30, v1, 0);
}

uint64_t sub_2330ACD30()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_2330AD184(*(v0 + 64)), (v4 & 1) != 0))
  {
    v5 = *(v2 + 56) + 16 * v3;
    v6 = *v5;
    *(v0 + 48) = *(v5 + 8);

    v10 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_2330ACEC4;

    return v10();
  }

  else
  {
    sub_2330AF2BC();
    swift_allocError();
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_2330ACEC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t PushNotificationDispatch.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PushNotificationDispatch.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2330AD044(uint64_t a1)
{
  v2 = sub_2330F2E70();

  return sub_2330AEBC4(a1, v2);
}

unint64_t sub_2330AD088(uint64_t a1)
{
  sub_2330F2E80();
  type metadata accessor for CFString(0);
  sub_2330AF530();
  sub_2330F1F80();
  v2 = sub_2330F2EB0();

  return sub_2330AEC30(a1, v2);
}

unint64_t sub_2330AD10C(uint64_t a1, uint64_t a2)
{
  sub_2330F2E80();
  sub_2330F26A0();
  v4 = sub_2330F2EB0();

  return sub_2330AED0C(a1, a2, v4);
}

unint64_t sub_2330AD184(uint64_t a1)
{
  v1 = a1;
  sub_2330F2E80();
  MEMORY[0x238399C90](v1);
  v2 = sub_2330F2EB0();

  return sub_2330AEDC4(v1, v2);
}

unint64_t sub_2330AD1F0(uint64_t a1)
{
  v1 = a1;
  sub_2330F2E80();
  sub_2330F26A0();

  v2 = sub_2330F2EB0();

  return sub_2330AEE34(v1, v2);
}

unint64_t sub_2330AD274(uint64_t a1)
{
  v2 = sub_2330F2BA0();

  return sub_2330AEF20(a1, v2);
}

uint64_t sub_2330AD2B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE010, &qword_2330F4F60);
  v34 = v4;
  result = sub_2330F2CD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2330F2E80();
      sub_2330F26A0();
      result = sub_2330F2EB0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2330AD560(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE028, &unk_2330F4F78);
  result = sub_2330F2CD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_2330F2E80();
      MEMORY[0x238399C90](v20);
      result = sub_2330F2EB0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2330AD7F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE020, &qword_2330F4F70);
  result = sub_2330F2CD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + v20);
      v23 = (v21 + 24 * v20);
      v24 = v23[1];
      v36 = v23[2];
      v25 = *v23;
      sub_2330F2E80();
      sub_2330F26A0();

      result = sub_2330F2EB0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v25;
      v16[1] = v24;
      v5 = v35;
      v16[2] = v36;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2330ADAA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE008, &qword_2330F4F58);
  v35 = v4;
  result = sub_2330F2CD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2330F2E80();
      sub_2330F26A0();
      result = sub_2330F2EB0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2330ADD48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE018, &qword_2330F4F68);
  result = sub_2330F2CD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_233085FF8(v21, v31);
      }

      else
      {
        sub_233094AE0(v21, v31);
      }

      result = sub_2330F2E70();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_233085FF8(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2330ADFC8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2330F2B90() + 1) & ~v5;
    do
    {
      sub_2330F2E80();

      sub_2330F26A0();
      v9 = sub_2330F2EB0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2330AE178(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2330F2B90() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_2330F2E80();
      MEMORY[0x238399C90](v9);
      result = sub_2330F2EB0();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2330AE30C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2330F2B90() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = sub_2330F2E70();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v9 = *v19;
            v10 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v9;
            *(v18 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2330AE488(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2330AD10C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2330AD2B8(v16, a4 & 1);
      v11 = sub_2330AD10C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2330F2DF0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2330AEFE8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_2330AE604(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2330AD184(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2330AD560(v16, a4 & 1);
      result = sub_2330AD184(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2330F2DF0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2330AF158();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_2330AE764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_2330AD1F0(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a5 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 >= v18 && (a5 & 1) == 0)
  {
    v21 = result;
    sub_2330AF588();
    result = v21;
    goto LABEL_8;
  }

  sub_2330AD7F0(v18, a5 & 1);
  result = sub_2330AD1F0(a4);
  if ((v19 & 1) == (v22 & 1))
  {
LABEL_8:
    v23 = *v6;
    if (v19)
    {
      v24 = (v23[7] + 24 * result);
      *v24 = a1;
      v24[1] = a2;
      v24[2] = a3;
      return result;
    }

    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + result) = a4;
    v25 = (v23[7] + 24 * result);
    *v25 = a1;
    v25[1] = a2;
    v25[2] = a3;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_2330F2DF0();
  __break(1u);
  return result;
}

uint64_t sub_2330AE8B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2330AD10C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2330ADAA4(v16, a4 & 1);
      v11 = sub_2330AD10C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2330F2DF0();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2330AF6EC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_2330AEA28(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2330AD044(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_2330AF908();
      v9 = v17;
      goto LABEL_8;
    }

    sub_2330ADD48(v14, a3 & 1);
    v9 = sub_2330AD044(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_2330F2DF0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    return sub_233085FF8(a1, v20);
  }

  else
  {

    return sub_2330AEB58(v9, a2, a1, v19);
  }
}

uint64_t sub_2330AEB58(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_233085FF8(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_2330AEBC4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2330AEC30(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_2330AF530();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2330F1F70();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2330AED0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2330F2DC0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2330AEDC4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2330AEE34(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = qword_2330F4F88[a1];
    while (qword_2330F4F88[*(*(v2 + 48) + v4)] != v6)
    {
      v7 = sub_2330F2DC0();
      swift_bridgeObjectRelease_n();
      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_2330AEF20(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2330AF858(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2383999B0](v9, a1);
      sub_2330AF8B4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_2330AEFE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE010, &qword_2330F4F60);
  v2 = *v0;
  v3 = sub_2330F2CC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2330AF158()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE028, &unk_2330F4F78);
  v2 = *v0;
  v3 = sub_2330F2CC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_2330AF2BC()
{
  result = qword_27DDDDFF0;
  if (!qword_27DDDDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDDFF0);
  }

  return result;
}

uint64_t dispatch thunk of PushNotificationDispatch.dispatch(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2330877C8;

  return v6(a1);
}

unint64_t sub_2330AF4DC()
{
  result = qword_27DDDDFF8;
  if (!qword_27DDDDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDDFF8);
  }

  return result;
}

unint64_t sub_2330AF530()
{
  result = qword_27DDDE000;
  if (!qword_27DDDE000)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE000);
  }

  return result;
}

void *sub_2330AF588()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE020, &qword_2330F4F70);
  v2 = *v0;
  v3 = sub_2330F2CC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *(v17 + 16);
      v19 = *v17;
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v20 = *(v4 + 56) + 24 * v14;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2330AF6EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE008, &qword_2330F4F58);
  v2 = *v0;
  v3 = sub_2330F2CC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2330AF908()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE018, &qword_2330F4F68);
  v2 = *v0;
  v3 = sub_2330F2CC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_233094AE0(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_233085FF8(v19, *(v4 + 56) + 40 * v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t ManateeState.description.getter()
{
  v1 = 0x6C62616C69617661;
  if (*v0 != 1)
  {
    v1 = 0x616C696176616E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t ManateeState.hashValue.getter()
{
  v1 = *v0;
  sub_2330F2E80();
  MEMORY[0x238399C90](v1);
  return sub_2330F2EB0();
}

unint64_t sub_2330AFB7C()
{
  result = qword_27DDDE030;
  if (!qword_27DDDE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE030);
  }

  return result;
}

uint64_t sub_2330AFBD0()
{
  v1 = 0x6C62616C69617661;
  if (*v0 != 1)
  {
    v1 = 0x616C696176616E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t static AnalyticsCoordinator.submitEvent(_:payload:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return sub_2330AFFFC(v5, a2, v3, v4);
}

unint64_t sub_2330AFC9C(char a1)
{
  sub_2330F2C00();

  if (a1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (a1)
  {
    v3 = "VisionProAppInstalled";
  }

  else
  {
    v3 = "com.apple.visionproapp";
  }

  MEMORY[0x2383994D0](v2, v3 | 0x8000000000000000);

  return 0xD00000000000001BLL;
}

uint64_t sub_2330AFD40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = "com.apple.visionproapp";
  }

  else
  {
    v4 = "VisionProAppInstalled";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (*a2)
  {
    v7 = "VisionProAppInstalled";
  }

  else
  {
    v7 = "com.apple.visionproapp";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2330F2DC0();
  }

  return v9 & 1;
}

uint64_t sub_2330AFDEC()
{
  sub_2330F2E80();
  sub_2330F26A0();

  return sub_2330F2EB0();
}

uint64_t sub_2330AFE6C(uint64_t a1)
{
  sub_2330F26A0();
}

uint64_t sub_2330AFED8()
{
  sub_2330F2E80();
  sub_2330F26A0();

  return sub_2330F2EB0();
}

uint64_t sub_2330AFF54@<X0>(char *a2@<X8>)
{
  v3 = sub_2330F2D10();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2330AFFB4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (*v1)
  {
    v3 = "VisionProAppInstalled";
  }

  else
  {
    v3 = "com.apple.visionproapp";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_2330AFFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[3] = a3;
  v32[4] = a4;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v32);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0Tm, a1, a3);
  if (qword_27DDDDBC8 != -1)
  {
    swift_once();
  }

  v9 = sub_2330F23C0();
  __swift_project_value_buffer(v9, qword_27DDE1890);
  sub_233094AE0(v32, aBlock);

  v10 = sub_2330F23A0();
  v11 = sub_2330F2980();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v12 = 136315394;
    __swift_project_boxed_opaque_existential_1(aBlock, v29);
    v13 = *(a4 + 8);
    v14 = v13(a3, a4);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v17 = sub_233098F44(v14, v16, &v27);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    if (a2)
    {
      sub_2330B03A8();
      v18 = sub_2330F2540();
      v20 = v19;
    }

    else
    {
      v20 = 0xE300000000000000;
      v18 = 7104878;
    }

    v21 = sub_233098F44(v18, v20, &v27);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_233084000, v10, v11, "Submit event: %s, payload: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v26, -1, -1);
    MEMORY[0x23839A490](v12, -1, -1);

    v13(a3, a4);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    (*(a4 + 8))(a3, a4);
  }

  v22 = sub_2330F25C0();

  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  v30 = sub_2330B0388;
  v31 = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2330C7348;
  v29 = &block_descriptor_3;
  v24 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v24);

  return __swift_destroy_boxed_opaque_existential_1Tm(v32);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2330B03A8()
{
  result = qword_27DDDE038;
  if (!qword_27DDDE038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDDE038);
  }

  return result;
}

unint64_t sub_2330B0408()
{
  result = qword_27DDDE040;
  if (!qword_27DDDE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE040);
  }

  return result;
}

uint64_t sub_2330B045C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v27 = a1;
  v5 = sub_2330F29C0();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2330F29B0();
  MEMORY[0x28223BE20](v8, v9);
  v10 = sub_2330F24F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814EAC70 != -1)
  {
    swift_once();
  }

  v16 = qword_2814EAC78;
  v15 = unk_2814EAC80;
  v17 = sub_2330DC48C(a2, a3);
  v19 = v18;

  v28 = v16;
  v29 = v15;

  MEMORY[0x2383994D0](v17, v19);

  MEMORY[0x2383994D0](0x65756575712ELL, 0xE600000000000000);

  v20 = v27;
  (*(v11 + 16))(v14, v27, v10);
  v28 = MEMORY[0x277D84F90];
  sub_2330B07D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE048, &qword_2330F51B8);
  sub_2330B0828();
  sub_2330F2B80();
  (*(v25 + 104))(v24, *MEMORY[0x277D85260], v26);
  v21 = sub_2330F29E0();
  (*(v11 + 8))(v20, v10);
  return v21;
}

uint64_t sub_2330B0770()
{
  v2 = sub_2330F2220();
  v3 = v0;

  MEMORY[0x2383994D0](46, 0xE100000000000000);

  qword_2814EAC78 = v2;
  unk_2814EAC80 = v3;
  return result;
}

unint64_t sub_2330B07D0()
{
  result = qword_2814EAC68;
  if (!qword_2814EAC68)
  {
    sub_2330F29B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814EAC68);
  }

  return result;
}

unint64_t sub_2330B0828()
{
  result = qword_2814EACD8;
  if (!qword_2814EACD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDDE048, &qword_2330F51B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814EACD8);
  }

  return result;
}

uint64_t sub_2330B088C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2330F2340();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = [a1 serialNumber];
  if (v6)
  {
    v7 = v6;
    sub_2330F25F0();

    v8 = [a1 buildNumber];
    if (v8)
    {
      v9 = v8;
      sub_2330F25F0();

      v10 = [a1 model];
      if (v10)
      {
        v11 = v10;
        sub_2330F25F0();

        v12 = [a1 operatingSystemVersion];
        if (v12)
        {
          v13 = v12;
          sub_2330F25F0();

          v14 = [a1 name];
          if (v14)
          {
            v15 = v14;
            sub_2330F25F0();
          }

          sub_2330F2310();
          sub_2330F22E0();

          v27 = sub_2330F2370();
          return (*(*(v27 - 8) + 56))(a2, 0, 1, v27);
        }
      }
    }
  }

  if (qword_2814EAD80 != -1)
  {
    swift_once();
  }

  v16 = sub_2330F23C0();
  __swift_project_value_buffer(v16, qword_2814EBD80);
  v17 = a1;
  v18 = sub_2330F23A0();
  v19 = sub_2330F2960();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v20 = 136315394;
    *(v20 + 4) = sub_233098F44(0x656369766544, 0xE600000000000000, &v28);
    *(v20 + 12) = 2112;
    *(v20 + 14) = v17;
    *v21 = v17;
    v23 = v17;
    _os_log_impl(&dword_233084000, v18, v19, "%s found invalid AKRemoteDevice: %@", v20, 0x16u);
    sub_23309AE8C(v21);
    MEMORY[0x23839A490](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x23839A490](v22, -1, -1);
    MEMORY[0x23839A490](v20, -1, -1);
  }

  else
  {
  }

  v24 = sub_2330F2370();
  v25 = *(*(v24 - 8) + 56);

  return v25(a2, 1, 1, v24);
}

uint64_t sub_2330B0CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_2330F2340();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v78 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v77 = &v69 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v69 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v69 - v16;
  v18 = sub_2330F2370();
  v85 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v69 - v24;
  v75 = a1;
  sub_2330F2350();
  sub_2330F2300();
  v26 = sub_2330B159C(&qword_27DDDDF88, MEMORY[0x277D78478]);
  LOBYTE(a1) = sub_2330F2B60();
  v79 = v4;
  v29 = *(v4 + 8);
  v28 = v4 + 8;
  v27 = v29;
  v29(v14, v3);
  v29(v17, v3);
  v80 = v22;
  v82 = v25;
  v83 = v26;
  v84 = v18;
  if (a1)
  {
    v30 = v25;
    v32 = v74;
    v31 = v75;
    v33 = v18;
    v34 = *(v85 + 16);
    v34(v30, v75, v33);
  }

  else
  {
    v35 = v74;
    sub_2330F2350();
    sub_2330F2300();
    v36 = sub_2330F2B60();
    v27(v14, v3);
    v27(v17, v3);
    v34 = *(v85 + 16);
    v32 = v35;
    if (v36)
    {
      v34(v82, v35, v84);
      v31 = v75;
    }

    else
    {
      v31 = v75;
      v34(v82, v75, v84);
    }
  }

  sub_2330F2350();
  sub_2330F2300();
  v37 = sub_2330F2B60();
  v27(v14, v3);
  v27(v17, v3);
  v76 = v27;
  if ((v37 & 1) == 0)
  {
    v38 = sub_2330F2360();
    v40 = sub_2330B3168(v38, v39);
    v74 = v41;
    v75 = v40;
    v73 = v42;
    v44 = v43;

    LODWORD(v72) = v44;
    if ((v44 & 0x100) == 0)
    {
      v45 = sub_2330F2360();
      v47 = sub_2330B3168(v45, v46);
      v70 = v48;
      v71 = v47;
      v69 = v49;
      v51 = v50;

      if ((v51 & 0x100) == 0)
      {
        v52 = v71 < v75;
        if (v71 == v75 && (v52 = v70 < v74, v70 == v74))
        {
          v53 = v84;
          if ((v51 & 1) == 0 && v72 & 1 | (v69 >= v73))
          {
            goto LABEL_13;
          }
        }

        else
        {
          v53 = v84;
          if (!v52)
          {
LABEL_13:
            v54 = v80;
            v55 = v80;
            v56 = v32;
LABEL_19:
            v34(v55, v56, v53);
            v57 = v82;
            goto LABEL_15;
          }
        }

        v54 = v80;
        v55 = v80;
        v56 = v31;
        goto LABEL_19;
      }
    }
  }

  v54 = v80;
  v57 = v82;
  v34(v80, v82, v84);
LABEL_15:
  sub_2330F2350();
  v58 = v77;
  sub_2330F2350();
  sub_2330B159C(&qword_27DDDE050, MEMORY[0x277D78470]);
  sub_2330F27A0();
  sub_2330B159C(&qword_27DDDE058, MEMORY[0x277D78480]);
  sub_2330F2F20();
  v79 = *(v79 + 16);
  (v79)(v78, v58, v3);
  sub_2330F2B70();
  v59 = v76;
  v76(v58, v3);
  v59(v14, v3);
  v83 = sub_2330F22F0();
  v78 = v60;
  v77 = sub_2330F22D0();
  v75 = v61;
  v62 = sub_2330F22A0();
  v72 = v63;
  v73 = v62;
  v64 = sub_2330F22C0();
  v70 = v65;
  v71 = v64;
  v74 = v28;
  sub_2330F22B0();
  sub_2330F2360();
  (v79)(v14, v17, v3);
  sub_2330F22E0();
  v59(v17, v3);
  v66 = v84;
  v67 = *(v85 + 8);
  v67(v54, v84);
  return (v67)(v57, v66);
}

void sub_2330B130C()
{
  v0 = sub_2330F2340();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = MobileGestalt_copy_userAssignedDeviceName_obj();

  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_2330F25F0();

  v5 = MobileGestalt_get_current_device();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  v7 = MobileGestalt_copy_serialNumber_obj();

  if (!v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_2330F25F0();

  v8 = MobileGestalt_get_current_device();
  if (!v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  v10 = MobileGestalt_copy_buildVersion_obj();

  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_2330F25F0();

  v11 = MobileGestalt_get_current_device();
  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = v11;
  v13 = MobileGestalt_copy_productType_obj();

  if (!v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_2330F25F0();

  v14 = MobileGestalt_get_current_device();
  if (!v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = v14;
  v16 = MobileGestalt_copy_marketingNameString_obj();

  if (!v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_2330F25F0();

  v17 = MobileGestalt_get_current_device();
  if (!v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = v17;
  v19 = MobileGestalt_copy_humanReadableProductVersionString_obj();

  if (v19)
  {
    sub_2330F25F0();

    sub_2330F2300();
    sub_2330F22E0();
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_2330B159C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2330F2340();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2330B15E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE130, &qword_2330F5318);
  __swift_allocate_value_buffer(v0, qword_27DDDE060);
  __swift_project_value_buffer(v0, qword_27DDDE060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE150, &unk_2330F5370);
  return sub_2330F1FB0();
}

uint64_t sub_2330B1670()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE0B0, &qword_2330F51C8);
  __swift_allocate_value_buffer(v0, qword_27DDDE078);
  __swift_project_value_buffer(v0, qword_27DDDE078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE0B8, &qword_2330F51D0);
  return sub_2330F1FB0();
}

uint64_t sub_2330B1700()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE0D0, "dH");
  __swift_allocate_value_buffer(v0, qword_27DDDE090);
  __swift_project_value_buffer(v0, qword_27DDDE090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE0F0, &qword_2330F52E0);
  return sub_2330F1FB0();
}

uint64_t sub_2330B1790@<X0>(uint64_t a3@<X8>)
{
  v21 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE130, &qword_2330F5318);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE138, &qword_2330F5320);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE140, &qword_2330F5328);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v21 - v15;
  if (qword_27DDDDBA8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_27DDDE060);
  sub_2330B3ED8(&qword_27DDDE148, &qword_27DDDE130, &qword_2330F5318);
  sub_2330F1FA0();
  sub_2330F2780();
  sub_2330F1FC0();
  (*(v4 + 8))(v7, v3);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2330952BC(v11, &qword_27DDDE138, &qword_2330F5320);
    v17 = 1;
    v18 = v21;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    swift_getKeyPath();
    sub_2330F1FD0();

    MEMORY[0x238399480](v22, v23, v24, v25);

    swift_getKeyPath();
    sub_2330F1FD0();

    MEMORY[0x238399480](v22, v23, v24, v25);

    v18 = v21;
    sub_2330F2240();
    (*(v13 + 8))(v16, v12);
    v17 = 0;
  }

  v19 = sub_2330F2290();
  return (*(*(v19 - 8) + 56))(v18, v17, 1, v19);
}

unint64_t static RegexUtilities.extractJoeColors(from:)(unint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE0A8, &qword_2330F51C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v54 - v7;
  v66 = a1;
  v67 = a2;
  if (qword_27DDDDBB0 != -1)
  {
    swift_once();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE0B0, &qword_2330F51C8);
  __swift_project_value_buffer(v9, qword_27DDDE078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE0B8, &qword_2330F51D0);
  sub_2330B215C();
  sub_2330B3ED8(&qword_27DDDE0C8, &qword_27DDDE0B0, &qword_2330F51C8);
  v10 = sub_2330F2560();
  v11 = sub_2330B3934(MEMORY[0x277D84F90]);
  v12 = v10;
  v13 = *(v10 + 16);
  if (!v13)
  {

    return v11;
  }

  v56 = v11;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v54 = v12;
  v17 = v12 + ((v16 + 32) & ~v16);
  v62 = (v14 - 8);
  v63 = v15;
  v18 = *(v14 + 56);
  v60 = v4;
  v61 = v18;
  v59 = v14;
  do
  {
    v63(v8, v17, v4);
    swift_getKeyPath();
    sub_2330F1FD0();

    MEMORY[0x238399480](v66, v67, v68, v69);

    sub_2330F2660();

    v19 = sub_2330F2D10();

    if (v19 > 4)
    {
      goto LABEL_25;
    }

    swift_getKeyPath();
    sub_2330F1FD0();

    v20 = v66;
    v21 = v67;
    v22 = v69;
    if (!((v67 ^ v66) >> 14))
    {
      goto LABEL_30;
    }

    v23 = v68;
    if ((v69 & 0x1000000000000000) != 0)
    {
      v25 = sub_2330B2224(v66, v67, v68, v69, 10);
      v27 = v49;
    }

    else
    {
      if ((v69 & 0x2000000000000000) != 0)
      {
        v64[0] = v68;
        v64[1] = v69 & 0xFFFFFFFFFFFFFFLL;
        v24 = v64;
      }

      else if ((v68 & 0x1000000000000000) != 0)
      {
        v24 = ((v69 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v50 = v66;
        v51 = v67;
        v52 = v68;
        v24 = sub_2330F2C30();
        v23 = v52;
        v20 = v50;
        v21 = v51;
      }

      v25 = sub_2330B2CFC(v24, v20, v21, v23, v22, 10);
      v65 = v26 & 1;
      v27 = v26 & 1;
    }

    if (v27)
    {
      goto LABEL_25;
    }

    v58 = v25;
    swift_getKeyPath();
    sub_2330F1FD0();

    v28 = v66;
    v29 = v67;
    v30 = v69;
    if (!((v67 ^ v66) >> 14))
    {
LABEL_30:

      goto LABEL_25;
    }

    v31 = v68;
    v32 = sub_2330B2C30(v66, v67, v68, v69, 10);
    if ((v33 & 0x100) != 0)
    {
      v57 = sub_2330B2224(v28, v29, v31, v30, 10);
      v36 = v35;

      if (v36)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v34 = v33;
      v57 = v32;

      if (v34)
      {
        v4 = v60;
        goto LABEL_25;
      }
    }

    swift_getKeyPath();
    sub_2330F1FD0();

    v37 = v66;
    v38 = v67;
    v39 = v69;
    if (!((v67 ^ v66) >> 14))
    {

LABEL_24:
      v4 = v60;
LABEL_25:
      (*v62)(v8, v4);
      goto LABEL_26;
    }

    v40 = v68;
    v41 = sub_2330B2C30(v66, v67, v68, v69, 10);
    if ((v42 & 0x100) != 0)
    {
      v55 = sub_2330B2224(v37, v38, v40, v39, 10);
      v46 = v45;

      v44 = v58;
      if (v46)
      {
        goto LABEL_24;
      }

      v4 = v60;
    }

    else
    {
      v43 = v42;
      v55 = v41;

      v4 = v60;
      if (v43)
      {
        goto LABEL_25;
      }

      v44 = v58;
    }

    v47 = v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v47;
    sub_2330AE764(v44, v57, v55, v19, isUniquelyReferenced_nonNull_native);
    (*v62)(v8, v4);
    v56 = v66;
LABEL_26:
    v17 += v61;
    --v13;
  }

  while (v13);

  return v56;
}

unint64_t sub_2330B215C()
{
  result = qword_27DDDE0C0;
  if (!qword_27DDDE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE0C0);
  }

  return result;
}

void *sub_2330B21B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDEB0, &qword_2330F44A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_2330B2224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_2330B3E84();

  result = sub_2330F2770();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_2330B27BC(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2330F2C30();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2330B27BC(uint64_t a1, unint64_t a2)
{
  v2 = sub_2330F2780();
  v6 = sub_2330B283C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2330B283C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2330F2AF0();
    if (!v9 || (v10 = v9, v11 = sub_2330B21B0(v9, 0), v12 = sub_2330B2994(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2330F2690();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2330F2690();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2330F2C30();
LABEL_4:

  return sub_2330F2690();
}

unint64_t sub_2330B2994(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2330B2BB4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2330F2730();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2330F2C30();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2330B2BB4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2330F2700();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_2330B2BB4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2330F2740();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x238399510](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2330B2C30(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_2330F2C30();
  }

  result = sub_2330B2CFC(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_2330B2CFC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_2330B2BB4(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_2330F2720();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_2330B2BB4(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_2330B2BB4(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_2330F2720();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

unsigned __int8 *sub_2330B3168(uint64_t a1, unint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE0D0, "dH");
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE0D8, &qword_2330F5270);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE0E0, &qword_2330F5278);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v39 - v14;
  if (qword_27DDDDBB8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27DDDE090);
  sub_2330B3ED8(&qword_27DDDE0E8, &qword_27DDDE0D0, "dH");
  sub_2330F1FA0();
  sub_2330F2780();
  sub_2330F1FC0();
  (*(v3 + 8))(v6, v2);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2330952BC(v10, &qword_27DDDE0D8, &qword_2330F5270);
    return 0;
  }

  (*(v12 + 32))(v15, v10, v11);
  swift_getKeyPath();
  sub_2330F1FD0();

  v17 = v41;
  v18 = v42;
  v19 = v44;
  if (!((v42 ^ v41) >> 14))
  {
    goto LABEL_21;
  }

  v20 = v43;
  v21 = sub_2330B2C30(v41, v42, v43, v44, 10);
  if ((v22 & 0x100) != 0)
  {
    v40 = sub_2330B2224(v17, v18, v20, v19, 10);
    v25 = v24;

    if (v25)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v23 = v22;
    v40 = v21;

    if (v23)
    {
      goto LABEL_16;
    }
  }

  swift_getKeyPath();
  sub_2330F1FD0();

  v26 = v41;
  v27 = v42;
  v28 = v44;
  if (!((v42 ^ v41) >> 14))
  {
LABEL_21:

    goto LABEL_16;
  }

  v29 = v43;
  sub_2330B2C30(v41, v42, v43, v44, 10);
  if ((v30 & 0x100) == 0)
  {
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    (*(v12 + 8))(v15, v11);
    return 0;
  }

  sub_2330B2224(v26, v27, v29, v28, 10);
  v33 = v32;

  if (v33)
  {
    goto LABEL_16;
  }

LABEL_17:
  swift_getKeyPath();
  sub_2330F1FD0();

  v34 = v41;
  v35 = v42;
  v36 = v44;
  if ((v42 ^ v41) >> 14)
  {
    v37 = v43;
    sub_2330B2C30(v41, v42, v43, v44, 10);
    if ((v38 & 0x100) != 0)
    {
      sub_2330B2224(v34, v35, v37, v36, 10);
    }
  }

  (*(v12 + 8))(v15, v11);

  return v40;
}

unint64_t sub_2330B36F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE108, &qword_2330F52F8);
    v3 = sub_2330F2CE0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2330AD10C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2330B380C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE0F8, &qword_2330F52E8);
    v3 = sub_2330F2CE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2330B3E1C(v4, &v11, &qword_27DDDE100, &qword_2330F52F0);
      v5 = v11;
      result = sub_2330AD088(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2330B3AAC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2330B3934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE020, &qword_2330F4F70);
    v3 = sub_2330F2CE0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_2330AD1F0(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = (v3[7] + 24 * result);
      *v11 = v6;
      v11[1] = v7;
      v11[2] = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
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

_OWORD *sub_2330B3AAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2330B3ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE008, &qword_2330F4F58);
    v3 = sub_2330F2CE0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2330AD10C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2330B3BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE018, &qword_2330F4F68);
    v3 = sub_2330F2CE0();
    for (i = a1 + 32; ; i += 48)
    {
      sub_2330B3E1C(i, &v11, &qword_27DDDE120, &qword_2330F5310);
      v5 = v11;
      result = sub_2330AD044(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_233085FF8(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2330B3CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE110, &qword_2330F5300);
    v3 = sub_2330F2CE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2330B3E1C(v4, v13, &qword_27DDDE118, &qword_2330F5308);
      result = sub_2330AD274(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2330B3AAC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2330B3E1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2330B3E84()
{
  result = qword_27DDDE128;
  if (!qword_27DDDE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE128);
  }

  return result;
}

uint64_t sub_2330B3ED8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2330B3F2C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2330B3FE0;
  v6[3] = &block_descriptor_4;
  v4 = _Block_copy(v6);

  [v3 registerAccountChangeEventHandler_];
  _Block_release(v4);
}

void sub_2330B3FE0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t SoftwareUpdateInfo.serialNumber.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SoftwareUpdateInfo.publisher.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SoftwareUpdateInfo.updateName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SoftwareUpdateInfo.osName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SoftwareUpdateInfo.productVersion.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SoftwareUpdateInfo.productBuildVersion.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t SoftwareUpdateInfo.targetVersion.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t SoftwareUpdateInfo.downloadSize.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t SoftwareUpdateInfo.iconImageData.getter()
{
  v1 = *(v0 + 128);
  sub_2330B4224(v1, *(v0 + 136));
  return v1;
}

uint64_t sub_2330B4224(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2330B4238(a1, a2);
  }

  return a1;
}

uint64_t sub_2330B4238(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t SoftwareUpdateInfo.summary.getter()
{
  v1 = *(v0 + 144);
  sub_2330B4224(v1, *(v0 + 152));
  return v1;
}

uint64_t SoftwareUpdateInfo.releaseNotes.getter()
{
  v1 = *(v0 + 160);
  sub_2330B4224(v1, *(v0 + 168));
  return v1;
}

__n128 SoftwareUpdateInfo.init(serialNumber:publisher:updateName:osName:productVersion:productBuildVersion:targetVersion:downloadSize:iconImageData:summary:releaseNotes:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __n128 a15, uint64_t a16, uint64_t a17)
{
  result = a15;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 168) = a17;
  return result;
}

void sub_2330B4328(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = [a1 publisher];
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = sub_2330F25F0();
  v16 = v15;

  v17 = [a1 humanReadableUpdateName];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = sub_2330F25F0();
  v72 = v20;

  v21 = [a1 productSystemName];
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v21;
  v71 = sub_2330F25F0();
  v70 = v23;

  v24 = [a1 productVersion];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = sub_2330F25F0();
  v68 = v27;
  v69 = v26;

  v28 = [a1 productBuildVersion];
  if (!v28)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = sub_2330F25F0();
  v66 = v31;
  v67 = v30;

  v32 = objc_opt_self();
  v33 = [a1 downloadSize];
  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v61 = v19;
  v62 = v16;
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v34 = [v32 stringFromByteCount:v33 countStyle:0];
  v35 = sub_2330F25F0();
  v59 = v36;
  v60 = v35;

  v37 = [a1 documentation];
  v38 = [v37 iconImage];

  updated = _s15VisionCompanion23SoftwareUpdateUtilitiesV15dataFromUIImagey10Foundation4DataVSgSo0H0CSgFZ_0(v38);
  v41 = v40;
  v42 = [a1 documentation];
  v58 = v14;
  if (v42 && (v43 = v42, v44 = [v42 releaseNotesSummary], v43, v44))
  {
    v45 = sub_2330F1E00();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0xF000000000000000;
  }

  v48 = [a1 documentation];
  if (v48)
  {
    v57 = v45;
    v49 = v41;
    v50 = updated;
    v51 = a5;
    v52 = v48;
    v53 = [v48 releaseNotes];

    if (v53)
    {
      v54 = sub_2330F1E00();
      v56 = v55;
    }

    else
    {

      v54 = 0;
      v56 = 0xF000000000000000;
    }

    a5 = v51;
    updated = v50;
    v41 = v49;
    v45 = v57;
  }

  else
  {

    v54 = 0;
    v56 = 0xF000000000000000;
  }

  *a6 = v63;
  a6[1] = v64;
  a6[2] = v58;
  a6[3] = v62;
  a6[4] = v61;
  a6[5] = v72;
  a6[6] = v71;
  a6[7] = v70;
  a6[8] = v69;
  a6[9] = v68;
  a6[10] = v67;
  a6[11] = v66;
  a6[12] = v65;
  a6[13] = a5;
  a6[14] = v60;
  a6[15] = v59;
  a6[16] = updated;
  a6[17] = v41;
  a6[18] = v45;
  a6[19] = v47;
  a6[20] = v54;
  a6[21] = v56;
}

uint64_t sub_2330B4678@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 80);
  a1[1] = v2;
}

uint64_t sub_2330B4688@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2330F1CA0();
    if (v10)
    {
      v11 = sub_2330F1CC0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2330F1CB0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2330F1CA0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2330F1CC0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2330F1CB0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2330B48B8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2330B4A48(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2330B52A8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2330B4688(v13, a3, a4, &v12);
  v10 = v4;
  sub_2330B52A8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_2330B4A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2330F1CA0();
  v11 = result;
  if (result)
  {
    result = sub_2330F1CC0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2330F1CB0();
  sub_2330B4688(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2330B4B00(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2330B4238(a3, a4);
          return sub_2330B48B8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s15VisionCompanion18SoftwareUpdateInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v49 = a1[7];
  v50 = a1[6];
  v47 = a1[9];
  v48 = a1[8];
  v43 = a1[11];
  v44 = a1[10];
  v39 = a1[13];
  v40 = a1[12];
  v35 = a1[15];
  v36 = a1[14];
  v29 = a1[16];
  v30 = a1[17];
  v25 = a1[18];
  v26 = a1[19];
  v22 = a1[20];
  v23 = a1[21];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v45 = a2[9];
  v46 = a2[8];
  v42 = a2[10];
  v41 = a2[11];
  v37 = a2[13];
  v38 = a2[12];
  v33 = a2[15];
  v34 = a2[14];
  v27 = a2[16];
  v28 = a2[17];
  v24 = a2[18];
  v21 = a2[20];
  v31 = a2[19];
  v32 = a2[21];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2330F2DC0() & 1) == 0 || (v2 != v7 || v4 != v6) && (sub_2330F2DC0() & 1) == 0 || (v3 != v9 || v5 != v8) && (sub_2330F2DC0() & 1) == 0 || (v50 != v10 || v49 != v11) && (sub_2330F2DC0() & 1) == 0 || (v48 != v46 || v47 != v45) && (sub_2330F2DC0() & 1) == 0 || (v44 != v42 || v43 != v41) && (sub_2330F2DC0() & 1) == 0 || (v40 != v38 || v39 != v37) && (sub_2330F2DC0() & 1) == 0 || (v36 != v34 || v35 != v33) && (sub_2330F2DC0() & 1) == 0)
  {
    return 0;
  }

  if (v30 >> 60 == 15)
  {
    v12 = v28;
    v14 = v31;
    v13 = v32;
    if (v28 >> 60 == 15)
    {
      sub_2330B4224(v29, v30);
      sub_2330B4224(v27, v28);
      sub_2330B5294(v29, v30);
      goto LABEL_31;
    }

LABEL_29:
    sub_2330B4224(v29, v30);
    sub_2330B4224(v27, v12);
    sub_2330B5294(v29, v30);
    v15 = v27;
    v16 = v12;
LABEL_42:
    sub_2330B5294(v15, v16);
    return 0;
  }

  v12 = v28;
  v14 = v31;
  v13 = v32;
  if (v28 >> 60 == 15)
  {
    goto LABEL_29;
  }

  sub_2330B4224(v29, v30);
  sub_2330B4224(v27, v28);
  v17 = sub_2330B4B00(v29, v30, v27, v28);
  sub_2330B5294(v27, v28);
  sub_2330B5294(v29, v30);
  if (!v17)
  {
    return 0;
  }

LABEL_31:
  if (v26 >> 60 == 15)
  {
    if (v14 >> 60 == 15)
    {
      sub_2330B4224(v25, v26);
      sub_2330B4224(v24, v14);
      sub_2330B5294(v25, v26);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (v14 >> 60 == 15)
  {
LABEL_35:
    sub_2330B4224(v25, v26);
    sub_2330B4224(v24, v14);
    sub_2330B5294(v25, v26);
    v15 = v24;
    v16 = v14;
    goto LABEL_42;
  }

  sub_2330B4224(v25, v26);
  sub_2330B4224(v24, v14);
  v18 = sub_2330B4B00(v25, v26, v24, v14);
  sub_2330B5294(v24, v14);
  sub_2330B5294(v25, v26);
  if (!v18)
  {
    return 0;
  }

LABEL_37:
  if (v23 >> 60 == 15)
  {
    if (v13 >> 60 == 15)
    {
      sub_2330B4224(v22, v23);
      sub_2330B4224(v21, v13);
      sub_2330B5294(v22, v23);
      return 1;
    }

    goto LABEL_41;
  }

  if (v13 >> 60 == 15)
  {
LABEL_41:
    sub_2330B4224(v22, v23);
    sub_2330B4224(v21, v13);
    sub_2330B5294(v22, v23);
    v15 = v21;
    v16 = v13;
    goto LABEL_42;
  }

  sub_2330B4224(v22, v23);
  sub_2330B4224(v21, v13);
  v20 = sub_2330B4B00(v22, v23, v21, v13);
  sub_2330B5294(v21, v13);
  sub_2330B5294(v22, v23);
  return v20;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_2330B51D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2330B5218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2330B5294(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2330B52A8(result, a2);
  }

  return result;
}

uint64_t sub_2330B52A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t static SoftwareUpdateUtilities.uiImageFromData(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    v2 = sub_2330F23C0();
    __swift_project_value_buffer(v2, qword_27DDE18D8);
    v3 = sub_2330F23A0();
    v4 = sub_2330F2980();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v17 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F5670, &v17);
      _os_log_impl(&dword_233084000, v3, v4, "%s uiImageFromData: descriptor doesnt have an icon", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x23839A490](v6, -1, -1);
      MEMORY[0x23839A490](v5, -1, -1);
    }

    return 0;
  }

  sub_233099620(0, &qword_27DDDE158, 0x277CCAAC8);
  sub_233099620(0, &qword_27DDDE160, 0x277D755B8);
  sub_2330B4238(a1, a2);
  v9 = sub_2330F29A0();
  if (!v9)
  {
    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    v10 = sub_2330F23C0();
    __swift_project_value_buffer(v10, qword_27DDE18D8);
    v11 = sub_2330F23A0();
    v12 = sub_2330F2960();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F5670, &v17);
      _os_log_impl(&dword_233084000, v11, v12, "%s uiImageFromData returned nil", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x23839A490](v14, -1, -1);
      MEMORY[0x23839A490](v13, -1, -1);
    }

    sub_2330B5294(a1, a2);

    return 0;
  }

  v16 = v9;
  sub_2330B5294(a1, a2);
  return v16;
}

uint64_t static SoftwareUpdateUtilities.stringFromData(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_2330F2640();
  MEMORY[0x28223BE20](v4 - 8, v5);
  result = 0;
  if (a2 >> 60 != 15)
  {
    sub_2330B4238(a1, a2);
    sub_2330F2630();
    sub_2330B60C4();
    v7 = sub_2330F2610();
    sub_2330B5294(a1, a2);
    return v7;
  }

  return result;
}

void static SoftwareUpdateUtilities.highestVersionDevice(from:)(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE78, &qword_2330F4AF0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v62 - v10;
  v12 = sub_2330F2370();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v72 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v62 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v62 - v23;
  isa = a1[2].isa;
  v73 = v22;
  if (!isa)
  {
    v13[7](a2, 1, 1, v12);
LABEL_5:
    if (qword_27DDDDBE0 != -1)
    {
      goto LABEL_28;
    }

    goto LABEL_6;
  }

  v63 = a2;
  v64 = v8;
  v65 = v11;
  v66 = a1;
  v67 = v13;
  v27 = v13[2];
  v26 = (v13 + 2);
  v28 = (v26[64] + 32) & ~v26[64];
  v70 = v27;
  v71 = v26;
  (v27)(&v62 - v23, a1 + v28, v12);
  if (isa == 1)
  {
LABEL_3:
    v13 = v67;
    a2 = v63;
    (v67[4].isa)(v63, v24, v12);
    v13[7](a2, 0, 1, v12);
    v11 = v65;
    a1 = v66;
    v8 = v64;
    goto LABEL_5;
  }

  v35 = v67[9].isa;
  a1 = v67 + 1;
  v68 = v67 + 4;
  v69 = v35;
  v13 = (v35 + v66 + v28);
  v8 = 1;
  while (1)
  {
    (v70)(v20, v13, v12);
    v11 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v36 = sub_2330F22A0();
    a2 = v37;
    if (v36 == sub_2330F22A0() && a2 == v38)
    {

      v39 = a1->isa;
LABEL_18:
      v12 = v73;
      (v39)(v20, v73);
      goto LABEL_12;
    }

    v40 = sub_2330F2DC0();

    v39 = a1->isa;
    if ((v40 & 1) == 0)
    {
      goto LABEL_18;
    }

    v12 = v73;
    (v39)(v24, v73);
    (v68->isa)(v24, v20, v12);
LABEL_12:
    ++v8;
    v13 = (v69 + v13);
    if (v11 == isa)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_6:
  v29 = sub_2330F23C0();
  __swift_project_value_buffer(v29, qword_27DDE18D8);
  sub_2330A7AD0(a2, v11);

  v30 = sub_2330F23A0();
  v31 = sub_2330F2980();

  if (os_log_type_enabled(v30, v31))
  {
    LODWORD(v69) = v31;
    v32 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v75 = v68;
    *v32 = 136315650;
    *(v32 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F5670, &v75);
    *(v32 + 12) = 2080;
    sub_2330A7AD0(v11, v8);
    if ((v13[6])(v8, 1, v12) == 1)
    {
      sub_2330B6118(v8);
      v33 = 0xE300000000000000;
      v34 = 7104878;
    }

    else
    {
      v34 = sub_2330F22A0();
      v33 = v41;
      (v13[1])(v8, v12);
    }

    sub_2330B6118(v11);
    v42 = sub_233098F44(v34, v33, &v75);

    *(v32 + 14) = v42;
    *(v32 + 22) = 2080;
    v43 = MEMORY[0x277D84F90];
    if (isa)
    {
      v66 = v32;
      v67 = v30;
      v74 = MEMORY[0x277D84F90];
      sub_2330AC704(0, isa, 0);
      v43 = v74;
      v45 = v13[2];
      v44 = (v13 + 2);
      v46 = a1 + ((v44[64] + 32) & ~v44[64]);
      v70 = *(v44 + 7);
      v71 = v45;
      v47 = (v44 - 8);
      do
      {
        v49 = v72;
        v48 = v73;
        v50 = v44;
        (v71)(v72, v46, v73);
        v51 = sub_2330F22A0();
        v53 = v52;
        (*v47)(v49, v48);
        v74 = v43;
        v55 = *(v43 + 16);
        v54 = *(v43 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_2330AC704((v54 > 1), v55 + 1, 1);
          v43 = v74;
        }

        *(v43 + 16) = v55 + 1;
        v56 = v43 + 16 * v55;
        *(v56 + 32) = v51;
        *(v56 + 40) = v53;
        v46 = &v70[v46];
        isa = (isa - 1);
        v44 = v50;
      }

      while (isa);
      v32 = v66;
      v30 = v67;
    }

    v74 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE170, &qword_2330F56B0);
    sub_2330B6180();
    v57 = sub_2330F2580();
    v59 = v58;

    v60 = sub_233098F44(v57, v59, &v75);

    *(v32 + 24) = v60;
    _os_log_impl(&dword_233084000, v30, v69, "%s chose highest version: %s among: %s", v32, 0x20u);
    v61 = v68;
    swift_arrayDestroy();
    MEMORY[0x23839A490](v61, -1, -1);
    MEMORY[0x23839A490](v32, -1, -1);
  }

  else
  {

    sub_2330B6118(v11);
  }
}

uint64_t _s15VisionCompanion23SoftwareUpdateUtilitiesV15dataFromUIImagey10Foundation4DataVSgSo0H0CSgFZ_0(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = objc_opt_self();
    v19[0] = 0;
    v3 = a1;
    v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v19];
    v5 = v19[0];
    if (v4)
    {
      v6 = sub_2330F1E00();

      return v6;
    }

    v12 = v5;
    v13 = sub_2330F1D60();

    swift_willThrow();
    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    v14 = sub_2330F23C0();
    __swift_project_value_buffer(v14, qword_27DDE18D8);
    v15 = sub_2330F23A0();
    v16 = sub_2330F2960();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F5670, v19);
      _os_log_impl(&dword_233084000, v15, v16, "%s dataFromUIImage returned nil", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x23839A490](v18, -1, -1);
      MEMORY[0x23839A490](v17, -1, -1);
    }
  }

  else
  {
    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    v8 = sub_2330F23C0();
    __swift_project_value_buffer(v8, qword_27DDE18D8);
    v3 = sub_2330F23A0();
    v9 = sub_2330F2980();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F5670, v19);
      _os_log_impl(&dword_233084000, v3, v9, "%s dataFromUIImage: descriptor doesnt have an icon", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x23839A490](v11, -1, -1);
      MEMORY[0x23839A490](v10, -1, -1);
    }
  }

  return 0;
}

unint64_t sub_2330B60C4()
{
  result = qword_27DDDE168;
  if (!qword_27DDDE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE168);
  }

  return result;
}

uint64_t sub_2330B6118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE78, &qword_2330F4AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2330B6180()
{
  result = qword_27DDDE178;
  if (!qword_27DDDE178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDDE170, &qword_2330F56B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE178);
  }

  return result;
}

uint64_t sub_2330B61F4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE1A8, &qword_2330F5768);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2330B68F8();
  sub_2330F2EE0();
  v14 = 0;
  sub_2330F2D70();
  if (!v3)
  {
    v12[1] = a3;
    v13 = 1;
    sub_2330B694C();
    sub_2330B6998(&qword_27DDDE1B0, MEMORY[0x277CBBEA8]);
    sub_2330F2D60();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2330B639C()
{
  if (*v0)
  {
    return 0x444964726F636572;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_2330B63DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000002330F8110 == a2 || (sub_2330F2DC0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x444964726F636572 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2330F2DC0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2330B64C4(uint64_t a1)
{
  v2 = sub_2330B68F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2330B6500(uint64_t a1)
{
  v2 = sub_2330B68F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2330B653C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2330B6714(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_2330B658C(uint64_t a1, uint64_t a2)
{
  sub_2330B665C();
  sub_2330B66B0();
  return sub_2330F2180();
}

uint64_t sub_2330B65E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2330B665C();
  sub_2330B66B0();
  return sub_2330F2190();
}

unint64_t sub_2330B665C()
{
  result = qword_27DDDE180;
  if (!qword_27DDDE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE180);
  }

  return result;
}

unint64_t sub_2330B66B0()
{
  result = qword_27DDDE188;
  if (!qword_27DDDE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE188);
  }

  return result;
}

uint64_t sub_2330B6714(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE190, &qword_2330F5760);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_2330B68F8();
  sub_2330F2ED0();
  if (!v1)
  {
    v11 = 0;
    v8 = sub_2330F2D40();
    sub_2330B694C();
    v10[15] = 1;
    sub_2330B6998(&qword_27DDDE1A0, MEMORY[0x277CBBEB0]);
    sub_2330F2D30();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t sub_2330B68F8()
{
  result = qword_27DDDE198;
  if (!qword_27DDDE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE198);
  }

  return result;
}

unint64_t sub_2330B694C()
{
  result = qword_27DDDDE80;
  if (!qword_27DDDDE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDDDE80);
  }

  return result;
}