uint64_t sub_1D8A46D5C()
{
  v1 = *(v0 + 424);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 616);
    v4 = *(v0 + 608);
    v50 = *(v0 + 536);
    v51 = *(v0 + 624);
    v48 = *(v0 + 353);
    v47 = v51 + v4[16];
    v46 = (v51 + v4[20]);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v44 = **(v0 + 416);
    v45 = v4[12];
    v43 = *(v0 + 520) + 7;
    v49 = *(v0 + 512);
    v42 = *(v3 + 72);
    do
    {
      v57 = v2;
      v7 = *(v0 + 624);
      v8 = *(v0 + 568);
      v55 = *(v0 + 560);
      v9 = *(v0 + 552);
      v10 = *(v0 + 544);
      v11 = *(v0 + 528);
      v52 = v11;
      v12 = *(v0 + 448);
      v13 = *(v0 + 440);
      v59 = *(v0 + 432);
      v58 = *(v0 + 472);
      v56 = v5;
      sub_1D87A0E38(v5, v7, &unk_1ECA67D70, &unk_1D8B25DD0);
      v14 = *(v47 + 16);
      *(v0 + 16) = *v47;
      *(v0 + 32) = v14;
      v16 = *(v47 + 48);
      v15 = *(v47 + 64);
      v17 = *(v47 + 32);
      *(v0 + 96) = *(v47 + 80);
      *(v0 + 64) = v16;
      *(v0 + 80) = v15;
      *(v0 + 48) = v17;
      v18 = *v46;
      v19 = v46[1];
      *(v0 + 352) = *(v46 + 32);
      *(v0 + 320) = v18;
      *(v0 + 336) = v19;
      v53 = sub_1D8B15EA0();
      v54 = *(v53 - 8);
      (*(v54 + 56))(v8, 1, 1, v53);
      sub_1D8A512F0(v51 + v45, v9, type metadata accessor for CVProcessorTaskDescriptor);
      (*(v49 + 16))(v11, v13, v58);
      sub_1D87C15B4(v7, v0 + 280);
      v20 = (*(v50 + 80) + 56) & ~*(v50 + 80);
      v21 = (v10 + *(v49 + 80) + v20) & ~*(v49 + 80);
      v22 = (v43 + v21) & 0xFFFFFFFFFFFFFFF8;
      v23 = (v22 + 47) & 0xFFFFFFFFFFFFFFF8;
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = v58;
      *(v24 + 48) = v59;
      sub_1D8A512F0(v9, v24 + v20, type metadata accessor for CVProcessorTaskDescriptor);
      (*(v49 + 32))(v24 + v21, v52, v58);
      sub_1D87C15B4((v0 + 280), v24 + v22);
      v25 = v24 + v23;
      v26 = *(v0 + 64);
      *(v25 + 32) = *(v0 + 48);
      *(v25 + 48) = v26;
      *(v25 + 64) = *(v0 + 80);
      *(v25 + 80) = *(v0 + 96);
      v27 = *(v0 + 32);
      *v25 = *(v0 + 16);
      *(v25 + 16) = v27;
      v28 = v24 + ((v23 + 95) & 0xFFFFFFFFFFFFFFF8);
      v29 = *(v0 + 336);
      *v28 = *(v0 + 320);
      *(v28 + 16) = v29;
      *(v28 + 32) = *(v0 + 352);
      v30 = v24 + ((v23 + 135) & 0xFFFFFFFFFFFFFFF8);
      *v30 = v12;
      *(v30 + 8) = v48;
      sub_1D87A0E38(v8, v55, &unk_1ECA675E0, &qword_1D8B23B60);
      LODWORD(v9) = (*(v54 + 48))(v55, 1, v53);

      v31 = *(v0 + 560);
      v32 = v0 + 16;
      if (v9 == 1)
      {
        sub_1D881F59C(v32, v0 + 104);

        sub_1D87A14E4(v31, &unk_1ECA675E0, &qword_1D8B23B60);
      }

      else
      {
        sub_1D881F59C(v32, v0 + 192);

        sub_1D8B15E90();
        (*(v54 + 8))(v31, v53);
      }

      if (*(v24 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v33 = sub_1D8B15E00();
        v35 = v34;
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      v36 = swift_allocObject();
      *(v36 + 16) = &unk_1D8B369C8;
      *(v36 + 24) = v24;
      v37 = v35 | v33;
      if (v35 | v33)
      {
        v37 = v0 + 360;
        *(v0 + 360) = 0;
        *(v0 + 368) = 0;
        *(v0 + 376) = v33;
        *(v0 + 384) = v35;
      }

      v6 = *(v0 + 568);
      *(v0 + 392) = 1;
      *(v0 + 400) = v37;
      *(v0 + 408) = v44;
      swift_task_create();

      sub_1D881F5F8(v0 + 16);
      sub_1D87A14E4(v6, &unk_1ECA675E0, &qword_1D8B23B60);
      v5 = v56 + v42;
      v2 = v57 - 1;
    }

    while (v57 != 1);
  }

  sub_1D8B15E30();
  v38 = swift_task_alloc();
  *(v0 + 632) = v38;
  *v38 = v0;
  v38[1] = sub_1D8A47308;
  v39 = *(v0 + 584);
  v40 = *(v0 + 576);

  return MEMORY[0x1EEE6D8A8](v40, 0, 0, v39);
}

uint64_t sub_1D8A47308()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8A47404, 0, 0);
}

uint64_t sub_1D8A47404()
{
  v1 = v0[72];
  if ((*(v0[62] + 48))(v1, 1, v0[61]) == 1)
  {
    (*(v0[74] + 8))(v0[75], v0[73]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[63];
    v5 = v0[57];
    sub_1D8A512F0(v1, v4, type metadata accessor for ProcessorState);
    v5(v4);
    sub_1D8A50E28(v4, type metadata accessor for ProcessorState);
    v6 = swift_task_alloc();
    v0[79] = v6;
    *v6 = v0;
    v6[1] = sub_1D8A47308;
    v7 = v0[73];
    v8 = v0[72];

    return MEMORY[0x1EEE6D8A8](v8, 0, 0, v7);
  }
}

uint64_t sub_1D8A475FC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 368) = v18;
  *(v9 + 376) = v19;
  *(v9 + 488) = v17;
  *(v9 + 360) = a2;
  *(v9 + 344) = a8;
  *(v9 + 352) = v16;
  *(v9 + 328) = a6;
  *(v9 + 336) = a7;
  *(v9 + 312) = a1;
  *(v9 + 320) = a5;
  v10 = *(a9 + 48);
  *(v9 + 48) = *(a9 + 32);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(a9 + 64);
  *(v9 + 96) = *(a9 + 80);
  v11 = *(a9 + 16);
  *(v9 + 16) = *a9;
  *(v9 + 32) = v11;
  type metadata accessor for DetectionResult(0);
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  v12 = type metadata accessor for CVProcessorTaskDescriptor(0);
  *(v9 + 400) = v12;
  v13 = *(v12 - 8);
  *(v9 + 408) = v13;
  *(v9 + 416) = *(v13 + 64);
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A4774C, 0, 0);
}

uint64_t sub_1D8A4774C()
{
  v1 = v0[54];
  v2 = v0[51];
  v4 = v0[40];
  v3 = v0[41];
  v0[36] = 0;
  v5 = *(v4 + 40);
  sub_1D8A50DC0(v3, v1, type metadata accessor for CVProcessorTaskDescriptor);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[55] = v7;
  *(v7 + 16) = v0 + 36;
  *(v7 + 24) = v4;
  sub_1D8A512F0(v1, v7 + v6, type metadata accessor for CVProcessorTaskDescriptor);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D88C5380;
  *(v8 + 24) = v7;
  v0[28] = sub_1D8A5A6F0;
  v0[29] = v8;
  v0[24] = MEMORY[0x1E69E9820];
  v0[25] = 1107296256;
  v0[26] = sub_1D8A3EDFC;
  v0[27] = &block_descriptor_405;
  v9 = _Block_copy(v0 + 24);
  v10 = v5;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return MEMORY[0x1EEE6DA10](v11, v12, v13, v14, v15);
  }

  v16 = v0[36];
  v0[56] = v16;
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[57] = v17;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
    *v17 = v0;
    v17[1] = sub_1D8A47A70;
    v15 = MEMORY[0x1E69E7288];
    v13 = MEMORY[0x1E69E7CA8] + 8;
    v12 = v16;
    v14 = v11;

    return MEMORY[0x1EEE6DA10](v11, v12, v13, v14, v15);
  }

  v18 = *(v0 + 4);
  *(v0 + 17) = *(v0 + 3);
  *(v0 + 19) = v18;
  *(v0 + 21) = *(v0 + 5);
  v0[23] = v0[12];
  v19 = *(v0 + 2);
  *(v0 + 13) = *(v0 + 1);
  *(v0 + 15) = v19;
  v20 = swift_task_alloc();
  v0[59] = v20;
  *v20 = v0;
  v20[1] = sub_1D8A47C58;
  v21 = v0[49];
  v22 = v0[46];
  v23 = v0[47];
  v24 = v0[43];
  v25 = v0[44];
  v27 = v0[41];
  v26 = v0[42];

  return sub_1D8A41984(v21, v26, v24, v27, (v0 + 13), v25, v22, v23);
}

uint64_t sub_1D8A47A70()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1D8A4830C;
  }

  else
  {
    v2 = sub_1D8A47B84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A47B84()
{

  v1 = *(v0 + 64);
  *(v0 + 136) = *(v0 + 48);
  *(v0 + 152) = v1;
  *(v0 + 168) = *(v0 + 80);
  *(v0 + 184) = *(v0 + 96);
  v2 = *(v0 + 32);
  *(v0 + 104) = *(v0 + 16);
  *(v0 + 120) = v2;
  v3 = swift_task_alloc();
  *(v0 + 472) = v3;
  *v3 = v0;
  v3[1] = sub_1D8A47C58;
  v4 = *(v0 + 392);
  v5 = *(v0 + 368);
  v6 = *(v0 + 376);
  v7 = *(v0 + 344);
  v8 = *(v0 + 352);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);

  return sub_1D8A41984(v4, v9, v7, v10, v0 + 104, v8, v5, v6);
}

uint64_t sub_1D8A47C58()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_1D8A48640;
  }

  else
  {
    v2 = sub_1D8A47D6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A47D6C()
{
  v53 = v0;
  v1 = *(*(v0 + 320) + 56);
  if (!*(v1 + 16))
  {
    goto LABEL_11;
  }

  v2 = *(*(v0 + 328) + *(*(v0 + 400) + 20));
  v3 = sub_1D881F7DC();
  if ((v4 & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = *(v1 + 56) + 8 * v3;
  if (*(v5 + 4) == 2 && *v5 == 0)
  {
    goto LABEL_11;
  }

  v7 = *(v0 + 480);
  v8 = *(v0 + 360);
  v9 = *(v0 + 320);
  v10 = *(v9 + 40);
  v11 = swift_task_alloc();
  *(v11 + 16) = v9;
  *(v11 + 24) = v2;
  *(v11 + 32) = v8;
  v12 = v10;
  sub_1D8B162D0();
  if (!v7)
  {

LABEL_11:
    sub_1D8A50DC0(*(v0 + 392), *(v0 + 384), type metadata accessor for DetectionResult);
    v29 = sub_1D8B151C0();
    v30 = sub_1D8B16230();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 384);
    if (v31)
    {
      v33 = *(v0 + 488);
      v34 = *(v0 + 360);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51 = v36;
      *v35 = 134218498;
      *(v35 + 4) = v34;
      *(v35 + 12) = 2080;
      v52 = *v32;
      v37 = CVDetection.DetectionType.description.getter();
      v39 = v38;
      sub_1D8A50E28(v32, type metadata accessor for DetectionResult);
      v40 = sub_1D89AC714(v37, v39, &v51);

      *(v35 + 14) = v40;
      *(v35 + 22) = 1024;
      *(v35 + 24) = v33;
      _os_log_impl(&dword_1D8783000, v29, v30, "[%f] Completed for %s (still: %{BOOL}d)", v35, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1DA721330](v36, -1, -1);
      MEMORY[0x1DA721330](v35, -1, -1);
    }

    else
    {

      sub_1D8A50E28(v32, type metadata accessor for DetectionResult);
    }

    sub_1D8A512F0(*(v0 + 392), *(v0 + 312), type metadata accessor for DetectionResult);
    type metadata accessor for ProcessorState(0);
    goto LABEL_15;
  }

  sub_1D8A50E28(*(v0 + 392), type metadata accessor for DetectionResult);

  sub_1D8A50DC0(*(v0 + 328), *(v0 + 424), type metadata accessor for CVProcessorTaskDescriptor);
  v13 = v7;
  v14 = sub_1D8B151C0();
  v15 = sub_1D8B16210();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 424);
  if (v16)
  {
    v18 = *(v0 + 400);
    v50 = *(v0 + 488);
    v19 = *(v0 + 360);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v51 = v21;
    *v20 = 134218754;
    *(v20 + 4) = v19;
    *(v20 + 12) = 2080;
    v52 = *(v17 + *(v18 + 20));
    v22 = CVDetection.DetectionType.description.getter();
    v24 = v23;
    sub_1D8A50E28(v17, type metadata accessor for CVProcessorTaskDescriptor);
    v25 = sub_1D89AC714(v22, v24, &v51);

    *(v20 + 14) = v25;
    *(v20 + 22) = 1024;
    *(v20 + 24) = v50;
    *(v20 + 28) = 2080;
    swift_getErrorValue();
    v26 = sub_1D8B16C90();
    v28 = sub_1D89AC714(v26, v27, &v51);

    *(v20 + 30) = v28;
    _os_log_impl(&dword_1D8783000, v14, v15, "[%f] Processing aborted due to error for %s (still: %{BOOL}d): %s", v20, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v21, -1, -1);
    MEMORY[0x1DA721330](v20, -1, -1);
  }

  else
  {

    sub_1D8A50E28(v17, type metadata accessor for CVProcessorTaskDescriptor);
  }

  v43 = *(v0 + 400);
  v44 = *(v0 + 328);
  v45 = *(v0 + 312);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0) + 48));
  sub_1D8A50DC0(v44 + *(v43 + 20), v45, type metadata accessor for DetectionRequest);
  swift_getErrorValue();
  v47 = sub_1D8B16C90();
  v49 = v48;

  *v46 = v47;
  v46[1] = v49;
  type metadata accessor for ProcessorState(0);
LABEL_15:
  swift_storeEnumTagMultiPayload();

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1D8A4830C()
{
  v30 = v0;

  v1 = *(v0 + 464);
  sub_1D8A50DC0(*(v0 + 328), *(v0 + 424), type metadata accessor for CVProcessorTaskDescriptor);
  v2 = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16210();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 424);
    v6 = *(v0 + 400);
    v27 = *(v0 + 488);
    v7 = *(v0 + 360);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 134218754;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v29 = *(v5 + *(v6 + 20));
    v10 = CVDetection.DetectionType.description.getter();
    v12 = v11;
    sub_1D8A50E28(v5, type metadata accessor for CVProcessorTaskDescriptor);
    v13 = sub_1D89AC714(v10, v12, &v28);

    *(v8 + 14) = v13;
    *(v8 + 22) = 1024;
    *(v8 + 24) = v27;
    *(v8 + 28) = 2080;
    swift_getErrorValue();
    v14 = sub_1D8B16C90();
    v16 = sub_1D89AC714(v14, v15, &v28);

    *(v8 + 30) = v16;
    _os_log_impl(&dword_1D8783000, v3, v4, "[%f] Processing aborted due to error for %s (still: %{BOOL}d): %s", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v9, -1, -1);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  else
  {
    v17 = *(v0 + 424);

    sub_1D8A50E28(v17, type metadata accessor for CVProcessorTaskDescriptor);
  }

  v18 = *(v0 + 400);
  v19 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0) + 48));
  sub_1D8A50DC0(v19 + *(v18 + 20), v20, type metadata accessor for DetectionRequest);
  swift_getErrorValue();
  v22 = sub_1D8B16C90();
  v24 = v23;

  *v21 = v22;
  v21[1] = v24;
  type metadata accessor for ProcessorState(0);
  swift_storeEnumTagMultiPayload();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D8A48640()
{
  v30 = v0;
  v1 = *(v0 + 480);
  sub_1D8A50DC0(*(v0 + 328), *(v0 + 424), type metadata accessor for CVProcessorTaskDescriptor);
  v2 = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16210();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 424);
    v6 = *(v0 + 400);
    v27 = *(v0 + 488);
    v7 = *(v0 + 360);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 134218754;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v29 = *(v5 + *(v6 + 20));
    v10 = CVDetection.DetectionType.description.getter();
    v12 = v11;
    sub_1D8A50E28(v5, type metadata accessor for CVProcessorTaskDescriptor);
    v13 = sub_1D89AC714(v10, v12, &v28);

    *(v8 + 14) = v13;
    *(v8 + 22) = 1024;
    *(v8 + 24) = v27;
    *(v8 + 28) = 2080;
    swift_getErrorValue();
    v14 = sub_1D8B16C90();
    v16 = sub_1D89AC714(v14, v15, &v28);

    *(v8 + 30) = v16;
    _os_log_impl(&dword_1D8783000, v3, v4, "[%f] Processing aborted due to error for %s (still: %{BOOL}d): %s", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v9, -1, -1);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  else
  {
    v17 = *(v0 + 424);

    sub_1D8A50E28(v17, type metadata accessor for CVProcessorTaskDescriptor);
  }

  v18 = *(v0 + 400);
  v19 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0) + 48));
  sub_1D8A50DC0(v19 + *(v18 + 20), v20, type metadata accessor for DetectionRequest);
  swift_getErrorValue();
  v22 = sub_1D8B16C90();
  v24 = v23;

  *v21 = v22;
  v21[1] = v24;
  type metadata accessor for ProcessorState(0);
  swift_storeEnumTagMultiPayload();

  v25 = *(v0 + 8);

  return v25();
}

double sub_1D8A4896C(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for CVProcessorTaskDescriptor(0);
  swift_beginAccess();
  if (*(*(a2 + 104) + 16) && (sub_1D881F7DC(), (v4 & 1) != 0))
  {
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;

  return result;
}

void sub_1D8A48A04(uint64_t a1, double a2)
{
  swift_beginAccess();
  v4 = *(a1 + 88);
  if (*(v4 + 16))
  {
    v5 = sub_1D881F7DC();
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      if (v7 != -INFINITY && v7 != a2)
      {
        sub_1D88C53E4();
        swift_allocError();
        *v8 = a2;
        *(v8 + 8) = v7;
        *(v8 + 16) = 2;
        swift_willThrow();
      }
    }
  }
}

