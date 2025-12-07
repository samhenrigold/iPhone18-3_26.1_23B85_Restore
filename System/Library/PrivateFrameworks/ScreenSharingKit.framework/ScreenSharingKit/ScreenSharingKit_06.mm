uint64_t sub_264A64B54()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_264A64C64, v1, 0);
}

uint64_t sub_264A64C64()
{
  v1 = *(v0 + 40);

  sub_264A691B8(v1, type metadata accessor for RTIMessage);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264A64CE8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A64DF8, v1, 0);
}

uint64_t sub_264A64DF8()
{
  v42 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
  swift_beginAccess();
  sub_264A69218(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2649D04D4(v0[7], &qword_27FF8A328, &qword_264B4A798);
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FF8AEB8);
    v7 = sub_264B40944();
    v8 = sub_264B41494();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2649C6000, v7, v8, "Received documentStateDidChange while we don't have a session", v9, 2u);
      MEMORY[0x266749940](v9, -1, -1);
    }

LABEL_19:

    v37 = v0[1];

    return v37();
  }

  sub_264A69288(v0[7], v0[12], type metadata accessor for RTIMessageConsumer.SessionInfo);
  if ((sub_264B400C4() & 1) == 0 || (sub_2649D8B90(0, &qword_27FF8A8C0, 0x277D82BB8), (sub_264B415E4() & 1) == 0))
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v23 = v0[12];
    v24 = v0[10];
    v25 = sub_264B40964();
    __swift_project_value_buffer(v25, qword_27FF8AEB8);
    sub_264A692F0(v23, v24, type metadata accessor for RTIMessageConsumer.SessionInfo);
    v26 = sub_264B40944();
    v27 = sub_264B41494();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[12];
    v30 = v0[10];
    if (v28)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = v32;
      *v31 = 136315138;
      sub_264B40104();
      sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v33 = sub_264B41A64();
      v35 = v34;
      sub_264A691B8(v30, type metadata accessor for RTIMessageConsumer.SessionInfo);
      v36 = sub_2649CC004(v33, v35, &v41);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_2649C6000, v26, v27, "Received documentStateDidChange with a new sessionID while one already exists with ID: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x266749940](v32, -1, -1);
      MEMORY[0x266749940](v31, -1, -1);
    }

    else
    {

      sub_264A691B8(v30, type metadata accessor for RTIMessageConsumer.SessionInfo);
    }

    sub_264A691B8(v29, type metadata accessor for RTIMessageConsumer.SessionInfo);
    goto LABEL_19;
  }

  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v10 = v0[11];
  v11 = v0[5];
  v12 = sub_264B40964();
  __swift_project_value_buffer(v12, qword_27FF8AEB8);
  sub_264A692F0(v11, v10, type metadata accessor for RTIMessageConsumer.SessionInfo);
  v13 = sub_264B40944();
  v14 = sub_264B414B4();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[11];
  if (v15)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v41 = v18;
    *v17 = 136315138;
    sub_264B40104();
    sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_264B41A64();
    v21 = v20;
    sub_264A691B8(v16, type metadata accessor for RTIMessageConsumer.SessionInfo);
    v22 = sub_2649CC004(v19, v21, &v41);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_2649C6000, v13, v14, "documentStateDidChange: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x266749940](v18, -1, -1);
    MEMORY[0x266749940](v17, -1, -1);
  }

  else
  {

    sub_264A691B8(v16, type metadata accessor for RTIMessageConsumer.SessionInfo);
  }

  v39 = swift_task_alloc();
  v0[13] = v39;
  *v39 = v0;
  v39[1] = sub_264A65468;
  v40 = v0[12];

  return sub_264A6561C(v40);
}

uint64_t sub_264A65468()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_264A65578, v1, 0);
}

uint64_t sub_264A65578()
{
  sub_264A691B8(*(v0 + 96), type metadata accessor for RTIMessageConsumer.SessionInfo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A6561C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for RTIMessage(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A656B0, v1, 0);
}

id sub_264A656B0()
{
  v23 = v0;
  v1 = [*(v0[2] + *(type metadata accessor for RTIMessageConsumer.SessionInfo(0) + 20)) currentDataPayload];
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v2 version];
    result = [v2 data];
    if (result)
    {
      v5 = result;
      v7 = v0[4];
      v6 = v0[5];
      v8 = v0[2];
      v9 = sub_264B40024();
      v11 = v10;

      v12 = sub_264B40104();
      (*(*(v12 - 8) + 16))(v6, v8, v12);
      v13 = v6 + *(v7 + 20);
      *v13 = v3;
      *(v13 + 8) = v9;
      *(v13 + 16) = v11 | 0x2000000000000000;
      *(v13 + 24) = 0;
      v14 = swift_task_alloc();
      v0[7] = v14;
      *v14 = v0;
      v14[1] = sub_264A65998;
      v15 = v0[5];

      return sub_264A65AA8(v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v16 = sub_264B40964();
    __swift_project_value_buffer(v16, qword_27FF8AEB8);
    v17 = sub_264B40944();
    v18 = sub_264B41494();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_2649CC004(0xD000000000000020, 0x8000000264B5D0C0, &v22);
      _os_log_impl(&dword_2649C6000, v17, v18, "%s session.currentDataPayload did not return any data payload", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);
    }

    v21 = v0[1];

    return v21();
  }

  return result;
}

uint64_t sub_264A65998()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_264A6B514, v1, 0);
}

uint64_t sub_264A65AA8(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = type metadata accessor for RTIMessage(0);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A65C00, v1, 0);
}

uint64_t sub_264A65C00()
{
  v62 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 152);
  v5 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
  swift_beginAccess();
  sub_264A69218(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2649D04D4(*(v0 + 200), &qword_27FF8A328, &qword_264B4A798);
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 184);
    v7 = *(v0 + 144);
    v8 = sub_264B40964();
    __swift_project_value_buffer(v8, qword_27FF8AEB8);
    sub_264A692F0(v7, v6, type metadata accessor for RTIMessage);
    v9 = sub_264B40944();
    v10 = sub_264B41494();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 184);
    if (v11)
    {
      v13 = *(v0 + 160);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v61 = v15;
      *v14 = 136446210;
      v16 = v12 + *(v13 + 20);
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      *(v0 + 56) = *v16;
      *(v0 + 64) = v18;
      *(v0 + 72) = v19;
      *(v0 + 80) = v20;
      sub_264A6B440(v17, v18, v19, v20);
      v21 = sub_264B41064();
      v23 = v22;
      sub_264A691B8(v12, type metadata accessor for RTIMessage);
      v24 = sub_2649CC004(v21, v23, &v61);

      *(v14 + 4) = v24;
      _os_log_impl(&dword_2649C6000, v9, v10, "Received %{public}s while we don't have a session", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x266749940](v15, -1, -1);
      MEMORY[0x266749940](v14, -1, -1);

LABEL_18:

      v59 = *(v0 + 8);

      return v59();
    }

    v30 = type metadata accessor for RTIMessage;
    v31 = v12;
LABEL_17:
    sub_264A691B8(v31, v30);
    goto LABEL_18;
  }

  sub_264A69288(*(v0 + 200), *(v0 + 232), type metadata accessor for RTIMessageConsumer.SessionInfo);
  if ((sub_264B400C4() & 1) == 0)
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 224);
    v33 = *(v0 + 232);
    v34 = *(v0 + 192);
    v35 = *(v0 + 144);
    v36 = sub_264B40964();
    __swift_project_value_buffer(v36, qword_27FF8AEB8);
    sub_264A692F0(v35, v34, type metadata accessor for RTIMessage);
    sub_264A692F0(v33, v32, type metadata accessor for RTIMessageConsumer.SessionInfo);
    v37 = sub_264B40944();
    v38 = sub_264B41494();
    v39 = os_log_type_enabled(v37, v38);
    v41 = *(v0 + 224);
    v40 = *(v0 + 232);
    v42 = *(v0 + 192);
    if (v39)
    {
      v43 = *(v0 + 160);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v61 = v45;
      *v44 = 136446466;
      v46 = v42 + *(v43 + 20);
      v47 = *v46;
      v48 = *(v46 + 8);
      v49 = *(v46 + 16);
      v50 = *(v46 + 24);
      *(v0 + 88) = *v46;
      *(v0 + 96) = v48;
      *(v0 + 104) = v49;
      *(v0 + 112) = v50;
      sub_264A6B440(v47, v48, v49, v50);
      v51 = sub_264B41064();
      v53 = v52;
      sub_264A691B8(v42, type metadata accessor for RTIMessage);
      v54 = sub_2649CC004(v51, v53, &v61);

      *(v44 + 4) = v54;
      *(v44 + 12) = 2080;
      sub_264B40104();
      sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v55 = sub_264B41A64();
      v57 = v56;
      sub_264A691B8(v41, type metadata accessor for RTIMessageConsumer.SessionInfo);
      v58 = sub_2649CC004(v55, v57, &v61);

      *(v44 + 14) = v58;
      _os_log_impl(&dword_2649C6000, v37, v38, "Received %{public}s with a new sessionID while one already exists with ID: %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v45, -1, -1);
      MEMORY[0x266749940](v44, -1, -1);
    }

    else
    {

      sub_264A691B8(v41, type metadata accessor for RTIMessageConsumer.SessionInfo);
      sub_264A691B8(v42, type metadata accessor for RTIMessage);
    }

    v31 = v40;
    v30 = type metadata accessor for RTIMessageConsumer.SessionInfo;
    goto LABEL_17;
  }

  v25 = *(v0 + 144);
  v26 = *(*(v0 + 152) + 128);
  *(v0 + 40) = *(v0 + 160);
  *(v0 + 48) = &off_28765CD50;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_264A692F0(v25, boxed_opaque_existential_1, type metadata accessor for RTIMessage);
  v60 = (v26 + *v26);
  v28 = swift_task_alloc();
  *(v0 + 240) = v28;
  *v28 = v0;
  v28[1] = sub_264A662F0;

  return v60(v0 + 16);
}

uint64_t sub_264A662F0()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_264A664E0;
  }

  else
  {
    v5 = *(v2 + 152);
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_264A66418;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264A66418()
{
  sub_264A691B8(*(v0 + 232), type metadata accessor for RTIMessageConsumer.SessionInfo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A664E0()
{
  v27 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[22];
  v3 = v0[18];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AEB8);
  sub_264A692F0(v3, v2, type metadata accessor for RTIMessage);
  v5 = v1;
  v6 = sub_264B40944();
  v7 = sub_264B41494();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[31];
  v10 = v0[29];
  v11 = v0[22];
  if (v8)
  {
    v25 = v0[29];
    v12 = v0[21];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v13 = 136315394;
    sub_264A692F0(v11, v12, type metadata accessor for RTIMessage);
    v16 = sub_264B41064();
    v18 = v17;
    sub_264A691B8(v11, type metadata accessor for RTIMessage);
    v19 = sub_2649CC004(v16, v18, &v26);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    v20 = v9;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v21;
    *v14 = v21;
    _os_log_impl(&dword_2649C6000, v6, v7, "Failed to send rti message: %s with error: %@", v13, 0x16u);
    sub_2649D04D4(v14, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x266749940](v15, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);

    v22 = v25;
  }

  else
  {

    sub_264A691B8(v11, type metadata accessor for RTIMessage);
    v22 = v10;
  }

  sub_264A691B8(v22, type metadata accessor for RTIMessageConsumer.SessionInfo);

  v23 = v0[1];

  return v23();
}

uint64_t sub_264A66810(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v2[18] = type metadata accessor for RTIMessage(0);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v3 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A6695C, v1, 0);
}

uint64_t sub_264A6695C()
{
  v59 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 136);
  v5 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
  *(v0 + 216) = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
  swift_beginAccess();
  sub_264A69218(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2649D04D4(*(v0 + 176), &qword_27FF8A328, &qword_264B4A798);
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 152);
    v7 = *(v0 + 128);
    v8 = sub_264B40964();
    __swift_project_value_buffer(v8, qword_27FF8AEB8);
    sub_264A692F0(v7, v6, type metadata accessor for RTIMessage);
    v9 = sub_264B40944();
    v10 = sub_264B41494();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 152);
    if (v11)
    {
      v13 = *(v0 + 144);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v58 = v15;
      *v14 = 136446210;
      v16 = v12 + *(v13 + 20);
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      *(v0 + 16) = *v16;
      *(v0 + 24) = v18;
      *(v0 + 32) = v19;
      *(v0 + 40) = v20;
      sub_264A6B440(v17, v18, v19, v20);
      v21 = sub_264B41064();
      v23 = v22;
      sub_264A691B8(v12, type metadata accessor for RTIMessage);
      v24 = sub_2649CC004(v21, v23, &v58);

      *(v14 + 4) = v24;
      _os_log_impl(&dword_2649C6000, v9, v10, "Received %{public}s while we don't have a session", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x266749940](v15, -1, -1);
      MEMORY[0x266749940](v14, -1, -1);

LABEL_18:

      v57 = *(v0 + 8);

      return v57();
    }

    v28 = type metadata accessor for RTIMessage;
    v29 = v12;
LABEL_17:
    sub_264A691B8(v29, v28);
    goto LABEL_18;
  }

  sub_264A69288(*(v0 + 176), *(v0 + 208), type metadata accessor for RTIMessageConsumer.SessionInfo);
  if ((sub_264B400C4() & 1) == 0)
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 200);
    v31 = *(v0 + 208);
    v32 = *(v0 + 160);
    v33 = *(v0 + 128);
    v34 = sub_264B40964();
    __swift_project_value_buffer(v34, qword_27FF8AEB8);
    sub_264A692F0(v33, v32, type metadata accessor for RTIMessage);
    sub_264A692F0(v31, v30, type metadata accessor for RTIMessageConsumer.SessionInfo);
    v35 = sub_264B40944();
    v36 = sub_264B41494();
    v37 = os_log_type_enabled(v35, v36);
    v39 = *(v0 + 200);
    v38 = *(v0 + 208);
    v40 = *(v0 + 160);
    if (v37)
    {
      v41 = *(v0 + 144);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v58 = v43;
      *v42 = 136446466;
      v44 = v40 + *(v41 + 20);
      v45 = *v44;
      v46 = *(v44 + 8);
      v47 = *(v44 + 16);
      v48 = *(v44 + 24);
      *(v0 + 48) = *v44;
      *(v0 + 56) = v46;
      *(v0 + 64) = v47;
      *(v0 + 72) = v48;
      sub_264A6B440(v45, v46, v47, v48);
      v49 = sub_264B41064();
      v51 = v50;
      sub_264A691B8(v40, type metadata accessor for RTIMessage);
      v52 = sub_2649CC004(v49, v51, &v58);

      *(v42 + 4) = v52;
      *(v42 + 12) = 2080;
      sub_264B40104();
      sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v53 = sub_264B41A64();
      v55 = v54;
      sub_264A691B8(v39, type metadata accessor for RTIMessageConsumer.SessionInfo);
      v56 = sub_2649CC004(v53, v55, &v58);

      *(v42 + 14) = v56;
      _os_log_impl(&dword_2649C6000, v35, v36, "Received %{public}s with a new sessionID while one already exists with ID: %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v43, -1, -1);
      MEMORY[0x266749940](v42, -1, -1);
    }

    else
    {

      sub_264A691B8(v39, type metadata accessor for RTIMessageConsumer.SessionInfo);
      sub_264A691B8(v40, type metadata accessor for RTIMessage);
    }

    v29 = v38;
    v28 = type metadata accessor for RTIMessageConsumer.SessionInfo;
    goto LABEL_17;
  }

  v25 = swift_task_alloc();
  *(v0 + 224) = v25;
  *v25 = v0;
  v25[1] = sub_264A66FAC;
  v26 = *(v0 + 128);

  return sub_264A65AA8(v26);
}

uint64_t sub_264A66FAC()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](sub_264A670BC, v1, 0);
}

uint64_t sub_264A670BC()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[17];
  sub_264A691B8(v0[26], type metadata accessor for RTIMessageConsumer.SessionInfo);
  (*(v3 + 56))(v4, 1, 1, v2);
  swift_beginAccess();
  sub_264A6B49C(v4, v5 + v1);
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

