id sub_24AF1549C()
{
  if (MEMORY[0x24C235020]())
  {
    return MEMORY[0x277D84F90];
  }

  result = [*(v0 + 128) devices];
  if (result)
  {
    v2 = result;
    sub_24AED0EAC(0, &qword_281392DB8, 0x277D186E0);
    v3 = sub_24AF3549C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LocalMessaging.deinit()
{

  sub_24AED56FC(*(v0 + 160), *(v0 + 168));
  sub_24AED56FC(*(v0 + 176), *(v0 + 184));
  sub_24AED56FC(*(v0 + 192), *(v0 + 200));
  sub_24AED56FC(*(v0 + 208), *(v0 + 216));
  sub_24AED56FC(*(v0 + 224), *(v0 + 232));
  sub_24AED56FC(*(v0 + 240), *(v0 + 248));
  sub_24AED56FC(*(v0 + 256), *(v0 + 264));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t LocalMessaging.__deallocating_deinit()
{
  LocalMessaging.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t LocalMessaging.send(message:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = *v3;
  v4[7] = type metadata accessor for MessagingOptions(0);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v7 = type metadata accessor for Message(0, *(v5 + 80), *(v5 + 88), v6);
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF1575C, v3, 0);
}

uint64_t sub_24AF1575C()
{
  v102 = v0;
  v1 = *(v0[4] + *(v0[7] + 20));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v100 = MEMORY[0x277D84F90];
    sub_24AEF6148(0, v2, 0);
    v3 = v100;
    v4 = *(v100 + 16);
    v5 = 16 * v4;
    v6 = (v1 + 48);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v100 = v3;
      v9 = *(v3 + 24);

      if (v4 >= v9 >> 1)
      {
        sub_24AEF6148((v9 > 1), v4 + 1, 1);
        v3 = v100;
      }

      *(v3 + 16) = v4 + 1;
      v10 = v3 + v5;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      v5 += 16;
      v6 += 3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v11 = sub_24AEF69F8(v3);
  v0[14] = v11;

  sub_24AF350CC();
  swift_allocObject();
  sub_24AF350BC();
  swift_getWitnessTable();
  v12 = sub_24AF3509C();
  v0[15] = v12;
  v0[16] = v13;
  v14 = v12;
  v15 = v13;
  v16 = v0[7];
  v17 = v0[4];

  v18 = *(v17 + *(v16 + 36));
  v19 = 0x6F707365722F7728;
  if (!*(v17 + *(v16 + 24)))
  {
    v19 = 0;
  }

  v20 = 0xE000000000000000;
  if (*(v17 + *(v16 + 24)))
  {
    v20 = 0xED0000202965736ELL;
  }

  v100 = v19;
  v101 = v20;
  if (v18)
  {
    v21 = 0xD000000000000017;
  }

  else
  {
    v21 = 0x6567617373656DLL;
  }

  if (v18)
  {
    v22 = 0x800000024AF36C70;
  }

  else
  {
    v22 = 0xE700000000000000;
  }

  MEMORY[0x24C235440](v21, v22);

  v29 = v101;
  v30 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    v31 = 0;
    if (v30 != 2)
    {
      goto LABEL_25;
    }

    v33 = *(v14 + 16);
    v32 = *(v14 + 24);
    v31 = v32 - v33;
    if (!__OFSUB__(v32, v33))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v30)
  {
    v31 = BYTE6(v15);
    goto LABEL_25;
  }

  if (__OFSUB__(HIDWORD(v14), v14))
  {
    __break(1u);
    return MEMORY[0x28215EC68](v23, v24, v25, v26, v27, v28);
  }

  v31 = HIDWORD(v14) - v14;
LABEL_25:
  if ([objc_opt_self() checkMessageSize:v31 priority:300])
  {
    v97 = v100;
    v98 = v14;
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v34 = v0[13];
    v35 = v0[10];
    v36 = v0[11];
    v37 = v0[9];
    v39 = v0[3];
    v38 = v0[4];
    v40 = sub_24AF3529C();
    __swift_project_value_buffer(v40, qword_281392F20);
    v96 = *(v36 + 16);
    v96(v34, v39, v35);
    sub_24AF226D0(v38, v37, type metadata accessor for MessagingOptions);

    v41 = sub_24AF3527C();
    v42 = sub_24AF3572C();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[13];
    v99 = v15;
    if (v43)
    {
      v45 = v0[11];
      log = v41;
      v46 = v0[10];
      v91 = v0[12];
      v92 = v0[9];
      v94 = v42;
      v47 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v100 = v93;
      *v47 = 136316162;
      v51 = sub_24AF139CC(v93, v48, v49, v50);
      v53 = sub_24AEF599C(v51, v52, &v100);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2082;
      v54 = sub_24AEF599C(v97, v29, &v100);

      *(v47 + 14) = v54;
      *(v47 + 22) = 2082;
      v96(v91, v44, v46);
      v55 = *(v45 + 8);
      v55(v44, v46);
      v56 = Message.description.getter(v46);
      v58 = v57;
      v55(v91, v46);
      v59 = sub_24AEF599C(v56, v58, &v100);

      *(v47 + 24) = v59;
      *(v47 + 32) = 2080;
      v60 = sub_24AF3567C();
      v62 = sub_24AEF599C(v60, v61, &v100);

      *(v47 + 34) = v62;
      *(v47 + 42) = 2082;
      sub_24AF3521C();
      sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v63 = sub_24AF35C0C();
      v65 = v64;
      sub_24AF22BCC(v92, type metadata accessor for MessagingOptions);
      v66 = sub_24AEF599C(v63, v65, &v100);

      *(v47 + 44) = v66;
      _os_log_impl(&dword_24AECF000, log, v94, "%s: Sending %{public}s: %{public}s to %s with identifier: %{public}s", v47, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v93, -1, -1);
      MEMORY[0x24C236490](v47, -1, -1);
    }

    else
    {
      v70 = v0[9];
      (*(v0[11] + 8))(v44, v0[10]);

      sub_24AF22BCC(v70, type metadata accessor for MessagingOptions);
    }

    sub_24AF226D0(v0[4], v0[8], type metadata accessor for MessagingOptions);
    v71 = sub_24AF3527C();
    v72 = sub_24AF3572C();
    v73 = os_log_type_enabled(v71, v72);
    v74 = v0[8];
    if (v73)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v100 = v76;
      *v75 = 136446466;
      v80 = sub_24AF139CC(v76, v77, v78, v79);
      v82 = sub_24AEF599C(v80, v81, &v100);

      *(v75 + 4) = v82;
      *(v75 + 12) = 2080;
      MessagingOptions.dictionaryValue.getter();
      v83 = sub_24AF3530C();
      v85 = v84;

      sub_24AF22BCC(v74, type metadata accessor for MessagingOptions);
      v86 = sub_24AEF599C(v83, v85, &v100);

      *(v75 + 14) = v86;
      _os_log_impl(&dword_24AECF000, v71, v72, "%{public}s: IDSSendMessageOptions: %s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v76, -1, -1);
      MEMORY[0x24C236490](v75, -1, -1);
    }

    else
    {

      sub_24AF22BCC(v74, type metadata accessor for MessagingOptions);
    }

    v87 = v0[5];
    v88 = swift_task_alloc();
    v0[17] = v88;
    v89 = *(v0 + 3);
    *(v88 + 16) = v87;
    *(v88 + 24) = v89;
    *(v88 + 40) = v98;
    *(v88 + 48) = v99;
    *(v88 + 56) = v11;
    v90 = swift_task_alloc();
    v0[18] = v90;
    v28 = sub_24AF3521C();
    *v90 = v0;
    v90[1] = sub_24AEE8530;
    v23 = v0[2];
    v26 = sub_24AF21204;
    v24 = 0xD00000000000001DLL;
    v25 = 0x800000024AF36C50;
    v27 = v88;

    return MEMORY[0x28215EC68](v23, v24, v25, v26, v27, v28);
  }

  sub_24AED9680();
  swift_allocError();
  *v67 = 2;
  swift_willThrow();
  sub_24AED6198(v14, v15);

  v68 = v0[1];

  return v68();
}

uint64_t sub_24AF160C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v41 = a6;
  v42 = a7;
  v39 = a1;
  v40 = a5;
  v10 = *a2;
  v11 = type metadata accessor for MessagingOptions(0);
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v10 + 80);
  v37 = *(v10 + 88);
  v14 = type metadata accessor for Message(0, v38, v37, v13);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v33 - v20;
  v35 = &v33 - v20;
  v22 = sub_24AF3557C();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v15 + 16))(v18, a3, v14);
  sub_24AF226D0(a4, &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v23 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v24 = (v16 + *(v36 + 80) + v23) & ~*(v36 + 80);
  v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v37;
  *(v27 + 4) = v38;
  *(v27 + 5) = v28;
  *(v27 + 6) = a2;
  (*(v15 + 32))(&v27[v23], v18, v14);
  sub_24AEF9044(v34, &v27[v24], type metadata accessor for MessagingOptions);
  v29 = &v27[v25];
  v31 = v40;
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  *&v27[v26] = v42;
  *&v27[(v26 + 15) & 0xFFFFFFFFFFFFFFF8] = v39;

  sub_24AEE5154(v31, v30);

  sub_24AF08F10(0, 0, v35, &unk_24AF3A140, v27);
}

uint64_t sub_24AF16418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_24AEF9DD0;

  return sub_24AF164F4(a5, a6, a7, a8, v16, v17);
}

uint64_t sub_24AF164F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  v7[16] = *v6;
  v8 = *v6;
  v9 = sub_24AF3521C();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  v10 = *(v8 + 80);
  v7[20] = v10;
  v11 = *(v8 + 88);
  v7[21] = v11;
  v13 = type metadata accessor for Message(0, v10, v11, v12);
  v7[22] = v13;
  v14 = *(v13 - 8);
  v7[23] = v14;
  v7[24] = *(v14 + 64);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v15 = type metadata accessor for MessagingOptions(0);
  v7[27] = v15;
  v16 = *(v15 - 8);
  v7[28] = v16;
  v7[29] = *(v16 + 64);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF166FC, v6, 0);
}

uint64_t sub_24AF166FC()
{
  v1 = *(v0 + 248);
  v16 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v17 = *(v0 + 192);
  v18 = *(v0 + 232);
  v4 = *(v0 + 176);
  v5 = *(v0 + 120);
  v23 = *(v0 + 128);
  v6 = *(v0 + 112);
  v21 = *(v0 + 96);
  v22 = *(v0 + 104);
  v20 = *(v0 + 88);
  v7 = *(v0 + 80);
  v15 = *(v0 + 72);
  v19 = *(v0 + 160);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v5 + 144);
  *(v5 + 144) = 0x8000000000000000;
  sub_24AF031AC(v6, v7, isUniquelyReferenced_nonNull_native);
  *(v5 + 144) = v24;
  swift_endAccess();
  sub_24AF226D0(v7, v1, type metadata accessor for MessagingOptions);
  v9 = *(v3 + 16);
  *(v0 + 256) = v9;
  *(v0 + 264) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v15, v4);
  v10 = (*(v16 + 80) + 64) & ~*(v16 + 80);
  v11 = (v18 + *(v3 + 80) + v10) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v0 + 272) = v12;
  *(v12 + 16) = v19;
  *(v12 + 32) = v5;
  *(v12 + 40) = v20;
  *(v12 + 48) = v21;
  *(v12 + 56) = v22;
  sub_24AEF9044(v1, v12 + v10, type metadata accessor for MessagingOptions);
  (*(v3 + 32))(v12 + v11, v2, v4);
  *(v12 + ((v17 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;

  sub_24AEE5154(v20, v21);

  v13 = swift_task_alloc();
  *(v0 + 280) = v13;
  *v13 = v0;
  v13[1] = sub_24AF169A8;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AF169A8()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_24AF16AD0;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_24AEE91AC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AF16AD0()
{
  v49 = v0;

  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[25];
  v5 = v0[22];
  v7 = v0[9];
  v6 = v0[10];
  v8 = sub_24AF3529C();
  __swift_project_value_buffer(v8, qword_281392F20);
  v2(v4, v7, v5);
  sub_24AF226D0(v6, v3, type metadata accessor for MessagingOptions);
  v9 = v1;
  v10 = sub_24AF3527C();
  v11 = sub_24AF3572C();

  if (os_log_type_enabled(v10, v11))
  {
    v45 = v0[36];
    v43 = v0[30];
    v12 = v0[25];
    v13 = v0[26];
    v15 = v0[22];
    v14 = v0[23];
    v42 = v0[32];
    v46 = v11;
    v16 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v16 = 136446978;
    v20 = sub_24AF139CC(v47, v17, v18, v19);
    v22 = sub_24AEF599C(v20, v21, &v48);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v42(v13, v12, v15);
    v23 = *(v14 + 8);
    v23(v12, v15);
    v24 = Message.description.getter(v15);
    v26 = v25;
    v23(v13, v15);
    v27 = sub_24AEF599C(v24, v26, &v48);

    *(v16 + 14) = v27;
    *(v16 + 22) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v28 = sub_24AF35C0C();
    v30 = v29;
    sub_24AF22BCC(v43, type metadata accessor for MessagingOptions);
    v31 = sub_24AEF599C(v28, v30, &v48);

    *(v16 + 24) = v31;
    *(v16 + 32) = 2114;
    v32 = v45;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 34) = v33;
    *v44 = v33;
    _os_log_impl(&dword_24AECF000, v10, v46, "%{public}s: Failed to send message (resource) %{public}s. with identifier: %{public}s. Error: %{public}@.", v16, 0x2Au);
    sub_24AEE2E10(v44, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v44, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v47, -1, -1);
    MEMORY[0x24C236490](v16, -1, -1);
  }

  else
  {
    v34 = v0[30];
    (*(v0[23] + 8))(v0[25], v0[22]);

    sub_24AF22BCC(v34, type metadata accessor for MessagingOptions);
  }

  v35 = v0[36];
  v37 = v0[18];
  v36 = v0[19];
  v38 = v0[17];
  v39 = v0[10];
  v0[8] = v35;
  sub_24AF34FFC();
  (*(v37 + 16))(v36, v39, v38);
  swift_beginAccess();
  sub_24AF09284(0, v36);
  swift_endAccess();

  v40 = v0[1];

  return v40();
}

uint64_t LocalMessaging.send(message:metadata:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  v6 = *v4;
  v5[8] = type metadata accessor for MessagingOptions(0);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v8 = type metadata accessor for Message(0, *(v6 + 80), *(v6 + 88), v7);
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF170AC, v4, 0);
}

uint64_t sub_24AF170AC()
{
  v88 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v2 + v1[5]);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v86 = MEMORY[0x277D84F90];
    sub_24AEF6148(0, v4, 0);
    v5 = v86;
    v6 = *(v86 + 16);
    v7 = 16 * v6;
    v8 = (v3 + 48);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v86 = v5;
      v11 = *(v5 + 24);

      if (v6 >= v11 >> 1)
      {
        sub_24AEF6148((v11 > 1), v6 + 1, 1);
        v5 = v86;
      }

      *(v5 + 16) = v6 + 1;
      v12 = v5 + v7;
      *(v12 + 32) = v10;
      *(v12 + 40) = v9;
      v7 += 16;
      v8 += 3;
      ++v6;
      --v4;
    }

    while (v4);
    v1 = v0[8];
    v2 = v0[5];
  }

  v13 = sub_24AEF69F8(v5);
  v0[15] = v13;

  v14 = *(v2 + v1[9]);
  v15 = 0x6F707365722F7728;
  if (!*(v2 + v1[6]))
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (*(v2 + v1[6]))
  {
    v16 = 0xED0000202965736ELL;
  }

  v86 = v15;
  v87 = v16;
  if (v14)
  {
    v17 = 0xD000000000000017;
  }

  else
  {
    v17 = 0x6567617373656DLL;
  }

  if (v14)
  {
    v18 = 0x800000024AF36C70;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  MEMORY[0x24C235440](v17, v18);

  v19 = v87;
  v84 = v86;
  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[12];
  v23 = v0[10];
  v24 = v0[5];
  v25 = v0[3];
  v26 = sub_24AF3529C();
  __swift_project_value_buffer(v26, qword_281392F20);
  v83 = *(v22 + 16);
  v83(v20, v25, v21);
  sub_24AF226D0(v24, v23, type metadata accessor for MessagingOptions);

  v27 = sub_24AF3527C();
  v28 = sub_24AF3572C();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[14];
  v85 = v13;
  if (v29)
  {
    v32 = v0[12];
    v31 = v0[13];
    log = v27;
    v33 = v0[11];
    v79 = v0[10];
    v81 = v28;
    v34 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v86 = v80;
    *v34 = 136316162;
    v38 = sub_24AF139CC(v80, v35, v36, v37);
    v40 = sub_24AEF599C(v38, v39, &v86);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2082;
    v41 = sub_24AEF599C(v84, v19, &v86);

    *(v34 + 14) = v41;
    *(v34 + 22) = 2082;
    v83(v31, v30, v33);
    v42 = *(v32 + 8);
    v42(v30, v33);
    v43 = Message.description.getter(v33);
    v45 = v44;
    v42(v31, v33);
    v46 = sub_24AEF599C(v43, v45, &v86);

    *(v34 + 24) = v46;
    *(v34 + 32) = 2080;
    v47 = sub_24AF3567C();
    v49 = sub_24AEF599C(v47, v48, &v86);

    *(v34 + 34) = v49;
    *(v34 + 42) = 2082;
    sub_24AF3521C();
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v50 = sub_24AF35C0C();
    v52 = v51;
    sub_24AF22BCC(v79, type metadata accessor for MessagingOptions);
    v53 = sub_24AEF599C(v50, v52, &v86);

    *(v34 + 44) = v53;
    _os_log_impl(&dword_24AECF000, log, v81, "%s: Sending (resource) %{public}s: %{public}s to %s with identifier: %{public}s", v34, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v80, -1, -1);
    MEMORY[0x24C236490](v34, -1, -1);
  }

  else
  {
    v54 = v0[10];
    (*(v0[12] + 8))(v30, v0[11]);

    sub_24AF22BCC(v54, type metadata accessor for MessagingOptions);
  }

  sub_24AF226D0(v0[5], v0[9], type metadata accessor for MessagingOptions);
  v55 = sub_24AF3527C();
  v56 = sub_24AF3572C();
  v57 = os_log_type_enabled(v55, v56);
  v58 = v0[9];
  if (v57)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v86 = v60;
    *v59 = 136446466;
    v64 = sub_24AF139CC(v60, v61, v62, v63);
    v66 = sub_24AEF599C(v64, v65, &v86);

    *(v59 + 4) = v66;
    *(v59 + 12) = 2080;
    MessagingOptions.dictionaryValue.getter();
    v67 = sub_24AF3530C();
    v69 = v68;

    sub_24AF22BCC(v58, type metadata accessor for MessagingOptions);
    v70 = sub_24AEF599C(v67, v69, &v86);

    *(v59 + 14) = v70;
    _os_log_impl(&dword_24AECF000, v55, v56, "%{public}s: IDSSendMessageOptions: %s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v60, -1, -1);
    MEMORY[0x24C236490](v59, -1, -1);
  }

  else
  {

    sub_24AF22BCC(v58, type metadata accessor for MessagingOptions);
  }

  v72 = v0[5];
  v71 = v0[6];
  v73 = swift_task_alloc();
  v0[16] = v73;
  v74 = *(v0 + 3);
  *(v73 + 16) = v71;
  *(v73 + 24) = v74;
  *(v73 + 40) = v72;
  *(v73 + 48) = v85;
  v75 = swift_task_alloc();
  v0[17] = v75;
  v76 = sub_24AF3521C();
  *v75 = v0;
  v75[1] = sub_24AEE9FC8;
  v77 = v0[2];

  return MEMORY[0x28215EC68](v77, 0xD000000000000026, 0x800000024AF36C90, sub_24AF21214, v73, v76);
}

uint64_t sub_24AF1785C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a1;
  v37 = a6;
  v35 = a4;
  v32 = a3;
  v8 = *a2;
  v9 = type metadata accessor for MessagingOptions(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v30 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v8 + 80);
  v33 = *(v8 + 88);
  v13 = type metadata accessor for Message(0, v34, v33, v12);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v30 - v19;
  v31 = &v30 - v19;
  v21 = sub_24AF3557C();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v14 + 16))(v17, v32, v13);
  sub_24AF226D0(a5, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v22 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v10 + 80) + v23 + 8) & ~*(v10 + 80);
  v25 = (v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = v33;
  *(v26 + 4) = v34;
  *(v26 + 5) = v27;
  *(v26 + 6) = a2;
  (*(v14 + 32))(&v26[v22], v17, v13);
  *&v26[v23] = v35;
  sub_24AEF9044(v30, &v26[v24], type metadata accessor for MessagingOptions);
  v28 = v36;
  *&v26[v25] = v37;
  *&v26[(v25 + 15) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_24AF08F10(0, 0, v31, &unk_24AF3A118, v26);
}

uint64_t sub_24AF17BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_24AEF9DD0;

  return sub_24AF17C78(a5, a6, a7, a8, v16);
}

uint64_t sub_24AF17C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v6[15] = *v5;
  v7 = *v5;
  v8 = *(*v5 + 80);
  v6[16] = v8;
  v9 = *(v7 + 88);
  v6[17] = v9;
  v10 = type metadata accessor for Message(0, v8, v9, a4);
  v6[18] = v10;
  v11 = *(v10 - 8);
  v6[19] = v11;
  v6[20] = *(v11 + 64);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v12 = type metadata accessor for MessagingOptions(0);
  v6[23] = v12;
  v13 = *(v12 - 8);
  v6[24] = v13;
  v6[25] = *(v13 + 64);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v14 = sub_24AF3521C();
  v6[28] = v14;
  v6[29] = *(v14 - 8);
  v6[30] = swift_task_alloc();
  v15 = sub_24AF3513C();
  v6[31] = v15;
  v16 = *(v15 - 8);
  v6[32] = v16;
  v6[33] = *(v16 + 64);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF17EEC, v5, 0);
}