BOOL static CVCoordinator.denormalizeCropRect(cropRect:width:height:)(double a1, double a2, double a3, double a4)
{
  result = CGRectIsEmpty(*&a1);
  if (!result)
  {
    __asm { FMOV            V1.2D, #0.5 }
  }

  return result;
}

uint64_t sub_1D8A48B5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>, void *a10)
{
  v116 = a5;
  v117 = a8;
  v115 = a7;
  v110 = a4;
  v111 = a6;
  v136 = a3;
  v108 = a9;
  v114 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v114);
  v124 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CVProcessorTaskDescriptor(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v123 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v108 - v18;
  v20 = *(a2 + 16);
  v109 = a1;
  v21 = 0;
  if (v20)
  {
    v22 = *a1;
    v113 = *(v17 + 80);
    v122 = (v113 + 32) & ~v113;
    v23 = a2 + v122;
    v24 = *(v17 + 72);
    v112 = xmmword_1D8B1AB90;
    v25 = v124;
    v120 = v22;
    v121 = v13;
    v119 = v24;
    do
    {
      sub_1D8A50DC0(v23, v19, type metadata accessor for CVProcessorTaskDescriptor);
      sub_1D8A50DC0(&v19[*(v13 + 20)], v25, type metadata accessor for DetectionRequest);
      if (*(v22 + 16) && (v26 = sub_1D881F7DC(), (v27 & 1) != 0))
      {
        v28 = *(v22 + 56) + 88 * v26;
        v29 = *(v28 + 80);
        v30 = *(v28 + 64);
        v31 = *(v28 + 32);
        v133 = *(v28 + 48);
        v134 = v30;
        v32 = *(v28 + 16);
        v130 = *v28;
        v131 = v32;
        v132 = v31;
        v135 = v29;
        v33 = v134;
        v126 = v134;
        if (v133 == 1)
        {
          v34 = (v25 + *(v114 + 28));
          v35 = *v34;
          v36 = v34[1];
          v37 = v34[2];
          v38 = v34[3];
          sub_1D881F59C(&v130, v127);
          sub_1D88C5510(v33);
          v137.origin.x = 0.0;
          v137.origin.y = 0.0;
          v137.size.width = 1.0;
          v137.size.height = 1.0;
          v139.origin.x = v35;
          v139.origin.y = v36;
          v139.size.width = v37;
          v139.size.height = v38;
          v138 = CGRectIntersection(v137, v139);
          v39 = v125;
          sub_1D8A4E254(&v130, v115, v117, v128, v138.origin.x, v138.origin.y, v138.size.width, v138.size.height);
          v125 = v39;
          if (v39)
          {
            sub_1D88C5520(v33);
            sub_1D881F5F8(&v130);
            sub_1D8A50E28(v25, type metadata accessor for DetectionRequest);
            sub_1D8A50E28(v19, type metadata accessor for CVProcessorTaskDescriptor);
            result = sub_1D878BBCC(v21, 0);
            goto LABEL_36;
          }

          v118 = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DB0, &qword_1D8B1E8A0);
          v40 = v122;
          v41 = swift_allocObject();
          *(v41 + 16) = v112;
          sub_1D8A50DC0(v19, v41 + v40, type metadata accessor for CVProcessorTaskDescriptor);
          v42 = v136;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v127[0] = *v42;
          v44 = v127[0];
          *v42 = 0x8000000000000000;
          v46 = sub_1D87F03BC(v128);
          v47 = *(v44 + 16);
          v48 = (v45 & 1) == 0;
          v49 = v47 + v48;
          if (__OFADD__(v47, v48))
          {
            goto LABEL_63;
          }

          v50 = v45;
          if (*(v44 + 24) >= v49)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D89695C0();
            }
          }

          else
          {
            sub_1D8972230(v49, isUniquelyReferenced_nonNull_native);
            v51 = sub_1D87F03BC(v128);
            if ((v50 & 1) != (v52 & 1))
            {
              goto LABEL_67;
            }

            v46 = v51;
          }

          v13 = v121;
          v82 = v127[0];
          if (v50)
          {
            *(*(v127[0] + 56) + 8 * v46) = v41;

            sub_1D881F5F8(v128);
          }

          else
          {
            *(v127[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
            v83 = v82[6] + 88 * v46;
            v84 = v128[1];
            *v83 = v128[0];
            *(v83 + 16) = v84;
            v85 = v128[2];
            v86 = v128[3];
            v87 = v128[4];
            *(v83 + 80) = v129;
            *(v83 + 48) = v86;
            *(v83 + 64) = v87;
            *(v83 + 32) = v85;
            *(v82[7] + 8 * v46) = v41;
            v88 = v82[2];
            v73 = __OFADD__(v88, 1);
            v89 = v88 + 1;
            if (v73)
            {
              goto LABEL_66;
            }

            v82[2] = v89;
          }

          *v136 = v82;
          sub_1D88C5520(v126);
          sub_1D881F5F8(&v130);
          v25 = v124;
          sub_1D8A50E28(v124, type metadata accessor for DetectionRequest);
          v16 = sub_1D8A50E28(v19, type metadata accessor for CVProcessorTaskDescriptor);
          v21 = v118;
          v24 = v119;
          v22 = v120;
        }

        else
        {
          sub_1D8A50DC0(v19, v123, type metadata accessor for CVProcessorTaskDescriptor);
          sub_1D881F59C(&v130, v127);
          sub_1D88C5510(v33);
          sub_1D878BBCC(v21, 0);
          v53 = v136;
          v54 = swift_isUniquelyReferenced_nonNull_native();
          v127[0] = *v53;
          v55 = v127[0];
          *v53 = 0x8000000000000000;
          v57 = sub_1D87F03BC(&v130);
          v58 = *(v55 + 16);
          v59 = (v56 & 1) == 0;
          v60 = v58 + v59;
          if (__OFADD__(v58, v59))
          {
            goto LABEL_62;
          }

          v61 = v56;
          if (*(v55 + 24) >= v60)
          {
            if ((v54 & 1) == 0)
            {
              sub_1D89695C0();
              v55 = v127[0];
            }
          }

          else
          {
            sub_1D8972230(v60, v54);
            v55 = v127[0];
            v62 = sub_1D87F03BC(&v130);
            if ((v61 & 1) != (v63 & 1))
            {
              goto LABEL_67;
            }

            v57 = v62;
          }

          v64 = v136;
          *v136 = v55;

          v65 = *v64;
          if ((v61 & 1) == 0)
          {
            sub_1D8797808(v127);
            v66 = v127[0];
            v65[(v57 >> 6) + 8] |= 1 << v57;
            v67 = v65[6] + 88 * v57;
            v68 = v131;
            *v67 = v130;
            *(v67 + 16) = v68;
            v69 = v132;
            v70 = v133;
            v71 = v134;
            *(v67 + 80) = v135;
            *(v67 + 48) = v70;
            *(v67 + 64) = v71;
            *(v67 + 32) = v69;
            *(v65[7] + 8 * v57) = v66;
            v72 = v65[2];
            v73 = __OFADD__(v72, 1);
            v74 = v72 + 1;
            if (v73)
            {
              goto LABEL_65;
            }

            v65[2] = v74;
            sub_1D881F59C(&v130, v127);
          }

          v75 = v65[7];
          v76 = *(v75 + 8 * v57);
          v77 = swift_isUniquelyReferenced_nonNull_native();
          *(v75 + 8 * v57) = v76;
          if ((v77 & 1) == 0)
          {
            v76 = sub_1D87C8AA0(0, v76[2] + 1, 1, v76);
            *(v75 + 8 * v57) = v76;
          }

          v79 = v76[2];
          v78 = v76[3];
          if (v79 >= v78 >> 1)
          {
            *(v75 + 8 * v57) = sub_1D87C8AA0((v78 > 1), v79 + 1, 1, v76);
          }

          sub_1D88C5520(v126);
          sub_1D881F5F8(&v130);
          v25 = v124;
          sub_1D8A50E28(v124, type metadata accessor for DetectionRequest);
          sub_1D8A50E28(v19, type metadata accessor for CVProcessorTaskDescriptor);
          v80 = *(v75 + 8 * v57);
          *(v80 + 16) = v79 + 1;
          v81 = v80 + v122 + v79 * v119;
          v24 = v119;
          v16 = sub_1D8A512F0(v123, v81, type metadata accessor for CVProcessorTaskDescriptor);
          v21 = sub_1D8797808;
          v22 = v120;
          v13 = v121;
        }
      }

      else
      {
        sub_1D8A50E28(v25, type metadata accessor for DetectionRequest);
        v16 = sub_1D8A50E28(v19, type metadata accessor for CVProcessorTaskDescriptor);
      }

      v23 += v24;
      --v20;
    }

    while (v20);
  }

  MEMORY[0x1EEE9AC00](v16);
  v90 = v117;
  *(&v108 - 6) = v115;
  *(&v108 - 5) = v90;
  v91 = v116;
  *(&v108 - 4) = v110;
  *(&v108 - 3) = v91;
  *(&v108 - 2) = v109;
  BYTE4(v91) = BYTE4(v111);
  *(&v108 - 2) = v111;
  *(&v108 - 4) = BYTE4(v91) & 1;

  v93 = v125;
  v94 = sub_1D88C10EC(v92, sub_1D8A57AD8);

  v125 = v93;
  if (v93)
  {
    result = sub_1D878BBCC(v21, 0);
LABEL_36:
    *a10 = v125;
    return result;
  }

  v118 = v21;
  v96 = *(v94 + 16);
  if (!v96)
  {
    v98 = MEMORY[0x1E69E7CC0];
LABEL_56:

    result = sub_1D878BBCC(v118, 0);
    *v108 = v98;
    return result;
  }

  v97 = 0;
  v136 = (v94 + 32);
  v98 = MEMORY[0x1E69E7CC0];
  while (v97 < *(v94 + 16))
  {
    v99 = v136[v97];
    v100 = *(v99 + 16);
    v101 = v98[2];
    v102 = v101 + v100;
    if (__OFADD__(v101, v100))
    {
      goto LABEL_59;
    }

    v103 = swift_isUniquelyReferenced_nonNull_native();
    if (v103 && v102 <= v98[3] >> 1)
    {
      if (*(v99 + 16))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v101 <= v102)
      {
        v104 = v101 + v100;
      }

      else
      {
        v104 = v101;
      }

      v98 = sub_1D87C8A7C(v103, v104, 1, v98);
      if (*(v99 + 16))
      {
LABEL_51:
        v105 = (v98[3] >> 1) - v98[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63368, &qword_1D8B1E948);
        if (v105 < v100)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v100)
        {
          v106 = v98[2];
          v73 = __OFADD__(v106, v100);
          v107 = v106 + v100;
          if (v73)
          {
            goto LABEL_64;
          }

          v98[2] = v107;
        }

        goto LABEL_40;
      }
    }

    if (v100)
    {
      goto LABEL_60;
    }

LABEL_40:
    if (v96 == ++v97)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8A4955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v41 = a5;
  v42 = a6;
  v44 = a3;
  v40 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63368, &qword_1D8B1E948);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v39 - v16;
  sub_1D8A596F4(a1, a7, a8, &v60);
  if (!v8)
  {
    v39[0] = a4;
    v39[1] = a8;
    v76 = v15;
    v43 = 0;
    v59 = v65;
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v54 = v60;
    v55 = v61;
    if (*(&v64 + 1) == 1)
    {
      v18 = *(a1 + 72);
      v19 = *(a1 + 80);
      sub_1D88C5438(a1, v46);
      sub_1D881F59C(a1, &v47);
      v20 = v46;
    }

    else
    {
      v68[2] = v62;
      v68[3] = v63;
      v68[0] = v60;
      v68[1] = v61;
      v68[4] = v64;
      v69 = v65;
      v21 = v41;
      sub_1D87A0E38(&v60, &v47, &qword_1ECA64960, &qword_1D8B25E70);

      v23 = v43;
      v24 = sub_1D88C65F0(v22, v68);
      v43 = v23;
      sub_1D87A14E4(&v60, &qword_1ECA64960, &qword_1D8B25E70);

      *v21 = v24;

      v50 = v57;
      v51 = v58;
      v49 = v56;
      v19 = v59;
      v52 = v59;
      v47 = v54;
      v48 = v55;
      v18 = *(&v58 + 1);
      v20 = &v47;
    }

    sub_1D88C5438(v20, v53);
    sub_1D88C5438(v53, &v47);
    *(&v51 + 1) = v18;
    v52 = v19;
    v75 = v19;
    v72 = v49;
    v73 = v50;
    v70 = v47;
    v71 = v48;
    v74 = v51;
    sub_1D87A0E38(&v60, v46, &qword_1ECA64960, &qword_1D8B25E70);
    v25 = v43;
    sub_1D8A49A08(&v70, v39[0], v42 | ((HIDWORD(v42) & 1) << 32), a7, v66);
    if (v25)
    {
      v9 = v25;
      sub_1D881F5F8(&v47);
      sub_1D87A14E4(&v60, &qword_1ECA64960, &qword_1D8B25E70);
    }

    else
    {
      v43 = 0;
      v27 = v40;
      v28 = *(v40 + 16);
      if (v28)
      {
        v45 = MEMORY[0x1E69E7CC0];
        sub_1D87F45A4(0, v28, 0);
        v9 = v45;
        v29 = *(type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
        v30 = v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v44 = *(v29 + 72);
        do
        {
          sub_1D8A50DC0(v30, v17, type metadata accessor for CVProcessorTaskDescriptor);
          v31 = &v17[*(v14 + 48)];
          v32 = v14;
          v33 = &v17[*(v14 + 64)];
          v34 = v73;
          *(v31 + 2) = v72;
          *(v31 + 3) = v34;
          *(v31 + 4) = v74;
          *(v31 + 10) = v75;
          v35 = v71;
          *v31 = v70;
          *(v31 + 1) = v35;
          v36 = v66[1];
          *v33 = v66[0];
          *(v33 + 1) = v36;
          v33[32] = v67;
          sub_1D881F59C(&v47, v46);
          v45 = v9;
          v38 = *(v9 + 16);
          v37 = *(v9 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1D87F45A4((v37 > 1), v38 + 1, 1);
            v9 = v45;
          }

          *(v9 + 16) = v38 + 1;
          sub_1D881F6FC(v17, v9 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v38, &qword_1ECA63368, &qword_1D8B1E948);
          v30 += v44;
          --v28;
          v14 = v32;
        }

        while (v28);
        sub_1D881F5F8(&v47);
        sub_1D87A14E4(&v60, &qword_1ECA64960, &qword_1D8B25E70);
      }

      else
      {
        sub_1D881F5F8(&v47);
        sub_1D87A14E4(&v60, &qword_1ECA64960, &qword_1D8B25E70);
        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  return v9;
}

float64_t sub_1D8A49A08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  sub_1D8A49A78(a1, a2, *(v6 + 24), a3 | ((HIDWORD(a3) & 1) << 32), a4, v11);
  if (!v7)
  {
    result = v11[0].f64[0];
    v10 = v11[1];
    *a6 = v11[0];
    *(a6 + 16) = v10;
    *(a6 + 32) = v12;
  }

  return result;
}

void sub_1D8A49A78(uint64_t a1@<X0>, uint64_t a2@<X1>, float64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X5>, float64x2_t *a6@<X8>)
{
  v183 = a6;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 32);
  v163.i64[0] = v14;
  v15(&v175, v16, v14);
  if (v176)
  {
    sub_1D88C3978(v175, v176);
    (*(v11 + 16))(v13, a2, a5);
    v17 = sub_1D8B151C0();
    v18 = sub_1D8B16210();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      v20 = CameraSourceFrame.timestamp.getter(a5, v163.i64[0]);
      (*(v11 + 8))(v13, a5);
      *(v19 + 4) = v20;
      _os_log_impl(&dword_1D8783000, v17, v18, "No pixelbuffer in frame %f", v19, 0xCu);
      MEMORY[0x1DA721330](v19, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v13, a5);
    }

    goto LABEL_11;
  }

  v161.f64[0] = a3;
  v162 = v175;
  sub_1D88C5438(a1, v169);
  sub_1D88C5438(v169, &v170);
  v180[2] = v172;
  v180[3] = v173;
  v181 = v174;
  v180[0] = v170;
  v180[1] = v171;
  v21 = *(a1 + 72);
  v177 = v21;
  if (!v21)
  {
    sub_1D88C5438(v169, v168);
    sub_1D8A57AA0(v168, v167);
    v23 = sub_1D8B151C0();
    v24 = sub_1D8B16210();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D8783000, v23, v24, "No pixelbuffer in storage!", v25, 2u);
      MEMORY[0x1DA721330](v25, -1, -1);
    }

    sub_1D88C3978(v162, 0);
    sub_1D88C558C(v169);
    goto LABEL_11;
  }

  type metadata accessor for CVBuffer(0);
  sub_1D88C5530(v169, v168);
  sub_1D87A0E38(&v177, v168, &qword_1ECA64970, &unk_1D8B25E80);
  sub_1D8A4F044(&unk_1EE0E37A0, 255, type metadata accessor for CVBuffer, &unk_1D8B19C48);
  v22 = v162;
  if (sub_1D8B13D60())
  {
    sub_1D87A14E4(&v177, &qword_1ECA64970, &unk_1D8B25E80);
    sub_1D88C558C(v169);
    sub_1D88C3978(v22, 0);
LABEL_11:
    v26 = 0uLL;
    v27 = 1;
    v28 = 0uLL;
LABEL_12:
    v29 = v183;
    *v183 = v26;
    v29[1] = v28;
    LOBYTE(v29[2].f64[0]) = v27;
    return;
  }

  v30 = *(a1 + 80);
  v31 = MEMORY[0x1E695F050];
  v32 = v164.i64[0];
  if (v30)
  {
    v168[0] = 0.0;
    memset(v182, 0, 32);
    v182[32] = 1;
    v33 = *MEMORY[0x1E695F050];
    v34 = *(MEMORY[0x1E695F050] + 8);
    v35 = *(MEMORY[0x1E695F050] + 16);
    v36 = *(MEMORY[0x1E695F050] + 24);
    v37 = v30;
    sub_1D8A3D48C(v37, v21, v168, v182, v33, v34, v35, v36);
    if (v32)
    {
      sub_1D88C3978(v162, 0);
      sub_1D88C558C(v169);
      sub_1D87A14E4(&v177, &qword_1ECA64970, &unk_1D8B25E80);

      return;
    }
  }

  sub_1D8A4A7C8(v180, a4 | ((HIDWORD(a4) & 1) << 32), v163.i64[0], v168);
  v38 = v168[0];
  v39 = *&v171;
  v40.i64[0] = 0;
  if (v173)
  {
    v41 = v21;
    v42 = v162;
    if (v173 == 1)
    {
      v43 = 0;
      v45 = *(&v172 + 1);
      v44 = *&v172;
      v40.i64[0] = *(&v171 + 1);
    }

    else
    {
      v39 = 0.0;
      v43 = 1;
      v44 = 0.0;
      v45 = 0.0;
    }

    v46 = v32;
  }

  else if (v174)
  {
    v47 = *(&v170 + 1);
    v41 = v21;
    if (v174 != 1)
    {
      v111 = v162;
      *v112.i64 = CVPixelBufferGetWidth(v162);
      v163 = v112;
      *v113.i64 = CVPixelBufferGetHeight(v111);
      v164 = v113;
      v114 = CGRound(*v163.i64);
      v115 = CGRound(*v164.i64);
      v116.i64[0] = 0;
      v117.f64[0] = NAN;
      v117.f64[1] = NAN;
      v160 = vnegq_f64(v117);
      v118 = CGRound(*vbslq_s8(v160, v116, v163).i64);
      v119.i64[0] = 0;
      v120 = CGRound(*vbslq_s8(v160, v119, v164).i64);
      v69 = v114 - v118;
      v68 = v115 - v120;
      v121 = v47;
      v122 = *&v39;
      v185.origin.x = v118;
      v185.origin.y = v120;
      v185.size.width = v69;
      v185.size.height = v68;
      Width = CGRectGetWidth(v185);
      v186.origin.x = 0.0;
      v186.origin.y = 0.0;
      v186.size.width = v47;
      v186.size.height = *&v39;
      if (CGRectGetWidth(v186) >= Width && (v187.origin.x = v118, v187.origin.y = v120, v187.size.width = v69, v187.size.height = v68, Height = CGRectGetHeight(v187), v188.origin.x = 0.0, v188.origin.y = 0.0, v188.size.width = v47, v188.size.height = *&v39, CGRectGetHeight(v188) >= Height))
      {
        v205.origin.x = 0.0;
        v205.origin.y = 0.0;
        v205.size.width = v47;
        v205.size.height = *&v39;
        MidX = CGRectGetMidX(v205);
        v206.origin.x = 0.0;
        v206.origin.y = 0.0;
        v206.size.width = v47;
        v206.size.height = *&v39;
        v39 = 0.0;
        x = MidX - v69 * 0.5;
        y = CGRectGetMidY(v206) - v68 * 0.5;
        v43 = 1;
        v40.i64[0] = 0;
        v44 = 0.0;
        v45 = 0.0;
        v46 = v32;
        v42 = v162;
      }

      else
      {
        v189.origin.x = v118;
        v189.origin.y = v120;
        v189.size.width = v69;
        v189.size.height = v68;
        v125 = CGRectGetWidth(v189);
        v190.origin.x = v118;
        v190.origin.y = v120;
        v190.size.width = v69;
        v190.size.height = v68;
        v39 = 0.0;
        *v40.i64 = v125 / CGRectGetHeight(v190);
        if (v38 == 4.71238898 || v38 == 1.57079633)
        {
          *v40.i64 = 1.0 / *v40.i64;
        }

        v127 = v121 / v122 < *v40.i64;
        v128 = round(*v40.i64 * v121 / (v121 / v122));
        v129 = round(v121 / v122 * v122 / *v40.i64);
        if (v127)
        {
          v68 = v129;
        }

        else
        {
          v68 = v122;
        }

        if (v127)
        {
          v69 = v47;
        }

        else
        {
          v69 = v128;
        }

        x = round((v121 - v69) * 0.5);
        y = round((v122 - v68) * 0.5);
        v43 = 1;
        v44 = 0.0;
        v45 = 0.0;
        v46 = v32;
        v42 = v162;
        v40.i64[0] = 0;
      }

      goto LABEL_41;
    }

    v48 = v168[0] * 180.0 / 3.14159265;
    v49 = v48 == 90.0;
    if (v48 == 270.0)
    {
      v49 = 1;
    }

    v50 = !v49;
    if (v49)
    {
      v51 = v171;
    }

    else
    {
      v51 = *(&v170 + 1);
    }

    if (v50)
    {
      v52 = v171;
    }

    else
    {
      v52 = *(&v170 + 1);
    }

    v53 = v51 / v52;
    v42 = v162;
    *v54.i64 = CVPixelBufferGetWidth(v162);
    v163 = v54;
    *v55.i64 = CVPixelBufferGetHeight(v42);
    v164 = v55;
    v56 = CGRound(*v163.i64);
    v57 = CGRound(*v164.i64);
    v58.i64[0] = 0;
    v59.f64[0] = NAN;
    v59.f64[1] = NAN;
    v160 = vnegq_f64(v59);
    v60 = CGRound(*vbslq_s8(v160, v58, v163).i64);
    v61.i64[0] = 0;
    *v40.i64 = CGRound(*vbslq_s8(v160, v61, v164).i64);
    v43 = 0;
    v62 = (v56 - v60) / (v57 - *v40.i64);
    v63 = v62 < v53;
    v64 = round(v53 * (v56 - v60) / v62);
    v65 = round((v57 - *v40.i64) * v62 / v53);
    if (v63)
    {
      v45 = v65;
    }

    else
    {
      v45 = v57 - *v40.i64;
    }

    if (v63)
    {
      v44 = v56 - v60;
    }

    else
    {
      v44 = v64;
    }

    *v40.i64 = *v40.i64 + round((v57 - *v40.i64 - v45) * 0.5);
    v39 = v60 + round((v56 - v60 - v44) * 0.5);
    v46 = v32;
  }

  else
  {
    v41 = v21;
    v43 = 1;
    v39 = 0.0;
    v44 = 0.0;
    v45 = 0.0;
    v46 = v32;
    v42 = v162;
  }

  x = v31->origin.x;
  y = v31->origin.y;
  v69 = v31->size.width;
  v68 = v31->size.height;