uint64_t sub_264A67200()
{

  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo, &qword_27FF8A328, &qword_264B4A798);
  v1 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_sessionActionStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A320, &qword_264B4A788);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_sessionActionContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_264A67330(uint64_t a1)
{
  sub_264A67510(319, &qword_27FF8A260, type metadata accessor for RTIMessageConsumer.SessionInfo, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_264A67510(319, &qword_27FF8A268, type metadata accessor for RTIMessageConsumer.RTISessionAction, MEMORY[0x277D857B8]);
    if (v2 <= 0x3F)
    {
      sub_264A67510(319, &qword_27FF8A270, type metadata accessor for RTIMessageConsumer.RTISessionAction, MEMORY[0x277D85788]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_264A67510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_264A67710(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, char a7, const char *a8)
{
  if (a5)
  {
    v13 = sub_264B41044();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = a3;
  v17 = a4;

  sub_264A6A094(a4, v13, v15, a6, a7 & 1, a8);
}

uint64_t sub_264A6780C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void *))
{
  v7 = a3;
  v8 = a4;

  a5(a4);
}

uint64_t sub_264A678D8(uint64_t a1)
{
  result = type metadata accessor for RTIMessageConsumer.SessionInfo(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RTIMessage(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_264A67960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264B40104();
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

uint64_t sub_264A67A30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264B40104();
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

uint64_t sub_264A67AE8(uint64_t a1)
{
  result = sub_264B40104();
  if (v2 <= 0x3F)
  {
    result = sub_2649D8B90(319, &unk_27FF8A2F8, 0x277D46170);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_264A67B7C()
{
  v1[2] = v0;
  v2 = sub_264B3FFD4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A67C3C, v0, 0);
}

uint64_t sub_264A67C3C()
{
  v19 = v0;
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AEB8);
  v5 = sub_264B41484();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v18);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 279;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x6164696C61766E69, 0xEC00000029286574, &v18);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
  sub_264B412B4();
  v14 = *(v13 + 144);
  if (v14)
  {
    [v14 setDelegate_];
    v15 = *(v13 + 144);
  }

  else
  {
    v15 = 0;
  }

  *(v13 + 144) = 0;

  v16 = v0[1];

  return v16();
}

uint64_t sub_264A67ED8(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798);
  v2[16] = swift_task_alloc();
  v3 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = type metadata accessor for ControlMessage(0);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A330, &qword_264B4A7A0);
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for RTIMessage(0);
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A680D0, v1, 0);
}

uint64_t sub_264A680D0()
{
  v98 = v0;
  v1 = v0[25];
  v2 = v0[14];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 8))(v3, v4);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_264A69288(v0[22], v0[23], type metadata accessor for RTIMessage);
    v5 = 0;
  }

  else
  {
    sub_264A691B8(v0[22], type metadata accessor for ControlMessage);
    v5 = 1;
  }

  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[23];
  (*(v1 + 56))(v8, v5, 1, v6);
  v9 = (*(v7 + 48))(v8, 1, v6);
  if (v9 != 1)
  {
    sub_264A69288(v0[23], v0[30], type metadata accessor for RTIMessage);
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v11 = v0[29];
    v10 = v0[30];
    v12 = sub_264B40964();
    __swift_project_value_buffer(v12, qword_27FF8AEB8);
    sub_264A692F0(v10, v11, type metadata accessor for RTIMessage);
    v13 = sub_264B40944();
    v14 = sub_264B41484();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[29];
    if (v15)
    {
      v17 = v0[28];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v97 = v19;
      *v18 = 136446210;
      sub_264A692F0(v16, v17, type metadata accessor for RTIMessage);
      v20 = sub_264B41064();
      v22 = v21;
      sub_264A691B8(v16, type metadata accessor for RTIMessage);
      v23 = sub_2649CC004(v20, v22, &v97);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_2649C6000, v13, v14, "Received RTIMessage: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x266749940](v19, -1, -1);
      MEMORY[0x266749940](v18, -1, -1);
    }

    else
    {

      sub_264A691B8(v16, type metadata accessor for RTIMessage);
    }

    v42 = v0[17];
    v43 = v0[18];
    v45 = v0[15];
    v44 = v0[16];
    v46 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
    swift_beginAccess();
    sub_264A69218(v45 + v46, v44);
    if ((*(v43 + 48))(v44, 1, v42) == 1)
    {
      sub_2649D04D4(v0[16], &qword_27FF8A328, &qword_264B4A798);
      v47 = sub_264B40944();
      v48 = sub_264B41494();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_2649C6000, v47, v48, "Received textAction payload when there is no rti session", v49, 2u);
        MEMORY[0x266749940](v49, -1, -1);
      }

      v50 = v0[30];

      v51 = v50;
      goto LABEL_33;
    }

    sub_264A69288(v0[16], v0[20], type metadata accessor for RTIMessageConsumer.SessionInfo);
    v52 = sub_264B400C4();
    v53 = v0[30];
    if (v52)
    {
      v54 = v53 + *(v0[24] + 20);
      v55 = *(v54 + 16);
      v56 = *(v54 + 24);
      if (v56)
      {
        v57 = 4;
      }

      else
      {
        v57 = 0;
      }

      if (((v55 >> 60) & 3 | v57) == 1)
      {
        v58 = v0[20];
        v59 = v0[17];
        v61 = *v54;
        v60 = *(v54 + 8);
        sub_2649DEF18(v60, v55 & 0xCFFFFFFFFFFFFFFFLL);
        v62 = sub_264B40014();
        sub_264A693A0(v61, v60, v55, v56);
        v63 = [objc_opt_self() payloadWithData:v62 version:v61];

        [*(v58 + *(v59 + 20)) handleTextActionPayload_];
LABEL_32:
        v92 = v0[30];
        sub_264A691B8(v0[20], type metadata accessor for RTIMessageConsumer.SessionInfo);
        v51 = v92;
LABEL_33:
        sub_264A691B8(v51, type metadata accessor for RTIMessage);
        goto LABEL_34;
      }

      sub_264A692F0(v0[30], v0[27], type metadata accessor for RTIMessage);
      v79 = sub_264B40944();
      v80 = sub_264B41494();
      if (os_log_type_enabled(v79, v80))
      {
        v82 = v0[27];
        v81 = v0[28];
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v97 = v84;
        *v83 = 136446210;
        sub_264A692F0(v82, v81, type metadata accessor for RTIMessage);
        v85 = sub_264B41064();
        v87 = v86;
        sub_264A691B8(v82, type metadata accessor for RTIMessage);
        v88 = sub_2649CC004(v85, v87, &v97);

        *(v83 + 4) = v88;
        _os_log_impl(&dword_2649C6000, v79, v80, "unexpected RTI message from client: %{public}s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v84);
        MEMORY[0x266749940](v84, -1, -1);
        MEMORY[0x266749940](v83, -1, -1);

        goto LABEL_32;
      }

      v91 = v0[27];

      v89 = type metadata accessor for RTIMessage;
      v90 = v91;
    }

    else
    {
      v64 = v0[26];
      sub_264A692F0(v0[20], v0[19], type metadata accessor for RTIMessageConsumer.SessionInfo);
      sub_264A692F0(v53, v64, type metadata accessor for RTIMessage);
      v65 = sub_264B40944();
      v66 = sub_264B41494();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v0[26];
      v69 = v0[19];
      if (v67)
      {
        v95 = v66;
        v70 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v97 = v96;
        *v70 = 136315394;
        sub_264B40104();
        sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v71 = sub_264B41A64();
        v73 = v72;
        sub_264A691B8(v69, type metadata accessor for RTIMessageConsumer.SessionInfo);
        v74 = sub_2649CC004(v71, v73, &v97);

        *(v70 + 4) = v74;
        *(v70 + 12) = 2080;
        v75 = sub_264B41A64();
        v77 = v76;
        sub_264A691B8(v68, type metadata accessor for RTIMessage);
        v78 = sub_2649CC004(v75, v77, &v97);

        *(v70 + 14) = v78;
        _os_log_impl(&dword_2649C6000, v65, v95, "currentSessionID: %s and incoming message's sessionID: %s does not match ignoring message", v70, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266749940](v96, -1, -1);
        MEMORY[0x266749940](v70, -1, -1);

        goto LABEL_32;
      }

      sub_264A691B8(v68, type metadata accessor for RTIMessage);
      v89 = type metadata accessor for RTIMessageConsumer.SessionInfo;
      v90 = v69;
    }

    sub_264A691B8(v90, v89);
    goto LABEL_32;
  }

  sub_2649D04D4(v0[23], &qword_27FF8A330, &qword_264B4A7A0);
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v24 = v0[14];
  v25 = sub_264B40964();
  __swift_project_value_buffer(v25, qword_27FF8AEB8);
  sub_2649CB5C0(v24, (v0 + 2));

  v26 = sub_264B40944();
  v27 = sub_264B41494();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v97 = v29;
    *v28 = 136446466;
    v30 = [ description];
    v31 = sub_264B41044();
    v33 = v32;

    v34 = sub_2649CC004(v31, v33, &v97);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    v35 = v0[5];
    v36 = __swift_project_boxed_opaque_existential_1(v0 + 2, v35);
    v0[10] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    (*(*(v35 - 8) + 16))(boxed_opaque_existential_1, v36, v35);
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v38 = sub_264B41C44();
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v41 = sub_2649CC004(v38, v40, &v97);

    *(v28 + 14) = v41;
    _os_log_impl(&dword_2649C6000, v26, v27, "%{public}s unexpected message type: %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v29, -1, -1);
    MEMORY[0x266749940](v28, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

LABEL_34:

  v93 = v0[1];

  return v93(v9 != 1);
}

uint64_t sub_264A68C8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return sub_264A6AC98();
}

uint64_t sub_264A68D2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264A67B7C();
}

uint64_t sub_264A68DB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CBEFC;

  return sub_264A67ED8(a1);
}

uint64_t sub_264A68E4C(uint64_t a1)
{
  result = sub_264A69358(&qword_27FF8A308, type metadata accessor for RTIMessageConsumer, &unk_264B4A74C);
  *(a1 + 8) = result;
  return result;
}

id sub_264A68EA4(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A310, &qword_264B4A778);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v10);
  v12 = &v21 - v11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A320, &qword_264B4A788);
  v13 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v14);
  v16 = &v21 - v15;
  swift_defaultActor_initialize();
  *(v2 + 14) = 0xD00000000000001ELL;
  *(v2 + 15) = 0x8000000264B5D000;
  *(v2 + 18) = 0;
  v17 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
  v18 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  (*(*(v18 - 8) + 56))(&v2[v17], 1, 1, v18);
  *(v2 + 16) = v23;
  *(v2 + 17) = a2;
  type metadata accessor for RTIMessageConsumer.RTISessionAction(0);
  (*(v5 + 104))(v8, *MEMORY[0x277D85778], v4);

  sub_264B41284();
  (*(v5 + 8))(v8, v4);
  (*(v13 + 32))(&v2[OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_sessionActionStream], v16, v22);
  (*(v9 + 32))(&v2[OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_sessionActionContinuation], v12, v24);
  v19 = type metadata accessor for RTIMessageConsumer(0);
  v25.receiver = v2;
  v25.super_class = v19;
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t sub_264A691B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264A69218(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A69288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264A692F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264A69358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264A693A0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  result = a2;
  if (a4)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (a3 >> 60) & 3 | v5;
  if (v6 <= 1)
  {
    if (!v6)
    {
      v7 = a3;
      return sub_2649DEF6C(result, v7);
    }

    if (v6 != 1)
    {
      return result;
    }

LABEL_11:
    v7 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    return sub_2649DEF6C(result, v7);
  }

  if (v6 == 2)
  {
    goto LABEL_11;
  }

  if (v6 == 3 || v6 == 4)
  {
  }

  return result;
}

void sub_264A693FC(void *a1)
{
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AEB8);
  v3 = a1;
  oslog = sub_264B40944();
  v4 = sub_264B414B4();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v7 = v6;

    v8 = [v3 description];
    v9 = sub_264B41044();
    v11 = v10;

    v12 = sub_2649CC004(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_2649C6000, oslog, v4, "didCreateInputSession: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  else
  {
  }
}

void sub_264A69594(void *a1)
{
  v2 = v1;
  v41 = type metadata accessor for RTIMessageConsumer.RTISessionAction(0);
  MEMORY[0x28223BE20](v41, v4);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A350, &qword_264B4A7E0);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v38 - v13;
  v15 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v38 - v22;
  sub_264A62B88(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2649D04D4(v14, &qword_27FF8A328, &qword_264B4A798);
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v24 = sub_264B40964();
    __swift_project_value_buffer(v24, qword_27FF8AEB8);
    v25 = sub_264B40944();
    v26 = sub_264B41494();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2649C6000, v25, v26, "inputSessionDidBegin without a sessionID, ignoring", v27, 2u);
      MEMORY[0x266749940](v27, -1, -1);
    }
  }

  else
  {
    v39 = v7;
    sub_264A69288(v14, v23, type metadata accessor for RTIMessageConsumer.SessionInfo);
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v28 = sub_264B40964();
    __swift_project_value_buffer(v28, qword_27FF8AEB8);
    sub_264A692F0(v23, v20, type metadata accessor for RTIMessageConsumer.SessionInfo);
    v29 = sub_264B40944();
    v30 = sub_264B414B4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v38[1] = v2;
      v32 = v31;
      v33 = swift_slowAlloc();
      v42 = v33;
      *v32 = 136315138;
      sub_264B40104();
      sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v34 = sub_264B41A64();
      v36 = v35;
      sub_264A691B8(v20, type metadata accessor for RTIMessageConsumer.SessionInfo);
      v37 = sub_2649CC004(v34, v36, &v42);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_2649C6000, v29, v30, "inputSessionDidBegin: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x266749940](v33, -1, -1);
      MEMORY[0x266749940](v32, -1, -1);
    }

    else
    {

      sub_264A691B8(v20, type metadata accessor for RTIMessageConsumer.SessionInfo);
    }

    sub_264A692F0(v23, v6, type metadata accessor for RTIMessageConsumer.SessionInfo);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
    sub_264B412A4();
    (*(v40 + 8))(v10, v39);
    sub_264A691B8(v23, type metadata accessor for RTIMessageConsumer.SessionInfo);
  }
}

void sub_264A69B10(void *a1)
{
  v2 = v1;
  v41 = type metadata accessor for RTIMessageConsumer.RTISessionAction(0);
  MEMORY[0x28223BE20](v41, v4);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A350, &qword_264B4A7E0);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v38 - v13;
  v15 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v38 - v22;
  if (a1)
  {
    sub_264A62B88(a1, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_2649D04D4(v14, &qword_27FF8A328, &qword_264B4A798);
      if (qword_27FF88420 != -1)
      {
        swift_once();
      }

      v24 = sub_264B40964();
      __swift_project_value_buffer(v24, qword_27FF8AEB8);
      v25 = sub_264B40944();
      v26 = sub_264B41494();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_2649C6000, v25, v26, "documentStateDidChange without a sessionID", v27, 2u);
        MEMORY[0x266749940](v27, -1, -1);
      }
    }

    else
    {
      v39 = v7;
      sub_264A69288(v14, v23, type metadata accessor for RTIMessageConsumer.SessionInfo);
      if (qword_27FF88420 != -1)
      {
        swift_once();
      }

      v28 = sub_264B40964();
      __swift_project_value_buffer(v28, qword_27FF8AEB8);
      sub_264A692F0(v23, v20, type metadata accessor for RTIMessageConsumer.SessionInfo);
      v29 = sub_264B40944();
      v30 = sub_264B414B4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v38[1] = v2;
        v32 = v31;
        v33 = swift_slowAlloc();
        v42 = v33;
        *v32 = 136315138;
        sub_264B40104();
        sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v34 = sub_264B41A64();
        v36 = v35;
        sub_264A691B8(v20, type metadata accessor for RTIMessageConsumer.SessionInfo);
        v37 = sub_2649CC004(v34, v36, &v42);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_2649C6000, v29, v30, "documentStateDidChange: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x266749940](v33, -1, -1);
        MEMORY[0x266749940](v32, -1, -1);
      }

      else
      {

        sub_264A691B8(v20, type metadata accessor for RTIMessageConsumer.SessionInfo);
      }

      sub_264A692F0(v23, v6, type metadata accessor for RTIMessageConsumer.SessionInfo);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
      sub_264B412A4();
      (*(v40 + 8))(v10, v39);
      sub_264A691B8(v23, type metadata accessor for RTIMessageConsumer.SessionInfo);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_264A6A094(void *a1, uint64_t a2, NSObject *a3, uint64_t a4, int a5, const char *a6)
{
  v36 = a6;
  v37 = a2;
  v39 = a5;
  v38 = a4;
  v42 = a3;
  v40 = type metadata accessor for RTIMessageConsumer.RTISessionAction(0);
  MEMORY[0x28223BE20](v40, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A350, &qword_264B4A7E0);
  v10 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for RTIMessage(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_264B40104();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v36 - v25;
  if (!a1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v27 = [a1 uuid];
  if (v27)
  {
    v28 = v27;
    sub_264B400D4();

    (*(v19 + 16))(v23, v26, v18);
    v29 = v42;
    if (v42)
    {
      (*(v19 + 32))(v17, v23, v18);
      v30 = &v17[*(v14 + 20)];
      v31 = v38;
      *v30 = v37;
      *(v30 + 1) = v29;
      *(v30 + 2) = v31;
      v30[24] = v39 & 1;
      sub_264A692F0(v17, v9, type metadata accessor for RTIMessage);
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
      sub_264B412A4();
      (*(v10 + 8))(v13, v41);
      sub_264A691B8(v17, type metadata accessor for RTIMessage);
      (*(v19 + 8))(v26, v18);
      return;
    }

    goto LABEL_13;
  }

  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v32 = sub_264B40964();
  __swift_project_value_buffer(v32, qword_27FF8AEB8);
  v42 = sub_264B40944();
  v33 = sub_264B41494();
  if (os_log_type_enabled(v42, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2649C6000, v42, v33, v36, v34, 2u);
    MEMORY[0x266749940](v34, -1, -1);
  }

  v35 = v42;
}

void sub_264A6A4D8(uint64_t a1)
{
  v28 = type metadata accessor for RTIMessageConsumer.RTISessionAction(0);
  MEMORY[0x28223BE20](v28, v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A350, &qword_264B4A7E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for RTIMessage(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264B40104();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](a1, v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v17)
  {
    v20 = [v17 uuid];
    if (v20)
    {
      v27 = v5;
      v21 = v20;
      sub_264B400D4();

      (*(v15 + 16))(v13, v19, v14);
      v22 = &v13[*(v10 + 20)];
      *v22 = 0;
      *(v22 + 1) = 0;
      *(v22 + 2) = 0x1000000000000000;
      v22[24] = 1;
      sub_264A692F0(v13, v4, type metadata accessor for RTIMessage);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
      sub_264B412A4();
      (*(v6 + 8))(v9, v27);
      sub_264A691B8(v13, type metadata accessor for RTIMessage);
      (*(v15 + 8))(v19, v14);
    }

    else
    {
      if (qword_27FF88420 != -1)
      {
        swift_once();
      }

      v23 = sub_264B40964();
      __swift_project_value_buffer(v23, qword_27FF8AEB8);
      v28 = sub_264B40944();
      v24 = sub_264B41494();
      if (os_log_type_enabled(v28, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2649C6000, v28, v24, "inputSessionDidEnd without a sessionID", v25, 2u);
        MEMORY[0x266749940](v25, -1, -1);
      }

      v26 = v28;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_264A6A8B4(uint64_t a1)
{
  v28 = type metadata accessor for RTIMessageConsumer.RTISessionAction(0);
  MEMORY[0x28223BE20](v28, v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A350, &qword_264B4A7E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for RTIMessage(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264B40104();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](a1, v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v17)
  {
    v20 = [v17 uuid];
    if (v20)
    {
      v27 = v5;
      v21 = v20;
      sub_264B400D4();

      (*(v15 + 16))(v13, v19, v14);
      v22 = &v13[*(v10 + 20)];
      *v22 = xmmword_264B4A5F0;
      *(v22 + 2) = 0x1000000000000000;
      v22[24] = 1;
      sub_264A692F0(v13, v4, type metadata accessor for RTIMessage);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
      sub_264B412A4();
      (*(v6 + 8))(v9, v27);
      sub_264A691B8(v13, type metadata accessor for RTIMessage);
      (*(v15 + 8))(v19, v14);
    }

    else
    {
      if (qword_27FF88420 != -1)
      {
        swift_once();
      }

      v23 = sub_264B40964();
      __swift_project_value_buffer(v23, qword_27FF8AEB8);
      v28 = sub_264B40944();
      v24 = sub_264B41494();
      if (os_log_type_enabled(v28, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2649C6000, v28, v24, "inputSessionDidDie without a sessionID", v25, 2u);
        MEMORY[0x266749940](v25, -1, -1);
      }

      v26 = v28;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_264A6AC98()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A320, &qword_264B4A788);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = *(v3 + 64);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v1[7] = swift_task_alloc();
  v4 = sub_264B3FFD4();
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A6AE00, v0, 0);
}

uint64_t sub_264A6AE00()
{
  v32 = v0;
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AEB8);
  v5 = sub_264B41484();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v31);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 269;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD00000000000001ELL, 0x8000000264B5D0A0, &v31);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = objc_allocWithZone(MEMORY[0x277D46168]);
  v14 = sub_264B41014();
  v15 = [v13 initWithMachName_];

  if (v15)
  {
    [v15 setDelegate_];
  }

  v17 = v0[6];
  v16 = v0[7];
  v18 = v0[4];
  v19 = v0[5];
  v21 = v0[2];
  v20 = v0[3];
  v22 = *(v21 + 144);
  *(v21 + 144) = v15;
  v23 = v15;

  v24 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_sessionActionStream;
  v25 = sub_264B41274();
  (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  v26 = swift_allocObject();
  swift_weakInit();
  (*(v18 + 16))(v17, v21 + v24, v20);
  v27 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  (*(v18 + 32))(v28 + v27, v17, v20);
  *(v28 + ((v19 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  sub_264A10C20(0, 0, v16, &unk_264B4A7C8, v28);

  v29 = v0[1];

  return v29();
}

uint64_t sub_264A6B1F8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A6B230()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A320, &qword_264B4A788);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_264A6B314(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A320, &qword_264B4A788) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264A62E58(a1, v6, v7, v1 + v5, v8);
}

double sub_264A6B440(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (a3 >> 60) & 3 | v5;
  if (v6 <= 1)
  {
    if (!v6)
    {
      v8 = a3;
      return sub_2649DEF18(a2, v8);
    }

    if (v6 != 1)
    {
      return result;
    }

LABEL_11:
    v8 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    return sub_2649DEF18(a2, v8);
  }

  if (v6 == 2)
  {
    goto LABEL_11;
  }

  if (v6 == 3 || v6 == 4)
  {
  }

  return result;
}

uint64_t sub_264A6B49C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A6B518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v25[-1] - v12;
  v25[5] = a4;
  v25[6] = a5;
  sub_264A16208(a3, &v25[-1] - v12);
  v14 = sub_264B41274();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_264A6E820(v13);
  }

  else
  {
    sub_264B41264();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_264B411C4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_264B41074();
      sub_264A6EA68(v21 + 32, v25);

      v22 = v25[0];
      sub_264A6E820(a3);

      return v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_264A6E820(a3);
  if (v20 | v18)
  {
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = v18;
    v25[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_264A6B75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2649E0EE4;

  return sub_264A6EB24(a1, a2, a4, a5);
}

uint64_t sub_264A6B850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = sub_264B3FFD4();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  sub_264B41614();
  v8[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v10 = sub_264B413C4();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  sub_264B41364();
  v8[18] = swift_task_alloc();
  v11 = sub_264B413D4();
  v8[19] = v11;
  v8[20] = *(v11 - 8);
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A6BA80, 0, 0);
}

uint64_t sub_264A6BA80()
{
  if (os_variant_allows_internal_security_policies() && (v1 = [objc_opt_self() standardUserDefaults], v2 = sub_264B41014(), v3 = objc_msgSend(v1, sel_BOOLForKey_, v2), v2, v1, v3))
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71B8);
    v5 = sub_264B40944();
    v6 = sub_264B41494();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "------- Timeouts disabled via defaults on internal builds only -------", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 144);
  v10 = *(v0 + 80);
  v11 = swift_task_alloc();
  v12 = *(v0 + 48);
  v13 = *(v0 + 32);
  *(v11 + 16) = *(v0 + 64);
  *(v11 + 32) = v10;
  *(v11 + 40) = v12;
  *(v11 + 56) = v8;
  *(v11 + 64) = v13;
  sub_264A6DFD0(v9);
  sub_264B413E4();

  sub_264B412C4();
  v14 = swift_task_alloc();
  *(v0 + 176) = v14;
  *v14 = v0;
  v14[1] = sub_264A6BD00;
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);

  return MEMORY[0x2822005A8](v15, 0, 0, v16, v0 + 16);
}

uint64_t sub_264A6BD00()
{

  if (v0)
  {
    v1 = sub_264A6C1D0;
  }

  else
  {
    v1 = sub_264A6BE10;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_264A6BE10()
{
  v26 = v0;
  v1 = v0[14];
  v2 = v0[8];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    v7 = sub_264B40964();
    __swift_project_value_buffer(v7, qword_27FFA71B8);
    v8 = sub_264B41484();
    sub_264B3FF94();
    v9 = sub_264B3FFA4();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_264B40944();
    if (os_log_type_enabled(v12, v8))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25[0] = v14;
      *v13 = 136446978;
      v15 = sub_2649CC004(v9, v11, v25);

      *(v13 + 4) = v15;
      *(v13 + 12) = 2050;
      *(v13 + 14) = 79;
      *(v13 + 22) = 2082;
      *(v13 + 24) = sub_2649CC004(0xD000000000000029, 0x8000000264B5D210, v25);
      *(v13 + 32) = 2082;
      *(v13 + 34) = sub_2649CC004(0xD00000000000001ALL, 0x8000000264B5D180, v25);
      _os_log_impl(&dword_2649C6000, v12, v8, "%{public}s:%{public}ld %{public}s %{public}s", v13, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    else
    {
    }

    v21 = v0[20];
    v20 = v0[21];
    v22 = v0[19];
    sub_264A6EA14();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    (*(v21 + 8))(v20, v22);

    v19 = v0[1];
  }

  else
  {
    v16 = v0[14];
    v17 = v0[8];
    v18 = v0[3];
    (*(v0[20] + 8))(v0[21], v0[19]);
    (*(v3 + 32))(v18, v16, v17);

    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_264A6C1D0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_264A6C2A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a7;
  v44 = a8;
  v46 = a5;
  v47 = a6;
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v45 = a1;
  v9 = *(a8 - 8);
  v10 = *(v9 + 64);
  v48 = a9;
  v49 = v10;
  MEMORY[0x28223BE20](a1, a9);
  v53 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v17 = &v38 - v16;
  v41 = &v38 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v18 = sub_264B41394();
  v39 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v38 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v38 - v26;
  v42 = &v38 - v26;
  v28 = sub_264B41274();
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  (*(v19 + 16))(v23, v45, v18);
  (*(v13 + 16))(v17, v46, AssociatedTypeWitness);
  v38 = v9;
  v29 = v44;
  (*(v9 + 16))(v53, v47, v44);
  v30 = (*(v19 + 80) + 72) & ~*(v19 + 80);
  v31 = v30 + v20;
  v32 = (*(v13 + 80) + v31 + 1) & ~*(v13 + 80);
  v33 = (v14 + *(v9 + 80) + v32) & ~*(v9 + 80);
  v34 = swift_allocObject();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  *(v34 + 4) = v43;
  *(v34 + 5) = v29;
  v35 = v50;
  v36 = v51;
  *(v34 + 6) = v48;
  *(v34 + 7) = v35;
  *(v34 + 8) = v36;
  (*(v19 + 32))(&v34[v30], v23, v39);
  v34[v31] = v52;
  (*(v13 + 32))(&v34[v32], v41, v40);
  (*(v38 + 32))(&v34[v33], v53, v29);

  sub_264A10C20(0, 0, v42, &unk_264B4A8F0, v34);
}

uint64_t sub_264A6C6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 72) = v11;
  *(v8 + 80) = v12;
  *(v8 + 56) = v10;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 104) = a7;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_264A6C6E4, 0, 0);
}

uint64_t sub_264A6C6E4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v5 = *(v0 + 24);
  v6 = *(v0 + 48);
  *(v4 + 16) = *(v0 + 64);
  *(v4 + 32) = v1;
  *(v4 + 40) = v5;
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
  *(v4 + 72) = v6;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_264A6C7FC;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = MEMORY[0x277D84F78] + 8;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v8, v9, v10, 0, 0, &unk_264B4A900, v4, v11);
}

