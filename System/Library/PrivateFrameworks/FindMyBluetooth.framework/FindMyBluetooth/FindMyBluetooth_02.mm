uint64_t sub_24AC4F598()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_24AC502C4;
  }

  else
  {
    v4 = sub_24AC4F6C4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC4F6C4()
{
  v54 = v0;
  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  v0[28] = __swift_project_value_buffer(v1, qword_27EF9E220);

  v2 = sub_24ACD0470();
  v3 = sub_24ACD0930();

  v4 = &unk_27EFA5000;
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[18];
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v53 = v10;
    *v9 = 136446466;
    sub_24AC2A3DC(v8 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v6);
    v11 = (v6 + *(v7 + 32));
    v12 = *v11;
    v13 = v11[1];

    sub_24AC234B4(v6);
    v14 = sub_24AC29E20(v12, v13, &v53);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v5;

    _os_log_impl(&dword_24AC18000, v2, v3, "%{public}s: Sending %ld packets.", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C22DC60](v10, -1, -1);
    v15 = v9;
    v4 = &unk_27EFA5000;
    MEMORY[0x24C22DC60](v15, -1, -1);
  }

  else
  {
  }

  v16 = sub_24AC54A58(&qword_27EF9E258, type metadata accessor for Characteristic, "QtV7Ѝ");
  v24 = v4[426];
  v0[29] = v16;
  v0[30] = v24;
  v0[31] = 0;
  if (!v0[18])
  {
    __break(1u);
    goto LABEL_24;
  }

  v25 = v0[12];
  v26 = *(v25 + 32);
  v0[32] = v26;
  v27 = *(v25 + 40);
  v0[33] = v27;
  sub_24AC46630(v26, v27);

  sub_24AC46630(v26, v27);
  v28 = sub_24ACD0470();
  v29 = sub_24ACD0930();

  if (!os_log_type_enabled(v28, v29))
  {
    sub_24AC46698(v26, v27);
    goto LABEL_20;
  }

  v30 = v0[30];
  v32 = v0[14];
  v31 = v0[15];
  v33 = v0[13];
  v34 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  v0[10] = v52;
  *v34 = 136446722;
  sub_24AC2A3DC(v33 + v30, v31);
  v35 = (v31 + *(v32 + 32));
  v36 = *v35;
  v37 = v35[1];

  sub_24AC234B4(v31);
  v38 = sub_24AC29E20(v36, v37, v0 + 10);

  *(v34 + 4) = v38;
  *(v34 + 12) = 2048;
  v39 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v39 != 2)
    {
      v40 = 0;
      goto LABEL_19;
    }

    v42 = *(v26 + 16);
    v41 = *(v26 + 24);
    v43 = __OFSUB__(v41, v42);
    v40 = v41 - v42;
    if (!v43)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_16:
    LODWORD(v40) = HIDWORD(v26) - v26;
    if (!__OFSUB__(HIDWORD(v26), v26))
    {
      v40 = v40;
      goto LABEL_19;
    }

LABEL_24:
    __break(1u);
    return MEMORY[0x2822008A0](v16, v17, v18, v19, v20, v21, v22, v23);
  }

  if (v39)
  {
    goto LABEL_16;
  }

  v40 = BYTE6(v27);
LABEL_19:
  *(v34 + 14) = v40;
  sub_24AC46698(v26, v27);
  *(v34 + 22) = 2080;
  v0[8] = v26;
  v0[9] = v27;
  sub_24AC467AC();
  v44 = sub_24ACD0180();
  v46 = sub_24AC29E20(v44, v45, v0 + 10);

  *(v34 + 24) = v46;
  _os_log_impl(&dword_24AC18000, v28, v29, "%{public}s: Sending packet [%ld bytes]: %s", v34, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x24C22DC60](v52, -1, -1);
  MEMORY[0x24C22DC60](v34, -1, -1);
LABEL_20:

  v47 = v0[29];
  v48 = v0[19];
  v49 = v0[13];
  v50 = swift_task_alloc();
  v0[34] = v50;
  v50[2] = v49;
  v50[3] = v48;
  v50[4] = v26;
  v50[5] = v27;
  v16 = swift_task_alloc();
  v0[35] = v16;
  *v16 = v0;
  v16[1] = sub_24AC4FBBC;
  v21 = sub_24AC53750;
  v19 = 0x6164286574697277;
  v20 = 0xEC000000293A6174;
  v23 = MEMORY[0x277D84F78] + 8;
  v17 = v49;
  v18 = v47;
  v22 = v50;

  return MEMORY[0x2822008A0](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_24AC4FBBC()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 104);

  if (v0)
  {
    v4 = sub_24AC5034C;
  }

  else
  {
    v4 = sub_24AC4FD04;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC4FD04()
{
  v57 = v0;
  v1 = v0[18];
  v2 = v0[31] + 1;
  v3 = sub_24AC46698(v0[32], v0[33]);
  if (v2 != v1)
  {
    v23 = v0[31] + 1;
    v0[31] = v23;
    if (v23 == v0[18])
    {
      __break(1u);
    }

    else
    {
      v24 = v0[12] + 16 * v23;
      v25 = *(v24 + 32);
      v0[32] = v25;
      v26 = *(v24 + 40);
      v0[33] = v26;
      sub_24AC46630(v25, v26);

      sub_24AC46630(v25, v26);
      v27 = sub_24ACD0470();
      v28 = sub_24ACD0930();

      if (!os_log_type_enabled(v27, v28))
      {
        sub_24AC46698(v25, v26);
        goto LABEL_21;
      }

      v29 = v0[30];
      v31 = v0[14];
      v30 = v0[15];
      v32 = v0[13];
      v33 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v0[10] = v55;
      *v33 = 136446722;
      sub_24AC2A3DC(v32 + v29, v30);
      v34 = (v30 + *(v31 + 32));
      v35 = *v34;
      v36 = v34[1];

      sub_24AC234B4(v30);
      v37 = sub_24AC29E20(v35, v36, v0 + 10);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2048;
      v38 = v26 >> 62;
      if ((v26 >> 62) > 1)
      {
        if (v38 != 2)
        {
          v39 = 0;
          goto LABEL_20;
        }

        v46 = *(v25 + 16);
        v45 = *(v25 + 24);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        if (!v47)
        {
          goto LABEL_20;
        }

        __break(1u);
      }

      else if (!v38)
      {
        v39 = BYTE6(v26);
LABEL_20:
        *(v33 + 14) = v39;
        sub_24AC46698(v25, v26);
        *(v33 + 22) = 2080;
        v0[8] = v25;
        v0[9] = v26;
        sub_24AC467AC();
        v48 = sub_24ACD0180();
        v50 = sub_24AC29E20(v48, v49, v0 + 10);

        *(v33 + 24) = v50;
        _os_log_impl(&dword_24AC18000, v27, v28, "%{public}s: Sending packet [%ld bytes]: %s", v33, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C22DC60](v55, -1, -1);
        MEMORY[0x24C22DC60](v33, -1, -1);
LABEL_21:

        v51 = v0[29];
        v52 = v0[19];
        v53 = v0[13];
        v54 = swift_task_alloc();
        v0[34] = v54;
        v54[2] = v53;
        v54[3] = v52;
        v54[4] = v25;
        v54[5] = v26;
        v3 = swift_task_alloc();
        v0[35] = v3;
        *v3 = v0;
        v3[1] = sub_24AC4FBBC;
        v8 = sub_24AC53750;
        v6 = 0x6164286574697277;
        v7 = 0xEC000000293A6174;
        v10 = MEMORY[0x277D84F78] + 8;
        v4 = v53;
        v5 = v51;
        v9 = v54;

        return MEMORY[0x2822008A0](v3, v4, v5, v6, v7, v8, v9, v10);
      }

      LODWORD(v39) = HIDWORD(v25) - v25;
      if (!__OFSUB__(HIDWORD(v25), v25))
      {
        v39 = v39;
        goto LABEL_20;
      }
    }

    __break(1u);
    return MEMORY[0x2822008A0](v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = sub_24ACD0470();
  v12 = sub_24ACD0930();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[30];
    v15 = v0[14];
    v14 = v0[15];
    v16 = v0[13];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v56 = v18;
    *v17 = 136446210;
    sub_24AC2A3DC(v16 + v13, v14);
    v19 = (v14 + *(v15 + 32));
    v20 = *v19;
    v21 = v19[1];

    sub_24AC234B4(v14);
    v22 = sub_24AC29E20(v20, v21, &v56);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_24AC18000, v11, v12, "%{public}s: Clearing writeValueContinuation", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x24C22DC60](v18, -1, -1);
    MEMORY[0x24C22DC60](v17, -1, -1);
  }

  v40 = v0[20];
  v41 = v0[16];
  v42 = v0[13];
  (*(v0[22] + 56))(v41, 1, 1, v0[21]);
  swift_beginAccess();
  sub_24AC463C4(v41, v42 + v40, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();

  v43 = v0[1];

  return v43();
}

uint64_t sub_24AC5023C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC502C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC5034C()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[11];

  sub_24AC46698(v1, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E250, &qword_24ACD46B0);
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AC5042C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a5;
  v27 = a7;
  v25 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  swift_beginAccess();
  sub_24AC463C4(v16, a2 + v19, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v20 = sub_24ACD07C0();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = sub_24AC54A58(&qword_27EF9E258, type metadata accessor for Characteristic, "QtV7Ѝ");
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = v21;
  v22[4] = a3;
  v22[5] = a4;
  v23 = v26;
  v22[6] = v26;
  v22[7] = a2;
  swift_retain_n();

  sub_24AC46630(a4, v23);
  sub_24AC7EA6C(0, 0, v13, v27, v22);
}

uint64_t sub_24AC506B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC507D0, a7, 0);
}

uint64_t sub_24AC507D0()
{
  v1 = v0[12];
  v2 = *(v0[15] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  v0[21] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
  inited = swift_initStackObject();
  v0[22] = inited;
  *(inited + 16) = v2;
  v4 = v2;

  return MEMORY[0x2822009F8](sub_24AC5087C, v1, 0);
}

uint64_t sub_24AC5087C()
{
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[24] = v2;
    *v2 = v0;
    v2[1] = sub_24AC509F0;
    v3 = v0[22];
    v5 = v0[13];
    v4 = v0[14];

    return sub_24AC2C34C(v5, v4, v3, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    v7 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v0[26] = v7;
    v8 = v0[15];

    return MEMORY[0x2822009F8](sub_24AC54AA8, v8, 0);
  }
}

uint64_t sub_24AC509F0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_24AC50B1C;
  }

  else
  {
    v4 = sub_24AC54AA4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC50B1C()
{

  v0[26] = v0[25];
  v1 = v0[15];

  return MEMORY[0x2822009F8](sub_24AC54AA8, v1, 0);
}

uint64_t sub_24AC50B8C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E248, &qword_24ACD46A8);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0E8, &qword_24ACD44B8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC50CC8, v1, 0);
}