LABEL_41:
  v164 = v40;
  *v178 = v39;
  v178[1] = v40.i64[0];
  *&v178[2] = v44;
  *&v178[3] = v45;
  v179 = v43;
  v168[0] = v38;
  sub_1D8A3D48C(v42, v41, v168, v178, x, y, v69, v68);
  if (!v46)
  {
    if (v43)
    {
      v184.origin.x = x;
      v184.origin.y = y;
      v184.size.width = v69;
      v184.size.height = v68;
      if (CGRectEqualToRect(v184, *v31))
      {
        sub_1D88C3978(v162, 0);
        sub_1D88C558C(v169);
        sub_1D87A14E4(&v177, &qword_1ECA64970, &unk_1D8B25E80);
        v26 = 0uLL;
        v27 = 1;
        v28 = 0uLL;
      }

      else
      {
        *v130.i64 = CVPixelBufferGetWidth(v41);
        v163 = v130;
        *v131.i64 = CVPixelBufferGetHeight(v41);
        v164 = v131;
        v132 = CGRound(*v163.i64);
        v133 = CGRound(*v164.i64);
        v134.i64[0] = 0;
        v135.f64[0] = NAN;
        v135.f64[1] = NAN;
        v161 = vnegq_f64(v135);
        v136 = CGRound(*vbslq_s8(v161, v134, v163).i64);
        v137.i64[0] = 0;
        v138 = CGRound(*vbslq_s8(v161, v137, v164).i64);
        v161.f64[0] = v38;
        v139 = v138;
        *v164.i64 = v132 - v136;
        *v163.i64 = v133 - v138;
        v160.f64[0] = v136;
        v191.origin.x = x;
        v191.origin.y = y;
        v191.size.width = v69;
        v191.size.height = v68;
        v140 = (v136 - x) / CGRectGetWidth(v191);
        v192.origin.x = x;
        v192.origin.y = y;
        v192.size.width = v69;
        v192.size.height = v68;
        v141 = (v139 - y) / CGRectGetHeight(v192);
        v193.origin.x = v136;
        v193.origin.y = v139;
        *&v193.size.width = v164.i64[0];
        *&v193.size.height = v163.i64[0];
        v142 = CGRectGetWidth(v193);
        v194.origin.x = x;
        v194.origin.y = y;
        v194.size.width = v69;
        v194.size.height = v68;
        v143 = v142 / CGRectGetWidth(v194);
        v195.origin.x = v160.f64[0];
        v195.origin.y = v139;
        *&v195.size.width = v164.i64[0];
        *&v195.size.height = v163.i64[0];
        v144 = CGRectGetHeight(v195);
        v196.origin.x = x;
        v196.origin.y = y;
        v196.size.width = v69;
        v196.size.height = v68;
        v145 = v144 / CGRectGetHeight(v196);
        v197.origin.x = v140;
        v197.origin.y = v141;
        v197.size.width = v143;
        v197.size.height = v145;
        v164.i64[0] = CGRectGetMinX(v197);
        v198.origin.x = v140;
        v198.origin.y = v141;
        v198.size.width = v143;
        v198.size.height = v145;
        v163.i64[0] = CGRectGetMinY(v198);
        v199.origin.x = v140;
        v199.origin.y = v141;
        v199.size.width = v143;
        v199.size.height = v145;
        v160.f64[0] = CGRectGetMaxX(v199);
        v200.origin.x = v140;
        v200.origin.y = v141;
        v200.size.width = v143;
        v200.size.height = v145;
        MinY = CGRectGetMinY(v200);
        v201.origin.x = v140;
        v201.origin.y = v141;
        v201.size.width = v143;
        v201.size.height = v145;
        MinX = CGRectGetMinX(v201);
        v202.origin.x = v140;
        v202.origin.y = v141;
        v202.size.width = v143;
        v202.size.height = v145;
        MaxY = CGRectGetMaxY(v202);
        v203.origin.x = v140;
        v203.origin.y = v141;
        v203.size.width = v143;
        v203.size.height = v145;
        MaxX = CGRectGetMaxX(v203);
        v204.origin.x = v140;
        v204.origin.y = v141;
        v204.size.width = v143;
        v204.size.height = v145;
        v150 = CGRectGetMaxY(v204);
        v168[0] = *v164.i64;
        v168[1] = *v163.i64;
        v168[2] = v160.f64[0];
        v168[3] = MinY;
        v168[4] = MinX;
        v168[5] = MaxY;
        v168[6] = MaxX;
        v168[7] = v150;
        v166[0] = v161.f64[0];
        v165 = 0;
        sub_1D8A5A9D8(v166, &v165, v167);
        Corners.bounds.getter();
        v160 = v152;
        v161 = v151;
        v163 = v154;
        v164 = v153;
        sub_1D88C3978(v162, 0);
        sub_1D88C558C(v169);
        sub_1D87A14E4(&v177, &qword_1ECA64970, &unk_1D8B25E80);
        v28.f64[0] = v160.f64[0];
        v26.f64[0] = v161.f64[0];
        v27 = 0;
        *&v28.f64[1] = v163.i64[0];
        *&v26.f64[1] = v164.i64[0];
      }
    }

    else
    {
      v70 = v162;
      *v71.i64 = CVPixelBufferGetWidth(v162);
      v161 = v71;
      *v72.i64 = CVPixelBufferGetHeight(v70);
      v163 = v72;
      v73 = CGRound(v161.f64[0]);
      v74 = CGRound(*v163.i64);
      v75.i64[0] = 0;
      v76.f64[0] = NAN;
      v76.f64[1] = NAN;
      v160 = vnegq_f64(v76);
      v77 = CGRound(*vbslq_s8(v160, v75, v161).i64);
      v78.i64[0] = 0;
      v79 = CGRound(*vbslq_s8(v160, v78, v163).i64);
      v80 = v73 - v77;
      v81 = v74 - v79;
      *v82.i64 = v39 - v77;
      v163 = v82;
      *v82.i64 = v77;
      v83 = v79;
      v84 = v80;
      v85 = v81;
      *v86.i64 = CGRectGetWidth(*v82.i8);
      v161 = v86;
      v86.i64[1] = v164.i64[1];
      *v86.i64 = *v164.i64 - v79;
      v160 = v86;
      *v86.i64 = v77;
      v87 = v79;
      v88 = v80;
      v89 = v81;
      *&v90 = CGRectGetHeight(*v86.i8);
      v159 = v90;
      *&v90 = v39;
      v91 = v164.i64[0];
      v92 = v44;
      v93 = v45;
      *&v94 = CGRectGetWidth(*&v90);
      v158 = v94;
      *&v94 = v77;
      v95 = v79;
      v96 = v80;
      v97 = v81;
      *&v98 = CGRectGetWidth(*&v94);
      v157 = v98;
      *&v98 = v39;
      v99 = v164.i64[0];
      v100 = v44;
      v101 = v45;
      *v102.i64 = CGRectGetHeight(*&v98);
      v164 = v102;
      *v102.i64 = v77;
      v103 = v79;
      v104 = v80;
      v105 = v81;
      *&v106 = CGRectGetHeight(*v102.i8);
      v156 = v106;
      sub_1D88C3978(v70, 0);
      sub_1D87A14E4(&v177, &qword_1ECA64970, &unk_1D8B25E80);
      sub_1D88C558C(v169);
      v27 = 0;
      *&v108.f64[0] = v157;
      *&v107.f64[0] = v158;
      *&v109.f64[0] = v163.i64[0];
      *&v107.f64[1] = v164.i64[0];
      v109.f64[1] = v160.f64[0];
      *&v108.f64[1] = v156;
      v110.f64[0] = v161.f64[0];
      *&v110.f64[1] = v159;
      v26 = vdivq_f64(v109, v110);
      v28 = vdivq_f64(v107, v108);
    }

    goto LABEL_12;
  }

  sub_1D88C3978(v42, 0);
  sub_1D88C558C(v169);
  sub_1D87A14E4(&v177, &qword_1ECA64970, &unk_1D8B25E80);
}

void sub_1D8A4A7C8(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, double *a4@<X8>)
{
  v4 = *(a1 + 52);
  if ((*(a1 + 56) & 1) == 0)
  {
    if (v4 == 1)
    {
      CameraSourceFrame.rotationAngle.getter(a3, a4);
      return;
    }

    goto LABEL_8;
  }

  if (!v4 || (v5 = a4, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DA0, &qword_1D8B25E60), a4 = v5, (a2 & 0x100000000) != 0))
  {
LABEL_8:
    *a4 = 0.0;
    return;
  }

  if ((a2 - 1) >= 8)
  {
    sub_1D8B16B90();
    __break(1u);
  }

  else
  {
    *v5 = dbl_1D8B36DF8[(a2 - 1)];
  }
}

double static CVCoordinator.rectByCroppingRectToAspectRatio(rect:cropAspectRatio:)(double a1, double a2, double a3, double a4, double a5)
{
  v5 = round(a3 * a5 / (a3 / a4));
  if (a3 / a4 < a5)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  return round((a3 - v6) * 0.5) + a1;
}

double static CVCoordinator.rectWithAspectRatioInsideDimensions(boundingDimensions:cropAspectRatio:)(double a1, double a2, double a3)
{
  v3 = round(a1 * a3 / (a1 / a2));
  if (a1 / a2 < a3)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3;
  }

  return round((a1 - v4) * 0.5);
}