uint64_t sub_264A6C7FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264A6C90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v17;
  *(v8 + 80) = v18;
  *(v8 + 56) = a8;
  *(v8 + 64) = v16;
  *(v8 + 40) = a5;
  *(v8 + 48) = a7;
  *(v8 + 193) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  v9 = *(v17 - 8);
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 + 64);
  *(v8 + 104) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 112) = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  *(v8 + 120) = v11;
  *(v8 + 128) = *(v11 + 64);
  *(v8 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v12 = sub_264B41394();
  *(v8 + 144) = v12;
  v13 = *(v12 - 8);
  *(v8 + 152) = v13;
  *(v8 + 160) = *(v13 + 64);
  *(v8 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A6CB2C, 0, 0);
}

uint64_t sub_264A6CB2C()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 144);
  v38 = *(v0 + 193);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v33 = *(v0 + 24);
  v35 = *(v0 + 80);
  v7 = *(sub_264B41274() - 8);
  v31 = *(v0 + 64);
  v29 = *(v7 + 56);
  (v29)(v1, 1, 1);
  v30 = *(v3 + 16);
  v30(v2, v5, v4);
  v8 = *(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v31;
  *(v9 + 48) = v35;
  *(v9 + 56) = v33;
  *(v9 + 64) = v6;
  v36 = *(v3 + 32);
  v36(v9 + ((v8 + 72) & ~v8), v2, v4);

  sub_264B01A0C(v1, &unk_264B4A910, v9);
  sub_264A6E820(v1);
  if ((v38 & 1) == 0)
  {
    v32 = *(v0 + 176);
    v39 = *(v0 + 168);
    v10 = *(v0 + 136);
    v37 = *(v0 + 144);
    v11 = *(v0 + 120);
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    v25 = *(v0 + 128);
    v26 = v12;
    v27 = v13;
    v14 = *(v0 + 88);
    v28 = *(v0 + 64);
    v15 = *(v0 + 48);
    v22 = *(v0 + 56);
    v23 = *(v0 + 40);
    v24 = *(v0 + 96) + v8;
    v34 = *(v0 + 72);
    v29();
    (*(v11 + 16))(v10, v15, v12);
    (*(v14 + 16))(v13, v22, v34);
    v30(v39, v23, v37);
    v16 = (*(v11 + 80) + 56) & ~*(v11 + 80);
    v17 = (v25 + *(v14 + 80) + v16) & ~*(v14 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v28;
    *(v18 + 40) = v34;
    (*(v11 + 32))(v18 + v16, v10, v26);
    (*(v14 + 32))(v18 + v17, v27, v34);
    v36(v18 + ((v24 + v17) & ~v8), v39, v37);
    sub_264B01A0C(v32, &unk_264B4A920, v18);
    sub_264A6E820(v32);
  }

  v19 = swift_task_alloc();
  *(v0 + 184) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A368, &qword_264B4A928);
  *v19 = v0;
  v19[1] = sub_264A6CF0C;

  return MEMORY[0x2822002D0](v0 + 192, 0, 0, v20);
}

uint64_t sub_264A6CF0C()
{

  return MEMORY[0x2822009F8](sub_264A6D008, 0, 0);
}

uint64_t sub_264A6D008()
{
  sub_264B41204();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A6D0AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[6] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v10 = sub_264B41354();
  v7[7] = v10;
  v7[8] = *(v10 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = *(a7 - 8);
  v7[11] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[12] = v11;
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v7[13] = v12;
  *v12 = v7;
  v12[1] = sub_264A6D298;

  return v14(v11);
}

uint64_t sub_264A6D298()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_264A6D4E0;
  }

  else
  {
    v2 = sub_264A6D3AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264A6D3AC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  (*(v3 + 16))(v0[11], v1, v6);
  sub_264B41394();
  sub_264B41374();
  (*(v5 + 8))(v2, v4);
  v0[3] = 0;
  sub_264B41384();
  (*(v3 + 8))(v1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_264A6D4E0()
{
  v0[2] = v0[14];
  sub_264B41394();
  sub_264B41384();

  v1 = v0[1];

  return v1();
}

uint64_t sub_264A6D584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v13;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v10 = sub_264B41614();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = *(AssociatedTypeWitness - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A6D6F0, 0, 0);
}

uint64_t sub_264A6D6F0()
{
  v31 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[4];
  v5 = sub_264B40964();
  v0[19] = __swift_project_value_buffer(v5, qword_27FFA71B8);
  v6 = *(v2 + 16);
  v0[20] = v6;
  v0[21] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_264B40944();
  v8 = sub_264B41484();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  if (v9)
  {
    v11 = v0[17];
    v12 = v0[14];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v14 = 136446210;
    v6(v11, v10, v13);
    v15 = sub_264B41064();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v13);
    v19 = sub_2649CC004(v15, v17, &v30);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2649C6000, v7, v8, "Starting timeout for %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x266749940](v29, -1, -1);
    MEMORY[0x266749940](v14, -1, -1);
  }

  else
  {
    v20 = v0[14];
    v21 = v0[10];

    v18 = *(v20 + 8);
    v18(v10, v21);
  }

  v0[22] = v18;
  (*(v0[14] + 56))(v0[13], 1, 1, v0[10]);
  v22 = swift_task_alloc();
  v0[23] = v22;
  *v22 = v0;
  v22[1] = sub_264A6D9A8;
  v23 = v0[13];
  v24 = v0[8];
  v25 = v0[9];
  v27 = v0[4];
  v26 = v0[5];

  return sub_264A6B75C(v27, v23, v26, v24, v25);
}