uint64_t sub_24AF17EEC()
{
  v43 = v0;
  sub_24AF350CC();
  swift_allocObject();
  sub_24AF350BC();
  swift_getWitnessTable();
  *(v0 + 288) = sub_24AF3509C();
  *(v0 + 296) = v1;
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  v39 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v37 = *(v0 + 224);

  v6 = NSTemporaryDirectory();
  sub_24AF353AC();

  sub_24AF350FC();

  sub_24AF3520C();
  sub_24AF351EC();
  (*(v4 + 8))(v5, v37);
  sub_24AF3511C();

  v7 = *(v3 + 8);
  *(v0 + 304) = v7;
  *(v0 + 312) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v39);
  sub_24AF3518C();
  v8 = *(v0 + 272);
  v9 = *(v0 + 256);
  v31 = *(v0 + 264);
  v10 = *(v0 + 248);
  v25 = v8;
  v11 = *(v0 + 216);
  v26 = v11;
  v33 = *(v0 + 200);
  v29 = *(v0 + 280);
  v30 = *(v0 + 192);
  v41 = *(v0 + 176);
  v32 = *(v0 + 160);
  v40 = *(v0 + 152);
  v12 = *(v0 + 144);
  v27 = v12;
  v13 = *(v0 + 112);
  v38 = *(v0 + 120);
  v14 = *(v0 + 104);
  v15 = *(v0 + 88);
  v35 = *(v0 + 80);
  v36 = *(v0 + 96);
  v28 = *(v0 + 72);
  v34 = *(v0 + 128);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v13 + 144);
  *(v13 + 144) = 0x8000000000000000;
  sub_24AF031AC(v14, v15, isUniquelyReferenced_nonNull_native);
  *(v13 + 144) = v42;
  swift_endAccess();
  (*(v9 + 16))(v8, v29, v10);
  sub_24AF226D0(v15, v11, type metadata accessor for MessagingOptions);
  (*(v40 + 16))(v41, v28, v12);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = (v31 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v30 + 80) + v19 + 8) & ~*(v30 + 80);
  v21 = (v33 + *(v40 + 80) + v20) & ~*(v40 + 80);
  v22 = swift_allocObject();
  *(v0 + 320) = v22;
  *(v22 + 16) = v34;
  *(v22 + 32) = v13;
  (*(v9 + 32))(v22 + v17, v25, v10);
  *(v22 + v18) = v35;
  *(v22 + v19) = v36;
  sub_24AEF9044(v26, v22 + v20, type metadata accessor for MessagingOptions);
  (*(v40 + 32))(v22 + v21, v41, v27);
  *(v22 + ((v32 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v38;

  v23 = swift_task_alloc();
  *(v0 + 328) = v23;
  *v23 = v0;
  v23[1] = sub_24AF187E4;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AF187E4()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 112);

  if (v0)
  {
    v4 = sub_24AF189F8;
  }

  else
  {
    v4 = sub_24AF1892C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AF1892C()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[31];
  sub_24AED6198(v0[36], v0[37]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AF189F8()
{
  v53 = v0;
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[31];
  sub_24AED6198(v0[36], v0[37]);
  v1(v2, v3);
  v4 = v0[42];
  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v5 = v0[26];
  v6 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[11];
  v10 = v0[9];
  v11 = sub_24AF3529C();
  __swift_project_value_buffer(v11, qword_281392F20);
  v12 = *(v7 + 16);
  v12(v6, v10, v8);
  sub_24AF226D0(v9, v5, type metadata accessor for MessagingOptions);
  v13 = v4;
  v14 = sub_24AF3527C();
  v15 = sub_24AF3572C();

  if (os_log_type_enabled(v14, v15))
  {
    v47 = v0[26];
    v46 = v12;
    v16 = v0[21];
    v17 = v0[22];
    v51 = v4;
    v19 = v0[18];
    v18 = v0[19];
    v49 = v15;
    v20 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v52 = v50;
    *v20 = 136446978;
    v24 = sub_24AF139CC(v50, v21, v22, v23);
    v26 = sub_24AEF599C(v24, v25, &v52);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2082;
    v46(v17, v16, v19);
    v27 = *(v18 + 8);
    v27(v16, v19);
    v28 = Message.description.getter(v19);
    v30 = v29;
    v31 = v19;
    v4 = v51;
    v27(v17, v31);
    v32 = sub_24AEF599C(v28, v30, &v52);

    *(v20 + 14) = v32;
    *(v20 + 22) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v33 = sub_24AF35C0C();
    v35 = v34;
    sub_24AF22BCC(v47, type metadata accessor for MessagingOptions);
    v36 = sub_24AEF599C(v33, v35, &v52);

    *(v20 + 24) = v36;
    *(v20 + 32) = 2114;
    v37 = v51;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 34) = v38;
    *v48 = v38;
    _os_log_impl(&dword_24AECF000, v14, v49, "%{public}s: Failed to send message (resource) %{public}s. with identifier: %{public}s. Error: %{public}@.", v20, 0x2Au);
    sub_24AEE2E10(v48, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v48, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v50, -1, -1);
    MEMORY[0x24C236490](v20, -1, -1);
  }

  else
  {
    v39 = v0[26];
    (*(v0[19] + 8))(v0[21], v0[18]);

    sub_24AF22BCC(v39, type metadata accessor for MessagingOptions);
  }

  v40 = v0[29];
  v41 = v0[30];
  v42 = v0[28];
  v43 = v0[11];
  v0[8] = v4;
  sub_24AF34FFC();
  (*(v40 + 16))(v41, v43, v42);
  swift_beginAccess();
  sub_24AF09284(0, v41);
  swift_endAccess();

  v44 = v0[1];

  return v44();
}

uint64_t LocalMessaging.sendWithResponse(message:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for Message(255, *(*v4 + 80), *(*v4 + 88), a4);
  type metadata accessor for MessageContext(255);
  v5[8] = swift_getTupleTypeMetadata2();
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for MessagingOptions(0);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF18FC8, v4, 0);
}

uint64_t sub_24AF18FC8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  sub_24AF226D0(v0[5], v2, type metadata accessor for MessagingOptions);
  *(v2 + *(v3 + 24)) = 1;
  sub_24AF226D0(v2, v1, type metadata accessor for MessagingOptions);
  v4 = *(v1 + *(v3 + 20));
  if (*(v4 + 16) == 1 && *(v4 + 32) - 2 <= 2)
  {
    v5 = v0[11];
    v6 = v0[6];
    v7 = v0[4];
    v8 = swift_task_alloc();
    v0[13] = v8;
    v8[2] = v6;
    v8[3] = v7;
    v8[4] = v5;
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_24AF191E0;
    v11 = v0[8];
    v10 = v0[9];

    return MEMORY[0x28215EC68](v10, 0xD000000000000029, 0x800000024AF36CC0, sub_24AF21224, v8, v11);
  }

  else
  {
    sub_24AED9680();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    v13 = v0[11];
    sub_24AF22BCC(v0[12], type metadata accessor for MessagingOptions);
    sub_24AF22BCC(v13, type metadata accessor for MessagingOptions);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_24AF191E0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_24AF19448;
  }

  else
  {
    v4 = sub_24AF19328;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AF19328()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v6 = v0[2];
  v5 = v0[3];
  sub_24AF22BCC(v0[12], type metadata accessor for MessagingOptions);
  v7 = *(v3 + 48);
  (*(*(v4 - 8) + 32))(v6, v2, v4);
  sub_24AEF9044(v2 + v7, v5, type metadata accessor for MessageContext);
  sub_24AF22BCC(v1, type metadata accessor for MessagingOptions);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AF19448()
{
  v1 = v0[11];
  sub_24AF22BCC(v0[12], type metadata accessor for MessagingOptions);
  sub_24AF22BCC(v1, type metadata accessor for MessagingOptions);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24AF19500(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v28 = a1;
  v6 = *a2;
  v7 = type metadata accessor for MessagingOptions(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v27 = *(v6 + 80);
  v26 = *(v6 + 88);
  v11 = type metadata accessor for Message(0, v27, v26, v10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v25 - v17;
  v19 = sub_24AF3557C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, v25, v11);
  sub_24AF226D0(a4, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v20 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v21 = (v13 + *(v8 + 80) + v20) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v26;
  *(v22 + 4) = v27;
  *(v22 + 5) = v23;
  *(v22 + 6) = a2;
  (*(v12 + 32))(&v22[v20], v15, v11);
  sub_24AEF9044(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), &v22[v21], type metadata accessor for MessagingOptions);
  *&v22[(v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_24AF08F10(0, 0, v18, &unk_24AF3A0F0, v22);
}

uint64_t sub_24AF19810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_24AEE555C;

  return sub_24AF198C4(a5, a6, a7);
}

uint64_t sub_24AF198C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[15] = *v3;
  v5 = *v3;
  v6 = type metadata accessor for MessagingOptions(0);
  v4[16] = v6;
  v7 = *(v6 - 8);
  v4[17] = v7;
  v4[18] = *(v7 + 64);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v8 = *(v5 + 80);
  v4[21] = v8;
  v9 = *(v5 + 88);
  v4[22] = v9;
  v11 = type metadata accessor for Message(0, v8, v9, v10);
  v4[23] = v11;
  v12 = *(v11 - 8);
  v4[24] = v12;
  v4[25] = *(v12 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v13 = sub_24AF3521C();
  v4[28] = v13;
  v4[29] = *(v13 - 8);
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF19ACC, v3, 0);
}

uint64_t sub_24AF19ACC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 192);
  v5 = *(v0 + 184);
  v17 = *(v0 + 216);
  v18 = *(v0 + 160);
  v21 = *(v0 + 144);
  v22 = *(v0 + 200);
  v19 = *(v0 + 136);
  v23 = *(v0 + 120);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v1 + 16);
  v9 = *(v0 + 96);
  v16 = *(v0 + 88);
  *(v0 + 248) = v8;
  *(v0 + 256) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20 = *(v0 + 168);
  v8(v2, v9, v3);
  *(v0 + 64) = v7;
  swift_beginAccess();
  type metadata accessor for MessageContext(255);

  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
  sub_24AF3501C();
  sub_24AF22C2C(&qword_281393400, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  *(v0 + 264) = sub_24AF3532C();
  sub_24AF3534C();
  swift_endAccess();
  v10 = *(v4 + 16);
  *(v0 + 272) = v10;
  *(v0 + 280) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v17, v16, v5);
  sub_24AF226D0(v9, v18, type metadata accessor for MessagingOptions);
  v11 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v12 = (v22 + *(v19 + 80) + v11) & ~*(v19 + 80);
  v13 = swift_allocObject();
  *(v0 + 288) = v13;
  *(v13 + 16) = v20;
  *(v13 + 32) = v6;
  (*(v4 + 32))(v13 + v11, v17, v5);
  sub_24AEF9044(v18, v13 + v12, type metadata accessor for MessagingOptions);
  *(v13 + ((v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;

  v14 = swift_task_alloc();
  *(v0 + 296) = v14;
  *v14 = v0;
  v14[1] = sub_24AF19E08;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AF19E08()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_24AF19F30;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_24AEECB70;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AF19F30()
{
  v49 = v0;

  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[19];
  v7 = v0[11];
  v6 = v0[12];
  v8 = sub_24AF3529C();
  __swift_project_value_buffer(v8, qword_281392F20);
  v2(v3, v7, v4);
  sub_24AF226D0(v6, v5, type metadata accessor for MessagingOptions);
  v9 = v1;
  v10 = sub_24AF3527C();
  v11 = sub_24AF3572C();

  if (os_log_type_enabled(v10, v11))
  {
    v45 = v0[38];
    v12 = v0[27];
    v13 = v0[26];
    v15 = v0[23];
    v14 = v0[24];
    v42 = v0[34];
    v43 = v0[19];
    v46 = v11;
    v16 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v16 = 136446978;
    v20 = sub_24AF139CC(v47, v17, v18, v19);
    v22 = sub_24AEF599C(v20, v21, &v48);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v42(v12, v13, v15);
    v23 = *(v14 + 8);
    v23(v13, v15);
    v24 = Message.description.getter(v15);
    v26 = v25;
    v23(v12, v15);
    v27 = sub_24AEF599C(v24, v26, &v48);

    *(v16 + 14) = v27;
    *(v16 + 22) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v28 = sub_24AF35C0C();
    v30 = v29;
    sub_24AF22BCC(v43, type metadata accessor for MessagingOptions);
    v31 = sub_24AEF599C(v28, v30, &v48);

    *(v16 + 24) = v31;
    *(v16 + 32) = 2114;
    v32 = v45;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 34) = v33;
    *v44 = v33;
    _os_log_impl(&dword_24AECF000, v10, v46, "%{public}s: Failed to send message (with response) %{public}s. with identifier: %{public}s. Error: %{public}@.", v16, 0x2Au);
    sub_24AEE2E10(v44, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v44, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v47, -1, -1);
    MEMORY[0x24C236490](v16, -1, -1);
  }

  else
  {
    v34 = v0[19];
    (*(v0[24] + 8))(v0[26], v0[23]);

    sub_24AF22BCC(v34, type metadata accessor for MessagingOptions);
  }

  v35 = v0[38];
  v36 = v0[30];
  v37 = v0[31];
  v38 = v0[28];
  v39 = v0[12];
  v0[9] = v35;
  sub_24AF34FFC();
  v37(v36, v39, v38);
  v0[10] = 0;
  swift_beginAccess();
  sub_24AF3534C();
  swift_endAccess();

  v40 = v0[1];

  return v40();
}

uint64_t LocalMessaging.send(dictionary:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v4[7] = type metadata accessor for MessagingOptions(0);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF1A470, v3, 0);
}

uint64_t sub_24AF1A470()
{
  v58 = v0;
  v1 = *(*(v0 + 32) + *(*(v0 + 56) + 20));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v57 = MEMORY[0x277D84F90];
    sub_24AEF6148(0, v2, 0);
    v3 = v57;
    v4 = *(v57 + 16);
    v5 = 16 * v4;
    v6 = (v1 + 48);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v57 = v3;
      v9 = *(v3 + 24);

      if (v4 >= v9 >> 1)
      {
        sub_24AEF6148((v9 > 1), v4 + 1, 1);
        v3 = v57;
      }

      *(v3 + 16) = v4 + 1;
      v10 = v3 + v5;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      v5 += 16;
      v6 += 3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v11 = sub_24AEF69F8(v3);
  *(v0 + 80) = v11;

  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 72);
  v13 = *(v0 + 32);
  v14 = sub_24AF3529C();
  __swift_project_value_buffer(v14, qword_281392F20);
  sub_24AF226D0(v13, v12, type metadata accessor for MessagingOptions);

  v15 = sub_24AF3527C();
  v16 = sub_24AF3572C();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 72);
  if (v17)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v57 = v20;
    *v19 = 136315650;
    v24 = sub_24AF139CC(v20, v21, v22, v23);
    v26 = sub_24AEF599C(v24, v25, &v57);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2080;
    v27 = sub_24AF3567C();
    v29 = sub_24AEF599C(v27, v28, &v57);

    *(v19 + 14) = v29;
    *(v19 + 22) = 2082;
    sub_24AF3521C();
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v30 = sub_24AF35C0C();
    v32 = v31;
    sub_24AF22BCC(v18, type metadata accessor for MessagingOptions);
    v33 = sub_24AEF599C(v30, v32, &v57);

    *(v19 + 24) = v33;
    _os_log_impl(&dword_24AECF000, v15, v16, "%s: Sending raw dictionary to %s with identifier: %{public}s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v20, -1, -1);
    MEMORY[0x24C236490](v19, -1, -1);
  }

  else
  {

    sub_24AF22BCC(v18, type metadata accessor for MessagingOptions);
  }

  sub_24AF226D0(*(v0 + 32), *(v0 + 64), type metadata accessor for MessagingOptions);
  v34 = sub_24AF3527C();
  v35 = sub_24AF3572C();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 64);
  if (v36)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v57 = v39;
    *v38 = 136446466;
    v43 = sub_24AF139CC(v39, v40, v41, v42);
    v45 = sub_24AEF599C(v43, v44, &v57);

    *(v38 + 4) = v45;
    *(v38 + 12) = 2080;
    MessagingOptions.dictionaryValue.getter();
    v46 = sub_24AF3530C();
    v48 = v47;

    sub_24AF22BCC(v37, type metadata accessor for MessagingOptions);
    v49 = sub_24AEF599C(v46, v48, &v57);

    *(v38 + 14) = v49;
    _os_log_impl(&dword_24AECF000, v34, v35, "%{public}s: IDSSendMessageOptions: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v39, -1, -1);
    MEMORY[0x24C236490](v38, -1, -1);
  }

  else
  {

    sub_24AF22BCC(v37, type metadata accessor for MessagingOptions);
  }

  v50 = *(v0 + 40);
  v51 = swift_task_alloc();
  *(v0 + 88) = v51;
  v52 = *(v0 + 24);
  *(v51 + 16) = v50;
  *(v51 + 24) = v11;
  *(v51 + 32) = v52;
  v53 = swift_task_alloc();
  *(v0 + 96) = v53;
  v54 = sub_24AF3521C();
  *v53 = v0;
  v53[1] = sub_24AEED710;
  v55 = *(v0 + 16);

  return MEMORY[0x28215EC68](v55, 0xD000000000000020, 0x800000024AF36CF0, sub_24AF21230, v51, v54);
}

uint64_t sub_24AF1AA40(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = type metadata accessor for MessagingOptions(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v21 - v15;
  v17 = sub_24AF3557C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_24AF226D0(a5, &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v18 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = *(v10 + 80);
  v19[5] = *(v10 + 88);
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = a4;
  sub_24AEF9044(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for MessagingOptions);
  *(v19 + ((v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  sub_24AF08F10(0, 0, v16, &unk_24AF3A0C0, v19);
}

uint64_t sub_24AF1AC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_24AEF9DD0;

  return sub_24AF1AD50(a5, a6, a7, a8);
}

uint64_t sub_24AF1AD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v5[14] = *v4;
  v5[15] = *v4;
  v6 = sub_24AF3521C();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for MessagingOptions(0);
  v5[19] = v7;
  v8 = *(v7 - 8);
  v5[20] = v8;
  v5[21] = *(v8 + 64);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF1AED8, v4, 0);
}

uint64_t sub_24AF1AED8()
{
  v1 = v0[23];
  v13 = v0[20];
  v14 = v0[21];
  v2 = v0[15];
  v15 = v0[14];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v3 + 144);
  *(v3 + 144) = 0x8000000000000000;
  sub_24AF031AC(v4, v6, isUniquelyReferenced_nonNull_native);
  *(v3 + 144) = v16;
  swift_endAccess();
  sub_24AF226D0(v6, v1, type metadata accessor for MessagingOptions);
  v9 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v10 = swift_allocObject();
  v0[24] = v10;
  v10[2] = *(v2 + 80);
  v10[3] = *(v2 + 88);
  v10[4] = v3;
  v10[5] = v5;
  v10[6] = v7;
  sub_24AEF9044(v1, v10 + v9, type metadata accessor for MessagingOptions);
  *(v10 + ((v14 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;

  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_24AF1B0F4;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AF1B0F4()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_24AF1B21C;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_24AEEE0DC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AF1B21C()
{
  v34 = v0;

  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[11];
  v4 = sub_24AF3529C();
  __swift_project_value_buffer(v4, qword_281392F20);
  sub_24AF226D0(v3, v2, type metadata accessor for MessagingOptions);
  v5 = v1;
  v6 = sub_24AF3527C();
  v7 = sub_24AF3572C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[26];
    v9 = v0[22];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v10 = 136446722;
    v16 = sub_24AF139CC(v12, v13, v14, v15);
    v18 = sub_24AEF599C(v16, v17, &v33);

    *(v10 + 4) = v18;
    *(v10 + 12) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_24AF35C0C();
    v21 = v20;
    sub_24AF22BCC(v9, type metadata accessor for MessagingOptions);
    v22 = sub_24AEF599C(v19, v21, &v33);

    *(v10 + 14) = v22;
    *(v10 + 22) = 2114;
    v23 = v8;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v24;
    *v11 = v24;
    _os_log_impl(&dword_24AECF000, v6, v7, "%{public}s: Failed to send raw dictionary with identifier: %{public}s. Error: %{public}@.", v10, 0x20u);
    sub_24AEE2E10(v11, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v12, -1, -1);
    MEMORY[0x24C236490](v10, -1, -1);
  }

  else
  {
    v25 = v0[22];

    sub_24AF22BCC(v25, type metadata accessor for MessagingOptions);
  }

  v26 = v0[26];
  v28 = v0[17];
  v27 = v0[18];
  v29 = v0[16];
  v30 = v0[11];
  v0[8] = v26;
  sub_24AF34FFC();
  (*(v28 + 16))(v27, v30, v29);
  swift_beginAccess();
  sub_24AF09284(0, v27);
  swift_endAccess();

  v31 = v0[1];

  return v31();
}

uint64_t sub_24AF1B5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[4] = a2;
  v9 = type metadata accessor for Message(0, *(*a2 + 80), *(*a2 + 88), a4);
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  v8[15] = swift_task_alloc();
  v10 = sub_24AF3521C();
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF1B778, 0, 0);
}

uint64_t sub_24AF1B778()
{
  v67 = v0;
  v66[1] = *MEMORY[0x277D85DE8];
  v1 = v0[7];
  v2 = *(v0[4] + 128);
  v3 = sub_24AF3516C();
  sub_24AF1310C(v1);
  v4 = sub_24AF3565C();

  v5 = MessagingOptions.dictionaryValue.getter();
  sub_24AF13340(v5);

  v6 = sub_24AF352EC();

  v0[2] = 0;
  v0[3] = 0;
  LODWORD(v2) = [v2 sendData:v3 toDestinations:v4 priority:300 options:v6 identifier:v0 + 2 error:v0 + 3];

  v7 = v0[3];
  v8 = v0[2];
  if (!v2)
  {
    v14 = v7;
    v15 = v8;
    sub_24AF350DC();

LABEL_8:
    swift_willThrow();

    v18 = v0[1];
    goto LABEL_9;
  }

  if (!v8)
  {
    v16 = v7;
    goto LABEL_7;
  }

  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[15];
  sub_24AF353AC();
  v12 = v7;
  v13 = v8;
  sub_24AF351DC();

  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_24AEE2E10(v0[15], &qword_27EFC11C0, &qword_24AF38DC0);
LABEL_7:
    sub_24AED9680();
    swift_allocError();
    *v17 = 0;
    goto LABEL_8;
  }

  v65 = v13;
  (*(v0[17] + 32))(v0[19], v0[15], v0[16]);
  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v20 = v0[18];
  v21 = v0[19];
  v22 = v0[16];
  v23 = v0[17];
  v24 = v0[14];
  v25 = v0[11];
  v26 = v0[12];
  v27 = v0[9];
  v28 = sub_24AF3529C();
  __swift_project_value_buffer(v28, qword_281392F20);
  v64 = *(v26 + 16);
  v64(v24, v27, v25);
  (*(v23 + 16))(v20, v21, v22);
  v29 = sub_24AF3527C();
  v30 = sub_24AF3572C();
  v31 = os_log_type_enabled(v29, v30);
  v33 = v0[18];
  v32 = v0[19];
  v35 = v0[16];
  v34 = v0[17];
  v36 = v0[14];
  if (v31)
  {
    log = v29;
    v63 = v0[19];
    v60 = v0[16];
    v38 = v0[12];
    v37 = v0[13];
    v39 = v0[11];
    v58 = v0[18];
    v40 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v66[0] = v61;
    *v40 = 136446722;
    v44 = sub_24AF139CC(v61, v41, v42, v43);
    v59 = v30;
    v46 = sub_24AEF599C(v44, v45, v66);

    *(v40 + 4) = v46;
    *(v40 + 12) = 2082;
    v64(v37, v36, v39);
    v47 = *(v38 + 8);
    v47(v36, v39);
    v48 = Message.description.getter(v39);
    v50 = v49;
    v47(v37, v39);
    v51 = sub_24AEF599C(v48, v50, v66);

    *(v40 + 14) = v51;
    *(v40 + 22) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v52 = sub_24AF35C0C();
    v54 = v53;
    v55 = *(v34 + 8);
    v55(v58, v60);
    v56 = sub_24AEF599C(v52, v54, v66);

    *(v40 + 24) = v56;
    _os_log_impl(&dword_24AECF000, log, v59, "%{public}s: Sent message %{public}s with identifier: %{public}s", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v61, -1, -1);
    MEMORY[0x24C236490](v40, -1, -1);

    v55(v63, v60);
  }

  else
  {
    (*(v0[12] + 8))(v0[14], v0[11]);

    v57 = *(v34 + 8);
    v57(v33, v35);
    v57(v32, v35);
  }

  v18 = v0[1];
LABEL_9:

  return v18();
}

uint64_t sub_24AF1BD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[5] = a2;
  v9 = type metadata accessor for Message(0, *(*a2 + 80), *(*a2 + 88), a4);
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  v8[16] = swift_task_alloc();
  v10 = sub_24AF3521C();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF1BF6C, 0, 0);
}

uint64_t sub_24AF1BF6C()
{
  v75 = v0;
  v74[1] = *MEMORY[0x277D85DE8];
  v1 = v0[8];
  v2 = v0[7];
  v3 = *(v0[5] + 128);
  v4 = sub_24AF3510C();
  sub_24AF13608(v2);
  v5 = sub_24AF352EC();

  sub_24AF1310C(v1);
  v6 = sub_24AF3565C();

  v7 = MessagingOptions.dictionaryValue.getter();
  sub_24AF13340(v7);

  v8 = sub_24AF352EC();

  v0[2] = 0;
  v0[3] = 0;
  LODWORD(v3) = [v3 sendResourceAtURL:v4 metadata:v5 toDestinations:v6 priority:300 options:v8 identifier:v0 + 2 error:v0 + 3];

  v9 = v0[3];
  v10 = v0[2];
  if (!v3)
  {
    v16 = v9;
    v10 = v10;
    sub_24AF350DC();

LABEL_8:
    swift_willThrow();
LABEL_9:

    v19 = v0[1];
    goto LABEL_10;
  }

  if (!v10)
  {
    v17 = v9;
    goto LABEL_7;
  }

  v11 = v0[17];
  v12 = v0[18];
  v13 = v0[16];
  sub_24AF353AC();
  v14 = v9;
  v15 = v10;
  sub_24AF351DC();

  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    sub_24AEE2E10(v0[16], &qword_27EFC11C0, &qword_24AF38DC0);
LABEL_7:
    sub_24AED9680();
    swift_allocError();
    *v18 = 0;
    goto LABEL_8;
  }

  v73 = v15;
  (*(v0[18] + 32))(v0[20], v0[16], v0[17]);
  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v21 = v0[19];
  log = v0[20];
  v22 = v0[17];
  v23 = v0[18];
  v24 = v0[15];
  v26 = v0[12];
  v25 = v0[13];
  v27 = v0[10];
  v28 = sub_24AF3529C();
  __swift_project_value_buffer(v28, qword_281392F20);
  v70 = *(v25 + 16);
  v70(v24, v27, v26);
  (*(v23 + 16))(v21, log, v22);
  v29 = sub_24AF3527C();
  v30 = sub_24AF3572C();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[18];
  v33 = v0[19];
  v34 = v0[17];
  v35 = v0[15];
  if (v31)
  {
    v36 = v0[13];
    v37 = v0[14];
    v69 = v30;
    loga = v29;
    v38 = v0[12];
    v67 = v0[19];
    v39 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v74[0] = v68;
    *v39 = 136446722;
    v43 = sub_24AF139CC(v68, v40, v41, v42);
    v66 = v34;
    v45 = sub_24AEF599C(v43, v44, v74);

    *(v39 + 4) = v45;
    *(v39 + 12) = 2082;
    v46 = v37;
    v70(v37, v35, v38);
    v47 = *(v36 + 8);
    v47(v35, v38);
    v48 = Message.description.getter(v38);
    v50 = v49;
    v47(v46, v38);
    v51 = sub_24AEF599C(v48, v50, v74);

    *(v39 + 14) = v51;
    *(v39 + 22) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v52 = sub_24AF35C0C();
    v54 = v53;
    v55 = *(v32 + 8);
    v55(v67, v66);
    v56 = sub_24AEF599C(v52, v54, v74);

    *(v39 + 24) = v56;
    _os_log_impl(&dword_24AECF000, loga, v69, "%{public}s: Sent message (resource) %{public}s with identifier: %{public}s", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v68, -1, -1);
    MEMORY[0x24C236490](v39, -1, -1);
  }

  else
  {
    (*(v0[13] + 8))(v0[15], v0[12]);

    v55 = *(v32 + 8);
    v55(v33, v34);
  }

  v57 = [objc_opt_self() defaultManager];
  v58 = sub_24AF3510C();
  v0[4] = 0;
  v59 = [v57 removeItemAtURL:v58 error:v0 + 4];

  v60 = v0[4];
  v61 = v0[20];
  if (!v59)
  {
    v64 = v0[17];
    v65 = v60;
    sub_24AF350DC();

    swift_willThrow();
    v55(v61, v64);
    v10 = v73;
    goto LABEL_9;
  }

  v62 = v0[17];
  v63 = v60;
  v55(v61, v62);

  v19 = v0[1];
LABEL_10:

  return v19();
}

uint64_t sub_24AF1C66C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v8 = *a2;
  type metadata accessor for MessagingOptions(0);
  v5[5] = swift_task_alloc();
  v10 = type metadata accessor for Message(0, *(v8 + 80), *(v8 + 88), v9);
  v5[6] = v10;
  v5[7] = *(v10 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v11 = sub_24AF3521C();
  v5[10] = v11;
  v5[11] = *(v11 - 8);
  v12 = swift_task_alloc();
  v5[12] = v12;
  v13 = swift_task_alloc();
  v5[13] = v13;
  *v13 = v5;
  v13[1] = sub_24AF1C848;

  return LocalMessaging.send(message:messageOptions:)(v12, a3, a4);
}

uint64_t sub_24AF1C848()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_24AEEFB80;
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v3 = sub_24AF1C974;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AF1C974()
{
  v39 = v0;
  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_24AF3529C();
  __swift_project_value_buffer(v7, qword_281392F20);
  v8 = *(v3 + 16);
  v8(v1, v6, v2);
  sub_24AF226D0(v5, v4, type metadata accessor for MessagingOptions);
  v9 = sub_24AF3527C();
  v10 = sub_24AF3572C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[9];
    v34 = v8;
    v12 = v0[7];
    v13 = v0[8];
    v14 = v0[6];
    v35 = v0[5];
    v37 = v10;
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v15 = 136446722;
    v19 = sub_24AF139CC(v36, v16, v17, v18);
    v21 = sub_24AEF599C(v19, v20, &v38);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    v34(v13, v11, v14);
    v22 = *(v12 + 8);
    v22(v11, v14);
    v23 = Message.description.getter(v14);
    v25 = v24;
    v22(v13, v14);
    v26 = sub_24AEF599C(v23, v25, &v38);

    *(v15 + 14) = v26;
    *(v15 + 22) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v27 = sub_24AF35C0C();
    v29 = v28;
    sub_24AF22BCC(v35, type metadata accessor for MessagingOptions);
    v30 = sub_24AEF599C(v27, v29, &v38);

    *(v15 + 24) = v30;
    _os_log_impl(&dword_24AECF000, v9, v37, "%{public}s: Sent message (with response) %{public}s with identifier: %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v36, -1, -1);
    MEMORY[0x24C236490](v15, -1, -1);
  }

  else
  {
    v31 = v0[5];
    (*(v0[7] + 8))(v0[9], v0[6]);

    sub_24AF22BCC(v31, type metadata accessor for MessagingOptions);
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_24AF1CCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  v6[9] = swift_task_alloc();
  v7 = sub_24AF3521C();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF1CE30, 0, 0);
}

