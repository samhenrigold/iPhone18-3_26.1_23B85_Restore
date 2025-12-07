double sub_23B791730(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E8, &qword_23B7BEA40);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = a1[1];
  if (v12)
  {
    v33 = *a1;
    v13 = a1[4];
    v14 = a1[5];
    v15 = a1[6];
    v18 = a1 + 2;
    v16 = a1[2];
    v17 = v18[1];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v32 = Strong;
      v20 = sub_23B7BC930();
      (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
      v21 = swift_allocObject();
      v31 = a5;
      v22 = v21;
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      sub_23B77CCF4(v17, v13, v14, v15);

      sub_23B7BC900();

      v30 = a3;
      v23 = v34;

      v24 = sub_23B7BC8F0();
      v25 = swift_allocObject();
      v26 = v13;
      v27 = v25;
      v28 = MEMORY[0x277D85700];
      *(v25 + 16) = v24;
      *(v25 + 24) = v28;
      *(v25 + 32) = v33;
      *(v25 + 40) = v12;
      *(v25 + 48) = v16;
      *(v25 + 49) = *v35;
      *(v25 + 52) = *&v35[3];
      *(v25 + 56) = v17;
      *(v25 + 64) = v26;
      *(v25 + 72) = v14;
      *(v25 + 80) = v15;
      v29 = v31;
      *(v25 + 88) = v30;
      *(v25 + 96) = v22;
      *(v25 + 104) = v23;
      *(v25 + 112) = v29;

      sub_23B7939C4(0, 0, v11, &unk_23B7BEA50, v27);
      sub_23B7BBB60();
      swift_allocObject();
      *(v32 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_contentSubscription) = sub_23B7BBB70();
    }
  }

  return result;
}

uint64_t sub_23B7919D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = sub_23B7BBAB0();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E8, &qword_23B7BEA40);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181250, &qword_23B7BEA00);
  v8[20] = swift_task_alloc();
  v10 = sub_23B7BBA50();
  v8[21] = v10;
  v11 = *(v10 - 8);
  v8[22] = v11;
  v8[23] = *(v11 + 64);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181310, &qword_23B7BEA60);
  v8[26] = v12;
  v8[27] = *(v12 - 8);
  v8[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181318, &qword_23B7BEA68);
  v8[29] = swift_task_alloc();
  v8[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181320, &qword_23B7BEA70);
  v8[31] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181328, &qword_23B7BEA78);
  v8[32] = v13;
  v8[33] = *(v13 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = sub_23B7BC900();
  v8[36] = sub_23B7BC8F0();
  v15 = sub_23B7BC8D0();
  v8[37] = v15;
  v8[38] = v14;

  return MEMORY[0x2822009F8](sub_23B791D14, v15, v14);
}

uint64_t sub_23B791D14()
{
  v29 = v0;
  v1 = *(v0 + 72);
  v2 = v1[4];
  if (v2)
  {
    if (v2 == 1)
    {
      if (qword_27E180870 != -1)
      {
        swift_once();
      }

      v3 = sub_23B7BBB30();
      *(v0 + 312) = __swift_project_value_buffer(v3, qword_27E184F18);
      v4 = sub_23B7BBB10();
      v5 = sub_23B7BCA20();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v26 = v7;
        *v6 = 136315138;
        if (qword_27E180830 != -1)
        {
          swift_once();
        }

        v8 = qword_27E1810E8;
        if (byte_27E1810F8 == 1)
        {
          v9 = qword_27E1810F0;
        }

        else
        {
          v17 = HIDWORD(qword_27E1810E8);
          v27 = 0;
          v28 = 0xE000000000000000;
          if (qword_27E1810E8)
          {
            v18 = 4144959;
          }

          else
          {
            v18 = 5527621;
          }

          MEMORY[0x23EEA8AE0](v18, 0xE300000000000000);

          *(v0 + 344) = v17;
          sub_23B7797D8();
          v19 = sub_23B7BC870();
          MEMORY[0x23EEA8AE0](v19);

          v8 = v27;
          v9 = v28;
        }

        v20 = sub_23B77C020(v8, v9, &v26);

        *(v6 + 4) = v20;
        _os_log_impl(&dword_23B774000, v4, v5, "[%s] Awaiting apps", v6, 0xCu);
        v21 = __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x23EEA96D0](v7, -1, -1, v21);
        MEMORY[0x23EEA96D0](v6, -1, -1);
      }

      sub_23B7BBAA0();
      sub_23B7BBA60();
      sub_23B7BBA70();

      *(v0 + 320) = swift_getOpaqueTypeConformance2();
      sub_23B7BC970();
      swift_beginAccess();
      v22 = sub_23B7BC8F0();
      *(v0 + 328) = v22;
      swift_getAssociatedConformanceWitness();
      v23 = swift_task_alloc();
      *(v0 + 336) = v23;
      *v23 = v0;
      v23[1] = sub_23B792204;
      v24 = *(v0 + 232);
      v25 = MEMORY[0x277D85700];

      return MEMORY[0x282200310](v24, v22, v25);
    }

    v10 = *(v0 + 160);
    v12 = v1[5];
    v11 = v1[6];
    v13 = v1[3];

    *v10 = v13;
    v10[1] = v2;
    v10[2] = v12;
    v10[3] = v11;
    v14 = type metadata accessor for ManagedAppCellViewModel.Content(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
    sub_23B7BBBB0();
    sub_23B7826E8(v10, &qword_27E181250, &qword_23B7BEA00);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_23B792204()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 296);
    v5 = *(v2 + 304);

    return MEMORY[0x2822009F8](sub_23B792318, v4, v5);
  }

  return result;
}

uint64_t sub_23B792318()
{
  v68 = v0;
  v1 = v0[29];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) == 1)
  {
    (*(v0[33] + 8))(v0[34], v0[32]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_23B796CA4(v1, v0[28]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = v0[16];
      v4 = v0[17];
      v6 = v0[14];
      v7 = v0[15];
      (*(v7 + 32))(v4, v0[28], v6);
      (*(v7 + 16))(v5, v4, v6);
      v8 = sub_23B7BBB10();
      v9 = sub_23B7BCA00();
      v10 = os_log_type_enabled(v8, v9);
      v11 = v0[16];
      v12 = v0[17];
      v14 = v0[14];
      v13 = v0[15];
      if (v10)
      {
        v65 = v0[17];
        v15 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v67 = v63;
        *v15 = 136315138;
        sub_23B797010(&qword_27E181330, MEMORY[0x277CD4A58], MEMORY[0x277CD4A60]);
        v16 = sub_23B7BCCC0();
        v18 = v17;
        v19 = *(v13 + 8);
        v19(v11, v14);
        v20 = sub_23B77C020(v16, v18, &v67);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_23B774000, v8, v9, "%s", v15, 0xCu);
        v21 = __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x23EEA96D0](v63, -1, -1, v21);
        MEMORY[0x23EEA96D0](v15, -1, -1);

        v19(v65, v14);
      }

      else
      {

        v42 = *(v13 + 8);
        v42(v11, v14);
        v42(v12, v14);
      }
    }

    else
    {
      v22 = v0[25];
      v23 = v0[21];
      v24 = v0[22];
      v25 = v0[20];
      v26 = *(v24 + 32);
      v26(v22, v0[28], v23);
      v27 = *(v24 + 16);
      v27(v25, v22, v23);
      v28 = type metadata accessor for ManagedAppCellViewModel.Content(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v28 - 8) + 56))(v25, 0, 1, v28);
      sub_23B7BBBB0();
      sub_23B7826E8(v25, &qword_27E181250, &qword_23B7BEA00);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v30 = v0[24];
        v60 = v0[23];
        v58 = v30;
        v59 = v0[22];
        v31 = v0[21];
        v56 = v0[25];
        v57 = v31;
        v32 = v0[19];
        v61 = v26;
        v64 = v0[18];
        v66 = Strong;
        v33 = v0[12];
        v62 = v0[13];
        v34 = sub_23B7BC930();
        v35 = *(v34 - 8);
        (*(v35 + 56))(v32, 1, 1, v34);
        v27(v30, v56, v31);

        v36 = sub_23B7BC8F0();
        v37 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v38 = (v60 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
        v39 = swift_allocObject();
        v40 = MEMORY[0x277D85700];
        *(v39 + 16) = v36;
        *(v39 + 24) = v40;
        v61(v39 + v37, v58, v57);
        *(v39 + v38) = v33;
        *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v62;
        sub_23B779B38(v32, v64, &qword_27E1809E8, &qword_23B7BEA40);
        LODWORD(v37) = (*(v35 + 48))(v64, 1, v34);

        v41 = v0[18];
        if (v37 == 1)
        {
          sub_23B7826E8(v0[18], &qword_27E1809E8, &qword_23B7BEA40);
        }

        else
        {
          sub_23B7BC920();
          (*(v35 + 8))(v41, v34);
        }

        v43 = *(v39 + 16);
        swift_unknownObjectRetain();

        if (v43)
        {
          swift_getObjectType();
          v44 = sub_23B7BC8D0();
          v46 = v45;
          swift_unknownObjectRelease();
        }

        else
        {
          v44 = 0;
          v46 = 0;
        }

        sub_23B7826E8(v0[19], &qword_27E1809E8, &qword_23B7BEA40);
        v47 = swift_allocObject();
        *(v47 + 16) = &unk_23B7BEA88;
        *(v47 + 24) = v39;
        if (v46 | v44)
        {
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v44;
          v0[5] = v46;
        }

        v48 = v0[25];
        v50 = v0[21];
        v49 = v0[22];
        swift_task_create();
        sub_23B7BBB60();
        swift_allocObject();
        v51 = sub_23B7BBB70();
        (*(v49 + 8))(v48, v50);
        *(v66 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_appStateSubscription) = v51;
      }

      else
      {
        (*(v0[22] + 8))(v0[25], v0[21]);
      }
    }

    v52 = sub_23B7BC8F0();
    v0[41] = v52;
    swift_getAssociatedConformanceWitness();
    v53 = swift_task_alloc();
    v0[42] = v53;
    *v53 = v0;
    v53[1] = sub_23B792204;
    v54 = v0[29];
    v55 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v54, v52, v55);
  }
}

uint64_t sub_23B792B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_23B7BB990();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181248, &qword_23B7BE9F8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181338, &qword_23B7BEA98);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181340, &qword_23B7BEAA0);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v9 = sub_23B7BBAF0();
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  v10 = sub_23B7BBA50();
  v5[22] = v10;
  v5[23] = *(v10 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = sub_23B7BC900();
  v5[28] = sub_23B7BC8F0();
  v12 = sub_23B7BC8D0();
  v5[29] = v12;
  v5[30] = v11;

  return MEMORY[0x2822009F8](sub_23B792DF8, v12, v11);
}

uint64_t sub_23B792DF8()
{
  v55 = v0;
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 40);
  v6 = sub_23B7BBB30();
  *(v0 + 248) = __swift_project_value_buffer(v6, qword_27E184F18);
  v7 = *(v4 + 16);
  *(v0 + 256) = v7;
  *(v0 + 264) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v3);
  v7(v1, v5, v3);
  v8 = sub_23B7BBB10();
  v9 = sub_23B7BCA20();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v10 = 136315650;
    if (qword_27E180830 != -1)
    {
      swift_once();
    }

    v50 = v9;
    log = v8;
    v11 = qword_27E1810E8;
    if (byte_27E1810F8 == 1)
    {
      v12 = qword_27E1810F0;
    }

    else
    {
      v20 = HIDWORD(qword_27E1810E8);
      v53 = 0;
      v54 = 0xE000000000000000;
      if (qword_27E1810E8)
      {
        v21 = 4144959;
      }

      else
      {
        v21 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v21, 0xE300000000000000);

      *(v0 + 308) = v20;
      sub_23B7797D8();
      v22 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v22);

      v11 = v53;
      v12 = v54;
    }

    v23 = *(v0 + 208);
    v25 = *(v0 + 176);
    v24 = *(v0 + 184);
    v47 = *(v0 + 200);
    v26 = *(v0 + 160);
    v27 = *(v0 + 168);
    v48 = *(v0 + 152);
    v28 = sub_23B77C020(v11, v12, &v52);

    *(v10 + 4) = v28;
    *(v10 + 12) = 2080;
    v29 = sub_23B7BB9D0();
    v31 = v30;
    v32 = *(v24 + 8);
    v17 = v24 + 8;
    v18 = v32;
    v32(v23, v25);
    v33 = sub_23B77C020(v29, v31, &v52);

    *(v10 + 14) = v33;
    *(v10 + 22) = 2080;
    sub_23B7BBA30();
    sub_23B797010(&qword_27E181350, MEMORY[0x277CD4A90], MEMORY[0x277CD4AA0]);
    v34 = sub_23B7BCC60();
    v36 = v35;
    (*(v26 + 8))(v27, v48);
    v32(v47, v25);
    v37 = sub_23B77C020(v34, v36, &v52);

    *(v10 + 24) = v37;
    _os_log_impl(&dword_23B774000, log, v50, "[%s] Awaiting state for %s %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v49, -1, -1);
    MEMORY[0x23EEA96D0](v10, -1, -1);
  }

  else
  {
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v16 = *(v0 + 176);
    v15 = *(v0 + 184);

    v19 = *(v15 + 8);
    v17 = v15 + 8;
    v18 = v19;
    v19(v14, v16);
    v19(v13, v16);
  }

  *(v0 + 272) = v17;
  *(v0 + 280) = v18;
  v39 = *(v0 + 112);
  v38 = *(v0 + 120);
  v40 = *(v0 + 104);
  sub_23B7BB9F0();
  sub_23B7BC940();
  (*(v39 + 8))(v38, v40);
  v41 = sub_23B7BC8F0();
  *(v0 + 288) = v41;
  v42 = swift_task_alloc();
  *(v0 + 296) = v42;
  *v42 = v0;
  v42[1] = sub_23B7932C0;
  v43 = *(v0 + 128);
  v44 = *(v0 + 96);
  v45 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v44, v41, v45, v43);
}

uint64_t sub_23B7932C0()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return MEMORY[0x2822009F8](sub_23B793404, v3, v2);
}

uint64_t sub_23B793404()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = *(v0 + 192);
  if (v4 == 1)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 256);
    v9 = *(v0 + 176);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v0 + 40);
    (*(v2 + 32))(v10, v1, v3);
    v13 = *(v2 + 16);
    v13(v11, v10, v3);
    v8(v5, v12, v9);
    v14 = sub_23B7BBB10();
    v15 = sub_23B7BCA20();
    if (os_log_type_enabled(v14, v15))
    {
      v55 = v15;
      v16 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *(v0 + 32) = v54;
      *v16 = 136315650;
      if (qword_27E180830 != -1)
      {
        swift_once();
      }

      v17 = qword_27E1810E8;
      v53 = v13;
      if (byte_27E1810F8 == 1)
      {
        v18 = qword_27E1810F0;
      }

      else
      {
        v26 = HIDWORD(qword_27E1810E8);
        *(v0 + 16) = 0;
        *(v0 + 24) = 0xE000000000000000;
        if (v17)
        {
          v27 = 4144959;
        }

        else
        {
          v27 = 5527621;
        }

        MEMORY[0x23EEA8AE0](v27, 0xE300000000000000);

        *(v0 + 304) = v26;
        sub_23B7797D8();
        v28 = sub_23B7BC870();
        MEMORY[0x23EEA8AE0](v28);

        v17 = *(v0 + 16);
        v18 = *(v0 + 24);
      }

      v52 = *(v0 + 280);
      v29 = *(v0 + 192);
      v51 = *(v0 + 176);
      v30 = *(v0 + 64);
      v31 = *(v0 + 72);
      v32 = *(v0 + 56);
      v33 = sub_23B77C020(v17, v18, (v0 + 32));

      *(v16 + 4) = v33;
      *(v16 + 12) = 2080;
      sub_23B797010(&qword_27E181348, MEMORY[0x277CD49E8], MEMORY[0x277CD49F0]);
      v34 = sub_23B7BCC60();
      v36 = v35;
      v25 = *(v30 + 8);
      v25(v31, v32);
      v37 = sub_23B77C020(v34, v36, (v0 + 32));

      *(v16 + 14) = v37;
      *(v16 + 22) = 2080;
      v38 = sub_23B7BB9D0();
      v40 = v39;
      v52(v29, v51);
      v41 = sub_23B77C020(v38, v40, (v0 + 32));

      *(v16 + 24) = v41;
      _os_log_impl(&dword_23B774000, v14, v55, "[%s] Received state %s for %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EEA96D0](v54, -1, -1);
      MEMORY[0x23EEA96D0](v16, -1, -1);

      v13 = v53;
    }

    else
    {
      v19 = *(v0 + 280);
      v20 = *(v0 + 192);
      v21 = *(v0 + 176);
      v23 = *(v0 + 64);
      v22 = *(v0 + 72);
      v24 = *(v0 + 56);

      v19(v20, v21);
      v25 = *(v23 + 8);
      v25(v22, v24);
    }

    v43 = *(v0 + 80);
    v42 = *(v0 + 88);
    v44 = *(v0 + 56);
    v45 = *(v0 + 64);
    v13(v42, v43, v44);
    (*(v45 + 56))(v42, 0, 1, v44);
    sub_23B7BBBB0();
    sub_23B7826E8(v42, &qword_27E181248, &qword_23B7BE9F8);
    v25(v43, v44);
    v46 = sub_23B7BC8F0();
    *(v0 + 288) = v46;
    v47 = swift_task_alloc();
    *(v0 + 296) = v47;
    *v47 = v0;
    v47[1] = sub_23B7932C0;
    v48 = *(v0 + 128);
    v49 = *(v0 + 96);
    v50 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v49, v46, v50, v48);
  }
}

uint64_t sub_23B7939C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E8, &qword_23B7BEA40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23B779B38(a3, v22 - v9, &qword_27E1809E8, &qword_23B7BEA40);
  v11 = sub_23B7BC930();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23B7826E8(v10, &qword_27E1809E8, &qword_23B7BEA40);
  }

  else
  {
    sub_23B7BC920();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23B7BC8D0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23B7BC820() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23B7826E8(a3, &qword_27E1809E8, &qword_23B7BEA40);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B7826E8(a3, &qword_27E1809E8, &qword_23B7BEA40);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_23B793C70(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  sub_23B7BB7B0();
  swift_allocObject();
  sub_23B7BB7A0();
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  sub_23B796A28();
  v13 = sub_23B7BB790();
  v15 = v14;

  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v16 = sub_23B7BBB30();
  __swift_project_value_buffer(v16, qword_27E184F18);
  v17 = sub_23B7BBB10();
  v18 = sub_23B7BC9F0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34[0] = v20;
    *v19 = 136315394;
    if (qword_27E180830 != -1)
    {
      swift_once();
    }

    v21 = qword_27E1810E8;
    if (byte_27E1810F8 == 1)
    {
      v22 = qword_27E1810F0;
    }

    else
    {
      v35 = 0.0;
      v36 = -2.68156159e154;
      if (qword_27E1810E8)
      {
        v23 = 4144959;
      }

      else
      {
        v23 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v23, 0xE300000000000000);

      sub_23B7797D8();
      v24 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v24);

      v21 = *&v35;
      v22 = *&v36;
    }

    v25 = sub_23B77C020(v21, v22, v34);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v35 = a3;
    v36 = a4;
    v37 = a5;
    v38 = a6;
    v39 = a7;
    v26 = sub_23B7BC810();
    v28 = sub_23B77C020(v26, v27, v34);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_23B774000, v17, v18, "[%s] Replying bounds %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v20, -1, -1);
    MEMORY[0x23EEA96D0](v19, -1, -1);
  }

  v29 = a1 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply;
  v30 = *(a1 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply);
  if (v30)
  {
    v31 = *(v29 + 8);
    if (v15 >> 60 == 15)
    {
      v32 = 0;
    }

    else
    {
      v32 = v13;
    }

    if (v15 >> 60 == 15)
    {
      v33 = 0xC000000000000000;
    }

    else
    {
      v33 = v15;
    }

    sub_23B796A90(v30, v31);
    sub_23B796AA0(v13, v15);
    v30(v32, v33);
    sub_23B796A7C(v13, v15);
    sub_23B77C010(v30, v31);
    sub_23B779E1C(v32, v33);
  }

  else
  {
    sub_23B796A7C(v13, v15);
  }
}

uint64_t static ManagedAppCellViewModel.color(for:in:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B7BBCE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23B7BBFA0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B7BBF90();
  (*(v5 + 16))(v7, a2, v4);
  sub_23B7BBED0();
  sub_23B7BC500();
  v12 = sub_23B7BC510();
  (*(v5 + 104))(v7, *MEMORY[0x277CDF3D0], v4);
  LOBYTE(a2) = sub_23B7BBCD0();
  (*(v5 + 8))(v7, v4);
  v13 = 0.0;
  if (a2)
  {
    v13 = 1.0;
  }

  GenericGray = CGColorCreateGenericGray(v13, 1.0);
  AXSSContrastRatioForColor();
  if (v15 >= 3.0)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    a1 = sub_23B7BC4F0();

    (*(v9 + 8))(v11, v8);
  }

  return a1;
}