uint64_t sub_264A6D9A8()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 192) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_264A6DD84;
  }

  else
  {
    v5 = sub_264A6DB18;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_264A6DB18()
{
  v22 = v0;
  (*(v0 + 160))(*(v0 + 128), *(v0 + 32), *(v0 + 80));
  v1 = sub_264B40944();
  v2 = sub_264B41484();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 176);
  if (v3)
  {
    v5 = *(v0 + 160);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    v5(v6, v7, v8);
    v11 = sub_264B41064();
    v13 = v12;
    v4(v7, v8);
    v14 = sub_2649CC004(v11, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2649C6000, v1, v2, "Timeout occurred after %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  else
  {
    v15 = *(v0 + 128);
    v16 = *(v0 + 80);

    v4(v15, v16);
  }

  sub_264A6EA14();
  v17 = swift_allocError();
  *v18 = 0;
  *(v0 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  sub_264B41394();
  sub_264B41384();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_264A6DD84()
{
  v20 = v0;
  (*(v0 + 160))(*(v0 + 120), *(v0 + 32), *(v0 + 80));
  v1 = sub_264B40944();
  v2 = sub_264B41484();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 176);
  if (v3)
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    v5(v6, v7, v8);
    v11 = sub_264B41064();
    v13 = v12;
    v4(v7, v8);
    v14 = sub_2649CC004(v11, v13, &v19);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2649C6000, v1, v2, "Timeout of %{public}s cancelled", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  else
  {
    v15 = *(v0 + 120);
    v16 = *(v0 + 80);

    v4(v15, v16);
  }

  *(v0 + 16) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  sub_264B41394();
  sub_264B41384();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_264A6DFD0@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v4 = sub_264B41364();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t TaskTimeoutError.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

uint64_t Task<>.init<A>(priority:duration:clock:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v36 = a1;
  v37 = a6;
  v38 = a4;
  v39 = a5;
  v40 = a2;
  v41 = a3;
  v10 = *(a7 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v32 - v20;
  sub_264A16208(a1, &v32 - v20);
  (*(v13 + 16))(v17, v40, AssociatedTypeWitness);
  (*(v10 + 16))(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v41, a7);
  v22 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v23 = (v14 + *(v10 + 80) + v22) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = v37;
  *(v24 + 4) = v37;
  *(v24 + 5) = a7;
  *(v24 + 6) = v35;
  v26 = v17;
  v27 = v33;
  (*(v13 + 32))(&v24[v22], v26, v33);
  (*(v10 + 32))(&v24[v23], v34, a7);
  v28 = &v24[(v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8];
  v29 = v39;
  *v28 = v38;
  v28[1] = v29;
  v30 = sub_264A6B518(0, 0, v21, &unk_264B4A7F0, v24, v25);
  (*(v10 + 8))(v41, a7);
  (*(v13 + 8))(v40, v27);
  sub_264A6E820(v36);
  return v30;
}

uint64_t sub_264A6E40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_2649E0EE4;

  return sub_264A6B850(a1, a4, a5, a6, a7, a8, v18, v19);
}

uint64_t sub_264A6E4F4()
{
  v1 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = v4 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, AssociatedTypeWitness);
  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v9 | 7);
}

uint64_t sub_264A6E668(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v16 = v1[4];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (v6 + *(v5 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = (v1 + ((*(*(v4 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649CD850;

  return sub_264A6E40C(a1, v8, v9, v1 + v6, v1 + v7, v11, v12, v16);
}

uint64_t sub_264A6E820(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Task<>.withTimeout<A>(priority:duration:clock:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_2649CD850;

  return sub_264A6B850(a1, a3, a4, a5, a6, a7, a8, v19);
}

unint64_t sub_264A6E978()
{
  result = qword_27FF8A358;
  if (!qword_27FF8A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A358);
  }

  return result;
}

unint64_t sub_264A6EA14()
{
  result = qword_27FF8A360;
  if (!qword_27FF8A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A360);
  }

  return result;
}

uint64_t sub_264A6EA68@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264A6EB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v5[8] = *(AssociatedTypeWitness - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A6EC10, 0, 0);
}

uint64_t sub_264A6EC10()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  sub_264B41AF4();
  swift_getAssociatedConformanceWitness();
  sub_264B41854();
  v4 = *(v3 + 8);
  v0[11] = v4;
  v0[12] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_264A6ED48;
  v6 = v0[10];
  v7 = v0[5];
  v8 = v0[3];
  v9 = v0[4];

  return MEMORY[0x2822008C8](v6, v8, v9, v7);
}

uint64_t sub_264A6ED48()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(v5 + 112) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264A6EF04, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_264A6EF04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A6EF70()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v18 = sub_264B41394();
  v2 = *(v18 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v17 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + v4 + 1) & ~v8;
  v10 = *(v1 - 8);
  v11 = v10;
  v12 = *(v10 + 80);
  v13 = (v9 + *(v7 + 64) + v12) & ~v12;
  v14 = *(v10 + 64);
  v15 = v3 | v8 | v12;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v18);
  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);
  (*(v11 + 8))(v0 + v13, v17);

  return MEMORY[0x2821FE8E8](v0, v13 + v14, v15 | 7);
}

uint64_t sub_264A6F18C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v2 = *(sub_264B41394() - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (v4 + *(v5 + 80) + 1) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[7];
  v10 = v1[8];
  v11 = *(v1 + v4);
  v12 = swift_task_alloc();
  *(v14 + 16) = v12;
  *v12 = v14;
  v12[1] = sub_2649CD850;

  return sub_264A6C6A4(a1, v7, v8, v9, v10, v1 + v3, v11, v1 + v6);
}

uint64_t sub_264A6F3B4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  v11 = *(v2 + 72);
  v10 = *(v2 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2649E0EE4;

  return sub_264A6C90C(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_264A6F4B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v1 = sub_264B41394();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264A6F5A8(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v6 = *(sub_264B41394() - 8);
  v7 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[7];
  v11 = v1[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2649E0EE4;

  return sub_264A6D0AC(a1, v8, v9, v10, v11, v1 + v7, v5);
}

uint64_t sub_264A6F6F8()
{
  v1 = *(v0 + 40);
  v16 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v15 = (v3 + 56) & ~v3;
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v6 = (v15 + *(v2 + 64) + v5) & ~v5;
  v7 = *(v4 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v8 = sub_264B41394();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = v3 | v5 | v10;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v15, AssociatedTypeWitness);
  (*(v4 + 8))(v0 + v6, v16);
  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v12, v13 | 7);
}

uint64_t sub_264A6F90C(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v9 = *(*(v4 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v10 = *(sub_264B41394() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2649E0EE4;

  return sub_264A6D584(a1, v12, v13, v1 + v7, v1 + v8, v1 + v11, v5, v4);
}

BOOL static SceneInteractorStep.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (v5 != 1 && (v5 != 2 || (v4 - 1) >= 5))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (v3 == 1)
  {
    goto LABEL_28;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          v6 = (v4 & 0xFFFFFFFFFFFFFFFELL) == 4;
          goto LABEL_31;
        }

        goto LABEL_28;
      }
    }

    else if (v2 == 4)
    {
      if (v5 != 1 && (v5 != 2 || v4 != 5))
      {
        goto LABEL_28;
      }
    }

    else if (v5 != 1)
    {
      goto LABEL_28;
    }

LABEL_30:
    v6 = 1;
    goto LABEL_31;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          v6 = (v4 - 2) < 4;
          goto LABEL_31;
        }

LABEL_28:
        v6 = 0;
        goto LABEL_31;
      }
    }

    else if (v5 != 1 && (v5 != 2 || (v4 - 3) >= 3))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v6 = 1;
  if (v5 >= 2 && !v4)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_2649E127C(*a1, v3);
  sub_2649E127C(v4, v5);
  sub_2649E12C0(v2, v3);
  sub_2649E12C0(v4, v5);
  return v6;
}

ScreenSharingKit::SceneInteractorBlockedReasons_optional __swiftcall SceneInteractorBlockedReasons.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264B418D4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SceneInteractorBlockedReasons.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000011;
  v4 = 0x6F68706F7263696DLL;
  if (v1 != 3)
  {
    v4 = 0x6E496172656D6163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E49656369766564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_264A6FDC8()
{
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

uint64_t sub_264A6FECC(uint64_t a1)
{
  sub_264B41084();
}

uint64_t sub_264A6FFBC(uint64_t a1)
{
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

void sub_264A700C8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x8000000264B58BE0;
  v6 = 0xD000000000000011;
  v7 = 0xEF6573556E49656ELL;
  v8 = 0x6F68706F7263696DLL;
  if (v2 != 3)
  {
    v8 = 0x6E496172656D6163;
    v7 = 0xEB00000000657355;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E49656369766564;
    v3 = 0xEB00000000657355;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_264A70238(uint64_t a1)
{
  v2 = sub_264A72B8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A70274(uint64_t a1)
{
  v2 = sub_264A72B8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A702CC(uint64_t a1)
{
  v2 = sub_264A72D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A70308(uint64_t a1)
{
  v2 = sub_264A72D30();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_264A70344()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x657669746361;
    if (v1 != 6)
    {
      v5 = 0x6164696C61766E69;
    }

    v6 = 0xD000000000000019;
    if (v1 != 4)
    {
      v6 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x556F547964616572;
    if (v1 != 2)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (*v0)
    {
      v2 = 0x64656B636F6C62;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_264A70460@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_264A73E98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_264A70494(uint64_t a1)
{
  v2 = sub_264A72A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A704D0(uint64_t a1)
{
  v2 = sub_264A72A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A7050C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F73616572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264B41AA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_264A70594(uint64_t a1)
{
  v2 = sub_264A72AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A705D0(uint64_t a1)
{
  v2 = sub_264A72AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A7060C(uint64_t a1)
{
  v2 = sub_264A72C88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A70648(uint64_t a1)
{
  v2 = sub_264A72C88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A70684(uint64_t a1)
{
  v2 = sub_264A72C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A706C0(uint64_t a1)
{
  v2 = sub_264A72C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A706FC(uint64_t a1)
{
  v2 = sub_264A72CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A70738(uint64_t a1)
{
  v2 = sub_264A72CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A70774(uint64_t a1)
{
  v2 = sub_264A72D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A707B0(uint64_t a1)
{
  v2 = sub_264A72D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A707EC(uint64_t a1)
{
  v2 = sub_264A72BE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A70828(uint64_t a1)
{
  v2 = sub_264A72BE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SceneInteractorStep.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A370, &qword_264B4A940);
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v74 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A378, &qword_264B4A948);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v70 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A380, &qword_264B4A950);
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v67 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A388, &qword_264B4A958);
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v64 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A390, &qword_264B4A960);
  v62 = *(v16 - 8);
  v63 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v61 = &v56 - v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A398, &qword_264B4A968);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v19);
  v58 = &v56 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3A0, &qword_264B4A970);
  v73 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v56 - v23;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3A8, &qword_264B4A978);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v25);
  v27 = &v56 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3B0, &unk_264B4A980);
  v29 = *(v28 - 8);
  v78 = v28;
  v79 = v29;
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v56 - v31;
  v33 = *v2;
  v34 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A72A90();
  v77 = v32;
  sub_264B41BD4();
  if (!v34)
  {
    LOBYTE(v80) = 1;
    sub_264A72D30();
    v42 = v77;
    v41 = v78;
    sub_264B419B4();
    v80 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
    sub_264A72DD8(&qword_27FF8A3D0, sub_264A72B38, MEMORY[0x277D83B50]);
    sub_264B41A24();
    (*(v73 + 8))(v24, v21);
    return (*(v79 + 8))(v42, v41);
  }

  if (v34 == 1)
  {
    LOBYTE(v80) = 7;
    sub_264A72AE4();
    v35 = v74;
    v37 = v77;
    v36 = v78;
    sub_264B419B4();
    v80 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
    sub_264A72DD8(&qword_27FF8A3D0, sub_264A72B38, MEMORY[0x277D83B50]);
    v38 = v76;
    sub_264B41A24();
    (*(v75 + 8))(v35, v38);
    v39 = *(v79 + 8);
    v40 = v37;
    return v39(v40, v36);
  }

  if (v33 > 2)
  {
    if (v33 != 3)
    {
      if (v33 == 4)
      {
        LOBYTE(v80) = 5;
        sub_264A72BE0();
        v47 = v67;
        v48 = v77;
        v36 = v78;
        sub_264B419B4();
        v50 = v68;
        v49 = v69;
      }

      else
      {
        LOBYTE(v80) = 6;
        sub_264A72B8C();
        v47 = v70;
        v48 = v77;
        v36 = v78;
        sub_264B419B4();
        v50 = v71;
        v49 = v72;
      }

      (*(v50 + 8))(v47, v49);
      v39 = *(v79 + 8);
      v40 = v48;
      return v39(v40, v36);
    }

    LOBYTE(v80) = 4;
    sub_264A72C34();
    v53 = v64;
    v46 = v77;
    v45 = v78;
    sub_264B419B4();
    v55 = v65;
    v54 = v66;
    goto LABEL_15;
  }

  if (!v33)
  {
    LOBYTE(v80) = 0;
    sub_264A72D84();
    v51 = v77;
    v52 = v78;
    sub_264B419B4();
    (*(v56 + 8))(v27, v57);
    return (*(v79 + 8))(v51, v52);
  }

  if (v33 != 1)
  {
    LOBYTE(v80) = 3;
    sub_264A72C88();
    v53 = v61;
    v46 = v77;
    v45 = v78;
    sub_264B419B4();
    v55 = v62;
    v54 = v63;
LABEL_15:
    (*(v55 + 8))(v53, v54);
    return (*(v79 + 8))(v46, v45);
  }

  LOBYTE(v80) = 2;
  sub_264A72CDC();
  v44 = v58;
  v46 = v77;
  v45 = v78;
  sub_264B419B4();
  (*(v59 + 8))(v44, v60);
  return (*(v79 + 8))(v46, v45);
}

uint64_t SceneInteractorStep.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A418, &qword_264B4A990);
  v4 = *(v3 - 8);
  v77 = v3;
  v78 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v80 = &v61 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A420, &qword_264B4A998);
  v73 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v7);
  v84 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A428, &qword_264B4A9A0);
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v83 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A430, &qword_264B4A9A8);
  v13 = *(v12 - 8);
  v71 = v12;
  v72 = v13;
  MEMORY[0x28223BE20](v12, v14);
  v82 = &v61 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A438, &qword_264B4A9B0);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v16);
  v79 = &v61 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A440, &qword_264B4A9B8);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v18);
  v81 = &v61 - v19;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A448, &qword_264B4A9C0);
  v68 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v20);
  v22 = &v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A450, &qword_264B4A9C8);
  v64 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v61 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A458, &unk_264B4A9D0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v61 - v30;
  v32 = a1[3];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_264A72A90();
  v33 = v86;
  sub_264B41BC4();
  if (!v33)
  {
    v62 = v26;
    v61 = v23;
    v34 = v81;
    v63 = v22;
    v36 = v82;
    v35 = v83;
    v86 = v28;
    v38 = v84;
    v37 = v85;
    v39 = sub_264B419A4();
    v40 = (2 * *(v39 + 16)) | 1;
    v88 = v39;
    v89 = v39 + 32;
    v90 = 0;
    v91 = v40;
    v41 = sub_2649E0390();
    v42 = v31;
    if (v41 == 8 || v90 != v91 >> 1)
    {
      v47 = sub_264B417A4();
      swift_allocError();
      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
      *v49 = &type metadata for SceneInteractorStep;
      sub_264B41904();
      sub_264B41794();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
      swift_willThrow();
      (*(v86 + 8))(v31, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v41 > 3u)
      {
        if (v41 > 5u)
        {
          v46 = v37;
          v54 = v86;
          if (v41 == 6)
          {
            LOBYTE(v92) = 6;
            sub_264A72B8C();
            sub_264B418F4();
            (*(v73 + 8))(v38, v76);
            (*(v54 + 8))(v42, v27);
            swift_unknownObjectRelease();
            v45 = 2;
            v44 = 5;
          }

          else
          {
            LOBYTE(v92) = 7;
            sub_264A72AE4();
            sub_264B418F4();
            v58 = v42;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
            sub_264A72DD8(&qword_27FF8A460, sub_264A72E50, MEMORY[0x277D83B70]);
            v59 = v77;
            v60 = v80;
            sub_264B41984();
            (*(v78 + 8))(v60, v59);
            (*(v54 + 8))(v58, v27);
            swift_unknownObjectRelease();
            v44 = v92;
            v45 = 1;
          }
        }

        else
        {
          v51 = v37;
          v52 = v86;
          if (v41 == 4)
          {
            LOBYTE(v92) = 4;
            sub_264A72C34();
            sub_264B418F4();
            (*(v72 + 8))(v36, v71);
            (*(v52 + 8))(v42, v27);
            swift_unknownObjectRelease();
            v45 = 2;
            v44 = 3;
          }

          else
          {
            LOBYTE(v92) = 5;
            sub_264A72BE0();
            sub_264B418F4();
            (*(v74 + 8))(v35, v75);
            (*(v52 + 8))(v42, v27);
            swift_unknownObjectRelease();
            v45 = 2;
            v44 = 4;
          }

          v46 = v51;
        }
      }

      else if (v41 > 1u)
      {
        v46 = v37;
        v53 = v86;
        if (v41 == 2)
        {
          LOBYTE(v92) = 2;
          sub_264A72CDC();
          sub_264B418F4();
          (*(v66 + 8))(v34, v67);
          (*(v53 + 8))(v42, v27);
          swift_unknownObjectRelease();
          v45 = 2;
          v44 = 1;
        }

        else
        {
          LOBYTE(v92) = 3;
          sub_264A72C88();
          v57 = v79;
          sub_264B418F4();
          (*(v69 + 8))(v57, v70);
          (*(v53 + 8))(v42, v27);
          swift_unknownObjectRelease();
          v44 = 2;
          v45 = 2;
        }
      }

      else
      {
        if (v41)
        {
          LOBYTE(v92) = 1;
          sub_264A72D30();
          v55 = v63;
          sub_264B418F4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
          sub_264A72DD8(&qword_27FF8A460, sub_264A72E50, MEMORY[0x277D83B70]);
          v56 = v65;
          sub_264B41984();
          (*(v68 + 8))(v55, v56);
          (*(v86 + 8))(v31, v27);
          swift_unknownObjectRelease();
          v45 = 0;
          v44 = v92;
        }

        else
        {
          LOBYTE(v92) = 0;
          sub_264A72D84();
          v43 = v62;
          sub_264B418F4();
          (*(v64 + 8))(v43, v61);
          (*(v86 + 8))(v31, v27);
          swift_unknownObjectRelease();
          v44 = 0;
          v45 = 2;
        }

        v46 = v37;
      }

      *v46 = v44;
      *(v46 + 8) = v45;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v87);
}

BOOL sub_264A71E20(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (v5 != 1 && (v5 != 2 || (v4 - 1) >= 5))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (v3 == 1)
  {
    goto LABEL_28;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          v6 = (v4 & 0xFFFFFFFFFFFFFFFELL) == 4;
          goto LABEL_31;
        }

        goto LABEL_28;
      }
    }

    else if (v2 == 4)
    {
      if (v5 != 1 && (v5 != 2 || v4 != 5))
      {
        goto LABEL_28;
      }
    }

    else if (v5 != 1)
    {
      goto LABEL_28;
    }

LABEL_30:
    v6 = 1;
    goto LABEL_31;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          v6 = (v4 - 2) < 4;
          goto LABEL_31;
        }

LABEL_28:
        v6 = 0;
        goto LABEL_31;
      }
    }

    else if (v5 != 1 && (v5 != 2 || (v4 - 3) >= 3))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v6 = 1;
  if (v5 >= 2 && !v4)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_2649E127C(*a1, v3);
  sub_2649E127C(v4, v5);
  sub_2649E12C0(v2, v3);
  sub_2649E12C0(v4, v5);
  return v6;
}

BOOL sub_264A71F80(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a2 + 8))
  {
    if (v3 != 1 && (v3 != 2 || (v2 - 1) >= 5))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (v5 == 1)
  {
    goto LABEL_28;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v3 != 1)
      {
        if (v3 == 2)
        {
          v6 = (v2 & 0xFFFFFFFFFFFFFFFELL) == 4;
          goto LABEL_31;
        }

        goto LABEL_28;
      }
    }

    else if (v4 == 4)
    {
      if (v3 != 1 && (v3 != 2 || v2 != 5))
      {
        goto LABEL_28;
      }
    }

    else if (v3 != 1)
    {
      goto LABEL_28;
    }

LABEL_30:
    v6 = 1;
    goto LABEL_31;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 != 1)
      {
        if (v3 == 2)
        {
          v6 = (v2 - 2) < 4;
          goto LABEL_31;
        }

LABEL_28:
        v6 = 0;
        goto LABEL_31;
      }
    }

    else if (v3 != 1 && (v3 != 2 || (v2 - 3) >= 3))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v6 = 1;
  if (v3 >= 2 && !v2)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_2649E127C(*a2, *(a2 + 8));
  sub_2649E127C(v2, v3);
  sub_2649E12C0(v4, v5);
  sub_2649E12C0(v2, v3);
  return !v6;
}

BOOL sub_264A720E0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (v5 != 1 && (v5 != 2 || (v4 - 1) >= 5))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (v3 == 1)
  {
    goto LABEL_28;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          v6 = (v4 & 0xFFFFFFFFFFFFFFFELL) == 4;
          goto LABEL_31;
        }

        goto LABEL_28;
      }
    }

    else if (v2 == 4)
    {
      if (v5 != 1 && (v5 != 2 || v4 != 5))
      {
        goto LABEL_28;
      }
    }

    else if (v5 != 1)
    {
      goto LABEL_28;
    }

LABEL_30:
    v6 = 1;
    goto LABEL_31;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          v6 = (v4 - 2) < 4;
          goto LABEL_31;
        }

LABEL_28:
        v6 = 0;
        goto LABEL_31;
      }
    }

    else if (v5 != 1 && (v5 != 2 || (v4 - 3) >= 3))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v6 = 1;
  if (v5 >= 2 && !v4)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_2649E127C(*a1, v3);
  sub_2649E127C(v4, v5);
  sub_2649E12C0(v2, v3);
  sub_2649E12C0(v4, v5);
  return !v6;
}

BOOL sub_264A72240(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a2 + 8))
  {
    if (v3 != 1 && (v3 != 2 || (v2 - 1) >= 5))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (v5 == 1)
  {
    goto LABEL_28;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v3 != 1)
      {
        if (v3 == 2)
        {
          v6 = (v2 & 0xFFFFFFFFFFFFFFFELL) == 4;
          goto LABEL_31;
        }

        goto LABEL_28;
      }
    }

    else if (v4 == 4)
    {
      if (v3 != 1 && (v3 != 2 || v2 != 5))
      {
        goto LABEL_28;
      }
    }

    else if (v3 != 1)
    {
      goto LABEL_28;
    }

LABEL_30:
    v6 = 1;
    goto LABEL_31;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 != 1)
      {
        if (v3 == 2)
        {
          v6 = (v2 - 2) < 4;
          goto LABEL_31;
        }

LABEL_28:
        v6 = 0;
        goto LABEL_31;
      }
    }

    else if (v3 != 1 && (v3 != 2 || (v2 - 3) >= 3))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v6 = 1;
  if (v3 >= 2 && !v2)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_2649E127C(*a2, *(a2 + 8));
  sub_2649E127C(v2, v3);
  sub_2649E12C0(v4, v5);
  sub_2649E12C0(v2, v3);
  return v6;
}

ScreenSharingKit::SceneInteractorInterfaceOrientation_optional __swiftcall SceneInteractorInterfaceOrientation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_264A72550()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_264A7258C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000264B5D2A0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000264B5D2C0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_264B41AA4();

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

uint64_t sub_264A72670(uint64_t a1)
{
  v2 = sub_264A72EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A726AC(uint64_t a1)
{
  v2 = sub_264A72EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SceneInteractorOrientationStatus.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A470, &qword_264B4A9E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v11 - v7;
  v9 = *v1;
  v11[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A72EA4();
  sub_264B41BD4();
  v14 = v9;
  v13 = 0;
  sub_264A72EF8();
  sub_264B41A24();
  if (!v2)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_264A72F4C();
    sub_264B41A24();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SceneInteractorOrientationStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A490, &qword_264B4A9E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A72EA4();
  sub_264B41BC4();
  if (!v2)
  {
    v15 = 0;
    sub_264A72FA0();
    sub_264B41984();
    v10 = v16;
    v14 = 1;
    sub_264A72FF4();
    sub_264B41984();
    (*(v6 + 8))(v9, v5);
    v11 = v13[1];
    *a2 = v10;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_264A72A90()
{
  result = qword_27FF8A3B8;
  if (!qword_27FF8A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A3B8);
  }

  return result;
}

unint64_t sub_264A72AE4()
{
  result = qword_27FF8A3C0;
  if (!qword_27FF8A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A3C0);
  }

  return result;
}

unint64_t sub_264A72B38()
{
  result = qword_27FF8A3D8;
  if (!qword_27FF8A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A3D8);
  }

  return result;
}

unint64_t sub_264A72B8C()
{
  result = qword_27FF8A3E0;
  if (!qword_27FF8A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A3E0);
  }

  return result;
}

unint64_t sub_264A72BE0()
{
  result = qword_27FF8A3E8;
  if (!qword_27FF8A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A3E8);
  }

  return result;
}

unint64_t sub_264A72C34()
{
  result = qword_27FF8A3F0;
  if (!qword_27FF8A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A3F0);
  }

  return result;
}

unint64_t sub_264A72C88()
{
  result = qword_27FF8A3F8;
  if (!qword_27FF8A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A3F8);
  }

  return result;
}

unint64_t sub_264A72CDC()
{
  result = qword_27FF8A400;
  if (!qword_27FF8A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A400);
  }

  return result;
}

unint64_t sub_264A72D30()
{
  result = qword_27FF8A408;
  if (!qword_27FF8A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A408);
  }

  return result;
}

unint64_t sub_264A72D84()
{
  result = qword_27FF8A410;
  if (!qword_27FF8A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A410);
  }

  return result;
}

uint64_t sub_264A72DD8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8A3C8, &qword_264B57090);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264A72E50()
{
  result = qword_27FF8A468;
  if (!qword_27FF8A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A468);
  }

  return result;
}

unint64_t sub_264A72EA4()
{
  result = qword_27FF8A478;
  if (!qword_27FF8A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A478);
  }

  return result;
}