uint64_t sub_24AC50CC8()
{
  v26 = v0;
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (!Strong)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_11:

    v8 = v0[1];

    return v8();
  }

  v2 = Strong;
  v3 = *(v0[9] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  sub_24AC1C24C([v3 properties], v25);
  if ((v25[0] & 0x10) == 0)
  {
    sub_24AC1C24C([v3 properties], v25);
    if ((v25[0] & 0x20) == 0)
    {
      type metadata accessor for CentralManager.Error(0);
      sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
      swift_allocError();
      *v4 = 48;
LABEL_10:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_11;
    }
  }

  v5 = v0[9];
  v6 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState;
  v7 = *(v5 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState);
  if (v7 == 2 || v7 == 1)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    goto LABEL_10;
  }

  v10 = v0[14];
  v11 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v5 + v11, v10, &qword_27EF9E4F0, &unk_24ACD4130);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  LODWORD(v11) = (*(*(v12 - 8) + 48))(v10, 1, v12);
  sub_24AC212F4(v10, &qword_27EF9E4F0, &unk_24ACD4130);
  if (v11 != 1)
  {
    return sub_24AC4BE00();
  }

  v13 = v0[13];
  v14 = v0[9];
  v15 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v14 + v15, v13, &qword_27EF9E0E8, &qword_24ACD44B8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0F0, &qword_24ACD44C0);
  LODWORD(v14) = (*(*(v16 - 8) + 48))(v13, 1, v16);
  sub_24AC212F4(v13, &qword_27EF9E0E8, &qword_24ACD44B8);
  if (v14 != 1)
  {
    return sub_24AC4BE00();
  }

  v17 = v0[11];
  v18 = v0[12];
  v20 = v0[9];
  v19 = v0[10];
  *(v5 + v6) = 2;
  (*(v17 + 104))(v18, *MEMORY[0x277D858A0], v19);
  sub_24ACD08D0();
  v21 = sub_24AC54A58(&qword_27EF9E258, type metadata accessor for Characteristic, "QtV7Ѝ");
  v22 = swift_task_alloc();
  v0[16] = v22;
  *(v22 + 16) = v20;
  *(v22 + 24) = v2;
  v23 = swift_task_alloc();
  v0[17] = v23;
  *v23 = v0;
  v23[1] = sub_24AC5129C;
  v24 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v23, v20, v21, 0x2928796669746F6ELL, 0xE800000000000000, sub_24AC537BC, v22, v24);
}

uint64_t sub_24AC5129C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 72);

  if (v0)
  {
    v4 = sub_24AC5146C;
  }

  else
  {
    v4 = sub_24AC513E4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC513E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC5146C()
{
  v1 = *(v0 + 64);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E250, &qword_24ACD46B0);
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AC5153C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0E8, &qword_24ACD44B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0F0, &qword_24ACD44C0);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation;
  swift_beginAccess();
  sub_24AC463C4(v7, a2 + v10, &qword_27EF9E0E8, &qword_24ACD44B8);
  swift_endAccess();

  return sub_24ACD0880();
}

uint64_t sub_24AC516A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_24ACD07C0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;

  a5(0, 0, v10, a4, v12);
}

uint64_t sub_24AC517B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_24AC5184C;

  return sub_24AC4C1C0();
}

uint64_t sub_24AC5184C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_24AC5198C;

  return sub_24AC51A80();
}

uint64_t sub_24AC5198C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AC51A80()
{
  *(v1 + 40) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC51B1C, v0, 0);
}

uint64_t sub_24AC51B1C()
{
  v17 = v0;
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (!Strong)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_12:

    v14 = v0[1];

    return v14();
  }

  v2 = Strong;
  sub_24AC1C24C([*(v0[5] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject) properties], &v16);
  if ((v16 & 0x20) == 0)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    *v3 = 32;
LABEL_11:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_12;
  }

  v4 = v0[5];
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState;
  if (*(v4 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState) != 2)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    goto LABEL_11;
  }

  v6 = v0[6];
  v7 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v7, v6, &qword_27EF9E4F0, &unk_24ACD4130);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_24AC212F4(v6, &qword_27EF9E4F0, &unk_24ACD4130);
  v9 = v0[5];
  if (v7 != 1)
  {
    return sub_24AC4BE00();
  }

  *(v4 + v5) = 0;
  v10 = sub_24AC54A58(&qword_27EF9E258, type metadata accessor for Characteristic, "QtV7Ѝ");
  v11 = swift_task_alloc();
  v0[8] = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v2;
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_24AC51F3C;
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v12, v9, v10, 0x69746F4E706F7473, 0xEF2928676E697966, sub_24AC54620, v11, v13);
}

uint64_t sub_24AC51F3C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_24AC520D0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_24AC52064;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC52064()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC520D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC52144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC52258, a5, 0);
}

uint64_t sub_24AC52258()
{
  v1 = *(v0[13] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
  inited = swift_initStackObject();
  v0[19] = inited;
  *(inited + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_24AC52338;

  return sub_24AC29454(1, inited);
}

uint64_t sub_24AC52338()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {
    v3 = v2[13];

    return MEMORY[0x2822009F8](sub_24AC54AA0, v3, 0);
  }

  else
  {
    v4 = v2[19];
    swift_setDeallocating();

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24AC524A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC5252C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC1E290;

  return sub_24AC4AE4C();
}

uint64_t sub_24AC525B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24AC4B200(a1);
}

uint64_t sub_24AC52650()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC20274;

  return sub_24AC4C950();
}

uint64_t sub_24AC526DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24AC4D1C8(a1);
}

uint64_t sub_24AC52770(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC214AC;

  return sub_24AC4ED48(a1, a2);
}

uint64_t sub_24AC52818(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24AC50B8C(a1);
}

uint64_t sub_24AC528D0()
{
  v1 = sub_24ACA2CB0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24AC52954()
{
  sub_24ACD0A20();

  v0 = type metadata accessor for MockCharacteristic(0);
  v1 = sub_24AC54A58(&qword_27EF9E280, type metadata accessor for MockCharacteristic, &protocol conformance descriptor for MockCharacteristic);
  v2 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v3 = MEMORY[0x24C22D370](v0, v1);
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  sub_24AC537F4();
  v4 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AC52ADC()
{
  sub_24ACD0A20();

  v0 = type metadata accessor for Characteristic(0);
  v1 = sub_24AC54A58(&qword_27EF9E268, type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
  v2 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v3 = MEMORY[0x24C22D370](v0, v1);
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  sub_24AC537F4();
  v4 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AC52C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
  swift_beginAccess();
  sub_24AC463C4(v13, a2 + v16, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v17 = sub_24ACD07C0();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = sub_24AC54A58(&qword_27EF9E258, type metadata accessor for Characteristic, "QtV7Ѝ");
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = v18;
  v19[4] = a3;
  v19[5] = a2;
  swift_retain_n();

  sub_24AC7EA6C(0, 0, v10, v21, v19);
}

uint64_t sub_24AC52EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC52FF8, a5, 0);
}

uint64_t sub_24AC52FF8()
{
  v1 = *(v0[13] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
  inited = swift_initStackObject();
  v0[19] = inited;
  *(inited + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_24AC530D8;

  return sub_24AC29454(0, inited);
}

uint64_t sub_24AC530D8()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {
    v3 = v2[13];

    return MEMORY[0x2822009F8](sub_24AC5323C, v3, 0);
  }

  else
  {
    v4 = v2[19];
    swift_setDeallocating();

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24AC5323C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  swift_setDeallocating();

  v6 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v5 + v6, v4, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v3 + 48))(v4, 1, v2))
  {
    v7 = *(v0 + 112);

    sub_24AC212F4(v7, &qword_27EF9E4F0, &unk_24ACD4130);
  }

  else
  {
    v8 = *(v0 + 168);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);
    v12 = *(v0 + 112);
    (*(v10 + 16))(v9, v12, v11);
    sub_24AC212F4(v12, &qword_27EF9E4F0, &unk_24ACD4130);
    *(v0 + 88) = v8;
    sub_24ACD0750();
    (*(v10 + 8))(v9, v11);
  }

  v13 = *(v0 + 120);
  (*(*(v0 + 136) + 56))(v13, 1, 1, *(v0 + 128));
  swift_beginAccess();
  sub_24AC463C4(v13, v5 + v6, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t Characteristic.UpdatingState.hashValue.getter(unsigned __int8 a1)
{
  sub_24ACD0D10();
  MEMORY[0x24C22D480](a1);
  return sub_24ACD0D50();
}

uint64_t _s15FindMyBluetooth11CBDiscoveryC5ErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1);
  return sub_24ACD0D50();
}

uint64_t sub_24AC534E8(uint64_t a1)
{
  v2 = *v1;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v2);
  return sub_24ACD0D50();
}