uint64_t ManagedAppCellViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__name;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108, &qword_23B7BE6C8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__subtitle, v2);
  v4 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__iconImageURL;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181128, &qword_23B7BE770);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__style;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181140, &qword_23B7BE7C8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__offerState;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181158, &qword_23B7BE820);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__isInitial;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170, &qword_23B7BE878);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v12(v0 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__isPackage, v11);
  v13 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__binaryCompatibility;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181190, &qword_23B7BE918);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);

  return v0;
}

uint64_t ManagedAppCellViewModel.__deallocating_deinit()
{
  ManagedAppCellViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_23B7945D4(uint64_t a1)
{
  v2 = v1;
  v171 = a1;
  v167 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181208, &qword_23B7BE9B0);
  v4 = *(v3 - 8);
  v157 = v3;
  v158 = v4;
  MEMORY[0x28223BE20](v3);
  v155 = &v117 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181210, &qword_23B7BE9B8);
  v7 = *(v6 - 8);
  v159 = v6;
  v160 = v7;
  MEMORY[0x28223BE20](v6);
  v156 = &v117 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181218, &qword_23B7BE9C0);
  MEMORY[0x28223BE20](v9 - 8);
  v166 = &v117 - v10;
  v168 = sub_23B7BCA60();
  v172 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v165 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181220, &qword_23B7BE9C8);
  v152 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v117 - v12;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181228, &qword_23B7BE9D0);
  v154 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v150 = &v117 - v13;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181160, &qword_23B7BE828);
  v147 = *(v148 - 8);
  v14 = MEMORY[0x28223BE20](v148);
  v146 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v143 = &v117 - v16;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181230, &qword_23B7BE9D8);
  v145 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v117 - v17;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181238, &unk_23B7BE9E0);
  v141 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v117 - v18;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181148, &qword_23B7BE7D0);
  v135 = *(v136 - 8);
  v19 = MEMORY[0x28223BE20](v136);
  v134 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v133 = &v117 - v21;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AB0, &qword_23B7BDCB8);
  v170 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v161 = &v117 - v22;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181240, &qword_23B7BE9F0);
  v132 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v130 = &v117 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181248, &qword_23B7BE9F8);
  MEMORY[0x28223BE20](v24 - 8);
  v169 = &v117 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181250, &qword_23B7BEA00);
  MEMORY[0x28223BE20](v26 - 8);
  v173 = &v117 - v27;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181190, &qword_23B7BE918);
  v139 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v138 = &v117 - v28;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170, &qword_23B7BE878);
  v128 = *(v129 - 1);
  MEMORY[0x28223BE20](v129);
  v127 = &v117 - v29;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181158, &qword_23B7BE820);
  v126 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v125 = &v117 - v30;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181140, &qword_23B7BE7C8);
  v124 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v117 - v31;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181128, &qword_23B7BE770);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v117 - v32;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C18, &unk_23B7C0430);
  v33 = MEMORY[0x28223BE20](v118);
  v35 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v117 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108, &qword_23B7BE6C8);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v117 - v40;
  v42 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__name;
  *&v175 = 0;
  *(&v175 + 1) = 0xE000000000000000;
  sub_23B7BBBE0();
  v43 = *(v39 + 32);
  v43(v1 + v42, v41, v38);
  v44 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__subtitle;
  *&v175 = 0;
  *(&v175 + 1) = 0xE000000000000000;
  sub_23B7BBBE0();
  v43(v1 + v44, v41, v38);
  v45 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__iconImageURL;
  v46 = sub_23B7BB810();
  (*(*(v46 - 8) + 56))(v37, 1, 1, v46);
  sub_23B779B38(v37, v35, &qword_27E180C18, &unk_23B7C0430);
  v47 = v119;
  sub_23B7BBBE0();
  sub_23B7826E8(v37, &qword_27E180C18, &unk_23B7C0430);
  (*(v120 + 32))(v1 + v45, v47, v121);
  v48 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__style;
  LOBYTE(v175) = 1;
  v49 = v122;
  sub_23B7BBBE0();
  (*(v124 + 32))(v1 + v48, v49, v123);
  v50 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__offerState;
  v175 = xmmword_23B7BE660;
  v176 = 2;
  v51 = v125;
  sub_23B7BBBE0();
  (*(v126 + 32))(v1 + v50, v51, v163);
  v52 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__isInitial;
  LOBYTE(v175) = 1;
  v53 = v127;
  sub_23B7BBBE0();
  v54 = *(v128 + 32);
  v55 = v129;
  v54(v1 + v52, v53, v129);
  v56 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__isPackage;
  LOBYTE(v175) = 0;
  sub_23B7BBBE0();
  v54(v1 + v56, v53, v55);
  v57 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__binaryCompatibility;
  LOBYTE(v175) = 4;
  v58 = v138;
  sub_23B7BBBE0();
  (*(v139 + 32))(v2 + v57, v58, v164);
  *(v2 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_contentSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_appStateSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_subscriptions) = MEMORY[0x277D84FA0];
  v59 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_viewBoundsSubject;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181258, &qword_23B7BEA08);
  swift_allocObject();
  *(v2 + v59) = sub_23B7BBBA0();
  v60 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_offerFrameSubject;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181260, &qword_23B7BEA10);
  swift_allocObject();
  *(v2 + v60) = sub_23B7BBBA0();
  v61 = type metadata accessor for ManagedAppCellViewModel.Content(0);
  (*(*(v61 - 8) + 56))(v173, 1, 1, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181268, &qword_23B7BEA18);
  swift_allocObject();
  v173 = sub_23B7BBBD0();
  v62 = sub_23B7BB990();
  (*(*(v62 - 8) + 56))(v169, 1, 1, v62);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181270, &qword_23B7BEA20);
  swift_allocObject();
  v169 = sub_23B7BBBD0();
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181278, &unk_23B7BEA28);
  swift_allocObject();
  v63 = sub_23B7BBBA0();
  v64 = (v2 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_offerAction);
  *v64 = sub_23B796800;
  v64[1] = v63;
  v164 = v63;
  v126 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject__managedAppViewConfiguration;
  swift_beginAccess();

  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8, &qword_23B7BDCB0);
  v65 = v161;
  sub_23B7BBBF0();
  swift_endAccess();
  v66 = MEMORY[0x277CBCEC8];
  v128 = sub_23B7826A0(&qword_27E181280, &qword_27E180AB0, &qword_23B7BDCB8, MEMORY[0x277CBCEC8]);
  v67 = v130;
  v68 = v162;
  sub_23B7BBC60();
  v69 = *(v170 + 8);
  v170 += 8;
  v129 = v69;
  (v69)(v65, v68);
  swift_beginAccess();
  v70 = v133;
  sub_23B7BBBF0();
  swift_endAccess();
  sub_23B7826A0(&qword_27E181288, &qword_27E181240, &qword_23B7BE9F0, MEMORY[0x277CBCC08]);
  v71 = v131;
  sub_23B7BBC90();
  (*(v132 + 8))(v67, v71);
  v72 = v135;
  v73 = v136;
  (*(v135 + 16))(v134, v70, v136);
  swift_beginAccess();
  sub_23B7BBC00();
  swift_endAccess();
  (*(v72 + 8))(v70, v73);
  v174 = v173;
  swift_beginAccess();

  sub_23B7BBBF0();
  swift_endAccess();
  v74 = MEMORY[0x277CBCE48];
  sub_23B7826A0(&qword_27E181290, &qword_27E181268, &qword_23B7BEA18, MEMORY[0x277CBCE48]);
  sub_23B7826A0(&qword_27E181298, &qword_27E181148, &qword_23B7BE7D0, v66);
  v75 = v137;
  sub_23B7BBB40();
  v76 = swift_allocObject();
  swift_weakInit();
  v77 = swift_allocObject();
  *(v77 + 16) = sub_23B79686C;
  *(v77 + 24) = v76;
  v136 = MEMORY[0x277CBCAF0];
  sub_23B7826A0(&qword_27E1812A0, &qword_27E181238, &unk_23B7BE9E0, MEMORY[0x277CBCAF0]);

  v78 = v140;
  sub_23B7BBC80();

  (*(v141 + 8))(v75, v78);
  v141 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_subscriptions;
  swift_beginAccess();
  sub_23B7BBB50();
  swift_endAccess();

  v79 = v169;
  *&v175 = v169;
  sub_23B7826A0(&qword_27E1812A8, &qword_27E181270, &qword_23B7BEA20, v74);
  v80 = v142;
  sub_23B7BBC50();
  swift_beginAccess();
  v81 = v143;
  sub_23B7BBBF0();
  swift_endAccess();
  v82 = MEMORY[0x277CBCB10];
  sub_23B7826A0(&qword_27E1812B0, &qword_27E181230, &qword_23B7BE9D8, MEMORY[0x277CBCB10]);
  v83 = v144;
  sub_23B7BBC90();
  v145[1](v80, v83);
  v84 = v147;
  v85 = v148;
  (*(v147 + 16))(v146, v81, v148);
  swift_beginAccess();
  sub_23B7BBC00();
  swift_endAccess();
  (*(v84 + 8))(v81, v85);
  *&v175 = v164;
  v86 = swift_allocObject();
  *(v86 + 16) = v173;
  *(v86 + 24) = v79;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1812B8, &qword_23B7BEA38);
  v163 = MEMORY[0x277CBCE20];
  sub_23B7826A0(&qword_27E1812C0, &qword_27E181278, &unk_23B7BEA28, MEMORY[0x277CBCE20]);
  v87 = v149;
  sub_23B7BBC50();

  v88 = v165;
  sub_23B7BCA50();
  v144 = sub_23B77C5C8();
  v89 = sub_23B7BCA70();
  *&v175 = v89;
  v90 = sub_23B7BCA30();
  v91 = *(v90 - 8);
  v147 = *(v91 + 56);
  v148 = v91 + 56;
  v92 = v166;
  (v147)(v166, 1, 1, v90);
  sub_23B7826A0(&qword_27E1812C8, &qword_27E181220, &qword_23B7BE9C8, v82);
  v146 = sub_23B797010(&qword_27E1812D0, sub_23B77C5C8, MEMORY[0x277D85228]);
  v93 = v150;
  v94 = v151;
  sub_23B7BBC70();
  sub_23B7826E8(v92, &qword_27E181218, &qword_23B7BE9C0);

  v95 = *(v172 + 8);
  v172 += 8;
  v145 = v95;
  (v95)(v88, v168);
  (*(v152 + 8))(v87, v94);
  v96 = swift_allocObject();
  v97 = v167;
  *(v96 + 16) = v167;
  v152 = MEMORY[0x277CBCCF8];
  sub_23B7826A0(&qword_27E1812D8, &qword_27E181228, &qword_23B7BE9D0, MEMORY[0x277CBCCF8]);
  v98 = v153;
  sub_23B7BBC80();

  (*(v154 + 8))(v93, v98);
  swift_beginAccess();
  sub_23B7BBB50();
  swift_endAccess();

  swift_beginAccess();
  v99 = v161;
  sub_23B7BBBF0();
  swift_endAccess();
  v100 = swift_allocObject();
  swift_weakInit();

  v101 = swift_allocObject();
  v101[2] = v100;
  v102 = v169;
  v101[3] = v173;
  v101[4] = v102;
  v101[5] = v97;

  v103 = v162;
  sub_23B7BBC80();

  (v129)(v99, v103);
  swift_beginAccess();
  sub_23B7BBB50();
  swift_endAccess();

  v104 = *(v2 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_viewBoundsSubject);
  v174 = *(v2 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_offerFrameSubject);
  *&v175 = v104;
  v105 = v163;
  sub_23B7826A0(&qword_27E1812E0, &qword_27E181258, &qword_23B7BEA08, v163);
  sub_23B7826A0(&qword_27E1812E8, &qword_27E181260, &qword_23B7BEA10, v105);

  v106 = v155;
  sub_23B7BBB40();
  v107 = v165;
  sub_23B7BCA40();
  v108 = sub_23B7BCA70();
  *&v175 = v108;
  v109 = v166;
  (v147)(v166, 1, 1, v90);
  sub_23B7826A0(&qword_27E1812F0, &qword_27E181208, &qword_23B7BE9B0, v136);
  v110 = v156;
  v111 = v157;
  sub_23B7BBC70();
  sub_23B7826E8(v109, &qword_27E181218, &qword_23B7BE9C0);

  (v145)(v107, v168);
  (*(v158 + 8))(v106, v111);
  v112 = swift_allocObject();
  v113 = v167;
  *(v112 + 16) = v171;
  *(v112 + 24) = v113;
  v114 = swift_allocObject();
  *(v114 + 16) = sub_23B7969EC;
  *(v114 + 24) = v112;
  sub_23B7826A0(&qword_27E1812F8, &qword_27E181210, &qword_23B7BE9B8, v152);

  v115 = v159;
  sub_23B7BBC80();

  (*(v160 + 8))(v110, v115);
  swift_beginAccess();
  sub_23B7BBB50();
  swift_endAccess();

  return v2;
}

void sub_23B7964C4(uint64_t a1)
{
  sub_23B796794(319, &qword_27E1811D8, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_23B796730(319);
    if (v2 <= 0x3F)
    {
      sub_23B796794(319, &qword_27E1811E8, &type metadata for ManagedContentStyle);
      if (v3 <= 0x3F)
      {
        sub_23B796794(319, &qword_27E1811F0, &type metadata for ManagedContentOfferState);
        if (v4 <= 0x3F)
        {
          sub_23B796794(319, &qword_27E1811F8, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_23B796794(319, &qword_27E181200, &type metadata for BinaryCompatibility);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_23B796730(uint64_t a1)
{
  if (!qword_27E1811E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C18, &unk_23B7C0430);
    v1 = sub_23B7BBC40();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1811E0);
    }
  }
}

void sub_23B796794(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23B7BBC40();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23B796834()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B796874()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B7968AC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181358, &qword_23B7BEAB8);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_23B796900()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B796960()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B7969B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_23B796A28()
{
  result = qword_27E181300;
  if (!qword_27E181300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181300);
  }

  return result;
}

double sub_23B796A7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23B779E1C(a1, a2);
  }

  return result;
}

uint64_t sub_23B796A90(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B796AA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23B796AB4(a1, a2);
  }

  return a1;
}

uint64_t sub_23B796AB4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23B796B08()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_23B796B78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  v9 = v1[14];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23B779A44;

  return sub_23B7919D8(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_23B796C50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181308, &qword_23B7BEA58);
  v2 = MEMORY[0x277D84950];
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200438](v0, v3, v1, v2);
}

uint64_t sub_23B796CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181310, &qword_23B7BEA60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B796D14()
{
  v1 = sub_23B7BBA50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_23B796DFC(uint64_t a1)
{
  v4 = *(sub_23B7BBA50() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23B797590;

  return sub_23B792B10(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_23B796F34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B797590;

  return sub_23B7795E8(a1, v4);
}

uint64_t sub_23B797010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B797058()
{
  v1 = sub_23B7BB990();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_23B7BBA50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_23B7971B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23B7BB990() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23B7BBA50() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_23B779A44;

  return sub_23B78F62C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_23B79733C(uint64_t a1)
{
  v2 = type metadata accessor for ManagedAppCellViewModel.Content(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B797398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedAppCellViewModel.Content(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B7973FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedAppCellViewModel.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23B7974B0(uint64_t a1)
{
  sub_23B7BBA50();
  if (v1 <= 0x3F)
  {
    sub_23B797524();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23B797524()
{
  if (!qword_27E181388)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E181388);
    }
  }
}

uint64_t sub_23B79759C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformIconClippingViewModifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0, &qword_23B7BE160);
  swift_storeEnumTagMultiPayload();
  v7 = v6 + v4[5];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = v6 + v4[6];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = v6 + v4[7];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  MEMORY[0x23EEA8730](v6, a1, v4, a2);
  return sub_23B799594(v6, type metadata accessor for PlatformIconClippingViewModifier);
}

uint64_t type metadata accessor for PlatformIconClippingViewModifier(uint64_t a1)
{
  result = qword_27E181390;
  if (!qword_27E181390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B797734@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23B7BBFA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0, &qword_23B7BE160);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23B779B38(v2, &v14 - v9, &qword_27E180DC0, &qword_23B7BE160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23B7BBCE0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23B7BCA10();
    v13 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_23B797934()
{
  v1 = sub_23B7BBFA0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for PlatformIconClippingViewModifier(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_23B7BCA10();
    v7 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    v8 = sub_23B779D74(v6, 0);
    (*(v2 + 8))(v4, v1, v8);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

void sub_23B797A8C()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_27E184ED8 = v1;
}

void *sub_23B797AF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v59 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813B0, &qword_23B7BEC18);
  MEMORY[0x28223BE20](v47);
  v48 = v44 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813B8, &qword_23B7BEC20);
  MEMORY[0x28223BE20](v57);
  v49 = v44 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813C0, &qword_23B7BEC28);
  MEMORY[0x28223BE20](v53);
  v46 = v44 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813C8, &qword_23B7BEC30);
  MEMORY[0x28223BE20](v58);
  v8 = v44 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813D0, &qword_23B7BEC38);
  MEMORY[0x28223BE20](v51);
  v52 = v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813D8, &qword_23B7BEC40);
  MEMORY[0x28223BE20](v10);
  v55 = v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813E0, &qword_23B7BEC48);
  MEMORY[0x28223BE20](v12);
  v54 = v44 - v13;
  v14 = sub_23B7BBFA0();
  v50 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813E8, &qword_23B7BEC50);
  MEMORY[0x28223BE20](v17);
  v56 = v44 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813F0, &qword_23B7BEC58);
  MEMORY[0x28223BE20](v19);
  v21 = v44 - v20;
  if (sub_23B797934())
  {
    v44[0] = v12;
    v44[1] = v10;
    v22 = a1;
    v23 = v2 + *(type metadata accessor for PlatformIconClippingViewModifier(0) + 24);
    v24 = *v23;
    LODWORD(v23) = *(v23 + 8);
    v44[2] = v19;
    v45 = v21;
    if (v23 == 1)
    {
      v60 = v24;
    }

    else
    {

      sub_23B7BCA10();
      v27 = v8;
      v28 = sub_23B7BC210();
      sub_23B7BBB00();

      v8 = v27;
      sub_23B7BBF90();
      swift_getAtKeyPath();
      v29 = sub_23B779D74(v24, 0);
      (*(v50 + 8))(v16, v14, v29);
      LOBYTE(v24) = v60;
    }

    v30 = v56;
    if (v24 > 2u)
    {
      if (v24 == 3)
      {
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813F8, &qword_23B7BEC60);
        v37 = v46;
        (*(*(v36 - 8) + 16))(v46, v22, v36);
        v38 = v52;
        *(v37 + *(v53 + 36)) = 256;
        sub_23B779B38(v37, v38, &qword_27E1813C0, &qword_23B7BEC28);
        swift_storeEnumTagMultiPayload();
        sub_23B799200();
        sub_23B79939C();
        v39 = v55;
        sub_23B7BC090();
        sub_23B779B38(v39, v8, &qword_27E1813D8, &qword_23B7BEC40);
        swift_storeEnumTagMultiPayload();
        sub_23B799174();
        sub_23B799480(&qword_27E181468, &qword_27E1813B8, &qword_23B7BEC20, sub_23B799200);
        sub_23B7BC090();
        sub_23B7826E8(v39, &qword_27E1813D8, &qword_23B7BEC40);
        v33 = v37;
        v34 = &qword_27E1813C0;
        v35 = &qword_23B7BEC28;
      }

      else
      {
        v42 = v54;
        sub_23B798658(a1, v54);
        sub_23B779B38(v42, v48, &qword_27E1813E0, &qword_23B7BEC48);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813F8, &qword_23B7BEC60);
        sub_23B7826A0(&qword_27E181400, &qword_27E1813F8, &qword_23B7BEC60, MEMORY[0x277CE04B0]);
        sub_23B799200();
        v43 = v49;
        sub_23B7BC090();
        sub_23B779B38(v43, v8, &qword_27E1813B8, &qword_23B7BEC20);
        swift_storeEnumTagMultiPayload();
        sub_23B799174();
        sub_23B799480(&qword_27E181468, &qword_27E1813B8, &qword_23B7BEC20, sub_23B799200);
        sub_23B7BC090();
        sub_23B7826E8(v43, &qword_27E1813B8, &qword_23B7BEC20);
        v33 = v42;
        v34 = &qword_27E1813E0;
        v35 = &qword_23B7BEC48;
      }
    }

    else if (v24 >= 2u)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813F8, &qword_23B7BEC60);
      (*(*(v40 - 8) + 16))(v48, a1, v40);
      swift_storeEnumTagMultiPayload();
      sub_23B7826A0(&qword_27E181400, &qword_27E1813F8, &qword_23B7BEC60, MEMORY[0x277CE04B0]);
      sub_23B799200();
      v41 = v49;
      sub_23B7BC090();
      sub_23B779B38(v41, v8, &qword_27E1813B8, &qword_23B7BEC20);
      swift_storeEnumTagMultiPayload();
      sub_23B799174();
      sub_23B799480(&qword_27E181468, &qword_27E1813B8, &qword_23B7BEC20, sub_23B799200);
      sub_23B7BC090();
      v33 = v41;
      v34 = &qword_27E1813B8;
      v35 = &qword_23B7BEC20;
    }

    else
    {
      v31 = v54;
      sub_23B798658(v22, v54);
      sub_23B779B38(v31, v52, &qword_27E1813E0, &qword_23B7BEC48);
      swift_storeEnumTagMultiPayload();
      sub_23B799200();
      sub_23B79939C();
      v32 = v55;
      sub_23B7BC090();
      sub_23B779B38(v32, v8, &qword_27E1813D8, &qword_23B7BEC40);
      swift_storeEnumTagMultiPayload();
      sub_23B799174();
      sub_23B799480(&qword_27E181468, &qword_27E1813B8, &qword_23B7BEC20, sub_23B799200);
      sub_23B7BC090();
      sub_23B7826E8(v32, &qword_27E1813D8, &qword_23B7BEC40);
      v33 = v31;
      v34 = &qword_27E1813E0;
      v35 = &qword_23B7BEC48;
    }

    sub_23B7826E8(v33, v34, v35);
    sub_23B779B38(v30, v45, &qword_27E1813E8, &qword_23B7BEC50);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813F8, &qword_23B7BEC60);
    sub_23B7826A0(&qword_27E181400, &qword_27E1813F8, &qword_23B7BEC60, MEMORY[0x277CE04B0]);
    sub_23B7990BC();
    sub_23B7BC090();
    return sub_23B7826E8(v30, &qword_27E1813E8, &qword_23B7BEC50);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813F8, &qword_23B7BEC60);
    (*(*(v25 - 8) + 16))(v21, a1, v25);
    swift_storeEnumTagMultiPayload();
    sub_23B7826A0(&qword_27E181400, &qword_27E1813F8, &qword_23B7BEC60, MEMORY[0x277CE04B0]);
    sub_23B7990BC();
    return sub_23B7BC090();
  }
}