uint64_t sub_24AF1CE30()
{
  v50 = v0;
  v49[1] = *MEMORY[0x277D85DE8];
  v1 = v0[6];
  v2 = *(v0[4] + 128);
  sub_24AF13608(v0[5]);
  v3 = sub_24AF352EC();

  sub_24AF1310C(v1);
  v4 = sub_24AF3565C();

  v5 = MessagingOptions.dictionaryValue.getter();
  sub_24AF13340(v5);

  v6 = sub_24AF352EC();

  v0[2] = 0;
  v0[3] = 0;
  LODWORD(v2) = [v2 sendMessage:v3 toDestinations:v4 priority:300 options:v6 identifier:v0 + 2 error:v0 + 3];

  v7 = v0[3];
  v8 = v0[2];
  if (!v2)
  {
    v14 = v7;
    v15 = v8;
    sub_24AF350DC();

LABEL_8:
    swift_willThrow();

    v18 = v0[1];
    goto LABEL_9;
  }

  if (!v8)
  {
    v16 = v7;
    goto LABEL_7;
  }

  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[9];
  sub_24AF353AC();
  v12 = v7;
  v13 = v8;
  sub_24AF351DC();

  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_24AEE2E10(v0[9], &qword_27EFC11C0, &qword_24AF38DC0);
LABEL_7:
    sub_24AED9680();
    swift_allocError();
    *v17 = 0;
    goto LABEL_8;
  }

  v48 = v13;
  (*(v0[11] + 32))(v0[13], v0[9], v0[10]);
  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v21 = v0[12];
  v20 = v0[13];
  v23 = v0[10];
  v22 = v0[11];
  v24 = sub_24AF3529C();
  __swift_project_value_buffer(v24, qword_281392F20);
  (*(v22 + 16))(v21, v20, v23);
  v25 = sub_24AF3527C();
  v26 = sub_24AF3572C();
  v27 = os_log_type_enabled(v25, v26);
  v29 = v0[12];
  v28 = v0[13];
  v31 = v0[10];
  v30 = v0[11];
  if (v27)
  {
    v45 = v26;
    v32 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v49[0] = v46;
    *v32 = 136446466;
    v36 = sub_24AF139CC(v46, v33, v34, v35);
    v47 = v28;
    v38 = sub_24AEF599C(v36, v37, v49);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v39 = sub_24AF35C0C();
    v41 = v40;
    v42 = *(v30 + 8);
    v42(v29, v31);
    v43 = sub_24AEF599C(v39, v41, v49);

    *(v32 + 14) = v43;
    _os_log_impl(&dword_24AECF000, v25, v45, "%{public}s: Sent raw dictionary to with identifier: %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v46, -1, -1);
    MEMORY[0x24C236490](v32, -1, -1);

    v42(v47, v31);
  }

  else
  {

    v44 = *(v30 + 8);
    v44(v29, v31);
    v44(v28, v31);
  }

  v18 = v0[1];
LABEL_9:

  return v18();
}

uint64_t sub_24AF1D358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = v7;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  *(v8 + 120) = a1;
  *(v8 + 128) = a2;
  *(v8 + 168) = *v7;
  v11 = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  *(v8 + 176) = swift_task_alloc();
  v12 = *(v11 + 80);
  *(v8 + 184) = v12;
  v13 = *(v11 + 88);
  *(v8 + 192) = v13;
  v15 = type metadata accessor for Message(255, v12, v13, v14);
  *(v8 + 200) = v15;
  v16 = type metadata accessor for MessageContext(255);
  *(v8 + 208) = v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v8 + 216) = TupleTypeMetadata2;
  *(v8 + 224) = *(TupleTypeMetadata2 - 8);
  *(v8 + 232) = swift_task_alloc();
  v18 = sub_24AF3521C();
  *(v8 + 240) = v18;
  *(v8 + 248) = *(v18 - 8);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = type metadata accessor for MessagingOptions(0);
  *(v8 + 312) = swift_task_alloc();
  v19 = *(v16 - 8);
  *(v8 + 320) = v19;
  *(v8 + 328) = *(v19 + 64);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v20 = *(v15 - 8);
  *(v8 + 360) = v20;
  *(v8 + 368) = *(v20 + 64);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  v21 = swift_task_alloc();
  v22 = *a3;
  v23 = a3[1];
  *(v8 + 424) = v21;
  *(v8 + 432) = v22;
  *(v8 + 536) = *a6;
  v24 = *(a6 + 8);
  v25 = *(a6 + 16);
  *(v8 + 440) = v23;
  *(v8 + 448) = v24;
  *(v8 + 456) = v25;

  return MEMORY[0x2822009F8](sub_24AF1D718, v7, 0);
}

uint64_t sub_24AF1D718()
{
  v243 = v0;
  v1 = v0[20];
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = v2 == v0[15] && v3 == v0[16];
  if (!v4 && (sub_24AF35C4C() & 1) == 0)
  {
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v44 = sub_24AF3529C();
    __swift_project_value_buffer(v44, qword_281392F20);

    v45 = sub_24AF3527C();
    v46 = sub_24AF3570C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v0[15];
      v239 = v0[16];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v242[0] = v49;
      *v48 = 136446722;
      v53 = sub_24AF139CC(v49, v50, v51, v52);
      v55 = sub_24AEF599C(v53, v54, v242);

      *(v48 + 4) = v55;
      *(v48 + 12) = 2082;
      *(v48 + 14) = sub_24AEF599C(v2, v3, v242);
      *(v48 + 22) = 2082;
      *(v48 + 24) = sub_24AEF599C(v47, v239, v242);
      _os_log_impl(&dword_24AECF000, v45, v46, "%{public}s: Ignoring delegate callback from wrong IDS service! Expected %{public}s, received: %{public}s", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v49, -1, -1);
      MEMORY[0x24C236490](v48, -1, -1);
    }

    goto LABEL_48;
  }

  sub_24AF3508C();
  swift_allocObject();
  sub_24AF3507C();
  swift_getWitnessTable();
  sub_24AF3505C();
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[45];
  v8 = v0[25];
  v9 = v0[26];
  v10 = v0[19];

  v11 = *(v7 + 32);
  v11(v5, v6, v8);
  if (*(v10 + *(v9 + 36)) == 1)
  {
    v12 = v0[20];
    v13 = *(v12 + 256);
    v0[58] = v13;
    v14 = *(v12 + 264);
    v0[59] = v14;
    if (v13)
    {
      v236 = v13;
      sub_24AED1164(v13, v14);
      if (qword_281392F18 != -1)
      {
        swift_once();
      }

      v15 = v0[53];
      v16 = v0[51];
      v18 = v0[44];
      v17 = v0[45];
      v19 = v0[25];
      v20 = v0[19];
      v21 = sub_24AF3529C();
      v0[60] = __swift_project_value_buffer(v21, qword_281392F20);
      sub_24AF226D0(v20, v18, type metadata accessor for MessageContext);
      v22 = *(v17 + 16);
      v22(v16, v15, v19);

      v23 = sub_24AF3527C();
      v24 = sub_24AF3572C();

      if (os_log_type_enabled(v23, v24))
      {
        v212 = v0[56];
        v217 = v0[57];
        v230 = v0[51];
        v222 = v0[50];
        v25 = v0[44];
        v26 = v0[45];
        v27 = v0[25];
        v204 = v0[15];
        v207 = v0[16];
        v28 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        v242[0] = v233;
        *v28 = 136316162;
        v32 = sub_24AF139CC(v233, v29, v30, v31);
        log = v23;
        v34 = sub_24AEF599C(v32, v33, v242);

        *(v28 + 4) = v34;
        *(v28 + 12) = 2080;
        sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v35 = sub_24AF35C0C();
        v37 = v36;
        sub_24AF22BCC(v25, type metadata accessor for MessageContext);
        v38 = sub_24AEF599C(v35, v37, v242);

        *(v28 + 14) = v38;
        *(v28 + 22) = 2080;
        *(v28 + 24) = sub_24AEF599C(v204, v207, v242);
        *(v28 + 32) = 2080;
        *(v28 + 34) = sub_24AEF599C(v212, v217, v242);
        *(v28 + 42) = 2080;
        v22(v222, v230, v27);
        v39 = *(v26 + 8);
        v39(v230, v27);
        v40 = Message.description.getter(v27);
        v42 = v41;
        v39(v222, v27);
        v43 = sub_24AEF599C(v40, v42, v242);

        *(v28 + 44) = v43;
        _os_log_impl(&dword_24AECF000, log, v24, "%s: Received message %s on %s from %s: %s expecting response", v28, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C236490](v233, -1, -1);
        MEMORY[0x24C236490](v28, -1, -1);
      }

      else
      {
        v112 = v0[44];
        v39 = *(v0[45] + 8);
        v39(v0[51], v0[25]);

        sub_24AF22BCC(v112, type metadata accessor for MessageContext);
      }

      v0[61] = v39;
      v113 = *(v0 + 28);
      v114 = v0[55];
      v0[11] = v0[54];
      v115 = *(v0 + 536);
      v0[12] = v114;
      *(v0 + 64) = v115;
      *(v0 + 9) = v113;
      v116 = sub_24AEE2954(MEMORY[0x277D84F90]);
      v0[62] = v116;
      v234 = (v236 + *v236);
      v117 = swift_task_alloc();
      v0[63] = v117;
      *v117 = v0;
      v117[1] = sub_24AF1EF40;
      v118 = v0[53];
      v119 = v0[49];
      v120 = v0[19];

      return (v234)(v119, v0 + 11, v0 + 8, v118, v116, v120);
    }

    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v97 = sub_24AF3529C();
    __swift_project_value_buffer(v97, qword_281392F20);
    v98 = sub_24AF3527C();
    v99 = sub_24AF3570C();
    v100 = os_log_type_enabled(v98, v99);
    v101 = v0[53];
    v102 = v0[45];
    v103 = v0[25];
    if (v100)
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v242[0] = v105;
      *v104 = 136446210;
      v109 = sub_24AF139CC(v105, v106, v107, v108);
      v111 = sub_24AEF599C(v109, v110, v242);

      *(v104 + 4) = v111;
      _os_log_impl(&dword_24AECF000, v98, v99, "%{public}s: No replyCallback!", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x24C236490](v105, -1, -1);
      MEMORY[0x24C236490](v104, -1, -1);
    }

    (*(v102 + 8))(v101, v103);
  }

  else
  {
    v56 = v0[36];
    v57 = v0[30];
    v58 = v0[31];
    sub_24AEF8C60(v0[19], v56);
    if ((*(v58 + 48))(v56, 1, v57) == 1)
    {
      sub_24AEE2E10(v0[36], &qword_27EFC11C0, &qword_24AF38DC0);
    }

    else
    {
      (*(v0[31] + 32))(v0[34], v0[36], v0[30]);
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
      sub_24AF3501C();
      sub_24AF22C2C(&qword_281393400, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_24AF3533C();

      if (v0[13])
      {
        if (qword_281392F18 != -1)
        {
          swift_once();
        }

        v240 = v0[53];
        v59 = v0[48];
        v60 = v0[45];
        v61 = v0[43];
        v223 = v0[33];
        loga = v0[34];
        v62 = v0[31];
        v213 = v0[30];
        v63 = v0[25];
        v64 = v0[19];
        v65 = sub_24AF3529C();
        v66 = v0;
        __swift_project_value_buffer(v65, qword_281392F20);
        sub_24AF226D0(v64, v61, type metadata accessor for MessageContext);
        v67 = v240;
        v241 = *(v60 + 16);
        v241(v59, v67, v63);
        v68 = v223;
        v224 = *(v62 + 16);
        v224(v68, loga, v213);

        v69 = sub_24AF3527C();
        v70 = sub_24AF3572C();

        if (os_log_type_enabled(v69, v70))
        {
          v214 = v0[57];
          v218 = v0[50];
          v205 = v0[48];
          v71 = v0[45];
          v72 = v66[43];
          v208 = v66[33];
          v201 = v69;
          v73 = v66[31];
          v74 = v66[25];
          v199 = v70;
          v194 = v66[16];
          v196 = v66[56];
          v192 = v66[30];
          v193 = v66[15];
          v75 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          v242[0] = v198;
          *v75 = 136316418;
          v79 = sub_24AF139CC(v198, v76, v77, v78);
          v81 = sub_24AEF599C(v79, v80, v242);

          *(v75 + 4) = v81;
          *(v75 + 12) = 2080;
          sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v82 = sub_24AF35C0C();
          v84 = v83;
          sub_24AF22BCC(v72, type metadata accessor for MessageContext);
          v85 = sub_24AEF599C(v82, v84, v242);

          *(v75 + 14) = v85;
          *(v75 + 22) = 2080;
          *(v75 + 24) = sub_24AEF599C(v193, v194, v242);
          *(v75 + 32) = 2080;
          *(v75 + 34) = sub_24AEF599C(v196, v214, v242);
          *(v75 + 42) = 2080;
          v241(v218, v205, v74);
          v86 = *(v71 + 8);
          v86(v205, v74);
          v87 = v218;
          v88 = Message.description.getter(v74);
          v90 = v89;
          v219 = v86;
          v86(v87, v74);
          v91 = sub_24AEF599C(v88, v90, v242);

          *(v75 + 44) = v91;
          *(v75 + 52) = 2080;
          v92 = v208;
          v93 = sub_24AF35C0C();
          v95 = v94;
          v209 = *(v73 + 8);
          v209(v92, v192);
          v96 = sub_24AEF599C(v93, v95, v242);

          *(v75 + 54) = v96;
          _os_log_impl(&dword_24AECF000, v201, v199, "%s: Received message %s on %s from %s: %s in response to %s", v75, 0x3Eu);
          swift_arrayDestroy();
          MEMORY[0x24C236490](v198, -1, -1);
          MEMORY[0x24C236490](v75, -1, -1);
        }

        else
        {
          v139 = v0[43];
          v140 = v0[33];
          v141 = v0[30];
          v142 = v0[31];
          v219 = *(v66[45] + 8);
          v219(v66[48], v66[25]);

          v209 = *(v142 + 8);
          v209(v140, v141);
          sub_24AF22BCC(v139, type metadata accessor for MessageContext);
        }

        v0 = v66;
        v202 = v66[53];
        v143 = v66[34];
        v144 = v66[32];
        v145 = v66[29];
        v146 = v66[30];
        v148 = v66[27];
        v147 = v66[28];
        v149 = v66[25];
        v150 = v66[19];
        v151 = *(v148 + 48);
        (v241)(v0[29]);
        sub_24AF226D0(v150, v145 + v151, type metadata accessor for MessageContext);
        sub_24AF3500C();
        (*(v147 + 8))(v145, v148);
        v224(v144, v143, v146);
        v0[14] = 0;
        swift_beginAccess();
        sub_24AF3532C();
        sub_24AF3534C();
        swift_endAccess();

        v209(v143, v146);
        v219(v202, v149);
        goto LABEL_48;
      }

      if (qword_281392F18 != -1)
      {
        swift_once();
      }

      v122 = sub_24AF3529C();
      __swift_project_value_buffer(v122, qword_281392F20);
      v123 = sub_24AF3527C();
      v124 = sub_24AF3570C();
      v125 = os_log_type_enabled(v123, v124);
      v126 = v0[34];
      v127 = v0[30];
      v128 = v0[31];
      if (v125)
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v242[0] = v130;
        v131 = v130;
        *v129 = 136315138;
        v135 = sub_24AF139CC(v130, v132, v133, v134);
        v137 = v11;
        v138 = sub_24AEF599C(v135, v136, v242);

        *(v129 + 4) = v138;
        v11 = v137;
        _os_log_impl(&dword_24AECF000, v123, v124, "%s: Got unexpected response!", v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v131);
        MEMORY[0x24C236490](v131, -1, -1);
        MEMORY[0x24C236490](v129, -1, -1);

        (*(v128 + 8))(v126, v127);
      }

      else
      {

        (*(v128 + 8))(v126, v127);
      }
    }

    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v152 = v0[53];
    v153 = v0[47];
    v154 = v0[45];
    v155 = v0[25];
    v156 = sub_24AF3529C();
    __swift_project_value_buffer(v156, qword_281392F20);
    v157 = v155;
    v158 = *(v154 + 16);
    v158(v153, v152, v157);

    v159 = sub_24AF3527C();
    v160 = sub_24AF3572C();

    v235 = v11;
    if (os_log_type_enabled(v159, v160))
    {
      v220 = v0[56];
      v225 = v0[57];
      v161 = v0[50];
      logb = v0[47];
      v162 = v0[45];
      v163 = v0[25];
      v237 = v160;
      v210 = v0[15];
      v215 = v0[16];
      v164 = swift_slowAlloc();
      v231 = swift_slowAlloc();
      v242[0] = v231;
      *v164 = 136316163;
      v168 = sub_24AF139CC(v231, v165, v166, v167);
      v170 = sub_24AEF599C(v168, v169, v242);

      *(v164 + 4) = v170;
      *(v164 + 12) = 2082;
      *(v164 + 14) = sub_24AEF599C(v210, v215, v242);
      *(v164 + 22) = 2160;
      *(v164 + 24) = 1752392040;
      *(v164 + 32) = 2081;
      *(v164 + 34) = sub_24AEF599C(v220, v225, v242);
      *(v164 + 42) = 2082;
      v158(v161, logb, v163);
      v171 = *(v162 + 8);
      v171(logb, v163);
      v172 = Message.description.getter(v163);
      v174 = v173;
      v171(v161, v163);
      v175 = sub_24AEF599C(v172, v174, v242);

      *(v164 + 44) = v175;
      _os_log_impl(&dword_24AECF000, v159, v237, "%s: Received message on %{public}s from %{private,mask.hash}s: %{public}s", v164, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v231, -1, -1);
      MEMORY[0x24C236490](v164, -1, -1);
    }

    else
    {
      v171 = *(v0[45] + 8);
      v171(v0[47], v0[25]);
    }

    v176 = v158;
    v177 = v0[20];
    v178 = *(v177 + 176);
    if (v178)
    {
      v211 = *(v0 + 536);
      v216 = v0[56];
      v221 = v0[57];
      v203 = v0[54];
      v206 = v0[55];
      v179 = v0[53];
      v232 = v171;
      v180 = v0[50];
      v181 = v176;
      v200 = v0[46];
      v238 = v0[45];
      v182 = v0[42];
      v195 = v0[40];
      v183 = v0[25];
      v184 = v0[22];
      v226 = v184;
      v185 = v0[19];
      v186 = *(v177 + 184);
      v187 = sub_24AF3557C();
      v197 = *(v0 + 23);
      (*(*(v187 - 8) + 56))(v184, 1, 1, v187);
      v181(v180, v179, v183);
      sub_24AF226D0(v185, v182, type metadata accessor for MessageContext);
      v188 = (*(v238 + 80) + 104) & ~*(v238 + 80);
      v189 = (v200 + *(v195 + 80) + v188) & ~*(v195 + 80);
      v190 = swift_allocObject();
      *(v190 + 16) = 0;
      *(v190 + 24) = 0;
      *(v190 + 32) = v197;
      *(v190 + 48) = v178;
      *(v190 + 56) = v186;
      *(v190 + 64) = v203;
      *(v190 + 72) = v206;
      *(v190 + 80) = v211;
      *(v190 + 88) = v216;
      *(v190 + 96) = v221;
      v235(v190 + v188, v180, v183);
      sub_24AEF9044(v182, v190 + v189, type metadata accessor for MessageContext);
      sub_24AED1164(v178, v186);

      sub_24AED1164(v178, v186);

      sub_24AF08F10(0, 0, v226, &unk_24AF3A0A8, v190);

      sub_24AED56FC(v178, v186);
      v232(v179, v183);
    }

    else
    {
      v171(v0[53], v0[25]);
    }
  }

LABEL_48:

  v191 = v0[1];

  return v191();
}

uint64_t sub_24AF1EF40()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = sub_24AF1F56C;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_24AF1F068;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AF1F068()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 536);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 296);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  v8 = *(v0 + 208);
  v21 = *(v0 + 152);
  v22 = *(v0 + 448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24AF37AB0;
  *(v9 + 32) = v2;
  *(v9 + 40) = v22;
  *(v9 + 48) = v1;
  (*(v7 + 16))(v5, v21 + *(v8 + 20), v6);
  v10 = *(v7 + 56);
  v10(v5, 0, 1, v6);

  v11 = MEMORY[0x277D84F90];
  v23 = sub_24AEF6B54(MEMORY[0x277D84F90]);
  v12 = sub_24AEF6B54(v11);
  v13 = v4[7];
  v10(v3 + v13, 1, 1, v6);
  sub_24AF3520C();
  *(v3 + v4[5]) = v9;
  *(v3 + v4[6]) = 0;
  sub_24AEF8E70(v5, v3 + v13);
  v14 = v3 + v4[8];
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v3 + v4[9]) = 0;
  *(v3 + v4[10]) = v23;
  *(v3 + v4[11]) = v12;
  v15 = (v3 + v4[12]);
  *v15 = 0;
  v15[1] = 0;
  *(v3 + v4[13]) = xmmword_24AF37E10;
  v16 = swift_task_alloc();
  *(v0 + 520) = v16;
  *v16 = v0;
  v16[1] = sub_24AF1F280;
  v17 = *(v0 + 392);
  v18 = *(v0 + 312);
  v19 = *(v0 + 280);

  return LocalMessaging.send(message:messageOptions:)(v19, v17, v18);
}