CGFloat static CVCoordinator.normalizedLocationOfRect(innerRect:outerRect:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v14 = a1 - a5;
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  v18 = v14 / CGRectGetWidth(v19);
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  CGRectGetHeight(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetWidth(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  CGRectGetWidth(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  CGRectGetHeight(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  CGRectGetHeight(v24);
  return v18;
}

uint64_t sub_1D8A4AA14@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, _BYTE *a6@<X8>)
{
  v12 = type metadata accessor for DetectionRequest.Originator(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v62 - v17;
  v19 = *(a2 + 32);
  v70 = v16;
  v69 = a3;
  v68 = a4;
  if (v19)
  {
    v20 = type metadata accessor for DetectionRequest(0);
    v21 = &a1[v20[7]];
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v25 = v21[3];
  }

  else
  {
    v27 = *(a2 + 16);
    v26 = *(a2 + 24);
    v29 = *a2;
    v28 = *(a2 + 8);
    v20 = type metadata accessor for DetectionRequest(0);
    v30 = &a1[v20[7]];
    v31 = *v30;
    MaxX = *(v30 + 1);
    v32 = MaxX;
    v33 = *(v30 + 3);
    MinX = *(v30 + 2);
    MinY = v33;
    v63 = v31;
    v74.origin.x = v29;
    v74.origin.y = v28;
    v74.size.width = v27;
    v74.size.height = v26;
    Width = CGRectGetWidth(v74);
    v62 = v32 - v28;
    v22 = (v31 - v29) / Width;
    v75.origin.x = v29;
    v75.origin.y = v28;
    v75.size.width = v27;
    v75.size.height = v26;
    v64 = v26;
    v23 = (v32 - v28) / CGRectGetHeight(v75);
    v76.origin.x = v31;
    v76.origin.y = v32;
    v35 = MinX;
    v76.size.width = MinX;
    v36 = MinY;
    v76.size.height = MinY;
    v62 = CGRectGetWidth(v76);
    v77.origin.x = v29;
    v77.origin.y = v28;
    v77.size.width = v27;
    v77.size.height = v26;
    v24 = v62 / CGRectGetWidth(v77);
    v78.origin.x = v63;
    v78.origin.y = MaxX;
    v78.size.width = v35;
    v78.size.height = v36;
    Height = CGRectGetHeight(v78);
    v79.origin.x = v29;
    v79.origin.y = v28;
    v79.size.width = v27;
    v79.size.height = v64;
    v25 = Height / CGRectGetHeight(v79);
  }

  v38 = *a1;
  type metadata accessor for DetectionRequest(0);
  sub_1D8A50DC0(&a1[v20[5]], v18, type metadata accessor for DetectionRequest.Originator);
  v39 = *&a1[v20[6]];

  v80.origin.x = v22;
  v80.origin.y = v23;
  v80.size.width = v24;
  v80.size.height = v25;
  MinX = CGRectGetMinX(v80);
  v81.origin.x = v22;
  v81.origin.y = v23;
  v81.size.width = v24;
  v81.size.height = v25;
  MinY = CGRectGetMinY(v81);
  v82.origin.x = v22;
  v82.origin.y = v23;
  v82.size.width = v24;
  v82.size.height = v25;
  MaxX = CGRectGetMaxX(v82);
  v83.origin.x = v22;
  v83.origin.y = v23;
  v83.size.width = v24;
  v83.size.height = v25;
  v40 = CGRectGetMinY(v83);
  v84.origin.x = v22;
  v84.origin.y = v23;
  v84.size.width = v24;
  v84.size.height = v25;
  v41 = CGRectGetMinX(v84);
  v85.origin.x = v22;
  v85.origin.y = v23;
  v85.size.width = v24;
  v85.size.height = v25;
  MaxY = CGRectGetMaxY(v85);
  v86.origin.x = v22;
  v86.origin.y = v23;
  v86.size.width = v24;
  v86.size.height = v25;
  v43 = CGRectGetMaxX(v86);
  v87.origin.x = v22;
  v87.origin.y = v23;
  v87.size.width = v24;
  v87.size.height = v25;
  v44 = CGRectGetMaxY(v87);
  v72[1] = MinX;
  v72[2] = MinY;
  v72[3] = MaxX;
  v72[4] = v40;
  v72[5] = v41;
  v72[6] = MaxY;
  v72[7] = v43;
  v72[8] = v44;
  v73 = 0;
  CameraSourceFrame.rotationAngle.getter(a5, v72);
  sub_1D8A5A9D8(&v73, v72, v71);
  Corners.bounds.getter();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = *&a1[v20[8]];
  sub_1D8A50DC0(v18, v15, type metadata accessor for DetectionRequest.Originator);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_18:
    *a6 = v38;
    result = sub_1D8A512F0(v18, &a6[v20[5]], type metadata accessor for DetectionRequest.Originator);
    *&a6[v20[6]] = v39;
    v61 = &a6[v20[7]];
    *v61 = v46;
    v61[1] = v48;
    v61[2] = v50;
    v61[3] = v52;
    *&a6[v20[8]] = v53;
  }

  else
  {
    sub_1D8A50E28(v15, type metadata accessor for DetectionRequest.Originator);
    result = MEMORY[0x1E69E7CD0];
    if (v38 <= 0xD && ((1 << v38) & 0x3002) != 0)
    {
      result = sub_1D8A50348(&unk_1F5428C30, &qword_1ECA67E58, &qword_1D8B36A78);
    }

    v55 = 0;
    v56 = 1 << *(result + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & *(result + 56);
    v59 = (v56 + 63) >> 6;
    while (v58)
    {
LABEL_11:
      v58 &= v58 - 1;
    }

    while (1)
    {
      v60 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v60 >= v59)
      {

        goto LABEL_18;
      }

      v58 = *(result + 56 + 8 * v60);
      ++v55;
      if (v58)
      {
        v55 = v60;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D8A4AF2C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D885D380(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_1D8B16B30();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1D8B15D60();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1D8A4B2D4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1D8A4B060(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D885D3BC(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1D8A4B0CC(v4);
  *a1 = v2;
}

void sub_1D8A4B0CC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D8B16B30();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D8B15D60();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1D8A4B830(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D8A4B1C4(0, v2, 1, a1);
  }
}

unint64_t sub_1D8A4B1C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + a3);
    v8 = *(v4 + a3);
    result = 0x36FBuLL >> v7;
    v9 = 0x6F9uLL >> v7;
    v10 = 0xF9uLL >> v7;
    v11 = 0x39uLL >> v7;
    v12 = v7 & 0xFFFFFFFB;
    v13 = v6;
    v14 = v5;
    while (1)
    {
      v15 = *(v14 - 1);
      if (v15 > 7)
      {
        break;
      }

      if (*(v14 - 1) > 3u)
      {
        if (v15 - 6 < 2)
        {
          if ((v11 & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }

        if (v15 != 5)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (*(v14 - 1) <= 1u)
        {
          if (v15 != 1)
          {
            goto LABEL_4;
          }

LABEL_21:
          if ((v9 & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }

        if (v15 == 2)
        {
          goto LABEL_13;
        }
      }

      if (v12)
      {
        goto LABEL_4;
      }

LABEL_25:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      *v14 = v15;
      *--v14 = v8;
      if (__CFADD__(v13++, 1))
      {
LABEL_4:
        ++a3;
        ++v5;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    if (((1 << v15) & 0x600) != 0)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    if (((1 << v15) & 0x900) != 0)
    {
LABEL_13:
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    goto LABEL_21;
  }

  return result;
}

void sub_1D8A4B2D4(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1D885CC68(v8);
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1D8A4BF08((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D87C7C5C(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = sub_1D87C7C5C((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v5 + 32];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[16 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[16 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        sub_1D8A4BF08((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_1D8A4B830(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_126:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_164;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_158:
      v9 = sub_1D885CC68(v9);
    }

    v84 = v9 + 16;
    v85 = *(v9 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v9[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1D8A4C0FC((*a3 + *v86), (*a3 + *v88), (*a3 + v89), v7);
        if (v5)
        {
          goto LABEL_135;
        }

        if (v89 < v87)
        {
          goto LABEL_150;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_151;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_152;
        }

        v85 = *v84 - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
          goto LABEL_135;
        }
      }

      goto LABEL_162;
    }

LABEL_135:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 >= v6)
    {
      goto LABEL_40;
    }

    v11 = *(*a3 + v8);
    v12 = flt_1D8B36E38[v11];
    v13 = flt_1D8B36E38[*(*a3 + v10)];
    v8 = v10 + 2;
    if (v10 + 2 < v6)
    {
      v14 = v11;
      while (1)
      {
        v17 = *(*a3 + v8);
        if (v14 <= 7u)
        {
          break;
        }

        v18 = 1 << v14;
        if ((v18 & 0x600) == 0)
        {
          if ((v18 & 0x900) != 0)
          {
            goto LABEL_22;
          }

LABEL_7:
          v15 = v12 < v13;
          v16 = 14598;
          goto LABEL_8;
        }

        v15 = v12 < v13;
        v16 = 16134;
LABEL_8:
        if (((v15 ^ (v16 >> v17)) & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_9:
        v14 = *(*a3 + v8++);
        if (v6 == v8)
        {
          v8 = v6;
          if (v12 < v13)
          {
            goto LABEL_31;
          }

          goto LABEL_40;
        }
      }

      if (v14 > 3u)
      {
        if (v14 - 6 >= 2)
        {
          if (v14 != 4)
          {
LABEL_27:
            if (v12 < v13 == ((v17 & 0xFFFFFFFB) != 0))
            {
              goto LABEL_28;
            }

            goto LABEL_9;
          }

LABEL_25:
          if (v12 < v13)
          {
            goto LABEL_31;
          }

          goto LABEL_9;
        }

        v15 = v12 < v13;
        v16 = 16326;
        goto LABEL_8;
      }

      if (v14 > 1u)
      {
        if (v14 != 2)
        {
          goto LABEL_27;
        }

LABEL_22:
        if (v12 < v13 == ((0x904uLL >> v17) & 1))
        {
          goto LABEL_28;
        }

        goto LABEL_9;
      }

      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_7;
    }

LABEL_28:
    if (v12 < v13)
    {
LABEL_31:
      if (v8 < v10)
      {
        goto LABEL_155;
      }

      if (v10 < v8)
      {
        v19 = v8 - 1;
        v20 = v10;
        do
        {
          if (v20 != v19)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_161;
            }

            v21 = *(v23 + v20);
            *(v23 + v20) = *(v23 + v19);
            *(v23 + v19) = v21;
          }
        }

        while (++v20 < v19--);
        v6 = a3[1];
      }
    }

LABEL_40:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_154;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_156;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_75:
    if (v8 < v10)
    {
      goto LABEL_153;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D87C7C5C(0, *(v9 + 2) + 1, 1, v9);
    }

    v39 = *(v9 + 2);
    v38 = *(v9 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v9 = sub_1D87C7C5C((v38 > 1), v39 + 1, 1, v9);
    }

    *(v9 + 2) = v40;
    v41 = &v9[16 * v39];
    *(v41 + 4) = v10;
    *(v41 + 5) = v8;
    v42 = *a1;
    if (!*a1)
    {
      goto LABEL_163;
    }

    if (v39)
    {
      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v44 = *(v9 + 4);
          v45 = *(v9 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_95:
          if (v47)
          {
            goto LABEL_141;
          }

          v60 = &v9[16 * v40];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_144;
          }

          v66 = &v9[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_147;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_148;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v40 - 2;
            }

            goto LABEL_116;
          }

          goto LABEL_109;
        }

        v70 = &v9[16 * v40];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_109:
        if (v65)
        {
          goto LABEL_143;
        }

        v73 = &v9[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_146;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_116:
        v7 = v43 - 1;
        if (v43 - 1 >= v40)
        {
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
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
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (!*a3)
        {
          goto LABEL_160;
        }

        v81 = *&v9[16 * v7 + 32];
        v82 = *&v9[16 * v43 + 40];
        sub_1D8A4C0FC((*a3 + v81), (*a3 + *&v9[16 * v43 + 32]), (*a3 + v82), v42);
        if (v5)
        {
          goto LABEL_135;
        }

        if (v82 < v81)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D885CC68(v9);
        }

        if (v7 >= *(v9 + 2))
        {
          goto LABEL_138;
        }

        v83 = &v9[16 * v7];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        sub_1D885CBDC(v43);
        v40 = *(v9 + 2);
        if (v40 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v9[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_139;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_140;
      }

      v55 = &v9[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_142;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_145;
      }

      if (v59 >= v51)
      {
        v77 = &v9[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_149;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_116;
      }

      goto LABEL_95;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_126;
    }
  }

  v24 = *a3;
  v25 = (*a3 + v8);
  v26 = v10 - v8;
LABEL_50:
  v27 = *(v24 + v8);
  v28 = *(v24 + v8);
  v29 = 0x36FBuLL >> v27;
  v30 = 0x6F9uLL >> v27;
  v31 = 0xF9uLL >> v27;
  v32 = 0x39uLL >> v27;
  v33 = v27 & 0xFFFFFFFB;
  v34 = v26;
  v35 = v25;
  while (1)
  {
    v36 = *(v35 - 1);
    if (v36 > 7)
    {
      if (((1 << v36) & 0x600) != 0)
      {
        if ((v31 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_70;
      }

      if (((1 << v36) & 0x900) != 0)
      {
LABEL_58:
        if ((v29 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_70;
      }

      goto LABEL_66;
    }

    if (*(v35 - 1) > 3u)
    {
      if (v36 - 6 < 2)
      {
        if ((v32 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_70;
      }

      if (v36 != 5)
      {
        goto LABEL_49;
      }

      goto LABEL_69;
    }

    if (*(v35 - 1) <= 1u)
    {
      if (v36 != 1)
      {
        goto LABEL_49;
      }

LABEL_66:
      if ((v30 & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_70;
    }

    if (v36 == 2)
    {
      goto LABEL_58;
    }

LABEL_69:
    if (v33)
    {
      goto LABEL_49;
    }

LABEL_70:
    if (!v24)
    {
      break;
    }

    *v35 = v36;
    *--v35 = v28;
    if (__CFADD__(v34++, 1))
    {
LABEL_49:
      ++v8;
      ++v25;
      --v26;
      if (v8 != v6)
      {
        goto LABEL_50;
      }

      v8 = v6;
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
}

uint64_t sub_1D8A4BF08(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1D8A4C0FC(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < a3 - __src)
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        v12 = *v6;
        v13 = *v4;
        if (v13 > 7)
        {
          break;
        }

        if (*v4 > 3u)
        {
          if (v13 - 6 < 2)
          {
            if ((0x39uLL >> v11))
            {
              goto LABEL_29;
            }

            goto LABEL_26;
          }

          if (v13 == 4)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (*v4 <= 1u)
          {
            if (!*v4)
            {
              goto LABEL_26;
            }

LABEL_14:
            if ((0x6F9uLL >> v11))
            {
              goto LABEL_29;
            }

            goto LABEL_26;
          }

          if (v13 == 2)
          {
            goto LABEL_22;
          }
        }

        if ((v12 & 0xFFFFFFFB) == 0)
        {
LABEL_29:
          v15 = v6 + 1;
          if (v7 >= v6 && v7 < v15)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

LABEL_26:
        v14 = v4 + 1;
        LOBYTE(v12) = *v4;
        v15 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v14)
          {
            goto LABEL_34;
          }
        }

LABEL_33:
        *v7 = v12;
LABEL_34:
        ++v7;
        if (v4 < v10)
        {
          v6 = v15;
          if (v15 < v5)
          {
            continue;
          }
        }

        goto LABEL_36;
      }

      if (((1 << v13) & 0x600) != 0)
      {
        if ((0xF9uLL >> v11))
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }

      if (((1 << v13) & 0x900) == 0)
      {
        goto LABEL_14;
      }

LABEL_22:
      if ((0x36FBuLL >> v11))
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

LABEL_36:
    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_78;
    }

LABEL_77:
    if (v6 >= v10)
    {
      goto LABEL_78;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_76:
    if (v6 != v4)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  do
  {
    v16 = v6 - 1;
    --v5;
    v17 = v10;
    while (1)
    {
      v19 = *--v17;
      v18 = v19;
      v20 = v19;
      v21 = *v16;
      if (v21 <= 7)
      {
        break;
      }

      if (((1 << v21) & 0x600) != 0)
      {
        if ((0xF9uLL >> v18))
        {
          goto LABEL_68;
        }

        goto LABEL_65;
      }

      if (((1 << v21) & 0x900) == 0)
      {
        goto LABEL_53;
      }

LABEL_61:
      if ((0x36FBuLL >> v18))
      {
        goto LABEL_68;
      }

LABEL_65:
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = v20;
      }

      --v5;
      v10 = v17;
      if (v17 <= v4)
      {
        v10 = v17;
        goto LABEL_76;
      }
    }

    if (*v16 <= 3u)
    {
      if (*v16 <= 1u)
      {
        if (!*v16)
        {
          goto LABEL_65;
        }

LABEL_53:
        if ((0x6F9uLL >> v18))
        {
          goto LABEL_68;
        }

        goto LABEL_65;
      }

      if (v21 != 2)
      {
        goto LABEL_64;
      }

      goto LABEL_61;
    }

    if (v21 - 6 < 2)
    {
      if ((0x39uLL >> v18))
      {
        goto LABEL_68;
      }

      goto LABEL_65;
    }

    if (v21 == 4)
    {
      goto LABEL_65;
    }

LABEL_64:
    if ((v20 & 0xFFFFFFFB) != 0)
    {
      goto LABEL_65;
    }

LABEL_68:
    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = v21;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (v16 > v7);
  v6 = v16;
  if (v16 == v4)
  {
    goto LABEL_77;
  }

LABEL_78:
  memmove(v6, v4, v10 - v4);
  return 1;
}

unint64_t *sub_1D8A4C424(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D8A4C5FC(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1D8A4C49C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D8A4C5FC(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1D8A4C424(v8, v4, v2);
  result = MEMORY[0x1DA721330](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1D8A4C5FC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 48) + v11) != 9)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1D8AF3FC0(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1D8AF3FC0(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8A4C6E8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1DA721350](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1DA721350](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s22VisualIntelligenceCore16DetectionRequestV10OriginatorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13240();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = type metadata accessor for DetectionRequest.Originator(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v36 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0, &qword_1D8B25F50);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v36 - v20;
  v22 = (&v36 + *(v19 + 56) - v20);
  sub_1D8A50DC0(a1, &v36 - v20, type metadata accessor for DetectionRequest.Originator);
  sub_1D8A50DC0(a2, v22, type metadata accessor for DetectionRequest.Originator);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_1D8A50E28(v22, type metadata accessor for DetectionRequest.Originator);
        goto LABEL_12;
      }

LABEL_20:
      sub_1D87A14E4(v21, &unk_1ECA64FB0, &qword_1D8B25F50);
      v25 = 0;
      return v25 & 1;
    }

    sub_1D8A50DC0(v21, v17, type metadata accessor for DetectionRequest.Originator);
    v31 = *v17;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_20;
    }

    v32 = *v22;
    v33 = *(v22 + 4);
    if (*(v17 + 4))
    {
      if (*(v17 + 4) != 1)
      {
        v25 = v33 == 2 && LODWORD(v32) == 0;
        goto LABEL_31;
      }

      if (v33 != 1)
      {
        goto LABEL_24;
      }
    }

    else if (*(v22 + 4))
    {
      goto LABEL_24;
    }

    if (v31 == v32)
    {
      v25 = 1;
      goto LABEL_31;
    }

LABEL_24:
    v25 = 0;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D8A50DC0(v21, v15, type metadata accessor for DetectionRequest.Originator);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v27 = v38;
      v26 = v39;
      v28 = *(v38 + 32);
      v28(v8, v15, v39);
      v29 = v37;
      v28(v37, v22, v26);
      v25 = sub_1D8B13200();
      v30 = *(v27 + 8);
      v30(v29, v26);
      v30(v8, v26);
      goto LABEL_31;
    }

    (*(v38 + 8))(v15, v39);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1D8A50DC0(v21, v12, type metadata accessor for DetectionRequest.Originator);
    v24 = *v12;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v25 = sub_1D894FA18(v24, *v22);

LABEL_31:
      sub_1D8A50E28(v21, type metadata accessor for DetectionRequest.Originator);
      return v25 & 1;
    }

    goto LABEL_20;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_20;
  }

LABEL_12:
  sub_1D8A50E28(v21, type metadata accessor for DetectionRequest.Originator);
  v25 = 1;
  return v25 & 1;
}

BOOL _s22VisualIntelligenceCore16DetectionRequestV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for DetectionRequest(0);
  if ((_s22VisualIntelligenceCore16DetectionRequestV10OriginatorO2eeoiySbAE_AEtFZ_0(&a1[v4[5]], &a2[v4[5]]) & 1) == 0 || (sub_1D894CAAC(*&a1[v4[6]], *&a2[v4[6]]) & 1) == 0)
  {
    return 0;
  }

  result = CGRectEqualToRect(*&a1[v4[7]], *&a2[v4[7]]);
  if (result)
  {
    return *&a1[v4[8]] == *&a2[v4[8]];
  }

  return result;
}

BOOL _s22VisualIntelligenceCore13CVCoordinatorC13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_1D8855000(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v8 = v4 == v7;
  if (v3 != v6)
  {
    v8 = 0;
  }

  return ((v2 ^ v5) & 1) == 0 && v8;
}

uint64_t _s22VisualIntelligenceCore16DetectionRequestV10AnnotationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for DetectionRequest.Annotation(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v25 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v25 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D20, &qword_1D8B22D08);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v25 - v18;
  v20 = *(v17 + 56);
  sub_1D8A50DC0(a1, &v25 - v18, type metadata accessor for DetectionRequest.Annotation);
  sub_1D8A50DC0(a2, &v19[v20], type metadata accessor for DetectionRequest.Annotation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8A50DC0(v19, v13, type metadata accessor for DetectionRequest.Annotation);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D881F6FC(&v19[v20], v6, &qword_1ECA67750, &unk_1D8B1E0C0);
        v22 = sub_1D87EF584(v13, v6);
        sub_1D87A14E4(v6, &qword_1ECA67750, &unk_1D8B1E0C0);
        sub_1D87A14E4(v13, &qword_1ECA67750, &unk_1D8B1E0C0);
LABEL_12:
        sub_1D8A50E28(v19, type metadata accessor for DetectionRequest.Annotation);
        return v22 & 1;
      }

      sub_1D87A14E4(v13, &qword_1ECA67750, &unk_1D8B1E0C0);
    }

    else
    {
      sub_1D8A50DC0(v19, v10, type metadata accessor for DetectionRequest.Annotation);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v22 = sub_1D87DE87C(*v10, v19[v20]);
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_1D8A50DC0(v19, v15, type metadata accessor for DetectionRequest.Annotation);
    v23 = *v15;
    if (!swift_getEnumCaseMultiPayload())
    {
      v22 = sub_1D88E3100(v23, *&v19[v20]);

      goto LABEL_12;
    }
  }

  sub_1D87A14E4(v19, &qword_1ECA63D20, &qword_1D8B22D08);
  v22 = 0;
  return v22 & 1;
}

BOOL sub_1D8A4D088(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 52);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a2 + 4);
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 48);
  v10 = *(a2 + 52);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  if (*(a1 + 4) == 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  if (!*(a1 + 48))
  {
    if (*(a2 + 48))
    {
      return 0;
    }

    v13 = 0;
    if (v2 != v8 || *(a1 + 16) != v7)
    {
      return v13;
    }

LABEL_19:
    if (v4)
    {
      if (v3)
      {
        if (v10)
        {
          v18 = v11;
        }

        else
        {
          v18 = 0;
        }

        if (v18 != 1)
        {
          return 0;
        }
      }

      else
      {
        if (v10)
        {
          v20 = 0;
        }

        else
        {
          v20 = v11;
        }

        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v3 == v10)
      {
        v19 = v11;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        return 0;
      }
    }

    if (v5)
    {
      if (v5 == 1)
      {
        if (v12 != 1)
        {
          return 0;
        }
      }

      else
      {
        if (v12 < 2)
        {
          return 0;
        }

        v21 = a1;
        v22 = a2;
        type metadata accessor for CGColor(0);
        sub_1D8A4F044(&unk_1EE0E3800, 255, type metadata accessor for CGColor, &unk_1D8B19DC0);
        v23 = sub_1D8B13D60();
        a2 = v22;
        v24 = v23;
        a1 = v21;
        if ((v24 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v12)
    {
      return 0;
    }

    v25 = *(a2 + 72);
    if (*(a1 + 72))
    {
      if (!v25)
      {
        return 0;
      }

      v26 = a1;
      v27 = a2;
      type metadata accessor for CVBuffer(0);
      sub_1D8A4F044(&unk_1EE0E37A0, 255, type metadata accessor for CVBuffer, &unk_1D8B19C48);
      v28 = v25;
      v29 = sub_1D8B13D60();

      a1 = v26;
      a2 = v27;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v25)
    {
      return 0;
    }

    v30 = *(a2 + 80);
    if (*(a1 + 80))
    {
      if (!v30)
      {
        return 0;
      }

      type metadata accessor for CVBuffer(0);
      sub_1D8A4F044(&unk_1EE0E37A0, 255, type metadata accessor for CVBuffer, &unk_1D8B19C48);
      v31 = v30;
      v32 = sub_1D8B13D60();

      return (v32 & 1) != 0;
    }

    return !v30;
  }

  if (*(a1 + 48) != 1)
  {
    if (v9 != 2 || v7 | v8 | *(a2 + 24) | *(a2 + 32) | *(a2 + 40))
    {
      return 0;
    }

    goto LABEL_19;
  }

  v13 = 0;
  if (v9 == 1 && v2 == v8)
  {
    v14 = a2;
    v15 = a1;
    v16 = CGRectEqualToRect(*(a1 + 16), *(a2 + 16));
    a2 = v14;
    v17 = v16;
    a1 = v15;
    if (!v17)
    {
      return 0;
    }

    goto LABEL_19;
  }

  return v13;
}

BOOL sub_1D8A4D3A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 40))
  {
    if (*(a1 + 40) == 1)
    {
      if (*(a2 + 40) == 1 && v2 == *a2)
      {
        return CGRectEqualToRect(*(a1 + 1), *(a2 + 8));
      }

      return 0;
    }

    if (*(a2 + 40) != 2)
    {
      return 0;
    }

    v5 = vorrq_s8(*(a2 + 8), *(a2 + 24));
    return !(*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *a2);
  }

  else
  {
    if (*(a2 + 40))
    {
      return 0;
    }

    return v2 == *a2 && a1[1] == *(a2 + 8);
  }
}

BOOL sub_1D8A4D460(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DetectionRequest(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - v8;
  v10 = type metadata accessor for ProcessorState(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E90, &qword_1D8B2CF70);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v42 - v21;
  v23 = &v42 + *(v20 + 56) - v21;
  sub_1D8A50DC0(a1, &v42 - v21, type metadata accessor for ProcessorState);
  sub_1D8A50DC0(a2, v23, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8A50DC0(v22, v16, type metadata accessor for ProcessorState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = v44;
        sub_1D8A512F0(v23, v44, type metadata accessor for DetectionResult);
        if (_s22VisualIntelligenceCore16DetectionRequestV2eeoiySbAC_ACtFZ_0(v16, v25))
        {
          sub_1D88E4098(*&v16[*(v43 + 20)], *&v25[*(v43 + 20)]);
          if (v26)
          {
            sub_1D8A50E28(v25, type metadata accessor for DetectionResult);
            v27 = v16;
            v28 = type metadata accessor for DetectionResult;
LABEL_27:
            sub_1D8A50E28(v27, v28);
LABEL_28:
            sub_1D8A50E28(v22, type metadata accessor for ProcessorState);
            return 1;
          }
        }

        sub_1D8A50E28(v25, type metadata accessor for DetectionResult);
        sub_1D8A50E28(v16, type metadata accessor for DetectionResult);
LABEL_23:
        sub_1D8A50E28(v22, type metadata accessor for ProcessorState);
        return 0;
      }

      v29 = type metadata accessor for DetectionResult;
      v30 = v16;
    }

    else
    {
      sub_1D8A50DC0(v22, v13, type metadata accessor for ProcessorState);
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0) + 48);
      v33 = *&v13[v31];
      v32 = *&v13[v31 + 8];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v35 = *&v23[v31];
        v34 = *&v23[v31 + 8];
        v36 = v45;
        sub_1D8A512F0(v23, v45, type metadata accessor for DetectionRequest);
        v37 = _s22VisualIntelligenceCore16DetectionRequestV2eeoiySbAC_ACtFZ_0(v13, v36);
        sub_1D8A50E28(v13, type metadata accessor for DetectionRequest);
        if (v37)
        {
          if (v33 == v35 && v32 == v34)
          {

            v28 = type metadata accessor for DetectionRequest;
            v27 = v36;
            goto LABEL_27;
          }

          v39 = sub_1D8B16BA0();

          sub_1D8A50E28(v36, type metadata accessor for DetectionRequest);
          if (v39)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_1D8A50E28(v36, type metadata accessor for DetectionRequest);
        }

        goto LABEL_23;
      }

      v29 = type metadata accessor for DetectionRequest;
      v30 = v13;
    }

LABEL_19:
    sub_1D8A50E28(v30, v29);
    sub_1D87A14E4(v22, &qword_1ECA65E90, &qword_1D8B2CF70);
    return 0;
  }

  sub_1D8A50DC0(v22, v18, type metadata accessor for ProcessorState);
  if (swift_getEnumCaseMultiPayload())
  {
    v29 = type metadata accessor for DetectionRequest;
    v30 = v18;
    goto LABEL_19;
  }

  sub_1D8A512F0(v23, v9, type metadata accessor for DetectionRequest);
  v40 = _s22VisualIntelligenceCore16DetectionRequestV2eeoiySbAC_ACtFZ_0(v18, v9);
  sub_1D8A50E28(v9, type metadata accessor for DetectionRequest);
  sub_1D8A50E28(v18, type metadata accessor for DetectionRequest);
  sub_1D8A50E28(v22, type metadata accessor for ProcessorState);
  return v40;
}

void sub_1D8A4DA3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E60, &unk_1D8B36A80);
    v3 = sub_1D8B166E0();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      v26 = v4 + 1;
      sub_1D8B16D20();
      sub_1D8B15A60();

      v7 = sub_1D8B16D80();
      v8 = ~(-1 << *(v3 + 32));
      v9 = v7 & v8;
      v10 = (v7 & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (v7 & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 <= 1)
          {
            if (*(*(v3 + 48) + v9))
            {
              v14 = 0x6261686372616573;
            }

            else
            {
              v14 = 0x7474756853657270;
            }

            if (*(*(v3 + 48) + v9))
            {
              v15 = 0xEA0000000000656CLL;
            }

            else
            {
              v15 = 0xEA00000000007265;
            }

            if (v6 > 1)
            {
LABEL_23:
              v16 = 0x62616D6165727473;
              if (v6 == 3)
              {
                v16 = 0x6E49746C697562;
                v17 = 0xE700000000000000;
              }

              else
              {
                v17 = 0xEA0000000000656CLL;
              }

              if (v6 == 2)
              {
                v18 = 0x7261507473726966;
              }

              else
              {
                v18 = v16;
              }

              if (v6 == 2)
              {
                v19 = 0xEA00000000007974;
              }

              else
              {
                v19 = v17;
              }

              if (v14 != v18)
              {
                goto LABEL_40;
              }

              goto LABEL_39;
            }
          }

          else if (v13 == 2)
          {
            v14 = 0x7261507473726966;
            v15 = 0xEA00000000007974;
            if (v6 > 1)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v13 == 3)
            {
              v14 = 0x6E49746C697562;
            }

            else
            {
              v14 = 0x62616D6165727473;
            }

            if (v13 == 3)
            {
              v15 = 0xE700000000000000;
            }

            else
            {
              v15 = 0xEA0000000000656CLL;
            }

            if (v6 > 1)
            {
              goto LABEL_23;
            }
          }

          if (v6)
          {
            v19 = 0xEA0000000000656CLL;
            if (v14 != 0x6261686372616573)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v19 = 0xEA00000000007265;
            if (v14 != 0x7474756853657270)
            {
              goto LABEL_40;
            }
          }

LABEL_39:
          if (v15 == v19)
          {

            goto LABEL_4;
          }

LABEL_40:
          v20 = sub_1D8B16BA0();

          if (v20)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      *(v3 + 16) = v23;
LABEL_4:
      v4 = v26;
      if (v26 == v24)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D8A4DDAC(uint64_t a1)
{
  v2 = type metadata accessor for BundleClassification.ClassificationType(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F40, &qword_1D8B22FC0);
    v10 = sub_1D8B166E0();
    v11 = 0;
    v12 = v10 + 56;
    v13 = *(v3 + 80);
    v25 = v9;
    v26 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v3 + 72);
    while (2)
    {
      sub_1D8A50DC0(v26 + v14 * v11, v8, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8B16D20();
      BundleClassification.ClassificationType.hash(into:)(v27);
      v15 = sub_1D8B16D80();
      v16 = ~(-1 << *(v10 + 32));
      for (i = v15 & v16; ; i = (i + 1) & v16)
      {
        v18 = *(v12 + 8 * (i >> 6));
        if (((1 << i) & v18) == 0)
        {
          break;
        }

        sub_1D8A50DC0(*(v10 + 48) + i * v14, v6, type metadata accessor for BundleClassification.ClassificationType);
        v19 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v6, v8);
        sub_1D8A50E28(v6, type metadata accessor for BundleClassification.ClassificationType);
        if (v19)
        {
          sub_1D8A50E28(v8, type metadata accessor for BundleClassification.ClassificationType);
          goto LABEL_4;
        }
      }

      *(v12 + 8 * (i >> 6)) = (1 << i) | v18;
      result = sub_1D8A512F0(v8, *(v10 + 48) + i * v14, type metadata accessor for BundleClassification.ClassificationType);
      v21 = *(v10 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (!v22)
      {
        *(v10 + 16) = v23;
LABEL_4:
        if (++v11 == v25)
        {
          return v10;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

CVPixelBufferRef sub_1D8A4E020(size_t a1, size_t a2, OSType a3)
{
  pixelBufferOut[1] = *MEMORY[0x1E69E9840];
  pixelBufferOut[0] = 0;
  if (((a2 | a1) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67D88, &qword_1D8B369D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB80;
  v7 = *MEMORY[0x1E69660D8];
  *(inited + 32) = *MEMORY[0x1E69660D8];
  v8 = v7;
  v9 = sub_1D893CDD0(MEMORY[0x1E69E7CC0]);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA679A0, &qword_1D8B33D38);
  *(inited + 40) = v9;
  v11 = *MEMORY[0x1E6966020];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  *(inited + 104) = MEMORY[0x1E69E6530];
  *(inited + 80) = 64;
  v12 = v11;
  sub_1D893CF0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D90, &unk_1D8B2BED0);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_1D8A4F044(&qword_1EE0E37C0, 255, type metadata accessor for CFString, &unk_1D8B19E74);
  v13 = sub_1D8B15710();

  CVPixelBufferCreate(0, a1, a2, a3, v13, pixelBufferOut);

  v14 = pixelBufferOut[0];
  if (!pixelBufferOut[0])
  {
    sub_1D88C53E4();
    swift_allocError();
    *v15 = xmmword_1D8B282F0;
    *(v15 + 16) = 3;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_1D8A4E254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>)
{
  sub_1D88C5438(a1, v62);
  sub_1D88C5438(v62, v63);
  if (v64 != 1)
  {
    goto LABEL_4;
  }

  v16 = v63[1];
  v17 = *(a3 + 32);
  sub_1D88C5438(v62, v61);
  sub_1D8A57AA0(v61, v59);
  v17(pixelBuffer, a2, a3);
  v18 = pixelBuffer[0];
  if (LOBYTE(pixelBuffer[1]))
  {
    sub_1D88C3978(pixelBuffer[0], pixelBuffer[1]);
    sub_1D88C558C(v62);
LABEL_4:
    sub_1D88C53E4();
    swift_allocError();
    *v19 = xmmword_1D8B23E20;
    *(v19 + 16) = 3;
    return swift_willThrow();
  }

  Width = CVPixelBufferGetWidth(pixelBuffer[0]);
  Height = CVPixelBufferGetHeight(v18);
  v66.origin.x = a5;
  v66.origin.y = a6;
  v66.size.width = a7;
  v66.size.height = a8;
  v23 = 0.0;
  if (CGRectIsEmpty(v66))
  {
    v24 = 0.0;
  }

  else
  {
    v24 = round(Width * a5);
    v25 = round(Width * 0.5 * a7);
    Width = v25 + v25;
    v23 = round(Height * a6);
    v26 = round(Height * 0.5 * a8);
    Height = v26 + v26;
  }

  v67.origin.x = v24;
  v67.origin.y = v23;
  v67.size.width = Width;
  v67.size.height = Height;
  v27 = CGRectGetWidth(v67);
  v68.origin.x = v24;
  v68.origin.y = v23;
  v68.size.width = Width;
  v68.size.height = Height;
  v28 = CGRectGetHeight(v68);
  v29 = v16;
  if (v27 > v16 || v28 > v29)
  {
    v31 = v29 / v27;
    v32 = v29 / v28;
    if (v32 >= v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v32;
    }

    v34 = v28;
    v27 = CGRound(v27 * v33);
    v28 = CGRound(v34 * v33);
  }

  if (v27 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_50;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v49 = v16;
  if (v28 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v35 = *&v65[3];
  v36 = v65[7];
  v37 = v27;
  v38 = v28;
  CameraSourceFrame.rotationAngle.getter(a3, v59);
  v39 = *v59;
  if (v36)
  {
    if (!v35)
    {
      v40 = v27;
      v37 = v38;
      if ((v63[0] & 0x100000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_36:
      PixelFormatType = CVPixelBufferGetPixelFormatType(v18);
      goto LABEL_44;
    }
  }

  else
  {
    if (v35 > 8)
    {
      goto LABEL_33;
    }

    if (((1 << v35) & 0x18) != 0)
    {
      v39 = *v59 + -3.14159265;
      goto LABEL_34;
    }

    if (((1 << v35) & 0xC0) != 0)
    {
      v39 = *v59 + -1.57079633;
      goto LABEL_34;
    }

    if (((1 << v35) & 0x120) != 0)
    {
      v39 = *v59 + -4.71238898;
    }

    else
    {
LABEL_33:
      if (v35 - 1 >= 2)
      {
LABEL_54:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DA0, &qword_1D8B25E60);
        result = sub_1D8B16B90();
        __break(1u);
        return result;
      }
    }
  }

LABEL_34:
  v40 = v38;
  if (v39 != 1.57079633)
  {
    if (v39 == 4.71238898)
    {
      v40 = v38;
    }

    else
    {
      v40 = v27;
    }

    if (v39 != 4.71238898)
    {
      v37 = v38;
    }

    if ((v63[0] & 0x100000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  if ((v63[0] & 0x100000000) != 0)
  {
    goto LABEL_36;
  }

LABEL_43:
  PixelFormatType = v63[0];
LABEL_44:
  if (((v37 | v40) & 0x8000000000000000) != 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v42 = sub_1D8A4E020(v40, v37, PixelFormatType);
  if (v8)
  {
    sub_1D88C3978(v18, 0);
    return sub_1D88C558C(v62);
  }

  else
  {
    v43 = v42;
    sub_1D88C3978(v18, 0);
    v56[0] = v63[0];
    v56[1] = v49;
    *&v56[2] = v24;
    *&v56[3] = v23;
    *&v56[4] = Width;
    *&v56[5] = Height;
    v57 = 1;
    *v58 = *v65;
    *&v58[15] = *&v65[15];
    v55 = 0;
    result = sub_1D88C5438(v56, pixelBuffer);
    *(&v54 + 1) = v43;
    v44 = v55;
    v60 = v55;
    v45 = v53;
    v59[2] = v52;
    v59[3] = v53;
    v47 = *pixelBuffer;
    v46 = v51;
    v59[0] = *pixelBuffer;
    v59[1] = v51;
    v48 = v54;
    v59[4] = v54;
    *(a4 + 32) = v52;
    *(a4 + 48) = v45;
    *(a4 + 64) = v48;
    *(a4 + 80) = v44;
    *a4 = v47;
    *(a4 + 16) = v46;
  }

  return result;
}

uint64_t sub_1D8A4E6CC(uint64_t a1)
{
  v72 = sub_1D8B13240();
  v2 = *(v72 - 8);
  v3 = MEMORY[0x1EEE9AC00](v72);
  v67 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v62 - v5;
  v6 = type metadata accessor for DetectionRequest.Originator(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v62 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0, &qword_1D8B25F50);
  MEMORY[0x1EEE9AC00](v76);
  v15 = &v62 - v14;
  v79 = type metadata accessor for DetectionRequest(0);
  v16 = *(v79 - 1);
  v17 = MEMORY[0x1EEE9AC00](v79);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v20;
  v22 = *(a1 + 16);
  if (v22)
  {
    v71 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E20, &qword_1D8B22E60);
    v23 = sub_1D8B166E0();
    v24 = 0;
    v82 = v23 + 56;
    v68 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v83 = *(v16 + 72);
    v70 = (v2 + 8);
    v63 = (v2 + 32);
    v65 = v6;
    v64 = v9;
    v77 = v21;
    v62 = v22;
    v81 = v23;
    while (1)
    {
      v73 = v24;
      sub_1D8A50DC0(v68 + v83 * v24, v21, type metadata accessor for DetectionRequest);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](*v21);
      v25 = v79;
      v78 = v79[5];
      DetectionRequest.Originator.hash(into:)(v84);
      v75 = *&v21[v25[6]];
      sub_1D8818BD0(v84, v75);
      v26 = &v21[v25[7]];
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = v26[3];
      sub_1D88911A0(*v26, v28, v29, v30);
      v31 = v25[8];
      v32 = *&v21[v31];
      v33 = v32 == 0.0 ? 0.0 : *&v21[v31];
      MEMORY[0x1DA720250](*&v33);
      v34 = sub_1D8B16D80();
      v35 = v81;
      v36 = -1 << *(v81 + 32);
      v37 = v34 & ~v36;
      v38 = v37 >> 6;
      v39 = *(v82 + 8 * (v37 >> 6));
      v40 = 1 << v37;
      if (((1 << v37) & v39) != 0)
      {
        break;
      }

LABEL_44:
      *(v82 + 8 * v38) = v39 | v40;
      result = sub_1D8A512F0(v21, *(v35 + 48) + v37 * v83, type metadata accessor for DetectionRequest);
      v59 = *(v35 + 16);
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        __break(1u);
        return result;
      }

      *(v35 + 16) = v61;
LABEL_46:
      v24 = v73 + 1;
      if (v73 + 1 == v22)
      {
        return v35;
      }
    }

    v80 = ~v36;
    v41 = *v21;
    while (1)
    {
      sub_1D8A50DC0(*(v35 + 48) + v37 * v83, v19, type metadata accessor for DetectionRequest);
      if (*v19 != v41)
      {
        goto LABEL_10;
      }

      v42 = &v15[*(v76 + 48)];
      sub_1D8A50DC0(&v19[v79[5]], v15, type metadata accessor for DetectionRequest.Originator);
      sub_1D8A50DC0(&v77[v78], v42, type metadata accessor for DetectionRequest.Originator);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          if (!swift_getEnumCaseMultiPayload())
          {
            sub_1D8A50E28(v42, type metadata accessor for DetectionRequest.Originator);
LABEL_34:
            sub_1D8A50E28(v15, type metadata accessor for DetectionRequest.Originator);
LABEL_35:
            if (sub_1D894CAAC(*&v19[v79[6]], v75))
            {
              v85.origin.x = v27;
              v85.origin.y = v28;
              v85.size.width = v29;
              v85.size.height = v30;
              if (CGRectEqualToRect(*&v19[v79[7]], v85) && *&v19[v79[8]] == v32)
              {
                sub_1D8A50E28(v19, type metadata accessor for DetectionRequest);
                v21 = v77;
                sub_1D8A50E28(v77, type metadata accessor for DetectionRequest);
                v22 = v62;
                v35 = v81;
                goto LABEL_46;
              }
            }

            goto LABEL_10;
          }

          goto LABEL_9;
        }

        v54 = v74;
        sub_1D8A50DC0(v15, v74, type metadata accessor for DetectionRequest.Originator);
        v55 = *v54;
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_9;
        }

        v56 = *v42;
        v57 = *(v42 + 4);
        if (!*(v74 + 4))
        {
          if (v57)
          {
LABEL_39:
            sub_1D8A50E28(v15, type metadata accessor for DetectionRequest.Originator);
            goto LABEL_10;
          }

LABEL_33:
          if (v55 == v56)
          {
            goto LABEL_34;
          }

          goto LABEL_39;
        }

        if (*(v74 + 4) == 1)
        {
          if (v57 != 1)
          {
            goto LABEL_39;
          }

          goto LABEL_33;
        }

        sub_1D8A50E28(v15, type metadata accessor for DetectionRequest.Originator);
        if (v56 == 0.0 && v57 == 2)
        {
          goto LABEL_35;
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v46 = v71;
        sub_1D8A50DC0(v15, v71, type metadata accessor for DetectionRequest.Originator);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          (*v70)(v46, v72);
LABEL_9:
          sub_1D87A14E4(v15, &unk_1ECA64FB0, &qword_1D8B25F50);
          goto LABEL_10;
        }

        v47 = *v63;
        v48 = v66;
        v49 = v46;
        v50 = v72;
        (*v63)(v66, v49, v72);
        v51 = v67;
        v47(v67, v42, v50);
        v69 = sub_1D8B13200();
        v52 = *v70;
        (*v70)(v51, v50);
        v53 = v48;
        v9 = v64;
        v52(v53, v50);
        sub_1D8A50E28(v15, type metadata accessor for DetectionRequest.Originator);
        if (v69)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            goto LABEL_34;
          }

          goto LABEL_9;
        }

        sub_1D8A50DC0(v15, v9, type metadata accessor for DetectionRequest.Originator);
        v44 = *v9;
        if (swift_getEnumCaseMultiPayload() != 3)
        {

          goto LABEL_9;
        }

        v45 = sub_1D894FA18(v44, *v42);

        sub_1D8A50E28(v15, type metadata accessor for DetectionRequest.Originator);
        if (v45)
        {
          goto LABEL_35;
        }
      }

LABEL_10:
      sub_1D8A50E28(v19, type metadata accessor for DetectionRequest);
      v35 = v81;
      v37 = (v37 + 1) & v80;
      v38 = v37 >> 6;
      v39 = *(v82 + 8 * (v37 >> 6));
      v40 = 1 << v37;
      if ((v39 & (1 << v37)) == 0)
      {
        v21 = v77;
        v22 = v62;
        goto LABEL_44;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D8A4F044(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D8A4F08C(os_unfair_lock_s *a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v8 = v7;
  v114 = a5;
  v113 = a4;
  v116 = a3;
  v133 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E30, &qword_1D8B36A50);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v126 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v125 = &v107 - v15;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D70, &unk_1D8B25DD0);
  v120 = *(v124 - 1);
  v16 = MEMORY[0x1EEE9AC00](v124);
  v123 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v107 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v115 = &v107 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v109 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v110 = &v107 - v23;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63368, &qword_1D8B1E948);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v127 = (&v107 - v24);
  v25 = type metadata accessor for CVProcessorTaskDescriptor(0);
  *&v137 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = a7;
  v28 = CameraSourceFrame.timestamp.getter(a6, a7);
  v29 = *(v8 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_processors);
  v30 = *(v29 + 16);
  v129 = a6;
  v134 = a2;
  v132 = v30;
  v118 = v8;
  if (v30)
  {
    v107 = v25;
    v131 = (v29 + 32);

    v32 = 0;
    v33 = MEMORY[0x1E69E7CC8];
    v130 = v31;
    do
    {
      if (v32 >= *(v31 + 16))
      {
        goto LABEL_49;
      }

      v135 = v32;
      sub_1D87C1470(&v131[5 * v32], &v141);
      v35 = *(&v142 + 1);
      v36 = v143;
      __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
      v37 = (*(v36 + 16))(v133, v35, v36);
      if (v37)
      {
        v38 = v37;
        *&v138 = *(v37 + 16);
        if (v138)
        {
          v39 = 0;
          v136 = (v37 + ((*(v137 + 80) + 32) & ~*(v137 + 80)));
          do
          {
            if (v39 >= *(v38 + 16))
            {
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              sub_1D8B16C30();
              __break(1u);
LABEL_53:
              LODWORD(v106) = 0;
              v105 = 1585;
              sub_1D8B168C0();
              __break(1u);
              return;
            }

            v41 = *(v137 + 72);
            sub_1D8A50DC0(v136 + v41 * v39, v27, type metadata accessor for CVProcessorTaskDescriptor);
            sub_1D87C1470(&v141, &v139);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v140 = v33;
            v44 = sub_1D87F0040(v27);
            v45 = *(v33 + 16);
            v46 = (v43 & 1) == 0;
            v47 = v45 + v46;
            if (__OFADD__(v45, v46))
            {
              goto LABEL_47;
            }

            v48 = v43;
            if (*(v33 + 24) >= v47)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v33 = v140;
                if (v43)
                {
                  goto LABEL_9;
                }
              }

              else
              {
                sub_1D8968A94();
                v33 = v140;
                if (v48)
                {
                  goto LABEL_9;
                }
              }
            }

            else
            {
              sub_1D897085C(v47, isUniquelyReferenced_nonNull_native);
              v49 = sub_1D87F0040(v27);
              if ((v48 & 1) != (v50 & 1))
              {
                goto LABEL_52;
              }

              v44 = v49;
              v33 = v140;
              if (v48)
              {
LABEL_9:
                v40 = (*(v33 + 56) + 40 * v44);
                __swift_destroy_boxed_opaque_existential_1(v40);
                sub_1D87C15B4(&v139, v40);
                sub_1D8A50E28(v27, type metadata accessor for CVProcessorTaskDescriptor);
                goto LABEL_10;
              }
            }

            *(v33 + 8 * (v44 >> 6) + 64) |= 1 << v44;
            sub_1D8A50DC0(v27, *(v33 + 48) + v44 * v41, type metadata accessor for CVProcessorTaskDescriptor);
            sub_1D87C15B4(&v139, *(v33 + 56) + 40 * v44);
            sub_1D8A50E28(v27, type metadata accessor for CVProcessorTaskDescriptor);
            v51 = *(v33 + 16);
            v52 = __OFADD__(v51, 1);
            v53 = v51 + 1;
            if (v52)
            {
              goto LABEL_48;
            }

            *(v33 + 16) = v53;
LABEL_10:
            ++v39;
          }

          while (v138 != v39);
        }

        a6 = v129;
      }

      v34 = (v135 + 1);
      __swift_destroy_boxed_opaque_existential_1(&v141);
      v32 = v34;
      a2 = v134;
      v31 = v130;
    }

    while (v34 != v132);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC8];
  }

  MEMORY[0x1EEE9AC00](v29);
  v54 = v128;
  *(&v107 - 4) = a6;
  *(&v107 - 3) = v54;
  v105 = v55;
  v106 = a2;
  v56 = v117;
  sub_1D89163D8(sub_1D8A59DD0, (&v107 - 6), v33);
  v57 = *(v33 + 16);
  v130 = v58;
  if (v57)
  {
    v59 = v56;
    v60 = sub_1D87F3884(v57, 0);
    v61 = sub_1D881748C(&v141, v60 + ((*(v137 + 80) + 32) & ~*(v137 + 80)), v57, v33);
    v62 = v141;

    sub_1D87977A0(v62);
    if (v61 != v57)
    {
      goto LABEL_51;
    }

    v56 = v59;
    a6 = v129;
    a2 = v134;
  }

  else
  {
    v60 = MEMORY[0x1E69E7CC0];
  }

  v63 = v128;
  v64 = sub_1D8A45B14(v60, a2, v116 | ((HIDWORD(v116) & 1) << 32), a6, v128);
  if (v56)
  {
  }

  else
  {
    v65 = v64;
    v117 = 0;

    v135 = *&v65[4]._os_unfair_lock_opaque;
    if (v135)
    {
      v66 = 0;
      v132 = (v120 + 56);
      v136 = MEMORY[0x1E69E7CC0];
      v131 = (v120 + 48);
      v67 = v127;
      v133 = v65;
      while (v66 < *&v65[4]._os_unfair_lock_opaque)
      {
        sub_1D87A0E38(v65 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v66, v67, &qword_1ECA63368, &qword_1D8B1E948);
        v68 = v67 + *(v122 + 48);
        v69 = *(v68 + 4);
        v144 = *(v68 + 3);
        v145 = v69;
        v146 = *(v68 + 10);
        v70 = *(v68 + 2);
        v142 = *(v68 + 1);
        v143 = v70;
        v141 = *v68;
        if (!*(v33 + 16))
        {
          goto LABEL_53;
        }

        v71 = v67 + *(v122 + 64);
        v72 = *v71;
        v137 = *(v71 + 1);
        v138 = v72;
        v73 = v71[32];
        v74 = sub_1D87F0040(v67);
        if ((v75 & 1) == 0)
        {
          goto LABEL_53;
        }

        sub_1D87C1470(*(v33 + 56) + 40 * v74, &v140);
        sub_1D87C15B4(&v140, &v139);
        v76 = v67;
        v77 = v124;
        v78 = v124[12];
        v79 = v126;
        v80 = v126 + v124[16];
        v81 = v126 + v124[20];
        sub_1D87C15B4(&v139, v126);
        sub_1D8A50DC0(v76, v79 + v78, type metadata accessor for CVProcessorTaskDescriptor);
        v82 = v144;
        *(v80 + 32) = v143;
        *(v80 + 48) = v82;
        *(v80 + 64) = v145;
        *(v80 + 80) = v146;
        v83 = v142;
        *v80 = v141;
        *(v80 + 16) = v83;
        v84 = v137;
        *v81 = v138;
        *(v81 + 16) = v84;
        *(v81 + 32) = v73;
        (*v132)(v79, 0, 1, v77);
        v85 = v125;
        sub_1D881F6FC(v79, v125, &unk_1ECA67E30, &qword_1D8B36A50);
        sub_1D881F59C(&v141, &v139);
        sub_1D87A14E4(v76, &qword_1ECA63368, &qword_1D8B1E948);
        if ((*v131)(v85, 1, v77) == 1)
        {
          sub_1D87A14E4(v85, &unk_1ECA67E30, &qword_1D8B36A50);
          v63 = v128;
          v67 = v127;
          v65 = v133;
        }

        else
        {
          v86 = v85;
          v87 = v119;
          sub_1D881F6FC(v86, v119, &unk_1ECA67D70, &unk_1D8B25DD0);
          sub_1D881F6FC(v87, v123, &unk_1ECA67D70, &unk_1D8B25DD0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v136 = sub_1D87C7F08(0, v136[2] + 1, 1, v136);
          }

          v67 = v127;
          v65 = v133;
          v89 = v136[2];
          v88 = v136[3];
          if (v89 >= v88 >> 1)
          {
            v136 = sub_1D87C7F08((v88 > 1), v89 + 1, 1, v136);
          }

          v90 = v136;
          v136[2] = v89 + 1;
          sub_1D881F6FC(v123, v90 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v89, &unk_1ECA67D70, &unk_1D8B25DD0);
          v63 = v128;
        }

        if (v135 == ++v66)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_50;
    }

    v136 = MEMORY[0x1E69E7CC0];
LABEL_45:

    v91 = v110;
    v92 = v129;
    (v63[6])(v129, v63);
    v93 = sub_1D8B15EA0();
    (*(*(v93 - 8) + 56))(v115, 1, 1, v93);
    v94 = v111;
    v95 = v109;
    v96 = AssociatedTypeWitness;
    (*(v111 + 16))(v109, v91, AssociatedTypeWitness);
    v97 = (*(v94 + 80) + 72) & ~*(v94 + 80);
    v98 = (v108 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = swift_allocObject();
    v100 = v63;
    v101 = v99;
    v99[2] = 0.0;
    v99[3] = 0.0;
    *(v99 + 4) = v92;
    *(v99 + 5) = v100;
    v99[6] = v28;
    v102 = v136;
    *(v99 + 7) = v118;
    *(v99 + 8) = v102;
    (*(v94 + 32))(v99 + v97, v95, v96);
    v103 = (v101 + v98);
    v104 = v114;
    *v103 = v113;
    v103[1] = v104;

    sub_1D89AEF08(0, 0, v115, &unk_1D8B36A60, v101);
    (*(v94 + 8))(v91, v96);
  }
}

uint64_t sub_1D8A4FF5C(uint64_t a1)
{
  v2 = sub_1D8B13430();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64AF0, &unk_1D8B263F0);
    v9 = sub_1D8B166E0();
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
      sub_1D8A4F044(&unk_1ECA67D60, 255, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1D8B15790();
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
          sub_1D8A4F044(&qword_1ECA64AF8, 255, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1D8B158C0();
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

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1D8A50284(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1D87C0ED8(a1, &a1[a2]);
  }

  sub_1D8B12D30();
  swift_allocObject();
  sub_1D8B12CF0();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1D8B13020();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1D8A50348(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D8B166E0();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v12);
      result = sub_1D8B16D80();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (*(v19 + v15) != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1D8A5047C(uint64_t a1, unint64_t a2)
{
  v67 = a2;
  v68 = a1;
  v65 = type metadata accessor for LoggingSignposter(0);
  MEMORY[0x1EEE9AC00](v65);
  v66 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B151E0();
  v64 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v63 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = v59 - v7;
  v8 = sub_1D8B162B0();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D8B162A0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1D8B155E0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  *(v2 + 16) = 1;
  type metadata accessor for M2MHandle();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = MEMORY[0x1E69E7CC8];
  *(v2 + 24) = v13;
  *(v2 + 32) = 0;
  v59[2] = sub_1D87C1314();
  v59[1] = "cv-frame-ignored";
  sub_1D8B155D0();
  v75[0] = MEMORY[0x1E69E7CC0];
  sub_1D8A4F044(&unk_1EE0E3740, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E80, &qword_1D8B30E30);
  sub_1D881CF20(&qword_1EE0E3920, &qword_1ECA66E80, &qword_1D8B30E30, MEMORY[0x1E69E6328]);
  v14 = v2;
  sub_1D8B16570();
  (*(v60 + 104))(v10, *MEMORY[0x1E69E8090], v61);
  *(v2 + 40) = sub_1D8B162F0();
  swift_weakInit();
  v15 = MEMORY[0x1E69E7CC8];
  *(v2 + 88) = MEMORY[0x1E69E7CC8];
  v16 = (v2 + 88);
  *(v2 + 96) = MEMORY[0x1E69E7CD0];
  *(v2 + 104) = v15;
  v17 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_logger;
  if (qword_1EE0E4558 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v18 = __swift_project_value_buffer(v4, qword_1EE0E4560);
    v19 = v64;
    v20 = *(v64 + 16);
    v20(v14 + v17, v18, v4);
    v21 = v14 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_signposter;
    v22 = v62;
    v20(v62, v18, v4);
    v20(v21, v22, v4);
    v20(v63, v22, v4);
    sub_1D8B15140();
    (*(v19 + 8))(v22, v4);
    v23 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorageTaskSemaphore;
    *(v14 + v23) = dispatch_semaphore_create(0);
    v24 = MEMORY[0x1E69E7CC0];
    *(v14 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_processors) = MEMORY[0x1E69E7CC0];
    v25 = v14 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage;
    v26 = sub_1D893E448(v24);
    *v25 = 0;
    *(v25 + 8) = v26;
    v27 = v21;
    v28 = v66;
    sub_1D8A50DC0(v27, v66, type metadata accessor for LoggingSignposter);
    LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("CVCoordinator.init", 18, 2u, 1, 0, v75);
    sub_1D8A50E28(v28, type metadata accessor for LoggingSignposter);
    v29 = *(v68 + 24);
    v30 = *(v68 + 32);
    v31 = *(v68 + 40);
    *(v14 + 56) = *(v68 + 16);
    *(v14 + 64) = v29;
    *(v14 + 72) = v30;
    *(v14 + 80) = v31;
    swift_weakAssign();
    v67 = v14;
    v32 = *(v14 + 56);
    v33 = *(v32 + 16);
    if (!v33)
    {

      v34 = MEMORY[0x1E69E7CC0];
      v4 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v4)
      {
LABEL_21:

        v52 = v67;
        v53 = *(v67 + 64);
        v54 = *(v67 + 72);
        v55 = *(v67 + 80);
        v70 = *(v67 + 56);
        LOBYTE(v71) = v53;
        v72 = v54;
        LOBYTE(v73) = v55;

        sub_1D8A3FBA0(&v70);

        v56 = v76;
        v57 = v77;
        __swift_project_boxed_opaque_existential_1(v75, v76);
        (*(v57 + 8))(v56, v57);
        sub_1D8A50E28(v68, type metadata accessor for SaliencyStreamConfiguration);
        __swift_destroy_boxed_opaque_existential_1(v75);
        return v52;
      }

      goto LABEL_7;
    }

    v34 = sub_1D87F3998(*(v32 + 16), 0);
    v35 = sub_1D8817790(&v70, v34 + 32, v33, v32);
    v36 = v70;
    v66 = v74;

    sub_1D87977A0(v36);
    if (v35 != v33)
    {
      break;
    }

    v4 = v34[2];
    if (!v4)
    {
      goto LABEL_21;
    }

LABEL_7:
    v14 = 0;
    v17 = 0xFFF0000000000000;
    while (v14 < v34[2])
    {
      v37 = *(v34 + v14 + 32);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = *v16;
      v39 = v69;
      *v16 = 0x8000000000000000;
      v40 = sub_1D881F7DC();
      v42 = v39[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_23;
      }

      v46 = v41;
      if (v39[3] < v45)
      {
        sub_1D8971854(v45, isUniquelyReferenced_nonNull_native);
        v40 = sub_1D881F7DC();
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_27;
        }

LABEL_16:
        v48 = v69;
        if (v46)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v51 = v40;
      sub_1D89692F4();
      v40 = v51;
      v48 = v69;
      if (v46)
      {
LABEL_8:
        *(v48[7] + 8 * v40) = 0xFFF0000000000000;
        goto LABEL_9;
      }

LABEL_17:
      v48[(v40 >> 6) + 8] |= 1 << v40;
      *(v48[6] + v40) = v37;
      *(v48[7] + 8 * v40) = 0xFFF0000000000000;
      v49 = v48[2];
      v44 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v44)
      {
        goto LABEL_24;
      }

      v48[2] = v50;
LABEL_9:
      ++v14;
      *v16 = v48;
      swift_endAccess();
      if (v4 == v14)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  __break(1u);
LABEL_27:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D8A50D00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8864FBC;

  return sub_1D8A4247C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1D8A50DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A50E28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D8A50F20(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[4];
  v8 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8A450C4(a1, v7, v1 + v6, v8, v3, v4);
}

unint64_t sub_1D8A50FEC()
{
  result = qword_1ECA67620;
  if (!qword_1ECA67620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67620);
  }

  return result;
}

unint64_t sub_1D8A51040()
{
  result = qword_1ECA67628;
  if (!qword_1ECA67628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67628);
  }

  return result;
}

unint64_t sub_1D8A51094()
{
  result = qword_1ECA67630;
  if (!qword_1ECA67630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67630);
  }

  return result;
}

unint64_t sub_1D8A510E8()
{
  result = qword_1ECA67640;
  if (!qword_1ECA67640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA67638, &qword_1D8B33B70);
    sub_1D8A4F044(&qword_1ECA67420, 255, type metadata accessor for DetectionRequest.Originator, &protocol conformance descriptor for DetectionRequest.Originator);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67640);
  }

  return result;
}

unint64_t sub_1D8A511A0()
{
  result = qword_1ECA67650;
  if (!qword_1ECA67650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67650);
  }

  return result;
}

unint64_t sub_1D8A511F4()
{
  result = qword_1ECA67660;
  if (!qword_1ECA67660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67660);
  }

  return result;
}

unint64_t sub_1D8A51248()
{
  result = qword_1ECA67668;
  if (!qword_1ECA67668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67668);
  }

  return result;
}

unint64_t sub_1D8A5129C()
{
  result = qword_1ECA67670;
  if (!qword_1ECA67670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67670);
  }

  return result;
}

uint64_t sub_1D8A512F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8A51358()
{
  result = qword_1ECA676B8;
  if (!qword_1ECA676B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA67638, &qword_1D8B33B70);
    sub_1D8A4F044(&unk_1ECA676C0, 255, type metadata accessor for DetectionRequest.Originator, &protocol conformance descriptor for DetectionRequest.Originator);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA676B8);
  }

  return result;
}

unint64_t sub_1D8A51410()
{
  result = qword_1ECA676D0;
  if (!qword_1ECA676D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA676D0);
  }

  return result;
}

unint64_t sub_1D8A51464()
{
  result = qword_1ECA67700;
  if (!qword_1ECA67700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67700);
  }

  return result;
}

unint64_t sub_1D8A514B8()
{
  result = qword_1ECA67708;
  if (!qword_1ECA67708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67708);
  }

  return result;
}

unint64_t sub_1D8A5150C()
{
  result = qword_1ECA67710;
  if (!qword_1ECA67710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67710);
  }

  return result;
}

unint64_t sub_1D8A51560()
{
  result = qword_1ECA67718;
  if (!qword_1ECA67718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67718);
  }

  return result;
}

unint64_t sub_1D8A515B4()
{
  result = qword_1ECA67768;
  if (!qword_1ECA67768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67768);
  }

  return result;
}

unint64_t sub_1D8A51608()
{
  result = qword_1ECA67770;
  if (!qword_1ECA67770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67770);
  }

  return result;
}

unint64_t sub_1D8A5165C()
{
  result = qword_1ECA67778;
  if (!qword_1ECA67778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67778);
  }

  return result;
}

unint64_t sub_1D8A516B0()
{
  result = qword_1ECA67780;
  if (!qword_1ECA67780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67780);
  }

  return result;
}

unint64_t sub_1D8A51704()
{
  result = qword_1ECA67790;
  if (!qword_1ECA67790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67790);
  }

  return result;
}

unint64_t sub_1D8A51758()
{
  result = qword_1ECA677A0;
  if (!qword_1ECA677A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA634B0, &qword_1D8B23030);
    sub_1D8A4F044(&qword_1EE0E5FF8, 255, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA677A0);
  }

  return result;
}