uint64_t sub_23B798658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v63 = a2;
  v62 = sub_23B7BBCE0();
  v3 = *(v62 - 8);
  v4 = MEMORY[0x28223BE20](v62);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v59 = &v56 - v6;
  v57 = sub_23B7BBEA0();
  MEMORY[0x28223BE20](v57);
  v8 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181470, &qword_23B7BEC88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181428, &qword_23B7BEC68);
  MEMORY[0x28223BE20](v12);
  v64 = &v56 - v13;
  v14 = sub_23B7BBFA0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for PlatformIconClippingViewModifier(0) + 28);
  v61 = v2;
  v19 = v2 + v18;
  v20 = *v19;
  if (*(v19 + 8) == 1)
  {
    LOBYTE(v65) = *v19;
  }

  else
  {

    sub_23B7BCA10();
    v21 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    v22 = sub_23B779D74(v20, 0);
    (*(v15 + 8))(v17, v14, v22);
    LOBYTE(v20) = v65;
  }

  v56 = v8;
  if (v20 <= 1u)
  {
    if (v20)
    {
      v23 = 0x4033400000000000;
    }

    else
    {
      v23 = 0x402A400000000000;
    }

    goto LABEL_13;
  }

  if (v20 != 2)
  {
    v23 = 0x4035E00000000000;
LABEL_13:
    v24 = *&v23;
    goto LABEL_14;
  }

  if (qword_27E180840 != -1)
  {
    swift_once();
  }

  v24 = *&qword_27E184EE0 * 0.21875;
LABEL_14:
  v25 = v64;
  v26 = (v64 + *(v12 + 36));
  v27 = v57;
  v28 = *(v57 + 20);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_23B7BC010();
  v31 = *(*(v30 - 8) + 104);
  v31(v26 + v28, v29, v30);
  *v26 = v24;
  v26[1] = v24;
  *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181438, &qword_23B7BEC70) + 36)) = 256;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813F8, &qword_23B7BEC60);
  (*(*(v32 - 8) + 16))(v25, v58, v32);
  v33 = v56;
  v31(v56 + *(v27 + 20), v29, v30);
  *v33 = v24;
  v33[1] = v24;
  v34 = v59;
  sub_23B797734(v59);
  v35 = v60;
  v36 = v62;
  (*(v3 + 104))(v60, *MEMORY[0x277CDF3D0], v62);
  LOBYTE(v29) = sub_23B7BBCD0();
  v37 = *(v3 + 8);
  v37(v35, v36);
  v37(v34, v36);
  if (v29)
  {
    if (qword_27E180838 != -1)
    {
      swift_once();
    }

    v38 = qword_27E184ED8;
  }

  else
  {
    v39 = [objc_opt_self() secondarySystemFillColor];
  }

  v40 = sub_23B7BC540();
  sub_23B7BBD00();
  sub_23B799530(v33, v11);
  v41 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181478, &qword_23B7BEC90) + 36)];
  v42 = v66;
  *v41 = v65;
  *(v41 + 1) = v42;
  *(v41 + 4) = v67;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181480, &qword_23B7BEC98);
  *&v11[*(v43 + 52)] = v40;
  *&v11[*(v43 + 56)] = 256;
  v44 = sub_23B7BC6A0();
  v46 = v45;
  sub_23B799594(v33, MEMORY[0x277CDFC08]);
  v47 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181488, &qword_23B7BECA0) + 36)];
  *v47 = v44;
  v47[1] = v46;
  v48 = sub_23B7BC6A0();
  v50 = v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813E0, &qword_23B7BEC48);
  v52 = v63;
  v53 = v63 + *(v51 + 36);
  sub_23B782748(v11, v53, &qword_27E181470, &qword_23B7BEC88);
  v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181448, &qword_23B7BEC78) + 36));
  *v54 = v48;
  v54[1] = v50;
  return sub_23B782748(v64, v52, &qword_27E181428, &qword_23B7BEC68);
}

uint64_t sub_23B798D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA0, &unk_23B7BEB90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B798E50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA0, &unk_23B7BEB90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_23B798F18(uint64_t a1)
{
  sub_23B798FFC(319);
  if (v1 <= 0x3F)
  {
    sub_23B799054(319, &qword_27E1813A0, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_23B799054(319, &qword_27E1813A8, &type metadata for BinaryCompatibility);
      if (v3 <= 0x3F)
      {
        sub_23B799054(319, &qword_27E180988, &type metadata for ManagedContentStyle.Style);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23B798FFC(uint64_t a1)
{
  if (!qword_27E180C08)
  {
    sub_23B7BBCE0();
    v1 = sub_23B7BBCF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E180C08);
    }
  }
}

void sub_23B799054(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23B7BBCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23B7990BC()
{
  result = qword_27E181408;
  if (!qword_27E181408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1813E8, &qword_23B7BEC50);
    sub_23B799174();
    sub_23B799480(&qword_27E181468, &qword_27E1813B8, &qword_23B7BEC20, sub_23B799200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181408);
  }

  return result;
}

unint64_t sub_23B799174()
{
  result = qword_27E181410;
  if (!qword_27E181410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1813D8, &qword_23B7BEC40);
    sub_23B799200();
    sub_23B79939C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181410);
  }

  return result;
}

unint64_t sub_23B799200()
{
  result = qword_27E181418;
  if (!qword_27E181418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1813E0, &qword_23B7BEC48);
    sub_23B7992B8();
    sub_23B7826A0(&qword_27E181440, &qword_27E181448, &qword_23B7BEC78, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181418);
  }

  return result;
}

unint64_t sub_23B7992B8()
{
  result = qword_27E181420;
  if (!qword_27E181420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181428, &qword_23B7BEC68);
    sub_23B7826A0(&qword_27E181400, &qword_27E1813F8, &qword_23B7BEC60, MEMORY[0x277CE04B0]);
    sub_23B7826A0(&qword_27E181430, &qword_27E181438, &qword_23B7BEC70, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181420);
  }

  return result;
}

unint64_t sub_23B79939C()
{
  result = qword_27E181450;
  if (!qword_27E181450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1813C0, &qword_23B7BEC28);
    sub_23B7826A0(&qword_27E181400, &qword_27E1813F8, &qword_23B7BEC60, MEMORY[0x277CE04B0]);
    sub_23B7826A0(&qword_27E181458, &qword_27E181460, &qword_23B7BEC80, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181450);
  }

  return result;
}

uint64_t sub_23B799480(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_23B7826A0(&qword_27E181400, &qword_27E1813F8, &qword_23B7BEC60, MEMORY[0x277CE04B0]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B799530(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B7BBEA0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B799594(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23B79965C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA0, &unk_23B7BEB90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B799738(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA0, &unk_23B7BEB90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for Style.CapsuleButtonStyle(uint64_t a1)
{
  result = qword_27E1814A0;
  if (!qword_27E1814A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B79984C(uint64_t a1)
{
  sub_23B798FFC(319);
  if (v1 <= 0x3F)
  {
    sub_23B7998F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B7998F4()
{
  if (!qword_27E1813A0)
  {
    v0 = sub_23B7BBCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1813A0);
    }
  }
}

void sub_23B799980()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 != 1)
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11.origin.x = v4;
    v11.origin.y = v6;
    v11.size.width = v8;
    v11.size.height = v10;
    CGRectGetWidth(v11);
  }
}

void sub_23B799A78()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 16.0;
  if (v1 == 1)
  {
    v2 = 24.0;
  }

  qword_27E184EE8 = *&v2;
}

uint64_t sub_23B799AE4()
{
  v0 = sub_23B7BC4C0();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_23B7BC530();
  qword_27E184EF0 = result;
  return result;
}

void sub_23B799BC4(uint64_t a1)
{
  sub_23B7BC4D0();
  v1 = sub_23B7BC4E0();

  qword_27E184EF8 = v1;
}

uint64_t sub_23B799C08@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  *&v99 = a1;
  v100 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814B0, &qword_23B7BED40);
  MEMORY[0x28223BE20](v87);
  v86 = &v82 - v4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814B8, &qword_23B7BED48);
  MEMORY[0x28223BE20](v85);
  *&v90 = &v82 - v5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814C0, &qword_23B7BED50);
  MEMORY[0x28223BE20](v89);
  v94 = &v82 - v6;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814C8, &qword_23B7BED58);
  MEMORY[0x28223BE20](v92);
  v93 = &v82 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814D0, &qword_23B7BED60);
  MEMORY[0x28223BE20](v91);
  v95 = &v82 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814D8, &qword_23B7BED68);
  MEMORY[0x28223BE20](v88);
  v97 = &v82 - v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814E0, &qword_23B7BED70);
  MEMORY[0x28223BE20](v96);
  v98 = &v82 - v10;
  v11 = sub_23B7BBCE0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v82 - v16;
  v18 = sub_23B7BBFA0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v84 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Style.CapsuleButtonStyle(0);
  v22 = v21;
  v83 = *(v2 + *(v21 + 24));
  if (v83 == 1)
  {
    v23 = v2 + *(v21 + 20);
    v24 = *v23;
    if (*(v23 + 8) == 1)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      v29 = sub_23B7BC4B0();
      v27 = v90;
      goto LABEL_15;
    }

    sub_23B7BCA10();
    v82 = v19;
    v30 = sub_23B7BC210();
    v19 = v82;
    sub_23B7BBB00();

    v31 = v84;
    sub_23B7BBF90();
    swift_getAtKeyPath();
    v32 = sub_23B779D74(v24, 0);
    (*(v19 + 8))(v31, v18, v32);
    if (v101 == 1)
    {
      goto LABEL_14;
    }
  }

LABEL_4:
  sub_23B79A7FC(&qword_27E180DC0, &qword_23B7BE160, MEMORY[0x277CDF3E0], v17);
  (*(v12 + 104))(v15, *MEMORY[0x277CDF3D0], v11);
  v25 = sub_23B7BBCD0();
  v26 = *(v12 + 8);
  v26(v15, v11);
  v26(v17, v11);
  if (v25)
  {
    v27 = v90;
    if (qword_27E180850 != -1)
    {
      swift_once();
    }

    v28 = &qword_27E184EF0;
  }

  else
  {
    v27 = v90;
    if (qword_27E180858 != -1)
    {
      swift_once();
    }

    v28 = &qword_27E184EF8;
  }

  v29 = *v28;

  if (!v83)
  {
LABEL_17:
    v35 = v3 + *(v22 + 20);
    v36 = *v35;
    if (*(v35 + 8) == 1)
    {
      if ((v36 & 1) == 0)
      {
LABEL_19:
        v37 = sub_23B7BC520();
LABEL_22:
        v43 = v37;
        goto LABEL_25;
      }
    }

    else
    {

      sub_23B7BCA10();
      v38 = v19;
      v39 = v3;
      v40 = sub_23B7BC210();
      sub_23B7BBB00();

      v3 = v39;
      v41 = v84;
      sub_23B7BBF90();
      swift_getAtKeyPath();
      v42 = sub_23B779D74(v36, 0);
      (*(v38 + 8))(v41, v18, v42);
      if (v101 != 1)
      {
        goto LABEL_19;
      }
    }

    v37 = sub_23B7BC4B0();
    goto LABEL_22;
  }

LABEL_15:
  v33 = v3 + *(v22 + 20);
  v34 = *v33;
  if (*(v33 + 8) == 1)
  {
    if ((v34 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {

    sub_23B7BCA10();
    v44 = v19;
    v45 = v3;
    v46 = sub_23B7BC210();
    sub_23B7BBB00();

    v3 = v45;
    v19 = v44;
    v47 = v84;
    sub_23B7BBF90();
    swift_getAtKeyPath();
    v48 = sub_23B779D74(v34, 0);
    (*(v44 + 8))(v47, v18, v48);
    if (v101 != 1)
    {
      goto LABEL_17;
    }
  }

  v43 = sub_23B7BC4D0();
LABEL_25:
  v49 = v86;
  sub_23B7BC110();
  v50 = sub_23B7BC260();
  KeyPath = swift_getKeyPath();
  v52 = (v49 + *(v87 + 36));
  *v52 = KeyPath;
  v52[1] = v50;
  sub_23B7BC290();
  sub_23B79AAD4();
  sub_23B7BC3B0();
  sub_23B79ABE4(v49);
  v53 = (v3 + *(v22 + 28));
  v54 = v53[1];
  v99 = *v53;
  v90 = v54;
  v55 = sub_23B7BC220();
  v56 = v27 + *(v85 + 36);
  *v56 = v55;
  *(v56 + 24) = v90;
  *(v56 + 8) = v99;
  *(v56 + 40) = 0;
  sub_23B7BC6A0();
  sub_23B7BBEB0();
  v57 = v94;
  sub_23B782748(v27, v94, &qword_27E1814B8, &qword_23B7BED48);
  v58 = (v57 + *(v89 + 36));
  v59 = v106;
  v58[4] = v105;
  v58[5] = v59;
  v58[6] = v107;
  v60 = v102;
  *v58 = v101;
  v58[1] = v60;
  v61 = v104;
  v58[2] = v103;
  v58[3] = v61;
  v62 = v93;
  sub_23B782748(v57, v93, &qword_27E1814C0, &qword_23B7BED50);
  *(v62 + *(v92 + 36)) = v43;

  LOBYTE(v57) = sub_23B7BC220();
  v63 = v95;
  sub_23B782748(v62, v95, &qword_27E1814C8, &qword_23B7BED58);
  v64 = v63 + *(v91 + 36);
  *v64 = v29;
  *(v64 + 8) = v57;
  v65 = v97;
  v66 = &v97[*(v88 + 36)];
  v67 = *MEMORY[0x277CE0118];
  v68 = sub_23B7BC010();
  (*(*(v68 - 8) + 104))(v66, v67, v68);
  *&v66[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814F8, &qword_23B7BEDB0) + 36)] = 256;
  sub_23B782748(v63, v65, &qword_27E1814D0, &qword_23B7BED60);

  if (sub_23B7BC120())
  {
    v69 = 0.8;
  }

  else
  {
    v69 = 1.0;
  }

  sub_23B7BC730();
  v71 = v70;
  v73 = v72;
  v74 = v65;
  v75 = v98;
  sub_23B782748(v74, v98, &qword_27E1814D8, &qword_23B7BED68);
  v76 = v75 + *(v96 + 36);
  *v76 = v69;
  *(v76 + 8) = v69;
  *(v76 + 16) = v71;
  *(v76 + 24) = v73;
  v77 = sub_23B7BC6E0();
  v78 = sub_23B7BC120();

  v79 = v100;
  sub_23B782748(v75, v100, &qword_27E1814E0, &qword_23B7BED70);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181500, &qword_23B7BEDB8);
  v81 = v79 + *(result + 36);
  *v81 = v77;
  *(v81 + 8) = v78 & 1;
  return result;
}

uint64_t sub_23B79A7FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_23B7BBFA0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_23B779B38(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_23B7BCA10();
    v19 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_23B79AA24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B7BBF30();
  *a1 = result;
  return result;
}

uint64_t sub_23B79AA50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B7BBF30();
  *a1 = result;
  return result;
}

unint64_t sub_23B79AAD4()
{
  result = qword_27E1814E8;
  if (!qword_27E1814E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814B0, &qword_23B7BED40);
    sub_23B79AB8C();
    sub_23B7826A0(&qword_27E180CF0, &qword_27E180CF8, &qword_23B7BE5E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1814E8);
  }

  return result;
}

unint64_t sub_23B79AB8C()
{
  result = qword_27E1814F0;
  if (!qword_27E1814F0)
  {
    sub_23B7BC100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1814F0);
  }

  return result;
}

uint64_t sub_23B79ABE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814B0, &qword_23B7BED40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B79AC50()
{
  result = qword_27E181510;
  if (!qword_27E181510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181500, &qword_23B7BEDB8);
    sub_23B79AD08();
    sub_23B7826A0(&qword_27E181570, &qword_27E181578, &qword_23B7BEDD8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181510);
  }

  return result;
}

unint64_t sub_23B79AD08()
{
  result = qword_27E181518;
  if (!qword_27E181518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814E0, &qword_23B7BED70);
    sub_23B79AD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181518);
  }

  return result;
}

unint64_t sub_23B79AD94()
{
  result = qword_27E181520;
  if (!qword_27E181520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814D8, &qword_23B7BED68);
    sub_23B79AE4C();
    sub_23B7826A0(&qword_27E181568, &qword_27E1814F8, &qword_23B7BEDB0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181520);
  }

  return result;
}

unint64_t sub_23B79AE4C()
{
  result = qword_27E181528;
  if (!qword_27E181528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814D0, &qword_23B7BED60);
    sub_23B79AF04();
    sub_23B7826A0(&qword_27E181558, &qword_27E181560, &qword_23B7BEDD0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181528);
  }

  return result;
}

unint64_t sub_23B79AF04()
{
  result = qword_27E181530;
  if (!qword_27E181530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814C8, &qword_23B7BED58);
    sub_23B79AFBC();
    sub_23B7826A0(&qword_27E181548, &qword_27E181550, &qword_23B7BEDC8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181530);
  }

  return result;
}

unint64_t sub_23B79AFBC()
{
  result = qword_27E181538;
  if (!qword_27E181538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814C0, &qword_23B7BED50);
    sub_23B79B048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181538);
  }

  return result;
}

unint64_t sub_23B79B048()
{
  result = qword_27E181540;
  if (!qword_27E181540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814B8, &qword_23B7BED48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814B0, &qword_23B7BED40);
    sub_23B79AAD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181540);
  }

  return result;
}

_ManagedAppDistribution_SwiftUI::ManagedContentStyle::Style_optional __swiftcall ManagedContentStyle.Style.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_23B79B170()
{
  result = qword_27E181580;
  if (!qword_27E181580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181580);
  }

  return result;
}

uint64_t sub_23B79B1C4()
{
  v1 = *v0;
  sub_23B7BCCD0();
  MEMORY[0x23EEA8F80](v1);
  return sub_23B7BCD10();
}

uint64_t sub_23B79B238(uint64_t a1)
{
  v2 = *v1;
  sub_23B7BCCD0();
  MEMORY[0x23EEA8F80](v2);
  return sub_23B7BCD10();
}

uint64_t sub_23B79B360(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23B79B3F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23B79B4C4()
{
  result = qword_27E181588;
  if (!qword_27E181588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181588);
  }

  return result;
}

double static ManagedContentOfferState.notInstalled.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_23B7BE650;
  *(a1 + 16) = 2;
  return result;
}