uint64_t type metadata accessor for Characteristic(uint64_t a1)
{
  result = qword_2814AD3F0;
  if (!qword_2814AD3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24AC537F4()
{
  result = qword_27EF9DFD0;
  if (!qword_27EF9DFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9DDE8, &unk_24ACD37D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DFD0);
  }

  return result;
}

uint64_t sub_24AC53858(uint64_t a1)
{
  *(a1 + 8) = sub_24AC54A58(&qword_27EF9E260, type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
  result = sub_24AC54A58(&qword_27EF9E268, type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24AC53928()
{
  result = qword_27EF9E270;
  if (!qword_27EF9E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E270);
  }

  return result;
}

void sub_24AC53984(uint64_t a1)
{
  sub_24AC54264(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PeerPath(319);
    if (v2 <= 0x3F)
    {
      sub_24AC542BC(319, &qword_27EF9E278, &qword_27EF9E0F0, &qword_24ACD44C0);
      if (v3 <= 0x3F)
      {
        sub_24AC542BC(319, &qword_2814AD010, &unk_27EF9E070, &qword_24ACD4150);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of Characteristic.mtu.getter()
{
  v4 = (*(*v0 + 296) + **(*v0 + 296));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC2A800;

  return v4();
}

uint64_t dispatch thunk of Characteristic.read()(uint64_t a1)
{
  v6 = (*(*v1 + 304) + **(*v1 + 304));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC214AC;

  return v6(a1);
}

uint64_t dispatch thunk of Characteristic.readUnderlying()()
{
  v4 = (*(*v0 + 312) + **(*v0 + 312));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC20274;

  return v4();
}

uint64_t dispatch thunk of Characteristic.writeWithoutResponse(data:)(uint64_t a1)
{
  v6 = (*(*v1 + 320) + **(*v1 + 320));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC214AC;

  return v6(a1);
}

uint64_t dispatch thunk of Characteristic.write(data:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 328) + **(*v2 + 328));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AC214AC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of Characteristic.notify()(uint64_t a1)
{
  v6 = (*(*v1 + 336) + **(*v1 + 336));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC214AC;

  return v6(a1);
}

void sub_24AC54264(uint64_t a1)
{
  if (!qword_2814AE240)
  {
    type metadata accessor for Characteristic(255);
    v1 = sub_24ACCFFF0();
    if (!v2)
    {
      atomic_store(v1, &qword_2814AE240);
    }
  }
}

void sub_24AC542BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24ACD0970();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Characteristic.UpdatingState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Characteristic.UpdatingState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24AC54460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC214AC;

  return sub_24AC52144(a1, v4, v5, v7, v6);
}

uint64_t sub_24AC5456C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC517B8(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AC546A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC20274;

  return sub_24AC52EE4(a1, v4, v5, v7, v6);
}

uint64_t sub_24AC54760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AC214AC;

  return sub_24AC506B8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_72Tm()
{
  swift_unknownObjectRelease();

  sub_24AC46698(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AC54884(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AC214AC;

  return sub_24AC4E604(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24AC549A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214AC;

  return sub_24AC4C130();
}

uint64_t sub_24AC54A58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

FindMyBluetooth::PeripheralState_optional __swiftcall PeripheralState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if ((rawValue + 1) < 5)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_24AC54AD4()
{
  result = qword_27EF9E288;
  if (!qword_27EF9E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E288);
  }

  return result;
}

uint64_t sub_24AC54B28()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1 - 1);
  return sub_24ACD0D50();
}

uint64_t sub_24AC54BA0(uint64_t a1)
{
  v2 = *v1;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v2 - 1);
  return sub_24ACD0D50();
}

uint64_t getEnumTagSinglePayload for PeripheralState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PeripheralState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t CBUUID.uuidValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v64[3] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v62 = &v58 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v61 = &v58 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - v11;
  v13 = sub_24ACD0420();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v60 = &v58 - v18;
  v19 = [v2 data];
  v20 = sub_24ACD02D0();
  v22 = v20;
  v23 = v21;
  v24 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    v59 = v17;
    if (v24 != 2)
    {
LABEL_47:
      sub_24AC46698(v22, v23);
      goto LABEL_48;
    }

    v26 = v13;
    v27 = v2;
    v28 = v6;
    v29 = v19;
    v30 = v14;
    v31 = *(v20 + 16);
    v32 = *(v20 + 24);
    sub_24AC46698(v20, v21);
    v25 = v32 - v31;
    if (!__OFSUB__(v32, v31))
    {
      v14 = v30;
      v19 = v29;
      v6 = v28;
      v2 = v27;
      v13 = v26;
      v17 = v59;
      if (v25 == 16)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v24)
  {
    v39 = HIDWORD(v20);
    sub_24AC46698(v20, v21);
    LODWORD(v25) = v39 - v22;
    if (!__OFSUB__(v39, v22))
    {
      v25 = v25;
      if (v25 == 16)
      {
        goto LABEL_14;
      }

LABEL_8:
      if (v25 == 4)
      {
        v23 = v2;
        v60 = v19;
        v61 = v6;
        v33 = v62;
        sub_24ACD03B0();
        v34 = *(v14 + 48);
        if (v34(v33, 1, v13) != 1)
        {
          v62 = *(v14 + 32);
          (v62)(v17, v33, v13);
          v64[0] = sub_24ACD03A0();
          v35 = [v2 data];
          v22 = sub_24ACD02D0();
          v37 = v36;

          v23 = v14;
          sub_24AC561E0(v22, v37, v64, sub_24AC55FE0, sub_24AC55FE0);
          sub_24AC46698(v22, v37);

          v38 = v61;
          sub_24ACD0390();
          if (v34(v38, 1, v13) != 1)
          {
            (*(v14 + 8))(v17, v13);

            (v62)(v63, v38, v13);
          }

          goto LABEL_45;
        }

        __break(1u);
      }

      else
      {
        if (v25 != 2)
        {
LABEL_48:
          result = sub_24ACD0B20();
          __break(1u);
          return result;
        }

        sub_24ACD03B0();
        v62 = *(v14 + 48);
        if ((v62)(v12, 1, v13) != 1)
        {
          v45 = *(v14 + 32);
          v46 = v60;
          v45();
          v64[0] = sub_24ACD03A0();
          v47 = [v2 data];
          v48 = sub_24ACD02D0();
          v50 = v49;

          v23 = v14;
          sub_24AC561E0(v48, v50, v64, sub_24AC55F24, sub_24AC55F24);
          sub_24AC46698(v48, v50);
          v22 = v64[0];

          v51 = v61;
          sub_24ACD0390();
          if ((v62)(v51, 1, v13) != 1)
          {
            (*(v23 + 8))(v46, v13);

            (v45)(v63, v51, v13);
          }

          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    goto LABEL_39;
  }

  sub_24AC46698(v20, v21);
  v25 = BYTE6(v23);
  if (BYTE6(v23) != 16)
  {
    goto LABEL_8;
  }

LABEL_14:

  v40 = [v2 data];
  v41 = sub_24ACD02D0();
  v43 = v42;

  v44 = v43 >> 62;
  if ((v43 >> 62) > 1)
  {
    if (v44 != 2)
    {
      memset(v64, 0, 14);
      goto LABEL_37;
    }

    v53 = *(v41 + 16);
    v54 = *(v41 + 24);
    v55 = sub_24ACD01C0();
    if (v55)
    {
      v56 = sub_24ACD01F0();
      if (__OFSUB__(v53, v56))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v55 += v53 - v56;
    }

    if (!__OFSUB__(v54, v53))
    {
      goto LABEL_33;
    }

    __break(1u);
  }

  else if (!v44)
  {
    v64[0] = v41;
    LOWORD(v64[1]) = v43;
    BYTE2(v64[1]) = BYTE2(v43);
    BYTE3(v64[1]) = BYTE3(v43);
    BYTE4(v64[1]) = BYTE4(v43);
    BYTE5(v64[1]) = BYTE5(v43);
LABEL_37:
    sub_24AC5611C(v64);
    return sub_24AC46698(v41, v43);
  }

  if (v41 >> 32 < v41)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v55 = sub_24ACD01C0();
  if (v55)
  {
    v57 = sub_24ACD01F0();
    if (!__OFSUB__(v41, v57))
    {
      v55 += v41 - v57;
      goto LABEL_33;
    }

LABEL_42:
    __break(1u);
  }

LABEL_33:
  sub_24ACD01E0();
  sub_24AC5611C(v55);

  return sub_24AC46698(v41, v43);
}

uint64_t shortCBUUIDDescription(uuid:)(uint64_t a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v68 - v3;
  sub_24ACD03B0();
  v5 = sub_24ACD0420();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24AC563B4(v4);
    result = sub_24ACD0B20();
    __break(1u);
    return result;
  }

  v7 = sub_24ACD0370();
  v9 = v8;
  v10 = *(v6 + 8);
  v68[0] = v5;
  v10(v4, v5);
  v11 = v7;
  v68[1] = a1;
  v12 = sub_24ACD0370();
  v14 = v13;
  v15 = v9 >> 62;
  v73 = HIDWORD(v7);
  v74 = BYTE6(v9);
  if ((v9 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = v74;
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (v15 != 2)
  {
    goto LABEL_13;
  }

  v18 = *(v7 + 16);
  v17 = *(v7 + 24);
  v19 = __OFSUB__(v17, v18);
  v16 = v17 - v18;
  if (v19)
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(v73, v7))
    {
      goto LABEL_136;
    }

    v16 = v73 - v7;
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:
  v16 = 0;
LABEL_14:
  v69 = 0;
  v70 = 0;
  v20 = 0;
  v71 = v7 >> 32;
  v72 = v7;
  v80 = v16;
  v81 = -v16;
  v75 = v9;
  v77 = v7;
  v78 = v9 >> 62;
LABEL_15:
  v21 = v20 - 1;
  while (v81 + v21 != -1)
  {
    v23 = v21 + 1;
    if (v21 + 1 >= v16)
    {
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
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
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
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
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
    }

    v79 = v21 + 2;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_109;
    }

    if (v15 > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_137;
      }

      if (v23 < *(v11 + 16))
      {
        goto LABEL_110;
      }

      if (v23 >= *(v11 + 24))
      {
        goto LABEL_113;
      }

      v25 = sub_24ACD01C0();
      if (!v25)
      {
        goto LABEL_140;
      }

      v26 = v25;
      v27 = sub_24ACD01F0();
      v28 = v23 - v27;
      if (__OFSUB__(v23, v27))
      {
        goto LABEL_116;
      }

      goto LABEL_36;
    }

    if (v15)
    {
      if (v23 < v72 || v23 >= v71)
      {
        goto LABEL_112;
      }

      v29 = sub_24ACD01C0();
      if (!v29)
      {
        goto LABEL_138;
      }

      v26 = v29;
      v30 = sub_24ACD01F0();
      v28 = v23 - v30;
      if (__OFSUB__(v23, v30))
      {
        goto LABEL_114;
      }

LABEL_36:
      v24 = *(v26 + v28);
      goto LABEL_37;
    }

    if (v23 >= v74)
    {
      goto LABEL_111;
    }

    LOWORD(v82) = v11;
    BYTE2(v82) = BYTE2(v11);
    BYTE3(v82) = BYTE3(v11);
    BYTE4(v82) = v73;
    BYTE5(v82) = BYTE5(v11);
    BYTE6(v82) = BYTE6(v11);
    HIBYTE(v82) = HIBYTE(v11);
    LOWORD(v83) = v9;
    BYTE2(v83) = BYTE2(v9);
    BYTE3(v83) = BYTE3(v9);
    BYTE4(v83) = BYTE4(v9);
    BYTE5(v83) = BYTE5(v9);
    v24 = *(&v82 + v21 + 1);
LABEL_37:
    v31 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_139;
      }

      if (v23 < *(v12 + 16))
      {
        goto LABEL_117;
      }

      if (v23 >= *(v12 + 24))
      {
        goto LABEL_119;
      }

      v33 = v14 & 0x3FFFFFFFFFFFFFFFLL;
      v34 = sub_24ACD01C0();
      if (!v34)
      {
        goto LABEL_142;
      }

      v35 = v34;
      v36 = sub_24ACD01F0();
      if (__OFSUB__(v23, v36))
      {
        goto LABEL_121;
      }

      if (v23 < *(v12 + 16))
      {
        goto LABEL_123;
      }

      if (v23 >= *(v12 + 24))
      {
        goto LABEL_127;
      }

      v37 = *(v35 + v23 - v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = *(v12 + 16);
        v38 = *(v12 + 24);
        if (sub_24ACD01C0())
        {
          if (__OFSUB__(v39, sub_24ACD01F0()))
          {
            goto LABEL_134;
          }

          if (__OFSUB__(v38, v39))
          {
            goto LABEL_132;
          }
        }

        else if (__OFSUB__(v38, v39))
        {
          goto LABEL_132;
        }

        sub_24ACD0200();
        swift_allocObject();
        v49 = sub_24ACD01A0();

        v33 = v49;
        v9 = v75;
        LODWORD(v15) = v78;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v12 + 16);
        v50 = *(v12 + 24);
        sub_24ACD0280();
        v51 = swift_allocObject();
        *(v51 + 16) = v15;
        *(v51 + 24) = v50;
        LODWORD(v15) = v78;

        v12 = v51;
      }

      sub_24ACD0190();
      v52 = sub_24ACD01C0();
      if (!v52)
      {
        goto LABEL_146;
      }

      v53 = v52;
      v54 = sub_24ACD01F0();
      if (__OFSUB__(v23, v54))
      {
        goto LABEL_131;
      }

      *(v53 + v23 - v54) = v37 ^ v24;
      v14 = v33 | 0x8000000000000000;
      goto LABEL_72;
    }

    if (v31)
    {
      if (v23 >= v12 >> 32 || v23 < v12)
      {
        goto LABEL_118;
      }

      v40 = v14 & 0x3FFFFFFFFFFFFFFFLL;
      v41 = sub_24ACD01C0();
      if (!v41)
      {
        goto LABEL_141;
      }

      v42 = v41;
      v43 = sub_24ACD01F0();
      if (__OFSUB__(v23, v43))
      {
        goto LABEL_120;
      }

      v44 = *(v42 + v23 - v43);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (sub_24ACD01C0() && __OFSUB__(v12, sub_24ACD01F0()))
        {
          goto LABEL_133;
        }

        sub_24ACD0200();
        swift_allocObject();
        v45 = sub_24ACD01A0();

        v40 = v45;
      }

      sub_24ACD0190();
      v46 = sub_24ACD01C0();
      if (!v46)
      {
        goto LABEL_143;
      }

      v47 = v46;
      v48 = sub_24ACD01F0();
      v9 = v75;
      LODWORD(v15) = v78;
      if (__OFSUB__(v23, v48))
      {
        goto LABEL_122;
      }

      *(v47 + v23 - v48) = v44 ^ v24;
      v14 = v40 | 0x4000000000000000;
LABEL_72:
      v11 = v77;
      goto LABEL_73;
    }

    if (v23 >= BYTE6(v14))
    {
      goto LABEL_115;
    }

    v82 = v12;
    LOWORD(v83) = v14;
    BYTE2(v83) = BYTE2(v14);
    BYTE3(v83) = BYTE3(v14);
    BYTE4(v83) = BYTE4(v14);
    BYTE5(v83) = BYTE5(v14);
    v32 = *(&v82 + v21 + 1);
    v82 = v12;
    BYTE6(v83) = BYTE6(v14);
    WORD2(v83) = WORD2(v14);
    LODWORD(v83) = v14;
    *(&v82 + v21 + 1) = v32 ^ v24;
    v12 = v82;
    v14 = v76 & 0xF00000000000000 | v83 | ((WORD2(v83) | (BYTE6(v83) << 16)) << 32);
    v76 = v14;
LABEL_73:
    v55 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v55 != 2)
      {
        goto LABEL_144;
      }

      if (v23 < *(v12 + 16))
      {
        goto LABEL_125;
      }

      if (v23 >= *(v12 + 24))
      {
        goto LABEL_128;
      }

      v56 = sub_24ACD01C0();
      if (!v56)
      {
        goto LABEL_147;
      }

      v57 = v56;
      v58 = sub_24ACD01F0();
      v59 = v23 - v58;
      if (__OFSUB__(v23, v58))
      {
        goto LABEL_130;
      }
    }

    else
    {
      if (!v55)
      {
        if (v23 >= BYTE6(v14))
        {
          goto LABEL_124;
        }

        v82 = v12;
        LOWORD(v83) = v14;
        BYTE2(v83) = BYTE2(v14);
        BYTE3(v83) = BYTE3(v14);
        BYTE4(v83) = BYTE4(v14);
        BYTE5(v83) = BYTE5(v14);
        v22 = *(&v82 + v21 + 1);
        goto LABEL_17;
      }

      if (v23 >= v12 >> 32 || v23 < v12)
      {
        goto LABEL_126;
      }

      v60 = sub_24ACD01C0();
      if (!v60)
      {
        goto LABEL_145;
      }

      v57 = v60;
      v61 = sub_24ACD01F0();
      v59 = v23 - v61;
      if (__OFSUB__(v23, v61))
      {
        goto LABEL_129;
      }
    }

    v22 = *(v57 + v59);