unint64_t sub_264A72EF8()
{
  result = qword_27FF8A480;
  if (!qword_27FF8A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A480);
  }

  return result;
}

unint64_t sub_264A72F4C()
{
  result = qword_27FF8A488;
  if (!qword_27FF8A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A488);
  }

  return result;
}

unint64_t sub_264A72FA0()
{
  result = qword_27FF8A498;
  if (!qword_27FF8A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A498);
  }

  return result;
}

unint64_t sub_264A72FF4()
{
  result = qword_27FF8A4A0;
  if (!qword_27FF8A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4A0);
  }

  return result;
}

unint64_t sub_264A7304C()
{
  result = qword_27FF8A4A8;
  if (!qword_27FF8A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4A8);
  }

  return result;
}

unint64_t sub_264A730A4()
{
  result = qword_27FF8A4B0;
  if (!qword_27FF8A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4B0);
  }

  return result;
}

unint64_t sub_264A730FC()
{
  result = qword_27FF8A4B8;
  if (!qword_27FF8A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4B8);
  }

  return result;
}

unint64_t sub_264A73154()
{
  result = qword_27FF8A4C0;
  if (!qword_27FF8A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4C0);
  }

  return result;
}

unint64_t sub_264A731AC()
{
  result = qword_27FF8A4C8;
  if (!qword_27FF8A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4C8);
  }

  return result;
}

unint64_t sub_264A73204()
{
  result = qword_27FF8A4D0;
  if (!qword_27FF8A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4D0);
  }

  return result;
}

unint64_t sub_264A7325C()
{
  result = qword_27FF8A4D8;
  if (!qword_27FF8A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4D8);
  }

  return result;
}

uint64_t sub_264A732C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_264A73310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_264A73354(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Capabilities(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Capabilities(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SceneInteractorOrientationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[16])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneInteractorOrientationStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneInteractorStep.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneInteractorStep.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264A7365C()
{
  result = qword_27FF8A4E0;
  if (!qword_27FF8A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4E0);
  }

  return result;
}

unint64_t sub_264A736B4()
{
  result = qword_27FF8A4E8;
  if (!qword_27FF8A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4E8);
  }

  return result;
}

unint64_t sub_264A7370C()
{
  result = qword_27FF8A4F0;
  if (!qword_27FF8A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4F0);
  }

  return result;
}

unint64_t sub_264A73764()
{
  result = qword_27FF8A4F8;
  if (!qword_27FF8A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4F8);
  }

  return result;
}

unint64_t sub_264A737BC()
{
  result = qword_27FF8A500;
  if (!qword_27FF8A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A500);
  }

  return result;
}

unint64_t sub_264A73814()
{
  result = qword_27FF8A508;
  if (!qword_27FF8A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A508);
  }

  return result;
}

unint64_t sub_264A7386C()
{
  result = qword_27FF8A510;
  if (!qword_27FF8A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A510);
  }

  return result;
}

unint64_t sub_264A738C4()
{
  result = qword_27FF8A518;
  if (!qword_27FF8A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A518);
  }

  return result;
}

unint64_t sub_264A7391C()
{
  result = qword_27FF8A520;
  if (!qword_27FF8A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A520);
  }

  return result;
}

unint64_t sub_264A73974()
{
  result = qword_27FF8A528;
  if (!qword_27FF8A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A528);
  }

  return result;
}

unint64_t sub_264A739CC()
{
  result = qword_27FF8A530;
  if (!qword_27FF8A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A530);
  }

  return result;
}

unint64_t sub_264A73A24()
{
  result = qword_27FF8A538;
  if (!qword_27FF8A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A538);
  }

  return result;
}

unint64_t sub_264A73A7C()
{
  result = qword_27FF8A540;
  if (!qword_27FF8A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A540);
  }

  return result;
}

unint64_t sub_264A73AD4()
{
  result = qword_27FF8A548;
  if (!qword_27FF8A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A548);
  }

  return result;
}

unint64_t sub_264A73B2C()
{
  result = qword_27FF8A550;
  if (!qword_27FF8A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A550);
  }

  return result;
}

unint64_t sub_264A73B84()
{
  result = qword_27FF8A558;
  if (!qword_27FF8A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A558);
  }

  return result;
}

unint64_t sub_264A73BDC()
{
  result = qword_27FF8A560;
  if (!qword_27FF8A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A560);
  }

  return result;
}

unint64_t sub_264A73C34()
{
  result = qword_27FF8A568;
  if (!qword_27FF8A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A568);
  }

  return result;
}

unint64_t sub_264A73C8C()
{
  result = qword_27FF8A570;
  if (!qword_27FF8A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A570);
  }

  return result;
}

unint64_t sub_264A73CE4()
{
  result = qword_27FF8A578;
  if (!qword_27FF8A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A578);
  }

  return result;
}

unint64_t sub_264A73D3C()
{
  result = qword_27FF8A580;
  if (!qword_27FF8A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A580);
  }

  return result;
}

unint64_t sub_264A73D94()
{
  result = qword_27FF8A588;
  if (!qword_27FF8A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A588);
  }

  return result;
}

unint64_t sub_264A73DEC()
{
  result = qword_27FF8A590;
  if (!qword_27FF8A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A590);
  }

  return result;
}

unint64_t sub_264A73E44()
{
  result = qword_27FF8A598;
  if (!qword_27FF8A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A598);
  }

  return result;
}

uint64_t sub_264A73E98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656B636F6C62 && a2 == 0xE700000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x556F547964616572 && a2 == 0xED00006B636F6C6ELL || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000264B5D240 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000264B5D260 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000264B5D280 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEB00000000646574)
  {

    return 7;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_264A74140()
{
  result = qword_27FF8A5A0;
  if (!qword_27FF8A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A5A0);
  }

  return result;
}

unint64_t sub_264A74194()
{
  result = qword_27FF8A5A8;
  if (!qword_27FF8A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A5A8);
  }

  return result;
}

uint64_t dispatch thunk of LiveActivityDelegate.tearDownFromLiveActivity()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649CD850;

  return v7(a1, a2);
}

uint64_t ControlMessageSession.__allocating_init(transport:role:)(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();

  return sub_264A78D00(a1, a3, v3, ObjectType, a2);
}

uint64_t sub_264A74384()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A5E8, &qword_264B4BB58);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v9 - v4;
  if (*(v0 + 160))
  {
    v6 = *(v0 + 160);
  }

  else
  {
    v9[1] = *(v0 + 152);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8B470, qword_264B4BB60);
    type metadata accessor for ControlMessage(0);
    sub_2649CB4C8(&qword_27FF8A5F0, &unk_27FF8B470, qword_264B4BB60, MEMORY[0x277CBCE20]);
    v7 = v0;
    sub_264B40AC4();

    sub_2649CB4C8(&qword_27FF8A5F8, &qword_27FF8A5E8, &qword_264B4BB58, MEMORY[0x277CBCB10]);
    v6 = sub_264B40AB4();
    (*(v2 + 8))(v5, v1);
    *(v7 + 160) = v6;
  }

  return v6;
}

uint64_t sub_264A74588@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ControlMessage(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264A794D8(&qword_27FF8A600, type metadata accessor for ControlMessage, &unk_264B4D138);
  sub_264B3FF14();
  sub_264A79520(v7, a2);
  return (*(v4 + 56))(a2, 0, 1, v3);
}

void sub_264A7480C(void **a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71B8);
  sub_264A1EE08(v3);

  oslog = sub_264B40944();
  v5 = sub_264B41474();
  sub_264A1F208(v3);

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446466;
    sub_264A1EE08(v3);
    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    sub_264A1EE08(*(v2 + 168));
    v11 = sub_264B41064();
    v13 = sub_2649CC004(v11, v12, &v15);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_2649C6000, oslog, v5, "Session state changed from %{public}s to %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t ControlMessageSession.init(transport:role:)(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();

  return sub_264A78D6C(a1, a3, v3, ObjectType, a2);
}

uint64_t sub_264A74A68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FB8, &unk_264B46970);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v35 - v7;
  v9 = sub_264B40964();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_27FFA71B8);
  (*(v10 + 16))(v13, v14, v9);
  if (*(v2 + 113))
  {

    v15 = sub_264B40944();
    v16 = sub_264B41494();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      *v17 = 136446210;
      v36 = v2;
      type metadata accessor for ControlMessageSession(0);

      v19 = sub_264B41064();
      v21 = sub_2649CC004(v19, v20, &v37);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2649C6000, v15, v16, "%{public}s is already activated, this represents a client bug", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x266749940](v18, -1, -1);
      MEMORY[0x266749940](v17, -1, -1);
    }

    v22 = 1;
  }

  else
  {
    v35[2] = a1;
    v23 = *(v2 + 168);
    sub_264A1EE08(v23);
    sub_264A1F208(v23);
    sub_264A1F208(1);
    if (!v23)
    {
      swift_unownedRetainStrong();
      swift_unownedRetain();
      swift_unownedRetain();

      v35[1] = v35;
      MEMORY[0x28223BE20](v33, v34);
      v35[-2] = v2;
      v35[-1] = v13;
      (*(v5 + 104))(v8, *MEMORY[0x277D85778], v4);
      sub_264B412E4();
      swift_unownedRelease();
      swift_unownedRelease();
      return (*(v10 + 8))(v13, v9);
    }

    v24 = sub_264B40944();
    v25 = sub_264B41494();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136446210;
      v36 = v2;
      type metadata accessor for ControlMessageSession(0);

      v28 = sub_264B41064();
      v30 = sub_2649CC004(v28, v29, &v37);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2649C6000, v24, v25, "%{public}s cannot be activated because we've already become invalid", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x266749940](v27, -1, -1);
      MEMORY[0x266749940](v26, -1, -1);
    }

    v22 = 0;
  }

  sub_264A78FFC();
  swift_allocError();
  *v31 = v22;
  swift_willThrow();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_264A74F1C(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  v4 = *(a2 + 168);
  sub_264A1EE08(v4);

  sub_264A1F208(v4);
  sub_264A1F208(2);
  v5 = sub_264B40944();
  if (v4 > 1)
  {
    v9 = sub_264B41484();
    if (os_log_type_enabled(v5, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2649C6000, v5, v9, "Session terminated before activation could complete, bailing out", v10, 2u);
      MEMORY[0x266749940](v10, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    return sub_264B412B4();
  }

  else
  {
    v6 = sub_264B41474();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "Activating ControlMessageSession", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }

    swift_unownedRetainStrong();
    sub_264A75BDC(a1);
  }
}

uint64_t sub_264A750BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89618, &qword_264B4B9F0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v44 - v9;
  v11 = sub_264B40964();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_27FFA71B8);
  v17 = *(v12 + 16);
  v48 = v16;
  v17(v15);
  if (*(v1 + 168) > 1uLL)
  {

    v27 = sub_264B40944();
    v28 = sub_264B41484();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v11;
      v31 = swift_slowAlloc();
      v49[0] = v31;
      *v29 = 136446210;
      v49[4] = v1;
      type metadata accessor for ControlMessageSession(0);

      v32 = sub_264B41064();
      v34 = sub_2649CC004(v32, v33, v49);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2649C6000, v27, v28, "%{public}s is already in a terminal state.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v35 = v31;
      v11 = v30;
      MEMORY[0x266749940](v35, -1, -1);
      MEMORY[0x266749940](v29, -1, -1);
    }

    sub_264A78FFC();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
  }

  else
  {
    v46 = v6;
    v47 = v3;
    v18 = sub_264B40944();
    v19 = sub_264B41474();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v45 = v15;
      v21 = v11;
      v22 = v20;
      *v20 = 0;
      _os_log_impl(&dword_2649C6000, v18, v19, "Session invalidating", v20, 2u);
      v23 = v22;
      v11 = v21;
      v15 = v45;
      MEMORY[0x266749940](v23, -1, -1);
    }

    LOBYTE(v49[0]) = 1;
    sub_264B409B4();
    if ((*(v1 + 113) & 1) == 0)
    {
      v24 = *(v1 + 168);
      *(v1 + 168) = 2;
      sub_264A1EE08(v24);
      sub_264A1F208(v24);
      v49[0] = v24;
      sub_264A7480C(v49);
      sub_264A1F208(v24);
      v25 = OBJC_IVAR____TtC16ScreenSharingKit21ControlMessageSession_sessionStateContinuation;
      swift_beginAccess();
      sub_2649D046C(v1 + v25, v10, &qword_27FF89618, &qword_264B4B9F0);
      v26 = v47;
      if ((*(v47 + 48))(v10, 1, v2))
      {
        sub_2649D04D4(v10, &qword_27FF89618, &qword_264B4B9F0);
      }

      else
      {
        v37 = v46;
        (*(v26 + 16))(v46, v10, v2);
        sub_2649D04D4(v10, &qword_27FF89618, &qword_264B4B9F0);
        sub_264B412B4();
        (*(v26 + 8))(v37, v2);
      }
    }

    v38 = *(v1 + 128);
    ObjectType = swift_getObjectType();
    if ((*(v38 + 8))(ObjectType, v38))
    {
      v40 = sub_264B40944();
      v41 = sub_264B41484();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_2649C6000, v40, v41, "Transport for ControlMessageSession is already invalid, bailing out.", v42, 2u);
        MEMORY[0x266749940](v42, -1, -1);
      }
    }

    else
    {
      (*(v38 + 24))(ObjectType, v38);
    }
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_264A75684(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for ControlMessage(0);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 81) = *a2;

  return MEMORY[0x2822009F8](sub_264A75724, v2, 0);
}

uint64_t sub_264A75724()
{
  v1 = *(v0 + 81);
  v2 = *(*(v0 + 24) + 128);
  ObjectType = swift_getObjectType();
  (*(v2 + 32))(ObjectType, v2);
  v4 = sub_264AABDA8();

  if (v4)
  {
    v17 = ObjectType;
    v5 = *(v0 + 16);
    v7 = v5[3];
    v6 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v7);
    (*(v6 + 8))(v7, v6);
    sub_264A794D8(&qword_27FF8A5E0, type metadata accessor for ControlMessage, &unk_264B4D110);
    v8 = sub_264B3FF44();
    *(v0 + 48) = v8;
    *(v0 + 56) = v9;
    v13 = v8;
    v14 = v9;
    sub_2649DEEBC(*(v0 + 40));
    *(v0 + 80) = v1;
    v16 = (*(v2 + 40) + **(v2 + 40));
    v15 = swift_task_alloc();
    *(v0 + 64) = v15;
    *v15 = v0;
    v15[1] = sub_264A759E8;

    return v16(v13, v14, v0 + 80, v17, v2);
  }

  else
  {
    sub_264A78FFC();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_264A759E8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_264A75B70;
  }

  else
  {
    v4 = sub_264A75B00;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264A75B00()
{
  sub_2649DEF6C(v0[6], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_264A75B70()
{
  sub_2649DEF6C(v0[6], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_264A75BDC(uint64_t a1)
{
  v30 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v2);
  v32 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v31 = &v30 - v6;
  v7 = sub_264B3FFD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v12 = sub_264B40964();
  __swift_project_value_buffer(v12, qword_27FFA71B8);
  v13 = sub_264B41484();
  sub_264B3FF94();
  v14 = sub_264B3FFA4();
  v16 = v15;
  (*(v8 + 8))(v11, v7);

  v17 = sub_264B40944();

  if (os_log_type_enabled(v17, v13))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136446722;
    v20 = sub_2649CC004(v14, v16, &v35);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2050;
    *(v18 + 14) = 188;
    *(v18 + 22) = 2082;
    *(v18 + 24) = sub_2649CC004(0xD000000000000022, 0x8000000264B5D470, &v35);
    _os_log_impl(&dword_2649C6000, v17, v13, "%{public}s:%{public}ld %{public}s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v19, -1, -1);
    MEMORY[0x266749940](v18, -1, -1);
  }

  else
  {
  }

  v21 = sub_264B41274();
  v22 = v31;
  (*(*(v21 - 8) + 56))(v31, 1, 1, v21);
  v24 = v32;
  v23 = v33;
  (*(v1 + 16))(v32, v30, v33);
  v25 = sub_264A794D8(&qword_27FF8A5D0, type metadata accessor for ControlMessageSession, &protocol conformance descriptor for ControlMessageSession);
  v26 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v27 = swift_allocObject();
  v28 = v34;
  *(v27 + 2) = v34;
  *(v27 + 3) = v25;
  *(v27 + 4) = v28;
  (*(v1 + 32))(&v27[v26], v24, v23);
  swift_retain_n();
  sub_2649CD944(0, 0, v22, &unk_264B4BB48, v27);
}

uint64_t sub_264A7605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89618, &qword_264B4B9F0);
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89668, &unk_264B48230);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A5D8, &qword_264B4BB50);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A76234, a4, 0);
}

uint64_t sub_264A76234()
{
  v1 = *(v0[10] + 128);
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(ObjectType, v1);
  sub_264B412C4();
  v3 = sub_264A794D8(&qword_27FF8A5D0, type metadata accessor for ControlMessageSession, &protocol conformance descriptor for ControlMessageSession);
  v4 = OBJC_IVAR____TtC16ScreenSharingKit21ControlMessageSession_sessionStateContinuation;
  v0[22] = v3;
  v0[23] = v4;
  v5 = v0[10];
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_264A763E4;
  v7 = v0[16];

  return MEMORY[0x2822003E8](v0 + 5, v5, v3, v7);
}

uint64_t sub_264A763E4()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_264A764F4, v1, 0);
}