void ManagedContentOfferState.init(appState:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23B7BB980();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = sub_23B7BB990();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x277CD49D8])
  {
    v29 = a2;
    (*(v12 + 96))(v14, v11);
    v16 = swift_projectBox();
    v17 = *(v5 + 16);
    v17(v10, v16, v4);
    v17(v8, v10, v4);
    v18 = (*(v5 + 88))(v8, v4);
    if (v18 == *MEMORY[0x277CD49B8])
    {
      (*(v12 + 8))(a1, v11);
      (*(v5 + 8))(v10, v4);

      v19 = 0;
      v20 = 0;
      v21 = 2;
    }

    else if (v18 == *MEMORY[0x277CD49A8])
    {
      (*(v12 + 8))(a1, v11);
      (*(v5 + 8))(v10, v4);

      v20 = 0;
      v21 = 2;
      v19 = 1;
    }

    else if (v18 == *MEMORY[0x277CD49B0])
    {
      v19 = sub_23B7A1250(0xD000000000000019, 0x800000023B7C0B50);
      v20 = v23;
      (*(v12 + 8))(a1, v11);
      (*(v5 + 8))(v10, v4);

      v21 = 1;
    }

    else
    {
      (*(v12 + 8))(a1, v11);
      v24 = *(v5 + 8);
      v24(v10, v4);
      v24(v8, v4);

      v20 = 0;
      v21 = 2;
      v19 = 3;
    }

    a2 = v29;
  }

  else if (v15 == *MEMORY[0x277CD49A0] || v15 == *MEMORY[0x277CD4998])
  {
    (*(v12 + 8))(a1, v11);
    (*(v12 + 96))(v14, v11);
    v19 = *(*v14 + 16);

    v20 = 0;
    v21 = 0;
  }

  else
  {
    if (v15 == *MEMORY[0x277CD49C0])
    {
      v22 = *(v12 + 8);
      v22(a1, v11);
      v22(v14, v11);
    }

    else
    {
      if (v15 == *MEMORY[0x277CD49E0])
      {
        (*(v12 + 8))(a1, v11);
        v20 = 0;
        v21 = 2;
        v19 = 4;
        goto LABEL_18;
      }

      if (v15 == *MEMORY[0x277CD49C8])
      {
        (*(v12 + 8))(a1, v11);
        v20 = 0;
        v19 = 2;
        v21 = 2;
        goto LABEL_18;
      }

      v25 = *MEMORY[0x277CD49D0];
      v26 = *(v12 + 8);
      v27 = v15;
      v26(a1, v11);
      if (v27 != v25)
      {
        v26(v14, v11);
        v20 = 0;
        v21 = 2;
        v19 = 3;
        goto LABEL_18;
      }
    }

    v19 = 0;
    v21 = 0;
    v20 = 1;
  }

LABEL_18:
  *a2 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = v21;
}

void static ManagedContentOfferState.neverInstalled.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

double static ManagedContentOfferState.installed.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_23B7BEF20;
  *(a1 + 16) = 2;
  return result;
}

double static ManagedContentOfferState.noninteractive.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 3;
  *a1 = xmmword_23B7BE660;
  *(a1 + 16) = 2;
  return result;
}

uint64_t static ManagedContentOfferState.installing(progress:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = 0;
  return result;
}

uint64_t static ManagedContentOfferState.custom(title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
}

double static ManagedContentOfferState.unmanaged.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 4;
  *a1 = xmmword_23B7BEF30;
  *(a1 + 16) = 2;
  return result;
}

uint64_t static ManagedContentOfferState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  sub_23B781F9C(v11, v2, v5);
  sub_23B781F9C(v3, v4, v6);
  LOBYTE(v3) = _s31_ManagedAppDistribution_SwiftUI0A17ContentOfferStateV0G0O2eeoiySbAE_AEtFZ_0(&v11, &v8);
  sub_23B776230(v8, v9, v10);
  sub_23B776230(v11, v12, v13);
  return v3 & 1;
}

uint64_t ManagedContentOfferState.hashValue.getter()
{
  sub_23B7BCCD0();
  ManagedContentOfferState.Offer.hash(into:)(v1);
  return sub_23B7BCD10();
}

uint64_t sub_23B79BC00()
{
  sub_23B7BCCD0();
  ManagedContentOfferState.Offer.hash(into:)(v1);
  return sub_23B7BCD10();
}

uint64_t sub_23B79BC98(uint64_t a1)
{
  sub_23B7BCCD0();
  ManagedContentOfferState.Offer.hash(into:)(v2);
  return sub_23B7BCD10();
}

uint64_t sub_23B79BCF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  sub_23B781F9C(v11, v2, v5);
  sub_23B781F9C(v3, v4, v6);
  LOBYTE(v3) = _s31_ManagedAppDistribution_SwiftUI0A17ContentOfferStateV0G0O2eeoiySbAE_AEtFZ_0(&v11, &v8);
  sub_23B776230(v8, v9, v10);
  sub_23B776230(v11, v12, v13);
  return v3 & 1;
}

uint64_t ManagedContentOfferState.Offer.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x23EEA8F80](4);

      return sub_23B7BC830();
    }

    else
    {
      if (v2 <= 1)
      {
        v5 = (v2 | v3) != 0;
      }

      else if (v2 ^ 2 | v3)
      {
        if (v2 ^ 3 | v3)
        {
          v5 = 6;
        }

        else
        {
          v5 = 5;
        }
      }

      else
      {
        v5 = 2;
      }

      return MEMORY[0x23EEA8F80](v5);
    }
  }

  else
  {
    MEMORY[0x23EEA8F80](3);
    if (v3)
    {
      return sub_23B7BCCF0();
    }

    else
    {
      sub_23B7BCCF0();
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v6 = v2;
      }

      else
      {
        v6 = 0;
      }

      return MEMORY[0x23EEA8FA0](v6);
    }
  }
}

uint64_t ManagedContentOfferState.Offer.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_23B7BCCD0();
  ManagedContentOfferState.Offer.hash(into:)(v3);
  return sub_23B7BCD10();
}

uint64_t sub_23B79BED4()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_23B7BCCD0();
  ManagedContentOfferState.Offer.hash(into:)(v3);
  return sub_23B7BCD10();
}

uint64_t sub_23B79BF2C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_23B7BCCD0();
  ManagedContentOfferState.Offer.hash(into:)(v4);
  return sub_23B7BCD10();
}

uint64_t _s31_ManagedAppDistribution_SwiftUI0A17ContentOfferStateV0G0O2eeoiySbAE_AEtFZ_0(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_23B776230(*a1, v3, 0);
      sub_23B776230(v5, v6, 0);
      if (v3)
      {
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v6 & 1) != 0 || *&v2 != *&v5)
      {
        return 0;
      }

      return 1;
    }

    goto LABEL_21;
  }

  if (v4 != 1)
  {
    if (v2 > 1)
    {
      if (v2 ^ 2 | v3)
      {
        if (v2 ^ 3 | v3)
        {
          if (v7 != 2 || v5 != 4 || v6)
          {
            goto LABEL_21;
          }

          sub_23B776230(*a1, v3, 2);
          v11 = 4;
        }

        else
        {
          if (v7 != 2 || v5 != 3 || v6)
          {
            goto LABEL_21;
          }

          sub_23B776230(*a1, v3, 2);
          v11 = 3;
        }
      }

      else
      {
        if (v7 != 2 || v5 != 2 || v6)
        {
          goto LABEL_21;
        }

        sub_23B776230(*a1, v3, 2);
        v11 = 2;
      }

LABEL_37:
      sub_23B776230(v11, 0, 2);
      return 1;
    }

    if (v2 | v3)
    {
      if (v7 == 2 && v5 == 1 && !v6)
      {
        sub_23B776230(*a1, v3, 2);
        v12 = 1;
        sub_23B776230(1, 0, 2);
        return v12;
      }

      goto LABEL_21;
    }

    if (v7 == 2 && !(v6 | v5))
    {
      sub_23B776230(*a1, v3, 2);
      v11 = 0;
      goto LABEL_37;
    }

LABEL_21:
    sub_23B781F9C(v5, v6, v7);
    sub_23B776230(v2, v3, v4);
    sub_23B776230(v5, v6, v7);
    return 0;
  }

  if (v7 != 1)
  {

    goto LABEL_21;
  }

  if (v2 != v5 || v3 != v6)
  {
    v9 = sub_23B7BCC70();
    sub_23B781F9C(v5, v6, 1);
    sub_23B781F9C(v2, v3, 1);
    sub_23B776230(v2, v3, 1);
    sub_23B776230(v5, v6, 1);
    return v9 & 1;
  }

  v12 = 1;
  sub_23B781F9C(*a1, v3, 1);
  sub_23B781F9C(v2, v3, 1);
  sub_23B776230(v2, v3, 1);
  sub_23B776230(v2, v3, 1);
  return v12;
}

unint64_t sub_23B79C238()
{
  result = qword_27E181590;
  if (!qword_27E181590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181590);
  }

  return result;
}

unint64_t sub_23B79C290()
{
  result = qword_27E181598;
  if (!qword_27E181598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181598);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_31_ManagedAppDistribution_SwiftUI0A17ContentOfferStateV0G0O(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B79C328(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23B79C374(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23B79C3B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_23B79C400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815A0, &unk_23B7BF140);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23B79C48C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815A0, &unk_23B7BF140);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_23B79C528(uint64_t a1)
{
  sub_23B79C594(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B79C594(uint64_t a1)
{
  if (!qword_27E1815B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1815C0, &qword_23B7BF270);
    v1 = sub_23B7BC680();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1815B8);
    }
  }
}

uint64_t sub_23B79C60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7BB960();
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

uint64_t sub_23B79C6DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B7BB960();
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

uint64_t sub_23B79C7B4(uint64_t a1)
{
  result = sub_23B7BB960();
  if (v2 <= 0x3F)
  {
    result = sub_23B7BCAD0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B79C86C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 224) = a4;
  *(v5 + 232) = a5;
  *(v5 + 208) = a1;
  *(v5 + 216) = a2;
  v7 = sub_23B7BCAA0();
  *(v5 + 240) = v7;
  *(v5 + 248) = *(v7 - 8);
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  v8 = sub_23B7BB960();
  *(v5 + 272) = v8;
  *(v5 + 280) = *(v8 - 8);
  *(v5 + 288) = swift_task_alloc();
  sub_23B7BB930();
  *(v5 + 296) = swift_task_alloc();
  v9 = sub_23B7BB950();
  *(v5 + 304) = v9;
  *(v5 + 312) = *(v9 - 8);
  *(v5 + 320) = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a3;
  v12 = a3[1];
  *(v5 + 328) = v10;
  *(v5 + 336) = v11;
  *(v5 + 344) = v12;
  *(v5 + 488) = *(a3 + 16);
  v13 = *(a3 + 5);
  *(v5 + 352) = *(a3 + 3);
  *(v5 + 368) = v13;

  return MEMORY[0x2822009F8](sub_23B79CA4C, 0, 0);
}

uint64_t sub_23B79CA4C()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[27];
  v4 = *(v0[35] + 16);
  v4(v0[26], v3, v2);
  v4(v1, v3, v2);
  sub_23B7BB920();
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_23B79CB58;
  v6 = v0[41];
  v7 = v0[37];

  return MEMORY[0x282116828](v6, v7);
}

uint64_t sub_23B79CB58()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = v2[46];
    v3 = v2[47];
    v6 = v2[44];
    v5 = v2[45];

    sub_23B779DD4(v6, v5, v4, v3);
    v7 = sub_23B79D808;
  }

  else
  {
    v7 = sub_23B79CCA0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23B79CCA0()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v8 = v0[31];
  sub_23B7BCA90();
  sub_23B7BCAD0();
  (*(v4 + 16))(v1, v2, v3);
  (*(v8 + 16))(v6, v5, v7);
  v9 = swift_task_alloc();
  v0[50] = v9;
  *v9 = v0;
  v9[1] = sub_23B79CDEC;
  v10 = v0[40];
  v11 = v0[32];

  return MEMORY[0x282116AA8](v10, v11);
}

uint64_t sub_23B79CDEC(uint64_t a1)
{
  v3 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  if (v1)
  {
    v5 = v3[46];
    v4 = v3[47];
    v7 = v3[44];
    v6 = v3[45];

    sub_23B779DD4(v7, v6, v5, v4);
    v8 = sub_23B79D8E8;
  }

  else
  {
    v8 = sub_23B79CF34;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_23B79CF34()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 208);
  *(v3 + *(type metadata accessor for ExtensionHostView.Session(0) + 20)) = v1;

  v4 = sub_23B7BCAB0();
  *(v0 + 424) = v4;
  if (v2)
  {
    v5 = *(v0 + 368);
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v55 = *(v0 + 328);
    v8 = *(v0 + 312);
    v9 = *(v0 + 280);
    v45 = *(v0 + 376);
    v46 = *(v0 + 272);
    v50 = *(v0 + 264);
    v52 = *(v0 + 304);
    v10 = *(v0 + 248);
    v47 = *(v0 + 240);
    v11 = *(v0 + 216);

    sub_23B779DD4(v7, v6, v5, v45);

    v12 = *(v9 + 8);
    v12(v11, v46);
    (*(v10 + 8))(v50, v47);
    (*(v8 + 8))(v55, v52);
    v12(*(v0 + 208), *(v0 + 272));

    v26 = *(v0 + 8);
LABEL_7:

    return v26();
  }

  v13 = v4;
  v58 = *(v0 + 488);
  v15 = *(v0 + 336);
  v14 = *(v0 + 344);
  v57 = *(v0 + 352);
  v53 = *(v0 + 368);

  v16 = [objc_opt_self() interfaceWithProtocol_];
  [v13 setRemoteObjectInterface_];

  [v13 activate];
  v17 = swift_allocObject();
  *(v0 + 432) = v17;
  *(v17 + 16) = 1;
  *(v0 + 104) = sub_23B79EA9C;
  *(v0 + 112) = v17;
  *(v0 + 72) = MEMORY[0x277D85DD0];
  *(v0 + 80) = 1107296256;
  *(v0 + 88) = sub_23B778800;
  *(v0 + 96) = &block_descriptor_1;
  v18 = _Block_copy((v0 + 72));
  v56 = v17;

  v19 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_23B7BCB40();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809F0, &qword_23B7BF250);
  v20 = swift_dynamicCast();
  *(v0 + 489) = v20;
  v21 = *(v0 + 200);
  *(v0 + 440) = v21;
  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  sub_23B7BB7B0();
  swift_allocObject();
  sub_23B7BB7A0();
  *(v0 + 16) = v15;
  *(v0 + 24) = v14;
  *(v0 + 32) = v58;
  *(v0 + 56) = v53;
  *(v0 + 40) = v57;
  sub_23B779D80();
  v23 = sub_23B7BB790();
  *(v0 + 448) = v23;
  *(v0 + 456) = v24;
  v25 = *(v0 + 376);
  v51 = *(v0 + 360);
  v54 = *(v0 + 368);
  v48 = *(v0 + 352);
  v28 = v23;
  v29 = v24;

  sub_23B779DD4(v48, v51, v54, v25);
  if (!v22)
  {
    sub_23B779E1C(v28, v29);
    v36 = *(v0 + 424);
    v37 = *(v0 + 328);
    v38 = *(v0 + 312);
    v49 = *(v0 + 304);
    v40 = *(v0 + 272);
    v39 = *(v0 + 280);
    v41 = *(v0 + 264);
    v42 = *(v0 + 240);
    v43 = *(v0 + 248);
    v44 = *(v0 + 216);

    (*(v39 + 8))(v44, v40);
    (*(v43 + 8))(v41, v42);
    (*(v38 + 8))(v37, v49);

    v26 = *(v0 + 8);
    goto LABEL_7;
  }

  v31 = *(v0 + 224);
  v30 = *(v0 + 232);
  swift_unknownObjectRetain();
  *(v0 + 464) = sub_23B7BB820();
  v32 = swift_allocObject();
  v32[2] = v56;
  v32[3] = v13;
  v32[4] = v31;
  v32[5] = v30;
  *(v0 + 152) = sub_23B79EB04;
  *(v0 + 160) = v32;
  *(v0 + 120) = MEMORY[0x277D85DD0];
  *(v0 + 128) = 1107296256;
  *(v0 + 136) = sub_23B778C9C;
  *(v0 + 144) = &block_descriptor_19;
  *(v0 + 472) = _Block_copy((v0 + 120));

  v33 = v13;

  sub_23B7BC900();
  *(v0 + 480) = sub_23B7BC8F0();
  v35 = sub_23B7BC8D0();

  return MEMORY[0x2822009F8](sub_23B79D600, v35, v34);
}

uint64_t sub_23B79D600()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 464);
  v3 = *(v0 + 440);
  v4 = *(v0 + 489);

  if (!v4)
  {
    v3 = 0;
  }

  [v3 setWithManagedAppViewData:v2 reply:v1];
  swift_unknownObjectRelease();
  _Block_release(v1);

  return MEMORY[0x2822009F8](sub_23B79D6B0, 0, 0);
}