LABEL_17:
    ++v21;
    v16 = v80;
    if (v22)
    {
      if (__OFADD__(v70, 1))
      {
        goto LABEL_135;
      }

      if ((v70 + 1) > 4)
      {
        goto LABEL_104;
      }

      ++v70;
      if (v21 < 2)
      {
        LODWORD(v69) = 1;
        v20 = v79;
      }

      else
      {
        v20 = v79;
        if (v21 - 2 <= 1)
        {
          HIDWORD(v69) = 1;
        }
      }

      goto LABEL_15;
    }
  }

  if (v70 < 1)
  {
    goto LABEL_105;
  }

  if ((v69 & 0x100000000) == 0)
  {
    if ((v69 & (v70 < 5)) != 0)
    {
      goto LABEL_102;
    }

LABEL_104:
    sub_24AC5641C();
    v63 = sub_24ACD0C20();
    goto LABEL_107;
  }

  if ((v69 & 1) == 0)
  {
    if (v70 > 2)
    {
      goto LABEL_104;
    }

LABEL_105:
    v62 = 2;
    goto LABEL_106;
  }

  if (v70 > 4)
  {
    goto LABEL_104;
  }

LABEL_102:
  v62 = 0;
LABEL_106:
  v64 = sub_24AC56174(v62, 3, v12, v14);
  v66 = v65;
  v82 = v64;
  v83 = v65;
  sub_24AC467AC();
  sub_24ACD0180();
  sub_24AC46698(v64, v66);
  v63 = sub_24ACD05B0();

LABEL_107:
  sub_24AC46698(v11, v9);
  sub_24AC46698(v12, v14);
  return v63;
}

uint64_t sub_24AC55F24(_BYTE *a1, uint64_t a2, char **a3)
{
  v4 = a1;
  v5 = *a1;
  v6 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_24AC56474(v6);
    *a3 = v6;
  }

  if (*(v6 + 2) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v6[34] = v5;
    v6 = *a3;
    LOBYTE(v4) = v4[1];
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if (result)
    {
      goto LABEL_5;
    }
  }

  result = sub_24AC56474(v6);
  v6 = result;
  *a3 = result;
LABEL_5:
  if (*(v6 + 2) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v6[35] = v4;
  }

  return result;
}

uint64_t sub_24AC55FE0(_BYTE *a1, uint64_t a2, char **a3)
{
  v4 = a1;
  v5 = *a1;
  v6 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (*(v6 + 2))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = sub_24AC56474(v6);
    *a3 = v6;
    if (*(v6 + 2))
    {
LABEL_3:
      v6[32] = v5;
      v6 = *a3;
      v5 = v4[1];
      v8 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v6;
      if (v8)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  v6 = sub_24AC56474(v6);
  *a3 = v6;
LABEL_4:
  if (*(v6 + 2) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v6[33] = v5;
    v6 = *a3;
    v5 = v4[2];
    v9 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  v6 = sub_24AC56474(v6);
  *a3 = v6;
LABEL_6:
  if (*(v6 + 2) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v6[34] = v5;
    v6 = *a3;
    LOBYTE(v4) = v4[3];
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if (result)
    {
      goto LABEL_8;
    }
  }

  result = sub_24AC56474(v6);
  v6 = result;
  *a3 = result;
LABEL_8:
  if (*(v6 + 2) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v6[35] = v4;
  }

  return result;
}

uint64_t sub_24AC56174(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 + 1 >= result)
  {
    return sub_24ACD02A0();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_24AC561E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *, char *), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v10[2] = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return (a4)(v10, v6, a3);
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    return sub_24AC56308(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
  }

  if (v5)
  {
    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_24AC56308(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
  }

  v10[0] = a1;
  LOWORD(v10[1]) = a2;
  BYTE2(v10[1]) = BYTE2(a2);
  BYTE3(v10[1]) = BYTE3(a2);
  BYTE4(v10[1]) = BYTE4(a2);
  BYTE5(v10[1]) = BYTE5(a2);
  v6 = v10 + BYTE6(a2);
  return (a4)(v10, v6, a3);
}

uint64_t sub_24AC56308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = sub_24ACD01C0();
  v10 = result;
  if (result)
  {
    result = sub_24ACD01F0();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_24ACD01E0();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return a5(v10, v16, a4);
}

uint64_t sub_24AC563B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AC5641C()
{
  result = qword_27EF9E4E0;
  if (!qword_27EF9E4E0)
  {
    sub_24ACD0420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E4E0);
  }

  return result;
}

uint64_t sub_24AC56488()
{
  v1[3] = v0;
  v2 = sub_24ACD0420();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC56548, v0, 0);
}

uint64_t sub_24AC56548()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_24ACD0A20();

  v0[2] = v3;
  v5 = type metadata accessor for Service(0);
  v6 = sub_24AC66384(&qword_27EF9DFB0, type metadata accessor for Service, &protocol conformance descriptor for Service);
  v7 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v8 = MEMORY[0x24C22D370](v5, v6);
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C8]);
  v9 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v9);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v10 = shortCBUUIDDescription(uuid:)(v1);
  v12 = v11;
  (*(v2 + 8))(v1, v4);
  MEMORY[0x24C22CD50](v10, v12);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  MEMORY[0x24C22CD50](91, 0xE100000000000000);

  MEMORY[0x24C22CD50](0x6D6972507369202CLL, 0xED0000203A797261);
  v13 = [*(v3 + OBJC_IVAR____TtC15FindMyBluetooth7Service_underlyingObject) isPrimary];
  v14 = v13 == 0;
  if (v13)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x24C22CD50](v15, v16);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);

  v17 = v0[1];

  return v17(60, 0xE100000000000000);
}