unint64_t sub_1D8A51810()
{
  result = qword_1ECA677D0;
  if (!qword_1ECA677D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA677D0);
  }

  return result;
}

unint64_t sub_1D8A51864()
{
  result = qword_1ECA677E0;
  if (!qword_1ECA677E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA634B0, &qword_1D8B23030);
    sub_1D8A4F044(&unk_1EE0E5FD0, 255, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA677E0);
  }

  return result;
}

unint64_t sub_1D8A5191C()
{
  result = qword_1ECA677F8;
  if (!qword_1ECA677F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA677F8);
  }

  return result;
}

unint64_t sub_1D8A51970()
{
  result = qword_1ECA67800;
  if (!qword_1ECA67800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67800);
  }

  return result;
}

unint64_t sub_1D8A519C4()
{
  result = qword_1ECA67810;
  if (!qword_1ECA67810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63D40, &qword_1D8B22D38);
    sub_1D8A4F044(&qword_1ECA67818, 255, type metadata accessor for DetectionRequest.Annotation, &protocol conformance descriptor for DetectionRequest.Annotation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67810);
  }

  return result;
}

unint64_t sub_1D8A51A7C()
{
  result = qword_1ECA67830;
  if (!qword_1ECA67830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67830);
  }

  return result;
}

unint64_t sub_1D8A51AD0()
{
  result = qword_1ECA67838;
  if (!qword_1ECA67838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63D40, &qword_1D8B22D38);
    sub_1D8A4F044(&qword_1ECA67840, 255, type metadata accessor for DetectionRequest.Annotation, &protocol conformance descriptor for DetectionRequest.Annotation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67838);
  }

  return result;
}