uint64_t sub_23B79D6B0()
{
  sub_23B779E1C(v0[56], v0[57]);
  swift_unknownObjectRelease();
  v1 = v0[53];
  v2 = v0[41];
  v3 = v0[39];
  v12 = v0[38];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v7 = v0[30];
  v8 = v0[31];
  v9 = v0[27];

  (*(v4 + 8))(v9, v5);
  (*(v8 + 8))(v6, v7);
  (*(v3 + 8))(v2, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_23B79D808()
{
  v1 = v0[35];

  v2 = *(v1 + 8);
  v3 = v0[34];
  v4 = v0[26];
  v2(v0[27], v3);
  v2(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23B79D8E8()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[27];

  v8 = *(v3 + 8);
  v8(v7, v2);
  (*(v6 + 8))(v4, v5);
  v9 = v0[34];
  v10 = v0[26];
  (*(v1 + 8))(v0[41], v0[38]);
  v8(v10, v9);

  v11 = v0[1];

  return v11();
}

void sub_23B79DA14(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    if (qword_27E180870 != -1)
    {
      swift_once();
    }

    v4 = sub_23B7BBB30();
    __swift_project_value_buffer(v4, qword_27E184F18);
    v5 = a1;
    v6 = sub_23B7BBB10();
    v7 = sub_23B7BCA00();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 134218498;
      v10 = sub_23B7BB7D0();
      v11 = [v10 code];

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = sub_23B7BB7D0();
      v13 = [v12 domain];

      v14 = sub_23B7BC7F0();
      v16 = v15;

      v17 = sub_23B77C020(v14, v16, &v24);

      *(v8 + 14) = v17;
      *(v8 + 22) = 2080;
      v18 = sub_23B7BB7D0();
      v19 = [v18 userInfo];

      sub_23B7BC780();
      v20 = sub_23B7BC790();
      v22 = v21;

      v23 = sub_23B77C020(v20, v22, &v24);

      *(v8 + 24) = v23;
      _os_log_impl(&dword_23B774000, v6, v7, "Failed to create proxy to extension. %ld %s %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EEA96D0](v9, -1, -1);
      MEMORY[0x23EEA96D0](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_23B79DCB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v10 = sub_23B7BBB30();
  __swift_project_value_buffer(v10, qword_27E184F18);
  v11 = sub_23B7BBB10();
  v12 = sub_23B7BCA20();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23B774000, v11, v12, "Set managed app", v13, 2u);
    MEMORY[0x23EEA96D0](v13, -1, -1);
  }

  swift_beginAccess();
  *(a3 + 16) = 0;
  [a4 invalidate];
  return a5(a1, a2);
}

uint64_t sub_23B79DE04(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815C0, &qword_23B7BF270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for ExtensionHostView.Session(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v9 = a1;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815A0, &unk_23B7BF140);
    MEMORY[0x23EEA8900](v10);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      return sub_23B7826E8(v4, &qword_27E1815C0, &qword_23B7BF270);
    }

    else
    {
      sub_23B79E9CC(v4, v8);

      sub_23B7BCAE0();

      return sub_23B79EA30(v8);
    }
  }

  else
  {
    result = sub_23B7BCBA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_23B79DFFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815E8, &unk_23B7BF260);
  __swift_allocate_value_buffer(v0, qword_27E184F00);
  v1 = __swift_project_value_buffer(v0, qword_27E184F00);
  v2 = sub_23B7BB960();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_23B79E09C(uint64_t a1)
{
  v1[8] = a1;
  v2 = sub_23B7BB910();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815E8, &unk_23B7BF260);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_23B7BC900();
  v1[15] = sub_23B7BC8F0();
  v4 = sub_23B7BC8D0();
  v1[16] = v4;
  v1[17] = v3;

  return MEMORY[0x2822009F8](sub_23B79E1D8, v4, v3);
}

uint64_t sub_23B79E1D8()
{
  if (qword_27E180860 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = __swift_project_value_buffer(v0[12], qword_27E184F00);
  v0[18] = v2;
  swift_beginAccess();
  sub_23B79EB10(v2, v1);
  v3 = sub_23B7BB960();
  v0[19] = v3;
  v4 = *(v3 - 8);
  v0[20] = v4;
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_23B7826E8(v0[14], &qword_27E1815E8, &unk_23B7BF260);
    dyld_get_active_platform();
    sub_23B7BB8C0();
    sub_23B7BB900();
    swift_allocObject();
    v0[21] = sub_23B7BB8F0();
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_23B79E494;
    v10 = v0[11];

    return MEMORY[0x2821167C0](v10);
  }

  else
  {
    v5 = v0[14];
    v6 = v0[8];

    (*(v4 + 32))(v6, v5, v3);
    (*(v4 + 56))(v6, 0, 1, v3);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23B79E494()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_23B79E750;
  }

  else
  {
    v5 = sub_23B79E5D0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23B79E5D0()
{

  v1 = sub_23B7BB8E0();
  if (*(v1 + 16))
  {
    (*(v0[20] + 16))(v0[13], v1 + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)), v0[19]);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v0[20];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[13];
  v7 = v0[10];
  v12 = v0[11];
  v9 = v0[8];
  v8 = v0[9];

  (*(v3 + 56))(v6, v2, 1, v4);
  swift_beginAccess();
  sub_23B79EB80(v6, v5);
  swift_endAccess();
  sub_23B79EB10(v5, v9);

  (*(v7 + 8))(v12, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_23B79E750()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

id sub_23B79E804()
{
  v0 = objc_allocWithZone(MEMORY[0x277CC5E68]);

  return [v0 init];
}

uint64_t sub_23B79E844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B79E988(&qword_27E1815E0, "i");

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23B79E8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B79E988(&qword_27E1815E0, "i");

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23B79E944(uint64_t a1)
{
  sub_23B79E988(&qword_27E1815E0, "i");
  sub_23B7BC1C0();
  __break(1u);
}

uint64_t sub_23B79E988(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExtensionHostView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B79E9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionHostView.Session(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B79EA30(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionHostView.Session(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B79EABC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B79EB10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815E8, &unk_23B7BF260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B79EB80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815E8, &unk_23B7BF260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
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

__n128 RemoteWrapperView.init(configuration:height:offerFrame:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>)
{
  v33 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815C0, &qword_23B7BF270);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = *a1;
  v18 = a1[1];
  v19 = *(a1 + 16);
  v20 = type metadata accessor for ExtensionHostView.Session(0);
  v21 = *(*(v20 - 8) + 56);
  v22 = *(a1 + 3);
  v31 = *(a1 + 5);
  v32 = v22;
  v21(v16, 1, 1, v20);
  sub_23B79EE10(v16, v14);
  sub_23B7BC560();
  sub_23B7826E8(v16, &qword_27E1815C0, &qword_23B7BF270);
  v23 = type metadata accessor for RemoteWrapperView(0);
  v24 = a5 + v23[7];
  *v24 = v17;
  *(v24 + 1) = v18;
  v24[16] = v19;
  v25 = v32;
  *(v24 + 40) = v31;
  *(v24 + 24) = v25;
  v26 = a5 + v23[5];
  v27 = v33;
  *v26 = a2;
  *(v26 + 1) = v27;
  *(v26 + 2) = a6;
  v28 = a5 + v23[6];
  v29 = *(a4 + 16);
  *v28 = *a4;
  *(v28 + 1) = v29;
  result = *(a4 + 32);
  *(v28 + 2) = result;
  return result;
}

uint64_t sub_23B79EE10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815C0, &qword_23B7BF270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RemoteWrapperView(uint64_t a1)
{
  result = qword_27E181600;
  if (!qword_27E181600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoteWrapperView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RemoteWrapperView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F0, &qword_23B7BF278);
  sub_23B7BC590();
  sub_23B79FF74(v1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_23B79FFDC(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F8, &qword_23B7BF290) + 36));
  sub_23B7BBDE0();
  result = sub_23B7BC910();
  *v8 = &unk_23B7BF288;
  v8[1] = v7;
  return result;
}

uint64_t sub_23B79F00C(uint64_t a1)
{
  v1[9] = a1;
  v2 = type metadata accessor for RemoteWrapperView(0);
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v1[12] = *(v3 + 64);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815C0, &qword_23B7BF270);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815E8, &unk_23B7BF260);
  v4 = swift_task_alloc();
  v1[17] = v4;
  v5 = sub_23B7BB960();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = sub_23B7BC900();
  v1[23] = sub_23B7BC8F0();
  v6 = swift_task_alloc();
  v1[24] = v6;
  *v6 = v1;
  v6[1] = sub_23B79F214;

  return sub_23B79E09C(v4);
}

uint64_t sub_23B79F214()
{
  v2 = *v1;
  v2[25] = v0;

  v4 = sub_23B7BC8D0();
  v2[26] = v4;
  v2[27] = v3;
  if (v0)
  {
    v5 = sub_23B79F92C;
  }

  else
  {
    v5 = sub_23B79F374;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23B79F374()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    v4 = &qword_27E1815E8;
    v5 = &unk_23B7BF260;
    v6 = v3;
LABEL_8:
    sub_23B7826E8(v6, v4, v5);

    v32 = *(v0 + 8);

    return v32();
  }

  v7 = *(v0 + 128);
  (*(v2 + 32))(*(v0 + 168), v3, v1);
  *(v0 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F0, &qword_23B7BF278);
  sub_23B7BC570();
  v8 = type metadata accessor for ExtensionHostView.Session(0);
  *(v0 + 232) = v8;
  v9 = *(v8 - 8);
  *(v0 + 240) = v9;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v31 = *(v0 + 128);
    (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));

    v4 = &qword_27E1815C0;
    v5 = &qword_23B7BF270;
    v6 = v31;
    goto LABEL_8;
  }

  v11 = *(v0 + 160);
  v10 = *(v0 + 168);
  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = *(v0 + 104);
  v15 = *(v0 + 80);
  v16 = *(v0 + 88);
  v17 = *(v0 + 72);
  sub_23B7826E8(*(v0 + 128), &qword_27E1815C0, &qword_23B7BF270);
  (*(v13 + 16))(v11, v10, v12);
  v18 = v17 + *(v15 + 28);
  v19 = *(v18 + 8);
  v20 = *(v18 + 16);
  v21 = *(v18 + 24);
  v22 = *(v18 + 32);
  v23 = *(v18 + 40);
  v24 = *(v18 + 48);
  *(v0 + 16) = *v18;
  *(v0 + 24) = v19;
  *(v0 + 32) = v20;
  *(v0 + 40) = v21;
  *(v0 + 48) = v22;
  *(v0 + 56) = v23;
  *(v0 + 64) = v24;
  sub_23B79FF74(v17, v14);
  v25 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v26 = swift_allocObject();
  sub_23B79FFDC(v14, v26 + v25);

  sub_23B77CCF4(v21, v22, v23, v24);
  v27 = swift_task_alloc();
  *(v0 + 248) = v27;
  *v27 = v0;
  v27[1] = sub_23B79F6D4;
  v28 = *(v0 + 160);
  v29 = *(v0 + 120);

  return sub_23B79C86C(v29, v28, (v0 + 16), sub_23B7A0F20, v26);
}

uint64_t sub_23B79F6D4()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_23B79FC40;
  }

  else
  {
    v5 = sub_23B79F7E8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23B79F7E8()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v7 = v0[14];
  v6 = v0[15];

  (*(v2 + 56))(v6, 0, 1, v1);
  sub_23B79EE10(v6, v7);
  sub_23B7BC580();
  sub_23B7826E8(v6, &qword_27E1815C0, &qword_23B7BF270);
  (*(v5 + 8))(v3, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_23B79F92C()
{
  v25 = v0;

  v1 = *(v0 + 200);
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v2 = sub_23B7BBB30();
  __swift_project_value_buffer(v2, qword_27E184F18);
  v3 = v1;
  v4 = sub_23B7BBB10();
  v5 = sub_23B7BCA00();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v6 = 134218498;
    v7 = sub_23B7BB7D0();
    v8 = [v7 code];

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    v9 = sub_23B7BB7D0();
    v10 = [v9 domain];

    v11 = sub_23B7BC7F0();
    v13 = v12;

    v14 = sub_23B77C020(v11, v13, &v24);

    *(v6 + 14) = v14;
    *(v6 + 22) = 2080;
    v15 = sub_23B7BB7D0();
    v16 = [v15 userInfo];

    sub_23B7BC780();
    v17 = sub_23B7BC790();
    v19 = v18;

    v20 = sub_23B77C020(v17, v19, &v24);

    *(v6 + 24) = v20;
    _os_log_impl(&dword_23B774000, v4, v5, "Failed to create session. %ld %s %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v23, -1, -1);
    MEMORY[0x23EEA96D0](v6, -1, -1);
  }

  else
  {
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_23B79FC40()
{
  v28 = v0;
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];

  (*(v3 + 8))(v1, v2);
  v4 = v0[32];
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v5 = sub_23B7BBB30();
  __swift_project_value_buffer(v5, qword_27E184F18);
  v6 = v4;
  v7 = sub_23B7BBB10();
  v8 = sub_23B7BCA00();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v9 = 134218498;
    v10 = sub_23B7BB7D0();
    v11 = [v10 code];

    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    v12 = sub_23B7BB7D0();
    v13 = [v12 domain];

    v14 = sub_23B7BC7F0();
    v16 = v15;

    v17 = sub_23B77C020(v14, v16, &v27);

    *(v9 + 14) = v17;
    *(v9 + 22) = 2080;
    v18 = sub_23B7BB7D0();
    v19 = [v18 userInfo];

    sub_23B7BC780();
    v20 = sub_23B7BC790();
    v22 = v21;

    v23 = sub_23B77C020(v20, v22, &v27);

    *(v9 + 24) = v23;
    _os_log_impl(&dword_23B774000, v7, v8, "Failed to create session. %ld %s %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v26, -1, -1);
    MEMORY[0x23EEA96D0](v9, -1, -1);
  }

  else
  {
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_23B79FF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWrapperView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B79FFDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWrapperView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B7A0040()
{
  v2 = *(type metadata accessor for RemoteWrapperView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B797590;

  return sub_23B79F00C(v0 + v3);
}

void sub_23B7A0128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v3 = sub_23B7BC740();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23B7BC760();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RemoteWrapperView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_23B7BB780();
  swift_allocObject();
  sub_23B7BB770();
  sub_23B779EFC();
  sub_23B7BB760();
  v35 = v11;
  v36 = v9;
  v37 = v7;

  v13 = aBlock;
  v47 = v44;
  v48 = v45;
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v38 = v6;
  v14 = sub_23B7BBB30();
  __swift_project_value_buffer(v14, qword_27E184F18);
  v15 = sub_23B7BBB10();
  v16 = sub_23B7BC9F0();
  v17 = v5;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v18 = 136315138;
    v20 = sub_23B7BC980();
    v22 = sub_23B77C020(v20, v21, &aBlock);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_23B774000, v15, v16, "Setting cell bounds %s", v18, 0xCu);
    v23 = __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23EEA96D0](v19, -1, -1, v23);
    MEMORY[0x23EEA96D0](v18, -1, -1);
  }

  v24 = v36;
  v25 = v39;
  v26 = v35;
  sub_23B77C5C8();
  v27 = sub_23B7BCA70();
  sub_23B79FF74(v25, &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v29 = swift_allocObject();
  sub_23B79FFDC(&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  v30 = v29 + ((v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v30 = v13;
  v31 = v48;
  *(v30 + 8) = v47;
  *(v30 + 24) = v31;
  *(&v45 + 1) = sub_23B7A115C;
  v46 = v29;
  aBlock = MEMORY[0x277D85DD0];
  *&v44 = 1107296256;
  *(&v44 + 1) = sub_23B77CEA8;
  *&v45 = &block_descriptor_2;
  v32 = _Block_copy(&aBlock);
  sub_23B7BC750();
  v42 = MEMORY[0x277D84F90];
  sub_23B7A1200(&qword_27E180AC8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AD0, &qword_23B7BDCC0);
  sub_23B77C6E8();
  v33 = v41;
  sub_23B7BCB50();
  MEMORY[0x23EEA8D20](0, v24, v17, v32);
  _Block_release(v32);

  (*(v40 + 8))(v17, v33);
  (*(v37 + 8))(v24, v38);
}

uint64_t sub_23B7A063C(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for RemoteWrapperView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180A08, &qword_23B7BDC40);
  sub_23B7BC670();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E180A10, &qword_23B7BDC48);
  return sub_23B7BC670();
}

uint64_t sub_23B7A0710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F0, &qword_23B7BF278);
  sub_23B7BC590();
  sub_23B79FF74(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_23B79FFDC(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F8, &qword_23B7BF290) + 36));
  sub_23B7BBDE0();
  result = sub_23B7BC910();
  *v8 = &unk_23B7BF308;
  v8[1] = v7;
  return result;
}

uint64_t sub_23B7A085C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F0, &qword_23B7BF278);
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

uint64_t sub_23B7A093C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F0, &qword_23B7BF278);
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

void sub_23B7A0A04(uint64_t a1)
{
  sub_23B7A0AA8(319);
  if (v1 <= 0x3F)
  {
    sub_23B7A0B0C();
    if (v2 <= 0x3F)
    {
      sub_23B7A0B5C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23B7A0AA8(uint64_t a1)
{
  if (!qword_27E181610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1815C0, &qword_23B7BF270);
    v1 = sub_23B7BC5A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E181610);
    }
  }
}

void sub_23B7A0B0C()
{
  if (!qword_27E180990)
  {
    v0 = sub_23B7BC680();
    if (!v1)
    {
      atomic_store(v0, &qword_27E180990);
    }
  }
}

void sub_23B7A0B5C(uint64_t a1)
{
  if (!qword_27E180998)
  {
    type metadata accessor for CGRect(255);
    v1 = sub_23B7BC680();
    if (!v2)
    {
      atomic_store(v1, &qword_27E180998);
    }
  }
}

unint64_t sub_23B7A0BB8()
{
  result = qword_27E181618;
  if (!qword_27E181618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1815F8, &qword_23B7BF290);
    sub_23B7A1200(&qword_27E1815D8, type metadata accessor for ExtensionHostView, &unk_23B7BF1F0);
    sub_23B7A1200(&qword_27E181620, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181618);
  }

  return result;
}

uint64_t sub_23B7A0CA4()
{
  v2 = *(type metadata accessor for RemoteWrapperView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B779A44;

  return sub_23B79F00C(v0 + v3);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for RemoteWrapperView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for ExtensionHostView.Session(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_23B7BB960();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F0, &qword_23B7BF278);

  v7 = v0 + v3 + *(v1 + 28);

  if (*(v7 + 32) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_23B7A0F20(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RemoteWrapperView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_23B7A0128(a1, a2, v6);
}

uint64_t sub_23B7A0FA0()
{
  v1 = type metadata accessor for RemoteWrapperView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for ExtensionHostView.Session(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_23B7BB960();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F0, &qword_23B7BF278);

  v7 = v0 + v3 + *(v1 + 28);

  if (*(v7 + 32) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 40, v2 | 7);
}

uint64_t sub_23B7A115C()
{
  v1 = *(type metadata accessor for RemoteWrapperView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23B7A063C(v0 + v2, v3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B7A1200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B7A1250(uint64_t a1, uint64_t a2)
{
  v2 = sub_23B7BB810();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B7BB7F0();
  v6 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v7 = sub_23B7BB800();
  v8 = [v6 initWithURL_];

  (*(v3 + 8))(v5, v2);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_23B7BB7C0();

  return v10;
}

uint64_t ManagedAppViewConfiguration.init(id:style:title:subtitle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = v8;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_23B7A1450(uint64_t a1)
{
  v2 = sub_23B7A3F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7A148C(uint64_t a1)
{
  v2 = sub_23B7A3F00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B7A14C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a3;
  v23[1] = a4;
  v23[2] = a5;
  v27 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1816D8, &qword_23B7BF800);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v28 = v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1816E0, &qword_23B7BF808);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1816E8, &qword_23B7BF810);
  v24 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1816F0, &qword_23B7BF818);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7A3E58();
  v18 = v31;
  sub_23B7BCD50();
  if (!v18)
  {
    v33 = 0;
    sub_23B7A3F54();
    sub_23B7BCC30();
    (*(v24 + 8))(v13, v11);
    return (*(v15 + 8))(v17, v14);
  }

  if (v18 == 1)
  {
    v34 = 1;
    sub_23B7A3F00();
    sub_23B7BCC30();
    (*(v25 + 8))(v10, v26);
    return (*(v15 + 8))(v17, v14);
  }

  v37 = 2;
  sub_23B7A3EAC();
  v20 = v28;
  sub_23B7BCC30();
  v36 = 0;
  v21 = v30;
  v22 = v32;
  sub_23B7BCC40();
  if (!v22)
  {
    v35 = 1;
    sub_23B7BCC40();
  }

  (*(v29 + 8))(v20, v21);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_23B7A18D4()
{
  v1 = 7368801;
  if (*v0 != 1)
  {
    v1 = 0x6D6F74737563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616B636170;
  }
}

uint64_t sub_23B7A1924@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23B7A358C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23B7A194C(uint64_t a1)
{
  v2 = sub_23B7A3E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7A1988(uint64_t a1)
{
  v2 = sub_23B7A3E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B7A19E4()
{
  if (*v0)
  {
    return 0x656C746974627573;
  }

  else
  {
    return 0x656C746974;
  }
}

void sub_23B7A1A1C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_23B7BCC70() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_23B7BCC70();

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
}

uint64_t sub_23B7A1B00(uint64_t a1)
{
  v2 = sub_23B7A3EAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7A1B3C(uint64_t a1)
{
  v2 = sub_23B7A3EAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B7A1B78(uint64_t a1)
{
  v2 = sub_23B7A3F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7A1BB4(uint64_t a1)
{
  v2 = sub_23B7A3F54();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_23B7A1BF0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_23B7A36A0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_23B7A1C40()
{
  v1 = *(v0 + 8);
  sub_23B7BCCD0();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x23EEA8F80](2);
      sub_23B7BC830();
      sub_23B7BC830();
      return sub_23B7BCD10();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x23EEA8F80](v2);
  return sub_23B7BCD10();
}

uint64_t sub_23B7A1CDC(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x23EEA8F80](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x23EEA8F80](v3);
  }

  MEMORY[0x23EEA8F80](2);
  sub_23B7BC830();

  return sub_23B7BC830();
}

uint64_t sub_23B7A1D84(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_23B7BCCD0();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x23EEA8F80](2);
      sub_23B7BC830();
      sub_23B7BC830();
      return sub_23B7BCD10();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x23EEA8F80](v3);
  return sub_23B7BCD10();
}

uint64_t sub_23B7A1E1C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  v10 = *a1 == *a2 && v3 == v4;
  if (v10 || (v11 = sub_23B7BCC70(), result = 0, (v11 & 1) != 0))
  {
    if (v6 == v8 && v7 == v9)
    {
      return 1;
    }

    return sub_23B7BCC70();
  }

  return result;
}

uint64_t sub_23B7A1EF8()
{
  v1 = 0x656C797473;
  if (*v0 != 1)
  {
    v1 = 0x746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E65746E6F63;
  }
}

uint64_t sub_23B7A1F54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23B7A3D3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23B7A1F88(uint64_t a1)
{
  v2 = sub_23B7A2224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7A1FC4(uint64_t a1)
{
  v2 = sub_23B7A2224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ManagedAppViewConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181628, &qword_23B7BF310);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v18 = *(v1 + 16);
  v8 = *(v1 + 24);
  v14 = *(v1 + 40);
  v15 = v8;
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_23B7A2224();
  sub_23B7BCD50();
  LOBYTE(v16) = 0;
  sub_23B7BCC40();
  if (!v2)
  {
    LOBYTE(v16) = v18;
    v19 = 1;
    sub_23B7A2278();
    sub_23B7BCC50();
    v16 = v15;
    v17 = v14;
    v19 = 2;
    sub_23B7A22CC();
    sub_23B7BCC50();
  }

  return (*(v5 + 8))(v7, v12);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23B7A2224()
{
  result = qword_27E181630;
  if (!qword_27E181630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181630);
  }

  return result;
}

unint64_t sub_23B7A2278()
{
  result = qword_27E181638;
  if (!qword_27E181638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181638);
  }

  return result;
}

unint64_t sub_23B7A22CC()
{
  result = qword_27E181640;
  if (!qword_27E181640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181640);
  }

  return result;
}

void ManagedAppViewConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181648, &qword_23B7BF318);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7A2224();
  sub_23B7BCD30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v17[0]) = 0;
    v9 = sub_23B7BCC00();
    v11 = v10;
    v12 = v9;
    v19 = 1;
    sub_23B7A25A4();
    sub_23B7BCC10();
    v18 = LOBYTE(v17[0]);
    v19 = 2;
    sub_23B7A25F8();
    sub_23B7BCC10();
    (*(v6 + 8))(v8, v5);
    v13 = v17[0];
    v14 = v17[1];
    v15 = v17[2];
    v16 = v17[3];
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v18;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
    *(a2 + 48) = v16;

    sub_23B77CCF4(v13, v14, v15, v16);
    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_23B779DD4(v13, v14, v15, v16);
  }
}

unint64_t sub_23B7A25A4()
{
  result = qword_27E181650;
  if (!qword_27E181650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181650);
  }

  return result;
}

unint64_t sub_23B7A25F8()
{
  result = qword_27E181658;
  if (!qword_27E181658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181658);
  }

  return result;
}

uint64_t sub_23B7A26C0()
{
  if (*v0)
  {
    return 0x617246726566666FLL;
  }

  else
  {
    return 0x6769654877656976;
  }
}

void sub_23B7A2700(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x6769654877656976 && a2 == 0xEA00000000007468 || (sub_23B7BCC70() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x617246726566666FLL && a2 == 0xEA0000000000656DLL)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_23B7BCC70();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_23B7A27E4(uint64_t a1)
{
  v2 = sub_23B7A2A24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7A2820(uint64_t a1)
{
  v2 = sub_23B7A2A24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ManagedAppReply.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181660, &qword_23B7BF320);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11 = *(v1 + 3);
  v12 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7A2A24();
  sub_23B7BCD50();
  *&v13 = v8;
  v15 = 0;
  sub_23B7A2A78();
  sub_23B7BCC50();
  if (!v2)
  {
    v13 = v12;
    v14 = v11;
    v15 = 1;
    type metadata accessor for CGRect(0);
    sub_23B7A3028(&qword_27E181678, MEMORY[0x277CBF268]);
    sub_23B7BCC50();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_23B7A2A24()
{
  result = qword_27E181668;
  if (!qword_27E181668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181668);
  }

  return result;
}

unint64_t sub_23B7A2A78()
{
  result = qword_27E181670;
  if (!qword_27E181670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181670);
  }

  return result;
}

uint64_t ManagedAppReply.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x23EEA8FA0](*&v2);

  return sub_23B7A2F50(v3, v4, v5, v6);
}