uint64_t sub_264A764F4(uint64_t a1)
{
  v53 = v1;
  v2 = *(v1 + 40);
  *(v1 + 200) = v2;
  if (v2 == 3)
  {
    goto LABEL_13;
  }

  v3 = *(v1 + 80);
  v4 = *(v3 + 168);
  if (v2 == 1)
  {
    if (v4 > 1)
    {
LABEL_12:
      v7 = *(v1 + 112);
      v6 = *(v1 + 120);
      v8 = *(v1 + 104);
      sub_264A78FFC();
      v9 = swift_allocError();
      *v10 = 2;
      v11 = *(v3 + 168);
      *(v3 + 168) = v9;
      sub_264A1EE08(v11);
      sub_264A1F208(v11);
      v52 = v11;
      sub_264A7480C(&v52);
      sub_264A1F208(v11);
      v12 = *(v3 + 168);
      *(v1 + 72) = v12;
      sub_264A1EE08(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
      sub_264B412A4();
      (*(v7 + 8))(v6, v8);
      sub_264B412B4();
      sub_264A794B4(v2);
LABEL_13:
      v14 = *(v1 + 160);
      v13 = *(v1 + 168);
      v15 = *(v1 + 152);
      (*(*(v1 + 136) + 8))(*(v1 + 144), *(v1 + 128));
      (*(v14 + 8))(v13, v15);

      v16 = *(v1 + 8);

      return v16();
    }
  }

  else if (!v2)
  {
    if (!v4)
    {
      sub_264A1EE08(0);
      sub_264A1F208(0);
      v5 = 0;
LABEL_32:
      sub_264A1F208(v5);
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  if (v4)
  {
    if (v4 == 2)
    {
      if (v2 == 2)
      {
        sub_264A1EE08(2);
        sub_264A1F208(2);
        v5 = 2;
        goto LABEL_32;
      }
    }

    else if (v4 == 1)
    {
      if (v2 == 1)
      {
        sub_264A1EE08(1);
        sub_264A1F208(1);
        v5 = 1;
        goto LABEL_32;
      }
    }

    else if (v2 >= 3)
    {
      sub_264A794A4(v2);
      sub_264A1EE08(v4);
      sub_264A1F208(v4);
      v5 = v2;
      goto LABEL_32;
    }
  }

  sub_264A794A4(v2);
  sub_264A1EE08(v4);
  sub_264A1F208(v4);
  sub_264A1F208(v2);
  v18 = *(v3 + 168);
  *(v3 + 168) = v2;
  sub_264A794A4(v2);
  sub_264A1EE08(v18);
  sub_264A1F208(v18);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v19 = sub_264B40964();
  *(v1 + 208) = __swift_project_value_buffer(v19, qword_27FFA71B8);
  sub_264A1EE08(v18);

  v20 = sub_264B40944();
  v21 = sub_264B41474();
  sub_264A1F208(v18);

  if (os_log_type_enabled(v20, v21))
  {
    v51 = *(v1 + 80);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v52 = v23;
    *v22 = 136446466;
    *(v1 + 56) = v18;
    sub_264A1EE08(v18);
    v24 = sub_264B41064();
    v26 = sub_2649CC004(v24, v25, &v52);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v27 = *(v51 + 168);
    *(v1 + 64) = v27;
    sub_264A1EE08(v27);
    v28 = sub_264B41064();
    v30 = sub_2649CC004(v28, v29, &v52);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_2649C6000, v20, v21, "Session state changed from %{public}s to %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v23, -1, -1);
    MEMORY[0x266749940](v22, -1, -1);
  }

  sub_264A1F208(v18);
  v31 = *(v1 + 80);
  v32 = *(v31 + 168);
  if (!v32)
  {
LABEL_27:
    sub_264A1F208(v32);
    sub_264A1F208(1);
    v36 = *(v1 + 112);
    v35 = *(v1 + 120);
    v37 = *(v1 + 104);
    v38 = *(*(v1 + 80) + 168);
    *(v1 + 48) = v38;
    sub_264A1EE08(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    sub_264B412A4();
    (*(v36 + 8))(v35, v37);
LABEL_33:
    v40 = *(v1 + 80);
    v41 = *(v1 + 200);
    if (*(v40 + 168) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
      sub_264B412B4();
      sub_264A794B4(v41);
    }

    else
    {
      v42 = *(v1 + 184);
      v44 = *(v1 + 88);
      v43 = *(v1 + 96);
      sub_264A794B4(*(v1 + 200));
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
      v46 = *(v45 - 8);
      (*(v46 + 16))(v43, v44, v45);
      (*(v46 + 56))(v43, 0, 1, v45);
      swift_beginAccess();
      sub_264A1E600(v43, v40 + v42);
      swift_endAccess();
    }

    v47 = *(v1 + 176);
    v48 = *(v1 + 80);
    v49 = swift_task_alloc();
    *(v1 + 192) = v49;
    *v49 = v1;
    v49[1] = sub_264A763E4;
    v50 = *(v1 + 128);

    return MEMORY[0x2822003E8](v1 + 40, v48, v47, v50);
  }

  if (v32 != 1)
  {
    if (v32 != 2)
    {
      v33 = *(v31 + 168);
      v34 = v32;
      v32 = v33;
    }

    goto LABEL_27;
  }

  sub_264A1F208(1);
  sub_264A1F208(1);
  *(v31 + 113) = 1;
  v39 = swift_task_alloc();
  *(v1 + 216) = v39;
  *v39 = v1;
  v39[1] = sub_264A76C30;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A76C30()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_264A76D40, v1, 0);
}

uint64_t sub_264A76D40(uint64_t a1)
{
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Session activated", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v6 = *(v1 + 112);
  v5 = *(v1 + 120);
  v7 = *(v1 + 104);
  v8 = *(*(v1 + 80) + 168);
  *(v1 + 48) = v8;
  sub_264A1EE08(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  sub_264B412A4();
  (*(v6 + 8))(v5, v7);
  v9 = *(v1 + 80);
  v10 = *(v1 + 200);
  if (*(v9 + 168) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    sub_264B412B4();
    sub_264A794B4(v10);
  }

  else
  {
    v11 = *(v1 + 184);
    v13 = *(v1 + 88);
    v12 = *(v1 + 96);
    sub_264A794B4(*(v1 + 200));
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    v15 = *(v14 - 8);
    (*(v15 + 16))(v12, v13, v14);
    (*(v15 + 56))(v12, 0, 1, v14);
    swift_beginAccess();
    sub_264A1E600(v12, v9 + v11);
    swift_endAccess();
  }

  v16 = *(v1 + 176);
  v17 = *(v1 + 80);
  v18 = swift_task_alloc();
  *(v1 + 192) = v18;
  *v18 = v1;
  v18[1] = sub_264A763E4;
  v19 = *(v1 + 128);

  return MEMORY[0x2822003E8](v1 + 40, v17, v16, v19);
}

uint64_t sub_264A76FB8(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v3 = *(v37 - 8);
  v34 = *(v3 + 64);
  MEMORY[0x28223BE20](v37, v4);
  v36 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v34 - v8;
  v10 = sub_264B3FFD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v15 = sub_264B40964();
  __swift_project_value_buffer(v15, qword_27FFA71B8);
  v16 = sub_264B41484();
  sub_264B3FF94();
  v17 = sub_264B3FFA4();
  v19 = v18;
  (*(v11 + 8))(v14, v10);

  v20 = sub_264B40944();

  if (os_log_type_enabled(v20, v16))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39[0] = v22;
    *v21 = 136446722;
    v23 = sub_2649CC004(v17, v19, v39);

    *(v21 + 4) = v23;
    *(v21 + 12) = 2050;
    *(v21 + 14) = 234;
    *(v21 + 22) = 2082;
    *(v21 + 24) = sub_2649CC004(0xD00000000000001ALL, 0x8000000264B5D420, v39);
    _os_log_impl(&dword_2649C6000, v20, v16, "%{public}s:%{public}ld %{public}s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v22, -1, -1);
    MEMORY[0x266749940](v21, -1, -1);
  }

  else
  {
  }

  v24 = *(v2 + 128);
  ObjectType = swift_getObjectType();
  (*(v24 + 48))(v39, ObjectType, v24);
  v26 = sub_264B41274();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v36;
  v29 = v37;
  (*(v3 + 16))(v36, v35, v37);
  sub_2649CB5C0(v39, v38);
  v30 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v31 = (v34 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  (*(v3 + 32))(v32 + v30, v28, v29);
  sub_2649D2AAC(v38, v32 + v31);
  *(v32 + ((v31 + 47) & 0xFFFFFFFFFFFFFFF8)) = v27;
  sub_264A783F8(0, 0, v9, &unk_264B4BB38, v32);

  sub_2649D04D4(v9, &qword_27FF898C0, &unk_264B44190);
  return __swift_destroy_boxed_opaque_existential_0(v39);
}

uint64_t sub_264A77480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[26] = a4;
  v7 = sub_264B3FFD4();
  v6[29] = v7;
  v6[30] = *(v7 - 8);
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A77544, 0, 0);
}

uint64_t sub_264A77544()
{
  v1 = v0[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_264B41334();

  swift_beginAccess();
  v6 = v0[5];
  v7 = v0[6];
  v0[32] = v6;
  v0[33] = v7;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v6);
  v0[34] = swift_getAssociatedTypeWitness();
  v8 = sub_264B41614();
  v0[35] = v8;
  v0[36] = *(v8 - 8);
  v9 = swift_task_alloc();
  v0[37] = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[38] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v0[39] = v11;
  v0[40] = *(v11 + 64);
  v12 = swift_task_alloc();
  v0[41] = v12;
  v13 = swift_task_alloc();
  v0[42] = v13;
  *v13 = v0;
  v13[1] = sub_264A77844;

  return MEMORY[0x282200310](v9, 0, 0, v12, v6, v7);
}

uint64_t sub_264A77844()
{

  if (v0)
  {
    v1 = sub_264A78290;
  }

  else
  {

    v1 = sub_264A7795C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_264A7795C()
{
  v34 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 288) + 8))(v1, *(v0 + 280));

LABEL_3:
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v4 = *(v0 + 8);

    return v4();
  }

  *(v0 + 80) = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  v9 = *(v0 + 232);
  v10 = sub_264B40964();
  __swift_project_value_buffer(v10, qword_27FFA71B8);
  v11 = sub_264B41484();
  sub_264B3FF94();
  v12 = sub_264B3FFA4();
  v14 = v13;
  (*(v8 + 8))(v7, v9);

  v15 = sub_264B40944();

  if (os_log_type_enabled(v15, v11))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v16 = 136446978;
    v18 = sub_2649CC004(v12, v14, &v33);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2050;
    *(v16 + 14) = 251;
    *(v16 + 22) = 2082;
    *(v16 + 24) = sub_2649CC004(0xD00000000000001ALL, 0x8000000264B5D420, &v33);
    *(v16 + 32) = 2082;
    *(v16 + 34) = sub_2649CC004(0xD000000000000026, 0x8000000264B5D440, &v33);
    _os_log_impl(&dword_2649C6000, v15, v11, "%{public}s:%{public}ld %{public}s %{public}s", v16, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v17, -1, -1);
    MEMORY[0x266749940](v16, -1, -1);
  }

  else
  {
  }

  sub_264A23FD8((v0 + 56), (v0 + 88));
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 344) = Strong;
    if (!Strong)
    {
      goto LABEL_3;
    }

    v22 = Strong;
    *(v0 + 200) = 4;
    v23 = sub_264A781AC;
    goto LABEL_16;
  }

  v20 = *(v0 + 168);
  v19 = *(v0 + 176);
  *(v0 + 352) = v20;
  *(v0 + 360) = v19;
  v21 = swift_weakLoadStrong();
  *(v0 + 368) = v21;
  if (v21)
  {
    v22 = v21;
    v23 = sub_264A77F2C;
LABEL_16:

    return MEMORY[0x2822009F8](v23, v22, 0);
  }

  sub_2649DEF6C(v20, v19);
  v25 = *(v0 + 40);
  v26 = *(v0 + 48);
  *(v0 + 256) = v25;
  *(v0 + 264) = v26;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v25);
  *(v0 + 272) = swift_getAssociatedTypeWitness();
  v27 = sub_264B41614();
  *(v0 + 280) = v27;
  *(v0 + 288) = *(v27 - 8);
  v28 = swift_task_alloc();
  *(v0 + 296) = v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 304) = AssociatedTypeWitness;
  v30 = *(AssociatedTypeWitness - 8);
  *(v0 + 312) = v30;
  *(v0 + 320) = *(v30 + 64);
  v31 = swift_task_alloc();
  *(v0 + 328) = v31;
  v32 = swift_task_alloc();
  *(v0 + 336) = v32;
  *v32 = v0;
  v32[1] = sub_264A77844;

  return MEMORY[0x282200310](v28, 0, 0, v31, v25, v26);
}

uint64_t sub_264A77F2C()
{
  *(v0 + 376) = *(*(v0 + 368) + 152);

  return MEMORY[0x2822009F8](sub_264A77FA4, 0, 0);
}

uint64_t sub_264A77FA4()
{
  v2 = v0[44];
  v1 = v0[45];
  v0[23] = v2;
  v0[24] = v1;
  sub_264B409C4();

  sub_2649DEF6C(v2, v1);
  v3 = v0[5];
  v4 = v0[6];
  v0[32] = v3;
  v0[33] = v4;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v3);
  v0[34] = swift_getAssociatedTypeWitness();
  v5 = sub_264B41614();
  v0[35] = v5;
  v0[36] = *(v5 - 8);
  v6 = swift_task_alloc();
  v0[37] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[38] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v0[39] = v8;
  v0[40] = *(v8 + 64);
  v9 = swift_task_alloc();
  v0[41] = v9;
  v10 = swift_task_alloc();
  v0[42] = v10;
  *v10 = v0;
  v10[1] = sub_264A77844;

  return MEMORY[0x282200310](v6, 0, 0, v9, v3, v4);
}

uint64_t sub_264A781AC()
{
  sub_264A78664((v0 + 200));

  return MEMORY[0x2822009F8](sub_264A78220, 0, 0);
}

uint64_t sub_264A78220()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A78290()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[39];
  v4 = swift_task_alloc();
  v5 = *(v3 + 32);
  v5(v4, v1, v2);
  swift_getAssociatedConformanceWitness();
  if (sub_264B41A84())
  {
    (*(v0[39] + 8))(v4, v0[38]);
  }

  else
  {
    v6 = v0[38];
    swift_allocError();
    v5(v7, v4, v6);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_264A783F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_2649D046C(a3, v23 - v10, &qword_27FF898C0, &unk_264B44190);
  v12 = sub_264B41274();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2649D04D4(v11, &qword_27FF898C0, &unk_264B44190);
  }

  else
  {
    sub_264B41264();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_264B411C4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_264B41074() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_264A78664(void **a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89618, &qword_264B4B9F0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v54 = &v52 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A5C8, &unk_264B4BB20);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v52 - v18;
  v20 = *a1;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v21 = sub_264B40964();
  v22 = __swift_project_value_buffer(v21, qword_27FFA71B8);
  sub_264A78FDC(v20);
  v57 = v22;
  v23 = sub_264B40944();
  v24 = sub_264B41494();
  sub_264A78FEC(v20);
  v25 = os_log_type_enabled(v23, v24);
  v55 = v19;
  v56 = v13;
  v53 = v20;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v58 = v20;
    v59[0] = v27;
    *v26 = 136446210;
    sub_264A78FDC(v20);
    v28 = sub_264B41064();
    v30 = v2;
    v31 = v8;
    v32 = v5;
    v33 = v4;
    v34 = sub_2649CC004(v28, v29, v59);

    *(v26 + 4) = v34;
    v4 = v33;
    v5 = v32;
    v8 = v31;
    v2 = v30;
    _os_log_impl(&dword_2649C6000, v23, v24, "Session interrupting with error: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x266749940](v27, -1, -1);
    MEMORY[0x266749940](v26, -1, -1);
  }

  if (*(v2 + 168) >= 2uLL)
  {
    v45 = sub_264B40944();
    v46 = sub_264B41484();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2649C6000, v45, v46, "Session already terminal, dropping interruption", v47, 2u);
      MEMORY[0x266749940](v47, -1, -1);
    }
  }

  else
  {
    sub_264A78FFC();
    v35 = swift_allocError();
    v36 = v53;
    *v37 = v53;
    v38 = *(v2 + 168);
    *(v2 + 168) = v35;
    sub_264A78FDC(v36);
    v39 = v35;
    sub_264A1EE08(v38);
    sub_264A1F208(v38);
    v59[0] = v38;
    sub_264A7480C(v59);
    sub_264A1F208(v38);
    v40 = OBJC_IVAR____TtC16ScreenSharingKit21ControlMessageSession_sessionStateContinuation;
    swift_beginAccess();
    v41 = v54;
    sub_2649D046C(v2 + v40, v54, &qword_27FF89618, &qword_264B4B9F0);
    v42 = *(v5 + 48);
    if (v42(v41, 1, v4))
    {
      sub_2649D04D4(v41, &qword_27FF89618, &qword_264B4B9F0);
      v43 = 1;
      v44 = v55;
    }

    else
    {
      (*(v5 + 16))(v8, v41, v4);
      sub_2649D04D4(v41, &qword_27FF89618, &qword_264B4B9F0);
      v58 = v35;
      v48 = v35;
      v44 = v55;
      sub_264B412A4();
      (*(v5 + 8))(v8, v4);
      v43 = 0;
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89668, &unk_264B48230);
    (*(*(v49 - 8) + 56))(v44, v43, 1, v49);
    sub_2649D04D4(v44, &qword_27FF8A5C8, &unk_264B4BB20);
    v50 = v2 + v40;
    v51 = v56;
    sub_2649D046C(v50, v56, &qword_27FF89618, &qword_264B4B9F0);
    if (v42(v51, 1, v4))
    {

      sub_2649D04D4(v51, &qword_27FF89618, &qword_264B4B9F0);
    }

    else
    {
      (*(v5 + 16))(v8, v51, v4);
      sub_2649D04D4(v51, &qword_27FF89618, &qword_264B4B9F0);
      sub_264B412B4();

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t ControlMessageSession.deinit()
{
  swift_unknownObjectRelease();

  sub_264A1F208(*(v0 + 168));
  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit21ControlMessageSession_sessionStateContinuation, &qword_27FF89618, &qword_264B4B9F0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ControlMessageSession.__deallocating_deinit()
{
  ControlMessageSession.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264A78D00(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ControlMessageSession(0);
  v9 = swift_allocObject();

  return sub_264A78D6C(a1, a2, v9, a4, a5);
}

uint64_t sub_264A78D6C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  swift_defaultActor_initialize();
  *(a3 + 113) = 0;
  sub_264B3FF64();
  swift_allocObject();
  *(a3 + 136) = sub_264B3FF54();
  sub_264B3FF34();
  swift_allocObject();
  *(a3 + 144) = sub_264B3FF24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8B470, qword_264B4BB60);
  swift_allocObject();
  v9 = sub_264B409D4();
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  *(a3 + 152) = v9;
  v10 = OBJC_IVAR____TtC16ScreenSharingKit21ControlMessageSession_sessionStateContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  (*(*(v11 - 8) + 56))(a3 + v10, 1, 1, v11);
  *(a3 + 120) = a1;
  *(a3 + 128) = a5;
  *(a3 + 112) = v8;
  return a3;
}

uint64_t type metadata accessor for ControlMessageSession(uint64_t a1)
{
  result = qword_27FF8A5B8;
  if (!qword_27FF8A5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A78ED8(uint64_t a1)
{
  sub_264A1ECE0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_264A78FDC(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

void sub_264A78FEC(id a1)
{
  if (a1 >= 5)
  {
  }
}

unint64_t sub_264A78FFC()
{
  result = qword_27FF8AA50;
  if (!qword_27FF8AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AA50);
  }

  return result;
}

uint64_t sub_264A79050()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A79088()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_264A79184(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2649CD850;

  return sub_264A77480(a1, v8, v9, v1 + v6, v1 + v7, v10);
}

uint64_t sub_264A792C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264A793A0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264A7605C(a1, v6, v7, v8, v1 + v5);
}

id sub_264A794A4(id result)
{
  if (result != 3)
  {
    return sub_264A1EE08(result);
  }

  return result;
}

void sub_264A794B4(id a1)
{
  if (a1 != 3)
  {
    sub_264A1F208(a1);
  }
}

uint64_t sub_264A794D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264A79520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A79598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a1;
  v25 = a4;
  v26 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A630, &qword_264B4BC08);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v23 - v14;
  v27 = a3;
  sub_2649CB2F0();
  v16 = sub_264B41554();
  v28 = v16;
  v17 = sub_264B41514();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A638, &unk_264B4BC10);
  sub_2649CB4C8(&qword_27FF8A640, &qword_27FF8A638, &unk_264B4BC10, MEMORY[0x277CBCD90]);
  sub_2649CB384();
  sub_264B40B14();
  sub_2649CB3DC(v10);

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v21 = v24;
  v20 = v25;
  v19[2] = v18;
  v19[3] = v21;
  v19[4] = a2;
  v19[5] = v20;
  v19[6] = v26;
  sub_2649CB4C8(&qword_27FF8A648, &qword_27FF8A630, &qword_264B4BC08, MEMORY[0x277CBCD60]);

  sub_264B40B54();

  (*(v12 + 8))(v15, v11);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89EC0, &unk_264B44020);
  sub_2649CB4C8(&qword_27FF887C8, &unk_27FF89EC0, &unk_264B44020, MEMORY[0x277D83990]);
  sub_264B40984();
  swift_endAccess();
}