uint64_t sub_24AF1F280()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = v2[20];
    v4 = sub_24AF1F878;
  }

  else
  {
    v5 = v2[20];
    (*(v2[31] + 8))(v2[35], v2[30]);
    v4 = sub_24AF1F3B8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AF1F3B8()
{
  v1 = v0[53];
  v2 = v0[49];
  v3 = v0[45];
  v4 = v0[39];
  v5 = v0[25];
  sub_24AED56FC(v0[58], v0[59]);
  v6 = *(v3 + 8);
  v6(v2, v5);
  v6(v1, v5);
  sub_24AF22BCC(v4, type metadata accessor for MessagingOptions);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AF1F56C()
{
  v28 = v0;

  v1 = v0[64];
  v2 = v0[61];
  v3 = v1;
  v4 = sub_24AF3527C();
  v5 = sub_24AF3570C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[58];
  v8 = v0[53];
  v9 = v0[25];
  if (v6)
  {
    v26 = v0[53];
    v24 = v0[59];
    v10 = swift_slowAlloc();
    v25 = v9;
    v11 = swift_slowAlloc();
    v23 = v2;
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 136446466;
    v16 = sub_24AF139CC(v12, v13, v14, v15);
    v18 = sub_24AEF599C(v16, v17, &v27);

    *(v10 + 4) = v18;
    *(v10 + 12) = 2114;
    v19 = v1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v20;
    *v11 = v20;
    _os_log_impl(&dword_24AECF000, v4, v5, "%{public}s: Error sending response: %{public}@", v10, 0x16u);
    sub_24AEE2E10(v11, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C236490](v12, -1, -1);
    MEMORY[0x24C236490](v10, -1, -1);
    sub_24AED56FC(v7, v24);

    v23(v26, v25);
  }

  else
  {
    sub_24AED56FC(v0[58], v0[59]);

    v2(v8, v9);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_24AF1F878()
{
  v29 = v0;
  v1 = v0[39];
  v2 = *(v0[45] + 8);
  v2(v0[49], v0[25]);
  sub_24AF22BCC(v1, type metadata accessor for MessagingOptions);
  v3 = v0[66];
  v4 = v3;
  v5 = sub_24AF3527C();
  v6 = sub_24AF3570C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[58];
  v9 = v0[53];
  v10 = v0[25];
  if (v7)
  {
    v27 = v0[53];
    v25 = v0[59];
    v11 = swift_slowAlloc();
    v26 = v10;
    v12 = swift_slowAlloc();
    v24 = v2;
    v13 = swift_slowAlloc();
    v28 = v13;
    *v11 = 136446466;
    v17 = sub_24AF139CC(v13, v14, v15, v16);
    v19 = sub_24AEF599C(v17, v18, &v28);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2114;
    v20 = v3;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v21;
    *v12 = v21;
    _os_log_impl(&dword_24AECF000, v5, v6, "%{public}s: Error sending response: %{public}@", v11, 0x16u);
    sub_24AEE2E10(v12, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C236490](v13, -1, -1);
    MEMORY[0x24C236490](v11, -1, -1);
    sub_24AED56FC(v8, v25);

    v24(v27, v26);
  }

  else
  {
    sub_24AED56FC(v0[58], v0[59]);

    v2(v9, v10);
  }

  v22 = v0[1];

  return v22();
}

void sub_24AF1FBB8(void (*a1)(char *, uint64_t), unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7)
{
  v105 = a7;
  v112 = a5;
  v114 = *v7;
  v12 = v114;
  v13 = type metadata accessor for MessageContext(0);
  v103 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v104 = v14;
  v110 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v15 - 8);
  v111 = &v89 - v16;
  v17 = *(v12 + 80);
  v101 = *(v12 + 88);
  v102 = v17;
  v19 = type metadata accessor for Message(0, v17, v101, v18);
  v113 = *(v19 - 8);
  isa = v113[8].isa;
  v21 = MEMORY[0x28223BE20](v19);
  v109 = &v89 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v106 = &v89 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v89 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v89 - v27;
  v29 = a3[1];
  v99 = *a3;
  v100 = v29;
  v98 = *a6;
  v30 = *(a6 + 1);
  v107 = *(a6 + 2);
  v108 = v30;
  v32 = v7[14];
  v31 = v7[15];
  v115 = a1;
  if (__PAIR128__(v31, v32) == __PAIR128__(a2, a1) || (sub_24AF35C4C() & 1) != 0)
  {
    v33 = sub_24AF3514C();
    v35 = v34;
    v97 = v7;
    sub_24AF3508C();
    swift_allocObject();
    sub_24AF3507C();
    swift_getWitnessTable();
    sub_24AF3505C();
    sub_24AED6198(v33, v35);

    v47 = v113;
    v48 = v113[4].isa;
    v94 = v113 + 4;
    v93 = v48;
    (v48)(v28, v26, v19);
    v49 = v19;
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v50 = sub_24AF3529C();
    __swift_project_value_buffer(v50, qword_281392F20);
    v51 = v47[2].isa;
    v52 = v106;
    v96 = v28;
    v95 = v47 + 2;
    v51(v106, v28, v19);
    v53 = a2;

    v54 = v107;

    v55 = sub_24AF3527C();
    v56 = sub_24AF3572C();

    v91 = v56;
    v57 = os_log_type_enabled(v55, v56);
    v92 = v51;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v90 = v59;
      v116[0] = v59;
      *v58 = 136316419;
      v89 = v55;
      v63 = sub_24AF139CC(v59, v60, v61, v62);
      v65 = sub_24AEF599C(v63, v64, v116);

      *(v58 + 4) = v65;
      *(v58 + 12) = 2082;
      *(v58 + 14) = sub_24AEF599C(v115, v53, v116);
      *(v58 + 22) = 2160;
      *(v58 + 24) = 1752392040;
      *(v58 + 32) = 2081;
      *(v58 + 34) = sub_24AEF599C(v108, v54, v116);
      *(v58 + 42) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0918, &qword_24AF380D8);
      v66 = sub_24AF3530C();
      v68 = sub_24AEF599C(v66, v67, v116);

      *(v58 + 44) = v68;
      v49 = v19;
      *(v58 + 52) = 2082;
      v69 = v109;
      v51(v109, v52, v49);
      v70 = v113[1].isa;
      (v70)(v52, v49);
      v71 = Message.description.getter(v49);
      v73 = v72;
      (v70)(v69, v49);
      v74 = sub_24AEF599C(v71, v73, v116);

      *(v58 + 54) = v74;
      v75 = v89;
      _os_log_impl(&dword_24AECF000, v89, v91, "%s: Received (resource) message on %{public}s from %{private,mask.hash}s: metadata: %s'; message: %{public}s", v58, 0x3Eu);
      v76 = v90;
      swift_arrayDestroy();
      MEMORY[0x24C236490](v76, -1, -1);
      MEMORY[0x24C236490](v58, -1, -1);

      v77 = v97;
      v47 = v113;
      v78 = v97[22];
      if (v78)
      {
LABEL_15:
        v114 = v77[23];
        v79 = sub_24AF3557C();
        (*(*(v79 - 8) + 56))(v111, 1, 1, v79);
        v115 = v70;
        v80 = v54;
        v81 = v109;
        v92(v109, v96, v49);
        sub_24AF226D0(v105, v110, type metadata accessor for MessageContext);
        v82 = (LOBYTE(v47[10].isa) + 104) & ~LOBYTE(v47[10].isa);
        v83 = (isa + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
        v84 = (*(v103 + 80) + v83 + 8) & ~*(v103 + 80);
        v85 = swift_allocObject();
        *(v85 + 16) = 0;
        *(v85 + 24) = 0;
        v86 = v101;
        *(v85 + 32) = v102;
        *(v85 + 40) = v86;
        v87 = v114;
        *(v85 + 48) = v78;
        *(v85 + 56) = v87;
        v88 = v100;
        *(v85 + 64) = v99;
        *(v85 + 72) = v88;
        *(v85 + 80) = v98;
        *(v85 + 88) = v108;
        *(v85 + 96) = v80;
        v93(v85 + v82, v81, v49);
        *(v85 + v83) = v112;
        sub_24AEF9044(v110, v85 + v84, type metadata accessor for MessageContext);
        sub_24AED1164(v78, v87);

        sub_24AED1164(v78, v87);

        sub_24AF08F10(0, 0, v111, &unk_24AF3A090, v85);

        sub_24AED56FC(v78, v87);
        v115(v96, v49);
        return;
      }
    }

    else
    {
      v70 = v47[1].isa;
      (v70)(v52, v19);

      v77 = v97;
      v78 = v97[22];
      if (v78)
      {
        goto LABEL_15;
      }
    }

    (v70)(v96, v49);
  }

  else
  {
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v36 = sub_24AF3529C();
    __swift_project_value_buffer(v36, qword_281392F20);

    v113 = sub_24AF3527C();
    v37 = sub_24AF3570C();

    if (os_log_type_enabled(v113, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v116[0] = v39;
      *v38 = 136446722;
      v43 = sub_24AF139CC(v39, v40, v41, v42);
      v45 = sub_24AEF599C(v43, v44, v116);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_24AEF599C(v32, v31, v116);
      *(v38 + 22) = 2082;
      *(v38 + 24) = sub_24AEF599C(v115, a2, v116);
      _os_log_impl(&dword_24AECF000, v113, v37, "%{public}s: Ignoring delegate callback from wrong IDS service! Expected %{public}s, received: %{public}s", v38, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v39, -1, -1);
      MEMORY[0x24C236490](v38, -1, -1);
    }

    else
    {
      v46 = v113;
    }
  }
}

uint64_t sub_24AF207D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = v6;
  *(v7 + 48) = a5;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24AF20800, v6, 0);
}

uint64_t sub_24AF20800()
{
  sub_24AF215DC(*(v0 + 16), *(v0 + 24), *(v0 + 48), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AF20868(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_24AEF9DD0;

  return sub_24AF21A70(a3, a4, a5);
}

uint64_t sub_24AF2092C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_24AEF9DD0;

  return sub_24AF1D358(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_24AF20A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_24AF20A3C, v7, 0);
}

uint64_t sub_24AF20A3C()
{
  sub_24AF1FBB8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AF20AA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_24AEF9DD0;

  return sub_24AF21C24(a1, a2, a3, a4, a6, a7);
}

uint64_t sub_24AF20B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AEF9DD0;

  return sub_24AF22298(a3);
}

uint64_t sub_24AF20C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AEF9DD0;

  return sub_24AF22400(a3);
}

uint64_t sub_24AF20CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AEF9DD0;

  return sub_24AF22568(a3);
}

uint64_t sub_24AF20D9C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  v4 = *(v2 + 168);
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;

  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AF20DEC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 184);
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;

  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AF20E3C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 192);
  v4 = *(v2 + 200);
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;

  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AF20E8C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 208);
  v4 = *(v2 + 216);
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;

  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AF20EDC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 224);
  v4 = *(v2 + 232);
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;

  return sub_24AED56FC(v3, v4);
}

uint64_t sub_24AF20F2C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 240);
  v4 = *(v2 + 248);
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;

  return sub_24AED56FC(v3, v4);
}

uint64_t LocalMessaging.setReplyCallback(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 256);
  v4 = *(v2 + 264);
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;

  return sub_24AED56FC(v3, v4);
}

uint64_t LocalMessaging.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LocalMessaging(0, *(*v4 + 80), *(*v4 + 88), a4);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_24AF35BEC();
  MEMORY[0x24C235440](v7);

  MEMORY[0x24C235440](32, 0xE100000000000000);
  v8 = MEMORY[0x24C235C50](v5, WitnessTable);
  MEMORY[0x24C235440](v8);

  MEMORY[0x24C235440](32, 0xE100000000000000);
  MEMORY[0x24C235440](v4[14], v4[15]);
  MEMORY[0x24C235440](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AF21110()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_281393428);
  __swift_project_value_buffer(v0, qword_281393428);
  return sub_24AF3528C();
}

uint64_t sub_24AF21194(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AF35C4C() & 1;
  }
}

uint64_t dispatch thunk of LocalMessaging.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 496) + **(v2 + 496));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AEE1D70;

  return v8(a1, a2);
}

void sub_24AF215DC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24AF3521C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v35 - v13;
  swift_beginAccess();
  if (*(*(v4 + 144) + 16))
  {

    sub_24AEDA254(a2);
    if (v15)
    {

      if (a3)
      {
        sub_24AF3500C();
      }

      else
      {
        if (a4)
        {
          v31 = a4;
        }

        else
        {
          v32 = sub_24AF34FEC();
          sub_24AF22C2C(&qword_27EFC07F8, MEMORY[0x277D08938], MEMORY[0x277D08940]);
          v31 = swift_allocError();
          *v33 = 0xD00000000000001CLL;
          v33[1] = 0x800000024AF36E80;
          (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D08930], v32);
        }

        v35[0] = v31;
        v34 = a4;
        sub_24AF34FFC();
      }

      (*(v9 + 16))(v14, a2, v8);
      swift_beginAccess();
      sub_24AF09284(0, v14);
      swift_endAccess();

      return;
    }
  }

  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v16 = sub_24AF3529C();
  __swift_project_value_buffer(v16, qword_281392F20);
  (*(v9 + 16))(v12, a2, v8);
  v17 = sub_24AF3527C();
  v18 = sub_24AF3570C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35[0] = v20;
    *v19 = 136446466;
    v24 = sub_24AF139CC(v20, v21, v22, v23);
    v26 = sub_24AEF599C(v24, v25, v35);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v27 = sub_24AF35C0C();
    v29 = v28;
    (*(v9 + 8))(v12, v8);
    v30 = sub_24AEF599C(v27, v29, v35);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_24AECF000, v17, v18, "%{public}s: Got didSend callback for unsent message! %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v20, -1, -1);
    MEMORY[0x24C236490](v19, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_24AF21A70(void *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  v5 = a1[1];
  *(v4 + 72) = *a1;
  *(v4 + 80) = v5;
  *(v4 + 128) = *a3;
  v6 = *(a3 + 16);
  *(v4 + 88) = *(a3 + 8);
  *(v4 + 96) = v6;
  return MEMORY[0x2822009F8](sub_24AF21AA8, v3, 0);
}

uint64_t sub_24AF21AA8()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 160);
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 128);
    v5 = *(v0 + 80);
    v6 = *(v1 + 168);
    *(v0 + 40) = *(v0 + 72);
    *(v0 + 112) = v6;
    *(v0 + 48) = v5;
    *(v0 + 16) = v4;
    *(v0 + 24) = v3;

    v11 = (v2 + *v2);
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    v7[1] = sub_24AEF7C38;
    v8 = *(v0 + 56);

    return v11(v0 + 40, v8, v0 + 16);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_24AF21C24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  *(v7 + 16) = a1;
  *(v7 + 56) = *v6;
  v10 = *(type metadata accessor for MessageContext(0) - 8);
  *(v7 + 64) = v10;
  *(v7 + 72) = *(v10 + 64);
  *(v7 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v11 = swift_task_alloc();
  v12 = *a3;
  v13 = a3[1];
  *(v7 + 88) = v11;
  *(v7 + 96) = v12;
  *(v7 + 128) = *a5;
  v14 = *(a5 + 8);
  v15 = *(a5 + 16);
  *(v7 + 104) = v13;
  *(v7 + 112) = v14;
  *(v7 + 120) = v15;

  return MEMORY[0x2822009F8](sub_24AF21D78, v6, 0);
}

uint64_t sub_24AF21D78()
{
  v52 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = v2 == *(v0 + 16) && v3 == *(v0 + 24);
  if (v4 || (sub_24AF35C4C() & 1) != 0)
  {
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v5 = sub_24AF3529C();
    __swift_project_value_buffer(v5, qword_281392F20);

    v6 = sub_24AF3527C();
    v7 = sub_24AF3572C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 112);
      v49 = *(v0 + 120);
      v10 = *(v0 + 16);
      v9 = *(v0 + 24);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51 = v12;
      *v11 = 136315907;
      v16 = sub_24AF139CC(v12, v13, v14, v15);
      v18 = sub_24AEF599C(v16, v17, &v51);

      *(v11 + 4) = v18;
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_24AEF599C(v10, v9, &v51);
      *(v11 + 22) = 2160;
      *(v11 + 24) = 1752392040;
      *(v11 + 32) = 2081;
      *(v11 + 34) = sub_24AEF599C(v8, v49, &v51);
      _os_log_impl(&dword_24AECF000, v6, v7, "%s: Received raw dictionary on %{public}s from %{private,mask.hash}s", v11, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v12, -1, -1);
      MEMORY[0x24C236490](v11, -1, -1);
    }

    v19 = *(v0 + 48);
    v20 = *(v19 + 192);
    if (v20)
    {
      v21 = *(v0 + 120);
      v47 = *(v0 + 128);
      v45 = *(v0 + 96);
      v46 = *(v0 + 104);
      v23 = *(v0 + 80);
      v22 = *(v0 + 88);
      v48 = *(v0 + 112);
      v24 = *(v0 + 64);
      v25 = *(v0 + 32);
      v26 = *(v0 + 40);
      v27 = *(v19 + 200);
      v28 = sub_24AF3557C();
      (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
      sub_24AF226D0(v26, v23, type metadata accessor for MessageContext);
      v29 = (*(v24 + 80) + 96) & ~*(v24 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 32) = v20;
      *(v30 + 40) = v27;
      *(v30 + 48) = v45;
      *(v30 + 56) = v46;
      *(v30 + 64) = v47;
      *(v30 + 72) = v48;
      *(v30 + 80) = v21;
      *(v30 + 88) = v25;
      sub_24AEF9044(v23, v30 + v29, type metadata accessor for MessageContext);

      sub_24AED1164(v20, v27);

      sub_24AF08F10(0, 0, v22, &unk_24AF3A080, v30);
    }
  }

  else
  {
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v31 = sub_24AF3529C();
    __swift_project_value_buffer(v31, qword_281392F20);

    v32 = sub_24AF3527C();
    v33 = sub_24AF3570C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 16);
      v50 = *(v0 + 24);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51 = v36;
      *v35 = 136446722;
      v40 = sub_24AF139CC(v36, v37, v38, v39);
      v42 = sub_24AEF599C(v40, v41, &v51);

      *(v35 + 4) = v42;
      *(v35 + 12) = 2082;
      *(v35 + 14) = sub_24AEF599C(v2, v3, &v51);
      *(v35 + 22) = 2082;
      *(v35 + 24) = sub_24AEF599C(v34, v50, &v51);
      _os_log_impl(&dword_24AECF000, v32, v33, "%{public}s: Ignoring delegate callback from wrong IDS service! Expected %{public}s, received: %{public}s", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v36, -1, -1);
      MEMORY[0x24C236490](v35, -1, -1);
    }
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_24AF22298(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AF222B8, v1, 0);
}