unint64_t sub_1D8A51B88()
{
  result = qword_1ECA67850;
  if (!qword_1ECA67850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67850);
  }

  return result;
}

uint64_t sub_1D8A51BDC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA67860, &qword_1D8B33C60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8A51C54()
{
  result = qword_1ECA67890;
  if (!qword_1ECA67890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67890);
  }

  return result;
}

unint64_t sub_1D8A51CA8()
{
  result = qword_1ECA678B8;
  if (!qword_1ECA678B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA678B8);
  }

  return result;
}

unint64_t sub_1D8A51CFC()
{
  result = qword_1ECA678C0;
  if (!qword_1ECA678C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA678C0);
  }

  return result;
}

unint64_t sub_1D8A51D50()
{
  result = qword_1ECA678C8;
  if (!qword_1ECA678C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA678C8);
  }

  return result;
}

unint64_t sub_1D8A51DA4()
{
  result = qword_1ECA678D0;
  if (!qword_1ECA678D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA678D0);
  }

  return result;
}

unint64_t sub_1D8A51DF8()
{
  result = qword_1ECA67920;
  if (!qword_1ECA67920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67920);
  }

  return result;
}

unint64_t sub_1D8A51E4C()
{
  result = qword_1ECA67928;
  if (!qword_1ECA67928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67928);
  }

  return result;
}

unint64_t sub_1D8A51EA0()
{
  result = qword_1ECA67930;
  if (!qword_1ECA67930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67930);
  }

  return result;
}

unint64_t sub_1D8A51EF4()
{
  result = qword_1ECA67938;
  if (!qword_1ECA67938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67938);
  }

  return result;
}

unint64_t sub_1D8A51F48()
{
  result = qword_1ECA67940;
  if (!qword_1ECA67940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67940);
  }

  return result;
}

unint64_t sub_1D8A51FBC()
{
  result = qword_1ECA67988;
  if (!qword_1ECA67988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67988);
  }

  return result;
}

unint64_t sub_1D8A52010()
{
  result = qword_1ECA679B0;
  if (!qword_1ECA679B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA679B0);
  }

  return result;
}

unint64_t sub_1D8A52064()
{
  result = qword_1ECA679C8;
  if (!qword_1ECA679C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA679C8);
  }

  return result;
}

uint64_t sub_1D8A520B8(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA679B8, &qword_1D8B33D48);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8A52148()
{
  result = qword_1ECA679E0;
  if (!qword_1ECA679E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA679E0);
  }

  return result;
}

void sub_1D8A5219C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v47 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v12 = sub_1D8B15EA0();
  v13 = *(v12 - 8);
  v43 = *(v13 + 56);
  v44 = v13 + 56;
  v43(v11, 1, 1, v12);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;
  v14[5] = a1;

  v45 = sub_1D89AF1B4(0, 0, v11, &unk_1D8B36A08, v14);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = (a1 + 32);
    v41 = (v13 + 8);
    v42 = (v13 + 48);
    while (1)
    {
      v17 = *v16;
      v46 = v16 + 1;
      v18 = v47;
      v43(v47, 1, 1, v12);
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      *(v19 + 32) = v45;
      *(v19 + 40) = v17;
      sub_1D87A0E38(v18, v7, &unk_1ECA675E0, &qword_1D8B23B60);
      LODWORD(v18) = (*v42)(v7, 1, v12);

      if (v18 == 1)
      {
        sub_1D87A14E4(v7, &unk_1ECA675E0, &qword_1D8B23B60);
      }

      else
      {
        sub_1D8B15E90();
        (*v41)(v7, v12);
      }

      v20 = v12;
      v21 = *(v19 + 16);
      swift_unknownObjectRetain();

      if (v21)
      {
        swift_getObjectType();
        v22 = sub_1D8B15E00();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      sub_1D87A14E4(v47, &unk_1ECA675E0, &qword_1D8B23B60);
      if (v24 | v22)
      {
        v49 = 0;
        v50 = 0;
        v51 = v22;
        v52 = v24;
      }

      v25 = swift_task_create();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v2 + 104);
      v27 = v48;
      *(v2 + 104) = 0x8000000000000000;
      v28 = sub_1D881F7DC();
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        break;
      }

      v34 = v29;
      if (v27[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = v28;
          sub_1D8969464();
          v28 = v39;
        }
      }

      else
      {
        sub_1D8971FA0(v33, isUniquelyReferenced_nonNull_native);
        v28 = sub_1D881F7DC();
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_25;
        }
      }

      v12 = v20;
      v36 = v48;
      if (v34)
      {
        *(v48[7] + 8 * v28) = v25;
      }

      else
      {
        v48[(v28 >> 6) + 8] |= 1 << v28;
        *(v36[6] + v28) = v17;
        *(v36[7] + 8 * v28) = v25;
        v37 = v36[2];
        v32 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v32)
        {
          goto LABEL_24;
        }

        v36[2] = v38;
      }

      *(v2 + 104) = v36;
      swift_endAccess();
      --v15;
      v16 = v46;
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    sub_1D8B16C30();
    __break(1u);
  }

  else
  {
LABEL_22:
  }
}

void sub_1D8A52644()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("CVCoordinator.prepare", 21, 2u, 1, 0, v18);
  v5 = *(v0 + 56);
  v6 = *(v5 + 16);
  if (!v6)
  {

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v16 = v4;
  v7 = sub_1D87F3998(v6, 0);
  v8 = sub_1D8817790(&v17, v7 + 32, v6, v5);
  v9 = v17;
  swift_bridgeObjectRetain_n();
  sub_1D87977A0(v9);
  if (v8 == v6)
  {
    v4 = v16;
LABEL_5:
    v17 = v7;
    sub_1D8A4B060(&v17);

    v10 = v17;
    sub_1D8A5219C(v17);
    swift_beginAccess();
    v11 = *(v1 + 104);
    v12 = sub_1D8B15EA0();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    v13[5] = v11;
    v13[6] = v1;

    sub_1D89AEF08(0, 0, v4, &unk_1D8B369F8, v13);

    v14 = v19;
    v15 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v15 + 8))(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return;
  }

  __break(1u);

  __break(1u);
}

void sub_1D8A528C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *v1 = *(*(v2 + 104) + 16) != 0;
}

unint64_t sub_1D8A5297C()
{
  result = qword_1EE0E6B28;
  if (!qword_1EE0E6B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E6B28);
  }

  return result;
}

uint64_t sub_1D8A52A68(void *a1)
{
  a1[1] = sub_1D8A4F044(&qword_1ECA67880, 255, type metadata accessor for DetectionRequest, &protocol conformance descriptor for DetectionRequest);
  a1[2] = sub_1D8A4F044(&qword_1ECA67858, 255, type metadata accessor for DetectionRequest, &protocol conformance descriptor for DetectionRequest);
  result = sub_1D8A4F044(qword_1EE0E6980, 255, type metadata accessor for DetectionRequest, &protocol conformance descriptor for DetectionRequest);
  a1[3] = result;
  return result;
}

unint64_t sub_1D8A52B70()
{
  result = qword_1ECA67A00;
  if (!qword_1ECA67A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67A00);
  }

  return result;
}

unint64_t sub_1D8A52BC8()
{
  result = qword_1ECA67A08;
  if (!qword_1ECA67A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67A08);
  }

  return result;
}