uint64_t sub_24AC56860()
{
  v1[3] = v0;
  v2 = sub_24ACD0420();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC56920, v0, 0);
}

uint64_t sub_24AC56920()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_24ACD0A20();

  v0[2] = v3;
  v5 = type metadata accessor for MockService(0);
  v6 = sub_24AC66384(&qword_27EF9DFB8, type metadata accessor for MockService, &protocol conformance descriptor for MockService);
  v7 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v8 = MEMORY[0x24C22D370](v5, v6);
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C8]);
  v9 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v9);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v10 = shortCBUUIDDescription(uuid:)(v1);
  v12 = v11;
  (*(v2 + 8))(v1, v4);
  MEMORY[0x24C22CD50](v10, v12);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  MEMORY[0x24C22CD50](91, 0xE100000000000000);

  MEMORY[0x24C22CD50](0x6D6972507369202CLL, 0xED0000203A797261);
  if (*(v3 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_isPrimary))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v3 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_isPrimary))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x24C22CD50](v13, v14);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);

  v15 = v0[1];

  return v15(60, 0xE100000000000000);
}

uint64_t MockService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_24AC56CBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

void sub_24AC56D1C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (*a2 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  sub_24AC56E10(v2, v3, v4);
  sub_24AC56E90(v6, v7, v8);
}

id sub_24AC56DB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

id sub_24AC56E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return (a3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

__n128 sub_24AC56E20(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *v3 = v8;
  v3[2] = v2;
  sub_24AC56E90(v4, v5, v6);
  return result;
}

void sub_24AC56E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }
}

uint64_t sub_24AC56F00(uint64_t a1)
{
  *(v2 + 88) = v1;
  *(v2 + 96) = *a1;
  *(v2 + 112) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_24AC56F30, v1, 0);
}

uint64_t sub_24AC56F30()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = (v0[11] + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v3;
  v4[1] = v1;
  v4[2] = v2;
  sub_24AC56E10(v3, v1, v2);
  sub_24AC56E90(v5, v6, v7);
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v9 = Strong;
    Strong = sub_24AC5701C;
    v10 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](Strong, v9, v10);
}

uint64_t sub_24AC5701C()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = (v0[15] + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  sub_24AC56E10(v3, v2, v1);
  sub_24AC56E90(v5, v6, v7);
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v9 = Strong;
    Strong = sub_24AC57110;
    v10 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](Strong, v9, v10);
}

uint64_t sub_24AC57110()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  v5 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  sub_24AC56E10(v4, v3, v2);
  sub_24AC56E90(v6, v7, v8);

  v9 = v0[1];

  return v9();
}

uint64_t MockService.__allocating_init(peripheral:identifier:isPrimary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_24AC572C8;

  return sub_24AC65860(a1, a2, a3);
}

uint64_t sub_24AC572C8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t MockService.init(peripheral:identifier:isPrimary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_24AC663CC;

  return sub_24AC65860(a1, a2, a3);
}

uint64_t sub_24AC574B4(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v4 = sub_24ACD0AF0();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC57618, v1, 0);
}

uint64_t sub_24AC57618()
{
  Strong = swift_weakLoadStrong();
  v0[30] = Strong;
  if (!Strong)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC66384(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = v0[18];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_discoveryInProgress;
  v0[31] = OBJC_IVAR____TtC15FindMyBluetooth11MockService_discoveryInProgress;
  if (*(v2 + v3))
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC66384(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_5:

    v4 = v0[1];

    return v4();
  }

  return MEMORY[0x2822009F8](sub_24AC57830, Strong, 0);
}

uint64_t sub_24AC57830()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v0 + 312) = *(v1 + v3);

  return MEMORY[0x2822009F8](sub_24AC578C8, v2, 0);
}