uint64_t sub_24AF222B8()
{
  v1 = v0[3];
  v2 = *(v1 + 208);
  v0[4] = v2;
  if (v2)
  {
    v0[5] = *(v1 + 216);

    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_24AEF8584;
    v4 = v0[2];

    return v7(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AF22400(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AF22420, v1, 0);
}

uint64_t sub_24AF22420()
{
  v1 = v0[3];
  v2 = *(v1 + 224);
  v0[4] = v2;
  if (v2)
  {
    v0[5] = *(v1 + 232);

    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_24AEF87FC;
    v4 = v0[2];

    return v7(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AF22568(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AF22588, v1, 0);
}

uint64_t sub_24AF22588()
{
  v1 = v0[3];
  v2 = *(v1 + 240);
  v0[4] = v2;
  if (v2)
  {
    v0[5] = *(v1 + 248);

    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_24AEF8584;
    v4 = v0[2];

    return v7(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AF226D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AF22738(uint64_t a1)
{
  type metadata accessor for MessageContext(0);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AEF9DD0;

  return sub_24AEF419C(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24AF22874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Message(0, *(v4 + 32), *(v4 + 40), a4);
  type metadata accessor for MessageContext(0);
  v13 = *(v4 + 24);
  v14 = *(v4 + 16);
  v11 = *(v4 + 56);
  v12 = *(v4 + 48);
  v6 = *(v4 + 64);
  v10 = *(v4 + 72);
  v7 = *(v4 + 80);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_24AEF9DD0;

  return sub_24AEF4064(a1, v14, v13, v12, v11, v6, v10, v7);
}

uint64_t sub_24AF22A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Message(0, *(v4 + 32), *(v4 + 40), a4);
  type metadata accessor for MessageContext(0);
  v13 = *(v4 + 24);
  v14 = *(v4 + 16);
  v6 = *(v4 + 56);
  v7 = *(v4 + 64);
  v11 = *(v4 + 72);
  v12 = *(v4 + 48);
  v8 = *(v4 + 80);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_24AEF9DD0;

  return sub_24AEF31B4(a1, v14, v13, v12, v6, v7, v11, v8);
}

uint64_t sub_24AF22BCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24AF22C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AF22C74(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessagingOptions(0) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AEF9DD0;

  return sub_24AF1AC8C(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_24AF22DBC(uint64_t a1)
{
  v4 = *(type metadata accessor for MessagingOptions(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AEF9DD0;

  return sub_24AF1CCF8(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_24AF22EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v8 = *(type metadata accessor for Message(0, v4[4], v4[5], a4) - 8);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for MessagingOptions(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v4[2];
  v14 = v4[3];
  v15 = v4[6];
  v16 = *(v4 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v6 + 16) = v17;
  *v17 = v6;
  v17[1] = sub_24AEE555C;

  return sub_24AF19810(a1, v13, v14, v15, v4 + v9, v4 + v12, v16);
}

uint64_t sub_24AF23080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v8 = *(type metadata accessor for Message(0, v4[2], v4[3], a4) - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for MessagingOptions(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v4[4];
  v14 = *(v4 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_24AEE555C;

  return sub_24AF1C66C(a1, v13, v4 + v9, v4 + v12, v14);
}

uint64_t sub_24AF23200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for Message(0, v4[4], v4[5], a4) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for MessagingOptions(0) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[6];
  v14 = *(v4 + v8);
  v15 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_24AEF9DD0;

  return sub_24AF17BA8(a1, v11, v12, v13, v4 + v7, v14, v4 + v10, v15);
}

uint64_t sub_24AF233C4(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(sub_24AF3513C() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for MessagingOptions(0) - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v15 = *(type metadata accessor for Message(0, v5, v6, v14) - 8);
  v16 = (v12 + v13 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = v1[4];
  v18 = *(v1 + v9);
  v19 = *(v1 + v10);
  v20 = *(v1 + ((*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = swift_task_alloc();
  *(v3 + 16) = v21;
  *v21 = v3;
  v21[1] = sub_24AEF9DD0;

  return sub_24AF1BD98(a1, v17, v1 + v8, v18, v19, v1 + v12, v1 + v16, v20);
}

uint64_t sub_24AF235DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for Message(0, v4[4], v4[5], a4) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessagingOptions(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v4[3];
  v18 = v4[2];
  v12 = v4[6];
  v13 = (v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_24AEF9DD0;

  return sub_24AF16418(a1, v18, v11, v12, v4 + v7, v4 + v10, v14, v15);
}

uint64_t sub_24AF237A0(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(type metadata accessor for MessagingOptions(0) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v11 = *(type metadata accessor for Message(0, v5, v6, v10) - 8);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[4];
  v14 = v1[5];
  v15 = v1[6];
  v16 = v1[7];
  v17 = *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_24AEF9DD0;

  return sub_24AF1B5A4(a1, v13, v14, v15, v16, v1 + v8, v1 + v12, v17);
}

uint64_t sub_24AF23964(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AF35C4C() & 1;
  }
}

uint64_t sub_24AF239F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1058, &qword_24AF3A438);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_24AF35A2C();
  __swift_allocate_value_buffer(v3, qword_281392DA0);
  v4 = __swift_project_value_buffer(v3, qword_281392DA0);
  sub_24AF35A1C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.messagingCoder.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281392D98 != -1)
  {
    swift_once();
  }

  v2 = sub_24AF35A2C();
  v3 = __swift_project_value_buffer(v2, qword_281392DA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_24AF23BD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24AF35A9C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24AF23C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24AF23CAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_24AF23D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24AF23D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_24AF23DF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24AF23BD0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_24AF23E28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AF23C20(*v1);
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_24AF23E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AF23C1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AF23EA0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_24AF254AC();
  *a2 = result;
  return result;
}

uint64_t sub_24AF23ECC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24AF23F20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Message.MessageError.hashValue.getter()
{
  v1 = *v0;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  return sub_24AF35D4C();
}

uint64_t sub_24AF2400C(uint64_t a1)
{
  sub_24AF35D0C();
  Message.MessageError.hash(into:)();
  return sub_24AF35D4C();
}

uint64_t Message.payloadLength.getter(uint64_t result)
{
  v2 = (v1 + *(result + 40));
  v3 = *v2;
  v4 = v2[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v5)
    {
      return BYTE6(v4);
    }

    v9 = __OFSUB__(HIDWORD(v3), v3);
    v10 = HIDWORD(v3) - v3;
    if (!v9)
    {
      return v10;
    }

    goto LABEL_11;
  }

  if (v5 != 2)
  {
    return 0;
  }

  v8 = v3 + 16;
  v6 = *(v3 + 16);
  v7 = *(v8 + 8);
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t Message.init<A>(type:version:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v37 = a7;
  v39 = a3;
  v14 = sub_24AF35A2C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a4 - 8);
  v41 = a1;
  v18 = a1;
  v19 = a4;
  (*(v40 + 16))(a8, v18, a4);
  v36 = type metadata accessor for Message(0, a4, a6, v20);
  v21 = *(v36 + 36);
  v42 = a8;
  *(a8 + v21) = a2;
  sub_24AF350CC();
  swift_allocObject();
  sub_24AF350BC();
  if (qword_281392D98 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v14, qword_281392DA0);
  (*(v15 + 16))(v17, v22, v14);
  v44[3] = MEMORY[0x277D839B0];
  LOBYTE(v44[0]) = 1;
  v23 = sub_24AF350AC();
  sub_24AF09444(v44, v17);
  v23(v43, 0);
  sub_24AF10020(a5, a5);
  v24 = *(a5 - 8);
  swift_allocObject();
  v25 = sub_24AF354BC();
  v26 = v39;
  (*(v24 + 16))(v27, v39, a5);
  v44[0] = sub_24AF09258(v25);
  sub_24AF3550C();
  v44[5] = v37;
  swift_getWitnessTable();
  v28 = v38;
  v29 = sub_24AF3509C();
  v31 = v30;

  (*(v24 + 8))(v26, a5);
  if (v28)
  {
    v32 = *(v40 + 8);
    v32(v41, v19);

    return (v32)(v42, v19);
  }

  else
  {
    (*(v40 + 8))(v41, v19);

    v34 = (v42 + *(v36 + 40));
    *v34 = v29;
    v34[1] = v31;
  }

  return result;
}

uint64_t Message.extract<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v23 = a4;
  v6 = sub_24AF3579C();
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_24AF35A2C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AF3508C();
  swift_allocObject();
  sub_24AF3507C();
  if (qword_281392D98 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_281392DA0);
  (*(v10 + 16))(v12, v13, v9);
  v27[3] = MEMORY[0x277D839B0];
  LOBYTE(v27[0]) = 1;
  v14 = sub_24AF3506C();
  sub_24AF09444(v27, v12);
  v14(v26, 0);
  sub_24AF3550C();
  v27[5] = v24;
  swift_getWitnessTable();
  v15 = v25;
  sub_24AF3505C();
  if (v15)
  {
  }

  swift_getWitnessTable();
  sub_24AF356CC();
  v16 = *(a2 - 8);
  if ((*(v16 + 48))(v8, 1, a2) == 1)
  {
    (*(v21 + 8))(v8, v22);

    type metadata accessor for Message.MessageError(0, *(a1 + 16), *(a1 + 24), v17);
    swift_getWitnessTable();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
  }

  (*(v16 + 32))(v23, v8, a2);
}

uint64_t Message.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = a2;
  v5 = *(a2 + 24);
  v18 = *(a2 + 16);
  type metadata accessor for Message.CodingKeys(255, v18, v5, a4);
  swift_getWitnessTable();
  v6 = sub_24AF35BDC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v17[1];
  v11 = v6;
  sub_24AF35D6C();
  LOBYTE(v20) = 0;
  v12 = v19;
  sub_24AF35BCC();
  if (!v12)
  {
    v13 = v17[0];
    LOBYTE(v20) = 1;
    sub_24AF35BBC();
    v14 = (v10 + *(v13 + 40));
    v15 = v14[1];
    v20 = *v14;
    v21 = v15;
    v22 = 2;
    sub_24AEE5154(v20, v15);
    sub_24AF108C4();
    sub_24AF35BCC();
    sub_24AED6198(v20, v21);
  }

  return (*(v7 + 8))(v9, v11);
}

uint64_t Message.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v28 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Message.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable();
  v11 = sub_24AF35B4C();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v29 = a3;
  v15 = type metadata accessor for Message(0, a2, a3, v14);
  v26 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = v13;
  v18 = v34;
  sub_24AF35D5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v28;
  LOBYTE(v35) = 0;
  v21 = v30;
  v20 = v31;
  v22 = v33;
  sub_24AF35B2C();
  (*(v19 + 32))(v17, v21, a2);
  LOBYTE(v35) = 1;
  *&v17[*(v15 + 36)] = sub_24AF35B1C();
  v36 = 2;
  sub_24AF10918();
  sub_24AF35B2C();
  (*(v32 + 8))(v20, v22);
  *&v17[*(v15 + 40)] = v35;
  v23 = v26;
  (*(v26 + 16))(v27, v17, v15);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return (*(v23 + 8))(v17, v15);
}

uint64_t Message.description.getter(uint64_t a1)
{
  sub_24AF3592C();
  swift_getWitnessTable();
  v3 = sub_24AF35BEC();
  MEMORY[0x24C235440](v3);

  MEMORY[0x24C235440](0x203A6570797428, 0xE700000000000000);
  sub_24AF35C3C();
  MEMORY[0x24C235440](0x6F6973726576203BLL, 0xEB00000000203A6ELL);
  v4 = sub_24AF35C0C();
  MEMORY[0x24C235440](v4);

  result = MEMORY[0x24C235440](0xD000000000000010, 0x800000024AF37650);
  v6 = (v1 + *(a1 + 40));
  v7 = *v6;
  v8 = v6[1] >> 62;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_9;
    }

    v9 = v7 + 16;
    v7 = *(v7 + 16);
    if (!__OFSUB__(*(v9 + 8), v7))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v8)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v7), v7))
  {
LABEL_9:
    v10 = sub_24AF35C0C();
    MEMORY[0x24C235440](v10);

    MEMORY[0x24C235440](41, 0xE100000000000000);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AF25098(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24AF25120(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xC)
  {
    v7 = 12;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xC)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) >> 60;
    if (((4 * v17) & 0xC) != 0)
    {
      return 16 - ((4 * v17) & 0xC | (v17 >> 2));
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_24AF25278(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xC)
  {
    v7 = 12;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xC)
      {
        v19 = ((((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0xC)
        {
          *v19 = a2 - 13;
          v19[1] = 0;
        }

        else
        {
          *v19 = 0;
          v19[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_24AF254C8()
{
  result = qword_27EFC1060;
  if (!qword_27EFC1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC1060);
  }

  return result;
}

unint64_t sub_24AF2551C()
{
  v1 = 0x6772614C6F6F742ELL;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000017;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000026;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24AF255AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24AF11D88(a3, v22 - v9);
  v11 = sub_24AF3557C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24AF27840(v10);
  }

  else
  {
    sub_24AF3556C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24AF3551C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24AF353CC() + 32;

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

      sub_24AF27840(a3);

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

  sub_24AF27840(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t Heartbeater.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = swift_allocObject();
  Heartbeater.init(configuration:)(a1);
  return v2;
}

uint64_t Heartbeater.events.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyMessaging11Heartbeater_stream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F88, &qword_24AF39AA0);
  a1[3] = v4;
  a1[4] = sub_24AF260C0();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_0, v1 + v3, v4);
}

uint64_t HeartbeatConfiguration.init(durationBeforeFirstHeartbeat:durationBetweenHeartbeats:numberOfHeartbeatsBeforeFailing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t static HeartbeatConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a2[4];
  if (sub_24AF35D9C())
  {
    return sub_24AF35D9C() & (v2 == v3);
  }

  else
  {
    return 0;
  }
}

uint64_t HeartbeatConfiguration.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_24AF35DAC();
  sub_24AF35DAC();
  return MEMORY[0x24C235D70](v2);
}

uint64_t HeartbeatConfiguration.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_24AF35D0C();
  sub_24AF35DAC();
  sub_24AF35DAC();
  MEMORY[0x24C235D70](v1);
  return sub_24AF35D4C();
}

uint64_t sub_24AF25A68()
{
  v1 = *(v0 + 32);
  sub_24AF35D0C();
  sub_24AF35DAC();
  sub_24AF35DAC();
  MEMORY[0x24C235D70](v1);
  return sub_24AF35D4C();
}

uint64_t sub_24AF25AE8(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_24AF35DAC();
  sub_24AF35DAC();
  return MEMORY[0x24C235D70](v2);
}

uint64_t sub_24AF25B3C(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_24AF35D0C();
  sub_24AF35DAC();
  sub_24AF35DAC();
  MEMORY[0x24C235D70](v2);
  return sub_24AF35D4C();
}

uint64_t sub_24AF25BB8(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a2[4];
  if (sub_24AF35D9C())
  {
    return sub_24AF35D9C() & (v2 == v3);
  }

  else
  {
    return 0;
  }
}

uint64_t Heartbeater.Event.hashValue.getter()
{
  v1 = *v0;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  return sub_24AF35D4C();
}

uint64_t Heartbeater.init(configuration:)(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1070, &qword_24AF3A540);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F88, &qword_24AF39AA0);
  v28 = *(v15 - 8);
  v29 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v18 = a1[1];
  v31 = *a1;
  v32 = v18;
  v33 = *(a1 + 4);
  (*(v5 + 104))(v7, *MEMORY[0x277D85778], v4);
  sub_24AF3558C();
  (*(v5 + 8))(v7, v4);
  v19 = sub_24AF3557C();
  v20 = v27;
  (*(*(v19 - 8) + 56))(v27, 1, 1, v19);
  (*(v9 + 16))(v12, v14, v8);
  v21 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v23 = v32;
  *(v22 + 32) = v31;
  *(v22 + 48) = v23;
  *(v22 + 64) = v33;
  (*(v9 + 32))(v22 + v21, v12, v8);
  v24 = sub_24AF255AC(0, 0, v20, &unk_24AF3A558, v22);

  sub_24AF355AC();
  (*(v9 + 8))(v14, v8);
  v25 = v30;
  (*(v28 + 32))(v30 + OBJC_IVAR____TtC15FindMyMessaging11Heartbeater_stream, v17, v29);
  *(v25 + 16) = v24;
  return v25;
}

unint64_t sub_24AF260C0()
{
  result = qword_27EFC0F90;
  if (!qword_27EFC0F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0F88, &qword_24AF39AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0F90);
  }

  return result;
}

uint64_t sub_24AF26124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_24AF3554C();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_24AF359DC();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC10B0, &qword_24AF3A6B8);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v9 = sub_24AF359EC();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF2631C, 0, 0);
}

uint64_t sub_24AF2631C()
{
  v1 = v0[10];
  v3 = *v1;
  v2 = v1[1];
  v0[7] = 10;
  v0[26] = sub_24AF27D60();
  v4 = sub_24AF35D7C();
  v6 = v5;
  if (sub_24AF35D8C())
  {
    v4 = 1000000000000000000;
    v6 = 0;
  }

  sub_24AF35CBC();
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_24AF26464;

  return sub_24AF278A8(v3, v2, v4, v6, 0);
}

uint64_t sub_24AF26464()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v2[28] = v0;

  v6 = *(v4 + 8);
  v2[29] = v6;
  v2[30] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_24AF26960;
  }

  else
  {
    v7 = sub_24AF265E8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24AF265E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 80);
  v6 = v5[4];
  *(v4 + 248) = v6;
  if (v6 < 0)
  {
    __break(1u);
    return MEMORY[0x2822008C8](a1, a2, a3, a4);
  }

  if (v6)
  {
    v7 = v5[2];
    *(v4 + 256) = v7;
    v8 = v5[3];
    *(v4 + 264) = v8;
    *(v4 + 272) = 0;
    v9 = *(v4 + 168);
    v11 = *(v4 + 152);
    v10 = *(v4 + 160);
    v25 = *(v4 + 136);
    v12 = *(v4 + 128);
    v26 = *(v4 + 120);
    *(v4 + 33) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
    sub_24AF355CC();
    (*(v10 + 8))(v9, v11);
    *(v4 + 72) = 10;
    v13 = sub_24AF35D7C();
    v15 = v14;
    if (sub_24AF35D8C())
    {
      v13 = 1000000000000000000;
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    sub_24AF35CBC();
    *(v4 + 40) = v7;
    *(v4 + 48) = v8;
    *(v4 + 16) = v13;
    *(v4 + 24) = v16;
    *(v4 + 32) = 0;
    v17 = sub_24AF27DB4(&qword_27EFC10C0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_24AF35C9C();
    sub_24AF27DB4(&qword_27EFC10C8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_24AF359FC();
    v18 = *(v12 + 8);
    *(v4 + 280) = v18;
    *(v4 + 288) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v25, v26);
    v19 = swift_task_alloc();
    *(v4 + 296) = v19;
    *v19 = v4;
    v19[1] = sub_24AF26AFC;
    a3 = *(v4 + 176);
    a1 = *(v4 + 144);
    a2 = v4 + 16;
    a4 = v17;

    return MEMORY[0x2822008C8](a1, a2, a3, a4);
  }

  v21 = *(v4 + 160);
  v20 = *(v4 + 168);
  v22 = *(v4 + 152);
  *(v4 + 34) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
  sub_24AF355CC();
  (*(v21 + 8))(v20, v22);
  sub_24AF355DC();

  v23 = *(v4 + 8);

  return v23();
}

uint64_t sub_24AF26960()
{
  v1 = *(v0 + 224);
  *(v0 + 64) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
    sub_24AF355DC();
    (*(v4 + 8))(v3, v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24AF26AFC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    (*(v2 + 280))(*(v2 + 144), *(v2 + 120));
    v3 = sub_24AF26FC4;
  }

  else
  {
    v4 = *(v2 + 232);
    v5 = *(v2 + 192);
    v6 = *(v2 + 176);
    (*(v2 + 280))(*(v2 + 144), *(v2 + 120));
    v4(v5, v6);
    v3 = sub_24AF26C58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AF26C58()
{
  v1 = *(v0 + 272) + 1;
  if (v1 == *(v0 + 248))
  {
    v3 = *(v0 + 160);
    v2 = *(v0 + 168);
    v4 = *(v0 + 152);
    *(v0 + 34) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
    sub_24AF355CC();
    (*(v3 + 8))(v2, v4);
    sub_24AF355DC();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 272) = v1;
    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    v9 = *(v0 + 168);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v22 = *(v0 + 136);
    v12 = *(v0 + 128);
    v23 = *(v0 + 120);
    *(v0 + 33) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
    sub_24AF355CC();
    (*(v10 + 8))(v9, v11);
    *(v0 + 72) = 10;
    v13 = sub_24AF35D7C();
    v15 = v14;
    if (sub_24AF35D8C())
    {
      v13 = 1000000000000000000;
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    sub_24AF35CBC();
    *(v0 + 40) = v8;
    *(v0 + 48) = v7;
    *(v0 + 16) = v13;
    *(v0 + 24) = v16;
    *(v0 + 32) = 0;
    v17 = sub_24AF27DB4(&qword_27EFC10C0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_24AF35C9C();
    sub_24AF27DB4(&qword_27EFC10C8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_24AF359FC();
    v18 = *(v12 + 8);
    *(v0 + 280) = v18;
    *(v0 + 288) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v22, v23);
    v19 = swift_task_alloc();
    *(v0 + 296) = v19;
    *v19 = v0;
    v19[1] = sub_24AF26AFC;
    v20 = *(v0 + 176);
    v21 = *(v0 + 144);

    return MEMORY[0x2822008C8](v21, v0 + 16, v20, v17);
  }
}

uint64_t sub_24AF26FC4()
{
  (*(v0 + 232))(*(v0 + 192), *(v0 + 176));
  v1 = *(v0 + 304);
  *(v0 + 64) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
    sub_24AF355DC();
    (*(v4 + 8))(v3, v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24AF27170(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AEE555C;

  return sub_24AF26124(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_24AF27270(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC10A8, &qword_24AF3A6B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  (*(v4 + 16))(&v8 - v5, a1, v3);
  result = (*(v4 + 88))(v6, v3);
  if (result != *MEMORY[0x277D85738])
  {
    if (result == *MEMORY[0x277D85740])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
      return sub_24AF3562C();
    }

    else
    {
      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t Heartbeater.deinit()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
  sub_24AF3562C();

  v1 = OBJC_IVAR____TtC15FindMyMessaging11Heartbeater_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F88, &qword_24AF39AA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Heartbeater.__deallocating_deinit()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
  sub_24AF3562C();

  v1 = OBJC_IVAR____TtC15FindMyMessaging11Heartbeater_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F88, &qword_24AF39AA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t sub_24AF2759C()
{
  result = qword_27EFC1080;
  if (!qword_27EFC1080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC1080);
  }

  return result;
}

unint64_t sub_24AF275F4()
{
  result = qword_27EFC1088;
  if (!qword_27EFC1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC1088);
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

uint64_t sub_24AF2765C(uint64_t a1, int a2)
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

uint64_t sub_24AF2767C(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for Heartbeater(uint64_t a1)
{
  result = qword_27EFC1090;
  if (!qword_27EFC1090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AF27714(uint64_t a1)
{
  sub_24AF277E0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24AF277E0()
{
  if (!qword_27EFC10A0)
  {
    v0 = sub_24AF3561C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC10A0);
    }
  }
}

uint64_t sub_24AF27840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AF278A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24AF359DC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24AF279A8, 0, 0);
}

uint64_t sub_24AF279A8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_24AF359EC();
  v5 = sub_24AF27DB4(&qword_27EFC10C0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_24AF35C9C();
  sub_24AF27DB4(&qword_27EFC10C8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_24AF359FC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_24AF27B38;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_24AF27B38()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AF27CF4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24AF27CF4()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24AF27D60()
{
  result = qword_27EFC10B8;
  if (!qword_27EFC10B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC10B8);
  }

  return result;
}

uint64_t sub_24AF27DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MessageContext.outgoingResponseIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageContext(0) + 20);
  v4 = sub_24AF3521C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MessageContext(uint64_t a1)
{
  result = qword_281393170;
  if (!qword_281393170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageContext.fromID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MessageContext(0) + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t MessageContext.toID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MessageContext(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t MessageContext.serviceIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageContext(0) + 32));

  return v1;
}

uint64_t MessageContext.serverReceivedTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageContext(0) + 44);
  v4 = sub_24AF351BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MessageContext.senderCorrelationIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageContext(0) + 48));

  return v1;
}

id sub_24AF280B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1118, &unk_24AF3A8C0);
  MEMORY[0x28223BE20](v4 - 8);
  v96 = &v83[-v5];
  v6 = sub_24AF351BC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v94 = &v83[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v95 = &v83[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v83[-v12];
  v14 = sub_24AF3521C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v97 = &v83[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for MessageContext(0);
  v18 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v20 = &v83[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((sub_24AF29E38(a1) & 1) == 0)
  {

    v26 = 1;
    return (*(v18 + 56))(a2, v26, 1, v17);
  }

  v21 = [a1 toID];
  v91 = v14;
  if (v21)
  {
    v90 = v6;
    v93 = v17;
    v22 = v21;
    v23 = sub_24AF353AC();
    v25 = v24;
  }

  else
  {
    v27 = IDSCopyLocalDeviceUniqueID();
    if (!v27)
    {
      v58 = a2;
      if (qword_27EFC0728 != -1)
      {
        swift_once();
      }

      v59 = sub_24AF3529C();
      __swift_project_value_buffer(v59, qword_27EFC4C00);
      v60 = sub_24AF3527C();
      v61 = sub_24AF3570C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_24AECF000, v60, v61, "Ignoring IDSCopyLocalDeviceUniqueID() failed to return a value!", v62, 2u);
        MEMORY[0x24C236490](v62, -1, -1);
      }

      v26 = 1;
      a2 = v58;
      return (*(v18 + 56))(a2, v26, 1, v17);
    }

    v90 = v6;
    v93 = v17;
    v28 = v27;
    v29 = sub_24AF353AC();
    v30 = v7;
    v32 = v31;

    v98 = 0x3A656369766564;
    v99 = 0xE700000000000000;
    MEMORY[0x24C235440](v29, v32);
    v7 = v30;

    v23 = v98;
    v25 = v99;
  }

  v89 = v7;
  v92 = v15;
  result = [a1 fromID];
  if (!result)
  {
    __break(1u);
    goto LABEL_39;
  }

  v34 = result;
  v35 = sub_24AF353AC();
  v37 = v36;

  v38._countAndFlagsBits = v35;
  v38._object = v37;
  Destination.init(stringRepresentation:)(v38);
  v39 = v100;
  if (!v100)
  {

LABEL_19:

    v26 = 1;
    v17 = v93;
    return (*(v18 + 56))(a2, v26, 1, v17);
  }

  v40 = v99;
  v41 = v98;

  v42._countAndFlagsBits = v23;
  v42._object = v25;
  v101 = Destination.init(stringRepresentation:)(v42);
  v43 = v100;
  if (!v100)
  {

    goto LABEL_19;
  }

  v86 = v41;
  v87 = v40;
  v88 = a2;
  v85 = v99;
  v84 = v98;
  result = [a1 outgoingResponseIdentifier];
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v44 = result;
  sub_24AF353AC();

  sub_24AF351DC();

  v46 = v91;
  v45 = v92;
  if ((*(v92 + 48))(v13, 1, v91) == 1)
  {

    sub_24AEE2E10(v13, &qword_27EFC11C0, &qword_24AF38DC0);
    if (qword_27EFC0728 != -1)
    {
      swift_once();
    }

    v47 = sub_24AF3529C();
    __swift_project_value_buffer(v47, qword_27EFC4C00);
    v48 = sub_24AF3527C();
    v49 = sub_24AF3570C();
    v50 = os_log_type_enabled(v48, v49);
    v17 = v93;
    if (v50)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_24AECF000, v48, v49, "could not convert outgoingResponseIdentifier to UUID!", v51, 2u);
      MEMORY[0x24C236490](v51, -1, -1);
    }

    v26 = 1;
    a2 = v88;
    return (*(v18 + 56))(a2, v26, 1, v17);
  }

  (*(v45 + 32))(v97, v13, v46);
  v52 = v93;
  v53 = &v20[v93[6]];
  *v53 = v86;
  *(v53 + 1) = v87;
  *(v53 + 2) = v39;
  v54 = v52;
  v55 = &v20[v52[7]];
  *v55 = v84;
  *(v55 + 1) = v85;
  *(v55 + 2) = v43;
  v56 = [a1 incomingResponseIdentifier];
  if (v56)
  {
    v57 = v56;
    sub_24AF353AC();

    v45 = v92;
    sub_24AF351DC();
  }

  else
  {
    (*(v45 + 56))(v20, 1, 1, v46);
  }

  v17 = v54;
  (*(v45 + 16))(&v20[v54[5]], v97, v46);
  result = [a1 serviceIdentifier];
  if (result)
  {
    v63 = result;

    v64 = sub_24AF353AC();
    v66 = v65;

    v67 = &v20[v17[8]];
    *v67 = v64;
    v67[1] = v66;
    v20[v17[9]] = [a1 expectsPeerResponse];
    v20[v17[10]] = [a1 fromServerStorage];
    v68 = [a1 serverReceivedTime];
    if (v68)
    {
      v69 = v94;
      v70 = v68;
      sub_24AF351AC();

      v72 = v89;
      v71 = v90;
      v73 = *(v89 + 32);
      v74 = v96;
      v73(v96, v69, v90);
      (*(v72 + 56))(v74, 0, 1, v71);
      v75 = v95;
      v73(v95, v74, v71);
      v46 = v91;
    }

    else
    {
      v72 = v89;
      v71 = v90;
      v76 = v96;
      (*(v89 + 56))(v96, 1, 1, v90);
      v75 = v95;
      sub_24AF3519C();
      if ((*(v72 + 48))(v76, 1, v71) != 1)
      {
        sub_24AEE2E10(v76, &qword_27EFC1118, &unk_24AF3A8C0);
      }
    }

    (*(v72 + 32))(&v20[v17[11]], v75, v71);
    v77 = [a1 senderCorrelationIdentifier];
    if (v77)
    {
      v78 = v77;
      v79 = sub_24AF353AC();
      v81 = v80;
    }

    else
    {

      v79 = 0;
      v81 = 0xE000000000000000;
    }

    (*(v92 + 8))(v97, v46);
    v82 = &v20[v17[12]];
    *v82 = v79;
    v82[1] = v81;
    a2 = v88;
    sub_24AF2A3AC(v20, v88);
    v26 = 0;
    return (*(v18 + 56))(a2, v26, 1, v17);
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24AF28A28(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x44496D6F7266;
    if (a1 != 2)
    {
      v5 = 1145663348;
    }

    if (a1 <= 1u)
    {
      return 0xD00000000000001ALL;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0xD00000000000001BLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24AF28B4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24AF2A0D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24AF28B80(uint64_t a1)
{
  v2 = sub_24AF28FBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AF28BBC(uint64_t a1)
{
  v2 = sub_24AF28FBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC10D0, &qword_24AF3A6C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF28FBC();
  sub_24AF35D6C();
  v18[0] = 0;
  sub_24AF3521C();
  sub_24AF29AAC(&qword_27EFC0B50, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_24AF35B8C();
  if (!v2)
  {
    v9 = type metadata accessor for MessageContext(0);
    v18[0] = 1;
    sub_24AF35BCC();
    v10 = v3 + *(v9 + 24);
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v18[0] = *v10;
    v19 = v11;
    v20 = v12;
    v21 = 2;
    sub_24AF036CC();

    sub_24AF35BCC();

    v13 = v3 + *(v9 + 28);
    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
    v18[0] = *v13;
    v19 = v15;
    v20 = v14;
    v21 = 3;

    sub_24AF35BCC();

    v18[0] = 4;
    sub_24AF35B9C();
    v18[0] = 5;
    sub_24AF35BAC();
    v18[0] = 6;
    sub_24AF35BAC();
    v18[0] = 7;
    sub_24AF351BC();
    sub_24AF29AAC(&qword_27EFC10E0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_24AF35BCC();
    v18[0] = 8;
    sub_24AF35B9C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24AF28FBC()
{
  result = qword_27EFC10D8;
  if (!qword_27EFC10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC10D8);
  }

  return result;
}

uint64_t MessageContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_24AF351BC();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24AF3521C();
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC10E8, &qword_24AF3A6D0);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for MessageContext(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF28FBC();
  v44 = v12;
  v16 = v45;
  sub_24AF35D5C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v45 = a1;
  v46[0] = 0;
  sub_24AF29AAC(&qword_27EFC0B80, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v17 = v41;
  sub_24AF35AEC();
  sub_24AF297EC(v17, v15);
  v46[0] = 1;
  sub_24AF35B2C();
  v35 = v5;
  (*(v40 + 32))(&v15[v13[5]], v7, v5);
  v49 = 2;
  sub_24AF038A8();
  v41 = 0;
  sub_24AF35B2C();
  v18 = v47;
  v19 = v48;
  v20 = &v15[v13[6]];
  *v20 = v46[0];
  *(v20 + 1) = v18;
  *(v20 + 2) = v19;
  v49 = 3;
  sub_24AF35B2C();
  v21 = v47;
  v22 = v48;
  v23 = &v15[v13[7]];
  *v23 = v46[0];
  *(v23 + 1) = v21;
  *(v23 + 2) = v22;
  v46[0] = 4;
  v24 = sub_24AF35AFC();
  v25 = v45;
  v26 = &v15[v13[8]];
  *v26 = v24;
  v26[1] = v27;
  v46[0] = 5;
  v15[v13[9]] = sub_24AF35B0C() & 1;
  v46[0] = 6;
  v15[v13[10]] = sub_24AF35B0C() & 1;
  v46[0] = 7;
  sub_24AF29AAC(&qword_27EFC10F0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v28 = v37;
  v29 = v39;
  sub_24AF35B2C();
  (*(v38 + 32))(&v15[v13[11]], v28, v29);
  v46[0] = 8;
  v30 = sub_24AF35AFC();
  v32 = v31;
  (*(v42 + 8))(v44, v43);
  v33 = &v15[v13[12]];
  *v33 = v30;
  v33[1] = v32;
  sub_24AF2985C(v15, v36);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return sub_24AF298C0(v15);
}

uint64_t sub_24AF297EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AF2985C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AF298C0(uint64_t a1)
{
  v2 = type metadata accessor for MessageContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MessageContext.description.getter()
{
  v1 = v0;
  sub_24AF3592C();

  v2 = type metadata accessor for MessageContext(0);
  sub_24AF29AAC(&qword_27EFC10F8, type metadata accessor for MessageContext, &protocol conformance descriptor for MessageContext);
  v3 = sub_24AF35BEC();
  MEMORY[0x24C235440](v3);

  MEMORY[0x24C235440](0x3A44496D6F726620, 0xE800000000000000);
  MEMORY[0x24C235440](*(v1 + v2[6] + 8), *(v1 + v2[6] + 16));
  MEMORY[0x24C235440](0x3A44496F7420, 0xE600000000000000);
  MEMORY[0x24C235440](*(v1 + v2[7] + 8), *(v1 + v2[7] + 16));
  MEMORY[0x24C235440](0x6563697672657320, 0xE90000000000003ALL);
  MEMORY[0x24C235440](*(v1 + v2[8]), *(v1 + v2[8] + 8));
  MEMORY[0x24C235440](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AF29AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24AF29B20(uint64_t a1)
{
  sub_24AF03B34(319);
  if (v1 <= 0x3F)
  {
    sub_24AF3521C();
    if (v2 <= 0x3F)
    {
      sub_24AF351BC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MessageContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AF29D34()
{
  result = qword_27EFC1100;
  if (!qword_27EFC1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC1100);
  }

  return result;
}

unint64_t sub_24AF29D8C()
{
  result = qword_27EFC1108;
  if (!qword_27EFC1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC1108);
  }

  return result;
}

unint64_t sub_24AF29DE4()
{
  result = qword_27EFC1110;
  if (!qword_27EFC1110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC1110);
  }

  return result;
}

uint64_t sub_24AF29E38(void *a1)
{
  v2 = [a1 fromID];
  if (!v2)
  {
    if (qword_27EFC0728 != -1)
    {
      swift_once();
    }

    v5 = sub_24AF3529C();
    __swift_project_value_buffer(v5, qword_27EFC4C00);
    v6 = a1;
    v7 = sub_24AF3527C();
    v8 = sub_24AF3570C();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_15;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    v12 = "Ignoring IDSMessageContext without a fromID: %@";
    goto LABEL_14;
  }

  v3 = v2;
  sub_24AF353AC();

  LOBYTE(v3) = sub_24AF3540C();

  if ((v3 & 1) == 0)
  {
    v13 = [a1 senderCorrelationIdentifier];
    if (v13)
    {
      v7 = v13;
      v4 = 1;
LABEL_16:

      return v4;
    }

    if (qword_27EFC0728 != -1)
    {
      swift_once();
    }

    v14 = sub_24AF3529C();
    __swift_project_value_buffer(v14, qword_27EFC4C00);
    v15 = a1;
    v7 = sub_24AF3527C();
    v8 = sub_24AF3570C();

    if (!os_log_type_enabled(v7, v8))
    {
LABEL_15:
      v4 = 0;
      goto LABEL_16;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v15;
    *v10 = v15;
    v16 = v15;
    v12 = "Ignoring IDSMessageContext without a correlationIdentifier: %@";
LABEL_14:
    _os_log_impl(&dword_24AECF000, v7, v8, v12, v9, 0xCu);
    sub_24AEE2E10(v10, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v10, -1, -1);
    MEMORY[0x24C236490](v9, -1, -1);
    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_24AF2A0D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x800000024AF37710 == a2;
  if (v3 || (sub_24AF35C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024AF37730 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D6F7266 && a2 == 0xE600000000000000 || (sub_24AF35C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1145663348 && a2 == 0xE400000000000000 || (sub_24AF35C4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024AF37750 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024AF37230 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024AF37770 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024AF37790 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024AF377B0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_24AF35C4C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24AF2A3AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24AF2A410(uint64_t a1)
{
  v1 = a1;
  v37 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_24AF3585C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v44 = MEMORY[0x277D84F90];
    sub_24AEF6188(0, v2 & ~(v2 >> 63), 0);
    v39 = v44;
    if (v37)
    {
      v3 = sub_24AF3580C();
    }

    else
    {
      v3 = sub_24AF357DC();
      v4 = *(v1 + 36);
    }

    v41 = v3;
    v42 = v4;
    v43 = v37 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v35 = v1 + 56;
      v34 = v1 + 64;
      v36 = v2;
      while (v5 < v2)
      {
        v7 = __OFADD__(v5, 1);
        v8 = v5 + 1;
        if (v7)
        {
          goto LABEL_36;
        }

        v38 = v8;
        v10 = v41;
        v9 = v42;
        v11 = v43;
        v12 = v1;
        sub_24AF319B4(v41, v42, v43, v1);
        v14 = v13;
        v15 = [v13 uniqueID];
        if (!v15)
        {
          goto LABEL_41;
        }

        v16 = v15;
        v17 = sub_24AF353AC();
        v19 = v18;

        v20 = v39;
        v44 = v39;
        v22 = *(v39 + 16);
        v21 = *(v39 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_24AEF6188((v21 > 1), v22 + 1, 1);
          v20 = v44;
        }

        *(v20 + 16) = v22 + 1;
        v23 = v20 + 16 * v22;
        *(v23 + 32) = v17;
        *(v23 + 40) = v19;
        v39 = v20;
        if (v37)
        {
          if (!v11)
          {
            goto LABEL_42;
          }

          v1 = v12;
          if (sub_24AF3582C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v36;
          v5 = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC11A0, &qword_24AF3A928);
          v6 = sub_24AF3569C();
          sub_24AF3588C();
          v6(v40, 0);
          if (v38 == v36)
          {
LABEL_33:
            sub_24AF04640(v41, v42, v43);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_43;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v1 = v12;
          v24 = 1 << *(v12 + 32);
          if (v10 >= v24)
          {
            goto LABEL_37;
          }

          v25 = v10 >> 6;
          v26 = *(v35 + 8 * (v10 >> 6));
          if (((v26 >> v10) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_39;
          }

          v27 = v26 & (-2 << (v10 & 0x3F));
          if (v27)
          {
            v24 = __clz(__rbit64(v27)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v36;
            v5 = v38;
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (v34 + 8 * v25);
            v2 = v36;
            v5 = v38;
            while (v29 < (v24 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_24AF04640(v10, v9, 0);
                v24 = __clz(__rbit64(v31)) + v28;
                goto LABEL_32;
              }
            }

            sub_24AF04640(v10, v9, 0);
          }

LABEL_32:
          v33 = *(v1 + 36);
          v41 = v24;
          v42 = v33;
          v43 = 0;
          if (v5 == v2)
          {
            goto LABEL_33;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_24AF2A7B4()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC4BE8);
  v1 = __swift_project_value_buffer(v0, qword_27EFC4BE8);
  if (qword_27EFC0728 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFC4C00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_24AF2A87C(NSObject *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v104 = a7;
  v105 = a3;
  v106 = a4;
  v107 = a1;
  v108 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v99 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C8, &qword_24AF3A958);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v99 - v14;
  v16 = type metadata accessor for MessageContext(0);
  v103 = *(v16 - 8);
  v17 = *(v103 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v19 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v99 - v20;
  v109 = v7;
  v22 = v7 + OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!v107)
    {
      if (qword_27EFC0720 != -1)
      {
        swift_once();
      }

      v41 = sub_24AF3529C();
      __swift_project_value_buffer(v41, qword_27EFC4BE8);
      v42 = v109;
      v43 = sub_24AF3527C();
      v44 = sub_24AF3570C();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        *(v45 + 4) = v42;
        *v46 = v42;
        v47 = v42;
        _os_log_impl(&dword_24AECF000, v43, v44, "MessagingDelegateTrampoline: No service for %@", v45, 0xCu);
        sub_24AEE2E10(v46, &qword_27EFC0D70, &qword_24AF37D20);
        MEMORY[0x24C236490](v46, -1, -1);
        MEMORY[0x24C236490](v45, -1, -1);
      }

      goto LABEL_28;
    }

    if (!v108)
    {
      v48 = qword_27EFC0720;
      v49 = v107;
      if (v48 != -1)
      {
        swift_once();
      }

      v50 = sub_24AF3529C();
      __swift_project_value_buffer(v50, qword_27EFC4BE8);
      v51 = v109;
      v52 = sub_24AF3527C();
      v53 = sub_24AF3570C();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        *(v54 + 4) = v51;
        *v55 = v51;
        v56 = v51;
        _os_log_impl(&dword_24AECF000, v52, v53, "MessagingDelegateTrampoline: No account for %@", v54, 0xCu);
        sub_24AEE2E10(v55, &qword_27EFC0D70, &qword_24AF37D20);
        MEMORY[0x24C236490](v55, -1, -1);
        MEMORY[0x24C236490](v54, -1, -1);
      }

      goto LABEL_28;
    }

    if (v106 >> 60 == 15)
    {
      v24 = qword_27EFC0720;
      v25 = v107;
      v26 = v108;
      if (v24 != -1)
      {
        swift_once();
      }

      v27 = sub_24AF3529C();
      __swift_project_value_buffer(v27, qword_27EFC4BE8);
      v28 = v109;
      v29 = sub_24AF3527C();
      v30 = sub_24AF3570C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v28;
        *v32 = v28;
        v33 = v28;
        _os_log_impl(&dword_24AECF000, v29, v30, "MessagingDelegateTrampoline: No data for %@", v31, 0xCu);
        sub_24AEE2E10(v32, &qword_27EFC0D70, &qword_24AF37D20);
        MEMORY[0x24C236490](v32, -1, -1);
        MEMORY[0x24C236490](v31, -1, -1);
      }

LABEL_28:

      swift_unknownObjectRelease();
      return;
    }

    v102 = Strong;
    if (a6)
    {
      v57 = *(v22 + 1);
      v101 = v107;
      v100 = v108;
      sub_24AF11EC4(v105, v106);

      v58._countAndFlagsBits = a5;
      v58._object = a6;
      Destination.init(stringRepresentation:)(v58);
      v59 = v112;
      if (v112)
      {
        if (v104)
        {
          v108 = v111;
          LODWORD(v107) = v110;
          v60 = v104;
          v61 = [v101 serviceIdentifier];
          if (v61)
          {
            v62 = v61;
            v109 = v59;
            v99 = sub_24AF353AC();
            v104 = v63;

            v64 = v60;
            sub_24AF280B4(v64, v15);
            v65 = v103;
            if ((*(v103 + 48))(v15, 1, v16) == 1)
            {

              swift_unknownObjectRelease();
              sub_24AF11EB0(v105, v106);

              sub_24AEE2E10(v15, &qword_27EFC11C8, &qword_24AF3A958);
            }

            else
            {
              sub_24AF2A3AC(v15, v21);
              v88 = sub_24AF3557C();
              (*(*(v88 - 8) + 56))(v12, 1, 1, v88);
              sub_24AF2985C(v21, v19);
              v89 = *(v65 + 80);
              v90 = v64;
              v91 = (v89 + 112) & ~v89;
              v92 = swift_allocObject();
              *(v92 + 16) = 0;
              *(v92 + 24) = 0;
              *(v92 + 32) = v102;
              *(v92 + 40) = v57;
              v93 = v100;
              v94 = v104;
              v95 = v105;
              *(v92 + 48) = v99;
              *(v92 + 56) = v94;
              *(v92 + 64) = v93;
              *(v92 + 72) = v95;
              v96 = v106;
              *(v92 + 80) = v106;
              *(v92 + 88) = v107;
              v97 = v109;
              *(v92 + 96) = v108;
              *(v92 + 104) = v97;
              sub_24AF2A3AC(v19, v92 + v91);
              v98 = v93;
              sub_24AF11EC4(v95, v96);
              swift_unknownObjectRetain();
              sub_24AF08F10(0, 0, v12, &unk_24AF3A990, v92);

              sub_24AF11EB0(v95, v96);
              swift_unknownObjectRelease();

              sub_24AF298C0(v21);
            }

            return;
          }

          if (qword_27EFC0720 != -1)
          {
            swift_once();
          }

          v82 = sub_24AF3529C();
          __swift_project_value_buffer(v82, qword_27EFC4BE8);
          v83 = v109;
          v77 = sub_24AF3527C();
          v84 = sub_24AF3570C();

          if (os_log_type_enabled(v77, v84))
          {
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            *v85 = 138412290;
            *(v85 + 4) = v83;
            *v86 = v83;
            v87 = v83;
            _os_log_impl(&dword_24AECF000, v77, v84, "MessagingDelegateTrampoline: serviceIdentifier for %@", v85, 0xCu);
            sub_24AEE2E10(v86, &qword_27EFC0D70, &qword_24AF37D20);
            MEMORY[0x24C236490](v86, -1, -1);
            MEMORY[0x24C236490](v85, -1, -1);
          }

          swift_unknownObjectRelease();
        }

        else
        {

          if (qword_27EFC0720 != -1)
          {
            swift_once();
          }

          v75 = sub_24AF3529C();
          __swift_project_value_buffer(v75, qword_27EFC4BE8);
          v76 = v109;
          v77 = sub_24AF3527C();
          v78 = sub_24AF3570C();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            *v79 = 138412290;
            *(v79 + 4) = v76;
            *v80 = v76;
            v81 = v76;
            _os_log_impl(&dword_24AECF000, v77, v78, "MessagingDelegateTrampoline: No context for %@", v79, 0xCu);
            sub_24AEE2E10(v80, &qword_27EFC0D70, &qword_24AF37D20);
            MEMORY[0x24C236490](v80, -1, -1);
            MEMORY[0x24C236490](v79, -1, -1);
          }

          swift_unknownObjectRelease();
        }

        sub_24AF11EB0(v105, v106);

        v40 = v101;
        goto LABEL_15;
      }
    }

    else
    {
      v66 = v107;
      v67 = v108;
      sub_24AF11EC4(v105, v106);
    }

    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v68 = sub_24AF3529C();
    __swift_project_value_buffer(v68, qword_27EFC4BE8);
    v69 = v109;
    v70 = sub_24AF3527C();
    v71 = sub_24AF3570C();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      *(v72 + 4) = v69;
      *v73 = v69;
      v74 = v69;
      _os_log_impl(&dword_24AECF000, v70, v71, "MessagingDelegateTrampoline: No fromID for %@", v72, 0xCu);
      sub_24AEE2E10(v73, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v73, -1, -1);
      MEMORY[0x24C236490](v72, -1, -1);
    }

    swift_unknownObjectRelease();
    sub_24AF11EB0(v105, v106);

    v40 = v107;
  }

  else
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v34 = sub_24AF3529C();
    __swift_project_value_buffer(v34, qword_27EFC4BE8);
    v35 = v109;
    v109 = sub_24AF3527C();
    v36 = sub_24AF3570C();

    if (os_log_type_enabled(v109, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v35;
      *v38 = v35;
      v39 = v35;
      _os_log_impl(&dword_24AECF000, v109, v36, "MessagingDelegateTrampoline: No delegate for %@", v37, 0xCu);
      sub_24AEE2E10(v38, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v38, -1, -1);
      MEMORY[0x24C236490](v37, -1, -1);
    }

    v40 = v109;
  }

LABEL_15:
}

uint64_t sub_24AF2B548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v13;
  *(v8 + 144) = v11;
  *(v8 + 96) = v10;
  *(v8 + 112) = v12;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  return MEMORY[0x2822009F8](sub_24AF2B590, 0, 0);
}

id sub_24AF2B590()
{
  result = [*(v0 + 88) uniqueID];
  if (result)
  {
    v2 = result;
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v5 = *(v0 + 144);
    v11 = *(v0 + 64);
    swift_getObjectType();
    v6 = sub_24AF353AC();
    v8 = v7;

    *(v0 + 40) = v6;
    *(v0 + 48) = v8;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v3;
    v10 = *(v11 + 24) + **(v11 + 24);
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = sub_24AF2B740;

    __asm { BRAA            X8, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AF2B740()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_24AF2B978(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v125 = a7;
  v126 = a6;
  v119 = a5;
  v123 = a1;
  v124 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v10 - 8);
  v122 = &v116 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C8, &qword_24AF3A958);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v116 - v13;
  v15 = type metadata accessor for MessageContext(0);
  v120 = *(v15 - 8);
  v16 = *(v120 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v18 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v121 = &v116 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC11D0, &qword_24AF3A970);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v116 - v21;
  v23 = sub_24AF3513C();
  v129 = *(v23 - 8);
  v130 = v23;
  v24 = *(v129 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v26 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v128 = &v116 - v27;
  v131 = v7;
  v28 = v7 + OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v127 = Strong;
    if (a2)
    {
      v118 = *(v28 + 1);
      sub_24AF324F4(a3, v22);
      v31 = v129;
      v30 = v130;
      if ((*(v129 + 48))(v22, 1, v130) == 1)
      {
        v32 = a2;
        sub_24AEE2E10(v22, &unk_27EFC11D0, &qword_24AF3A970);
        if (qword_27EFC0720 != -1)
        {
          swift_once();
        }

        v33 = sub_24AF3529C();
        __swift_project_value_buffer(v33, qword_27EFC4BE8);
        v34 = v131;
        v35 = sub_24AF3527C();
        v36 = sub_24AF3570C();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *v37 = 138412290;
          *(v37 + 4) = v34;
          *v38 = v34;
          v39 = v34;
          _os_log_impl(&dword_24AECF000, v35, v36, "MessagingDelegateTrampoline: No resourceURL for %@", v37, 0xCu);
          sub_24AEE2E10(v38, &qword_27EFC0D70, &qword_24AF37D20);
          MEMORY[0x24C236490](v38, -1, -1);
          MEMORY[0x24C236490](v37, -1, -1);
        }

        swift_unknownObjectRelease();
        return;
      }

      v117 = *(v31 + 32);
      v117(v128, v22, v30);
      if (v126)
      {
        if (v125)
        {
          if (v124)
          {
            if (v123)
            {
              v125 = v125;
              v54 = a2;

              v55 = [v123 serviceIdentifier];
              if (v55)
              {
                v56 = v55;
                v116 = sub_24AF353AC();
                v123 = v57;

                v131 = v125;
                sub_24AF280B4(v131, v14);
                v58 = v120;
                if ((*(v120 + 48))(v14, 1, v15) == 1)
                {
                  (*(v129 + 8))(v128, v130);

                  swift_unknownObjectRelease();
                  sub_24AEE2E10(v14, &qword_27EFC11C8, &qword_24AF3A958);
                }

                else
                {
                  v99 = v14;
                  v100 = v121;
                  sub_24AF2A3AC(v99, v121);
                  v101 = sub_24AF3557C();
                  (*(*(v101 - 8) + 56))(v122, 1, 1, v101);
                  v102 = v129;
                  (*(v129 + 16))(v26, v128, v130);
                  sub_24AF2985C(v100, v18);
                  v103 = v58;
                  v104 = (*(v102 + 80) + 72) & ~*(v102 + 80);
                  v105 = (v24 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
                  v107 = (*(v103 + 80) + v106 + 16) & ~*(v103 + 80);
                  v108 = swift_allocObject();
                  *(v108 + 2) = 0;
                  *(v108 + 3) = 0;
                  v109 = v118;
                  *(v108 + 4) = v127;
                  *(v108 + 5) = v109;
                  v110 = v123;
                  *(v108 + 6) = v116;
                  *(v108 + 7) = v110;
                  *(v108 + 8) = v54;
                  v111 = v26;
                  v112 = v130;
                  v117(&v108[v104], v111, v130);
                  *&v108[v105] = v124;
                  v113 = &v108[v106];
                  v114 = v126;
                  *v113 = v119;
                  v113[1] = v114;
                  sub_24AF2A3AC(v18, &v108[v107]);
                  v115 = v54;
                  swift_unknownObjectRetain();
                  sub_24AF08F10(0, 0, v122, &unk_24AF3A980, v108);

                  swift_unknownObjectRelease();

                  sub_24AF298C0(v121);
                  (*(v129 + 8))(v128, v112);
                }
              }

              else
              {
                v88 = v125;
                v89 = v54;

                if (qword_27EFC0720 != -1)
                {
                  swift_once();
                }

                v90 = sub_24AF3529C();
                __swift_project_value_buffer(v90, qword_27EFC4BE8);
                v91 = v131;
                v92 = sub_24AF3527C();
                v93 = sub_24AF3570C();

                v94 = os_log_type_enabled(v92, v93);
                v95 = v129;
                if (v94)
                {
                  v96 = swift_slowAlloc();
                  v97 = swift_slowAlloc();
                  *v96 = 138412290;
                  *(v96 + 4) = v91;
                  *v97 = v91;
                  v98 = v91;
                  _os_log_impl(&dword_24AECF000, v92, v93, "MessagingDelegateTrampoline: serviceIdentifier for %@", v96, 0xCu);
                  sub_24AEE2E10(v97, &qword_27EFC0D70, &qword_24AF37D20);
                  MEMORY[0x24C236490](v97, -1, -1);
                  MEMORY[0x24C236490](v96, -1, -1);

                  swift_unknownObjectRelease();
                }

                else
                {

                  swift_unknownObjectRelease();
                  v92 = v88;
                }

                (*(v95 + 8))(v128, v130);
              }
            }

            else
            {
              __break(1u);
            }
          }

          else
          {
            v76 = qword_27EFC0720;
            v77 = v125;
            v78 = a2;
            if (v76 != -1)
            {
              swift_once();
            }

            v79 = sub_24AF3529C();
            __swift_project_value_buffer(v79, qword_27EFC4BE8);
            v80 = v131;
            v81 = sub_24AF3527C();
            v82 = sub_24AF3570C();

            v83 = os_log_type_enabled(v81, v82);
            v84 = v129;
            if (v83)
            {
              v85 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              *v85 = 138412290;
              *(v85 + 4) = v80;
              *v86 = v80;
              v87 = v80;
              _os_log_impl(&dword_24AECF000, v81, v82, "MessagingDelegateTrampoline: No metadata for %@", v85, 0xCu);
              sub_24AEE2E10(v86, &qword_27EFC0D70, &qword_24AF37D20);
              MEMORY[0x24C236490](v86, -1, -1);
              MEMORY[0x24C236490](v85, -1, -1);

              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
              v81 = v77;
            }

            (*(v84 + 8))(v128, v130);
          }

          return;
        }

        v71 = qword_27EFC0720;
        v60 = a2;
        if (v71 != -1)
        {
          swift_once();
        }

        v72 = sub_24AF3529C();
        __swift_project_value_buffer(v72, qword_27EFC4BE8);
        v73 = v131;
        v63 = sub_24AF3527C();
        v64 = sub_24AF3570C();

        v74 = os_log_type_enabled(v63, v64);
        v66 = v129;
        if (v74)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *v67 = 138412290;
          *(v67 + 4) = v73;
          *v68 = v73;
          v75 = v73;
          v70 = "MessagingDelegateTrampoline: No context for %@";
          goto LABEL_38;
        }
      }

      else
      {
        v59 = qword_27EFC0720;
        v60 = a2;
        if (v59 != -1)
        {
          swift_once();
        }

        v61 = sub_24AF3529C();
        __swift_project_value_buffer(v61, qword_27EFC4BE8);
        v62 = v131;
        v63 = sub_24AF3527C();
        v64 = sub_24AF3570C();

        v65 = os_log_type_enabled(v63, v64);
        v66 = v129;
        if (v65)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *v67 = 138412290;
          *(v67 + 4) = v62;
          *v68 = v62;
          v69 = v62;
          v70 = "MessagingDelegateTrampoline: No fromID for %@";
LABEL_38:
          _os_log_impl(&dword_24AECF000, v63, v64, v70, v67, 0xCu);
          sub_24AEE2E10(v68, &qword_27EFC0D70, &qword_24AF37D20);
          MEMORY[0x24C236490](v68, -1, -1);
          MEMORY[0x24C236490](v67, -1, -1);
          swift_unknownObjectRelease();

LABEL_40:
          (*(v66 + 8))(v128, v130);
          return;
        }
      }

      swift_unknownObjectRelease();
      goto LABEL_40;
    }

    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v47 = sub_24AF3529C();
    __swift_project_value_buffer(v47, qword_27EFC4BE8);
    v48 = v131;
    v49 = sub_24AF3527C();
    v50 = sub_24AF3570C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v48;
      v53 = v48;
      _os_log_impl(&dword_24AECF000, v49, v50, "MessagingDelegateTrampoline: No account for %@", v51, 0xCu);
      sub_24AEE2E10(v52, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v52, -1, -1);
      MEMORY[0x24C236490](v51, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v40 = sub_24AF3529C();
    __swift_project_value_buffer(v40, qword_27EFC4BE8);
    v41 = v131;
    v131 = sub_24AF3527C();
    v42 = sub_24AF3570C();

    if (os_log_type_enabled(v131, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v41;
      *v44 = v41;
      v45 = v41;
      _os_log_impl(&dword_24AECF000, v131, v42, "MessagingDelegateTrampoline: No delegate for %@", v43, 0xCu);
      sub_24AEE2E10(v44, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v44, -1, -1);
      MEMORY[0x24C236490](v43, -1, -1);
    }

    v46 = v131;
  }
}

uint64_t sub_24AF2C7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v12;
  *(v8 + 136) = v11;
  *(v8 + 120) = v10;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  return MEMORY[0x2822009F8](sub_24AF2C834, 0, 0);
}

char sub_24AF2C834()
{
  v1 = [*(v0 + 112) uniqueID];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = *(v0 + 128);
    v6 = sub_24AF353AC();
    v8 = v7;

    *(v0 + 64) = v6;
    *(v0 + 72) = v8;
    *(v0 + 160) = sub_24AF00A78(v5);

    v9._countAndFlagsBits = v4;
    v9._object = v3;
    LOBYTE(v1) = Destination.init(stringRepresentation:)(v9);
    v10 = *(v0 + 32);
    if (v10)
    {
      v16 = *(v0 + 88);
      v12 = *(v0 + 16);
      v11 = *(v0 + 24);
      swift_getObjectType();
      *(v0 + 40) = v12;
      *(v0 + 48) = v11;
      *(v0 + 56) = v10;
      v15 = *(v16 + 32) + **(v16 + 32);
      v13 = swift_task_alloc();
      *(v0 + 168) = v13;
      *v13 = v0;
      v13[1] = sub_24AF2CA0C;

      __asm { BRAA            X8, X16 }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return v1;
}

uint64_t sub_24AF2CA0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_24AF2CD44(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v84 = a5;
  v81 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v11 - 8);
  v83 = &v78 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C8, &qword_24AF3A958);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v78 - v14;
  v16 = type metadata accessor for MessageContext(0);
  v82 = *(v16 - 8);
  v17 = *(v82 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v19 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v78 - v20;
  v85 = v6;
  v22 = v6 + OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v33 = sub_24AF3529C();
    __swift_project_value_buffer(v33, qword_27EFC4BE8);
    v34 = v85;
    v85 = sub_24AF3527C();
    v35 = sub_24AF3570C();

    if (os_log_type_enabled(v85, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v34;
      *v37 = v34;
      v38 = v34;
      _os_log_impl(&dword_24AECF000, v85, v35, "MessagingDelegateTrampoline: No delegate for %@", v36, 0xCu);
      sub_24AEE2E10(v37, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v37, -1, -1);
      MEMORY[0x24C236490](v36, -1, -1);
    }

    v39 = v85;
LABEL_15:

    return;
  }

  if (!a2)
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v40 = sub_24AF3529C();
    __swift_project_value_buffer(v40, qword_27EFC4BE8);
    v41 = v85;
    v42 = sub_24AF3527C();
    v43 = sub_24AF3570C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&dword_24AECF000, v42, v43, "MessagingDelegateTrampoline: No account for %@", v44, 0xCu);
      sub_24AEE2E10(v45, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v45, -1, -1);
      MEMORY[0x24C236490](v44, -1, -1);
    }

    goto LABEL_37;
  }

  if (a3)
  {
    if (v84)
    {
      if (a6)
      {
        v80 = Strong;
        if (!a1)
        {
          __break(1u);
          return;
        }

        v78 = *(v22 + 1);
        v79 = a6;
        v24 = a2;

        v25 = [a1 serviceIdentifier];
        if (v25)
        {
          v26 = v24;
          v27 = v25;
          v85 = sub_24AF353AC();
          v29 = v28;

          v30 = sub_24AF00A84(a3);
          v31 = v79;
          sub_24AF280B4(v31, v15);
          v32 = v82;
          if ((*(v82 + 48))(v15, 1, v16) == 1)
          {

            swift_unknownObjectRelease();
            sub_24AEE2E10(v15, &qword_27EFC11C8, &qword_24AF3A958);
          }

          else
          {
            sub_24AF2A3AC(v15, v21);
            v72 = sub_24AF3557C();
            (*(*(v72 - 8) + 56))(v83, 1, 1, v72);
            sub_24AF2985C(v21, v19);
            v73 = (*(v32 + 80) + 96) & ~*(v32 + 80);
            v74 = swift_allocObject();
            v74[2] = 0;
            v74[3] = 0;
            v75 = v78;
            v74[4] = v80;
            v74[5] = v75;
            v74[6] = v85;
            v74[7] = v29;
            v74[8] = v26;
            v74[9] = v30;
            v76 = v84;
            v74[10] = v81;
            v74[11] = v76;
            sub_24AF2A3AC(v19, v74 + v73);
            v77 = v26;
            swift_unknownObjectRetain();
            sub_24AF08F10(0, 0, v83, &unk_24AF3A968, v74);

            swift_unknownObjectRelease();

            sub_24AF298C0(v21);
          }

          return;
        }

        if (qword_27EFC0720 != -1)
        {
          swift_once();
        }

        v65 = sub_24AF3529C();
        __swift_project_value_buffer(v65, qword_27EFC4BE8);
        v66 = v85;
        v67 = sub_24AF3527C();
        v68 = sub_24AF3570C();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v69 = 138412290;
          *(v69 + 4) = v66;
          *v70 = v66;
          v71 = v66;
          _os_log_impl(&dword_24AECF000, v67, v68, "MessagingDelegateTrampoline: serviceIdentifier for %@", v69, 0xCu);
          sub_24AEE2E10(v70, &qword_27EFC0D70, &qword_24AF37D20);
          MEMORY[0x24C236490](v70, -1, -1);
          MEMORY[0x24C236490](v69, -1, -1);
        }

        swift_unknownObjectRelease();
        v39 = v79;
        goto LABEL_15;
      }

      v61 = qword_27EFC0720;
      v48 = a2;
      if (v61 != -1)
      {
        swift_once();
      }

      v62 = sub_24AF3529C();
      __swift_project_value_buffer(v62, qword_27EFC4BE8);
      v63 = v85;
      v51 = sub_24AF3527C();
      v52 = sub_24AF3570C();

      if (!os_log_type_enabled(v51, v52))
      {
        goto LABEL_36;
      }

      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v63;
      *v54 = v63;
      v64 = v63;
      v56 = "MessagingDelegateTrampoline: No context for %@";
    }

    else
    {
      v57 = qword_27EFC0720;
      v48 = a2;
      if (v57 != -1)
      {
        swift_once();
      }

      v58 = sub_24AF3529C();
      __swift_project_value_buffer(v58, qword_27EFC4BE8);
      v59 = v85;
      v51 = sub_24AF3527C();
      v52 = sub_24AF3570C();

      if (!os_log_type_enabled(v51, v52))
      {
        goto LABEL_36;
      }

      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v59;
      *v54 = v59;
      v60 = v59;
      v56 = "MessagingDelegateTrampoline: No fromID for %@";
    }
  }

  else
  {
    v47 = qword_27EFC0720;
    v48 = a2;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = sub_24AF3529C();
    __swift_project_value_buffer(v49, qword_27EFC4BE8);
    v50 = v85;
    v51 = sub_24AF3527C();
    v52 = sub_24AF3570C();

    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_36;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    *(v53 + 4) = v50;
    *v54 = v50;
    v55 = v50;
    v56 = "MessagingDelegateTrampoline: No message for %@";
  }

  _os_log_impl(&dword_24AECF000, v51, v52, v56, v53, 0xCu);
  sub_24AEE2E10(v54, &qword_27EFC0D70, &qword_24AF37D20);
  MEMORY[0x24C236490](v54, -1, -1);
  MEMORY[0x24C236490](v53, -1, -1);
LABEL_36:

LABEL_37:

  swift_unknownObjectRelease();
}

uint64_t sub_24AF2D780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v11;
  *(v8 + 144) = v12;
  *(v8 + 120) = v10;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  return MEMORY[0x2822009F8](sub_24AF2D7BC, 0, 0);
}

char sub_24AF2D7BC()
{
  v1 = [*(v0 + 112) uniqueID];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = sub_24AF353AC();
    v7 = v6;

    *(v0 + 64) = v5;
    *(v0 + 72) = v7;
    *(v0 + 152) = sub_24AEE2954(MEMORY[0x277D84F90]);

    v8._countAndFlagsBits = v4;
    v8._object = v3;
    LOBYTE(v1) = Destination.init(stringRepresentation:)(v8);
    v9 = *(v0 + 32);
    if (v9)
    {
      v15 = *(v0 + 88);
      v11 = *(v0 + 16);
      v10 = *(v0 + 24);
      swift_getObjectType();
      *(v0 + 40) = v11;
      *(v0 + 48) = v10;
      *(v0 + 56) = v9;
      v14 = *(v15 + 40) + **(v15 + 40);
      v12 = swift_task_alloc();
      *(v0 + 160) = v12;
      *v12 = v0;
      v12[1] = sub_24AF2D994;

      __asm { BRAA            X8, X16 }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return v1;
}

uint64_t sub_24AF2D994()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_24AF2DBEC(void *a1, void *a2, uint64_t a3, unint64_t a4, int a5, void *a6)
{
  v85 = a6;
  v86 = a3;
  v84 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v80 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v80 - v14;
  v16 = sub_24AF3521C();
  v88 = *(v16 - 8);
  isa = v88[8].isa;
  v18 = MEMORY[0x28223BE20](v16);
  v19 = &v80 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v80 - v20;
  v21 = &v6[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v34 = sub_24AF3529C();
    __swift_project_value_buffer(v34, qword_27EFC4BE8);
    v35 = v6;
    v88 = sub_24AF3527C();
    v36 = sub_24AF3570C();

    if (os_log_type_enabled(v88, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v35;
      *v38 = v35;
      v39 = v35;
      _os_log_impl(&dword_24AECF000, v88, v36, "MessagingDelegateTrampoline: No delegate for %@", v37, 0xCu);
      sub_24AEE2E10(v38, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v38, -1, -1);
      MEMORY[0x24C236490](v37, -1, -1);
    }

    v40 = v88;

    return;
  }

  if (!a2)
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v41 = sub_24AF3529C();
    __swift_project_value_buffer(v41, qword_27EFC4BE8);
    v42 = v6;
    v43 = sub_24AF3527C();
    v44 = sub_24AF3570C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v46 = v42;
      v47 = v42;
      _os_log_impl(&dword_24AECF000, v43, v44, "MessagingDelegateTrampoline: No account for %@", v45, 0xCu);
      sub_24AEE2E10(v46, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v46, -1, -1);
      MEMORY[0x24C236490](v45, -1, -1);
    }

    goto LABEL_26;
  }

  v83 = Strong;
  if (!a4)
  {
    v48 = qword_27EFC0720;
    v49 = a2;
    if (v48 != -1)
    {
      swift_once();
    }

    v50 = sub_24AF3529C();
    __swift_project_value_buffer(v50, qword_27EFC4BE8);
    v51 = v6;
    v52 = sub_24AF3527C();
    v53 = sub_24AF3570C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v51;
      *v55 = v51;
      v56 = v51;
      _os_log_impl(&dword_24AECF000, v52, v53, "MessagingDelegateTrampoline: No identifier for %@", v54, 0xCu);
      sub_24AEE2E10(v55, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v55, -1, -1);
      MEMORY[0x24C236490](v54, -1, -1);
    }

LABEL_26:

    goto LABEL_28;
  }

  v82 = *(v21 + 1);
  v23 = a2;
  sub_24AF351DC();
  v24 = v88;
  if ((v88[6].isa)(v15, 1, v16) == 1)
  {
    sub_24AEE2E10(v15, &qword_27EFC11C0, &qword_24AF38DC0);
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v25 = sub_24AF3529C();
    __swift_project_value_buffer(v25, qword_27EFC4BE8);
    v26 = v6;

    v27 = sub_24AF3527C();
    v28 = sub_24AF3570C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v23;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v89 = v32;
      *v29 = 136315394;
      *(v29 + 4) = sub_24AEF599C(v86, a4, &v89);
      *(v29 + 12) = 2112;
      *(v29 + 14) = v26;
      *v31 = v26;
      v33 = v26;
      _os_log_impl(&dword_24AECF000, v27, v28, "MessagingDelegateTrampoline: identifier [%s] is not a valid UUID for %@", v29, 0x16u);
      sub_24AEE2E10(v31, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C236490](v32, -1, -1);
      MEMORY[0x24C236490](v29, -1, -1);
    }

    else
    {
    }

LABEL_28:
    swift_unknownObjectRelease();
    return;
  }

  v57 = v24[4].isa;
  v57(v87, v15, v16);
  if (a1)
  {
    v58 = [a1 serviceIdentifier];
    if (v58)
    {
      v59 = v58;
      v86 = sub_24AF353AC();
      v81 = v60;

      v61 = sub_24AF3557C();
      (*(*(v61 - 8) + 56))(v12, 1, 1, v61);
      v62 = v88;
      (v88[2].isa)(v19, v87, v16);
      v63 = (LOBYTE(v62[10].isa) + 72) & ~LOBYTE(v62[10].isa);
      v64 = isa + v63;
      v65 = (isa + v63) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      *(v66 + 16) = 0;
      *(v66 + 24) = 0;
      v67 = v82;
      *(v66 + 32) = v83;
      *(v66 + 40) = v67;
      v68 = v81;
      *(v66 + 48) = v86;
      *(v66 + 56) = v68;
      *(v66 + 64) = v23;
      v57((v66 + v63), v19, v16);
      v64[v66] = v84 & 1;
      v69 = v85;
      *(v66 + v65 + 8) = v85;
      v70 = v23;
      swift_unknownObjectRetain();
      v71 = v69;
      sub_24AF08F10(0, 0, v12, &unk_24AF3A950, v66);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_27EFC0720 != -1)
      {
        swift_once();
      }

      v72 = sub_24AF3529C();
      __swift_project_value_buffer(v72, qword_27EFC4BE8);
      v73 = v6;
      v74 = sub_24AF3527C();
      v75 = sub_24AF3570C();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = v23;
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v77 = 138412290;
        *(v77 + 4) = v73;
        *v78 = v73;
        v79 = v73;
        _os_log_impl(&dword_24AECF000, v74, v75, "MessagingDelegateTrampoline: serviceIdentifier for %@", v77, 0xCu);
        sub_24AEE2E10(v78, &qword_27EFC0D70, &qword_24AF37D20);
        MEMORY[0x24C236490](v78, -1, -1);
        MEMORY[0x24C236490](v77, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    (v88[1].isa)(v87, v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AF2E60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v10;
  *(v8 + 80) = v12;
  *(v8 + 96) = v11;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 32) = a4;
  return MEMORY[0x2822009F8](sub_24AF2E64C, 0, 0);
}

id sub_24AF2E64C()
{
  result = [*(v0 + 64) uniqueID];
  if (result)
  {
    v2 = result;
    v15 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    v4 = sub_24AF353AC();
    v6 = v5;

    *(v0 + 16) = v4;
    *(v0 + 24) = v6;
    v14 = (*(v15 + 8) + **(v15 + 8));
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_24AF2E7CC;
    v8 = *(v0 + 96);
    v9 = *(v0 + 72);
    v10 = *(v0 + 80);
    v11 = *(v0 + 56);
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);

    return v14(v13, v11, v0 + 16, v9, v8, v10, ObjectType, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AF2E7CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_24AF2E9B0(void *a1, void *a2, NSObject *a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v99 = a5;
  v100 = a6;
  v101 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v94 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v94 - v14;
  v103 = sub_24AF3521C();
  isa = v103[-1].isa;
  v17 = *(isa + 8);
  v18 = MEMORY[0x28223BE20](v103);
  v19 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v102 = &v94 - v20;
  v21 = &v6[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v34 = sub_24AF3529C();
    __swift_project_value_buffer(v34, qword_27EFC4BE8);
    v35 = v6;
    v103 = sub_24AF3527C();
    v36 = sub_24AF3570C();

    if (os_log_type_enabled(v103, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v35;
      *v38 = v35;
      v39 = v35;
      _os_log_impl(&dword_24AECF000, v103, v36, "MessagingDelegateTrampoline: No delegate for %@", v37, 0xCu);
      sub_24AEE2E10(v38, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v38, -1, -1);
      MEMORY[0x24C236490](v37, -1, -1);
    }

    goto LABEL_26;
  }

  if (!a2)
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v40 = sub_24AF3529C();
    __swift_project_value_buffer(v40, qword_27EFC4BE8);
    v41 = v6;
    v42 = sub_24AF3527C();
    v43 = sub_24AF3570C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&dword_24AECF000, v42, v43, "MessagingDelegateTrampoline: No account for %@", v44, 0xCu);
      sub_24AEE2E10(v45, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v45, -1, -1);
      MEMORY[0x24C236490](v44, -1, -1);
    }

    swift_unknownObjectRelease();
    return;
  }

  v98 = Strong;
  if (!a4)
  {
    v47 = qword_27EFC0720;
    v103 = a2;
    if (v47 != -1)
    {
      swift_once();
    }

    v48 = sub_24AF3529C();
    __swift_project_value_buffer(v48, qword_27EFC4BE8);
    v49 = v6;
    v50 = sub_24AF3527C();
    v51 = sub_24AF3570C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      *(v52 + 4) = v49;
      *v53 = v49;
      v54 = v49;
      _os_log_impl(&dword_24AECF000, v50, v51, "MessagingDelegateTrampoline: No identifier for %@", v52, 0xCu);
      sub_24AEE2E10(v53, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v53, -1, -1);
      MEMORY[0x24C236490](v52, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_26:
    v55 = v103;

    return;
  }

  v96 = *(v21 + 1);
  v97 = a1;
  v23 = a2;
  sub_24AF351DC();
  v24 = isa;
  v25 = v103;
  if ((*(isa + 6))(v15, 1, v103) == 1)
  {
    sub_24AEE2E10(v15, &qword_27EFC11C0, &qword_24AF38DC0);
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v26 = sub_24AF3529C();
    __swift_project_value_buffer(v26, qword_27EFC4BE8);
    v27 = v6;

    v28 = sub_24AF3527C();
    v29 = sub_24AF3570C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v104 = v32;
      *v30 = 136315394;
      *(v30 + 4) = sub_24AEF599C(v101, a4, &v104);
      *(v30 + 12) = 2112;
      *(v30 + 14) = v27;
      *v31 = v27;
      v33 = v27;
      _os_log_impl(&dword_24AECF000, v28, v29, "MessagingDelegateTrampoline: identifier [%s] is not a valid UUID for %@", v30, 0x16u);
      sub_24AEE2E10(v31, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C236490](v32, -1, -1);
      MEMORY[0x24C236490](v30, -1, -1);
    }

    swift_unknownObjectRelease();
    return;
  }

  v101 = v23;
  v95 = *(isa + 4);
  v95(v102, v15, v25);
  if (v100)
  {
    v56 = v100;
    v57 = v97;
    if (v97)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  v72 = IDSCopyLocalDeviceUniqueID();
  v57 = v97;
  if (v72)
  {
    v73 = v72;
    v74 = sub_24AF353AC();
    v76 = v75;

    v104 = 0x3A656369766564;
    v105 = 0xE700000000000000;
    MEMORY[0x24C235440](v74, v76);
    v24 = isa;

    v56 = v105;
    v99 = v104;
    if (v57)
    {
LABEL_31:

      v58 = [v57 serviceIdentifier];
      if (v58)
      {
        v100 = v56;
        v59 = v58;
        v60 = sub_24AF353AC();
        v97 = v61;

        v62 = sub_24AF3557C();
        (*(*(v62 - 8) + 56))(v12, 1, 1, v62);
        v63 = v103;
        (*(v24 + 2))(v19, v102, v103);
        v64 = (*(v24 + 80) + 72) & ~*(v24 + 80);
        v65 = swift_allocObject();
        *(v65 + 2) = 0;
        *(v65 + 3) = 0;
        v67 = v96;
        v66 = v97;
        *(v65 + 4) = v98;
        *(v65 + 5) = v67;
        *(v65 + 6) = v60;
        *(v65 + 7) = v66;
        v68 = v101;
        *(v65 + 8) = v101;
        v95(&v65[v64], v19, v63);
        v69 = &v65[(v17 + v64 + 7) & 0xFFFFFFFFFFFFFFF8];
        v70 = v100;
        *v69 = v99;
        v69[1] = v70;
        v71 = v68;
        swift_unknownObjectRetain();
        sub_24AF08F10(0, 0, v12, &unk_24AF3A940, v65);
        swift_unknownObjectRelease();

        (*(v24 + 1))(v102, v63);
        return;
      }

      goto LABEL_36;
    }

LABEL_35:
    __break(1u);
LABEL_36:

    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v77 = sub_24AF3529C();
    __swift_project_value_buffer(v77, qword_27EFC4BE8);
    v78 = v6;
    v79 = sub_24AF3527C();
    v80 = sub_24AF3570C();

    v81 = os_log_type_enabled(v79, v80);
    v82 = v101;
    if (v81)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 138412290;
      *(v83 + 4) = v78;
      *v84 = v78;
      v85 = v78;
      _os_log_impl(&dword_24AECF000, v79, v80, "MessagingDelegateTrampoline: serviceIdentifier for %@", v83, 0xCu);
      sub_24AEE2E10(v84, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v84, -1, -1);
      MEMORY[0x24C236490](v83, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      v79 = v82;
    }

    v86 = v103;

    (*(v24 + 1))(v102, v86);
    return;
  }

  if (qword_27EFC0720 != -1)
  {
    swift_once();
  }

  v87 = sub_24AF3529C();
  __swift_project_value_buffer(v87, qword_27EFC4BE8);
  v88 = sub_24AF3527C();
  v89 = sub_24AF3570C();
  v90 = os_log_type_enabled(v88, v89);
  v91 = v101;
  v92 = v103;
  if (v90)
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_24AECF000, v88, v89, "Ignoring IDSCopyLocalDeviceUniqueID() failed to return a value!", v93, 2u);
    MEMORY[0x24C236490](v93, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v24 + 1))(v102, v92);
}

uint64_t sub_24AF2F54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v11;
  *(v8 + 120) = v10;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  return MEMORY[0x2822009F8](sub_24AF2F588, 0, 0);
}

char sub_24AF2F588()
{
  v1 = [*(v0 + 112) uniqueID];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = sub_24AF353AC();
  v7 = v6;

  *(v0 + 64) = v5;
  *(v0 + 72) = v7;

  v8._countAndFlagsBits = v4;
  v8._object = v3;
  LOBYTE(v1) = Destination.init(stringRepresentation:)(v8);
  v9 = *(v0 + 32);
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return v1;
  }

  v20 = *(v0 + 88);
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 40) = v11;
  *(v0 + 48) = v10;
  *(v0 + 56) = v9;
  v19 = (*(v20 + 16) + **(v20 + 16));
  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_24AF2F734;
  v14 = *(v0 + 120);
  v15 = *(v0 + 104);
  v16 = *(v0 + 88);
  v17 = *(v0 + 96);

  LOBYTE(v1) = v19(v17, v15, v0 + 64, v14, v0 + 40, ObjectType, v16);
  return v1;
}

uint64_t sub_24AF2F734()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_24AF2F978(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - v6;
  v8 = &v2[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2 && (v11 = *(v8 + 1), sub_24AF2FEF8(a2), v12))
    {
      sub_24AF2A410(v12);
      v14 = sub_24AEF6FA0(v13);

      if (a1)
      {

        v15 = [a1 serviceIdentifier];
        if (v15)
        {
          v16 = v15;
          v17 = sub_24AF353AC();
          v19 = v18;

          v20 = sub_24AF3557C();
          (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
          v21 = swift_allocObject();
          v21[2] = 0;
          v21[3] = 0;
          v21[4] = v10;
          v21[5] = v11;
          v21[6] = v17;
          v21[7] = v19;
          v21[8] = v14;
          sub_24AF08F10(0, 0, v7, &unk_24AF3A920, v21);

          return;
        }

        if (qword_27EFC0720 != -1)
        {
          swift_once();
        }

        v38 = sub_24AF3529C();
        __swift_project_value_buffer(v38, qword_27EFC4BE8);
        v39 = v2;
        v23 = sub_24AF3527C();
        v40 = sub_24AF3570C();

        if (os_log_type_enabled(v23, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = 138412290;
          *(v41 + 4) = v39;
          *v42 = v39;
          v43 = v39;
          _os_log_impl(&dword_24AECF000, v23, v40, "MessagingDelegateTrampoline: serviceIdentifier for %@", v41, 0xCu);
          sub_24AEE2E10(v42, &qword_27EFC0D70, &qword_24AF37D20);
          MEMORY[0x24C236490](v42, -1, -1);
          MEMORY[0x24C236490](v41, -1, -1);
        }

        goto LABEL_20;
      }

      __break(1u);
    }

    else
    {
      if (qword_27EFC0720 != -1)
      {
        swift_once();
      }

      v22 = sub_24AF3529C();
      __swift_project_value_buffer(v22, qword_27EFC4BE8);

      v23 = sub_24AF3527C();
      v24 = sub_24AF3570C();
      if (!os_log_type_enabled(v23, v24))
      {

LABEL_20:

        swift_unknownObjectRelease();
        return;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46 = v26;
      *v25 = 136315138;
      if (a2)
      {
        v27 = v26;

        v28 = sub_24AF3567C();
        v30 = sub_24AEF599C(v28, v29, &v46);

        *(v25 + 4) = v30;
        _os_log_impl(&dword_24AECF000, v23, v24, "MessagingDelegateTrampoline: Unable to convert accounts to Set<IDSAccount> %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x24C236490](v27, -1, -1);
        MEMORY[0x24C236490](v25, -1, -1);

        swift_unknownObjectRelease();
        return;
      }
    }

    __break(1u);
    return;
  }

  if (qword_27EFC0720 != -1)
  {
    swift_once();
  }

  v31 = sub_24AF3529C();
  __swift_project_value_buffer(v31, qword_27EFC4BE8);
  v32 = v2;
  v45 = sub_24AF3527C();
  v33 = sub_24AF3570C();

  if (os_log_type_enabled(v45, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v32;
    *v35 = v32;
    v36 = v32;
    _os_log_impl(&dword_24AECF000, v45, v33, "MessagingDelegateTrampoline: No delegate for %@", v34, 0xCu);
    sub_24AEE2E10(v35, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v35, -1, -1);
    MEMORY[0x24C236490](v34, -1, -1);
  }

  v37 = v45;
}

void sub_24AF2FEF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC11B0, &qword_24AF3A930);
    v2 = sub_24AF3590C();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = sub_24AED0EAC(0, &qword_27EFC0D78, 0x277D186C0);
  v30[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v27 = v26;
LABEL_31:
      sub_24AEE2A84(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v27 << 6)), v30);
      v28 = sub_24AF3589C();
      sub_24AEE2AE0(v30);
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_24AF317C8(v29);
      v26 = v27;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v27);
      ++v26;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 56;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_24AEE2A84(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v30);
      v14 = sub_24AF3589C();
      sub_24AEE2AE0(v30);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = sub_24AF3577C();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24AF3021C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v16 = (*(a5 + 48) + **(a5 + 48));
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_24AEF9DD0;

  return v16(a6, a7, a8, ObjectType, a5);
}

uint64_t sub_24AF303F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v16 = (*(a5 + 56) + **(a5 + 56));
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_24AEE555C;

  return v16(a6, a7, a8, ObjectType, a5);
}

uint64_t sub_24AF30568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v16 = (*(a5 + 64) + **(a5 + 64));
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_24AEF9DD0;

  return v16(a6, a7, a8, ObjectType, a5);
}

void sub_24AF306D8(void *a1, NSObject *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7)
{
  v101 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v91 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v18 = Strong;
  swift_getObjectType();
  v19 = swift_conformsToProtocol2();
  if (!v19)
  {
    swift_unknownObjectRelease();
LABEL_14:
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v31 = sub_24AF3529C();
    __swift_project_value_buffer(v31, qword_27EFC4BE8);
    v32 = v7;
    v101 = sub_24AF3527C();
    v33 = sub_24AF3570C();

    if (os_log_type_enabled(v101, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v32;
      *v35 = v32;
      v36 = v32;
      _os_log_impl(&dword_24AECF000, v101, v33, "MessagingDelegateTrampoline: No delegate for %@", v34, 0xCu);
      sub_24AEE2E10(v35, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v35, -1, -1);
      MEMORY[0x24C236490](v34, -1, -1);
    }

    goto LABEL_36;
  }

  if (!v101)
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v37 = sub_24AF3529C();
    __swift_project_value_buffer(v37, qword_27EFC4BE8);
    v38 = v7;
    v39 = sub_24AF3527C();
    v40 = sub_24AF3570C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      _os_log_impl(&dword_24AECF000, v39, v40, "MessagingServiceDelegateTrampoline: No account for %@", v41, 0xCu);
      sub_24AEE2E10(v42, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v42, -1, -1);
      MEMORY[0x24C236490](v41, -1, -1);
    }

    goto LABEL_22;
  }

  if (!a3)
  {
    v44 = qword_27EFC0720;
    v101 = v101;
    if (v44 != -1)
    {
      swift_once();
    }

    v45 = sub_24AF3529C();
    __swift_project_value_buffer(v45, qword_27EFC4BE8);
    v46 = v7;
    v47 = sub_24AF3527C();
    v48 = sub_24AF3570C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      *(v49 + 4) = v46;
      *v50 = v46;
      v51 = v46;
      _os_log_impl(&dword_24AECF000, v47, v48, "MessagingServiceDelegateTrampoline: No session for %@", v49, 0xCu);
      sub_24AEE2E10(v50, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v50, -1, -1);
      MEMORY[0x24C236490](v49, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  if (!a5)
  {
    v52 = v101;
    v53 = a3;
    goto LABEL_31;
  }

  v99 = v19;
  v100 = v101;
  v20 = a3;

  v21._countAndFlagsBits = a4;
  v21._object = a5;
  Destination.init(stringRepresentation:)(v21);
  v22 = v104;
  if (!v104)
  {
LABEL_31:
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v54 = sub_24AF3529C();
    __swift_project_value_buffer(v54, qword_27EFC4BE8);
    v55 = v7;
    v56 = sub_24AF3527C();
    v57 = sub_24AF3570C();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      *(v58 + 4) = v55;
      *v59 = v55;
      v60 = v55;
      _os_log_impl(&dword_24AECF000, v56, v57, "MessagingServiceDelegateTrampoline: No fromID for %@", v58, 0xCu);
      sub_24AEE2E10(v59, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v59, -1, -1);
      MEMORY[0x24C236490](v58, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_36:
    v30 = v101;
LABEL_37:

    return;
  }

  if (a7 >> 60 == 15)
  {

    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v23 = sub_24AF3529C();
    __swift_project_value_buffer(v23, qword_27EFC4BE8);
    v24 = v7;
    v25 = sub_24AF3527C();
    v26 = sub_24AF3570C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&dword_24AECF000, v25, v26, "MessagingServiceDelegateTrampoline: No context for %@", v27, 0xCu);
      sub_24AEE2E10(v28, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v28, -1, -1);
      MEMORY[0x24C236490](v27, -1, -1);
    }

    swift_unknownObjectRelease();
    v30 = v100;
    goto LABEL_37;
  }

  if (!a1)
  {
    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  v61 = *(&v103 + 1);
  v62 = v103;
  sub_24AEE5154(a6, a7);
  v63 = [a1 serviceIdentifier];
  if (v63)
  {
    v95 = v20;
    v96 = v62;
    v101 = v61;
    v64 = v63;
    v98 = sub_24AF353AC();
    v97 = v65;

    v66 = v100;
    v67 = a1;
    v68 = [v66 uniqueID];
    if (v68)
    {
      v69 = v68;
      v100 = sub_24AF353AC();
      v94 = v70;
      v93 = v66;

      v71 = v7[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_linkSelectionStrategy + 8];
      *&v103 = *&v7[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_linkSelectionStrategy];
      BYTE8(v103) = v71;
      type metadata accessor for IDSSessionWrapper(0);
      swift_allocObject();
      v72 = v95;
      sub_24AF11EC4(a6, a7);
      v73 = v67;
      v74 = v72;
      v95 = v74;
      sub_24AF11EC4(a6, a7);
      v75 = v73;
      v76 = sub_24AF050A8(v75, v74, &v103);
      v77 = sub_24AF3557C();
      v92 = *(*(v77 - 8) + 56);
      v92(v16, 1, 1, v77);
      v78 = swift_allocObject();
      v78[2] = 0;
      v78[3] = 0;
      v78[4] = v76;

      sub_24AF08F10(0, 0, v16, &unk_24AF3A8F0, v78);

      sub_24AF11EB0(a6, a7);

      v79 = v95;
      *&v103 = v75;
      *(&v103 + 1) = v100;
      *&v104 = v94;
      BYTE8(v104) = v96;
      *(&v104 + 9) = v102[0];
      HIDWORD(v104) = *(v102 + 3);
      *&v105 = v101;
      *(&v105 + 1) = v22;
      *&v106 = a6;
      *(&v106 + 1) = a7;
      v107 = v76;
      v92(v16, 1, 1, v77);
      v80 = swift_allocObject();
      *(v80 + 16) = 0;
      *(v80 + 24) = 0;
      v81 = v99;
      *(v80 + 32) = v18;
      *(v80 + 40) = v81;
      v82 = v97;
      *(v80 + 48) = v98;
      *(v80 + 56) = v82;
      v83 = v106;
      *(v80 + 96) = v105;
      *(v80 + 112) = v83;
      *(v80 + 128) = v107;
      v84 = v104;
      *(v80 + 64) = v103;
      *(v80 + 80) = v84;
      swift_unknownObjectRetain();
      sub_24AEF7540(&v103, v102);
      sub_24AF08F10(0, 0, v16, &unk_24AF3A900, v80);

      sub_24AF11EB0(a6, a7);
      swift_unknownObjectRelease();
      sub_24AEF759C(&v103);

      return;
    }

    goto LABEL_50;
  }

  if (qword_27EFC0720 != -1)
  {
    swift_once();
  }

  v85 = sub_24AF3529C();
  __swift_project_value_buffer(v85, qword_27EFC4BE8);
  v86 = v7;
  v39 = sub_24AF3527C();
  v87 = sub_24AF3570C();

  if (os_log_type_enabled(v39, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v88 = 138412290;
    *(v88 + 4) = v86;
    *v89 = v86;
    v90 = v86;
    _os_log_impl(&dword_24AECF000, v39, v87, "MessagingDelegateTrampoline: serviceIdentifier for %@", v88, 0xCu);
    sub_24AEE2E10(v89, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v89, -1, -1);
    MEMORY[0x24C236490](v88, -1, -1);
  }

  sub_24AF11EB0(a6, a7);
LABEL_22:

  swift_unknownObjectRelease();
}

uint64_t sub_24AF31274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  *(v8 + 80) = *(a8 + 64);
  v14 = *(a8 + 48);
  *(v8 + 48) = *(a8 + 32);
  *(v8 + 64) = v14;
  v15 = *(a8 + 16);
  *(v8 + 16) = *a8;
  *(v8 + 32) = v15;
  v18 = (*(a5 + 16) + **(a5 + 16));
  v16 = swift_task_alloc();
  *(v8 + 88) = v16;
  *v16 = v8;
  v16[1] = sub_24AF313DC;

  return v18(a6, a7, v8 + 16, ObjectType, a5);
}

uint64_t sub_24AF313DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AF3163C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AEE555C;

  return sub_24AED579C(a1, v4, v5, v6);
}

uint64_t sub_24AF316F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AEF9DD0;

  return sub_24AF31274(a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

void sub_24AF317C8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_24AF3577C();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_24AED0EAC(0, &qword_27EFC0D78, 0x277D186C0);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_24AF3578C();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

id sub_24AF31908(uint64_t a1, uint64_t *a2, Class a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_allocWithZone(a3);
  v9 = *a2;
  LOBYTE(a2) = *(a2 + 8);
  *&v8[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v10 = &v8[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_linkSelectionStrategy];
  *v10 = v9;
  v10[8] = a2;
  v12.receiver = v8;
  v12.super_class = a3;
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_24AF319B4(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x24C2358C0](a1, a2, v7);
      sub_24AED0EAC(0, &qword_27EFC0D78, 0x277D186C0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24AED0EAC(0, &qword_27EFC0D78, 0x277D186C0);
    if (sub_24AF3583C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_24AF3584C();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_24AF3577C();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_24AF3578C();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

char *sub_24AF31BD8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24AF3585C())
  {
    v4 = 0;
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      v5 = v4;
      if ((a1 & 0xC000000000000001) == 0)
      {
        break;
      }

      v6 = MEMORY[0x24C2359A0](v4++, a1);
      if (__OFADD__(v5, 1))
      {
        goto LABEL_17;
      }

LABEL_7:
      v7 = v6;
      sub_24AF329AC(v7, v24);

      v20 = v24[6];
      v21 = v24[7];
      v22 = v24[8];
      v23 = v24[9];
      v16 = v24[2];
      v17 = v24[3];
      v18 = v24[4];
      v19 = v24[5];
      v14 = v24[0];
      v15 = v24[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_24AEF543C(0, *(v13 + 2) + 1, 1, v13);
      }

      v10 = *(v13 + 2);
      v9 = *(v13 + 3);
      if (v10 >= v9 >> 1)
      {
        v13 = sub_24AEF543C((v9 > 1), v10 + 1, 1, v13);
      }

      *(v13 + 2) = v10 + 1;
      v11 = &v13[160 * v10];
      *(v11 + 2) = v14;
      *(v11 + 3) = v15;
      *(v11 + 6) = v18;
      *(v11 + 7) = v19;
      *(v11 + 4) = v16;
      *(v11 + 5) = v17;
      *(v11 + 10) = v22;
      *(v11 + 11) = v23;
      *(v11 + 8) = v20;
      *(v11 + 9) = v21;
      if (v4 == i)
      {
        return v13;
      }
    }

    if (v4 >= *(v2 + 16))
    {
      goto LABEL_18;
    }

    v6 = *(a1 + 8 * v4++ + 32);
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24AF31F34(uint64_t a1)
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
  v11[1] = sub_24AEF9DD0;

  return sub_24AF30568(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24AF32010(uint64_t a1)
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
  v11[1] = sub_24AEF9DD0;

  return sub_24AF3021C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24AF320EC(uint64_t a1)
{
  sub_24AF3521C();
  v3 = v1[3];
  v11 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AEF9DD0;

  return sub_24AF2F54C(a1, v11, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_24AF32250(uint64_t a1)
{
  sub_24AF3521C();
  v3 = v1[3];
  v11 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AEF9DD0;

  return sub_24AF2E60C(a1, v11, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_24AF323B8(uint64_t a1)
{
  type metadata accessor for MessageContext(0);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AEF9DD0;

  return sub_24AF2D780(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24AF324F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC11D0, &qword_24AF3A970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AF32564(uint64_t a1)
{
  sub_24AF3513C();
  type metadata accessor for MessageContext(0);
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[5];
  v9 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AEF9DD0;

  return sub_24AF2C7F4(a1, v11, v10, v9, v3, v4, v5, v6);
}

uint64_t sub_24AF32714(uint64_t a1)
{
  type metadata accessor for MessageContext(0);
  v10 = v1[3];
  v11 = v1[2];
  v8 = v1[5];
  v9 = v1[4];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AEF9DD0;

  return sub_24AF2B548(a1, v11, v10, v9, v8, v3, v4, v5);
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24AF328D0(uint64_t a1)
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
  v11[1] = sub_24AEF9DD0;

  return sub_24AF303F8(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_24AF329AC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 uniqueID];
  if (v4)
  {

    v5 = [a1 uniqueIDOverride];
    if (v5)
    {

      v6 = [a1 modelIdentifier];
      if (v6)
      {

        v7 = [a1 productName];
        if (v7)
        {

          v8 = [a1 productVersion];
          if (v8)
          {

            v9 = [a1 productBuildVersion];
            if (v9)
            {

              v10 = [a1 name];
              if (v10)
              {

                v11 = [a1 service];
                if (v11)
                {

                  v12 = [a1 uniqueID];
                  if (v12)
                  {
                    v13 = v12;
                    v71 = sub_24AF353AC();
                    v70 = v14;
                  }

                  else
                  {
                    v71 = 0;
                    v70 = 0;
                  }

                  v19 = [a1 uniqueIDOverride];
                  if (v19)
                  {
                    v20 = v19;
                    v21 = sub_24AF353AC();
                    v69 = v22;

                    v23 = [a1 modelIdentifier];
                    if (v23)
                    {
                      v24 = v23;
                      v25 = sub_24AF353AC();
                      v68 = v26;

                      v27 = [a1 productName];
                      if (v27)
                      {
                        v28 = v27;
                        v29 = sub_24AF353AC();
                        v67 = v30;

                        v31 = [a1 productVersion];
                        if (v31)
                        {
                          v32 = v31;
                          v33 = sub_24AF353AC();
                          v66 = v34;

                          v35 = [a1 productBuildVersion];
                          if (v35)
                          {
                            v36 = v35;
                            v37 = sub_24AF353AC();
                            v65 = v38;

                            v39 = [a1 name];
                            if (v39)
                            {
                              v40 = v39;
                              v62 = v29;
                              v63 = v25;
                              v64 = v21;
                              v41 = sub_24AF353AC();
                              v60 = v42;
                              v61 = v41;

                              v43 = [a1 service];
                              if (v43)
                              {
                                v44 = v43;
                                v58 = v37;
                                v59 = v33;
                                v45 = sub_24AF353AC();
                                v56 = v46;
                                v57 = v45;

                                v55 = [a1 isLocallyPaired];
                                v47 = [a1 isActive];
                                v48 = [a1 isNearby];
                                v49 = [a1 isConnected];
                                v50 = IDSCopyIDForDevice();
                                if (v50)
                                {
                                  v51 = v50;
                                  v52 = sub_24AF353AC();
                                  v54 = v53;

                                  *a2 = v71;
                                  *(a2 + 8) = v70;
                                  *(a2 + 16) = v64;
                                  *(a2 + 24) = v69;
                                  *(a2 + 32) = v63;
                                  *(a2 + 40) = v68;
                                  *(a2 + 48) = v62;
                                  *(a2 + 56) = v67;
                                  *(a2 + 64) = v59;
                                  *(a2 + 72) = v66;
                                  *(a2 + 80) = v58;
                                  *(a2 + 88) = v65;
                                  *(a2 + 96) = v61;
                                  *(a2 + 104) = v60;
                                  *(a2 + 112) = v57;
                                  *(a2 + 120) = v56;
                                  *(a2 + 128) = v55;
                                  *(a2 + 129) = v47;
                                  *(a2 + 130) = v48;
                                  *(a2 + 131) = v49;
                                  *(a2 + 136) = 4;
                                  *(a2 + 144) = v52;
                                  *(a2 + 152) = v54;
                                  return;
                                }

                                goto LABEL_33;
                              }

LABEL_32:
                              __break(1u);
LABEL_33:
                              __break(1u);
                              return;
                            }

LABEL_31:
                            __break(1u);
                            goto LABEL_32;
                          }

LABEL_30:
                          __break(1u);
                          goto LABEL_31;
                        }

LABEL_29:
                        __break(1u);
                        goto LABEL_30;
                      }

LABEL_28:
                      __break(1u);
                      goto LABEL_29;
                    }
                  }

                  else
                  {
                    __break(1u);
                  }

                  __break(1u);
                  goto LABEL_28;
                }
              }
            }
          }
        }
      }
    }
  }

  if (qword_27EFC0728 != -1)
  {
    swift_once();
  }

  v15 = sub_24AF3529C();
  __swift_project_value_buffer(v15, qword_27EFC4C00);
  v16 = sub_24AF3527C();
  v17 = sub_24AF3570C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24AECF000, v16, v17, "Some IDSDevice Properties are found nil", v18, 2u);
    MEMORY[0x24C236490](v18, -1, -1);
  }

  sub_24AF34F0C();
  swift_allocError();
  swift_willThrow();
}

uint64_t DeviceError.hashValue.getter()
{
  sub_24AF35D0C();
  MEMORY[0x24C235D70](0);
  return sub_24AF35D4C();
}

uint64_t Device.uniqueID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Device.uniqueIDOverride.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Device.modelIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Device.productName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Device.productVersion.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Device.productBuildVersion.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t Device.name.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t Device.service.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t Device.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 144);
  v2 = *(v1 + 152);
  *a1 = *(v1 + 136);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

unint64_t sub_24AF33090(char a1)
{
  result = 0x4449657571696E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6564496C65646F6DLL;
      break;
    case 3:
      result = 0x4E746375646F7270;
      break;
    case 4:
      result = 0x56746375646F7270;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x65636976726573;
      break;
    case 8:
      result = 0x6C6C61636F4C7369;
      break;
    case 9:
      result = 0x6576697463417369;
      break;
    case 10:
      result = 0x79627261654E7369;
      break;
    case 11:
      result = 0x63656E6E6F437369;
      break;
    case 12:
      result = 0x74616E6974736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24AF3322C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24AF34ACC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24AF33260(uint64_t a1)
{
  v2 = sub_24AF345F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AF3329C(uint64_t a1)
{
  v2 = sub_24AF345F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Device.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11E0, &qword_24AF3A9A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = *(v1 + 16);
  v39 = *(v1 + 24);
  v40 = v7;
  v8 = *(v1 + 32);
  v37 = *(v1 + 40);
  v38 = v8;
  v9 = *(v1 + 48);
  v35 = *(v1 + 56);
  v36 = v9;
  v10 = *(v1 + 64);
  v33 = *(v1 + 72);
  v34 = v10;
  v11 = *(v1 + 88);
  v31 = *(v1 + 80);
  v32 = v11;
  v12 = *(v1 + 104);
  v29 = *(v1 + 96);
  v30 = v12;
  v13 = *(v1 + 120);
  v27 = *(v1 + 112);
  v28 = v13;
  v45 = *(v1 + 128);
  LODWORD(v10) = *(v1 + 129);
  v25 = *(v1 + 130);
  v26 = v10;
  v24 = *(v1 + 131);
  v22 = *(v1 + 136);
  v14 = *(v1 + 152);
  v23 = *(v1 + 144);
  v15 = a1[3];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_24AF345F0();
  sub_24AF35D6C();
  v42[0] = 0;
  v19 = v41;
  sub_24AF35B6C();
  if (!v19)
  {
    v41 = v14;
    v42[0] = 1;
    sub_24AF35B9C();
    v42[0] = 2;
    sub_24AF35B9C();
    v42[0] = 3;
    sub_24AF35B9C();
    v42[0] = 4;
    sub_24AF35B9C();
    v42[0] = 5;
    sub_24AF35B9C();
    v42[0] = 6;
    sub_24AF35B9C();
    v42[0] = 7;
    sub_24AF35B9C();
    v42[0] = 8;
    sub_24AF35BAC();
    v42[0] = 9;
    sub_24AF35BAC();
    v42[0] = 10;
    sub_24AF35BAC();
    v42[0] = 11;
    sub_24AF35BAC();
    v42[0] = v22;
    v43 = v23;
    v44 = v41;
    v46 = 12;
    sub_24AF036CC();

    sub_24AF35BCC();
  }

  return (*(v4 + 8))(v6, v18);
}

uint64_t Device.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 136);
  if (*(v1 + 8))
  {
    sub_24AF35D2C();
    sub_24AF353DC();
  }

  else
  {
    sub_24AF35D2C();
  }

  sub_24AF353DC();
  sub_24AF353DC();
  sub_24AF353DC();
  sub_24AF353DC();
  sub_24AF353DC();
  sub_24AF353DC();
  sub_24AF353DC();
  sub_24AF35D2C();
  sub_24AF35D2C();
  sub_24AF35D2C();
  sub_24AF35D2C();
  MEMORY[0x24C235D70](v2);

  return sub_24AF353DC();
}

uint64_t Device.hashValue.getter()
{
  sub_24AF35D0C();
  Device.hash(into:)(v1);
  return sub_24AF35D4C();
}

uint64_t Device.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11E8, &qword_24AF3A9B0);
  v5 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v7 = &v31 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF345F0();
  sub_24AF35D5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  LOBYTE(v60[0]) = 0;
  v47 = sub_24AF35ACC();
  v49 = v9;
  LOBYTE(v60[0]) = 1;
  v10 = sub_24AF35AFC();
  v48 = v11;
  v39 = v10;
  LOBYTE(v60[0]) = 2;
  v12 = sub_24AF35AFC();
  v46 = a1;
  v38 = v12;
  v45 = v13;
  LOBYTE(v60[0]) = 3;
  v37 = sub_24AF35AFC();
  v44 = v14;
  LOBYTE(v60[0]) = 4;
  v36 = sub_24AF35AFC();
  v43 = v15;
  LOBYTE(v60[0]) = 5;
  v35 = sub_24AF35AFC();
  v42 = v16;
  LOBYTE(v60[0]) = 6;
  v34 = sub_24AF35AFC();
  v41 = v17;
  LOBYTE(v60[0]) = 7;
  v33 = sub_24AF35AFC();
  v40 = v18;
  LOBYTE(v60[0]) = 8;
  v32 = sub_24AF35B0C();
  LOBYTE(v60[0]) = 9;
  v19 = sub_24AF35B0C();
  LOBYTE(v60[0]) = 10;
  v20 = sub_24AF35B0C();
  LOBYTE(v60[0]) = 11;
  LODWORD(v46) = sub_24AF35B0C();
  v69 = 12;
  sub_24AF038A8();
  sub_24AF35B2C();
  v21 = v32 & 1;
  LOBYTE(v19) = v19 & 1;
  v20 &= 1u;
  v31 = v46 & 1;
  (*(v8 + 8))(v7, v73);
  v32 = v70;
  v46 = *(&v71 + 1);
  v73 = v71;
  *&v50 = v47;
  *(&v50 + 1) = v49;
  *&v51 = v39;
  *(&v51 + 1) = v48;
  v22 = v45;
  *&v52 = v38;
  *(&v52 + 1) = v45;
  *&v53 = v37;
  *(&v53 + 1) = v44;
  *&v54 = v36;
  *(&v54 + 1) = v43;
  *&v55 = v35;
  *(&v55 + 1) = v42;
  *&v56 = v34;
  *(&v56 + 1) = v41;
  *&v57 = v33;
  *(&v57 + 1) = v40;
  LOBYTE(v58) = v21;
  BYTE1(v58) = v19;
  BYTE2(v58) = v20;
  LOBYTE(v8) = v31;
  BYTE3(v58) = v31;
  BYTE8(v58) = v70;
  v59 = v71;
  v23 = v52;
  v24 = v53;
  v25 = v55;
  a2[4] = v54;
  a2[5] = v25;
  a2[2] = v23;
  a2[3] = v24;
  v26 = v51;
  *a2 = v50;
  a2[1] = v26;
  v27 = v56;
  v28 = v57;
  v29 = v59;
  a2[8] = v58;
  a2[9] = v29;
  a2[6] = v27;
  a2[7] = v28;
  sub_24AEF6984(&v50, v60);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v60[0] = v47;
  v60[1] = v49;
  v60[2] = v39;
  v60[3] = v48;
  v60[4] = v38;
  v60[5] = v22;
  v60[6] = v37;
  v60[7] = v44;
  v60[8] = v36;
  v60[9] = v43;
  v60[10] = v35;
  v60[11] = v42;
  v60[12] = v34;
  v60[13] = v41;
  v60[14] = v33;
  v60[15] = v40;
  v61 = v21;
  v62 = v19;
  v63 = v20;
  v64 = v8;
  v65 = v32;
  *v66 = v72[0];
  *&v66[3] = *(v72 + 3);
  v67 = v73;
  v68 = v46;
  return sub_24AF34644(v60);
}

uint64_t sub_24AF3404C()
{
  sub_24AF35D0C();
  Device.hash(into:)(v1);
  return sub_24AF35D4C();
}

uint64_t sub_24AF34090(uint64_t a1)
{
  sub_24AF35D0C();
  Device.hash(into:)(v2);
  return sub_24AF35D4C();
}

uint64_t Device.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 96);
  v10 = *(v8 + 104);
  sub_24AF34674();
  v11 = sub_24AF35BEC();
  MEMORY[0x24C235440](v11);

  MEMORY[0x24C235440](8250, 0xE200000000000000);
  MEMORY[0x24C235440](v9, v10);
  MEMORY[0x24C235440](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AF341BC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  v5 = sub_24AF35BEC();
  MEMORY[0x24C235440](v5);

  MEMORY[0x24C235440](8250, 0xE200000000000000);
  MEMORY[0x24C235440](v3, v4);
  MEMORY[0x24C235440](62, 0xE100000000000000);
  return 60;
}

BOOL _s15FindMyMessaging6DeviceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v65 = a1[9];
  v66 = a1[8];
  v62 = a1[10];
  v61 = a1[11];
  v57 = a1[13];
  v58 = a1[12];
  v54 = a1[15];
  v51 = *(a1 + 130);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a2 + 56);
  v63 = *(a2 + 72);
  v64 = *(a2 + 64);
  v59 = *(a2 + 88);
  v60 = *(a2 + 80);
  v55 = *(a2 + 104);
  v56 = *(a2 + 96);
  v49 = *(a2 + 120);
  v50 = *(a2 + 112);
  v52 = *(a2 + 128);
  v53 = *(a2 + 129);
  v47 = *(a2 + 131);
  v48 = *(a2 + 130);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    v43 = a1[18];
    v44 = a1[14];
    v38 = *(a2 + 136);
    v39 = *(a1 + 131);
    v45 = *(a1 + 128);
    v46 = *(a1 + 129);
    v37 = *(a2 + 152);
    v40 = *(a2 + 144);
    v41 = *(a1 + 136);
    v42 = a1[19];
    if (*a1 != *a2 || v3 != v10)
    {
      v35 = a1[4];
      v36 = a1[5];
      v17 = *(a2 + 56);
      v18 = *(a2 + 48);
      v19 = a1[7];
      v20 = a1[6];
      v21 = *(a2 + 40);
      v22 = sub_24AF35C4C();
      v14 = v21;
      v7 = v20;
      v9 = v19;
      v15 = v18;
      v16 = v17;
      v5 = v35;
      v8 = v36;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v43 = a1[18];
    v44 = a1[14];
    v38 = *(a2 + 136);
    v39 = *(a1 + 131);
    v45 = *(a1 + 128);
    v46 = *(a1 + 129);
    v37 = *(a2 + 152);
    v40 = *(a2 + 144);
    v41 = *(a1 + 136);
    v42 = a1[19];
    if (v10)
    {
      return 0;
    }
  }

  if (v4 != v11 || v6 != v12)
  {
    v23 = v7;
    v24 = v14;
    v25 = sub_24AF35C4C();
    v14 = v24;
    v7 = v23;
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  if (v5 != v13 || v8 != v14)
  {
    v26 = v7;
    v27 = sub_24AF35C4C();
    v7 = v26;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v7 != v15 || v9 != v16) && (sub_24AF35C4C() & 1) == 0 || (v66 != v64 || v65 != v63) && (sub_24AF35C4C() & 1) == 0 || (v62 != v60 || v61 != v59) && (sub_24AF35C4C() & 1) == 0 || (v58 != v56 || v57 != v55) && (sub_24AF35C4C() & 1) == 0)
  {
    return 0;
  }

  v28 = v51 ^ v48;
  if (v44 == v50 && v54 == v49)
  {
    result = 0;
    v30 = v42;
    v31 = v43;
    v32 = v41;
    v33 = v40;
    if ((v45 ^ v52 | v46 ^ v53 | v28) & 1) != 0 || ((v39 ^ v47))
    {
      return result;
    }

    return v32 == v38 && (v31 == v33 && v30 == v37 || (sub_24AF35C4C() & 1) != 0);
  }

  v34 = sub_24AF35C4C();
  result = 0;
  if (!((v45 ^ v52) & 1 | ((v34 & 1) == 0) | (v46 ^ v53 | v28) & 1))
  {
    v30 = v42;
    v31 = v43;
    v32 = v41;
    v33 = v40;
    if (((v39 ^ v47) & 1) == 0)
    {
      return v32 == v38 && (v31 == v33 && v30 == v37 || (sub_24AF35C4C() & 1) != 0);
    }
  }

  return result;
}

unint64_t sub_24AF345F0()
{
  result = qword_281392F68[0];
  if (!qword_281392F68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281392F68);
  }

  return result;
}

unint64_t sub_24AF34674()
{
  result = qword_281392F48;
  if (!qword_281392F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392F48);
  }

  return result;
}

unint64_t sub_24AF346CC()
{
  result = qword_27EFC11F0;
  if (!qword_27EFC11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC11F0);
  }

  return result;
}

unint64_t sub_24AF34724()
{
  result = qword_281392F50;
  if (!qword_281392F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392F50);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_24AF347B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AF347FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Device.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Device.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AF349C8()
{
  result = qword_27EFC11F8;
  if (!qword_27EFC11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC11F8);
  }

  return result;
}

unint64_t sub_24AF34A20()
{
  result = qword_281392F58;
  if (!qword_281392F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392F58);
  }

  return result;
}

unint64_t sub_24AF34A78()
{
  result = qword_281392F60;
  if (!qword_281392F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392F60);
  }

  return result;
}

uint64_t sub_24AF34ACC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449657571696E75 && a2 == 0xE800000000000000;
  if (v4 || (sub_24AF35C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024AF378C0 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564496C65646F6DLL && a2 == 0xEF7265696669746ELL || (sub_24AF35C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (sub_24AF35C4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x56746375646F7270 && a2 == 0xEE006E6F69737265 || (sub_24AF35C4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024AF378E0 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24AF35C4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65636976726573 && a2 == 0xE700000000000000 || (sub_24AF35C4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C6C61636F4C7369 && a2 == 0xEF64657269615079 || (sub_24AF35C4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6576697463417369 && a2 == 0xE800000000000000 || (sub_24AF35C4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x79627261654E7369 && a2 == 0xE800000000000000 || (sub_24AF35C4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x63656E6E6F437369 && a2 == 0xEB00000000646574 || (sub_24AF35C4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    return 12;
  }

  else
  {
    v6 = sub_24AF35C4C();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t sub_24AF34F0C()
{
  result = qword_27EFC1200;
  if (!qword_27EFC1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC1200);
  }

  return result;
}

uint64_t sub_24AF34F60()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC4C00);
  __swift_project_value_buffer(v0, qword_27EFC4C00);
  return sub_24AF3528C();
}