uint64_t ManagedAppReply.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_23B7BCCD0();
  v6 = 0.0;
  if (v2 != 0.0)
  {
    v6 = v2;
  }

  MEMORY[0x23EEA8FA0](*&v6);
  sub_23B7A2F50(v1, v3, v4, v5);
  return sub_23B7BCD10();
}

void ManagedAppReply.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181680, &qword_23B7BF328);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7A2A24();
  sub_23B7BCD30();
  if (!v2)
  {
    v13 = 0;
    sub_23B7A2FD4();
    sub_23B7BCC10();
    v9 = *&v12[0];
    type metadata accessor for CGRect(0);
    v13 = 1;
    sub_23B7A3028(&qword_27E181690, MEMORY[0x277CBF280]);
    sub_23B7BCC10();
    (*(v6 + 8))(v8, v5);
    v10 = v12[0];
    v11 = v12[1];
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 24) = v11;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23B7A2E0C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x23EEA8FA0](*&v2);

  return sub_23B7A2F50(v3, v4, v5, v6);
}

uint64_t sub_23B7A2E84(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_23B7BCCD0();
  v7 = 0.0;
  if (v3 != 0.0)
  {
    v7 = v3;
  }

  MEMORY[0x23EEA8FA0](*&v7);
  sub_23B7A2F50(v2, v4, v5, v6);
  return sub_23B7BCD10();
}

uint64_t sub_23B7A2F50(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x23EEA8FA0](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x23EEA8FA0](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x23EEA8FA0](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x23EEA8FA0](*&v9);
}

unint64_t sub_23B7A2FD4()
{
  result = qword_27E181688;
  if (!qword_27E181688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181688);
  }

  return result;
}

uint64_t sub_23B7A3028(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B7A3070()
{
  result = qword_27E181698;
  if (!qword_27E181698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181698);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_31_ManagedAppDistribution_SwiftUI0aB17ViewConfigurationV7ContentO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23B7A30F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23B7A3140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23B7A31B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B7A31D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_23B7A3224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B7A3278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_23B7A32D8(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_23B7A3328()
{
  result = qword_27E1816A0;
  if (!qword_27E1816A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816A0);
  }

  return result;
}

unint64_t sub_23B7A3380()
{
  result = qword_27E1816A8;
  if (!qword_27E1816A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816A8);
  }

  return result;
}

unint64_t sub_23B7A33D8()
{
  result = qword_27E1816B0;
  if (!qword_27E1816B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816B0);
  }

  return result;
}

unint64_t sub_23B7A3430()
{
  result = qword_27E1816B8;
  if (!qword_27E1816B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816B8);
  }

  return result;
}

unint64_t sub_23B7A3488()
{
  result = qword_27E1816C0;
  if (!qword_27E1816C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816C0);
  }

  return result;
}

unint64_t sub_23B7A34E0()
{
  result = qword_27E1816C8;
  if (!qword_27E1816C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816C8);
  }

  return result;
}

unint64_t sub_23B7A3538()
{
  result = qword_27E1816D0;
  if (!qword_27E1816D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816D0);
  }

  return result;
}

uint64_t sub_23B7A358C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616B636170 && a2 == 0xE700000000000000;
  if (v4 || (sub_23B7BCC70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7368801 && a2 == 0xE300000000000000 || (sub_23B7BCC70() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23B7BCC70();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_23B7A36A0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181718, &qword_23B7BF820);
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181720, &qword_23B7BF828);
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181728, &qword_23B7BF830);
  v33 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181730, &qword_23B7BF838);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_23B7A3E58();
  v16 = v39;
  sub_23B7BCD30();
  if (!v16)
  {
    v32 = v8;
    v17 = v38;
    v39 = v12;
    v18 = sub_23B7BCC20();
    v19 = v18;
    v20 = *(v18 + 16);
    if (!v20 || ((v21 = *(v18 + 32), v20 == 1) ? (v22 = v21 == 3) : (v22 = 1), v22))
    {
      v23 = sub_23B7BCB80();
      swift_allocError();
      v8 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181738, &unk_23B7BF840);
      *v8 = &type metadata for ManagedAppViewConfiguration.Content;
      sub_23B7BCBF0();
      sub_23B7BCB70();
      (*(*(v23 - 8) + 104))(v8, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v39 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else if (*(v18 + 32))
    {
      if (v21 == 1)
      {
        v42 = 1;
        sub_23B7A3F00();
        sub_23B7BCBE0();
        v26 = v39;
        (*(v35 + 8))(v7, v34);
        (*(v26 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v8 = 0;
      }

      else
      {
        v45 = 2;
        sub_23B7A3EAC();
        sub_23B7BCBE0();
        v27 = v39;
        v44 = 0;
        v28 = sub_23B7BCC00();
        v29 = v17;
        v8 = v28;
        v34 = v11;
        v35 = v19;
        v43 = 1;
        v30 = v29;
        sub_23B7BCC00();
        (*(v36 + 8))(v30, v37);
        (*(v27 + 8))(v14, v34);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v41 = 0;
      sub_23B7A3F54();
      sub_23B7BCBE0();
      (*(v33 + 8))(v10, v32);
      (*(v39 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v8 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v40);
  return v8;
}

uint64_t sub_23B7A3D3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044;
  if (v4 || (sub_23B7BCC70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_23B7BCC70() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23B7BCC70();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_23B7A3E58()
{
  result = qword_27E1816F8;
  if (!qword_27E1816F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816F8);
  }

  return result;
}

unint64_t sub_23B7A3EAC()
{
  result = qword_27E181700;
  if (!qword_27E181700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181700);
  }

  return result;
}

unint64_t sub_23B7A3F00()
{
  result = qword_27E181708;
  if (!qword_27E181708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181708);
  }

  return result;
}

unint64_t sub_23B7A3F54()
{
  result = qword_27E181710;
  if (!qword_27E181710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181710);
  }

  return result;
}

uint64_t sub_23B7A3FA8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23B7A4038(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for LogKey.Prefix(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogKey.Prefix(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23B7A4280()
{
  result = qword_27E181740;
  if (!qword_27E181740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181740);
  }

  return result;
}

unint64_t sub_23B7A42D8()
{
  result = qword_27E181748;
  if (!qword_27E181748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181748);
  }

  return result;
}

unint64_t sub_23B7A4330()
{
  result = qword_27E181750;
  if (!qword_27E181750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181750);
  }

  return result;
}

unint64_t sub_23B7A4388()
{
  result = qword_27E181758;
  if (!qword_27E181758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181758);
  }

  return result;
}

unint64_t sub_23B7A43E0()
{
  result = qword_27E181760;
  if (!qword_27E181760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181760);
  }

  return result;
}

unint64_t sub_23B7A4438()
{
  result = qword_27E181768;
  if (!qword_27E181768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181768);
  }

  return result;
}

unint64_t sub_23B7A4490()
{
  result = qword_27E181770;
  if (!qword_27E181770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181770);
  }

  return result;
}

unint64_t sub_23B7A44E8()
{
  result = qword_27E181778;
  if (!qword_27E181778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181778);
  }

  return result;
}

unint64_t sub_23B7A4540()
{
  result = qword_27E181780;
  if (!qword_27E181780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181780);
  }

  return result;
}

unint64_t sub_23B7A4598()
{
  result = qword_27E181788[0];
  if (!qword_27E181788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E181788);
  }

  return result;
}