uint64_t sub_24AC578C8()
{
  if (*(v0 + 312) == 3)
  {
    v1 = (*(v0 + 144) + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior);
    swift_beginAccess();
    v2 = *v1;
    *(v0 + 256) = *v1;
    v3 = v1[1];
    *(v0 + 264) = v3;
    v4 = v1[2];
    *(v0 + 272) = v4;
    *(*(v0 + 144) + *(v0 + 248)) = 1;
    if (v4 < 0)
    {
      v8 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
      sub_24ACD0CB0();
      v9 = swift_task_alloc();
      *(v0 + 280) = v9;
      *v9 = v0;
      v9[1] = sub_24AC57B70;
    }

    else
    {
      sub_24ACD0CB0();
      v5 = swift_task_alloc();
      *(v0 + 296) = v5;
      *v5 = v0;
      v5[1] = sub_24AC57CEC;
    }

    return sub_24AC59658(v2, v3, 0, 0, 1);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC66384(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_24AC57B70()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = v2[28];
  v4 = v2[27];
  v5 = v2[26];
  v6 = v2[18];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_24AC58B84;
  }

  else
  {
    v7 = sub_24AC58AA8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AC57CEC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = v2[29];
  v4 = v2[27];
  v5 = v2[26];
  v6 = v2[18];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_24AC589E8;
  }

  else
  {
    v7 = sub_24AC57E68;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

unint64_t sub_24AC57E68()
{
  v1 = v0[18];
  if (v0[17])
  {
    v2 = v0[17];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v101 = sub_24AC65400(v2, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, sub_24AC59B10);

  v3 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockCharacteristics;
  v4 = *&v1[OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockCharacteristics];
  if (v4 >> 62)
  {
    goto LABEL_36;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v6 = MEMORY[0x277D84F90];
  v120 = v0;
  if (v5)
  {
    v127 = MEMORY[0x277D84F90];
    v7 = v4;

    result = sub_24AC64CA8(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      goto LABEL_89;
    }

    v9 = 0;
    v10 = v0[20];
    v6 = v127;
    v11 = v7;
    v121 = v1;
    v124 = v7 & 0xC000000000000001;
    v12 = (v10 + 16);
    v13 = v7;
    do
    {
      v14 = v0[25];
      v15 = v0[19];
      if (v124)
      {
        v16 = MEMORY[0x24C22D1B0](v9, v11);
        (*v12)(v14, v16 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id, v15);
        v0 = v120;
        swift_unknownObjectRelease();
      }

      else
      {
        (*v12)(v0[25], *(v11 + 8 * v9 + 32) + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id, v0[19]);
      }

      v18 = *(v127 + 16);
      v17 = *(v127 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_24AC64CA8((v17 > 1), v18 + 1, 1);
      }

      v19 = v0[25];
      v20 = v0[19];
      ++v9;
      *(v127 + 16) = v18 + 1;
      (*(v10 + 32))(v127 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v19, v20);
      v11 = v13;
    }

    while (v5 != v9);

    v1 = v121;
  }

  v122 = sub_24AC65400(v6, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, sub_24AC59B10);

  v21 = *&v1[v3];
  if (v21 >> 62)
  {
    v38 = *&v1[v3];
    v1 = sub_24ACD0B30();
    v21 = v38;
    v22 = &unk_27EF9E000;
    if (v1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v1 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = &unk_27EF9E000;
    if (v1)
    {
LABEL_18:
      v109 = v21 & 0xC000000000000001;
      v102 = v22[84];
      v103 = v0[18];
      v104 = v21 + 32;
      v105 = v21 & 0xFFFFFFFFFFFFFF8;
      v118 = v122 + 56;
      v106 = v0[20];
      v107 = v21;
      v114 = (v106 + 8);

      v23 = 0;
      v108 = v1;
      while (1)
      {
        if (v109)
        {
          v4 = MEMORY[0x24C22D1B0](v23, v107);
          v125 = v4;
          v26 = __OFADD__(v23, 1);
          v27 = v23 + 1;
          if (v26)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v23 >= *(v105 + 16))
          {
            goto LABEL_35;
          }

          v125 = *(v104 + 8 * v23);

          v26 = __OFADD__(v23, 1);
          v27 = v23 + 1;
          if (v26)
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            v37 = v4;
            v5 = sub_24ACD0B30();
            v4 = v37;
            goto LABEL_6;
          }
        }

        v111 = v27;
        if (*(v122 + 16))
        {
          v3 = v0[19];
          v28 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id;
          v1 = v122;
          sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088B8]);
          v29 = sub_24ACD0520();
          v30 = -1 << *(v122 + 32);
          v31 = v29 & ~v30;
          if ((*(v118 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
          {
            v32 = ~v30;
            v33 = *(v106 + 72);
            v1 = *(v106 + 16);
            while (1)
            {
              v3 = v0[24];
              v34 = v0[19];
              (v1)(v3, *(v122 + 48) + v31 * v33, v34);
              sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088C0]);
              v35 = sub_24ACD0550();
              v36 = *v114;
              (*v114)(v3, v34);
              if (v35)
              {
                break;
              }

              v31 = (v31 + 1) & v32;
              v0 = v120;
              if (((*(v118 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v0 = v120;
            v3 = v120[24];
            v24 = v120[19];
            (v1)(v3, v125 + v28, v24);
            v1 = v103;
            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v128 = *&v103[v102];
            *&v103[v102] = 0x8000000000000000;
            sub_24AC637CC(v125, v3, isUniquelyReferenced_nonNull_native, &qword_27EF9E350, &qword_24ACD4C68);
            v36(v3, v24);
            *&v103[v102] = v128;
            swift_endAccess();
          }
        }

LABEL_20:

        v23 = v111;
        if (v111 == v108)
        {

          break;
        }
      }
    }
  }

  v39 = v0[20];
  v40 = v0[18];

  v41 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_characteristics;
  swift_beginAccess();
  v123 = v41;
  v126 = v40;
  v42 = *(v40 + v41);
  v43 = -1;
  v44 = -1 << *(v42 + 32);
  if (-v44 < 64)
  {
    v43 = ~(-1 << -v44);
  }

  v45 = v43 & *(v42 + 64);
  v46 = (63 - v44) >> 6;
  v117 = v39;
  v119 = (v39 + 16);
  v47 = (v39 + 32);
  result = swift_bridgeObjectRetain_n();
  v48 = 0;
  v49 = MEMORY[0x277D84F90];
  if (!v45)
  {
    goto LABEL_43;
  }

  do
  {
LABEL_41:
    while (1)
    {
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = *(*(v42 + 56) + ((v48 << 9) | (8 * v50)));
      if (v51)
      {
        break;
      }

      if (!v45)
      {
        goto LABEL_43;
      }
    }

    v53 = v0[22];
    v112 = v0[23];
    v54 = v0[19];
    (*v119)(v53, v51 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id, v54);
    v55 = *v47;
    (*v47)(v112, v53, v54);
    v115 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_24AC1D2D4(0, v49[2] + 1, 1, v49);
    }

    v57 = v49[2];
    v56 = v49[3];
    v58 = v55;
    if (v57 >= v56 >> 1)
    {
      v49 = sub_24AC1D2D4((v56 > 1), v57 + 1, 1, v49);
    }

    v0 = v120;
    v59 = v120[23];
    v60 = v120[19];
    v49[2] = v57 + 1;
    v61 = v49 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v57;
    v47 = v115;
    result = v58(v61, v59, v60);
  }

  while (v45);
LABEL_43:
  while (1)
  {
    v52 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v52 >= v46)
    {

      v62 = sub_24AC65400(v49, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, sub_24AC59B10);

      if (*(v62 + 16) <= *(v101 + 16) >> 3)
      {
        sub_24AC5A620(v62);

        v63 = v101;
      }

      else
      {
        v63 = sub_24AC5AA68(v62, v101);
      }

      v64 = v0[20];
      v65 = v63 + 56;
      v66 = -1 << *(v63 + 32);
      if (-v66 < 64)
      {
        v67 = ~(-1 << -v66);
      }

      else
      {
        v67 = -1;
      }

      v68 = v67 & *(v63 + 56);
      result = swift_beginAccess();
      v69 = 0;
      v70 = (63 - v66) >> 6;
      v110 = (v64 + 8);
      v113 = v63 + 56;
      v116 = v63;
      while (2)
      {
        if (!v68)
        {
          v77 = v120;
          while (1)
          {
            v78 = v69 + 1;
            if (__OFADD__(v69, 1))
            {
              goto LABEL_86;
            }

            if (v78 >= v70)
            {
              v97 = v120[31];
              v98 = v120[18];
              swift_endAccess();

              *(v98 + v97) = 0;

              v99 = v120[1];
              v100 = MEMORY[0x277D84F90];

              return v99(v100);
            }

            v68 = *(v65 + 8 * v78);
            ++v69;
            if (v68)
            {
              v69 = v78;
              goto LABEL_69;
            }
          }
        }

        v77 = v120;
LABEL_69:
        v79 = v77[21];
        v80 = *(v117 + 72);
        v81 = *(v117 + 16);
        v81(v79, *(v63 + 48) + v80 * (__clz(__rbit64(v68)) | (v69 << 6)), v77[19]);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v129 = *(v126 + v123);
        v83 = v129;
        *(v126 + v123) = 0x8000000000000000;
        result = sub_24AC2A3B8(v79);
        v85 = v129[2];
        v86 = (v84 & 1) == 0;
        v26 = __OFADD__(v85, v86);
        v87 = v85 + v86;
        if (v26)
        {
          goto LABEL_87;
        }

        v88 = v84;
        if (v129[3] >= v87)
        {
          if (v82)
          {
            goto LABEL_74;
          }

          v96 = result;
          sub_24AC5EB0C(&qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9E350, &qword_24ACD4C68);
          result = v96;
          v83 = v129;
          if (v88)
          {
            goto LABEL_60;
          }

LABEL_75:
          v73 = v120;
          v91 = v120[21];
          v92 = v120[19];
          v83[(result >> 6) + 8] |= 1 << result;
          v93 = result;
          result = (v81)(v83[6] + result * v80, v91, v92);
          *(v83[7] + 8 * v93) = 0;
          v94 = v83[2];
          v26 = __OFADD__(v94, 1);
          v95 = v94 + 1;
          if (v26)
          {
            goto LABEL_88;
          }

          v83[2] = v95;
          v72 = 1;
        }

        else
        {
          v89 = v120[21];
          sub_24AC5C5F4(v87, v82, &qword_27EF9E350, &qword_24ACD4C68);
          v83 = v129;
          result = sub_24AC2A3B8(v89);
          if ((v88 & 1) != (v90 & 1))
          {

            return sub_24ACD0C80();
          }

LABEL_74:
          if ((v88 & 1) == 0)
          {
            goto LABEL_75;
          }

LABEL_60:
          v71 = v83[7];
          v72 = *(v71 + 8 * result);
          *(v71 + 8 * result) = 0;
          v73 = v120;
        }

        v68 &= v68 - 1;
        v74 = v73;
        v75 = v73[21];
        v76 = v74[19];
        *(v126 + v123) = v83;
        sub_24AC2B7BC(v72);
        result = (*v110)(v75, v76);
        v65 = v113;
        v63 = v116;
        continue;
      }
    }

    v45 = *(v42 + 64 + 8 * v52);
    ++v48;
    if (v45)
    {
      v48 = v52;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_24AC589E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC58AA8(uint64_t a1)
{
  *(v1[18] + v1[31]) = 0;
  swift_willThrow();

  v2 = v1[1];

  return v2();
}

uint64_t sub_24AC58B84()
{
  sub_24AC56E90(v0[32], v0[33], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24AC58C54(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AC58C74, v1, 0);
}

uint64_t sub_24AC58C74()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_characteristics;
  *(v0 + 56) = OBJC_IVAR____TtC15FindMyBluetooth11MockService_characteristics;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = *(v0 + 40);

    v5 = sub_24AC2A3B8(v4);
    if (v6)
    {
      v7 = *(*(v3 + 56) + 8 * v5);

      if (v7)
      {
        v8 = *(v0 + 8);

        return v8(v7);
      }
    }

    else
    {
    }
  }

  v10 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE0, &qword_24ACD37C8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  *(v0 + 64) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  *(v0 + 96) = v13;
  v14 = (v13 + 32) & ~v13;
  v15 = swift_allocObject();
  *(v0 + 72) = v15;
  *(v15 + 16) = xmmword_24ACD39E0;
  (*(v12 + 16))(v15 + v14, v10, v11);
  v16 = swift_task_alloc();
  *(v0 + 80) = v16;
  *v16 = v0;
  v16[1] = sub_24AC58E94;

  return sub_24AC574B4(v15);
}

uint64_t sub_24AC58E94(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v4 = *(v3 + 48);
    v5 = sub_24AC59164;
  }

  else
  {
    v6 = *(v3 + 48);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v5 = sub_24AC59008;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC59008()
{
  v1 = *(v0[6] + v0[7]);
  if (*(v1 + 16))
  {
    v2 = v0[5];

    v3 = sub_24AC2A3B8(v2);
    if (v4)
    {
      v5 = *(*(v1 + 56) + 8 * v3);

      if (v5)
      {
        v6 = v0[1];

        return v6(v5);
      }
    }

    else
    {
    }
  }

  type metadata accessor for CentralManager.Error(0);
  sub_24AC66384(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v8 = v0[1];

  return v8();
}

uint64_t sub_24AC59164()
{
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC59200(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockCharacteristics) = a1;
}

uint64_t MockService.deinit()
{
  v1 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_weakDestroy();

  sub_24AC56E90(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior + 8), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior + 16));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MockService.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_weakDestroy();

  sub_24AC56E90(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior + 8), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior + 16));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AC593D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC5946C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC1E290;

  return sub_24AC574B4(a1);
}

uint64_t sub_24AC59500(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC58C54(a1);
}

uint64_t sub_24AC59594()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC283BC;

  return sub_24AC56860();
}

uint64_t sub_24AC59658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24ACD0AE0();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24AC59758, 0, 0);
}

uint64_t sub_24AC59758()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_24ACD0AF0();
  v5 = sub_24AC66384(&qword_27EF9E358, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_24ACD0C90();
  sub_24AC66384(&qword_27EF9E360, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_24ACD0B00();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_24AC598E8;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_24AC598E8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AC59AA4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24AC59AA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC59B10(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = *v2;
  sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088B8]);
  v31 = a2;
  v11 = sub_24ACD0520();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088C0]);
      v19 = sub_24ACD0550();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    sub_24AC64194(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

uint64_t sub_24AC59DF4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = *v2;
  sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088B8]);
  v31 = a2;
  v11 = sub_24ACD0520();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      sub_24AC2B6A8(&qword_27EF9E140, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C0]);
      v19 = sub_24ACD0550();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    sub_24AC64458(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

uint64_t sub_24AC5A0D8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24ACD0D10();
  v6 = qword_24ACD4C88[a2];
  MEMORY[0x24C22D480](v6);
  v7 = sub_24ACD0D50();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (qword_24ACD4C88[*(*(v5 + 48) + v9)] != v6)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_24AC6471C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24AC5A1F0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24ACD0D10();
  sub_24ACD05E0();
  v8 = sub_24ACD0D50();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24ACD0C40() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24AC64884(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24AC5A340(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24ACD0420();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24AC66384(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_24ACD0520();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24AC66384(&unk_2814AE1F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_24ACD0550();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24AC64A04(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24AC5A620(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_24AC212F4(v5, &unk_27EF9E110, &unk_24ACD4540))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_24AC5F750(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24AC5A844(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_24AC212F4(v5, &qword_27EF9DFE0, &qword_24ACD4098))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_24AC5FA30(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24AC5AA68(unint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = (&v66 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v66 - v14);
  MEMORY[0x28223BE20](v13);
  v81 = (&v66 - v16);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v70 = v7;
  v18 = a1 + 56;
  v17 = *(a1 + 56);
  v19 = -1 << *(a1 + 32);
  v67 = ~v19;
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v73 = (63 - v19) >> 6;
  v87 = v10 + 2;
  v79 = (v10 + 6);
  v80 = (v10 + 7);
  v76 = (v10 + 4);
  v77 = a1;
  v83 = (a2 + 56);
  v89 = (v10 + 1);

  v23 = 0;
  v69 = v10;
  for (i = a1 + 56; ; v18 = i)
  {
    v24 = v21;
    v25 = v23;
    if (v21)
    {
LABEL_14:
      a1 = (v24 - 1) & v24;
      v29 = *(v77 + 48) + v10[9] * (__clz(__rbit64(v24)) | (v25 << 6));
      v30 = v10[2];
      v31 = v68;
      v30(v68, v29, v9);
      v32 = 0;
      v27 = v25;
    }

    else
    {
      v26 = v73 <= (v23 + 1) ? v23 + 1 : v73;
      v27 = v26 - 1;
      v28 = v23;
      while (1)
      {
        v25 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_58;
        }

        if (v25 >= v73)
        {
          break;
        }

        v24 = *(v18 + 8 * v25);
        ++v28;
        if (v24)
        {
          goto LABEL_14;
        }
      }

      a1 = 0;
      v32 = 1;
      v31 = v68;
    }

    v75 = *v80;
    v75(v31, v32, 1, v9);
    v74 = *v79;
    if (v74(v31, 1, v9) == 1)
    {
      sub_24AC212F4(v31, &unk_27EF9E110, &unk_24ACD4540);
      v60 = v77;
      goto LABEL_53;
    }

    v72 = *v76;
    v72(v81, v31, v9);
    v71 = sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088B8]);
    v33 = sub_24ACD0520();
    v34 = -1 << *(a2 + 32);
    v23 = v33 & ~v34;
    v25 = v23 >> 6;
    v18 = 1 << v23;
    if (((1 << v23) & v83[v23 >> 6]) != 0)
    {
      break;
    }

    v10 = v69;
    (*v89)(v81, v9);
LABEL_22:
    v23 = v27;
    v21 = a1;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v34;
  v35 = v69[9];
  v84 = v69[2];
  v85 = v35;
  while (1)
  {
    v84(v15, *(a2 + 48) + v85 * v23, v9);
    v36 = sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088C0]);
    v37 = sub_24ACD0550();
    v88 = *v89;
    v88(v15, v9);
    if (v37)
    {
      break;
    }

    v23 = (v23 + 1) & v82;
    v25 = v23 >> 6;
    v18 = 1 << v23;
    if (((1 << v23) & v83[v23 >> 6]) == 0)
    {
      v10 = v69;
      v88(v81, v9);
      goto LABEL_22;
    }
  }

  v82 = v36;
  v91 = v67;
  v92 = v27;
  v93 = a1;
  v10 = v77;
  v90[0] = v77;
  v90[1] = i;
  v38 = (v88)(v81, v9);
  v39 = *(a2 + 32);
  v66 = ((1 << v39) + 63) >> 6;
  v22 = 8 * v66;
  if ((v39 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v68 = &v66;
    MEMORY[0x28223BE20](v38);
    v41 = &v66 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v41, v83, v40);
    v42 = *&v41[8 * v25] & ~v18;
    v43 = *(a2 + 16);
    v81 = v41;
    *&v41[8 * v25] = v42;
    v44 = v43 - 1;
    v25 = i;
    v45 = v70;
    v46 = v73;
LABEL_26:
    v69 = v44;
    while (a1)
    {
      v47 = v27;
LABEL_38:
      v50 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v84(v45, v10[6] + (v50 | (v47 << 6)) * v85, v9);
      v51 = 0;
LABEL_39:
      v75(v45, v51, 1, v9);
      if (v74(v45, 1, v9) == 1)
      {
        sub_24AC212F4(v45, &unk_27EF9E110, &unk_24ACD4540);
        a2 = sub_24AC61598(v81, v66, v69, a2);
        goto LABEL_52;
      }

      v72(v86, v45, v9);
      v52 = sub_24ACD0520();
      v53 = a2;
      v54 = -1 << *(a2 + 32);
      v23 = v52 & ~v54;
      v55 = v23 >> 6;
      v18 = 1 << v23;
      if (((1 << v23) & v83[v23 >> 6]) != 0)
      {
        v84(v15, *(v53 + 48) + v23 * v85, v9);
        v56 = sub_24ACD0550();
        v88(v15, v9);
        if ((v56 & 1) == 0)
        {
          v57 = ~v54;
          do
          {
            v23 = (v23 + 1) & v57;
            v55 = v23 >> 6;
            v18 = 1 << v23;
            if (((1 << v23) & v83[v23 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v53 + 48) + v23 * v85, v9);
            v58 = sub_24ACD0550();
            v88(v15, v9);
          }

          while ((v58 & 1) == 0);
        }

        v88(v86, v9);
        v59 = v81[v55];
        v81[v55] = v59 & ~v18;
        a2 = v53;
        v10 = v77;
        v25 = i;
        v45 = v70;
        v46 = v73;
        if ((v59 & v18) != 0)
        {
          v44 = v69 - 1;
          if (__OFSUB__(v69, 1))
          {
            __break(1u);
          }

          if (v69 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v9);
        a2 = v53;
        v10 = v77;
        v25 = i;
        v45 = v70;
        v46 = v73;
      }
    }

    if (v46 <= (v27 + 1))
    {
      v48 = v27 + 1;
    }

    else
    {
      v48 = v46;
    }

    v49 = v48 - 1;
    while (1)
    {
      v47 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v47 >= v46)
      {
        a1 = 0;
        v51 = 1;
        v27 = v49;
        goto LABEL_39;
      }

      a1 = *(v25 + 8 * v47);
      ++v27;
      if (a1)
      {
        v27 = v47;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v62 = v22;

    v81 = a2;
    v63 = v62;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v64 = v81;

      a2 = v64;
      continue;
    }

    break;
  }

  v65 = swift_slowAlloc();
  memcpy(v65, v83, v63);
  a2 = sub_24AC60BE8(v65, v66, v81, v23, v90);

  MEMORY[0x24C22DC60](v65, -1, -1);
  v10 = v90[0];
  v67 = v91;
LABEL_52:
  v60 = v10;
LABEL_53:
  sub_24AC4784C(v60);
  return a2;
}

uint64_t sub_24AC5B4D0(unint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = (&v66 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v66 - v14);
  MEMORY[0x28223BE20](v13);
  v81 = (&v66 - v16);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v70 = v7;
  v18 = a1 + 56;
  v17 = *(a1 + 56);
  v19 = -1 << *(a1 + 32);
  v67 = ~v19;
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v73 = (63 - v19) >> 6;
  v87 = v10 + 2;
  v79 = (v10 + 6);
  v80 = (v10 + 7);
  v76 = (v10 + 4);
  v77 = a1;
  v83 = (a2 + 56);
  v89 = (v10 + 1);

  v23 = 0;
  v69 = v10;
  for (i = a1 + 56; ; v18 = i)
  {
    v24 = v21;
    v25 = v23;
    if (v21)
    {
LABEL_14:
      a1 = (v24 - 1) & v24;
      v29 = *(v77 + 48) + v10[9] * (__clz(__rbit64(v24)) | (v25 << 6));
      v30 = v10[2];
      v31 = v68;
      v30(v68, v29, v9);
      v32 = 0;
      v27 = v25;
    }

    else
    {
      v26 = v73 <= (v23 + 1) ? v23 + 1 : v73;
      v27 = v26 - 1;
      v28 = v23;
      while (1)
      {
        v25 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_58;
        }

        if (v25 >= v73)
        {
          break;
        }

        v24 = *(v18 + 8 * v25);
        ++v28;
        if (v24)
        {
          goto LABEL_14;
        }
      }

      a1 = 0;
      v32 = 1;
      v31 = v68;
    }

    v75 = *v80;
    v75(v31, v32, 1, v9);
    v74 = *v79;
    if (v74(v31, 1, v9) == 1)
    {
      sub_24AC212F4(v31, &qword_27EF9DFE0, &qword_24ACD4098);
      v60 = v77;
      goto LABEL_53;
    }

    v72 = *v76;
    v72(v81, v31, v9);
    v71 = sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088B8]);
    v33 = sub_24ACD0520();
    v34 = -1 << *(a2 + 32);
    v23 = v33 & ~v34;
    v25 = v23 >> 6;
    v18 = 1 << v23;
    if (((1 << v23) & v83[v23 >> 6]) != 0)
    {
      break;
    }

    v10 = v69;
    (*v89)(v81, v9);
LABEL_22:
    v23 = v27;
    v21 = a1;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v34;
  v35 = v69[9];
  v84 = v69[2];
  v85 = v35;
  while (1)
  {
    v84(v15, *(a2 + 48) + v85 * v23, v9);
    v36 = sub_24AC2B6A8(&qword_27EF9E140, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C0]);
    v37 = sub_24ACD0550();
    v88 = *v89;
    v88(v15, v9);
    if (v37)
    {
      break;
    }

    v23 = (v23 + 1) & v82;
    v25 = v23 >> 6;
    v18 = 1 << v23;
    if (((1 << v23) & v83[v23 >> 6]) == 0)
    {
      v10 = v69;
      v88(v81, v9);
      goto LABEL_22;
    }
  }

  v82 = v36;
  v91 = v67;
  v92 = v27;
  v93 = a1;
  v10 = v77;
  v90[0] = v77;
  v90[1] = i;
  v38 = (v88)(v81, v9);
  v39 = *(a2 + 32);
  v66 = ((1 << v39) + 63) >> 6;
  v22 = 8 * v66;
  if ((v39 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v68 = &v66;
    MEMORY[0x28223BE20](v38);
    v41 = &v66 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v41, v83, v40);
    v42 = *&v41[8 * v25] & ~v18;
    v43 = *(a2 + 16);
    v81 = v41;
    *&v41[8 * v25] = v42;
    v44 = v43 - 1;
    v25 = i;
    v45 = v70;
    v46 = v73;
LABEL_26:
    v69 = v44;
    while (a1)
    {
      v47 = v27;
LABEL_38:
      v50 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v84(v45, v10[6] + (v50 | (v47 << 6)) * v85, v9);
      v51 = 0;
LABEL_39:
      v75(v45, v51, 1, v9);
      if (v74(v45, 1, v9) == 1)
      {
        sub_24AC212F4(v45, &qword_27EF9DFE0, &qword_24ACD4098);
        a2 = sub_24AC618C4(v81, v66, v69, a2);
        goto LABEL_52;
      }

      v72(v86, v45, v9);
      v52 = sub_24ACD0520();
      v53 = a2;
      v54 = -1 << *(a2 + 32);
      v23 = v52 & ~v54;
      v55 = v23 >> 6;
      v18 = 1 << v23;
      if (((1 << v23) & v83[v23 >> 6]) != 0)
      {
        v84(v15, *(v53 + 48) + v23 * v85, v9);
        v56 = sub_24ACD0550();
        v88(v15, v9);
        if ((v56 & 1) == 0)
        {
          v57 = ~v54;
          do
          {
            v23 = (v23 + 1) & v57;
            v55 = v23 >> 6;
            v18 = 1 << v23;
            if (((1 << v23) & v83[v23 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v53 + 48) + v23 * v85, v9);
            v58 = sub_24ACD0550();
            v88(v15, v9);
          }

          while ((v58 & 1) == 0);
        }

        v88(v86, v9);
        v59 = v81[v55];
        v81[v55] = v59 & ~v18;
        a2 = v53;
        v10 = v77;
        v25 = i;
        v45 = v70;
        v46 = v73;
        if ((v59 & v18) != 0)
        {
          v44 = v69 - 1;
          if (__OFSUB__(v69, 1))
          {
            __break(1u);
          }

          if (v69 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v9);
        a2 = v53;
        v10 = v77;
        v25 = i;
        v45 = v70;
        v46 = v73;
      }
    }

    if (v46 <= (v27 + 1))
    {
      v48 = v27 + 1;
    }

    else
    {
      v48 = v46;
    }

    v49 = v48 - 1;
    while (1)
    {
      v47 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v47 >= v46)
      {
        a1 = 0;
        v51 = 1;
        v27 = v49;
        goto LABEL_39;
      }

      a1 = *(v25 + 8 * v47);
      ++v27;
      if (a1)
      {
        v27 = v47;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v62 = v22;

    v81 = a2;
    v63 = v62;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v64 = v81;

      a2 = v64;
      continue;
    }

    break;
  }

  v65 = swift_slowAlloc();
  memcpy(v65, v83, v63);
  a2 = sub_24AC610C0(v65, v66, v81, v23, v90);

  MEMORY[0x24C22DC60](v65, -1, -1);
  v10 = v90[0];
  v67 = v91;
LABEL_52:
  v60 = v10;
LABEL_53:
  sub_24AC4784C(v60);
  return a2;
}

uint64_t sub_24AC5BF4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24ACD0420();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E370, &qword_24ACD4C78);
  v39 = v4;
  result = sub_24ACD0B50();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_24AC66384(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24ACD0520();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24AC5C328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E710, &unk_24ACD4680);
  v33 = v4;
  result = sub_24ACD0B50();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_24AC1BFB8(v24, v34);
      }

      else
      {
        sub_24AC2B940(v24, v34);
      }

      sub_24ACD0D10();
      sub_24ACD05E0();
      result = sub_24ACD0D50();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_24AC1BFB8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24AC5C5F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_24ACD0B50();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088B8]);
      result = sub_24ACD0520();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_24AC5C9D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_24ACD0B50();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_24AC2B6A8(&qword_27EF9DFC0, &qword_27EF9E040, qword_24ACD4100, MEMORY[0x277D088B8]);
      result = sub_24ACD0520();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_24AC5CDC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_24ACD0B50();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088B8]);
      result = sub_24ACD0520();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_24AC5D1A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E300, &qword_24ACD5DC0);
  result = sub_24ACD0B50();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        sub_24AC46630(v30, *(&v30 + 1));
      }

      result = MEMORY[0x24C22D460](*(v7 + 40), v20, 1);
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
      *(*(v7 + 56) + 16 * v15) = v30;
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

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
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

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24AC5D424(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - v6;
  v7 = sub_24ACD0420();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2F8, &qword_24ACD4C18);
  v47 = v4;
  result = sub_24ACD0B50();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_24AC66384(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24ACD0520();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_24AC5D8D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E320, &qword_24ACD4C38);
  v39 = v4;
  result = sub_24ACD0B50();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_24AC2B6A8(&qword_27EF9DFC0, &qword_27EF9E040, qword_24ACD4100, MEMORY[0x277D088B8]);
      result = sub_24ACD0520();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24AC5DCB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2D8, &qword_24ACD4BE0);
  v39 = v4;
  result = sub_24ACD0B50();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_24AC2B6A8(&qword_27EF9DFC0, &qword_27EF9E040, qword_24ACD4100, MEMORY[0x277D088B8]);
      result = sub_24ACD0520();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24AC5E094(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24ACD0420();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_24AC5E14C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_24AC5E210(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  *(a4[7] + 8 * a1) = a3;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_24AC5E2CC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24ACD0420();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_24AC5E3F0()
{
  v1 = v0;
  v33 = sub_24ACD0420();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E370, &qword_24ACD4C78);
  v3 = *v0;
  v4 = sub_24ACD0B40();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_24AC5E670()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E710, &unk_24ACD4680);
  v2 = *v0;
  v3 = sub_24ACD0B40();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_24AC2B940(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24AC1BFB8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_24AC5E860(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_24ACD0B40();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v5;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v38 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = v39;
        v24 = *(v39 + 72) * v22;
        v26 = v36;
        v25 = v37;
        (*(v39 + 16))(v36, *(v7 + 48) + v24, v37);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v7;
        v29 = v38;
        (*(v23 + 32))(*(v38 + 48) + v24, v26, v25);
        v30 = *(v29 + 56);
        v7 = v28;
        *(v30 + 8 * v22) = v27;

        v17 = v40;
      }

      while (v40);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v32;
        v9 = v38;
        goto LABEL_18;
      }

      v21 = *(v33 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v40 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v5 = v9;
  }

  return result;
}