uint64_t sub_264A79908(uint64_t result, unint64_t a2, char a3, void (*a4)(uint64_t, char *))
{
  v22 = a3;
  if (*(v4 + 216) == 1)
  {
    v5 = v4;
    v8 = result;
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AE70);

    v10 = sub_264B40944();
    v11 = sub_264B414B4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21[0] = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_2649CC004(v8, a2, v21);
      *(v12 + 12) = 2082;
      v14 = sub_264B41064();
      v16 = sub_2649CC004(v14, v15, v21);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_2649C6000, v10, v11, "Policy engine: Inactivity timer condition %{public}s changed to %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v13, -1, -1);
      MEMORY[0x266749940](v12, -1, -1);
    }

    swift_beginAccess();
    a4(v5 + 200, &v22);
    swift_endAccess();
    v17 = *(v5 + 200);
    if (v17 == 2 || (*(v5 + 201) != 2) == (*(v5 + 201) & 1))
    {
      return sub_2649CAF8C();
    }

    else
    {
      v18 = (v17 & 1) == 0;
      v19 = 152;
      if (!v18)
      {
        v19 = 168;
      }

      v20 = 144;
      if (!v18)
      {
        v20 = 160;
      }

      return sub_2649CADBC(*(v5 + v20), *(v5 + v19));
    }
  }

  return result;
}

void *sub_264A79B58()
{

  sub_264B409E4();

  sub_264B409B4();

  return v0;
}

uint64_t sub_264A79BF0()
{
  sub_264A79B58();

  return swift_deallocClassInstance();
}

uint64_t sub_264A79C48(uint64_t a1)
{
  v2 = v1;
  v16 = 0;
  v17 = -4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A610, &qword_264B4BBF0);
  swift_allocObject();
  *(v1 + 16) = sub_264B40A14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A628, &qword_264B4BBF8);
  swift_allocObject();
  v4 = sub_264B409D4();
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  sub_2649CB564(a1, &v16);
  v5 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for InactivityTimeoutConditionMonitor();
  swift_allocObject();

  v6 = sub_2649CA228(&v16, v4, sub_264A7A3E4, v5);
  swift_beginAccess();
  *(v2 + 32) = v6;

  swift_beginAccess();
  v7 = *(v2 + 32);
  if (v7)
  {
    swift_endAccess();
    if (*(v7 + 216) == 1)
    {
      sub_2649CB510(a1);
    }

    else
    {
      *(v7 + 216) = 1;
      v8 = *(v7 + 120);
      v9 = *(v7 + 128);
      __swift_project_boxed_opaque_existential_1((v7 + 96), v8);
      v10 = *(v9 + 16);

      v11 = v10(v8, v9);
      sub_264A79598(0xD000000000000012, 0x8000000264B5D570, v11, sub_2649CA510, 0);

      v12 = *(v7 + 80);
      v13 = *(v7 + 88);
      __swift_project_boxed_opaque_existential_1((v7 + 56), v12);
      v14 = (*(v13 + 16))(v12, v13);
      sub_264A79598(0x6E6979616C507369, 0xEE00616964654D67, v14, sub_2649CA51C, 0);

      sub_2649CA7D0(0x6576457475706E69, 0xEA0000000000746ELL, *(v7 + 136));
      sub_2649CB510(a1);
    }
  }

  else
  {
    sub_2649CB510(a1);
    swift_endAccess();
  }

  return v2;
}

uint64_t sub_264A79F38(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = 17;
    v3 = 0x80;
    sub_264A7A1A0(&v2);
  }

  return result;
}

uint64_t sub_264A79FA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A608, &qword_264B4BBE8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v9 - v4;
  if (*(v0 + 48))
  {
    v6 = *(v0 + 48);
  }

  else
  {
    v9[1] = *(v0 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A610, &qword_264B4BBF0);
    sub_2649CB4C8(&qword_27FF8A618, &qword_27FF8A610, &qword_264B4BBF0, MEMORY[0x277CBCE48]);
    v7 = v0;
    sub_264B40AC4();

    sub_2649CB4C8(&qword_27FF8A620, &qword_27FF8A608, &qword_264B4BBE8, MEMORY[0x277CBCB10]);
    v6 = sub_264B40AB4();
    (*(v2 + 8))(v5, v1);
    *(v7 + 48) = v6;
  }

  return v6;
}

uint64_t sub_264A7A188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 8) = v3;
  return sub_2649E124C(v2, v3);
}

uint64_t sub_264A7A1A0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FF8AE70);
  sub_2649E124C(v1, v2);
  v4 = sub_264B40944();
  v5 = sub_264B414B4();
  sub_2649E1290(v1, v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    if (v2 <= 0xFB)
    {
      sub_264B41754();
      MEMORY[0x266748390](0xD000000000000013, 0x8000000264B59720);
      sub_264B41864();
      v9 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
      v9 = 0x64656D75736572;
    }

    v10 = sub_2649CC004(v9, v8, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Policy engine: Setting policy result to %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  return sub_264B409F4();
}

uint64_t sub_264A7A3AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A7A3EC(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, char *))
{
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_264A79908(a3, a4, v8, a5);
  }

  return result;
}

uint64_t sub_264A7A480()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t initializeBufferWithCopyOfBuffer for DrawEvent(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DrawEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DrawEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_264A7A5D4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A690, &qword_264B4BCD8);
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A698, &qword_264B4BCE0);
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A6A0, &qword_264B4BCE8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v21 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A7B268();
  sub_264B41BD4();
  if (v2[2])
  {
    LOBYTE(v25) = 1;
    sub_264A7B2BC();
    sub_264B419B4();
    v17 = v2[1];
    v25 = *v2;
    v26 = v17;
    sub_264A7B40C();
    v18 = v24;
    sub_264B41A24();
    (*(v23 + 8))(v7, v18);
  }

  else
  {
    LOBYTE(v25) = 0;
    sub_264A7B364();
    sub_264B419B4();
    v25 = *v2;
    *&v26 = *(v2 + 2);
    sub_264A7B460();
    v19 = v22;
    sub_264B41A24();
    (*(v21 + 8))(v11, v19);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_264A7A8F4()
{
  if (*v0)
  {
    return 0x6F50656B6F727473;
  }

  else
  {
    return 0x696F507375636F66;
  }
}

uint64_t sub_264A7A93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696F507375636F66 && a2 == 0xEA0000000000746ELL;
  if (v6 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F50656B6F727473 && a2 == 0xEB00000000746E69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_264A7AA24(uint64_t a1)
{
  v2 = sub_264A7B268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A7AA60(uint64_t a1)
{
  v2 = sub_264A7B268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A7AA9C(uint64_t a1)
{
  v2 = sub_264A7B364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A7AAD8(uint64_t a1)
{
  v2 = sub_264A7B364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A7AB14(uint64_t a1)
{
  v2 = sub_264A7B2BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A7AB50(uint64_t a1)
{
  v2 = sub_264A7B2BC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_264A7AB8C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_264A7AD30(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

BOOL sub_264A7ABEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_264A7AC8C(v5, v7);
}

uint64_t sub_264A7AC38@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v3;
  type metadata accessor for ControlMessage(0);

  return swift_storeEnumTagMultiPayload();
}

BOOL sub_264A7AC8C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if ((a1[4] & 1) == 0)
  {
    return (*(a2 + 32) & 1) == 0 && *&v2 == *a2 && *(a2 + 8) == COERCE_DOUBLE(*(a1 + 8) | ((*(a1 + 9) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 32)) << 8)) && v3 == *(a2 + 16);
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

  v5 = *&v2 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v3 != *(a2 + 16))
  {
    v5 = 0;
  }

  return *(a1 + 3) == *(a2 + 24) && v5;
}

uint64_t sub_264A7AD30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A650, &qword_264B4BCB8);
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v3);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A658, &qword_264B4BCC0);
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A660, &unk_264B4BCC8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v36 - v13;
  v15 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_264A7B268();
  v16 = v41;
  sub_264B41BC4();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(v50);
  }

  v36 = v6;
  v41 = v11;
  v17 = v40;
  v18 = v14;
  v19 = sub_264B419A4();
  v20 = (2 * *(v19 + 16)) | 1;
  v46 = v19;
  v47 = v19 + 32;
  v48 = 0;
  v49 = v20;
  v21 = sub_2649E0ED8();
  v22 = v10;
  if (v21 == 2 || v48 != v49 >> 1)
  {
    v30 = sub_264B417A4();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
    *v32 = &type metadata for DrawEvent;
    sub_264B41904();
    sub_264B41794();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
    swift_willThrow();
    (*(v41 + 8))(v14, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v50);
  }

  v23 = v21;
  v24 = v41;
  if (v21)
  {
    LOBYTE(v42) = 1;
    sub_264A7B2BC();
    sub_264B418F4();
    sub_264A7B310();
    v25 = v37;
    sub_264B41984();
    (*(v39 + 8))(v5, v25);
    (*(v24 + 8))(v18, v22);
    swift_unknownObjectRelease();
    v26 = v42;
    v27 = v43;
    v29 = v44;
    v28 = v45;
  }

  else
  {
    LOBYTE(v42) = 0;
    sub_264A7B364();
    v34 = v9;
    sub_264B418F4();
    sub_264A7B3B8();
    v35 = v36;
    sub_264B41984();
    (*(v38 + 8))(v34, v35);
    (*(v24 + 8))(v18, v22);
    swift_unknownObjectRelease();
    v28 = 0;
    v26 = v42;
    v27 = v43;
    v29 = v44;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v50);
  *v17 = v26;
  *(v17 + 8) = v27;
  *(v17 + 16) = v29;
  *(v17 + 24) = v28;
  *(v17 + 32) = v23 & 1;
  return result;
}

unint64_t sub_264A7B268()
{
  result = qword_27FF8A668;
  if (!qword_27FF8A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A668);
  }

  return result;
}

unint64_t sub_264A7B2BC()
{
  result = qword_27FF8A670;
  if (!qword_27FF8A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A670);
  }

  return result;
}

unint64_t sub_264A7B310()
{
  result = qword_27FF8A678;
  if (!qword_27FF8A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A678);
  }

  return result;
}

unint64_t sub_264A7B364()
{
  result = qword_27FF8A680;
  if (!qword_27FF8A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A680);
  }

  return result;
}

unint64_t sub_264A7B3B8()
{
  result = qword_27FF8A688;
  if (!qword_27FF8A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A688);
  }

  return result;
}

unint64_t sub_264A7B40C()
{
  result = qword_27FF8A6A8;
  if (!qword_27FF8A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6A8);
  }

  return result;
}

unint64_t sub_264A7B460()
{
  result = qword_27FF8A6B0;
  if (!qword_27FF8A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6B0);
  }

  return result;
}

unint64_t sub_264A7B4E8()
{
  result = qword_27FF8A6B8;
  if (!qword_27FF8A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6B8);
  }

  return result;
}

unint64_t sub_264A7B540()
{
  result = qword_27FF8A6C0;
  if (!qword_27FF8A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6C0);
  }

  return result;
}

unint64_t sub_264A7B598()
{
  result = qword_27FF8A6C8;
  if (!qword_27FF8A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6C8);
  }

  return result;
}

unint64_t sub_264A7B5F0()
{
  result = qword_27FF8A6D0;
  if (!qword_27FF8A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6D0);
  }

  return result;
}

unint64_t sub_264A7B648()
{
  result = qword_27FF8A6D8;
  if (!qword_27FF8A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6D8);
  }

  return result;
}

unint64_t sub_264A7B6A0()
{
  result = qword_27FF8A6E0;
  if (!qword_27FF8A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6E0);
  }

  return result;
}

unint64_t sub_264A7B6F8()
{
  result = qword_27FF8A6E8;
  if (!qword_27FF8A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6E8);
  }

  return result;
}

unint64_t sub_264A7B750()
{
  result = qword_27FF8A6F0;
  if (!qword_27FF8A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6F0);
  }

  return result;
}

unint64_t sub_264A7B7A8()
{
  result = qword_27FF8A6F8;
  if (!qword_27FF8A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6F8);
  }

  return result;
}

uint64_t MockUserDefaultsPrimitives.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  *(result + 24) = 1;
  return result;
}

uint64_t MockUserDefaultsPrimitives.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  *(v0 + 24) = 1;
  return result;
}

uint64_t sub_264A7B850(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 && *(v3 + 24) != 1)
  {
    return 2;
  }

  swift_beginAccess();
  v6 = *(v3 + 16);
  if (*(v6 + 16))
  {

    v7 = sub_264A20ACC(a1, a2);
    if (v8)
    {
      sub_2649C964C(*(v6 + 56) + 32 * v7, v10);

      goto LABEL_9;
    }
  }

  memset(v10, 0, sizeof(v10));
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB60, qword_264B44A80);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_264A7B940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 & 1) == 0 || (*(v5 + 24))
  {
    swift_beginAccess();
    v10 = *(v5 + 16);
    if (*(v10 + 16))
    {

      v11 = sub_264A20ACC(a1, a2);
      if (v12)
      {
        sub_2649C964C(*(v10 + 56) + 32 * v11, v16);

LABEL_11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB60, qword_264B44A80);
        v15 = swift_dynamicCast();
        return (*(*(a4 - 8) + 56))(a5, v15 ^ 1u, 1, a4);
      }
    }

    memset(v16, 0, sizeof(v16));
    goto LABEL_11;
  }

  v13 = *(*(a4 - 8) + 56);

  return v13(a5, 1, 1);
}

uint64_t sub_264A7BAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_264A7BE8C(a1, v6);
  swift_beginAccess();

  sub_264A906EC(v6, a2, a3);
  return swift_endAccess();
}

uint64_t sub_264A7BB28(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 && *(v3 + 24) != 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_264A7B850(a1, a2, a3 & 1);
  }

  return v4 & 1;
}

uint64_t sub_264A7BB60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_264A20ACC(a1, a2);
    if (v7)
    {
      sub_2649C964C(*(v5 + 56) + 32 * v6, v9);

      goto LABEL_6;
    }
  }

  memset(v9, 0, sizeof(v9));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB60, qword_264B44A80);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264A7BC34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_264A20ACC(a1, a2);
    if (v7)
    {
      sub_2649C964C(*(v5 + 56) + 32 * v6, v9);

      goto LABEL_6;
    }
  }

  memset(v9, 0, sizeof(v9));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB60, qword_264B44A80);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t MockUserDefaultsPrimitives.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_264A7BD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_264A7BE8C(a1, v6);
  swift_beginAccess();

  sub_264A906EC(v6, a2, a3);
  return swift_endAccess();
}

uint64_t sub_264A7BE00(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  if ((a3 & 1) != 0 && *(v4 + 24) != 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_264A7B850(a1, a2, a3 & 1);
  }

  return v5 & 1;
}

uint64_t sub_264A7BE8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB60, qword_264B44A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A7C000()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit24MockNetworkStatusMonitor__networkStatus;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A728, &unk_264B54810);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockNetworkStatusMonitor(uint64_t a1)
{
  result = qword_27FF8A708;
  if (!qword_27FF8A708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A7C0FC(uint64_t a1)
{
  sub_264A7C18C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_264A7C18C()
{
  if (!qword_27FF8A718)
  {
    v0 = sub_264B40AA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF8A718);
    }
  }
}

uint64_t sub_264A7C1DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A720, &unk_264B4C130);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A728, &unk_264B54810);
  sub_264B40A54();
  swift_endAccess();
  sub_264A7C7F4();
  v5 = sub_264B40AB4();
  (*(v1 + 8))(v4, v0);
  return v5;
}

void sub_264A7C314()
{
  v0 = sub_264B3FFD4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FFA71B8);
  v6 = sub_264B41484();
  sub_264B3FF94();
  v7 = sub_264B3FFA4();
  v9 = v8;
  (*(v1 + 8))(v4, v0);

  v10 = sub_264B40944();

  if (os_log_type_enabled(v10, v6))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446722;
    v13 = sub_2649CC004(v7, v9, &v15);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2050;
    *(v11 + 14) = 20;
    *(v11 + 22) = 2082;
    *(v11 + 24) = sub_2649CC004(0xD000000000000018, 0x8000000264B5D6B0, &v15);
    _os_log_impl(&dword_2649C6000, v10, v6, "%{public}s:%{public}ld %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {
  }
}

void sub_264A7C584()
{
  v0 = sub_264B3FFD4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FFA71B8);
  v6 = sub_264B41484();
  sub_264B3FF94();
  v7 = sub_264B3FFA4();
  v9 = v8;
  (*(v1 + 8))(v4, v0);

  v10 = sub_264B40944();

  if (os_log_type_enabled(v10, v6))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446722;
    v13 = sub_2649CC004(v7, v9, &v15);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2050;
    *(v11 + 14) = 24;
    *(v11 + 22) = 2082;
    *(v11 + 24) = sub_2649CC004(0xD000000000000017, 0x8000000264B5D690, &v15);
    _os_log_impl(&dword_2649C6000, v10, v6, "%{public}s:%{public}ld %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_264A7C7F4()
{
  result = qword_27FF8A730;
  if (!qword_27FF8A730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8A720, &unk_264B4C130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A730);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit11ServerErrorOSg(uint64_t a1)
{
  v1 = *(a1 + 8) & 0x3C | (*(a1 + 8) >> 6);
  v2 = v1 ^ 0x3F;
  v3 = 64 - v1;
  if (v2 >= 0x3D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit17ServerStatusEventO(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

unint64_t get_enum_tag_for_layout_string_16ScreenSharingKit17ClientStatusEventO(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_264A7C8C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 56) >> 4) & 0xFFFFFFF0 | (*(a1 + 56) >> 1) & 0xF;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_264A7C914(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 104) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = (16 * -a2) & 0xFFFFFFF00 | (2 * (-a2 & 0xFLL));
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0;
      return result;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264A7C9CC(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A778, &qword_264B4C4D8);
  v30 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v3);
  v5 = &v24 - v4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A780, &qword_264B4C4E0);
  v28 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v6);
  v8 = &v24 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A788, &qword_264B4C4E8);
  v9 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v10);
  v12 = &v24 - v11;
  v13 = v1[1];
  v32 = *v1;
  v33 = v13;
  v14 = v1[3];
  v34 = v1[2];
  v35 = v14;
  v15 = v1[5];
  v36 = v1[4];
  v37 = v15;
  v16 = v1[7];
  v38 = v1[6];
  v17 = *(v1 + 4);
  v26 = *(v1 + 5);
  v27 = v17;
  v25 = v1[12];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A7D69C();
  sub_264B41BD4();
  if ((v16 & 0x2000000000000000) != 0)
  {
    v21 = v16 & 0xDFFFFFFFFFFFFFFFLL;
    LOBYTE(v40) = 1;
    sub_264A7D6F0();
    v22 = v39;
    sub_264B419B4();
    v40 = v32;
    v41 = v33;
    v42 = v34;
    v43 = v35;
    v44 = v36;
    v45 = v37;
    v46 = v38;
    v47 = v21;
    v48 = v27;
    v49 = v26;
    v50 = v25;
    sub_264A7D840();
    v23 = v31;
    sub_264B41A24();
    (*(v30 + 8))(v5, v23);
    return (*(v9 + 8))(v12, v22);
  }

  else
  {
    LOBYTE(v40) = 0;
    sub_264A7D798();
    v18 = v39;
    sub_264B419B4();
    v40 = v32;
    v41 = v33;
    v42 = v34;
    v43 = v35;
    v44 = v36;
    v45 = v37;
    v46 = v38;
    LOBYTE(v47) = v16;
    sub_264A7D894();
    v19 = v29;
    sub_264B41A24();
    (*(v28 + 8))(v8, v19);
    return (*(v9 + 8))(v12, v18);
  }
}