void sub_23B7A4634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ManagedAppCellContext(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_23B7A523C(319, &qword_27E180C08, MEMORY[0x277CDF3E0]);
    if (v5 <= 0x3F)
    {
      sub_23B77D9B4(319);
      if (v6 <= 0x3F)
      {
        sub_23B7A523C(319, &qword_27E180C20, MEMORY[0x277CE02A8]);
        if (v7 <= 0x3F)
        {
          sub_23B7A523C(319, &qword_27E181810, MEMORY[0x277CDFA28]);
          if (v8 <= 0x3F)
          {
            sub_23B77DA6C(319);
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B7A4770(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v43 = *(v3 + 84);
  if (v43 <= 0x7FFFFFFF)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = *(v3 + 84);
  }

  v5 = *(sub_23B7BBCE0() - 8);
  v6 = *(v5 + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v46 = v6;
  v7 = *(sub_23B7BB810() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = *(sub_23B7BC050() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  v45 = v11;
  v12 = *(sub_23B7BBE50() - 8);
  v13 = *(v12 + 64);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  v44 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
  result = a2;
  v16 = *(v14 - 8);
  v17 = *(v16 + 84);
  v18 = *(v3 + 64);
  if (v17 <= v4)
  {
    v19 = v4;
  }

  else
  {
    v19 = *(v16 + 84);
  }

  if (v8)
  {
    v20 = v9;
  }

  else
  {
    v20 = v9 + 1;
  }

  v21 = *(v16 + 80);
  if (v20 <= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = v20;
  }

  if (a2)
  {
    v23 = *(v5 + 80) & 0xF8 | 7;
    v24 = ((((((((((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + v23 + 16;
    v25 = *(v7 + 80) & 0xF8 | 7;
    v26 = v46 + v25 + 1;
    v27 = *(v10 + 80) & 0xF8 | 7;
    v28 = v22 + v27 + 1;
    v29 = *(v12 + 80) & 0xF8 | 7;
    v30 = v45 + v29 + 1;
    v31 = v44 + v21 + 1;
    if (a2 <= v19)
    {
      goto LABEL_42;
    }

    v32 = ((v31 + ((v30 + ((v28 + ((v26 + (v24 & ~v23)) & ~v25)) & ~v27)) & ~v29)) & ~v21) + *(*(v14 - 8) + 64);
    v33 = 8 * v32;
    if (v32 > 3)
    {
LABEL_22:
      v34 = *(a1 + v32);
      if (!*(a1 + v32))
      {
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    v35 = ((a2 - v19 + ~(-1 << v33)) >> v33) + 1;
    if (HIWORD(v35))
    {
      v34 = *(a1 + v32);
      if (!v34)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v35 <= 0xFF)
      {
        if (v35 < 2)
        {
LABEL_42:
          if (v4 >= v17)
          {
            if (v43 < 0x7FFFFFFF)
            {
              v42 = *(((a1 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
              if (v42 >= 0xFFFFFFFF)
              {
                LODWORD(v42) = -1;
              }

              return (v42 + 1);
            }

            else
            {
              v41 = *(v3 + 48);

              return v41(a1);
            }
          }

          else
          {
            v39 = v31 + ((v30 + ((v28 + ((v26 + ((a1 + v24) & ~v23)) & ~v25)) & ~v27)) & ~v29);
            v40 = *(v16 + 48);

            return v40(v39 & ~v21);
          }
        }

        goto LABEL_22;
      }

      v34 = *(a1 + v32);
      if (!*(a1 + v32))
      {
        goto LABEL_42;
      }
    }

LABEL_29:
    v36 = (v34 - 1) << v33;
    if (v32 > 3)
    {
      v36 = 0;
    }

    if (v32)
    {
      if (v32 <= 3)
      {
        v37 = ((v31 + ((v30 + ((v28 + ((v26 + (v24 & ~v23)) & ~v25)) & ~v27)) & ~v29)) & ~v21) + *(*(v14 - 8) + 64);
      }

      else
      {
        v37 = 4;
      }

      if (v37 > 2)
      {
        if (v37 == 3)
        {
          v38 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v38 = *a1;
        }
      }

      else if (v37 == 1)
      {
        v38 = *a1;
      }

      else
      {
        v38 = *a1;
      }
    }

    else
    {
      v38 = 0;
    }

    return v19 + (v38 | v36) + 1;
  }

  return result;
}

void sub_23B7A4C64(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v40 = v4;
  v41 = *(v4 + 84);
  if (v41 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v43 = *(sub_23B7BBCE0() - 8);
  v6 = *(v43 + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v44 = v6;
  v7 = *(sub_23B7BB810() - 8);
  v8 = *(v7 + 84);
  v42 = *(v7 + 64);
  v9 = *(sub_23B7BC050() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(sub_23B7BBE50() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0) - 8);
  v14 = *(v13 + 84);
  v15 = *(v4 + 64);
  if (v14 <= v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  v17 = ((((((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = *(v43 + 80) & 0xF8 | 7;
  v19 = *(v7 + 80) & 0xF8 | 7;
  v20 = v44 + v19 + 1;
  v21 = v42;
  if (!v8)
  {
    v21 = v42 + 1;
  }

  if (v21 <= 8)
  {
    v21 = 8;
  }

  v22 = *(v9 + 80) & 0xF8 | 7;
  v23 = v21 + v22 + 1;
  v24 = *(v11 + 80) & 0xF8 | 7;
  v25 = v10 + v24 + 1;
  v26 = *(v13 + 80);
  v27 = v12 + v26 + 1;
  v28 = ((v27 + ((v25 + ((v23 + ((v20 + ((v17 + v18) & ~v18)) & ~v19)) & ~v22)) & ~v24)) & ~v26) + *(v13 + 64);
  if (a3 <= v16)
  {
    v30 = 0;
    v29 = a1;
  }

  else
  {
    v29 = a1;
    if (v28 <= 3)
    {
      v33 = ((a3 - v16 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
      if (HIWORD(v33))
      {
        v30 = 4;
      }

      else
      {
        if (v33 < 0x100)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        if (v33 >= 2)
        {
          v30 = v34;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  if (v16 < a2)
  {
    v31 = ~v16 + a2;
    if (v28 < 4)
    {
      v32 = (v31 >> (8 * v28)) + 1;
      if (v28)
      {
        v35 = v31 & ~(-1 << (8 * v28));
        bzero(v29, v28);
        if (v28 != 3)
        {
          if (v28 == 2)
          {
            *v29 = v35;
            if (v30 > 1)
            {
LABEL_65:
              if (v30 == 2)
              {
                *&v29[v28] = v32;
              }

              else
              {
                *&v29[v28] = v32;
              }

              return;
            }
          }

          else
          {
            *v29 = v31;
            if (v30 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *v29 = v35;
        v29[2] = BYTE2(v35);
      }

      if (v30 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(v29, v28);
      *v29 = v31;
      v32 = 1;
      if (v30 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v30)
    {
      v29[v28] = v32;
    }

    return;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&v29[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *&v29[v28] = 0;
LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!v30)
  {
    goto LABEL_45;
  }

  v29[v28] = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v5 >= v14)
  {
    if (v5 >= a2)
    {
      if (v41 < 0x7FFFFFFF)
      {
        v39 = (&v29[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v39[2] = 0;
          v39[3] = 0;
          *v39 = a2 & 0x7FFFFFFF;
          v39[1] = 0;
        }

        else
        {
          v39[3] = a2 - 1;
        }
      }

      else
      {
        v38 = *(v40 + 56);

        v38(v29, a2);
      }
    }

    else if (((((((((((v15 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      bzero(v29, v17);
      *v29 = ~v5 + a2;
    }
  }

  else
  {
    v36 = v27 + ((v25 + ((v23 + ((v20 + (&v29[v17 + v18] & ~v18)) & ~v19)) & ~v22)) & ~v24);
    v37 = *(v13 + 56);

    v37(v36 & ~v26, a2);
  }
}

void sub_23B7A523C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B7BBCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23B7A52D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  v3 = sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181818, &qword_23B7BFC60);
  swift_getTupleTypeMetadata3();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v4 = sub_23B7BC5D0();
  WitnessTable = swift_getWitnessTable();
  v47 = v4;
  v62 = v4;
  v63 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v45 = sub_23B7BBE70();
  v5 = sub_23B7BBE70();
  v38 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v34 - v8;
  v62 = v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181820, &qword_23B7BFC68);
  v64 = type metadata accessor for OfferView(255);
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181828, &qword_23B7BFC70);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v9 = sub_23B7BC5D0();
  v10 = swift_getWitnessTable();
  v40 = v9;
  v62 = v9;
  v63 = v10;
  v44 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = sub_23B7BC050();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_23B7BC0A0();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = &v34 - v21;
  v22 = a1;
  sub_23B79A7D4(v20);
  LOBYTE(a1) = sub_23B7BC040();
  (*(v18 + 8))(v20, v17);
  v23 = MEMORY[0x277CDF918];
  if (a1)
  {
    sub_23B7A5B9C(v22, v14);
    v24 = v40;
    v62 = v40;
    v63 = v44;
    swift_getOpaqueTypeConformance2();
    sub_23B7BB698();
    v25 = *(v35 + 8);
    v25(v14, OpaqueTypeMetadata2);
    sub_23B7BB698();
    v62 = v47;
    v63 = WitnessTable;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v51 = v23;
    v48 = swift_getWitnessTable();
    v49 = v23;
    swift_getWitnessTable();
    sub_23B7B8A34(v14, OpaqueTypeMetadata2);
    v25(v14, OpaqueTypeMetadata2);
    v25(v16, OpaqueTypeMetadata2);
  }

  else
  {
    v26 = v37;
    sub_23B7A6024(v22, v37);
    v62 = v47;
    v63 = WitnessTable;
    v60 = swift_getOpaqueTypeConformance2();
    v61 = v23;
    v58 = swift_getWitnessTable();
    v59 = v23;
    swift_getWitnessTable();
    v27 = v36;
    sub_23B7BB698();
    v28 = *(v38 + 8);
    v28(v26, v5);
    sub_23B7BB698();
    v24 = v40;
    v62 = v40;
    v63 = v44;
    swift_getOpaqueTypeConformance2();
    sub_23B7B8B2C(v26, OpaqueTypeMetadata2, v5);
    v28(v26, v5);
    v28(v27, v5);
  }

  v62 = v24;
  v63 = v44;
  v29 = swift_getOpaqueTypeConformance2();
  v62 = v47;
  v63 = WitnessTable;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v23;
  v54 = swift_getWitnessTable();
  v55 = v23;
  v30 = swift_getWitnessTable();
  v52 = v29;
  v53 = v30;
  v31 = v41;
  swift_getWitnessTable();
  v32 = v43;
  sub_23B7BB698();
  return (*(v39 + 8))(v32, v31);
}

uint64_t sub_23B7A5B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v28 = a2;
  v3 = sub_23B7BC150();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  v32 = sub_23B7BBE70();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181820, &qword_23B7BFC68);
  v34 = type metadata accessor for OfferView(255);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181828, &qword_23B7BFC70);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v5 = sub_23B7BC5D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  WitnessTable = swift_getWitnessTable();
  v32 = v5;
  v33 = WitnessTable;
  v21 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = *(v23 + 24);
  v29 = v22;
  v30 = v17;
  v31 = v24;
  sub_23B7BBFE0();
  sub_23B7BC5C0();
  v18 = v25;
  sub_23B7BC140();
  sub_23B7BC430();
  (*(v26 + 8))(v18, v27);
  (*(v6 + 8))(v8, v5);
  v32 = v5;
  v33 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  sub_23B7BB698();
  v19 = *(v11 + 8);
  v19(v14, OpaqueTypeMetadata2);
  sub_23B7BB698();
  return (v19)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_23B7A6024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v29 = a2;
  v3 = sub_23B7BC150();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v25 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181818, &qword_23B7BFC60);
  swift_getTupleTypeMetadata3();
  sub_23B7BC6F0();
  v21[1] = swift_getWitnessTable();
  v5 = sub_23B7BC5D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - v7;
  WitnessTable = swift_getWitnessTable();
  v35 = v5;
  v36 = WitnessTable;
  v21[0] = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = v21 - v12;
  v14 = sub_23B7BBE70();
  v22 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  sub_23B7BBFD0();
  v17 = *(v24 + 24);
  v30 = v23;
  v31 = v17;
  v32 = v26;
  sub_23B7BC5C0();
  v18 = v25;
  sub_23B7BC140();
  sub_23B7BC430();
  (*(v27 + 8))(v18, v28);
  (*(v6 + 8))(v8, v5);
  sub_23B7BC240();
  v35 = v5;
  v36 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23B7BC480();
  (*(v11 + 8))(v13, OpaqueTypeMetadata2);
  sub_23B7BC230();
  v33 = OpaqueTypeConformance2;
  v34 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_23B7BC480();
  return (*(v22 + 8))(v16, v14);
}

uint64_t sub_23B7A64E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_23B7BC1F0();
  v3 = sub_23B7BBE70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  v7 = sub_23B7BBE70();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = sub_23B7BBE70();
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  type metadata accessor for PlatformIconClippingViewModifier(255);
  v13 = sub_23B7BBE70();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x28223BE20](v13);
  v25 = &v25 - v14;
  v15 = *(a1 + 24);
  sub_23B7BC420();
  v16 = sub_23B7AB020(&qword_27E180C68, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v37 = v15;
  v38 = v16;
  WitnessTable = swift_getWitnessTable();
  sub_23B7BC450();
  (*(v4 + 8))(v6, v3);
  if (qword_27E180840 != -1)
  {
    swift_once();
  }

  sub_23B7BC6A0();
  v18 = sub_23B781950();
  v35 = WitnessTable;
  v36 = v18;
  v19 = swift_getWitnessTable();
  sub_23B7BC460();
  (*(v27 + 8))(v9, v7);
  v33 = v19;
  v34 = MEMORY[0x277CDF678];
  v20 = swift_getWitnessTable();
  v21 = v25;
  sub_23B79759C(v10, v20);
  (*(v26 + 8))(v12, v10);
  sub_23B7BC250();
  if (qword_27E180848 != -1)
  {
    swift_once();
  }

  v22 = sub_23B7AB020(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier, &unk_23B7BEBC4);
  v31 = v20;
  v32 = v22;
  v23 = v29;
  swift_getWitnessTable();
  sub_23B7BC480();
  return (*(v28 + 8))(v21, v23);
}

double sub_23B7A69C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ManagedAppCellContext(0, *(a1 + 16), *(a1 + 24), a4);
  sub_23B7BC0C0();
  v4 = sub_23B7BC350();
  v6 = v5;
  v8 = v7;
  sub_23B7BC2C0();
  v9 = sub_23B7BC360();
  v11 = v10;
  v13 = v12;

  sub_23B781FF8(v4, v6, v8 & 1);

  swift_getKeyPath();
  sub_23B7BC290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FF0, &qword_23B7BE458);
  sub_23B78A2B8();
  sub_23B7BC3B0();
  sub_23B781FF8(v9, v11, v13 & 1);

  return result;
}

void sub_23B7A6B48(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = (v3 + *(type metadata accessor for ManagedAppCellContext(0, *(a1 + 16), *(a1 + 24), a3) + 40));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  sub_23B781E88(*v5, v7, v8, v9);
  v10 = sub_23B7BC0E0();
  v11 = sub_23B7BC260();
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = sub_23B7BC230();
  sub_23B7BBCC0();
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = v11;
  *(a2 + 56) = v13;
  *(a2 + 64) = 2;
  *(a2 + 72) = 0;
  *(a2 + 80) = v14;
  *(a2 + 88) = v15;
  *(a2 + 96) = v16;
  *(a2 + 104) = v17;
  *(a2 + 112) = v18;
  *(a2 + 120) = 0;
}

__n128 sub_23B7A6C30@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D10, &qword_23B7BE5A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_23B7BC050();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v3 + *(type metadata accessor for ManagedAppCellContext(0, *(a1 + 16), *(a1 + 24), v13) + 44));
  v15 = *v14;
  v16 = v14[2];
  v17 = v14[3];
  v34 = v14[1];
  v35 = v15;
  v32 = v17;
  v33 = v16;
  sub_23B781E88(v15, v34, v16, v17);
  v31 = sub_23B7BC0E0();
  KeyPath = swift_getKeyPath();
  sub_23B79A7D4(v12);
  LOBYTE(a1) = sub_23B7BC040();
  v18 = *(v10 + 8);
  v18(v12, v9);
  if (a1)
  {
    v29 = sub_23B7BC2F0();
  }

  else
  {
    v19 = sub_23B7BC280();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    v29 = sub_23B7BC2B0();
    sub_23B7826E8(v8, &qword_27E180D10, &qword_23B7BE5A0);
  }

  v36 = 0;
  v20 = swift_getKeyPath();
  v21 = v36;
  sub_23B79A7D4(v12);
  sub_23B7BC040();
  v18(v12, v9);
  sub_23B7BC6A0();
  sub_23B7BBEB0();
  v22 = v34;
  *a2 = v35;
  *(a2 + 8) = v22;
  v23 = v32;
  *(a2 + 16) = v33;
  *(a2 + 24) = v23;
  *(a2 + 32) = v31;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = 2;
  *(a2 + 56) = v21;
  v24 = v29;
  *(a2 + 64) = v20;
  *(a2 + 72) = v24;
  v25 = v42;
  *(a2 + 144) = v41;
  *(a2 + 160) = v25;
  *(a2 + 176) = v43;
  v26 = v38;
  *(a2 + 80) = v37;
  *(a2 + 96) = v26;
  result = v40;
  *(a2 + 112) = v39;
  *(a2 + 128) = result;
  return result;
}

uint64_t sub_23B7A6F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = (v3 + *(type metadata accessor for ManagedAppCellContext(0, *(a1 + 16), *(a1 + 24), a3) + 48));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  sub_23B781E88(*v5, v7, v8, v9);
  v10 = sub_23B7BC270();
  KeyPath = swift_getKeyPath();
  result = sub_23B7BC0D0();
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v10;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_23B7A6FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181818, &qword_23B7BFC60);
  v7 = MEMORY[0x28223BE20](v41);
  v42 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = (&v35 - v9);
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  v10 = sub_23B7BBE70();
  v44 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v39 = a2;
  v17 = type metadata accessor for HeaderManagedAppCell(0, a2, a3, v16);
  v38 = a1;
  sub_23B7A64E4(v17, v13);
  v18 = sub_23B7AB020(&qword_27E180C68, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v19 = a3;
  v51[11] = a3;
  v51[12] = v18;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_23B781950();
  v51[9] = WitnessTable;
  v51[10] = v21;
  v51[7] = swift_getWitnessTable();
  v51[8] = MEMORY[0x277CDF678];
  v22 = swift_getWitnessTable();
  v23 = sub_23B7AB020(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier, &unk_23B7BEBC4);
  v51[5] = v22;
  v51[6] = v23;
  v51[3] = swift_getWitnessTable();
  v51[4] = MEMORY[0x277CDF918];
  v24 = swift_getWitnessTable();
  v37 = v15;
  v36 = v24;
  sub_23B7BB698();
  v25 = *(v44 + 8);
  v25(v13, v10);
  if (qword_27E180840 != -1)
  {
    swift_once();
  }

  v26 = qword_27E184EE0;
  v27 = swift_allocObject();
  v28 = v39;
  v27[2] = v39;
  v27[3] = v19;
  v29 = v19;
  v27[4] = v26;
  v30 = v40;
  *v40 = v26;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181818, &qword_23B7BFC60);
  sub_23B7A74F8(v28, v29, v30 + *(v31 + 44));

  v32 = v37;
  (*(v44 + 16))(v13, v37, v10);
  v51[0] = v13;
  v33 = v42;
  sub_23B779B38(v30, v42, &qword_27E181818, &qword_23B7BFC60);
  v49 = 0;
  v50 = 1;
  v51[1] = v33;
  v51[2] = &v49;
  v48[0] = v10;
  v48[1] = v41;
  v48[2] = MEMORY[0x277CE1180];
  v45 = v36;
  v46 = sub_23B7AAAC8();
  v47 = MEMORY[0x277CE1170];
  sub_23B7AE6C8(v51, 3uLL, v48);
  sub_23B7826E8(v30, &qword_27E181818, &qword_23B7BFC60);
  v25(v32, v10);
  sub_23B7826E8(v33, &qword_27E181818, &qword_23B7BFC60);
  return (v25)(v13, v10);
}

uint64_t sub_23B7A74F8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v35 = a2;
  v41 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1818E0, &qword_23B7BFD50);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v38 = sub_23B7BC150();
  v10 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1818E8, &qword_23B7BFD58);
  MEMORY[0x28223BE20](v36);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1818F0, &qword_23B7BFD60);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v37 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - v19;
  *v14 = sub_23B7BC070();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1818F8, &qword_23B7BFD68);
  v22 = v39;
  sub_23B7A78F8(a2, v39, &v14[*(v21 + 44)]);
  sub_23B7BC130();
  sub_23B7826A0(&qword_27E181900, &qword_27E1818E8, &qword_23B7BFD58, MEMORY[0x277CE1198]);
  sub_23B7BC430();
  (*(v10 + 8))(v12, v38);
  sub_23B7826E8(v14, &qword_27E1818E8, &qword_23B7BFD58);
  LOBYTE(v12) = sub_23B7BC240();
  sub_23B7BBCC0();
  v23 = &v20[*(v16 + 44)];
  *v23 = v12;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  *v9 = sub_23B7BBFE0();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181908, &qword_23B7BFD70);
  sub_23B7A7C68(v35, v22, &v9[*(v28 + 44)]);
  v29 = v37;
  sub_23B779B38(v20, v37, &qword_27E1818F0, &qword_23B7BFD60);
  v30 = v40;
  sub_23B779B38(v9, v40, &qword_27E1818E0, &qword_23B7BFD50);
  v31 = v41;
  sub_23B779B38(v29, v41, &qword_27E1818F0, &qword_23B7BFD60);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181910, &qword_23B7BFD78);
  sub_23B779B38(v30, v31 + *(v32 + 48), &qword_27E1818E0, &qword_23B7BFD50);
  sub_23B7826E8(v9, &qword_27E1818E0, &qword_23B7BFD50);
  sub_23B7826E8(v20, &qword_27E1818F0, &qword_23B7BFD60);
  sub_23B7826E8(v30, &qword_27E1818E0, &qword_23B7BFD50);
  return sub_23B7826E8(v29, &qword_27E1818F0, &qword_23B7BFD60);
}

uint64_t sub_23B7A78F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v50 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1818A0, &qword_23B7BFD20);
  v5 = *(v53 - 8);
  v6 = MEMORY[0x28223BE20](v53);
  v52 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v11 = type metadata accessor for HeaderManagedAppCell(0, a1, a2, v10);
  v51 = v9;
  sub_23B7A69C8(v11, v12, v13, v14);
  sub_23B7A6B48(v11, v70, v15);
  v17 = type metadata accessor for ManagedAppCellContext(0, a1, a2, v16);
  if (sub_23B7B4420(v17))
  {
    sub_23B7A6F34(v11, &v63, v18);
    v19 = *(&v64 + 1);
    v20 = *(&v65 + 1);
    v21 = v65;
    v48 = v66;
    v49 = v63;
    v46 = v64;
    v47 = *(&v63 + 1);
    sub_23B781E88(v63, *(&v63 + 1), v64, *(&v64 + 1));
  }

  else
  {
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v19 = 0;
    v21 = 0;
    v20 = 0;
    v48 = 0;
  }

  v22 = v5;
  v23 = *(v5 + 16);
  v24 = v52;
  v25 = v53;
  v23(v52, v51, v53);
  v58 = v70[4];
  v59 = v70[5];
  v60[0] = v71[0];
  *(v60 + 9) = *(v71 + 9);
  v54 = v70[0];
  v55 = v70[1];
  v56 = v70[2];
  v57 = v70[3];
  v26 = v50;
  v23(v50, v24, v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181920, &qword_23B7BFD90);
  v28 = &v26[*(v27 + 48)];
  v29 = v58;
  v30 = v59;
  v61[4] = v58;
  v61[5] = v59;
  v31 = v60[0];
  v62[0] = v60[0];
  v32 = *(v60 + 9);
  *(v62 + 9) = *(v60 + 9);
  v33 = v54;
  v34 = v55;
  v61[0] = v54;
  v61[1] = v55;
  v36 = v56;
  v35 = v57;
  *(v28 + 2) = v56;
  *(v28 + 3) = v35;
  *v28 = v33;
  *(v28 + 1) = v34;
  *(v28 + 105) = v32;
  *(v28 + 5) = v30;
  *(v28 + 6) = v31;
  *(v28 + 4) = v29;
  v37 = &v26[*(v27 + 64)];
  v61[2] = v36;
  v61[3] = v35;
  sub_23B779B38(v61, &v63, &qword_27E1818B0, &unk_23B7BFD30);
  v38 = v49;
  v40 = v46;
  v39 = v47;
  LODWORD(v23) = v48;
  sub_23B7AAA24(v49, v47, v46, v19, v21, v20);
  v42 = sub_23B7AAA70(v38, v39, v40, v19, v21, v20, v41);
  *v37 = v38;
  *(v37 + 1) = v39;
  *(v37 + 2) = v40;
  *(v37 + 3) = v19;
  *(v37 + 4) = v21;
  *(v37 + 5) = v20;
  *(v37 + 12) = v23;
  v43 = *(v22 + 8);
  v44.n128_f64[0] = v43(v51, v53, v42);
  sub_23B7AAA70(v38, v39, v40, v19, v21, v20, v44);
  v67 = v58;
  v68 = v59;
  v69[0] = v60[0];
  *(v69 + 9) = *(v60 + 9);
  v63 = v54;
  v64 = v55;
  v65 = v56;
  v66 = v57;
  sub_23B7826E8(&v63, &qword_27E1818B0, &unk_23B7BFD30);
  return (v43)(v52, v53);
}

uint64_t sub_23B7A7C68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D90, &qword_23B7BFD80);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v14 = type metadata accessor for HeaderManagedAppCell(0, a1, a2, v13);
  sub_23B77F5BC(v14, v15, v12);
  *&v12[*(v7 + 44)] = 0x3FF0000000000000;
  v17 = type metadata accessor for ManagedAppCellContext(0, a1, a2, v16);
  if (sub_23B7B4438(v17))
  {
    sub_23B7A6C30(v14, &v44);
    v64 = v52;
    v65 = v53;
    v66 = v54;
    v67 = v55;
    v60 = v48;
    v61 = v49;
    v62 = v50;
    v63 = v51;
    v56 = v44;
    v57 = v45;
    v58 = v46;
    v59 = v47;
    nullsub_1();
    v76 = v64;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v72 = v60;
    v73 = v61;
    v74 = v62;
    v75 = v63;
    v68 = v56;
    v69 = v57;
    v70 = v58;
    v71 = v59;
  }

  else
  {
    sub_23B7AA6BC(&v68);
  }

  sub_23B779B38(v12, v10, &qword_27E180D90, &qword_23B7BFD80);
  v40 = v76;
  v41 = v77;
  v42 = v78;
  v43 = v79;
  v36 = v72;
  v37 = v73;
  v38 = v74;
  v39 = v75;
  v32 = v68;
  v33 = v69;
  v34 = v70;
  v35 = v71;
  sub_23B779B38(v10, a3, &qword_27E180D90, &qword_23B7BFD80);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181918, &qword_23B7BFD88) + 48);
  v19 = v41;
  v52 = v40;
  v53 = v41;
  v20 = v42;
  v21 = v43;
  v54 = v42;
  v55 = v43;
  v22 = v36;
  v23 = v37;
  v48 = v36;
  v49 = v37;
  v24 = v38;
  v25 = v39;
  v50 = v38;
  v51 = v39;
  v26 = v32;
  v27 = v33;
  v44 = v32;
  v45 = v33;
  v28 = v34;
  v29 = v35;
  v46 = v34;
  v47 = v35;
  v30 = (a3 + v18);
  v30[8] = v40;
  v30[9] = v19;
  v30[10] = v20;
  v30[11] = v21;
  v30[4] = v22;
  v30[5] = v23;
  v30[6] = v24;
  v30[7] = v25;
  *v30 = v26;
  v30[1] = v27;
  v30[2] = v28;
  v30[3] = v29;
  sub_23B779B38(&v44, &v56, &qword_27E181828, &qword_23B7BFC70);
  sub_23B7826E8(v12, &qword_27E180D90, &qword_23B7BFD80);
  v64 = v40;
  v65 = v41;
  v66 = v42;
  v67 = v43;
  v60 = v36;
  v61 = v37;
  v62 = v38;
  v63 = v39;
  v56 = v32;
  v57 = v33;
  v58 = v34;
  v59 = v35;
  sub_23B7826E8(&v56, &qword_27E181828, &qword_23B7BFC70);
  return sub_23B7826E8(v10, &qword_27E180D90, &qword_23B7BFD80);
}

uint64_t sub_23B7A7F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a4;
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  v36 = sub_23B7BBE70();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181820, &qword_23B7BFC68);
  v38 = type metadata accessor for OfferView(255);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181828, &qword_23B7BFC70);
  swift_getTupleTypeMetadata();
  v22[2] = sub_23B7BC6F0();
  v22[1] = swift_getWitnessTable();
  v6 = sub_23B7BC640();
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  v9 = sub_23B7BBE70();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v22[0] = v22 - v14;
  sub_23B7BC070();
  v15 = v24;
  type metadata accessor for HeaderManagedAppCell(0, a2, v24, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
  sub_23B7BBD30();
  v26 = a2;
  v27 = v15;
  v28 = a1;
  sub_23B7BC630();
  sub_23B7BC240();
  WitnessTable = swift_getWitnessTable();
  sub_23B7BC480();
  (*(v23 + 8))(v8, v6);
  v34 = WitnessTable;
  v35 = MEMORY[0x277CDF918];
  v18 = swift_getWitnessTable();
  v19 = v22[0];
  sub_23B7BB698();
  v20 = *(v10 + 8);
  v20(v13, v9);
  (*(v10 + 16))(v13, v19, v9);
  v32 = 0;
  v33 = 0;
  v36 = v13;
  v37 = &v32;
  v31[0] = v9;
  v31[1] = MEMORY[0x277CE1180];
  v29 = v18;
  v30 = MEMORY[0x277CE1170];
  sub_23B7AE6C8(&v36, 2uLL, v31);
  v20(v19, v9);
  return (v20)(v13, v9);
}

uint64_t sub_23B7A83A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a1;
  v76 = a4;
  v73 = type metadata accessor for OfferView(0);
  v6 = MEMORY[0x28223BE20](v73);
  v77 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v60 - v8;
  v9 = sub_23B7BC150();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  v66 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181830, &qword_23B7BFC78);
  MEMORY[0x28223BE20](v82);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181820, &qword_23B7BFC68);
  v74 = *(v13 - 8);
  v75 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v72 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v60 - v16;
  sub_23B7BC1F0();
  v63 = a2;
  sub_23B7BBE70();
  sub_23B7BBE70();
  v71 = sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  v81 = sub_23B7BBE70();
  v17 = sub_23B7BBE70();
  v62 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v60 - v21;
  v24 = type metadata accessor for HeaderManagedAppCell(0, a2, a3, v23);
  sub_23B7A64E4(v24, v20);
  v25 = sub_23B7AB020(&qword_27E180C68, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v122 = a3;
  v123 = v25;
  WitnessTable = swift_getWitnessTable();
  v27 = sub_23B781950();
  v120 = WitnessTable;
  v121 = v27;
  v118 = swift_getWitnessTable();
  v119 = MEMORY[0x277CDF678];
  v28 = swift_getWitnessTable();
  v29 = sub_23B7AB020(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier, &unk_23B7BEBC4);
  v116 = v28;
  v117 = v29;
  v114 = swift_getWitnessTable();
  v115 = MEMORY[0x277CDF918];
  v30 = swift_getWitnessTable();
  v81 = v22;
  v31 = v62;
  v65 = v30;
  sub_23B7BB698();
  v32 = *(v31 + 8);
  v79 = v20;
  v67 = v17;
  v70 = v32;
  v71 = v31 + 8;
  v32(v20, v17);
  v33 = sub_23B7BC070();
  v61 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
  v34 = v80;
  sub_23B7BBD30();
  v35 = v124;
  *v12 = v33;
  *(v12 + 1) = v35;
  v12[16] = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181838, &qword_23B7BFC80);
  v37 = v34;
  v38 = v63;
  sub_23B7A8C98(v63, a3, &v12[*(v36 + 44)]);
  v39 = v66;
  sub_23B7BC130();
  v64 = sub_23B7826A0(&qword_27E181840, &qword_27E181830, &qword_23B7BFC78, MEMORY[0x277CE1198]);
  sub_23B7BC430();
  (*(v68 + 8))(v39, v69);
  sub_23B7826E8(v12, &qword_27E181830, &qword_23B7BFC78);
  v41 = type metadata accessor for ManagedAppCellContext(0, v38, a3, v40);
  v42 = *(v41 + 56);
  v43 = v37 + *(v41 + 52);
  v44 = *(v43 + 8);
  v45 = *(v43 + 16);
  *&v124 = *v43;
  *(&v124 + 1) = v44;
  LOBYTE(v125) = v45;
  v46 = v37 + v42;
  v47 = *(v37 + v42);
  v48 = *(v46 + 8);
  sub_23B781F9C(v124, v44, v45);

  OfferView.init(offerState:action:)(&v124, v47, v48, v83);
  if (sub_23B7B4438(v41))
  {
    sub_23B7A6C30(v61, &v89);
    v110 = v97;
    v111 = v98;
    v112 = v99;
    v113 = v100;
    v106 = v93;
    v107 = v94;
    v108 = v95;
    v109 = v96;
    v102 = v89;
    v103 = v90;
    v104 = v91;
    v105 = v92;
    nullsub_1();
    v132 = v110;
    v133 = v111;
    v134 = v112;
    v135 = v113;
    v128 = v106;
    v129 = v107;
    v130 = v108;
    v131 = v109;
    v124 = v102;
    v125 = v103;
    v126 = v104;
    v127 = v105;
  }

  else
  {
    sub_23B7AA6BC(&v124);
  }

  v49 = v79;
  v50 = v67;
  (*(v31 + 16))(v79, v81, v67);
  v101[0] = v49;
  v51 = v74;
  v52 = v75;
  v53 = v72;
  v54 = v78;
  (*(v74 + 16))(v72, v78, v75);
  v101[1] = v53;
  v55 = v83;
  v56 = v77;
  sub_23B7819C8(v83, v77);
  v97 = v132;
  v98 = v133;
  v99 = v134;
  v100 = v135;
  v93 = v128;
  v94 = v129;
  v95 = v130;
  v96 = v131;
  v89 = v124;
  v90 = v125;
  v91 = v126;
  v92 = v127;
  v101[2] = v56;
  v101[3] = &v89;
  sub_23B779B38(&v124, &v102, &qword_27E181828, &qword_23B7BFC70);
  v88[0] = v50;
  v88[1] = v52;
  v88[2] = v73;
  v88[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181828, &qword_23B7BFC70);
  v84 = v65;
  *&v102 = v82;
  *(&v102 + 1) = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = sub_23B7AB020(&qword_27E180C90, type metadata accessor for OfferView, &protocol conformance descriptor for OfferView);
  v87 = sub_23B7AA6DC();
  sub_23B7AE6C8(v101, 4uLL, v88);
  sub_23B7826E8(&v124, &qword_27E181828, &qword_23B7BFC70);
  sub_23B781E28(v55);
  v57 = *(v51 + 8);
  v57(v54, v52);
  v58 = v70;
  v70(v81, v50);
  v110 = v97;
  v111 = v98;
  v112 = v99;
  v113 = v100;
  v106 = v93;
  v107 = v94;
  v108 = v95;
  v109 = v96;
  v102 = v89;
  v103 = v90;
  v104 = v91;
  v105 = v92;
  sub_23B7826E8(&v102, &qword_27E181828, &qword_23B7BFC70);
  sub_23B781E28(v56);
  v57(v53, v52);
  return v58(v79, v50);
}

double sub_23B7A8C98@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1818A0, &qword_23B7BFD20);
  v43 = *(v46 - 8);
  v6 = MEMORY[0x28223BE20](v46);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v11 = type metadata accessor for ManagedAppCellContext(0, a1, a2, v10);
  if (sub_23B7B4420(v11))
  {
    v13 = type metadata accessor for HeaderManagedAppCell(0, a1, a2, v12);
    sub_23B7A6F34(v13, &v64, v14);
    v15 = v66;
    v47 = v67;
    v16 = *(&v64 + 1);
    v17 = v64;
    v41 = *(&v65 + 1);
    v18 = v65;
    sub_23B781E88(v64, *(&v64 + 1), v65, *(&v65 + 1));
    v42 = *(&v15 + 1);

    v44 = v15;
  }

  else
  {
    v13 = type metadata accessor for HeaderManagedAppCell(0, a1, a2, v12);
    v17 = 0;
    v16 = 0;
    v18 = 0;
    v41 = 0;
    v42 = 0;
    v44 = 0;
    v47 = 0;
  }

  sub_23B7A69C8(v13, v19, v20, v21);
  sub_23B7A6B48(v13, v55, v22);
  v40 = v9;
  v23 = *(v43 + 16);
  v24 = v45;
  v23(v45, v9, v46);
  v52 = v55[4];
  v53 = v55[5];
  v54[0] = v56[0];
  *(v54 + 9) = *(v56 + 9);
  v48 = v55[0];
  v49 = v55[1];
  v50 = v55[2];
  v51 = v55[3];
  *a3 = v17;
  *(a3 + 8) = v16;
  v25 = v41;
  *(a3 + 16) = v18;
  *(a3 + 24) = v25;
  v26 = v42;
  *(a3 + 32) = v44;
  *(a3 + 40) = v26;
  *(a3 + 48) = v47;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1818A8, &qword_23B7BFD28);
  v28 = v24;
  v29 = v46;
  v23((a3 + *(v27 + 48)), v28, v46);
  v30 = (a3 + *(v27 + 64));
  v61 = v52;
  v62 = v53;
  v63[0] = v54[0];
  *(v63 + 9) = *(v54 + 9);
  v57 = v48;
  v58 = v49;
  v59 = v50;
  v60 = v51;
  v31 = v44;
  v32 = v42;
  sub_23B7AAA24(v17, v16, v18, v25, v44, v42);
  sub_23B779B38(&v57, &v64, &qword_27E1818B0, &unk_23B7BFD30);
  sub_23B7AAA70(v17, v16, v18, v25, v31, v32, v33);
  v34 = v62;
  v30[4] = v61;
  v30[5] = v34;
  v30[6] = v63[0];
  *(v30 + 105) = *(v63 + 9);
  v35 = v58;
  *v30 = v57;
  v30[1] = v35;
  v36 = v60;
  v30[2] = v59;
  v30[3] = v36;
  v37 = *(v43 + 8);
  v37(v40, v29);
  v68 = v52;
  v69 = v53;
  v70[0] = v54[0];
  *(v70 + 9) = *(v54 + 9);
  v64 = v48;
  v65 = v49;
  v66 = v50;
  v67 = v51;
  sub_23B7826E8(&v64, &qword_27E1818B0, &unk_23B7BFD30);
  v38.n128_f64[0] = v37(v45, v29);
  return sub_23B7AAA70(v17, v16, v18, v25, v31, v32, v38);
}

uint64_t sub_23B7A9054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for ManagedAppCellContext(0, a2, a3, a5);
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  v11 = type metadata accessor for HeaderManagedAppCell(0, a2, a3, v10);
  v12 = v11[9];
  *(a4 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0, &qword_23B7BE160);
  swift_storeEnumTagMultiPayload();
  v13 = v11[10];
  *(a4 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DB8, &qword_23B7BE128);
  swift_storeEnumTagMultiPayload();
  v14 = v11[11];
  *(a4 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DB0, &qword_23B7BFE30);
  swift_storeEnumTagMultiPayload();
  v15 = v11[12];
  *(a4 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181508, &qword_23B7BEDC0);
  swift_storeEnumTagMultiPayload();
  sub_23B77DAC8();
  return sub_23B7BBD20();
}

void sub_23B7A91EC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v43 = a1;
  v44 = a3;
  v42 = sub_23B7BBDD0();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23B7BBE10();
  sub_23B7AB020(&qword_27E181948, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  v10 = sub_23B7BC9A0();
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    goto LABEL_7;
  }

  v12 = v10;
  v47 = MEMORY[0x277D84F90];
  sub_23B7AB000(0, v10 & ~(v10 >> 63), 0);
  v11 = v47;
  sub_23B7BC990();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v40 = (v6 + 8);
    v41 = (v6 + 16);
    v39 = a4 & 1;
    do
    {
      v13 = sub_23B7BC9E0();
      v14 = v9;
      v15 = v42;
      (*v41)(v8);
      v13(v46, 0);
      v46[0] = a2 & 1;
      v45 = v39;
      sub_23B7BBDB0();
      v17 = v16;
      v19 = v18;
      (*v40)(v8, v15);
      v47 = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_23B7AB000((v20 > 1), v21 + 1, 1);
        v11 = v47;
      }

      *(v11 + 16) = v21 + 1;
      v22 = v11 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      sub_23B7BC9D0();
      --v12;
      v9 = v14;
    }

    while (v12);
LABEL_7:
    v23 = *(v11 + 16);
    if (!v23)
    {
LABEL_21:

      return;
    }

    if (v23 == 1)
    {
      v24 = 0;
      v25 = 0.0;
    }

    else
    {
      v24 = v23 & 0x7FFFFFFFFFFFFFFELL;
      v26 = (v11 + 56);
      v25 = 0.0;
      v27 = v23 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v28 = *(v26 - 2);
        v29 = *v26;
        v26 += 4;
        v25 = v25 + v28 + v29;
        v27 -= 2;
      }

      while (v27);
      if (v23 == v24)
      {
LABEL_16:
        v33 = *(v11 + 32);
        v34 = v23 - 1;
        if (v34)
        {
          v35 = (v11 + 48);
          do
          {
            v36 = *v35;
            v35 += 2;
            v37 = v36;
            if (v33 < v36)
            {
              v33 = v37;
            }

            --v34;
          }

          while (v34);
        }

        goto LABEL_21;
      }
    }

    v30 = v23 - v24;
    v31 = (v11 + 16 * v24 + 40);
    do
    {
      v32 = *v31;
      v31 += 2;
      v25 = v25 + v32;
      --v30;
    }

    while (v30);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_23B7A952C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10)
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181938, &qword_23B7BFF60);
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v102 = &v85 - v20;
  v90 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181940, &qword_23B7BFF68));
  MEMORY[0x28223BE20](*&v90);
  *&v89 = &v85 - v21;
  v22 = sub_23B7BBDD0();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v85 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v86 = &v85 - v27;
  MEMORY[0x28223BE20](v26);
  v97 = &v85 - v28;
  v29 = sub_23B7BBE10();
  v30 = sub_23B7AB020(&qword_27E181948, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  v101 = a5;
  v31 = sub_23B7BC9A0();
  v32 = MEMORY[0x277D84F90];
  v91 = v23;
  v99 = v29;
  v100 = v30;
  if (v31)
  {
    v33 = v31;
    v98 = a1;
    v34 = a3;
    v105 = MEMORY[0x277D84F90];
    sub_23B7AB000(0, v31 & ~(v31 >> 63), 0);
    v35 = v105;
    result = sub_23B7BC990();
    if (v33 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = a9;
    *&v95 = v23 + 16;
    v94 = (v23 + 8);
    v38 = v22;
    v39 = v34;
    v96 = a2;
    v93 = a4;
    v92 = v38;
    do
    {
      v40 = sub_23B7BC9E0();
      v41 = v97;
      (**&v95)(v97);
      v40(v104, 0);
      LOBYTE(v104[0]) = a2 & 1;
      v103 = a4 & 1;
      v42 = v39;
      sub_23B7BBDB0();
      v44 = v43;
      v46 = v45;
      (*v94)(v41, v38);
      v105 = v35;
      v48 = *(v35 + 16);
      v47 = *(v35 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_23B7AB000((v47 > 1), v48 + 1, 1);
        v35 = v105;
      }

      *(v35 + 16) = v48 + 1;
      v49 = v35 + 16 * v48;
      *(v49 + 32) = v44;
      *(v49 + 40) = v46;
      v50 = v99;
      sub_23B7BC9D0();
      --v33;
      v39 = v42;
      LOBYTE(a4) = v93;
      LOBYTE(a2) = v96;
      v38 = v92;
    }

    while (v33);
    a9 = v37;
    v29 = v50;
    v32 = v35;
    v22 = v92;
  }

  v51 = *(v32 + 16);
  if (v51)
  {
    if (v51 == 1)
    {
      v52 = 0;
      v53 = 0.0;
    }

    else
    {
      v52 = v51 & 0x7FFFFFFFFFFFFFFELL;
      v54 = (v32 + 56);
      v53 = 0.0;
      v55 = v51 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v56 = *(v54 - 2);
        v57 = *v54;
        v54 += 4;
        v53 = v53 + v56 + v57;
        v55 -= 2;
      }

      while (v55);
      if (v51 == v52)
      {
        goto LABEL_17;
      }
    }

    v58 = v51 - v52;
    v59 = (v32 + 16 * v52 + 40);
    do
    {
      v60 = *v59;
      v59 += 2;
      v53 = v53 + v60;
      --v58;
    }

    while (v58);
  }

  else
  {
    v53 = 0.0;
  }

LABEL_17:
  v95 = a6;
  v61 = v89;
  v62 = v32;
  (*(*(v29 - 8) + 16))(COERCE_DOUBLE(*&v89), v101, v29);
  *(*&v61 + *(*&v90 + 52)) = v62;
  v63 = sub_23B7A9D88();
  v64 = *(v63 + 16);
  if (v64)
  {
    v89 = v53;
    v90 = a10;
    v65 = v102;
    v97 = &v102[*(v87 + 48)];
    v66 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v94 = v63;
    v67 = v63 + v66;
    v68 = *(v88 + 72);
    v69 = v22;
    v70 = (v91 + 8);
    v71 = 0.0;
    v72 = v95;
    do
    {
      sub_23B779B38(v67, v65, &qword_27E181938, &qword_23B7BFF60);
      v73 = *(v97 + 1);
      v106.origin.x = v72;
      v106.origin.y = a7;
      v106.size.width = a8;
      v106.size.height = a9;
      CGRectGetMinX(v106);
      v107.origin.x = v72;
      v107.origin.y = a7;
      v107.size.width = a8;
      v107.size.height = a9;
      CGRectGetMinY(v107);
      sub_23B7BC710();
      LOBYTE(v104[0]) = a2 & 1;
      LOBYTE(v105) = a4 & 1;
      sub_23B7BBDC0();
      v65 = v102;
      (*v70)(v102, v69);
      v71 = v71 + v73;
      v67 += v68;
      --v64;
    }

    while (v64);

    v22 = v69;
    a10 = v90;
    v53 = v89;
  }

  else
  {
  }

  result = sub_23B7BC9B0();
  if ((result & 1) == 0)
  {
    sub_23B7BC9C0();
    sub_23B7AB020(&qword_27E181950, MEMORY[0x277CDF7F8], MEMORY[0x277CDF800]);
    sub_23B7BC7A0();
    v74 = sub_23B7BC9E0();
    v75 = v91;
    v76 = v85;
    (*(v91 + 16))(v85);
    v74(v104, 0);
    v77 = v75;
    v78 = *(v75 + 32);
    v79 = v86;
    v78(v86, v76, v22);
    v80 = v95;
    v108.origin.x = v95;
    v108.origin.y = a7;
    v108.size.width = a8;
    v108.size.height = a9;
    CGRectGetMinX(v108);
    v81 = v80;
    v82 = a7;
    v83 = a8;
    v84 = a9;
    if (v53 >= a10)
    {
      CGRectGetMinY(*&v81);
      sub_23B7BC710();
    }

    else
    {
      CGRectGetMaxY(*&v81);
      sub_23B7BC720();
    }

    LOBYTE(v104[0]) = a2 & 1;
    LOBYTE(v105) = a4 & 1;
    sub_23B7BBDC0();
    return (*(v77 + 8))(v79, v22);
  }

  return result;
}

uint64_t sub_23B7A9D88()
{
  v1 = sub_23B7BBDD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181938, &qword_23B7BFF60);
  v56 = *(v58 - 8);
  v5 = MEMORY[0x28223BE20](v58);
  v55 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  MEMORY[0x28223BE20](v7);
  v57 = &v44 - v10;
  v61 = sub_23B7BBE10();
  v11 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181958, &qword_23B7BFF70);
  result = MEMORY[0x28223BE20](v46);
  v17 = &v44 - v16;
  if (v15 < 0)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  if (!v15)
  {
    v22 = sub_23B7AB470(v0);
    sub_23B7826E8(v0, &qword_27E181940, &qword_23B7BFF68);
    return v22;
  }

  v62 = v15;
  v54 = v9;
  (*(v11 + 32))(v13, v0, v61);
  v18 = MEMORY[0x277CDF7F8];
  sub_23B7AB020(&qword_27E181960, MEMORY[0x277CDF7F8], MEMORY[0x277CDF810]);
  sub_23B7BC890();
  v19 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181940, &qword_23B7BFF68) + 52));
  v20 = &v17[*(v46 + 52)];
  *v20 = v19;
  *(v20 + 1) = 0;
  v53 = v20;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181968, &qword_23B7BFF78) + 36);
  v63 = sub_23B7AB020(&qword_27E181948, v18, MEMORY[0x277CDF820]);
  sub_23B7BC9C0();
  if (*&v17[v21] != v65[0])
  {
    v23 = 0;
    v60 = 0;
    v51 = (v2 + 16);
    v52 = v19;
    v50 = v19 + 32;
    v24 = MEMORY[0x277D84F90];
    v45 = v2;
    v49 = (v2 + 32);
    v59 = MEMORY[0x277D84F90];
    v25 = v54;
    v48 = v1;
    v47 = v4;
    while (1)
    {
      v28 = sub_23B7BC9E0();
      (*v51)(v4);
      v28(v65, 0);
      result = sub_23B7BC9D0();
      v29 = *(v52 + 16);
      if (v23 == v29)
      {
        (*(v45 + 8))(v4, v1);
        goto LABEL_29;
      }

      if (v23 >= v29)
      {
        break;
      }

      v64 = *(v50 + 16 * v23);
      *(v53 + 1) = v23 + 1;
      v30 = v57;
      v31 = *(v58 + 48);
      (*v49)(v57, v4, v1);
      *(v30 + v31) = v64;
      result = sub_23B7AB068(v30, v25);
      v32 = v24[2];
      if (v32 >= v62)
      {
        if (v60 >= v32)
        {
          goto LABEL_31;
        }

        v34 = v60;
        v35 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v36 = *(v56 + 72);
        v37 = v36 * v60;
        sub_23B779B38(v24 + v35 + v36 * v60, v55, &qword_27E181938, &qword_23B7BFF60);
        v38 = v59;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v38;
        v67 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23B7AB0D8(0, *(v38 + 16) + 1, 1);
          v34 = v60;
          v40 = v67;
        }

        v42 = *(v40 + 16);
        v41 = *(v40 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_23B7AB0D8((v41 > 1), v42 + 1, 1);
          v34 = v60;
          v40 = v67;
        }

        *(v40 + 16) = v42 + 1;
        v59 = v40;
        sub_23B7AB068(v55, v40 + v35 + v42 * v36);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_23B7AB3EC(v24);
          v24 = result;
        }

        v25 = v54;
        if (v34 >= v24[2])
        {
          goto LABEL_32;
        }

        sub_23B7AB400(v54, v24 + v35 + v37);
        if ((v34 + 1) < v62)
        {
          v43 = v34 + 1;
        }

        else
        {
          v43 = 0;
        }

        v60 = v43;
        v1 = v48;
        v4 = v47;
      }

      else
      {
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v24;
        if ((v33 & 1) == 0)
        {
          sub_23B7AB0D8(0, v32 + 1, 1);
          v24 = v66;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          sub_23B7AB0D8((v26 > 1), v27 + 1, 1);
          v24 = v66;
        }

        v24[2] = v27 + 1;
        v25 = v54;
        sub_23B7AB068(v54, v24 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v27);
      }

      sub_23B7BC9C0();
      ++v23;
      if (*&v17[v21] == v65[0])
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v59 = MEMORY[0x277D84F90];
LABEL_29:
  v17[*(v46 + 56)] = 1;
  sub_23B7826E8(v17, &qword_27E181958, &qword_23B7BFF70);

  return v59;
}

uint64_t (*sub_23B7AA5D0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23B7BBCA0();
  return sub_23B7AA658;
}

void sub_23B7AA658(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double sub_23B7AA6BC(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_23B7AA6DC()
{
  result = qword_27E181848;
  if (!qword_27E181848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181828, &qword_23B7BFC70);
    sub_23B7AA760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181848);
  }

  return result;
}

unint64_t sub_23B7AA760()
{
  result = qword_27E181850;
  if (!qword_27E181850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181858, &qword_23B7BFC88);
    sub_23B7AA7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181850);
  }

  return result;
}