void *sub_24AC5EB0C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = *v4;
  v10 = sub_24ACD0B40();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v7;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v7 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v11;
  }

  return result;
}

void *sub_24AC5ED7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E300, &qword_24ACD5DC0);
  v2 = *v0;
  v3 = sub_24ACD0B40();
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
        result = sub_24AC46630(v18, *(&v18 + 1));
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

char *sub_24AC5EEE4()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - v2;
  v39 = sub_24ACD0420();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2F8, &qword_24ACD4C18);
  v4 = *v0;
  v5 = sub_24ACD0B40();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_24AC5F240()
{
  v1 = v0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E320, &qword_24ACD4C38);
  v3 = *v0;
  v4 = sub_24ACD0B40();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_24AC5F4C8()
{
  v1 = v0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2D8, &qword_24ACD4BE0);
  v3 = *v0;
  v4 = sub_24ACD0B40();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_24AC5F750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = *v2;
  sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088B8]);
  v31 = a1;
  v10 = sub_24ACD0520();
  v29 = v9 + 56;
  v30 = v9;
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    while (1)
    {
      v18 = v17 * v12;
      v14(v8, *(v30 + 48) + v17 * v12, v5);
      sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088C0]);
      v19 = sub_24ACD0550();
      (*(v15 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v29 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24AC61BF0(&qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9E348, &qword_24ACD4C60);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18, v5);
    sub_24AC630B0(v12, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_24AC5FA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = *v2;
  sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088B8]);
  v31 = a1;
  v10 = sub_24ACD0520();
  v29 = v9 + 56;
  v30 = v9;
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    while (1)
    {
      v18 = v17 * v12;
      v14(v8, *(v30 + 48) + v17 * v12, v5);
      sub_24AC2B6A8(&qword_27EF9E140, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C0]);
      v19 = sub_24ACD0550();
      (*(v15 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v29 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24AC61BF0(&unk_27EF9E090, &qword_24ACD37C0, &qword_27EF9E338, &qword_24ACD4C50);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18, v5);
    sub_24AC630B0(v12, &unk_27EF9E090, &qword_24ACD37C0, &qword_27EF9DFD8);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_24AC5FD10(uint64_t a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E348, &qword_24ACD4C60);
  result = sub_24ACD09F0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088B8]);
      result = sub_24ACD0520();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_24AC60070(uint64_t a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E338, &qword_24ACD4C50);
  result = sub_24ACD09F0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088B8]);
      result = sub_24ACD0520();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_24AC603D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E330, &qword_24ACD4C48);
  result = sub_24ACD09F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_24ACD0D10();
      MEMORY[0x24C22D480](qword_24ACD4C88[v17]);
      result = sub_24ACD0D50();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24AC6062C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2E8, &qword_24ACD4C00);
  result = sub_24ACD09F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24ACD0D10();
      sub_24ACD05E0();
      result = sub_24ACD0D50();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24AC6088C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_24ACD0420();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2E0, &qword_24ACD4BF8);
  result = sub_24ACD09F0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_24AC66384(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24ACD0520();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_24AC60BE8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v13 = MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v24 = *a5;
        v23 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v23 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v24 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v24;
        a5[1] = v23;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_24AC212F4(v11, &unk_27EF9E110, &unk_24ACD4540);
          v45 = v61;

          return sub_24AC61598(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088B8]);
        v35 = sub_24ACD0520();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088C0]);
        v43 = sub_24ACD0550();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_24AC610C0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v13 = MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v24 = *a5;
        v23 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v23 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v24 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v24;
        a5[1] = v23;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_24AC212F4(v11, &qword_27EF9DFE0, &qword_24ACD4098);
          v45 = v61;

          return sub_24AC618C4(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088B8]);
        v35 = sub_24ACD0520();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_24AC2B6A8(&qword_27EF9E140, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C0]);
        v43 = sub_24ACD0550();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_24AC61598(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - v9;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E348, &qword_24ACD4C60);
  result = sub_24ACD0A00();
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
    sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088B8]);
    result = sub_24ACD0520();
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