unint64_t sub_1D8A52C60(void *a1)
{
  a1[1] = sub_1D88C92F4();
  a1[2] = sub_1D88C91A4();
  result = sub_1D8A52C98();
  a1[3] = result;
  return result;
}

unint64_t sub_1D8A52C98()
{
  result = qword_1ECA67A30;
  if (!qword_1ECA67A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67A30);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore7CVErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D8A52D08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8A52D50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1D8A52D94(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1D8A52DF8(uint64_t a1)
{
  type metadata accessor for DetectionRequest.Originator(319);
  if (v1 <= 0x3F)
  {
    sub_1D8A52EAC(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGRect(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8A52EAC(uint64_t a1)
{
  if (!qword_1EE0E3840)
  {
    type metadata accessor for DetectionRequest.Annotation(255);
    sub_1D8A4F044(&qword_1EE0E6B20, 255, type metadata accessor for DetectionRequest.Annotation, &protocol conformance descriptor for DetectionRequest.Annotation);
    v1 = sub_1D8B16080();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0E3840);
    }
  }
}

void sub_1D8A52F44(uint64_t a1)
{
  sub_1D8B13240();
  if (v1 <= 0x3F)
  {
    sub_1D8A52FCC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D8A52FCC(uint64_t a1)
{
  if (!qword_1ECA67A40)
  {
    type metadata accessor for DetectionRequest.Originator(255);
    sub_1D8A4F044(qword_1EE0E6A48, 255, type metadata accessor for DetectionRequest.Originator, &protocol conformance descriptor for DetectionRequest.Originator);
    v1 = sub_1D8B16080();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA67A40);
    }
  }
}

void sub_1D8A53064(uint64_t a1)
{
  sub_1D8A5A194(319, &unk_1EE0E39A8, type metadata accessor for TextDetectorResult);
  if (v1 <= 0x3F)
  {
    sub_1D8A530FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D8A530FC(uint64_t a1)
{
  if (!qword_1ECA67A50)
  {
    v2 = type metadata accessor for GroundingMD6_1Descriptor(255);
    v3 = sub_1D8A4F044(&unk_1ECA67A58, 255, type metadata accessor for GroundingMD6_1Descriptor, &protocol conformance descriptor for GroundingMD6_1Descriptor);
    v5 = type metadata accessor for GroundingResult(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ECA67A50);
    }
  }
}

void sub_1D8A531CC(uint64_t a1)
{
  type metadata accessor for DetectionRequest(319);
  if (v1 <= 0x3F)
  {
    sub_1D8A53250();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8A53250()
{
  if (!qword_1EE0E39F0)
  {
    v0 = sub_1D8B15DB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E39F0);
    }
  }
}

uint64_t sub_1D8A532C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *(a1 + 64);
  v7 = *(a1 + 80);
  v14 = (*(a3 + 24) + **(a3 + 24));
  v8 = swift_task_alloc();
  v9 = *(a1 + 16);
  *(v3 + 16) = *a1;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  *(v3 + 32) = v9;
  *(v3 + 48) = v10;
  *(v3 + 64) = v11;
  *(v3 + 80) = v13;
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *v8 = v3;
  v8[1] = sub_1D8A53418;

  return v14(v3 + 16, a2, a3);
}

uint64_t sub_1D8A53418()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D8A5350C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = v10;
  v15 = *(a5 + 64);
  v23 = *a6;
  v16 = *(a6 + 2);
  v17 = *(a6 + 3);
  v18 = *(a6 + 32);
  v24 = (*(a10 + 32) + **(a10 + 32));
  v19 = swift_task_alloc();
  v20 = *(a5 + 16);
  *(v13 + 16) = *a5;
  v21 = *(a5 + 48);
  *(v13 + 48) = *(a5 + 32);
  *(v13 + 64) = v21;
  *(v13 + 128) = v19;
  *(v13 + 32) = v20;
  *(v13 + 80) = v15;
  *(v13 + 88) = v23;
  *(v13 + 104) = v16;
  *(v13 + 112) = v17;
  *(v13 + 120) = v18;
  *v19 = v13;
  v19[1] = sub_1D8A536AC;

  return v24(a1, a2, a3, a4, v13 + 16, v13 + 88, a7, a8, a9, a10);
}

uint64_t sub_1D8A536AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CVCoordinationRegime(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for CVCoordinationRegime(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8A53840(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D8A53858(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D8A538DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1D8A53924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8A5399C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8A539D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8A53A24(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D8A53A80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1D8A53AC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of CVDebugArtifactManager.recordBoresight(actionPin:)(uint64_t a1)
{
  v6 = (*(*v1 + 520) + **(*v1 + 520));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D886553C;

  return v6(a1);
}

uint64_t dispatch thunk of CVDebugArtifactManager.recordBoresight(bundle:)(uint64_t a1)
{
  v6 = (*(*v1 + 528) + **(*v1 + 528));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D886553C;

  return v6(a1);
}

uint64_t dispatch thunk of CVDebugArtifactManager.recordBoresightClassification(_:timestamp:)(uint64_t a1, double a2)
{
  v9 = (*(*v2 + 536) + **(*v2 + 536));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D886553C;
  v7.n128_f64[0] = a2;

  return v9(a1, v7);
}

uint64_t dispatch thunk of CVDebugArtifactManager.collectStreamingState()(uint64_t a1)
{
  v6 = (*(*v1 + 544) + **(*v1 + 544));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D886553C;

  return v6(a1);
}

uint64_t dispatch thunk of M2MHandle.scaler(inputPixelBuffer:outputPixelBuffer:rotation:crop:destinationRect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 32);
  v6 = *(*v4 + 200);
  v7 = *(a4 + 16);
  v9[0] = *a4;
  v9[1] = v7;
  v10 = v5;
  return v6(a1, a2, a3, v9);
}

uint64_t sub_1D8A541C0(uint64_t a1)
{
  result = sub_1D8B151E0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LoggingSignposter(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of CVCoordinator.testingOnlyAwaitAllLoaded()()
{
  v4 = (*(*v0 + 416) + **(*v0 + 416));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D886553C;

  return v4();
}

uint64_t sub_1D8A544E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8A54528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore29CVProcessorInputConfigurationV11ContentModeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D8A54754(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8A547B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D8A5489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D8A54940(uint64_t a1)
{
  if (!qword_1EE0E68C0[0])
  {
    type metadata accessor for DetectionRequest(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE0E68C0);
    }
  }
}

unint64_t sub_1D8A549FC()
{
  result = qword_1ECA67AF8;
  if (!qword_1ECA67AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67AF8);
  }

  return result;
}

unint64_t sub_1D8A54A54()
{
  result = qword_1EE0E5030;
  if (!qword_1EE0E5030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E5030);
  }

  return result;
}

unint64_t sub_1D8A54AAC()
{
  result = qword_1ECA67B08;
  if (!qword_1ECA67B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B08);
  }

  return result;
}

unint64_t sub_1D8A54B04()
{
  result = qword_1ECA67B10;
  if (!qword_1ECA67B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B10);
  }

  return result;
}

unint64_t sub_1D8A54B5C()
{
  result = qword_1ECA67B18;
  if (!qword_1ECA67B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B18);
  }

  return result;
}

unint64_t sub_1D8A54BB4()
{
  result = qword_1ECA67B20;
  if (!qword_1ECA67B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B20);
  }

  return result;
}

unint64_t sub_1D8A54C0C()
{
  result = qword_1ECA67B28;
  if (!qword_1ECA67B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B28);
  }

  return result;
}

unint64_t sub_1D8A54C64()
{
  result = qword_1ECA67B30;
  if (!qword_1ECA67B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B30);
  }

  return result;
}

unint64_t sub_1D8A54CBC()
{
  result = qword_1ECA67B38;
  if (!qword_1ECA67B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B38);
  }

  return result;
}

unint64_t sub_1D8A54D14()
{
  result = qword_1ECA67B40;
  if (!qword_1ECA67B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B40);
  }

  return result;
}

unint64_t sub_1D8A54D6C()
{
  result = qword_1ECA67B48;
  if (!qword_1ECA67B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B48);
  }

  return result;
}

unint64_t sub_1D8A54DC4()
{
  result = qword_1ECA67B50;
  if (!qword_1ECA67B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B50);
  }

  return result;
}

unint64_t sub_1D8A54E1C()
{
  result = qword_1ECA67B58;
  if (!qword_1ECA67B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B58);
  }

  return result;
}

unint64_t sub_1D8A54E74()
{
  result = qword_1ECA67B60;
  if (!qword_1ECA67B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B60);
  }

  return result;
}

unint64_t sub_1D8A54ECC()
{
  result = qword_1ECA67B68;
  if (!qword_1ECA67B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B68);
  }

  return result;
}

unint64_t sub_1D8A54F24()
{
  result = qword_1ECA67B70;
  if (!qword_1ECA67B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B70);
  }

  return result;
}

unint64_t sub_1D8A54F7C()
{
  result = qword_1ECA67B78;
  if (!qword_1ECA67B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B78);
  }

  return result;
}

unint64_t sub_1D8A54FD4()
{
  result = qword_1ECA67B80;
  if (!qword_1ECA67B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B80);
  }

  return result;
}

unint64_t sub_1D8A5502C()
{
  result = qword_1ECA67B88;
  if (!qword_1ECA67B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B88);
  }

  return result;
}

unint64_t sub_1D8A55084()
{
  result = qword_1ECA67B90;
  if (!qword_1ECA67B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B90);
  }

  return result;
}

unint64_t sub_1D8A550DC()
{
  result = qword_1ECA67B98;
  if (!qword_1ECA67B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B98);
  }

  return result;
}

unint64_t sub_1D8A55134()
{
  result = qword_1ECA67BA0;
  if (!qword_1ECA67BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BA0);
  }

  return result;
}

unint64_t sub_1D8A5518C()
{
  result = qword_1ECA67BA8;
  if (!qword_1ECA67BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BA8);
  }

  return result;
}

unint64_t sub_1D8A551E4()
{
  result = qword_1ECA67BB0;
  if (!qword_1ECA67BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BB0);
  }

  return result;
}

unint64_t sub_1D8A5523C()
{
  result = qword_1ECA67BB8;
  if (!qword_1ECA67BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BB8);
  }

  return result;
}

unint64_t sub_1D8A55294()
{
  result = qword_1ECA67BC0;
  if (!qword_1ECA67BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BC0);
  }

  return result;
}

unint64_t sub_1D8A552EC()
{
  result = qword_1ECA67BC8;
  if (!qword_1ECA67BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BC8);
  }

  return result;
}

unint64_t sub_1D8A55344()
{
  result = qword_1ECA67BD0;
  if (!qword_1ECA67BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BD0);
  }

  return result;
}

unint64_t sub_1D8A5539C()
{
  result = qword_1ECA67BD8;
  if (!qword_1ECA67BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BD8);
  }

  return result;
}

unint64_t sub_1D8A553F4()
{
  result = qword_1ECA67BE0;
  if (!qword_1ECA67BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BE0);
  }

  return result;
}

unint64_t sub_1D8A5544C()
{
  result = qword_1ECA67BE8;
  if (!qword_1ECA67BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BE8);
  }

  return result;
}

unint64_t sub_1D8A554A4()
{
  result = qword_1ECA67BF0;
  if (!qword_1ECA67BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BF0);
  }

  return result;
}

unint64_t sub_1D8A554FC()
{
  result = qword_1ECA67BF8;
  if (!qword_1ECA67BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BF8);
  }

  return result;
}

unint64_t sub_1D8A55554()
{
  result = qword_1ECA67C00;
  if (!qword_1ECA67C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C00);
  }

  return result;
}

unint64_t sub_1D8A555AC()
{
  result = qword_1ECA67C08;
  if (!qword_1ECA67C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C08);
  }

  return result;
}

unint64_t sub_1D8A55604()
{
  result = qword_1ECA67C10;
  if (!qword_1ECA67C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C10);
  }

  return result;
}

unint64_t sub_1D8A5565C()
{
  result = qword_1ECA67C18;
  if (!qword_1ECA67C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C18);
  }

  return result;
}

unint64_t sub_1D8A556B4()
{
  result = qword_1ECA67C20;
  if (!qword_1ECA67C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C20);
  }

  return result;
}

unint64_t sub_1D8A5570C()
{
  result = qword_1ECA67C28;
  if (!qword_1ECA67C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C28);
  }

  return result;
}

unint64_t sub_1D8A55764()
{
  result = qword_1ECA67C30;
  if (!qword_1ECA67C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C30);
  }

  return result;
}

unint64_t sub_1D8A557BC()
{
  result = qword_1ECA67C38;
  if (!qword_1ECA67C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C38);
  }

  return result;
}

unint64_t sub_1D8A55814()
{
  result = qword_1ECA67C40;
  if (!qword_1ECA67C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C40);
  }

  return result;
}

unint64_t sub_1D8A5586C()
{
  result = qword_1ECA67C48;
  if (!qword_1ECA67C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C48);
  }

  return result;
}

unint64_t sub_1D8A558C4()
{
  result = qword_1ECA67C50;
  if (!qword_1ECA67C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C50);
  }

  return result;
}

unint64_t sub_1D8A5591C()
{
  result = qword_1ECA67C58;
  if (!qword_1ECA67C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C58);
  }

  return result;
}

unint64_t sub_1D8A55974()
{
  result = qword_1ECA67C60;
  if (!qword_1ECA67C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C60);
  }

  return result;
}

unint64_t sub_1D8A559CC()
{
  result = qword_1ECA67C68;
  if (!qword_1ECA67C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C68);
  }

  return result;
}

unint64_t sub_1D8A55A24()
{
  result = qword_1ECA67C70;
  if (!qword_1ECA67C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C70);
  }

  return result;
}

unint64_t sub_1D8A55A7C()
{
  result = qword_1ECA67C78;
  if (!qword_1ECA67C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C78);
  }

  return result;
}

unint64_t sub_1D8A55AD4()
{
  result = qword_1ECA67C80;
  if (!qword_1ECA67C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C80);
  }

  return result;
}

unint64_t sub_1D8A55B2C()
{
  result = qword_1ECA67C88;
  if (!qword_1ECA67C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C88);
  }

  return result;
}

unint64_t sub_1D8A55B84()
{
  result = qword_1ECA67C90;
  if (!qword_1ECA67C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C90);
  }

  return result;
}

unint64_t sub_1D8A55BDC()
{
  result = qword_1ECA67C98;
  if (!qword_1ECA67C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C98);
  }

  return result;
}

unint64_t sub_1D8A55C34()
{
  result = qword_1ECA67CA0;
  if (!qword_1ECA67CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CA0);
  }

  return result;
}

unint64_t sub_1D8A55C8C()
{
  result = qword_1ECA67CA8;
  if (!qword_1ECA67CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CA8);
  }

  return result;
}

unint64_t sub_1D8A55CE4()
{
  result = qword_1ECA67CB0;
  if (!qword_1ECA67CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CB0);
  }

  return result;
}

unint64_t sub_1D8A55D3C()
{
  result = qword_1ECA67CB8;
  if (!qword_1ECA67CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CB8);
  }

  return result;
}

unint64_t sub_1D8A55D94()
{
  result = qword_1ECA67CC0;
  if (!qword_1ECA67CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CC0);
  }

  return result;
}

unint64_t sub_1D8A55DEC()
{
  result = qword_1ECA67CC8;
  if (!qword_1ECA67CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CC8);
  }

  return result;
}

unint64_t sub_1D8A55E44()
{
  result = qword_1ECA67CD0;
  if (!qword_1ECA67CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CD0);
  }

  return result;
}

unint64_t sub_1D8A55E9C()
{
  result = qword_1ECA67CD8;
  if (!qword_1ECA67CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CD8);
  }

  return result;
}

unint64_t sub_1D8A55EF4()
{
  result = qword_1ECA67CE0;
  if (!qword_1ECA67CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CE0);
  }

  return result;
}

unint64_t sub_1D8A55F4C()
{
  result = qword_1ECA67CE8;
  if (!qword_1ECA67CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CE8);
  }

  return result;
}

unint64_t sub_1D8A55FA4()
{
  result = qword_1ECA67CF0;
  if (!qword_1ECA67CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CF0);
  }

  return result;
}

unint64_t sub_1D8A55FFC()
{
  result = qword_1ECA67CF8;
  if (!qword_1ECA67CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CF8);
  }

  return result;
}

unint64_t sub_1D8A56054()
{
  result = qword_1ECA67D00;
  if (!qword_1ECA67D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67D00);
  }

  return result;
}

unint64_t sub_1D8A560AC()
{
  result = qword_1ECA67D08;
  if (!qword_1ECA67D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67D08);
  }

  return result;
}

unint64_t sub_1D8A56104()
{
  result = qword_1ECA67D10;
  if (!qword_1ECA67D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67D10);
  }

  return result;
}

unint64_t sub_1D8A5615C()
{
  result = qword_1ECA67D18;
  if (!qword_1ECA67D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67D18);
  }

  return result;
}

unint64_t sub_1D8A561B4()
{
  result = qword_1ECA67D20;
  if (!qword_1ECA67D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67D20);
  }

  return result;
}

unint64_t sub_1D8A5620C()
{
  result = qword_1ECA67D28;
  if (!qword_1ECA67D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67D28);
  }

  return result;
}

unint64_t sub_1D8A56264()
{
  result = qword_1ECA67D30;
  if (!qword_1ECA67D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67D30);
  }

  return result;
}

uint64_t sub_1D8A562B8(uint64_t a1)
{
  v2 = sub_1D8B15270();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EE0, &qword_1D8B22F38);
    v9 = sub_1D8B166E0();
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
      sub_1D8A4F044(&qword_1EE0E3A80, 255, MEMORY[0x1E69E0220], MEMORY[0x1E69E0230]);
      v16 = sub_1D8B15790();
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
          sub_1D8A4F044(&qword_1EE0E3A78, 255, MEMORY[0x1E69E0220], MEMORY[0x1E69E0238]);
          v23 = sub_1D8B158C0();
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D8A565E0(uint64_t a1)
{
  v2 = sub_1D8B14510();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DC0, &unk_1D8B369E0);
    v9 = sub_1D8B166E0();
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
      sub_1D8A4F044(&qword_1ECA667D8, 255, MEMORY[0x1E69C9BC8], MEMORY[0x1E69C9BD0]);
      v16 = sub_1D8B15790();
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
          sub_1D8A4F044(&unk_1ECA67DD0, 255, MEMORY[0x1E69C9BC8], MEMORY[0x1E69C9BD8]);
          v23 = sub_1D8B158C0();
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

  return MEMORY[0x1E69E7CD0];
}

CGColorRef sub_1D8A56908()
{
  v0 = vcvtd_n_f64_u64(sub_1D8A4C6E8(0x20000000000001uLL), 0x35uLL) + 0.0;
  v1 = vcvtd_n_f64_u64(sub_1D8A4C6E8(0x20000000000001uLL), 0x35uLL) + 0.0;
  v2 = vcvtd_n_f64_u64(sub_1D8A4C6E8(0x20000000000001uLL), 0x35uLL) + 0.0;

  return CGColorCreateGenericRGB(v0, v1, v2, 1.0);
}