uint64_t sub_264A7CDBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A738, &qword_264B4C4B8);
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A740, &qword_264B4C4C0);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A748, &unk_264B4C4C8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v39 - v15;
  v17 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_264A7D69C();
  v18 = v44;
  sub_264B41BC4();
  if (!v18)
  {
    v44 = v13;
    v19 = v43;
    v20 = sub_264B419A4();
    v21 = (2 * *(v20 + 16)) | 1;
    v53 = v20;
    v54 = v20 + 32;
    v55 = 0;
    v56 = v21;
    v22 = sub_2649E0ED8();
    v23 = v12;
    if (v22 == 2 || v55 != v56 >> 1)
    {
      v25 = sub_264B417A4();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
      *v27 = &type metadata for StatusEvent;
      sub_264B41904();
      sub_264B41794();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v44 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v22)
      {
        LOBYTE(v45) = 1;
        sub_264A7D6F0();
        sub_264B418F4();
        v24 = v44;
        sub_264A7D744();
        v30 = v41;
        sub_264B41984();
        (*(v42 + 8))(v7, v30);
        (*(v24 + 8))(v16, v23);
        swift_unknownObjectRelease();
        v31 = v45;
        v32 = v46;
        v33 = v47;
        v34 = v48;
        v35 = v50;
        v36 = v51;
        v37 = v52;
        v38 = v49 & 0xC0000000000000E1 | 0x2000000000000000;
      }

      else
      {
        LOBYTE(v45) = 0;
        sub_264A7D798();
        sub_264B418F4();
        v29 = v44;
        sub_264A7D7EC();
        sub_264B41984();
        (*(v40 + 8))(v11, v8);
        (*(v29 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v31 = v45;
        v32 = v46;
        v33 = v47;
        v34 = v48;
        v37 = v49;
        v38 = v49 & 0xE1;
      }

      *v19 = v31;
      *(v19 + 16) = v32;
      *(v19 + 32) = v33;
      *(v19 + 48) = v34;
      *(v19 + 56) = v38;
      *(v19 + 64) = v35;
      *(v19 + 80) = v36;
      *(v19 + 96) = v37;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v57);
}

uint64_t sub_264A7D32C(uint64_t a1)
{
  v2 = sub_264A7D6F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A7D368(uint64_t a1)
{
  v2 = sub_264A7D6F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A7D3A4()
{
  if (*v0)
  {
    return 0x7453746E65696C63;
  }

  else
  {
    return 0x7453726576726573;
  }
}

uint64_t sub_264A7D3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7453726576726573 && a2 == 0xEC00000073757461;
  if (v6 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7453746E65696C63 && a2 == 0xEC00000073757461)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_264A7D4C0(uint64_t a1)
{
  v2 = sub_264A7D69C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A7D4FC(uint64_t a1)
{
  v2 = sub_264A7D69C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A7D538(uint64_t a1)
{
  v2 = sub_264A7D798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A7D574(uint64_t a1)
{
  v2 = sub_264A7D798();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A7D5E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  type metadata accessor for ControlMessage(0);
  swift_storeEnumTagMultiPayload();
  return sub_264A7D664(v10, v9);
}

unint64_t sub_264A7D69C()
{
  result = qword_27FF8A750;
  if (!qword_27FF8A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A750);
  }

  return result;
}

unint64_t sub_264A7D6F0()
{
  result = qword_27FF8A758;
  if (!qword_27FF8A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A758);
  }

  return result;
}

unint64_t sub_264A7D744()
{
  result = qword_27FF8A760;
  if (!qword_27FF8A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A760);
  }

  return result;
}

unint64_t sub_264A7D798()
{
  result = qword_27FF8A768;
  if (!qword_27FF8A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A768);
  }

  return result;
}

unint64_t sub_264A7D7EC()
{
  result = qword_27FF8A770;
  if (!qword_27FF8A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A770);
  }

  return result;
}

unint64_t sub_264A7D840()
{
  result = qword_27FF8A790;
  if (!qword_27FF8A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A790);
  }

  return result;
}

unint64_t sub_264A7D894()
{
  result = qword_27FF8A798;
  if (!qword_27FF8A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A798);
  }

  return result;
}

uint64_t sub_264A7D8E8(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v42 = a1[4];
  v43 = v3;
  v4 = a1[1];
  v38 = *a1;
  v39 = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v40 = a1[2];
  v41 = v5;
  v8 = a2[1];
  v45 = *a2;
  v46 = v8;
  v9 = a2[3];
  v10 = a2[5];
  v49 = a2[4];
  v50 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  v47 = a2[2];
  v48 = v11;
  v52[0] = v7;
  v52[1] = v6;
  v14 = a1[5];
  v52[4] = v42;
  v52[5] = v14;
  v52[2] = v40;
  v52[3] = v2;
  v56 = v47;
  v55 = v13;
  v44 = *(a1 + 12);
  v51 = *(a2 + 12);
  v15 = *(a1 + 12);
  v54 = v12;
  v16 = a2[5];
  v17 = *(a2 + 12);
  v53 = v15;
  v60 = v17;
  v59 = v16;
  v58 = v49;
  v57 = v9;
  if ((*(&v41 + 1) & 0x2000000000000000) != 0)
  {
    if ((*(&v11 + 1) & 0x2000000000000000) != 0)
    {
      v32[0] = v38;
      v32[1] = v39;
      v32[2] = v40;
      v33 = v41;
      v34 = *(&v41 + 1) & 0xDFFFFFFFFFFFFFFFLL;
      v35 = v42;
      v36 = v43;
      v37 = v44;
      v24 = v45;
      v25 = v46;
      v26 = v47;
      v27 = v48;
      v28 = *(&v11 + 1) & 0xDFFFFFFFFFFFFFFFLL;
      v29 = v49;
      v30 = v50;
      v31 = v51;
      sub_264A7D664(&v45, v21);
      sub_264A7D664(&v38, v21);
      sub_264A7D664(&v38, v21);
      sub_264A7D664(&v45, v21);
      v18 = sub_264AD9F00(v32, &v24);
      goto LABEL_7;
    }
  }

  else if ((*(&v11 + 1) & 0x2000000000000000) == 0)
  {
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    LOBYTE(v28) = BYTE8(v41);
    v21[0] = v45;
    v21[1] = v46;
    v21[2] = v47;
    v22 = v48;
    v23 = BYTE8(v11);
    sub_264A7D664(&v45, v32);
    sub_264A7D664(&v38, v32);
    sub_264A7D664(&v38, v32);
    sub_264A7D664(&v45, v32);
    v18 = sub_264B11BF4(&v24, v21);
LABEL_7:
    v19 = v18;
    sub_264A7DB0C(v52);
    sub_264A7DB74(&v45);
    sub_264A7DB74(&v38);
    return v19 & 1;
  }

  sub_264A7D664(&v38, v32);
  sub_264A7D664(&v45, v32);
  sub_264A7DB0C(v52);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_264A7DB0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A7A0, &qword_264B4C4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264A7DBD8()
{
  result = qword_27FF8A7A8;
  if (!qword_27FF8A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7A8);
  }

  return result;
}

unint64_t sub_264A7DC30()
{
  result = qword_27FF8A7B0;
  if (!qword_27FF8A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7B0);
  }

  return result;
}

unint64_t sub_264A7DC88()
{
  result = qword_27FF8A7B8;
  if (!qword_27FF8A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7B8);
  }

  return result;
}

unint64_t sub_264A7DCE0()
{
  result = qword_27FF8A7C0;
  if (!qword_27FF8A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7C0);
  }

  return result;
}

unint64_t sub_264A7DD38()
{
  result = qword_27FF8A7C8;
  if (!qword_27FF8A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7C8);
  }

  return result;
}

unint64_t sub_264A7DD90()
{
  result = qword_27FF8A7D0;
  if (!qword_27FF8A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7D0);
  }

  return result;
}

unint64_t sub_264A7DDE8()
{
  result = qword_27FF8A7D8;
  if (!qword_27FF8A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7D8);
  }

  return result;
}

unint64_t sub_264A7DE40()
{
  result = qword_27FF8A7E0;
  if (!qword_27FF8A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7E0);
  }

  return result;
}

unint64_t sub_264A7DE98()
{
  result = qword_27FF8A7E8;
  if (!qword_27FF8A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7E8);
  }

  return result;
}

uint64_t sub_264A7DEEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  v28 = *(a1 + 16);
  sub_264AAFCF0(0, v1, 0);
  v2 = v29;
  v4 = a1 + 56;
  result = sub_264B41694();
  v6 = v28;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_31;
    }

    v11 = *(*(a1 + 48) + result);
    if (v11 <= 1)
    {
      if (!*(*(a1 + 48) + result))
      {
        v13 = 0xE700000000000000;
        v12 = 0x6E776F6E6B6E75;
        goto LABEL_18;
      }

      v14 = 0x656369766564;
    }

    else
    {
      if (v11 == 2)
      {
        v12 = 0xD000000000000011;
        v13 = 0x8000000264B58BE0;
        goto LABEL_18;
      }

      if (v11 == 3)
      {
        v12 = 0x6F68706F7263696DLL;
        v13 = 0xEF6573556E49656ELL;
        goto LABEL_18;
      }

      v14 = 0x6172656D6163;
    }

    v12 = v14 & 0xFFFFFFFFFFFFLL | 0x6E49000000000000;
    v13 = 0xEB00000000657355;
LABEL_18:
    v15 = *(a1 + 36);
    v17 = *(v29 + 16);
    v16 = *(v29 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = *(a1 + 36);
      v27 = result;
      sub_264AAFCF0((v16 > 1), v17 + 1, 1);
      v6 = v28;
      v15 = v26;
      result = v27;
    }

    *(v29 + 16) = v17 + 1;
    v18 = v29 + 16 * v17;
    *(v18 + 32) = v12;
    *(v18 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_32;
    }

    v4 = a1 + 56;
    v19 = *(a1 + 56 + 8 * v9);
    if ((v19 & v10) == 0)
    {
      goto LABEL_33;
    }

    if (v15 != *(a1 + 36))
    {
      goto LABEL_34;
    }

    v20 = v19 & (-2 << (result & 0x3F));
    if (v20)
    {
      v8 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v9 << 6;
      v22 = v9 + 1;
      v23 = (a1 + 64 + 8 * v9);
      while (v22 < (v8 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          sub_264A813F4(result, v15, 0);
          v6 = v28;
          v8 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      sub_264A813F4(result, v15, 0);
      v6 = v28;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_264A7E1B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v27 = MEMORY[0x277D84F90];
    sub_264AAFD10(0, v1, 0);
    v2 = v27;
    v3 = a1 + 56;
    v4 = sub_264B41694();
    v5 = a1;
    v6 = 0;
    v24 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v5 + 32))
    {
      v9 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v25 = *(v5 + 36);
      v10 = (*(v5 + 48) + 16 * v4);
      v11 = *v10;
      v12 = v10[1];

      sub_264A8094C(v11, v12, &v26);
      v13 = v26;
      v27 = v2;
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_264AAFD10((v14 > 1), v15 + 1, 1);
        v2 = v27;
      }

      *(v2 + 16) = v15 + 1;
      *(v2 + v15 + 32) = v13;
      v7 = 1 << *(v5 + 32);
      if (v4 >= v7)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v16 = *(a1 + 56 + 8 * v9);
      if ((v16 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v25 != *(v5 + 36))
      {
        goto LABEL_24;
      }

      v17 = v16 & (-2 << (v4 & 0x3F));
      if (v17)
      {
        v7 = __clz(__rbit64(v17)) | v4 & 0x7FFFFFFFFFFFFFC0;
        v8 = v24;
      }

      else
      {
        v18 = v9 << 6;
        v19 = v9 + 1;
        v20 = (a1 + 64 + 8 * v9);
        v8 = v24;
        while (v19 < (v7 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_264A813F4(v4, v25, 0);
            v5 = a1;
            v7 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        sub_264A813F4(v4, v25, 0);
        v5 = a1;
      }

LABEL_4:
      ++v6;
      v4 = v7;
      if (v6 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_264A7E400@<X0>(char **a1@<X8>)
{
  sub_2649CB5C0(v1, v9);
  sub_2649CB5C0(v1 + 40, v8);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  v7[3] = &type metadata for SpringBoardUIServicesBackedLaunchPayloadProcessor;
  v7[4] = &off_28765EC78;
  v3 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v4 = objc_allocWithZone(v3);
  __swift_mutable_project_boxed_opaque_existential_1(v7, &type metadata for SpringBoardUIServicesBackedLaunchPayloadProcessor);
  v5 = sub_264A8124C(v8, v4);
  __swift_destroy_boxed_opaque_existential_0(v7);
  result = __swift_destroy_boxed_opaque_existential_0(v9);
  a1[3] = v3;
  a1[4] = &off_28765B720;
  *a1 = v5;
  return result;
}

id sub_264A7E4E8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_264A7E5F0()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_screenRecordingAssertions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_264B41884();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x266748A70](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      [v5 invalidate];
      swift_unknownObjectRelease();
      ++v4;
    }

    while (v6 != v3);
  }

  *(v0 + v1) = MEMORY[0x277D84F90];

  return [*(v0 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session) invalidate];
}

void sub_264A7E734(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_customBlockedReasons;
  v4 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_customBlockedReasons);

  v5 = sub_264B0EF58(a1, v4);

  if (v5)
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FF8AE70);
    oslog = sub_264B40944();
    v7 = sub_264B41484();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v7, "Custom blocked reasons didn't change, ignoring update", v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }
  }

  else
  {
    *(v1 + v3) = a1;

    v9 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session);

    v11 = sub_264A7DEEC(v10);
    sub_264AAAB44(v11);

    oslog = sub_264B41404();

    [v9 setExternallyBlockedReasons_];
  }
}

uint64_t sub_264A7E8D8(uint64_t a1)
{
  v2 = sub_264B40EB4();
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264B40EE4();
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v20 - v13;
  sub_2649D8B90(0, &qword_27FF89DF0, 0x277D85C78);
  v15 = sub_264B41554();
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  aBlock[4] = sub_264A810F0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_11;
  v18 = _Block_copy(aBlock);
  sub_264B40EC4();
  v23 = MEMORY[0x277D84F90];
  sub_264A1EF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_2649CB4C8(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0, MEMORY[0x277D83970]);
  sub_264B41684();
  MEMORY[0x266748860](0, v9, v5, v18);
  _Block_release(v18);

  (*(v22 + 8))(v5, v2);
  (*(v20 + 8))(v9, v21);
}

void sub_264A7EC5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - v5;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FF8AE70);
  v8 = sub_264B40944();
  v9 = sub_264B41484();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2649C6000, v8, v9, "Activating CATransaction", v10, 2u);
    MEMORY[0x266749940](v10, -1, -1);
  }

  v11 = objc_opt_self();
  [v11 activate];
  v12 = sub_264B40944();
  v13 = sub_264B41484();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2649C6000, v12, v13, "Activated CATransaction", v14, 2u);
    MEMORY[0x266749940](v14, -1, -1);
  }

  v15 = sub_264B40944();
  v16 = sub_264B41484();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2649C6000, v15, v16, "Awaiting CATransaction commit handler", v17, 2u);
    MEMORY[0x266749940](v17, -1, -1);
  }

  (*(v3 + 16))(v6, a1, v2);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  (*(v3 + 32))(v19 + v18, v6, v2);
  aBlock[4] = sub_264A811B4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_29;
  v20 = _Block_copy(aBlock);

  v21 = [v11 addCommitHandler:v20 forPhase:5];
  _Block_release(v20);
  v22 = sub_264B40944();
  v23 = sub_264B41484();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136446210;
    if (v21)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v21)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = sub_2649CC004(v26, v27, aBlock);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_2649C6000, v22, v23, "Added CATransactionCommitHandler: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x266749940](v25, -1, -1);
    MEMORY[0x266749940](v24, -1, -1);
  }
}

uint64_t sub_264A7F0A4()
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v0 = sub_264B40964();
  __swift_project_value_buffer(v0, qword_27FF8AE70);
  v1 = sub_264B40944();
  v2 = sub_264B41484();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2649C6000, v1, v2, "CATransaction commit handler called", v3, 2u);
    MEMORY[0x266749940](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  return sub_264B411E4();
}

void sub_264A7F1A0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (v2 >= 3)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v21 = sub_264B40964();
    __swift_project_value_buffer(v21, qword_27FFA71B8);
    sub_264A18774(v3, v2, v5, v4);
    oslog = sub_264B40944();
    v22 = sub_264B41484();
    sub_264A187D4(v3, v2, v5, v4);
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30[3] = v4;
      v31 = v24;
      *v23 = 136315138;
      v30[0] = v3;
      v30[1] = v2;
      v30[2] = v5;
      sub_264A18774(v3, v2, v5, v4);
      v25 = sub_264B41064();
      v27 = sub_2649CC004(v25, v26, &v31);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_2649C6000, oslog, v22, "Incoming event %s has no sbUI equivalent, will no-op", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x266749940](v24, -1, -1);
      MEMORY[0x266749940](v23, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FF8AE70);
    sub_264A18774(v3, v2, v5, v4);
    v7 = sub_264B40944();
    v8 = sub_264B41484();
    sub_264A187D4(v3, v2, v5, v4);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v9 = 136315138;
      v31 = (v2 + 1);
      type metadata accessor for SBUIContinuityButtonEventType(0);
      v10 = sub_264B41064();
      v12 = sub_2649CC004(v10, v11, v30);

      *(v9 + 4) = v12;
      _os_log_impl(&dword_2649C6000, v7, v8, "Interactor received %s, processing...", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x266749940](v28, -1, -1);
      MEMORY[0x266749940](v9, -1, -1);
    }

    v13 = v2 + 1;
    [*(v1 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session) handleContinuityButtonEvent_];
    sub_264A18774(v3, v2, v5, v4);
    v14 = sub_264B40944();
    v15 = sub_264B41484();
    sub_264A187D4(v3, v2, v5, v4);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30[0] = v17;
      *v16 = 136315138;
      v31 = v13;
      type metadata accessor for SBUIContinuityButtonEventType(0);
      v18 = sub_264B41064();
      v20 = sub_2649CC004(v18, v19, v30);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2649C6000, v14, v15, "Processed %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x266749940](v17, -1, -1);
      MEMORY[0x266749940](v16, -1, -1);
    }
  }
}