uint64_t sub_24AC618C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - v9;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E338, &qword_24ACD4C50);
  result = sub_24ACD0A00();
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
    sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088B8]);
    result = sub_24ACD0520();
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

void *sub_24AC61BF0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *v4;
  v13 = sub_24ACD09E0();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v7;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v9 + 32;
    for (i = v9 + 16; v21; result = (*(v9 + 32))(*(v14 + 48) + v26, v11, v8))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v9 + 72) * (v23 | (v18 << 6));
      (*(v9 + 16))(v11, *(v12 + 48) + v26, v8);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v7 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v14;
  }

  return result;
}

void *sub_24AC61E1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E330, &qword_24ACD4C48);
  v2 = *v0;
  v3 = sub_24ACD09E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_24AC61F5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2E8, &qword_24ACD4C00);
  v2 = *v0;
  v3 = sub_24ACD09E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_24AC620B8()
{
  v1 = v0;
  v2 = sub_24ACD0420();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2E0, &qword_24ACD4BF8);
  v6 = *v0;
  v7 = sub_24ACD09E0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_24AC622F0(uint64_t a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E348, &qword_24ACD4C60);
  v7 = sub_24ACD09F0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088B8]);
      result = sub_24ACD0520();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_24AC62610(uint64_t a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E338, &qword_24ACD4C50);
  v7 = sub_24ACD09F0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088B8]);
      result = sub_24ACD0520();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_24AC62930(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E330, &qword_24ACD4C48);
  result = sub_24ACD09F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_24ACD0D10();
      MEMORY[0x24C22D480](qword_24ACD4C88[v16]);
      result = sub_24ACD0D50();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24AC62B5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2E8, &qword_24ACD4C00);
  result = sub_24ACD09F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24ACD0D10();

      sub_24ACD05E0();
      result = sub_24ACD0D50();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24AC62D94(uint64_t a1)
{
  v2 = v1;
  v33 = sub_24ACD0420();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2E0, &qword_24ACD4BF8);
  v7 = sub_24ACD09F0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_24AC66384(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24ACD0520();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}