void sub_1D8A56988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67E18, &qword_1D8B36A48);
    v3 = sub_1D8B166E0();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    v6 = v1;
    do
    {
      v7 = *(v25 + 8 * v4);
      sub_1D8B15970();
      sub_1D8B16D20();
      v26 = v7;
      sub_1D8B15A60();
      v8 = sub_1D8B16D80();

      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_15;
      }

      v14 = ~v9;
      do
      {
        v15 = sub_1D8B15970();
        v17 = v16;
        if (v15 == sub_1D8B15970() && v17 == v18)
        {

LABEL_4:
          v6 = v24;
          goto LABEL_5;
        }

        v20 = sub_1D8B16BA0();

        if (v20)
        {

          goto LABEL_4;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
      }

      while (((1 << v10) & v12) != 0);
      v6 = v24;
LABEL_15:
      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v23;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

uint64_t sub_1D8A56B7C(uint64_t a1)
{
  v2 = sub_1D8B13FA0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E00, &qword_1D8B36A40);
    v9 = sub_1D8B166E0();
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
      sub_1D8A4F044(&qword_1ECA649A0, 255, MEMORY[0x1E69A1168], MEMORY[0x1E69A1170]);
      v16 = sub_1D8B15790();
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
          sub_1D8A4F044(&qword_1ECA67E10, 255, MEMORY[0x1E69A1168], MEMORY[0x1E69A1178]);
          v23 = sub_1D8B158C0();
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D8A56EA4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001D8B47DE0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D69676572 && a2 == 0xE600000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564496B63617274 && a2 == 0xEF7265696669746ELL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73756F69726176 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xE900000000000067)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D8A5706C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646E756F7267 && a2 == 0xEF746C7573655267 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B47A60 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D8A57194(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69746365746564 && a2 == 0xED0000657079546ELL;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E696769726FLL && a2 == 0xEA0000000000726FLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEB00000000736E6FLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B47E00 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D8A57368(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E65646163 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E616D65446E6FLL && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E616D65446E6FLL && a2 == 0xEF65636E65646143)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D8A57488(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D8B47E20 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5379726F74636166 && a2 == 0xEF73676E69747465 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65536172656D6163 && a2 == 0xEE0073676E697474 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6C4170696B73 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D8A57608(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D8B47E40 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B47E20 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D8B47E60 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D8B47E80 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D8A577C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  v11 = *(v2 + 72);
  v10 = *(v2 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D886553C;

  return sub_1D8A46A7C(v8, a1, a2, v5, v6, v7, v9, v11, v10);
}

uint64_t sub_1D8A578C4(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = *(type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (v6 + *(v5 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v8 = (*(*(v4 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = v1[3];
  v15 = v1[2];
  v10 = v1[6];
  v11 = *(v1 + ((v9 + 135) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D886553C;

  return sub_1D8A475FC(a1, v11, v15, v14, v10, v1 + v6, v1 + v7, v1 + v8, v1 + v9);
}

void sub_1D8A57B18(uint64_t a1)
{
  v155 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v155);
  v3 = &v155 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1D8B13240();
  v4 = *(v169 - 8);
  v5 = MEMORY[0x1EEE9AC00](v169);
  v165 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v167 = &v155 - v7;
  v187 = type metadata accessor for DetectionRequest.Originator(0);
  v8 = MEMORY[0x1EEE9AC00](v187);
  v162 = (&v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v171 = &v155 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v155 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v161 = (&v155 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v160 = &v155 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v166 = &v155 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v157 = (&v155 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v156 = &v155 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v163 = &v155 - v25;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0, &qword_1D8B25F50);
  v26 = MEMORY[0x1EEE9AC00](v180);
  v179 = &v155 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v175 = &v155 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v177 = &v155 - v30;
  v31 = type metadata accessor for DetectionRequest(0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v185 = &v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v184 = &v155 - v34;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E90, &qword_1D8B2CF70);
  MEMORY[0x1EEE9AC00](v181);
  v36 = &v155 - v35;
  v188 = type metadata accessor for ProcessorState(0);
  v37 = *(v188 - 8);
  v38 = MEMORY[0x1EEE9AC00](v188);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v186 = &v155 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v190 = &v155 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v155 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v195 = &v155 - v47;
  v48 = *(a1 + 16);
  if (!v48)
  {
    return;
  }

  v189 = v46;
  v159 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E30, &qword_1D8B22E68);
  v49 = sub_1D8B166E0();
  v50 = 0;
  v193 = v49 + 56;
  v173 = a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v194 = *(v37 + 72);
  v168 = (v4 + 8);
  v164 = (v4 + 32);
  v51 = v49;
  v52 = v181;
  v191 = v49;
  v170 = v3;
  v183 = v31;
  v172 = v48;
  do
  {
    v176 = v50;
    sub_1D8A50DC0(v173 + v194 * v50, v195, type metadata accessor for ProcessorState);
    sub_1D8B16D20();
    sub_1D8A36918(&v197);
    v53 = sub_1D8B16D80();
    v192 = ~(-1 << *(v51 + 32));
    v54 = v53 & v192;
    v55 = (v53 & v192) >> 6;
    v56 = *(v193 + 8 * v55);
    v57 = 1 << (v53 & v192);
    if ((v57 & v56) != 0)
    {
      do
      {
        sub_1D8A50DC0(*(v51 + 48) + v54 * v194, v45, type metadata accessor for ProcessorState);
        v62 = &v36[*(v52 + 48)];
        sub_1D8A50DC0(v45, v36, type metadata accessor for ProcessorState);
        sub_1D8A50DC0(v195, v62, type metadata accessor for ProcessorState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            v73 = v3;
            v74 = v189;
            sub_1D8A50DC0(v36, v189, type metadata accessor for ProcessorState);
            v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0) + 48);
            v76 = *&v74[v75 + 8];
            v182 = *&v74[v75];
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v78 = *(v62 + v75);
              v77 = *(v62 + v75 + 8);
              v79 = v62;
              v80 = v185;
              sub_1D8A512F0(v79, v185, type metadata accessor for DetectionRequest);
              if (*v74 != *v80)
              {

                v3 = v73;
                v51 = v191;
                goto LABEL_127;
              }

              v81 = v74;
              v174 = v78;
              v178 = v77;
              v82 = v73;
              v83 = v183[5];
              v84 = v179;
              v85 = v179 + *(v180 + 48);
              sub_1D8A50DC0(&v81[v83], v179, type metadata accessor for DetectionRequest.Originator);
              sub_1D8A50DC0(&v185[v83], v85, type metadata accessor for DetectionRequest.Originator);
              v86 = swift_getEnumCaseMultiPayload();
              if (v86 > 1)
              {
                v87 = v171;
                v51 = v191;
                if (v86 != 2)
                {
                  v3 = v82;
                  if (v86 == 3)
                  {
                    v88 = v179;
                    v89 = v162;
                    sub_1D8A50DC0(v179, v162, type metadata accessor for DetectionRequest.Originator);
                    v90 = *v89;
                    if (swift_getEnumCaseMultiPayload() == 3)
                    {
                      v158 = sub_1D894FA18(v90, *v85);

                      sub_1D8A50E28(v88, type metadata accessor for DetectionRequest.Originator);
                      goto LABEL_61;
                    }

LABEL_86:

LABEL_88:
                    v52 = v181;
LABEL_89:
                    sub_1D87A14E4(v179, &unk_1ECA64FB0, &qword_1D8B25F50);
LABEL_127:
                    sub_1D8A50E28(v189, type metadata accessor for DetectionRequest);
                    sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
LABEL_128:
                    v150 = v185;
LABEL_143:
                    sub_1D8A50E28(v150, type metadata accessor for DetectionRequest);
LABEL_144:
                    sub_1D8A50E28(v36, type metadata accessor for ProcessorState);
                    goto LABEL_11;
                  }

                  v119 = swift_getEnumCaseMultiPayload();
                  v52 = v181;
                  if (v119 != 4)
                  {

                    goto LABEL_89;
                  }

LABEL_116:
                  sub_1D8A50E28(v179, type metadata accessor for DetectionRequest.Originator);
LABEL_117:
                  v146 = v183;
                  v147 = v189;
                  v148 = v185;
                  if ((sub_1D894CAAC(*&v189[v183[6]], *&v185[v183[6]]) & 1) == 0 || !CGRectEqualToRect(*(v147 + v146[7]), *(v148 + v146[7])))
                  {

                    v3 = v170;
                    goto LABEL_127;
                  }

                  if (*(v147 + v146[8]) != *(v148 + v146[8]))
                  {
                    sub_1D8A50E28(v45, type metadata accessor for ProcessorState);

                    sub_1D8A50E28(v147, type metadata accessor for DetectionRequest);
                    v3 = v170;
                    goto LABEL_128;
                  }

                  sub_1D8A50E28(v147, type metadata accessor for DetectionRequest);
                  if (v182 == v174 && v76 == v178)
                  {

                    sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
                    sub_1D8A50E28(v185, type metadata accessor for DetectionRequest);
                    v3 = v170;
LABEL_152:
                    sub_1D8A50E28(v195, type metadata accessor for ProcessorState);
                    v154 = v36;
                    goto LABEL_150;
                  }

                  v149 = sub_1D8B16BA0();

                  sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
                  sub_1D8A50E28(v185, type metadata accessor for DetectionRequest);
                  v3 = v170;
                  if (v149)
                  {
                    goto LABEL_152;
                  }

                  goto LABEL_144;
                }

                sub_1D8A50DC0(v179, v171, type metadata accessor for DetectionRequest.Originator);
                if (swift_getEnumCaseMultiPayload() != 2)
                {

                  (*v168)(v87, v169);
                  v3 = v170;
                  goto LABEL_88;
                }

                v114 = *v164;
                v115 = v169;
                (*v164)(v167, v87, v169);
                v116 = v165;
                v114(v165, v85, v115);
                v117 = v167;
                v158 = sub_1D8B13200();
                v118 = *v168;
                (*v168)(v116, v115);
                v118(v117, v115);
                sub_1D8A50E28(v179, type metadata accessor for DetectionRequest.Originator);
                v3 = v170;
LABEL_61:
                v52 = v181;
                if (v158)
                {
                  goto LABEL_117;
                }

LABEL_126:

                goto LABEL_127;
              }

              v51 = v191;
              if (!v86)
              {
                if (swift_getEnumCaseMultiPayload())
                {
                  v3 = v82;
                  goto LABEL_86;
                }

                sub_1D8A50E28(v85, type metadata accessor for DetectionRequest.Originator);
                v52 = v181;
                goto LABEL_116;
              }

              v120 = v84;
              v121 = v159;
              sub_1D8A50DC0(v120, v159, type metadata accessor for DetectionRequest.Originator);
              v122 = *v121;
              if (swift_getEnumCaseMultiPayload() != 1)
              {

                v3 = v82;
                goto LABEL_88;
              }

              v123 = *(v121 + 4);
              v124 = *v85;
              v125 = *(v85 + 4);
              if (*(v121 + 4))
              {
                v3 = v82;
                if (v123 != 1)
                {
                  v151 = v124;
                  sub_1D8A50E28(v179, type metadata accessor for DetectionRequest.Originator);
                  v52 = v181;
                  if (v151 == 0.0 && v125 == 2)
                  {
                    goto LABEL_117;
                  }

                  goto LABEL_126;
                }

                v52 = v181;
                if (v125 != 1)
                {
LABEL_125:
                  sub_1D8A50E28(v179, type metadata accessor for DetectionRequest.Originator);
                  goto LABEL_126;
                }
              }

              else
              {
                v3 = v82;
                v52 = v181;
                if (v125)
                {
                  goto LABEL_125;
                }
              }

              if (v122 == v124)
              {
                goto LABEL_116;
              }

              goto LABEL_125;
            }

            sub_1D8A50E28(v45, type metadata accessor for ProcessorState);

            sub_1D8A50E28(v74, type metadata accessor for DetectionRequest);
            v3 = v73;
            v51 = v191;
            goto LABEL_10;
          }

          v64 = v186;
          sub_1D8A50DC0(v36, v186, type metadata accessor for ProcessorState);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1D8A512F0(v62, v3, type metadata accessor for DetectionResult);
            v65 = v64;
            if (*v64 != *v3)
            {
              goto LABEL_113;
            }

            v66 = v183[5];
            v67 = v175;
            v68 = v175 + *(v180 + 48);
            sub_1D8A50DC0(v65 + v66, v175, type metadata accessor for DetectionRequest.Originator);
            sub_1D8A50DC0(&v3[v66], v68, type metadata accessor for DetectionRequest.Originator);
            v69 = swift_getEnumCaseMultiPayload();
            if (v69 > 1)
            {
              if (v69 == 2)
              {
                v101 = v160;
                sub_1D8A50DC0(v67, v160, type metadata accessor for DetectionRequest.Originator);
                if (swift_getEnumCaseMultiPayload() != 2)
                {
                  (*v168)(v101, v169);
                  goto LABEL_82;
                }

                v102 = *v164;
                v103 = v3;
                v104 = v167;
                v105 = v101;
                v106 = v169;
                (*v164)(v167, v105, v169);
                v107 = v165;
                v102(v165, v68, v106);
                LOBYTE(v102) = sub_1D8B13200();
                v108 = *v168;
                (*v168)(v107, v106);
                v109 = v104;
                v3 = v103;
                v108(v109, v106);
                sub_1D8A50E28(v175, type metadata accessor for DetectionRequest.Originator);
                v65 = v186;
                if (v102)
                {
                  goto LABEL_98;
                }

                goto LABEL_113;
              }

              if (v69 == 3)
              {
                v70 = v161;
                sub_1D8A50DC0(v67, v161, type metadata accessor for DetectionRequest.Originator);
                v71 = *v70;
                if (swift_getEnumCaseMultiPayload() == 3)
                {
                  v72 = sub_1D894FA18(v71, *v68);

                  sub_1D8A50E28(v67, type metadata accessor for DetectionRequest.Originator);
                  v65 = v186;
                  if ((v72 & 1) == 0)
                  {
                    goto LABEL_113;
                  }

LABEL_98:
                  if ((sub_1D894CAAC(*(v65 + v183[6]), *&v3[v183[6]]) & 1) != 0 && CGRectEqualToRect(*(v65 + v183[7]), *&v3[v183[7]]) && *(v65 + v183[8]) == *&v3[v183[8]])
                  {
                    v140 = *(v155 + 20);
                    v141 = *(v65 + v140);
                    v142 = *&v3[v140];
                    v143 = *(v142 + 16);
                    v182 = *(v141 + 16);
                    if (v182 == v143)
                    {
                      if (!v182 || v141 == v142)
                      {
LABEL_148:
                        sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
                        sub_1D8A50E28(v3, type metadata accessor for DetectionResult);
                        sub_1D8A50E28(v186, type metadata accessor for DetectionResult);
                        v52 = v181;
                        v51 = v191;
LABEL_149:
                        sub_1D8A50E28(v36, type metadata accessor for ProcessorState);
                        v154 = v195;
LABEL_150:
                        sub_1D8A50E28(v154, type metadata accessor for ProcessorState);
                        goto LABEL_6;
                      }

                      v144 = 0;
                      v178 = v141 + 32;
                      while (v144 < *(v141 + 16))
                      {
                        *&v197 = *(v178 + 8 * v144);
                        if (v144 >= *(v142 + 16))
                        {
                          goto LABEL_156;
                        }

                        v196 = *(v142 + 32 + 8 * v144);

                        v145 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(&v197, &v196);

                        v65 = v186;
                        if ((v145 & 1) == 0)
                        {
                          goto LABEL_113;
                        }

                        if (v182 == ++v144)
                        {
                          goto LABEL_148;
                        }
                      }

LABEL_155:
                      __break(1u);
LABEL_156:
                      __break(1u);
                      return;
                    }
                  }

                  goto LABEL_113;
                }

LABEL_82:
                sub_1D87A14E4(v67, &unk_1ECA64FB0, &qword_1D8B25F50);
LABEL_83:
                v65 = v186;
LABEL_113:
                sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
                sub_1D8A50E28(v3, type metadata accessor for DetectionResult);
                sub_1D8A50E28(v65, type metadata accessor for DetectionResult);
                sub_1D8A50E28(v36, type metadata accessor for ProcessorState);
                v52 = v181;
                v51 = v191;
                goto LABEL_11;
              }

              if (swift_getEnumCaseMultiPayload() != 4)
              {
                goto LABEL_82;
              }

LABEL_97:
              sub_1D8A50E28(v67, type metadata accessor for DetectionRequest.Originator);
              v65 = v186;
              goto LABEL_98;
            }

            if (!v69)
            {
              if (swift_getEnumCaseMultiPayload())
              {
                goto LABEL_82;
              }

              sub_1D8A50E28(v68, type metadata accessor for DetectionRequest.Originator);
              goto LABEL_97;
            }

            v110 = v166;
            sub_1D8A50DC0(v67, v166, type metadata accessor for DetectionRequest.Originator);
            v111 = *v110;
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              goto LABEL_82;
            }

            v112 = *v68;
            v113 = *(v68 + 4);
            if (*(v166 + 4))
            {
              if (*(v166 + 4) != 1)
              {
                sub_1D8A50E28(v67, type metadata accessor for DetectionRequest.Originator);
                v65 = v186;
                if (v112 != 0.0 || v113 != 2)
                {
                  goto LABEL_113;
                }

                goto LABEL_98;
              }

              if (v113 != 1)
              {
                goto LABEL_110;
              }

LABEL_96:
              if (v111 == v112)
              {
                goto LABEL_97;
              }
            }

            else if (!v113)
            {
              goto LABEL_96;
            }

LABEL_110:
            sub_1D8A50E28(v67, type metadata accessor for DetectionRequest.Originator);
            goto LABEL_83;
          }

          sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
          v61 = type metadata accessor for DetectionResult;
        }

        else
        {
          v64 = v190;
          sub_1D8A50DC0(v36, v190, type metadata accessor for ProcessorState);
          if (!swift_getEnumCaseMultiPayload())
          {
            v91 = v62;
            v92 = v184;
            sub_1D8A512F0(v91, v184, type metadata accessor for DetectionRequest);
            if (*v64 != *v92)
            {
              goto LABEL_141;
            }

            v93 = v183[5];
            v94 = v177;
            v95 = v177 + *(v180 + 48);
            sub_1D8A50DC0(&v190[v93], v177, type metadata accessor for DetectionRequest.Originator);
            sub_1D8A50DC0(&v184[v93], v95, type metadata accessor for DetectionRequest.Originator);
            v96 = swift_getEnumCaseMultiPayload();
            if (v96 > 1)
            {
              if (v96 == 2)
              {
                v126 = v156;
                sub_1D8A50DC0(v94, v156, type metadata accessor for DetectionRequest.Originator);
                if (swift_getEnumCaseMultiPayload() == 2)
                {
                  v127 = v126;
                  v128 = *v164;
                  v129 = v167;
                  v130 = v169;
                  (*v164)(v167, v127, v169);
                  v131 = v165;
                  v128(v165, v95, v130);
                  LODWORD(v182) = sub_1D8B13200();
                  v132 = *v168;
                  v52 = v181;
                  (*v168)(v131, v130);
                  v133 = v129;
                  v3 = v170;
                  v132(v133, v130);
                  sub_1D8A50E28(v94, type metadata accessor for DetectionRequest.Originator);
                  v51 = v191;
                  if ((v182 & 1) == 0)
                  {
                    goto LABEL_141;
                  }

                  goto LABEL_136;
                }

                (*v168)(v126, v169);
                goto LABEL_92;
              }

              if (v96 == 3)
              {
                v97 = v157;
                sub_1D8A50DC0(v94, v157, type metadata accessor for DetectionRequest.Originator);
                v98 = *v97;
                if (swift_getEnumCaseMultiPayload() == 3)
                {
                  v99 = sub_1D894FA18(v98, *v95);

                  sub_1D8A50E28(v94, type metadata accessor for DetectionRequest.Originator);
                  v51 = v191;
                  if ((v99 & 1) == 0)
                  {
                    goto LABEL_141;
                  }

LABEL_136:
                  if ((sub_1D894CAAC(*&v190[v183[6]], *&v184[v183[6]]) & 1) == 0)
                  {
                    goto LABEL_141;
                  }

                  v152 = v190;
                  v153 = CGRectEqualToRect(*&v190[v183[7]], *&v184[v183[7]]);
                  sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
                  if (v153 && *(v152 + v183[8]) == *&v184[v183[8]])
                  {
                    sub_1D8A50E28(v184, type metadata accessor for DetectionRequest);
                    sub_1D8A50E28(v152, type metadata accessor for DetectionRequest);
                    goto LABEL_149;
                  }

LABEL_142:
                  sub_1D8A50E28(v184, type metadata accessor for DetectionRequest);
                  v150 = v152;
                  goto LABEL_143;
                }

LABEL_92:
                v51 = v191;
LABEL_93:
                sub_1D87A14E4(v177, &unk_1ECA64FB0, &qword_1D8B25F50);
                goto LABEL_141;
              }

              v134 = swift_getEnumCaseMultiPayload();
              v51 = v191;
              if (v134 != 4)
              {
                goto LABEL_93;
              }

LABEL_135:
              sub_1D8A50E28(v177, type metadata accessor for DetectionRequest.Originator);
              goto LABEL_136;
            }

            if (!v96)
            {
              v100 = swift_getEnumCaseMultiPayload();
              v51 = v191;
              if (v100)
              {
                goto LABEL_93;
              }

              sub_1D8A50E28(v95, type metadata accessor for DetectionRequest.Originator);
              goto LABEL_135;
            }

            v135 = v163;
            sub_1D8A50DC0(v94, v163, type metadata accessor for DetectionRequest.Originator);
            v136 = *v135;
            v137 = swift_getEnumCaseMultiPayload();
            v51 = v191;
            if (v137 != 1)
            {
              goto LABEL_93;
            }

            v138 = *v95;
            v139 = *(v95 + 4);
            if (*(v163 + 4))
            {
              if (*(v163 + 4) != 1)
              {
                sub_1D8A50E28(v177, type metadata accessor for DetectionRequest.Originator);
                if (v138 == 0.0 && v139 == 2)
                {
                  goto LABEL_136;
                }

LABEL_141:
                sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
                v152 = v190;
                goto LABEL_142;
              }

              if (v139 != 1)
              {
                goto LABEL_140;
              }
            }

            else if (v139)
            {
              goto LABEL_140;
            }

            if (v136 == v138)
            {
              goto LABEL_135;
            }

LABEL_140:
            sub_1D8A50E28(v177, type metadata accessor for DetectionRequest.Originator);
            goto LABEL_141;
          }

          sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
          v61 = type metadata accessor for DetectionRequest;
        }

        sub_1D8A50E28(v64, v61);
LABEL_10:
        sub_1D87A14E4(v36, &qword_1ECA65E90, &qword_1D8B2CF70);
LABEL_11:
        v54 = (v54 + 1) & v192;
        v55 = v54 >> 6;
        v56 = *(v193 + 8 * (v54 >> 6));
        v57 = 1 << v54;
      }

      while ((v56 & (1 << v54)) != 0);
    }

    *(v193 + 8 * v55) = v56 | v57;
    sub_1D8A512F0(v195, *(v51 + 48) + v54 * v194, type metadata accessor for ProcessorState);
    v58 = *(v51 + 16);
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      __break(1u);
      goto LABEL_155;
    }

    *(v51 + 16) = v60;
LABEL_6:
    v50 = v176 + 1;
  }

  while (v176 + 1 != v172);
}