unint64_t sub_23B7AA7EC()
{
  result = qword_27E181860;
  if (!qword_27E181860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181868, &qword_23B7BFC90);
    sub_23B7AA8A4();
    sub_23B7826A0(&qword_27E180CF0, &qword_27E180CF8, &qword_23B7BE5E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181860);
  }

  return result;
}

unint64_t sub_23B7AA8A4()
{
  result = qword_27E181870;
  if (!qword_27E181870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181878, &qword_23B7BFC98);
    sub_23B7AA95C();
    sub_23B7826A0(&qword_27E180C58, &qword_27E180C50, &qword_23B7BE460, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181870);
  }

  return result;
}

unint64_t sub_23B7AA95C()
{
  result = qword_27E181880;
  if (!qword_27E181880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181888, &unk_23B7BFCA0);
    sub_23B781DAC();
    sub_23B7826A0(&qword_27E181890, &qword_27E181898, &unk_23B7BFCB0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181880);
  }

  return result;
}

uint64_t sub_23B7AAA24(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    sub_23B781E88(result, a2, a3, a4);
  }

  return result;
}

double sub_23B7AAA70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  if (a5)
  {
    sub_23B781FB4(a1, a2, a3, a4, a7);
  }

  return a7.n128_f64[0];
}

unint64_t sub_23B7AAAC8()
{
  result = qword_27E1818B8;
  if (!qword_27E1818B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181818, &qword_23B7BFC60);
    sub_23B7826A0(&qword_27E1818C0, &qword_27E1818C8, &qword_23B7BFD40, MEMORY[0x277CDF510]);
    sub_23B7826A0(&qword_27E1818D0, &qword_27E1818D8, &qword_23B7BFD48, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1818B8);
  }

  return result;
}

uint64_t sub_23B7AABEC(uint64_t *a1)
{
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181820, &qword_23B7BFC68);
  type metadata accessor for OfferView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181828, &qword_23B7BFC70);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC5D0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181818, &qword_23B7BFC60);
  swift_getTupleTypeMetadata3();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC5D0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BC0A0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_23B7AAF54()
{
  result = qword_27E181928;
  if (!qword_27E181928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181928);
  }

  return result;
}

unint64_t sub_23B7AAFAC()
{
  result = qword_27E181930;
  if (!qword_27E181930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181930);
  }

  return result;
}

char *sub_23B7AB000(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B7AB0F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23B7AB020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B7AB068(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181938, &qword_23B7BFF60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_23B7AB0D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B7AB1FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23B7AB0F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181978, &qword_23B7BFF88);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_23B7AB1FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181970, &qword_23B7BFF80);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181938, &qword_23B7BFF60) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181938, &qword_23B7BFF60) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}