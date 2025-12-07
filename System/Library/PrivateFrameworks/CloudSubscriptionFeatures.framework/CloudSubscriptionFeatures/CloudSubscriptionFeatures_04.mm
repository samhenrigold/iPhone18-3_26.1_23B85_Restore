uint64_t sub_1DF4E26CC(uint64_t (*a1)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v11[3] = &type metadata for ExpiredJWTServedEvent;
  v11[4] = &off_1F5A8DBF0;
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956020);
  v3 = sub_1DF564794();
  v4 = sub_1DF564C14();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v10[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_1DF47EF6C(0xD000000000000034, 0x80000001DF572400, v10);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1DF47EF6C(0x3E6C696E3CLL, 0xE500000000000000, v10);
    _os_log_impl(&dword_1DF47C000, v3, v4, "Sending message %s with body %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v6, -1, -1);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  else
  {
  }

  sub_1DF47FCEC(v11, v10);
  v7 = swift_allocObject();
  sub_1DF47E390(v10, v7 + 16);
  v8 = a1(0xD000000000000034, 0x80000001DF572400, sub_1DF48041C, v7);

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v8 & 1;
}

uint64_t sub_1DF4E28F8(_OWORD *a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v22[3] = &type metadata for SignupOrGetWaitlistStatusEvent;
  v22[4] = &off_1F5A8E1B8;
  v4 = swift_allocObject();
  v22[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v4[3] = a1[2];
  *(v4 + 57) = *(a1 + 41);
  sub_1DF4E56A8(a1, v23);
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED956020);
  sub_1DF47FCEC(v22, &v20);
  v7 = sub_1DF564794();
  v8 = sub_1DF564C14();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1DF47EF6C(0xD000000000000046, 0x80000001DF572550, &v19);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_0(&v20, v21);
    v23[0] = *v11;
    v23[1] = v11[1];
    v24[0] = v11[2];
    *(v24 + 9) = *(v11 + 41);
    if (sub_1DF5614C0())
    {
      sub_1DF480144();
      v12 = sub_1DF564894();
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
      v12 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v20);
    v15 = sub_1DF47EF6C(v12, v14, &v19);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_1DF47C000, v7, v8, "Sending message %s with body %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v20);
  }

  sub_1DF47FCEC(v22, &v20);
  v16 = swift_allocObject();
  sub_1DF47E390(&v20, v16 + 16);
  v17 = a2(0xD000000000000046, 0x80000001DF572550, sub_1DF48041C, v16);

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v17 & 1;
}

uint64_t sub_1DF4E2C10(unint64_t a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v24[3] = &type metadata for GetAccessStatusEvent;
  v24[4] = &off_1F5A8DE78;
  LOWORD(v24[0]) = a1 & 0xFF01;
  v3 = vdupq_n_s64(a1);
  *v3.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v3, xmmword_1DF5690C0), vshlq_u64(v3, xmmword_1DF5690B0))), 0x1000100010001);
  *(v24 + 2) = vuzp1_s8(*v3.i8, *v3.i8).u32[0];
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956020);
  sub_1DF47FCEC(v24, &v22);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1DF47EF6C(0xD000000000000040, 0x80000001DF572500, &v21);
    *(v7 + 12) = 2080;
    v9 = __swift_project_boxed_opaque_existential_0(&v22, v23);
    v10 = 0x10000000000;
    if (!v9[5])
    {
      v10 = 0;
    }

    v11 = 0x100000000;
    if (!v9[4])
    {
      v11 = 0;
    }

    v12 = 0x1000000;
    if (!v9[3])
    {
      v12 = 0;
    }

    v13 = 0x10000;
    if (!v9[2])
    {
      v13 = 0;
    }

    if (sub_1DF560BF0(v13 | *v9 | (v9[1] << 8) | v12 | v11 | v10))
    {
      sub_1DF480144();
      v14 = sub_1DF564894();
      v16 = v15;
    }

    else
    {
      v16 = 0xE500000000000000;
      v14 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v22);
    v17 = sub_1DF47EF6C(v14, v16, &v21);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Sending message %s with body %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v22);
  }

  sub_1DF47FCEC(v24, &v22);
  v18 = swift_allocObject();
  sub_1DF47E390(&v22, v18 + 16);
  v19 = a2(0xD000000000000040, 0x80000001DF572500, sub_1DF48041C, v18);

  __swift_destroy_boxed_opaque_existential_0(v24);
  return v19 & 1;
}

uint64_t sub_1DF4E2F64(_OWORD *a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v23[3] = &type metadata for DaemonControllerActivityCheckInEvent;
  v23[4] = &off_1F5A8D848;
  v4 = swift_allocObject();
  v23[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  *(v4 + 42) = *(a1 + 26);
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED956020);
  sub_1DF47FCEC(v23, &v21);
  v7 = sub_1DF564794();
  v8 = sub_1DF564C14();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1DF47EF6C(0xD000000000000044, 0x80000001DF572360, &v20);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_0(&v21, v22);
    v12 = v11[1];
    v24 = *v11;
    v25[0] = v12;
    *(v25 + 10) = *(v11 + 26);
    if (sub_1DF55F158())
    {
      sub_1DF480144();
      v13 = sub_1DF564894();
      v15 = v14;
    }

    else
    {
      v15 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v21);
    v16 = sub_1DF47EF6C(v13, v15, &v20);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1DF47C000, v7, v8, "Sending message %s with body %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v21);
  }

  sub_1DF47FCEC(v23, &v21);
  v17 = swift_allocObject();
  sub_1DF47E390(&v21, v17 + 16);
  v18 = a2(0xD000000000000044, 0x80000001DF572360, sub_1DF48041C, v17);

  __swift_destroy_boxed_opaque_existential_0(v23);
  return v18 & 1;
}

uint64_t sub_1DF4E3258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v21[0] = a1;
  v21[3] = &type metadata for DaemonControllerScheduleRebuildEvent;
  v21[4] = &off_1F5A8DAD8;
  v21[1] = a2;
  v21[2] = a3;
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v5 = sub_1DF5647B4();
  __swift_project_value_buffer(v5, qword_1ED956020);
  sub_1DF47FCEC(v21, &v19);
  v6 = sub_1DF564794();
  v7 = sub_1DF564C14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1DF47EF6C(0xD000000000000044, 0x80000001DF5722C0, &v18);
    *(v8 + 12) = 2080;
    v10 = __swift_project_boxed_opaque_existential_0(&v19, v20);
    if (sub_1DF55FDB0(*v10, v10[1], v10[2]))
    {
      sub_1DF480144();
      v11 = sub_1DF564894();
      v13 = v12;
    }

    else
    {
      v13 = 0xE500000000000000;
      v11 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v19);
    v14 = sub_1DF47EF6C(v11, v13, &v18);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_1DF47C000, v6, v7, "Sending message %s with body %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  sub_1DF47FCEC(v21, &v19);
  v15 = swift_allocObject();
  sub_1DF47E390(&v19, v15 + 16);
  v16 = a4(0xD000000000000044, 0x80000001DF5722C0, sub_1DF48041C, v15);

  __swift_destroy_boxed_opaque_existential_0(v21);
  return v16 & 1;
}

uint64_t sub_1DF4E3520(uint64_t a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v23[3] = &type metadata for DaemonControllerRunActivityLoopEvent;
  v23[4] = &off_1F5A8DA38;
  v4 = swift_allocObject();
  v23[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED956020);
  sub_1DF47FCEC(v23, &v21);
  v7 = sub_1DF564794();
  v8 = sub_1DF564C14();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1DF47EF6C(0xD000000000000044, 0x80000001DF5723B0, &v20);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_0(&v21, v22);
    v12 = *(v11 + 1);
    v24 = *v11;
    v25 = v12;
    v26 = *(v11 + 16);
    if (sub_1DF55FB08())
    {
      sub_1DF480144();
      v13 = sub_1DF564894();
      v15 = v14;
    }

    else
    {
      v15 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v21);
    v16 = sub_1DF47EF6C(v13, v15, &v20);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1DF47C000, v7, v8, "Sending message %s with body %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v21);
  }

  sub_1DF47FCEC(v23, &v21);
  v17 = swift_allocObject();
  sub_1DF47E390(&v21, v17 + 16);
  v18 = a2(0xD000000000000044, 0x80000001DF5723B0, sub_1DF48041C, v17);

  __swift_destroy_boxed_opaque_existential_0(v23);
  return v18 & 1;
}

uint64_t sub_1DF4E3814(uint64_t a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v23[3] = &type metadata for DaemonControllerActivityRunEvent;
  v23[4] = &off_1F5A8D900;
  v4 = swift_allocObject();
  v23[0] = v4;
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_1DF4E50D4(a1, v24);
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v7 = sub_1DF5647B4();
  __swift_project_value_buffer(v7, qword_1ED956020);
  sub_1DF47FCEC(v23, &v21);
  v8 = sub_1DF564794();
  v9 = sub_1DF564C14();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1DF47EF6C(0xD000000000000040, 0x80000001DF572310, &v20);
    *(v10 + 12) = 2080;
    v12 = __swift_project_boxed_opaque_existential_0(&v21, v22);
    v24[1] = *(v12 + 1);
    v24[2] = *(v12 + 2);
    v24[3] = *(v12 + 3);
    v25 = *(v12 + 32);
    v24[0] = *v12;
    if (sub_1DF55F41C())
    {
      sub_1DF480144();
      v13 = sub_1DF564894();
      v15 = v14;
    }

    else
    {
      v15 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v21);
    v16 = sub_1DF47EF6C(v13, v15, &v20);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_1DF47C000, v8, v9, "Sending message %s with body %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v11, -1, -1);
    MEMORY[0x1E12D75F0](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v21);
  }

  sub_1DF47FCEC(v23, &v21);
  v17 = swift_allocObject();
  sub_1DF47E390(&v21, v17 + 16);
  v18 = a2(0xD000000000000040, 0x80000001DF572310, sub_1DF48041C, v17);

  __swift_destroy_boxed_opaque_existential_0(v23);
  return v18 & 1;
}

id sub_1DF4E3B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF5647B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DF564734();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = type metadata accessor for XPCCaller();
  v14 = [objc_allocWithZone(v13) init];
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_1ED956020);
  (*(v5 + 16))(v7, v15, v4);
  sub_1DF564714();
  v42 = v13;
  v43 = &off_1F5A89C00;
  v41[0] = v14;
  v39 = v8;
  v40 = &off_1F5A8A820;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v17 = type metadata accessor for TicketManager();
  v18 = objc_allocWithZone(v17);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  v34[2] = v34;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v34[1] = v34;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v27 = *v21;
  v37[3] = v13;
  v37[4] = &off_1F5A89C00;
  v37[0] = v27;
  v36[3] = v8;
  v36[4] = &off_1F5A8A820;
  v28 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(v9 + 32))(v28, v25, v8);
  sub_1DF47FCEC(v37, &v18[OBJC_IVAR___CSFTicketManager_provider]);
  v29 = &v18[OBJC_IVAR___CSFTicketManager_getCachedFeature];
  *v29 = sub_1DF4DC2BC;
  v29[1] = 0;
  v30 = &v18[OBJC_IVAR___CSFTicketManager_getCachedTicket];
  *v30 = sub_1DF4E5730;
  *(v30 + 1) = v12;
  v31 = &v18[OBJC_IVAR___CSFTicketManager_getTicketMock];
  *v31 = sub_1DF4DC2C0;
  v31[1] = 0;
  sub_1DF47FCEC(v36, &v18[OBJC_IVAR___CSFTicketManager_signposter]);
  v35.receiver = v18;
  v35.super_class = v17;
  v32 = objc_msgSendSuper2(&v35, sel_init);
  (*(v9 + 8))(v11, v8);
  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0(v41);
  return v32;
}

uint64_t sub_1DF4E3FF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4E4010, 0, 0);
}

uint64_t sub_1DF4E4010()
{
  v1 = sub_1DF481988();
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DF4E4134;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D58, &qword_1DF569340);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF4D0E70;
  v0[13] = &block_descriptor_173;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF4E4134()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1DF4E574C;
  }

  else
  {
    v2 = sub_1DF4E4244;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF4E4244()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = [*(v0 + 144) aa_altDSID];

    if (v2)
    {
      v1 = sub_1DF564944();
      v4 = v3;

      goto LABEL_6;
    }

    v1 = 0;
  }

  v4 = 0;
LABEL_6:

  *(v0 + 184) = sub_1DF4E3B34(v1, v4);
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_1DF4E434C;
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);

  return sub_1DF4DCB98(v7, v6);
}

uint64_t sub_1DF4E434C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4E5750, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1DF4E44A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4E44C4, 0, 0);
}

uint64_t sub_1DF4E44C4()
{
  v1 = sub_1DF481988();
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DF4E45E8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D58, &qword_1DF569340);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF4D0E70;
  v0[13] = &block_descriptor_165;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF4E45E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1DF4E4958;
  }

  else
  {
    v2 = sub_1DF4E46F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF4E46F8()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = [*(v0 + 144) aa_altDSID];

    if (v2)
    {
      v1 = sub_1DF564944();
      v4 = v3;

      goto LABEL_6;
    }

    v1 = 0;
  }

  v4 = 0;
LABEL_6:

  *(v0 + 184) = sub_1DF4E3B34(v1, v4);
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_1DF4E4800;
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);

  return sub_1DF4DF018(v7, v6);
}

uint64_t sub_1DF4E4800(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4E49C8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1DF4E4958(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DF4E49C8()
{
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1DF4E4A2C()
{
  result = qword_1ECE376B0;
  if (!qword_1ECE376B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376B0);
  }

  return result;
}

unint64_t sub_1DF4E4AFC()
{
  result = qword_1ECE37DB8;
  if (!qword_1ECE37DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37DB8);
  }

  return result;
}

uint64_t sub_1DF4E4B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DF4E5748;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DF4E4CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DF4E5748;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TicketManager.signupForWaitlist(featureID:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x80);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF4E5748;

  return v9(a1, a2);
}

uint64_t dispatch thunk of TicketManager.getWaitlistStatus(featureID:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF4A3FF4;

  return v9(a1, a2);
}

uint64_t sub_1DF4E5130()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF48D3C0;

  return sub_1DF4E13C8(v2, v3, v4);
}

uint64_t sub_1DF4E51E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF48D3C0;

  return sub_1DF51CA38(v2, v3, v4);
}

uint64_t sub_1DF4E52A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D3C0;

  return sub_1DF51CB20(a1, v4, v5, v6);
}

uint64_t objectdestroy_73Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF4E53B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF48D3C0;

  return sub_1DF4DEF44(v2, v3, v4);
}

uint64_t sub_1DF4E546C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF48D4B0;

  return sub_1DF4DC924(v2, v3);
}

uint64_t objectdestroy_101Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF4E5560()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF48D3C0;

  return sub_1DF4DC61C(v2, v3);
}

uint64_t objectdestroy_77Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1DF4E5654()
{
  result = qword_1ECE376B8;
  if (!qword_1ECE376B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376B8);
  }

  return result;
}

uint64_t sub_1DF4E5758(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

_BYTE *sub_1DF4E57BC(uint64_t a1)
{
  v2 = sub_1DF564D54();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1DF4E9FE8(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1DF4E583C()
{
  v0 = type metadata accessor for SystemProperties();
  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 1;
  v10[3] = v0;
  v10[4] = &off_1F5A88E50;
  v10[0] = v1;
  type metadata accessor for AvailabilityManager();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v10, v0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v2[13] = v0;
  v2[14] = &off_1F5A88E50;
  v2[9] = 0;
  v2[10] = v7;
  v2[2] = &unk_1DF569BB8;
  v2[3] = 0;
  v2[4] = &unk_1DF569BC0;
  v2[5] = 0;
  v2[6] = sub_1DF4E5EF4;
  v2[7] = 0;
  v2[8] = sub_1DF4E5F08;
  v2[15] = sub_1DF47FD50;
  v2[16] = 0;
  result = __swift_destroy_boxed_opaque_existential_0(v10);
  qword_1ED954D68 = v2;
  return result;
}

uint64_t sub_1DF4E59E4()
{
  v1 = type metadata accessor for XPCCaller();
  v2 = [objc_allocWithZone(v1) init];
  *(v0 + 40) = v1;
  *(v0 + 48) = &off_1F5A8AB90;
  *(v0 + 16) = v2;
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  v6 = off_1F5A8AB98 + *off_1F5A8AB98;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1DF4E5B58;
  v4 = *(v0 + 72);

  return (v6)(0x6C6C2E64756F6C63, 0xE90000000000006DLL, v4, 1, v1, &off_1F5A8AB90);
}

uint64_t sub_1DF4E5B58(uint64_t a1)
{
  v4 = *v2;
  v4[8] = v1;

  __swift_destroy_boxed_opaque_existential_0(v4 + 2);
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4E5CA8, 0, 0);
  }

  else
  {
    v5 = v4[1];

    return v5(a1);
  }
}

uint64_t sub_1DF4E5CDC()
{
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED955FF8;
  v2 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  *(v0 + 16) = v2;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1DF4E5DE0;

  return sub_1DF4EB220(v1, v2);
}

uint64_t sub_1DF4E5DE0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

id sub_1DF4E5F24(uint64_t a1, uint64_t a2)
{
  if ((sub_1DF548FD8() & 1) == 0)
  {
    return 0;
  }

  if (qword_1ED9562B0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED9562C0;
  v3 = sub_1DF564914();
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t static AvailabilityManager.shared.getter()
{
  if (qword_1ED954D60 != -1)
  {
    swift_once();
  }
}

void sub_1DF4E6024(uint64_t a1@<X8>)
{
  v28 = 0;
  v29 = 256;
  v2 = [objc_opt_self() currentAvailability];
  sub_1DF4A8ACC(v2, &v28, &v30);
  v3 = v30;
  v4 = v31;
  v5 = v32;
  v6 = v33;
  v8 = v34;
  v7 = v35;
  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v9 = sub_1DF5647B4();
  __swift_project_value_buffer(v9, qword_1ED955738);
  v10 = v2;

  v11 = sub_1DF564794();
  v12 = sub_1DF564C44();

  if (os_log_type_enabled(v11, v12))
  {
    v27 = v3;
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v13 = 136315650;
    *(v13 + 4) = sub_1DF47EF6C(0x2928646568636163, 0xE800000000000000, &v28);
    *(v13 + 12) = 2080;
    v30 = v27;
    v31 = v4;
    v32 = v5;
    v33 = v6;
    v34 = v8;
    v35 = v7;

    log = v11;
    v14 = AvailabilityModel.description.getter();
    v23 = v12;
    v15 = v4;
    v16 = v8;
    v17 = v6;
    v18 = v5;
    v20 = v19;

    v21 = sub_1DF47EF6C(v14, v20, &v28);
    v5 = v18;
    v6 = v17;
    v8 = v16;
    v4 = v15;

    *(v13 + 14) = v21;
    *(v13 + 22) = 2112;
    *(v13 + 24) = v10;
    *v25 = v10;
    v11 = v10;
    v10 = log;
    _os_log_impl(&dword_1DF47C000, log, v23, "%s: Returning AvailabilityModel %s, from csfAvailability %@", v13, 0x20u);
    sub_1DF484888(v25);
    MEMORY[0x1E12D75F0](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v26, -1, -1);
    v22 = v13;
    v3 = v27;
    MEMORY[0x1E12D75F0](v22, -1, -1);
  }

  *a1 = v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
}

uint64_t sub_1DF4E62F0(uint64_t a1)
{
  v1[24] = a1;
  v2 = sub_1DF5644C4();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4E63B0, 0, 0);
}

uint64_t sub_1DF4E63B0()
{
  v31 = v0;
  v0[21] = &type metadata for FeatureFlag;
  v1 = sub_1DF481614();
  *(v0 + 144) = 7;
  v0[22] = v1;
  v2 = sub_1DF5645A4();
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  if (v2)
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF5647B4();
    __swift_project_value_buffer(v3, qword_1ED9556D8);
    v4 = sub_1DF564794();
    v5 = sub_1DF564C44();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v30 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1DF47EF6C(0x29286863746566, 0xE700000000000000, &v30);
      _os_log_impl(&dword_1DF47C000, v4, v5, "%{public}s New availability flag enabled, will return empty set for unavailable reasons.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1E12D75F0](v7, -1, -1);
      MEMORY[0x1E12D75F0](v6, -1, -1);
    }

    v9 = v0[26];
    v8 = v0[27];
    v11 = v0[24];
    v10 = v0[25];
    sub_1DF5644B4();
    v12 = sub_1DF5644A4();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1DF488298(8, v12, v14, v15);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = MEMORY[0x1E12D6280](v16, v18, v20, v22);
    v25 = v24;

    *(v11 + 24) = v23;
    *(v11 + 32) = v25;
    *(v11 + 8) = 512;
    *(v11 + 16) = 0;
    *v11 = 1;

    v26 = v0[1];

    return v26();
  }

  else
  {
    v28 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_1DF4E6700;
    v29 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D50, qword_1DF569370);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1DF4E5758;
    v0[13] = &block_descriptor_2;
    v0[14] = v29;
    [v28 currentAvailabilityWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1DF4E6700()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF4E67E0, 0, 0);
}

uint64_t sub_1DF4E67E0()
{
  v39 = v0;
  v1 = v0[23];
  v31 = 0;
  v32 = 256;
  v2 = v1;
  sub_1DF4A8ACC(v2, &v31, &v33);
  v3 = v33;
  v4 = v34;
  v5 = v35;
  v6 = v36;
  v8 = v37;
  v7 = v38;
  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v9 = sub_1DF5647B4();
  __swift_project_value_buffer(v9, qword_1ED955738);
  v10 = v2;

  v11 = sub_1DF564794();
  v12 = sub_1DF564C44();

  if (os_log_type_enabled(v11, v12))
  {
    v30 = v3;
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v13 = 136315650;
    *(v13 + 4) = sub_1DF47EF6C(0x29286863746566, 0xE700000000000000, &v31);
    *(v13 + 12) = 2080;
    v33 = v30;
    v34 = v4;
    v35 = v5;
    v36 = v6;
    v37 = v8;
    v38 = v7;

    log = v11;
    v14 = AvailabilityModel.description.getter();
    v26 = v12;
    v15 = v4;
    v16 = v8;
    v17 = v6;
    v18 = v5;
    v20 = v19;

    v21 = sub_1DF47EF6C(v14, v20, &v31);
    v5 = v18;
    v6 = v17;
    v8 = v16;
    v4 = v15;

    *(v13 + 14) = v21;
    *(v13 + 22) = 2112;
    *(v13 + 24) = v10;
    *v28 = v10;
    v11 = v10;
    v10 = log;
    _os_log_impl(&dword_1DF47C000, log, v26, "%s: Returning AvailabilityModel %s, from csfAvailability %@", v13, 0x20u);
    sub_1DF484888(v28);
    MEMORY[0x1E12D75F0](v28, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v29, -1, -1);
    v22 = v13;
    v3 = v30;
    MEMORY[0x1E12D75F0](v22, -1, -1);
  }

  v23 = v0[24];
  *v23 = v3;
  *(v23 + 1) = v4;
  *(v23 + 8) = v5;
  *(v23 + 16) = v6;
  *(v23 + 24) = v8;
  *(v23 + 32) = v7;

  v24 = v0[1];

  return v24();
}

uint64_t sub_1DF4E6ACC(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4E6AF0, 0, 0);
}

id sub_1DF4E6AF0()
{
  v26 = v0;
  if ((*(*(v0 + 40) + 48))())
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v1 = sub_1DF5647B4();
    __swift_project_value_buffer(v1, qword_1ED9556D8);
    v2 = sub_1DF564794();
    v3 = sub_1DF564C44();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v25 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_1DF47EF6C(0xD00000000000001DLL, 0x80000001DF5725C0, &v25);
      _os_log_impl(&dword_1DF47C000, v2, v3, "%s Eligibility bypass is set to YES. Overriding access status to true.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x1E12D75F0](v5, -1, -1);
      MEMORY[0x1E12D75F0](v4, -1, -1);
    }

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v7 = result;
      v8 = 0x101000000;
      v9 = MobileGestalt_copy_regionCode_obj();

      if (v9)
      {
        v10 = sub_1DF564944();
        v12 = v11;

        if (v10 == 18499 && v12 == 0xE200000000000000)
        {

          v8 = 0x10101000000;
        }

        else
        {
          v21 = sub_1DF5650D4();

          if (v21)
          {
            v8 = 0x10101000000;
          }
        }
      }

      v22 = 65537;
      if (!*(v0 + 72))
      {
        v22 = 1;
      }

      sub_1DF4E2C10(v22 | v8, *(*(v0 + 40) + 120));
      v23 = *(v0 + 8);

      return v23(1);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  if (*(v0 + 72) == 1)
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v13 = sub_1DF5647B4();
    __swift_project_value_buffer(v13, qword_1ED956398);
    v14 = sub_1DF564794();
    v15 = sub_1DF564C24();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_21;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Requesting feature and deprecated parameter serverValue was passed as true. This will be ignored and will throw an error in the future.";
  }

  else
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v18 = sub_1DF5647B4();
    __swift_project_value_buffer(v18, qword_1ED956398);
    v14 = sub_1DF564794();
    v15 = sub_1DF564C44();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_21;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Requesting feature and deprecated parameter serverValue was passed as false.";
  }

  _os_log_impl(&dword_1DF47C000, v14, v15, v17, v16, 2u);
  MEMORY[0x1E12D75F0](v16, -1, -1);
LABEL_21:
  v19 = *(v0 + 40);

  v24 = (*(v19 + 16) + **(v19 + 16));
  v20 = swift_task_alloc();
  *(v0 + 48) = v20;
  *v20 = v0;
  v20[1] = sub_1DF4E6F64;

  return v24(0);
}

uint64_t sub_1DF4E6F64(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1DF4E71F0;
  }

  else
  {
    v4 = sub_1DF4E7078;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

id sub_1DF4E7078()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR___CloudFeature_canUse;
  swift_beginAccess();
  v3 = *(v1 + v2);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    v6 = MobileGestalt_copy_regionCode_obj();

    if (v6)
    {
      v7 = sub_1DF564944();
      v9 = v8;

      if (v7 == 18499 && v9 == 0xE200000000000000)
      {

        v6 = 0x10000000000;
      }

      else
      {
        v10 = sub_1DF5650D4();

        if (v10)
        {
          v6 = 0x10000000000;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    v11 = *(v0 + 40);
    v12 = *(v0 + 72);
    v13 = *(v1 + v2);

    v14 = 0x100000000;
    if (!v3)
    {
      v14 = 0;
    }

    v15 = 65537;
    if (!v12)
    {
      v15 = 1;
    }

    sub_1DF4E2C10(v6 | v15 | v14, *(v11 + 120));
    v16 = *(v0 + 8);

    return v16(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DF4E71F0(__n128 a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = 0x101000000;
    v5 = MobileGestalt_copy_regionCode_obj();

    if (v5)
    {
      v6 = sub_1DF564944();
      v8 = v7;

      if (v6 == 18499 && v8 == 0xE200000000000000)
      {

        v4 = 0x10101000000;
      }

      else
      {
        v9 = sub_1DF5650D4();

        if (v9)
        {
          v4 = 0x10101000000;
        }
      }
    }

    v10 = *(v1 + 40);
    v11 = *(v1 + 72);
    swift_willThrow();
    v12 = 0x10000;
    if (!v11)
    {
      v12 = 0;
    }

    sub_1DF4E2C10(v12 | v4, *(v10 + 120));
    v13 = *(v1 + 8);

    return v13(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4E7334(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  v3 = sub_1DF5644C4();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4E73F8, 0, 0);
}

uint64_t sub_1DF4E73F8(uint64_t a1)
{
  v84 = v1;
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(v1 + 24);
  sub_1DF5644B4();
  v5 = sub_1DF5644A4();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v9 = sub_1DF488298(8, v5, v7, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = MEMORY[0x1E12D6280](v9, v11, v13, v15);
  v18 = v17;

  *(v1 + 48) = v16;
  *(v1 + 56) = v18;
  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v19 = sub_1DF5647B4();
  *(v1 + 64) = __swift_project_value_buffer(v19, qword_1ED955738);

  v20 = sub_1DF564794();
  v21 = sub_1DF564C44();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 136446210;
    v81 = v23;
    v82 = 91;
    v83 = 0xE100000000000000;

    MEMORY[0x1E12D62C0](0xD000000000000029, 0x80000001DF5725E0);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v16, v18);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v24 = sub_1DF47EF6C(91, 0xE100000000000000, &v81);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_1DF47C000, v20, v21, "%{public}s Start", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v22, -1, -1);
  }

  if ((*(*(v1 + 16) + 64))())
  {
    v79 = v16;
    v82 = MEMORY[0x1E69E7CC0];
    sub_1DF4BCE90(0, 4, 0);
    v25 = v82;
    v27 = qword_1F5A88690;
    v26 = off_1F5A88698;
    v29 = *(v82 + 16);
    v28 = *(v82 + 24);
    v30 = v28 >> 1;
    v31 = v29 + 1;

    if (v28 >> 1 <= v29)
    {
      sub_1DF4BCE90((v28 > 1), v29 + 1, 1);
      v25 = v82;
      v28 = *(v82 + 24);
      v30 = v28 >> 1;
    }

    *(v25 + 16) = v31;
    v32 = v25 + 24 * v29;
    *(v32 + 32) = v27;
    *(v32 + 40) = v26;
    *(v32 + 48) = 1;
    v33 = qword_1F5A886A0;
    v34 = off_1F5A886A8;
    v82 = v25;
    v35 = v29 + 2;

    if (v30 <= v31)
    {
      sub_1DF4BCE90((v28 > 1), v35, 1);
      v25 = v82;
    }

    *(v25 + 16) = v35;
    v36 = v25 + 24 * v31;
    *(v36 + 32) = v33;
    *(v36 + 40) = v34;
    *(v36 + 48) = 1;
    v38 = qword_1F5A886B0;
    v37 = off_1F5A886B8;
    v82 = v25;
    v40 = *(v25 + 16);
    v39 = *(v25 + 24);
    v41 = v39 >> 1;
    v42 = v40 + 1;

    if (v39 >> 1 <= v40)
    {
      sub_1DF4BCE90((v39 > 1), v40 + 1, 1);
      v25 = v82;
      v39 = *(v82 + 24);
      v41 = v39 >> 1;
    }

    *(v25 + 16) = v42;
    v43 = v25 + 24 * v40;
    *(v43 + 32) = v38;
    *(v43 + 40) = v37;
    *(v43 + 48) = 1;
    v44 = aCloudLlm_0[0];
    v45 = aCloudLlm_0[1];
    v82 = v25;

    if (v41 <= v42)
    {
      sub_1DF4BCE90((v39 > 1), v40 + 2, 1);
      v25 = v82;
    }

    *(v25 + 16) = v40 + 2;
    v46 = v25 + 24 * v42;
    *(v46 + 32) = v44;
    *(v46 + 40) = v45;
    *(v46 + 48) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CD0, &unk_1DF56A380);
    v82 = sub_1DF564F34();

    sub_1DF4E9C6C(v47, 1, &v82);

    v56 = v82;

    v57 = sub_1DF564794();
    v58 = sub_1DF564C44();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 136446466;
      v81 = v60;
      v82 = 91;
      v83 = 0xE100000000000000;
      MEMORY[0x1E12D62C0](0xD000000000000029, 0x80000001DF5725E0);
      MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
      MEMORY[0x1E12D62C0](v79, v18);
      MEMORY[0x1E12D62C0](93, 0xE100000000000000);

      v61 = sub_1DF47EF6C(v82, v83, &v81);

      *(v59 + 4) = v61;
      *(v59 + 12) = 2082;
      v62 = sub_1DF564884();
      v64 = sub_1DF47EF6C(v62, v63, &v81);

      *(v59 + 14) = v64;
      _os_log_impl(&dword_1DF47C000, v57, v58, "%{public}s Bypass is enabled, returning %{public}s", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v60, -1, -1);
      MEMORY[0x1E12D75F0](v59, -1, -1);
    }

    else
    {
    }

    v65 = MobileGestalt_get_current_device();
    if (v65)
    {
      v70 = v65;
      v71 = 0x101000000;
      v72 = MobileGestalt_copy_regionCode_obj();

      if (v72)
      {
        v73 = sub_1DF564944();
        v75 = v74;

        if (v73 == 18499 && v75 == 0xE200000000000000)
        {

          v71 = 0x10101000000;
        }

        else
        {
          v76 = sub_1DF5650D4();

          if (v76)
          {
            v71 = 0x10101000000;
          }
        }
      }

      v77 = 257;
      if (*(v1 + 88))
      {
        v77 = 65793;
      }

      sub_1DF4E2C10(v77 | v71, *(*(v1 + 16) + 120));

      v78 = *(v1 + 8);

      return v78(v56);
    }

    else
    {
      __break(1u);
      return MEMORY[0x1EEE6C130](0, v66, v67, v68, v69);
    }
  }

  else
  {

    v48 = sub_1DF564794();
    v49 = sub_1DF564C44();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 136446210;
      v81 = v51;
      v82 = 91;
      v83 = 0xE100000000000000;

      MEMORY[0x1E12D62C0](0xD000000000000029, 0x80000001DF5725E0);
      MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
      MEMORY[0x1E12D62C0](v16, v18);
      MEMORY[0x1E12D62C0](93, 0xE100000000000000);

      v52 = sub_1DF47EF6C(v82, v83, &v81);

      *(v50 + 4) = v52;
      _os_log_impl(&dword_1DF47C000, v48, v49, "%{public}s Fetching feature access...", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x1E12D75F0](v51, -1, -1);
      MEMORY[0x1E12D75F0](v50, -1, -1);
    }

    v80 = (*(*(v1 + 16) + 32) + **(*(v1 + 16) + 32));
    v53 = swift_task_alloc();
    *(v1 + 72) = v53;
    *v53 = v1;
    v53[1] = sub_1DF4E7D90;
    v54 = *(v1 + 88);

    return v80(v54);
  }
}

uint64_t sub_1DF4E7D90(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF4E7E90, 0, 0);
}

id sub_1DF4E7E90()
{
  v30 = v0;
  v1 = sub_1DF4EA06C(*(v0 + 80));

  sub_1DF4E99A0(v1);
  v3 = v2;

  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446466;
    v29[0] = v10;
    v29[1] = 91;
    v29[2] = 0xE100000000000000;
    MEMORY[0x1E12D62C0](0xD000000000000029, 0x80000001DF5725E0);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v8, v7);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v11 = sub_1DF47EF6C(91, 0xE100000000000000, v29);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2082;
    v12 = sub_1DF564884();
    v14 = sub_1DF47EF6C(v12, v13, v29);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_1DF47C000, v4, v5, "%{public}s Returning %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {
  }

  sub_1DF4E57BC(v3);
  if (v16)
  {
    v17 = v15;

    v18 = (v17 & 1) << 32;
  }

  else
  {
    v18 = 0;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v20 = result;
    v21 = MobileGestalt_copy_regionCode_obj();

    if (v21)
    {
      v22 = sub_1DF564944();
      v24 = v23;

      if (v22 == 18499 && v24 == 0xE200000000000000)
      {

        v25 = 0x10000000000;
      }

      else
      {
        v26 = sub_1DF5650D4();

        v25 = 0x10000000000;
        if ((v26 & 1) == 0)
        {
          v25 = 0;
        }
      }
    }

    else
    {
      v25 = 0;
    }

    v27 = 257;
    if (*(v0 + 88))
    {
      v27 = 65793;
    }

    sub_1DF4E2C10(v25 | v18 | v27, *(*(v0 + 16) + 120));

    v28 = *(v0 + 8);

    return v28(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4E821C()
{
  v9 = v0;
  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED955738);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1DF47EF6C(0xD000000000000010, 0x80000001DF572630, &v8);
    _os_log_impl(&dword_1DF47C000, v2, v3, "%{public}s is deprecated, returning empty set.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1E12D75F0](v5, -1, -1);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  **(v0 + 16) = 0;
  v6 = *(v0 + 8);

  return v6();
}

unint64_t AvailabilityManager.AssetUnavailableReasons.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0xD000000000000013;
  }

  if (v1)
  {
    MEMORY[0x1E12D62C0](0xD000000000000011, 0x80000001DF572690);
  }

  if ((v1 & 2) != 0)
  {
    MEMORY[0x1E12D62C0](0xD000000000000010, 0x80000001DF572670);
  }

  MEMORY[0x1E12D62C0](62, 0xE100000000000000);
  return 0xD000000000000016;
}

void *AvailabilityManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  return v0;
}

uint64_t AvailabilityManager.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t static Availability.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED954D60 != -1)
  {
    swift_once();
  }

  sub_1DF4E6024(v6);
  v2 = v7;
  v3 = v8;

  v5 = v2;
  if (!v3)
  {
    v5 = v2;
  }

  *a1 = v5;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1DF4E8624()
{
  if (qword_1ED954D60 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1DF4E86E8;

  return sub_1DF4E62F0(v0 + 16);
}

uint64_t sub_1DF4E86E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF4E87E4, 0, 0);
}

uint64_t sub_1DF4E87E4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);

  v4 = v1 != 0;
  if (!v2)
  {
    v4 = v1;
  }

  *v3 = v4;
  *(v3 + 8) = v2;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t Availability.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      return 0x646574696D696CLL;
    }

    else
    {
      return 0x6C62616C69617661;
    }
  }

  else
  {
    sub_1DF564DF4();

    v3 = CSFUnavailabilityReasons.description.getter(v1);
    MEMORY[0x1E12D62C0](v3);

    return 0xD000000000000016;
  }
}

uint64_t static Availability.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF4E897C(uint64_t a1)
{
  v2 = sub_1DF4EA3F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4E89B8(uint64_t a1)
{
  v2 = sub_1DF4EA3F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF4E89F4()
{
  v1 = 0x646574696D696CLL;
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
    return 0x6C62616C69617661;
  }
}

uint64_t sub_1DF4E8A5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF4EBD7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF4E8A84(uint64_t a1)
{
  v2 = sub_1DF4EA2F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4E8AC0(uint64_t a1)
{
  v2 = sub_1DF4EA2F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF4E8AFC(uint64_t a1)
{
  v2 = sub_1DF4EA39C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4E8B38(uint64_t a1)
{
  v2 = sub_1DF4EA39C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF4E8B74()
{
  sub_1DF565234();
  MEMORY[0x1E12D6B00](0);
  return sub_1DF565264();
}

uint64_t sub_1DF4E8BB8(uint64_t a1)
{
  sub_1DF565234();
  MEMORY[0x1E12D6B00](0);
  return sub_1DF565264();
}

uint64_t sub_1DF4E8C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F73616572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF5650D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF4E8C98(uint64_t a1)
{
  v2 = sub_1DF4EA348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4E8CD4(uint64_t a1)
{
  v2 = sub_1DF4EA348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Availability.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DD0, &qword_1DF5693A0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DD8, &qword_1DF5693A8);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DE0, &qword_1DF5693B0);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v23 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DE8, &qword_1DF5693B8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = *v1;
  v14 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4EA2F4();
  sub_1DF5652A4();
  if (v14 == 1)
  {
    v15 = (v10 + 8);
    if (v13)
    {
      v34 = 1;
      sub_1DF4EA39C();
      v16 = v26;
      sub_1DF565014();
      v18 = v27;
      v17 = v28;
    }

    else
    {
      v33 = 0;
      sub_1DF4EA3F0();
      v16 = v23;
      sub_1DF565014();
      v18 = v24;
      v17 = v25;
    }

    (*(v18 + 8))(v16, v17);
    return (*v15)(v12, v9);
  }

  else
  {
    v35 = 2;
    sub_1DF4EA348();
    v19 = v29;
    sub_1DF565014();
    v32 = v13;
    type metadata accessor for UnavailabilityReasons(0);
    sub_1DF4AAB30(&qword_1ECE37E00, &protocol conformance descriptor for CSFUnavailabilityReasons);
    v20 = v31;
    sub_1DF565074();
    (*(v30 + 8))(v19, v20);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t Availability.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  return MEMORY[0x1E12D6B00](v1);
}

uint64_t Availability.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DF565234();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  MEMORY[0x1E12D6B00](v1);
  return sub_1DF565264();
}

uint64_t Availability.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37E18, &qword_1DF5693C0);
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v32 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37E20, &qword_1DF5693C8);
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37E28, &qword_1DF5693D0);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37E30, &qword_1DF5693D8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v13 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v13);
  sub_1DF4EA2F4();
  v14 = v41;
  sub_1DF565284();
  if (!v14)
  {
    v33 = v6;
    v15 = v40;
    v41 = v10;
    v16 = sub_1DF564FF4();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(v16 + 32);
      if (v17 == 1 && v18 != 3)
      {
        if (*(v16 + 32))
        {
          if (v18 != 1)
          {
            v46 = 2;
            sub_1DF4EA348();
            sub_1DF564F64();
            v26 = v9;
            v27 = v39;
            v28 = v41;
            type metadata accessor for UnavailabilityReasons(0);
            sub_1DF4AAB30(&qword_1ECE37E40, &protocol conformance descriptor for CSFUnavailabilityReasons);
            v30 = v36;
            sub_1DF564FE4();
            (*(v38 + 8))(v15, v30);
            (*(v28 + 8))(v12, v26);
            swift_unknownObjectRelease();
            v31 = 0;
            v25 = v43;
LABEL_16:
            *v27 = v25;
            *(v27 + 8) = v31;
            return __swift_destroy_boxed_opaque_existential_0(v42);
          }

          v45 = 1;
          sub_1DF4EA39C();
          sub_1DF564F64();
          v24 = v41;
          (*(v37 + 8))(v5, v35);
          (*(v24 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v25 = 1;
        }

        else
        {
          v44 = 0;
          sub_1DF4EA3F0();
          sub_1DF564F64();
          (*(v34 + 8))(v8, v33);
          (*(v41 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v25 = 0;
        }

        v31 = 1;
        v27 = v39;
        goto LABEL_16;
      }
    }

    v20 = sub_1DF564E44();
    swift_allocError();
    v21 = v9;
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37E38, &qword_1DF5693E0);
    *v23 = &type metadata for Availability;
    sub_1DF564F74();
    sub_1DF564E34();
    (*(*(v20 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v41 + 8))(v12, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v42);
}

uint64_t sub_1DF4E97D8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4E980C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DF565234();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  MEMORY[0x1E12D6B00](v1);
  return sub_1DF565264();
}

uint64_t sub_1DF4E9878()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  return MEMORY[0x1E12D6B00](v1);
}

uint64_t sub_1DF4E98C8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1DF565234();
  if (v3 == 1)
  {
    v2 = v2 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  MEMORY[0x1E12D6B00](v2);
  return sub_1DF565264();
}

uint64_t sub_1DF4E9964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

void sub_1DF4E99A0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v34 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v10 = __clz(__rbit64(v6)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);
    if (v14 >> 62)
    {
      v15 = sub_1DF564F04();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 &= v6 - 1;
    if (v15)
    {
      v33 = v2;
      if ((v14 & 0xC000000000000001) != 0)
      {

        v17 = MEMORY[0x1E12D66D0](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v16 = *(v14 + 32);

        v17 = v16;
      }

      v18 = v17;
      v31 = OBJC_IVAR___CloudFeature_canUse;
      swift_beginAccess();
      v32 = v18[v31];

      v19 = *(v33 + 16);
      if (*(v33 + 24) <= v19)
      {
        sub_1DF501608(v19 + 1, 1);
      }

      v2 = v34;
      sub_1DF565234();
      sub_1DF5649E4();
      v20 = sub_1DF565264();
      v21 = v34 + 64;
      v22 = -1 << *(v34 + 32);
      v23 = v20 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v34 + 64 + 8 * (v23 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v22) >> 6;
        while (++v24 != v27 || (v26 & 1) == 0)
        {
          v28 = v24 == v27;
          if (v24 == v27)
          {
            v24 = 0;
          }

          v26 |= v28;
          v29 = *(v21 + 8 * v24);
          if (v29 != -1)
          {
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            goto LABEL_28;
          }
        }

        goto LABEL_33;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*(v34 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v30 = (*(v34 + 48) + 16 * v25);
      *v30 = v12;
      v30[1] = v13;
      *(*(v34 + 56) + v25) = v32;
      ++*(v34 + 16);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1DF4E9C6C(uint64_t a1, char a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  LOBYTE(v8) = *(a1 + 48);
  v9 = *a3;

  v10 = sub_1DF480420(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1DF501608(v15, v5 & 1);
    v10 = sub_1DF480420(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1DF565144();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1DF4C2960();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1DF564DF4();
    MEMORY[0x1E12D62C0](0xD00000000000001BLL, 0x80000001DF572800);
    sub_1DF564EE4();
    MEMORY[0x1E12D62C0](39, 0xE100000000000000);
    sub_1DF564EF4();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = (a1 + 72);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;

      v27 = sub_1DF480420(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1DF501608(v31, 1);
        v27 = sub_1DF480420(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v33[2] = v36;
      v5 += 24;
      if (v37 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

_BYTE *sub_1DF4E9FE8(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1DF4EA06C(unint64_t a1)
{
  v27 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_1DF564F04();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1E12D66D0](v3, a1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(a1 + 8 * v3 + 32);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v26 = v8;
        v9 = v7;
        v11 = *&v7[OBJC_IVAR___CloudFeature_featureID];
        v10 = *&v7[OBJC_IVAR___CloudFeature_featureID + 8];

        v13 = sub_1DF480420(v11, v10);
        v14 = v4[2];
        v15 = (v12 & 1) == 0;
        v16 = v14 + v15;
        if (__OFADD__(v14, v15))
        {
          goto LABEL_22;
        }

        v17 = v12;
        if (v4[3] < v16)
        {
          sub_1DF5018A8(v16, 1);
          v4 = v27;
          v18 = sub_1DF480420(v11, v10);
          if ((v17 & 1) != (v19 & 1))
          {
            result = sub_1DF565144();
            __break(1u);
            return result;
          }

          v13 = v18;
        }

        if (v17)
        {

          v6 = (v4[7] + 8 * v13);
          MEMORY[0x1E12D6340](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DF564AC4();
          }

          sub_1DF564AE4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37ED0, &qword_1DF569BB0);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1DF569350;
          *(v20 + 32) = v9;
          v4[(v13 >> 6) + 8] |= 1 << v13;
          v21 = (v4[6] + 16 * v13);
          *v21 = v11;
          v21[1] = v10;
          *(v4[7] + 8 * v13) = v20;
          v22 = v4[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_23;
          }

          v4[2] = v24;
        }

        ++v3;
        if (v26 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

unint64_t sub_1DF4EA2F4()
{
  result = qword_1ECE37DF0;
  if (!qword_1ECE37DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37DF0);
  }

  return result;
}

unint64_t sub_1DF4EA348()
{
  result = qword_1ECE37DF8;
  if (!qword_1ECE37DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37DF8);
  }

  return result;
}

unint64_t sub_1DF4EA39C()
{
  result = qword_1ECE37E08;
  if (!qword_1ECE37E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E08);
  }

  return result;
}

unint64_t sub_1DF4EA3F0()
{
  result = qword_1ECE37E10;
  if (!qword_1ECE37E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E10);
  }

  return result;
}

unint64_t sub_1DF4EA448()
{
  result = qword_1ECE37E48;
  if (!qword_1ECE37E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E48);
  }

  return result;
}

unint64_t sub_1DF4EA4A0()
{
  result = qword_1ECE37E50;
  if (!qword_1ECE37E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E50);
  }

  return result;
}

unint64_t sub_1DF4EA4F8()
{
  result = qword_1ECE37E58;
  if (!qword_1ECE37E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37E60, &qword_1DF569420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E58);
  }

  return result;
}

unint64_t sub_1DF4EA560()
{
  result = qword_1ECE37E68;
  if (!qword_1ECE37E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E68);
  }

  return result;
}

unint64_t sub_1DF4EA5B8()
{
  result = qword_1ECE37E70;
  if (!qword_1ECE37E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E70);
  }

  return result;
}

unint64_t sub_1DF4EA610()
{
  result = qword_1ECE37E78;
  if (!qword_1ECE37E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E78);
  }

  return result;
}

uint64_t sub_1DF4EA678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF48D3C0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AvailabilityManager.fetch()(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF48D4B0;

  return v6(a1);
}

uint64_t dispatch thunk of AvailabilityManager.getAccessStatus(serverValue:)(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF4A3FF4;

  return v6(a1);
}

uint64_t dispatch thunk of AvailabilityManager.getAccessGrantedFeatureKeys(serverValue:)(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF4A3FF4;

  return v6(a1);
}

uint64_t dispatch thunk of AvailabilityManager.getAssetStatus()(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF48D4B0;

  return v6(a1);
}

uint64_t getEnumTagSinglePayload for AvailabilityManager.AssetUnavailableReasons(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AvailabilityManager.AssetUnavailableReasons(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AvailabilityStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AvailabilityStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1DF4EAD54(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF4EAD70(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Availability.UnavailableCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Availability.UnavailableCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1DF4EAEB4()
{
  result = qword_1ECE37E80;
  if (!qword_1ECE37E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E80);
  }

  return result;
}

unint64_t sub_1DF4EAF0C()
{
  result = qword_1ECE37E88;
  if (!qword_1ECE37E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E88);
  }

  return result;
}

unint64_t sub_1DF4EAF64()
{
  result = qword_1ECE37E90;
  if (!qword_1ECE37E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E90);
  }

  return result;
}

unint64_t sub_1DF4EAFBC()
{
  result = qword_1ECE37E98;
  if (!qword_1ECE37E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E98);
  }

  return result;
}

unint64_t sub_1DF4EB014()
{
  result = qword_1ECE37EA0;
  if (!qword_1ECE37EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EA0);
  }

  return result;
}

unint64_t sub_1DF4EB06C()
{
  result = qword_1ECE37EA8;
  if (!qword_1ECE37EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EA8);
  }

  return result;
}

unint64_t sub_1DF4EB0C4()
{
  result = qword_1ECE37EB0;
  if (!qword_1ECE37EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EB0);
  }

  return result;
}

unint64_t sub_1DF4EB11C()
{
  result = qword_1ECE37EB8;
  if (!qword_1ECE37EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EB8);
  }

  return result;
}

unint64_t sub_1DF4EB174()
{
  result = qword_1ECE37EC0;
  if (!qword_1ECE37EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EC0);
  }

  return result;
}

unint64_t sub_1DF4EB1CC()
{
  result = qword_1ECE37EC8;
  if (!qword_1ECE37EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EC8);
  }

  return result;
}

uint64_t sub_1DF4EB220(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v2[10] = a1;
  v2[11] = ObjectType;
  v2[5] = ObjectType;
  v2[6] = &off_1F5A8AB90;
  v2[2] = a2;
  v6 = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DF4EB2AC, 0, 0);
}

id sub_1DF4EB2AC()
{
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result aa_primaryAppleAccount];

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [v3 aa_altDSID];

  if (!v4)
  {
    v3 = 0;
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v3 = sub_1DF564944();
  v6 = v5;

LABEL_7:
  v0[12] = v3;
  v0[13] = v6;
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[11]);
  v9 = off_1F5A8AB98 + *off_1F5A8AB98;
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1DF4EB488;
  v8 = v0[11];

  return (v9)(0xD000000000000018, 0x80000001DF5707C0, 0, 0, v8, &off_1F5A8AB90);
}

uint64_t sub_1DF4EB488(void *a1)
{
  *(*v2 + 120) = v1;

  if (v1)
  {
    v4 = sub_1DF4EB8FC;
  }

  else
  {

    v4 = sub_1DF4EB5A4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

char *sub_1DF4EB5A4()
{
  v33 = v0;
  v1 = FeatureCache.allFeatures(forDSID:allowAnySession:ignoreTTL:)(v0[12], v0[13], 1, 1);

  v2 = sub_1DF5490B0(v1);

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED956398);

  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000038, 0x80000001DF572820, &v31);
    *(v6 + 12) = 2082;
    if (v2 >> 62)
    {
      v8 = sub_1DF564F04();
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v32 = MEMORY[0x1E69E7CC0];
      result = sub_1DF4BCB24(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        __break(1u);
        return result;
      }

      v27 = v7;
      v28 = v5;
      v29 = v6;
      v30 = v4;
      v11 = 0;
      v9 = v32;
      v12 = v2 & 0xC000000000000001;
      v13 = v2;
      do
      {
        if (v12)
        {
          v14 = MEMORY[0x1E12D66D0](v11, v2);
        }

        else
        {
          v14 = *(v2 + 8 * v11 + 32);
        }

        v15 = v14;
        v16 = &v14[OBJC_IVAR___CloudFeature_featureID];
        swift_beginAccess();
        v17 = *v16;
        v18 = *(v16 + 1);

        v32 = v9;
        v20 = *(v9 + 16);
        v19 = *(v9 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1DF4BCB24((v19 > 1), v20 + 1, 1);
          v9 = v32;
        }

        ++v11;
        *(v9 + 16) = v20 + 1;
        v21 = v9 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v18;
        v2 = v13;
      }

      while (v8 != v11);
      v6 = v29;
      v4 = v30;
      v5 = v28;
      v7 = v27;
    }

    v22 = MEMORY[0x1E12D6370](v9, MEMORY[0x1E69E6158]);
    v24 = v23;

    v25 = sub_1DF47EF6C(v22, v24, &v31);

    *(v6 + 14) = v25;
    _os_log_impl(&dword_1DF47C000, v4, v5, "%{public}s Returning features: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v26 = v0[1];

  return v26(v2);
}

char *sub_1DF4EB8FC()
{
  v43 = v0;
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Encountered error while trying to refresh AI features, will return cached values anyway: %@", v8, 0xCu);
    sub_1DF484888(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  else
  {
  }

  v12 = FeatureCache.allFeatures(forDSID:allowAnySession:ignoreTTL:)(v0[12], v0[13], 1, 1);

  v13 = sub_1DF5490B0(v12);

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1ED956398);

  v14 = sub_1DF564794();
  v15 = sub_1DF564C44();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v41 = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_1DF47EF6C(0xD000000000000038, 0x80000001DF572820, &v41);
    *(v16 + 12) = 2082;
    if (v13 >> 62)
    {
      v18 = sub_1DF564F04();
    }

    else
    {
      v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = MEMORY[0x1E69E7CC0];
    if (v18)
    {
      v42 = MEMORY[0x1E69E7CC0];
      result = sub_1DF4BCB24(0, v18 & ~(v18 >> 63), 0);
      if (v18 < 0)
      {
        __break(1u);
        return result;
      }

      v37 = v17;
      v38 = v15;
      v39 = v16;
      v40 = v14;
      v21 = 0;
      v19 = v42;
      v22 = v13 & 0xC000000000000001;
      v23 = v13;
      do
      {
        if (v22)
        {
          v24 = MEMORY[0x1E12D66D0](v21, v13);
        }

        else
        {
          v24 = *(v13 + 8 * v21 + 32);
        }

        v25 = v24;
        v26 = &v24[OBJC_IVAR___CloudFeature_featureID];
        swift_beginAccess();
        v27 = *v26;
        v28 = *(v26 + 1);

        v42 = v19;
        v30 = *(v19 + 16);
        v29 = *(v19 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1DF4BCB24((v29 > 1), v30 + 1, 1);
          v19 = v42;
        }

        ++v21;
        *(v19 + 16) = v30 + 1;
        v31 = v19 + 16 * v30;
        *(v31 + 32) = v27;
        *(v31 + 40) = v28;
        v13 = v23;
      }

      while (v18 != v21);
      v16 = v39;
      v14 = v40;
      v15 = v38;
      v17 = v37;
    }

    v32 = MEMORY[0x1E12D6370](v19, MEMORY[0x1E69E6158]);
    v34 = v33;

    v35 = sub_1DF47EF6C(v32, v34, &v41);

    *(v16 + 14) = v35;
    _os_log_impl(&dword_1DF47C000, v14, v15, "%{public}s Returning features: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v17, -1, -1);
    MEMORY[0x1E12D75F0](v16, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v36 = v0[1];

  return v36(v13);
}

uint64_t sub_1DF4EBD7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646574696D696CLL && a2 == 0xE700000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF5650D4();

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

unint64_t SuiteName.rawValue.getter()
{
  v1 = 0xD000000000000029;
  v2 = *v0;
  if (v2 > 5)
  {
    v7 = 0xD00000000000002DLL;
    v8 = 0xD000000000000023;
    if (v2 != 10)
    {
      v8 = 0xD00000000000002ELL;
    }

    if (v2 != 9)
    {
      v7 = v8;
    }

    if (v2 != 7)
    {
      v1 = 0xD00000000000002CLL;
    }

    if (v2 == 6)
    {
      v1 = 0xD000000000000013;
    }

    if (*v0 <= 8u)
    {
      return v1;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v3 = 0xD000000000000031;
    v4 = 0xD00000000000002BLL;
    if (v2 != 4)
    {
      v4 = 0xD000000000000030;
    }

    if (v2 != 3)
    {
      v3 = v4;
    }

    v5 = 0xD00000000000002CLL;
    if (v2 == 1)
    {
      v5 = 0xD00000000000002ALL;
    }

    if (*v0)
    {
      v1 = v5;
    }

    if (*v0 <= 2u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

void sub_1DF4EC024(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1DF564914();
  [v3 removeObjectForKey_];
}

id sub_1DF4EC088(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1DF564914();
  v5 = [v3 BOOLForKey_];

  return v5;
}

double sub_1DF4EC0DC@<D0>(SEL *a3@<X4>, _OWORD *a4@<X8>)
{
  v7 = *v4;
  v8 = sub_1DF564914();
  v9 = [v7 *a3];

  if (v9)
  {
    sub_1DF564D24();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_1DF4EC19C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_1DF4EC8F4(a1, v13);
  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_1DF5650C4();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1DF564914();
  [v4 *a4];
  swift_unknownObjectRelease();
}

void sub_1DF4EC304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = sub_1DF564864();
  v6 = sub_1DF564914();
  [v4 setPersistentDomain:v5 forName:v6];
}

uint64_t sub_1DF4EC3A0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1DF564914();
  v5 = [v3 persistentDomainForName_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1DF564874();

  return v6;
}

CloudSubscriptionFeatures::SuiteName_optional __swiftcall SuiteName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF564F54();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DF4EC484()
{
  v0 = SuiteName.rawValue.getter();
  v2 = v1;
  if (v0 == SuiteName.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DF5650D4();
  }

  return v5 & 1;
}

unint64_t sub_1DF4EC524()
{
  result = qword_1ECE37ED8;
  if (!qword_1ECE37ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37ED8);
  }

  return result;
}

uint64_t sub_1DF4EC578()
{
  sub_1DF565234();
  SuiteName.rawValue.getter();
  sub_1DF5649E4();

  return sub_1DF565264();
}

uint64_t sub_1DF4EC5E0(uint64_t a1)
{
  SuiteName.rawValue.getter();
  sub_1DF5649E4();
}

uint64_t sub_1DF4EC644(uint64_t a1)
{
  sub_1DF565234();
  SuiteName.rawValue.getter();
  sub_1DF5649E4();

  return sub_1DF565264();
}

unint64_t sub_1DF4EC6B4@<X0>(unint64_t *a1@<X8>)
{
  result = SuiteName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SuiteName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SuiteName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DF4EC8F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378F0, &qword_1DF5686F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF4EC964(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1DF564494();
  v25 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v15 = *(a1 + OBJC_IVAR___CloudFeature_featureID) == 0x6C6C2E64756F6C63 && *(a1 + OBJC_IVAR___CloudFeature_featureID + 8) == 0xE90000000000006DLL;
  if (v15 || (sub_1DF5650D4() & 1) != 0)
  {
    v16 = OBJC_IVAR___CloudFeature_canUse;
    v17 = swift_beginAccess();
    v18 = *(a1 + v16);
    if (v18 != (a2(v17) & 1))
    {
      a3 = 2;
      v27 = 2;
      sub_1DF4ECCC4();
LABEL_17:
      swift_willThrowTypedImpl();
      return a3;
    }

    if (*(a1 + v16) != 1)
    {
      return a3;
    }

    v19 = OBJC_IVAR___CloudFeature_ttl;
    swift_beginAccess();
    sub_1DF4952D8(a1 + v19, v8);
    v20 = v25;
    if ((*(v25 + 48))(v8, 1, v9) == 1)
    {
      sub_1DF4C46C4(v8);
LABEL_16:
      a3 = 1;
      v26 = 1;
      sub_1DF4ECCC4();
      goto LABEL_17;
    }

    (*(v20 + 32))(v14, v8, v9);
    sub_1DF564474();
    v21 = sub_1DF5643F4();
    v22 = *(v20 + 8);
    v22(v12, v9);
    if ((v21 & 1) == 0)
    {
      v22(v14, v9);
      goto LABEL_16;
    }

    a3 = a1 + OBJC_IVAR___CloudFeature_accessToken;
    swift_beginAccess();
    if (*(a3 + 8))
    {
      v22(v14, v9);
    }

    else
    {
      v28 = 0;
      sub_1DF4ECCC4();
      swift_willThrowTypedImpl();
      v22(v14, v9);
      return 0;
    }
  }

  return a3;
}

unint64_t sub_1DF4ECCC4()
{
  result = qword_1ECE37728;
  if (!qword_1ECE37728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37728);
  }

  return result;
}

unint64_t sub_1DF4ECD2C()
{
  result = qword_1ECE37EE0;
  if (!qword_1ECE37EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EE0);
  }

  return result;
}

unint64_t sub_1DF4ECD80()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 32);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = 0x745374656B636954;
    }

    else
    {
      if (v3 != 4)
      {
        return 0xD000000000000012;
      }

      v5 = 0x656B636954746547;
    }

    v8 = v5;
LABEL_13:
    MEMORY[0x1E12D62C0](v1, v2);
    return v8;
  }

  if (!*(v0 + 32))
  {
    v6 = *v0;
    v7 = *(v0 + 8);
    sub_1DF564DF4();

    v8 = 0xD000000000000015;
    MEMORY[0x1E12D62C0](v6, v7);
    v1 = 41;
    v2 = 0xE100000000000000;
    goto LABEL_13;
  }

  if (v3 == 1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1DF4ECF04()
{
  v75 = v0;
  v1 = *(v0 + 152);
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 32);
  if (((1 << v4) & 0x1B) != 0)
  {
    v5 = *(v0 + 120);
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_0(v5, v6);
    v8 = (*(v7 + 32))(v6, v7);
LABEL_3:
    v9 = v8;
    *(v0 + 384) = v8;
    v10 = *(v0 + 224);
    v11 = *(v0 + 152);
    __swift_project_boxed_opaque_existential_0(*(v0 + 136), *(*(v0 + 136) + 24));
    v12 = *(v11 + 32);
    if (v12 == 1)
    {
      v13 = *v11;
    }

    else
    {
      v13 = 0;
    }

    if (v12 == 1)
    {
      v14 = v1[1];
    }

    else
    {
      v14 = 2;
    }

    sub_1DF4D8984(v9, v13, v14, v10);
    sub_1DF564074();
    v15 = 0;
    v16 = *(v11 + 32);
    v17 = 0xF000000000000000;
    if (v16 == 3)
    {
      v18 = v1[3];
      if (v18)
      {
        v19 = *(v0 + 376);
        v21 = *(v0 + 176);
        v20 = *(v0 + 184);
        v22 = *(v0 + 168);
        v23 = v1[2];
        sub_1DF5641C4();
        swift_allocObject();
        sub_1DF5641B4();
        (*(v21 + 104))(v20, *MEMORY[0x1E6967FC8], v22);
        sub_1DF564194();
        *(v0 + 88) = v23;
        *(v0 + 96) = v18;
        sub_1DF4EFF6C();
        v15 = sub_1DF5641A4();
        v17 = v24;

        if (v19)
        {
          if (qword_1ED9556D0 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(*(v0 + 352), qword_1ED9556D8);

          v25 = v19;
          v26 = sub_1DF564794();
          v27 = sub_1DF564C24();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = *(v0 + 344);
            v68 = *(v0 + 336);
            v30 = *(v0 + 320);
            v29 = *(v0 + 328);
            v31 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v72 = v70;
            *v31 = 136446466;
            v73 = 91;
            v74 = 0xE100000000000000;

            MEMORY[0x1E12D62C0](v30, v29);
            MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
            MEMORY[0x1E12D62C0](v68, v28);
            MEMORY[0x1E12D62C0](93, 0xE100000000000000);

            v32 = sub_1DF47EF6C(91, 0xE100000000000000, &v72);

            *(v31 + 4) = v32;
            *(v31 + 12) = 2112;
            v33 = v19;
            v34 = _swift_stdlib_bridgeErrorToNSError();
            *(v31 + 14) = v34;
            *v69 = v34;
            _os_log_impl(&dword_1DF47C000, v26, v27, "%{public}s Unable to encode ticket request object. Request will still be made: %@", v31, 0x16u);
            sub_1DF47E5B4(v69, &unk_1ECE37F10, &qword_1DF567510);
            MEMORY[0x1E12D75F0](v69, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v70);
            MEMORY[0x1E12D75F0](v70, -1, -1);
            MEMORY[0x1E12D75F0](v31, -1, -1);
          }

          else
          {
          }

          v15 = 0;
          v17 = 0xF000000000000000;
        }
      }
    }

    *(v0 + 392) = v15;
    *(v0 + 400) = v17;
    v46 = *(v0 + 224);
    v47 = *(v0 + 120);
    sub_1DF4EF5A8(v15, v17);
    sub_1DF5640E4();
    v48 = v47[3];
    v49 = v47[4];
    __swift_project_boxed_opaque_existential_0(v47, v48);
    if (((*(v49 + 104))(v46, v48, v49) & 1) != 0 && v9)
    {

      v50 = v9;
      v51 = sub_1DF564794();
      v52 = sub_1DF564C44();

      if (os_log_type_enabled(v51, v52))
      {
        v54 = *(v0 + 336);
        v53 = *(v0 + 344);
        v71 = v50;
        v55 = *(v0 + 320);
        v56 = *(v0 + 328);
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 136446210;
        v72 = v58;
        v73 = 91;
        v74 = 0xE100000000000000;

        MEMORY[0x1E12D62C0](v55, v56);
        MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
        MEMORY[0x1E12D62C0](v54, v53);
        MEMORY[0x1E12D62C0](93, 0xE100000000000000);

        v59 = sub_1DF47EF6C(v73, v74, &v72);

        *(v57 + 4) = v59;
        v50 = v71;
        _os_log_impl(&dword_1DF47C000, v51, v52, "%{public}s Auth header is missing, will attempt to renew credentials", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x1E12D75F0](v58, -1, -1);
        MEMORY[0x1E12D75F0](v57, -1, -1);
      }

      v60 = swift_task_alloc();
      *(v0 + 408) = v60;
      *v60 = v0;
      v60[1] = sub_1DF4ED75C;
      v61 = *(v0 + 120);

      return sub_1DF4EF5BC(v50, v61);
    }

    else
    {
      v62 = swift_task_alloc();
      *(v0 + 424) = v62;
      *v62 = v0;
      v62[1] = sub_1DF4EDB14;
      v63 = *(v0 + 384);
      v64 = *(v0 + 224);
      v65 = *(v0 + 160);
      v66 = *(v0 + 144);
      v67 = *(v0 + 120);

      return sub_1DF4EE9B0(v65, v64, v63, v67, v66);
    }
  }

  if (v4 == 2)
  {
    v35 = *(v0 + 120);
    v36 = v35[3];
    v37 = v35[4];
    __swift_project_boxed_opaque_existential_0(v35, v36);
    v8 = (*(v37 + 96))(v3, v2, v36, v37);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = *(v0 + 120);
    v39 = v38[3];
    v40 = v38[4];
    __swift_project_boxed_opaque_existential_0(v38, v39);
    v8 = (*(v40 + 32))(v39, v40);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v42 = *(v0 + 240);
  v41 = *(v0 + 248);
  v43 = *(v0 + 232);

  sub_1DF4B3AA0(3);
  swift_willThrow();
  (*(v42 + 8))(v41, v43);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1DF4ED75C()
{
  *(*v1 + 416) = v0;

  if (v0)
  {

    v2 = sub_1DF4ED9D0;
  }

  else
  {
    v2 = sub_1DF4ED884;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF4ED884()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 216);
  v18 = *(v0 + 224);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_0(*(v0 + 136), *(*(v0 + 136) + 24));
  v6 = *(v5 + 8);
  v7 = *(v5 + 32);
  if (v7 == 1)
  {
    v8 = *v5;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == 1)
  {
    v9 = v6;
  }

  else
  {
    v9 = 2;
  }

  v10 = v1;
  sub_1DF4D8984(v1, v8, v9, v2);

  (*(v3 + 40))(v18, v2, v4);
  v11 = swift_task_alloc();
  *(v0 + 424) = v11;
  *v11 = v0;
  v11[1] = sub_1DF4EDB14;
  v12 = *(v0 + 384);
  v13 = *(v0 + 224);
  v14 = *(v0 + 160);
  v15 = *(v0 + 144);
  v16 = *(v0 + 120);

  return sub_1DF4EE9B0(v14, v13, v12, v16, v15);
}

uint64_t sub_1DF4ED9D0()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[24];
  v9 = v0[25];

  sub_1DF48C2F4(v1, v2);
  (*(v5 + 8))(v4, v6);
  (*(v9 + 8))(v7, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DF4EDB14()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_1DF4EE660;
  }

  else
  {
    v2 = sub_1DF4EDC28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF4EDC28()
{
  v86 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[48];
    sub_1DF47E5B4(v3, &qword_1ECE37EE8, &unk_1DF569E60);
    if (!v4)
    {

      v31 = sub_1DF564794();
      v32 = sub_1DF564C24();

      v33 = os_log_type_enabled(v31, v32);
      v34 = v0[43];
      if (v33)
      {
        v35 = v0[41];
        v36 = v0[42];
        v37 = v0[40];
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 136446210;
        v83 = v39;
        v84 = 91;
        v85 = 0xE100000000000000;
        MEMORY[0x1E12D62C0](v37, v35);
        MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
        MEMORY[0x1E12D62C0](v36, v34);
        MEMORY[0x1E12D62C0](93, 0xE100000000000000);

        v40 = sub_1DF47EF6C(91, 0xE100000000000000, &v83);

        *(v38 + 4) = v40;
        _os_log_impl(&dword_1DF47C000, v31, v32, "%{public}s Unable to BAA sign request and there is no account. Returning LocalError.userLoggedOut.", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x1E12D75F0](v39, -1, -1);
        MEMORY[0x1E12D75F0](v38, -1, -1);
      }

      else
      {
      }

      v52 = v0[49];
      v51 = v0[50];
      v53 = v0[30];
      v54 = v0[31];
      v56 = v0[28];
      v55 = v0[29];
      v57 = v0[24];
      v58 = v0[25];
      sub_1DF4B3AA0(3);
      swift_willThrow();
      sub_1DF4E1A88(0x10000, sub_1DF47FD50);
      sub_1DF48C2F4(v52, v51);
      (*(v53 + 8))(v54, v55);
      (*(v58 + 8))(v56, v57);
      goto LABEL_22;
    }

    v5 = v0[28];
    v6 = v0[15];
    v7 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v7);
    LOBYTE(v8) = (*(v8 + 104))(v5, v7, v8);

    v9 = sub_1DF564794();
    v10 = sub_1DF564C24();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[43];
    if (v8)
    {
      if (v11)
      {
        v13 = v0[41];
        v14 = v0[42];
        v15 = v0[40];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 136446210;
        v83 = v17;
        v84 = 91;
        v85 = 0xE100000000000000;
        MEMORY[0x1E12D62C0](v15, v13);
        MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
        MEMORY[0x1E12D62C0](v14, v12);
        MEMORY[0x1E12D62C0](93, 0xE100000000000000);

        v18 = sub_1DF47EF6C(91, 0xE100000000000000, &v83);

        *(v16 + 4) = v18;
        _os_log_impl(&dword_1DF47C000, v9, v10, "%{public}s Unable to BAA sign request and account auth headers are missing. Returning LocalError.missingAuthorizationHeader.", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x1E12D75F0](v17, -1, -1);
        MEMORY[0x1E12D75F0](v16, -1, -1);
      }

      else
      {
      }

      v60 = v0[49];
      v59 = v0[50];
      v61 = v0[48];
      v63 = v0[30];
      v62 = v0[31];
      v64 = v0[29];
      v80 = v0[28];
      v66 = v0[24];
      v65 = v0[25];
      sub_1DF4B3AA0(13);
      swift_willThrow();
      sub_1DF4E1A88(65792, sub_1DF47FD50);

      sub_1DF48C2F4(v60, v59);
      (*(v63 + 8))(v62, v64);
      (*(v65 + 8))(v80, v66);
LABEL_22:

      v67 = v0[1];
      goto LABEL_26;
    }

    if (v11)
    {
      v41 = v0[41];
      v42 = v0[42];
      v43 = v0[40];
      v44 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = v82;
      *v44 = 136446466;
      v84 = 91;
      v85 = 0xE100000000000000;
      MEMORY[0x1E12D62C0](v43, v41);
      MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
      MEMORY[0x1E12D62C0](v42, v12);
      MEMORY[0x1E12D62C0](93, 0xE100000000000000);

      v45 = sub_1DF47EF6C(91, 0xE100000000000000, &v83);

      *(v44 + 4) = v45;
      *(v44 + 12) = 2080;
      swift_beginAccess();
      v46 = sub_1DF564084();
      swift_endAccess();
      if (!v46)
      {
        sub_1DF4C2FC0(MEMORY[0x1E69E7CC0]);
      }

      v47 = sub_1DF564884();
      v49 = v48;

      v50 = sub_1DF47EF6C(v47, v49, &v83);

      *(v44 + 14) = v50;
      _os_log_impl(&dword_1DF47C000, v9, v10, "%{public}s Failed to sign request but it has account auth headers. Will attempt to send it anyway with headers: %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v82, -1, -1);
      MEMORY[0x1E12D75F0](v44, -1, -1);
    }

    else
    {
    }

    v29 = v0[48];
    v68 = v0[28];
    v69 = v0[24];
    v70 = v0[25];
    v71 = v0[14];
    swift_beginAccess();
    (*(v70 + 16))(v71, v68, v69);
    v30 = 16777472;
  }

  else
  {
    v19 = *(v2 + 32);
    v19(v0[26], v3, v1);

    v20 = sub_1DF564794();
    v21 = sub_1DF564C44();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[43];
    if (v22)
    {
      v79 = v0[42];
      v81 = v19;
      v25 = v0[40];
      v24 = v0[41];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136446210;
      v83 = v27;
      v84 = 91;
      v85 = 0xE100000000000000;
      MEMORY[0x1E12D62C0](v25, v24);
      MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
      MEMORY[0x1E12D62C0](v79, v23);
      MEMORY[0x1E12D62C0](93, 0xE100000000000000);
      v19 = v81;

      v28 = sub_1DF47EF6C(91, 0xE100000000000000, &v83);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_1DF47C000, v20, v21, "%{public}s Successfully signed request.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1E12D75F0](v27, -1, -1);
      MEMORY[0x1E12D75F0](v26, -1, -1);
    }

    else
    {
    }

    v29 = v0[48];
    v19(v0[14], v0[26], v0[24]);
    if (v29)
    {
      v30 = 16777473;
    }

    else
    {
      v30 = 16777217;
    }
  }

  sub_1DF4E1A88(v30, sub_1DF47FD50);

  v72 = v0[31];
  v73 = v0[29];
  v74 = v0[30];
  v75 = v0[28];
  v76 = v0[25];
  v77 = v0[24];
  sub_1DF48C2F4(v0[49], v0[50]);
  (*(v74 + 8))(v72, v73);
  (*(v76 + 8))(v75, v77);

  v67 = v0[1];
LABEL_26:

  return v67();
}

uint64_t sub_1DF4EE660()
{
  v27 = v0;
  v1 = v0[54];

  v2 = v1;
  v3 = sub_1DF564794();
  v4 = sub_1DF564C24();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[42];
    v5 = v0[43];
    v7 = v0[40];
    v8 = v0[41];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446466;
    v26[0] = v10;
    v26[1] = 91;
    v26[2] = 0xE100000000000000;
    MEMORY[0x1E12D62C0](v7, v8);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v6, v5);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v11 = sub_1DF47EF6C(91, 0xE100000000000000, v26);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v12 = sub_1DF5651B4();
    v14 = sub_1DF47EF6C(v12, v13, v26);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_1DF47C000, v3, v4, "%{public}s Failed to sign request with error: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[49];
  v16 = v0[50];
  v17 = v0[48];
  v19 = v0[30];
  v18 = v0[31];
  v20 = v0[29];
  v21 = v0[25];
  v24 = v0[24];
  v25 = v0[28];
  swift_willThrow();
  sub_1DF4E1A88((v17 != 0) << 8, sub_1DF47FD50);

  sub_1DF48C2F4(v15, v16);
  (*(v19 + 8))(v18, v20);
  (*(v21 + 8))(v25, v24);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1DF4EE9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37EE8, &unk_1DF569E60);
  v5[12] = swift_task_alloc();
  v6 = sub_1DF5640F4();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4EEABC, 0, 0);
}

uint64_t sub_1DF4EEABC()
{
  __swift_project_boxed_opaque_existential_0(*(v0 + 88), *(*(v0 + 88) + 24));
  *(v0 + 40) = &type metadata for BAASigningEnvironment;
  *(v0 + 48) = &off_1F5A8C900;
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1DF4EEB7C;
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);

  return sub_1DF54A354(v2, v3);
}

uint64_t sub_1DF4EEB7C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_1DF4EF0A4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v3 = sub_1DF4EECA8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF4EECA8()
{
  v43 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = *(v3 + 56);
  v5(v4, 0, 1, v2);
  v6 = *(v3 + 32);
  v6(v1, v4, v2);
  if (qword_1ED954C48 != -1)
  {
    swift_once();
  }

  v8 = v0[15];
  v7 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = sub_1DF5647B4();
  __swift_project_value_buffer(v11, qword_1ED954C50);
  (*(v9 + 16))(v8, v7, v10);
  v12 = sub_1DF564794();
  v13 = sub_1DF564C44();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[15];
  if (v14)
  {
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v16 = 136315138;
    v41 = v5;
    v40 = v6;
    if (!sub_1DF564084())
    {
      sub_1DF4C2FC0(MEMORY[0x1E69E7CC0]);
    }

    v18 = v0[14];
    v17 = v0[15];
    v19 = v0[13];
    v20 = sub_1DF564884();
    v22 = v21;

    v23 = *(v18 + 8);
    v23(v17, v19);
    v24 = sub_1DF47EF6C(v20, v22, &v42);

    *(v16 + 4) = v24;
    _os_log_impl(&dword_1DF47C000, v12, v13, "Signed request headers: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x1E12D75F0](v39, -1, -1);
    MEMORY[0x1E12D75F0](v16, -1, -1);

    v5 = v41;
    v6 = v40;
  }

  else
  {
    v25 = v0[13];
    v26 = v0[14];

    v23 = *(v26 + 8);
    v23(v15, v25);
  }

  v27 = v0[16];
  v29 = v0[9];
  v28 = v0[10];
  v30 = v28[3];
  v31 = v28[4];
  __swift_project_boxed_opaque_existential_0(v28, v30);
  if (((*(v31 + 104))(v27, v30, v31) & 1) != 0 && v29)
  {
    v32 = sub_1DF564794();
    v33 = sub_1DF564C44();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DF47C000, v32, v33, "Missing Authorization header. Unable to proceed with request", v34, 2u);
      MEMORY[0x1E12D75F0](v34, -1, -1);
    }

    v35 = v0[16];
    v36 = v0[13];

    sub_1DF4B3AA0(13);
    swift_willThrow();
    v23(v35, v36);

    v37 = v0[1];
  }

  else
  {
    v6(v0[7], v0[16], v0[13]);
    v5(v0[7], 0, 1, v0[13]);

    v37 = v0[1];
  }

  return v37();
}

uint64_t sub_1DF4EF0A4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = *(v2 + 56);
  v4(v3, 1, 1, v1);
  sub_1DF47E5B4(v3, &qword_1ECE37EE8, &unk_1DF569E60);
  v4(v0[7], 1, 1, v0[13]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DF4EF1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74656B636974 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF5650D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF4EF22C(uint64_t a1)
{
  v2 = sub_1DF4F01BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4EF268(uint64_t a1)
{
  v2 = sub_1DF4F01BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF4EF2A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F00, &qword_1DF56A050);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4F01BC();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = sub_1DF564FC4();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1DF4EF420(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37EF8, &qword_1DF56A048);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4F01BC();
  sub_1DF5652A4();
  sub_1DF565054();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DF4EF55C()
{
  result = qword_1ED954D38;
  if (!qword_1ED954D38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED954D38);
  }

  return result;
}

uint64_t sub_1DF4EF5A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DF4AD474(result, a2);
  }

  return result;
}

uint64_t sub_1DF4EF5BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4EF5DC, 0, 0);
}

uint64_t sub_1DF4EF5DC()
{
  v1 = sub_1DF5159E8();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v8 = v0[24];
    v9 = v8[3];
    v10 = v8[4];
    __swift_project_boxed_opaque_existential_0(v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E0, &unk_1DF56B300);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DF566E40;
    *(inited + 32) = sub_1DF564944();
    *(inited + 40) = v12;
    v13 = MEMORY[0x1E69E6370];
    *(inited + 72) = MEMORY[0x1E69E6370];
    *(inited + 48) = 1;
    *(inited + 80) = sub_1DF564944();
    *(inited + 88) = v14;
    *(inited + 120) = v13;
    *(inited + 96) = 0;
    v15 = sub_1DF49A758(inited);
    v0[25] = v15;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E8, &unk_1DF5673D0);
    swift_arrayDestroy();
    v18 = (*(v10 + 72) + **(v10 + 72));
    v16 = swift_task_alloc();
    v0[26] = v16;
    *v16 = v0;
    v16[1] = sub_1DF4EF8D8;
    v17 = v0[23];

    return v18(v17, v15, v9, v10);
  }

  else
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF5647B4();
    __swift_project_value_buffer(v2, qword_1ED956260);
    v3 = sub_1DF564794();
    v4 = sub_1DF564C44();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DF47C000, v3, v4, "User has mocked auth issue via CSFCTL, skipping renewCredentials.", v5, 2u);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1DF4EF8D8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_1DF4EFDA4;
  }

  else
  {

    v4 = sub_1DF4EF9F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF4EF9F4()
{
  v26 = v0;
  if (v0[27])
  {
    if (qword_1ED954C48 != -1)
    {
      swift_once();
    }

    v1 = sub_1DF5647B4();
    __swift_project_value_buffer(v1, qword_1ED954C50);
    v2 = sub_1DF564794();
    v3 = sub_1DF564C24();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[27];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v25[0] = v6;
      *v5 = 136315138;
      v0[22] = v4;
      type metadata accessor for ACAccountCredentialRenewResult(0);
      v7 = sub_1DF564994();
      v9 = sub_1DF47EF6C(v7, v8, v25);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1DF47C000, v2, v3, "Renew credentials failed with result %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1E12D75F0](v6, -1, -1);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }

    v10 = sub_1DF4B3AA0(13);
    swift_willThrow();
    if (qword_1ED954C48 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_1ED954C50);
    v11 = v10;
    v12 = sub_1DF564794();
    v13 = sub_1DF564C24();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25[0] = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = sub_1DF5651B4();
      v18 = sub_1DF47EF6C(v16, v17, v25);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1DF47C000, v12, v13, "Renew credentials failed with error %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1E12D75F0](v15, -1, -1);
      MEMORY[0x1E12D75F0](v14, -1, -1);
    }

    sub_1DF4B3AA0(13);
    swift_willThrow();

    v19 = v0[1];
  }

  else
  {
    if (qword_1ED954C48 != -1)
    {
      swift_once();
    }

    v20 = sub_1DF5647B4();
    __swift_project_value_buffer(v20, qword_1ED954C50);
    v21 = sub_1DF564794();
    v22 = sub_1DF564C44();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DF47C000, v21, v22, "Renew credentials succeeded!", v23, 2u);
      MEMORY[0x1E12D75F0](v23, -1, -1);
    }

    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_1DF4EFDA4()
{
  v14 = v0;

  v1 = *(v0 + 224);
  if (qword_1ED954C48 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED954C50);
  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Renew credentials failed with error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF4B3AA0(13);
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

unint64_t sub_1DF4EFF6C()
{
  result = qword_1ECE37738;
  if (!qword_1ECE37738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37738);
  }

  return result;
}

unint64_t sub_1DF4EFFC0()
{
  result = qword_1ECE37EF0;
  if (!qword_1ECE37EF0)
  {
    type metadata accessor for BlockedNetworkRequestError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EF0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DF4F0024(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DF4F006C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_25CloudSubscriptionFeatures20NetworkRequestReasonO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_25CloudSubscriptionFeatures14GatewayRequestO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
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

uint64_t sub_1DF4F0100(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DF4F0148(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_1DF4F0190(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1DF4F01BC()
{
  result = qword_1ECE37750;
  if (!qword_1ECE37750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37750);
  }

  return result;
}

unint64_t sub_1DF4F0224()
{
  result = qword_1ECE37F08;
  if (!qword_1ECE37F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37F08);
  }

  return result;
}

unint64_t sub_1DF4F027C()
{
  result = qword_1ECE37740;
  if (!qword_1ECE37740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37740);
  }

  return result;
}

unint64_t sub_1DF4F02D4()
{
  result = qword_1ECE37748;
  if (!qword_1ECE37748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37748);
  }

  return result;
}

BOOL sub_1DF4F036C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1DF4F3000();
  sub_1DF5647F4();
  if (v5 != 1)
  {
    return v4 == 3;
  }

  sub_1DF4F6D38(&v4, v1, v2);

  return 0;
}

id EligibilityFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EligibilityFetcher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EligibilityFetcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EligibilityFetcher.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EligibilityFetcher();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t *sub_1DF4F04FC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_1DF565234();

    sub_1DF5649E4();
    v11 = sub_1DF565264();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_1DF5650D4() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    MEMORY[0x1EEE9AC00](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_1DF4F0B8C(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        sub_1DF565234();

        sub_1DF5649E4();
        v33 = sub_1DF565264();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_1DF5650D4() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x1E69E7CD0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_1DF4F09A8(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x1E12D75F0](v44, -1, -1);

    return v46;
  }

  result = MEMORY[0x1E12D75F0](v44, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_1DF4F09A8(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_1DF4F0B8C(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_1DF565234();

        sub_1DF5649E4();
        v16 = sub_1DF565264();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_1DF5650D4() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1DF4F0B8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37F30, &unk_1DF56A3A0);
  result = sub_1DF564DC4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1DF565234();

    sub_1DF5649E4();
    result = sub_1DF565264();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1DF4F0DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v30 = MEMORY[0x1E69E7CC0];
    v28 = *(a1 + 16);
    sub_1DF4BCB24(0, v1, 0);
    v2 = a1 + 56;
    v3 = sub_1DF564D54();
    v5 = v28;
    v4 = a1;
    v6 = v3;
    v7 = 0;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v4 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v2 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_36;
      }

      v10 = *(v4 + 36);
      v11 = (*(v4 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      if (*v11 == 0xD000000000000024 && 0x80000001DF570B00 == v13)
      {
        v13 = 0xE800000000000000;
        v12 = 0x65676175676E614CLL;
      }

      else
      {
        v15 = *(v4 + 36);
        if (sub_1DF5650D4())
        {
          v13 = 0xE800000000000000;
          v12 = 0x65676175676E614CLL;
        }

        else
        {
          v16 = v12 == 0xD000000000000027 && 0x80000001DF570B30 == v13;
          if (v16 || (sub_1DF5650D4() & 1) != 0)
          {
            v13 = 0xE600000000000000;
            v12 = 0x6E6F69676552;
          }

          else
          {
          }
        }

        v5 = v28;
        v4 = a1;
        v10 = v15;
      }

      v18 = *(v30 + 16);
      v17 = *(v30 + 24);
      if (v18 >= v17 >> 1)
      {
        v27 = v10;
        sub_1DF4BCB24((v17 > 1), v18 + 1, 1);
        v10 = v27;
        v5 = v28;
        v4 = a1;
      }

      *(v30 + 16) = v18 + 1;
      v19 = v30 + 16 * v18;
      *(v19 + 32) = v12;
      *(v19 + 40) = v13;
      v8 = 1 << *(v4 + 32);
      if (v6 >= v8)
      {
        goto LABEL_37;
      }

      v2 = a1 + 56;
      v20 = *(a1 + 56 + 8 * v9);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_38;
      }

      if (v10 != *(v4 + 36))
      {
        goto LABEL_39;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v8 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v9 << 6;
        v23 = v9 + 1;
        v24 = (a1 + 64 + 8 * v9);
        while (v23 < (v8 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_1DF4AD520(v6, v10, 0);
            v5 = v28;
            v4 = a1;
            v8 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        sub_1DF4AD520(v6, v10, 0);
        v5 = v28;
        v4 = a1;
      }

LABEL_4:
      ++v7;
      v6 = v8;
      if (v7 == v5)
      {
        return;
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
}

uint64_t sub_1DF4F10CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12D6480](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DF4F6D38(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DF4F1164(unint64_t a1)
{
  v2 = sub_1DF5647E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DF4F10CC(&unk_1F5A88A00);
  swift_arrayDestroy();
  v7 = sub_1DF5647D4();
  v8 = sub_1DF4F04FC(v7, v6);

  v9 = v8[2];

  v10 = &unk_1ED955000;
  if (v9)
  {
    if (qword_1ED955720 != -1)
    {
      swift_once();
    }

    v11 = sub_1DF5647B4();
    __swift_project_value_buffer(v11, qword_1ED9558C0);
    v12 = sub_1DF564794();
    v13 = sub_1DF564C24();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Missing language and region keys from os_eligibility response. Will assume false for both.";
LABEL_10:
      _os_log_impl(&dword_1DF47C000, v12, v13, v15, v14, 2u);
      MEMORY[0x1E12D75F0](v14, -1, -1);
    }
  }

  else
  {
    if (qword_1ED955720 != -1)
    {
      swift_once();
    }

    v16 = sub_1DF5647B4();
    __swift_project_value_buffer(v16, qword_1ED9558C0);
    v12 = sub_1DF564794();
    v13 = sub_1DF564C44();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Eligibility statuses appear valid.";
      goto LABEL_10;
    }
  }

  v80 = MEMORY[0x1E69E7CD0];
  v17 = sub_1DF5647D4();
  MEMORY[0x1EEE9AC00](v17);
  *(&v65 - 2) = a1;
  *(&v65 - 1) = &v80;
  v18 = 0;
  v20 = sub_1DF557328(sub_1DF4F2FE0, (&v65 - 4), v19);
  v21 = sub_1DF4F10CC(v20);

  v22 = *(v80 + 16);
  v73 = v80;
  v74 = v5;
  if (v22)
  {
    sub_1DF4F0DB0(v80);
    v24 = v23;
    if (qword_1ED955720 != -1)
    {
      swift_once();
    }

    v25 = sub_1DF5647B4();
    __swift_project_value_buffer(v25, qword_1ED9558C0);

    v26 = sub_1DF564794();
    v27 = sub_1DF564C24();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v76 = a1;
      v77[0] = v29;
      v30 = v29;
      *v28 = 136315138;
      v31 = MEMORY[0x1E12D6370](v24, MEMORY[0x1E69E6158]);
      v66 = 0;
      v32 = v3;
      v34 = v33;

      v35 = sub_1DF47EF6C(v31, v34, v77);
      v3 = v32;
      v18 = v66;

      *(v28 + 4) = v35;
      _os_log_impl(&dword_1DF47C000, v26, v27, "Failed to get value for the following eligibility keys: %s. May erroneously report language/region/device ineligibility.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      v36 = v30;
      a1 = v76;
      MEMORY[0x1E12D75F0](v36, -1, -1);
      v37 = v28;
      v10 = &unk_1ED955000;
      MEMORY[0x1E12D75F0](v37, -1, -1);
    }

    else
    {
    }

    v5 = v74;
  }

  if (v10[228] != -1)
  {
LABEL_45:
    swift_once();
  }

  v38 = sub_1DF5647B4();
  __swift_project_value_buffer(v38, qword_1ED9558C0);
  (*(v3 + 16))(v5, a1, v2);

  v39 = sub_1DF564794();
  v40 = sub_1DF564C44();

  if (os_log_type_enabled(v39, v40))
  {
    v68 = v40;
    v70 = v39;
    v71 = v3;
    v72 = v2;
    a1 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v79[0] = v67;
    *a1 = 136315394;
    v41 = sub_1DF564BB4();
    v43 = sub_1DF47EF6C(v41, v42, v79);

    *(a1 + 4) = v43;
    v69 = a1;
    *(a1 + 12) = 2080;
    v44 = sub_1DF5647D4();
    v5 = v44;
    v76 = *(v44 + 16);
    if (v76)
    {
      v66 = v18;
      v45 = 0;
      v75 = v44 + 32;
      v3 = v21 + 56;
      v18 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v45 >= *(v5 + 2))
        {
          __break(1u);
          goto LABEL_45;
        }

        v46 = (v75 + 16 * v45);
        v47 = *v46;
        v2 = v46[1];
        ++v45;
        if (!*(v21 + 16))
        {
          break;
        }

        sub_1DF565234();

        sub_1DF5649E4();
        v48 = sub_1DF565264();
        v49 = -1 << *(v21 + 32);
        v50 = v48 & ~v49;
        if ((*(v3 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
        {
          a1 = ~v49;
          while (1)
          {
            v51 = (*(v21 + 48) + 16 * v50);
            v52 = *v51 == v47 && v51[1] == v2;
            if (v52 || (sub_1DF5650D4() & 1) != 0)
            {
              break;
            }

            v50 = (v50 + 1) & a1;
            if (((*(v3 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          if (v45 == v76)
          {
            goto LABEL_42;
          }
        }

        else
        {
LABEL_33:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DF4BCB24(0, *(v18 + 16) + 1, 1);
            v18 = v78;
          }

          v55 = *(v18 + 16);
          v54 = *(v18 + 24);
          a1 = v55 + 1;
          if (v55 >= v54 >> 1)
          {
            sub_1DF4BCB24((v54 > 1), v55 + 1, 1);
            v18 = v78;
          }

          *(v18 + 16) = a1;
          v56 = v18 + 16 * v55;
          *(v56 + 32) = v47;
          *(v56 + 40) = v2;
          if (v45 == v76)
          {
            goto LABEL_42;
          }
        }
      }

      goto LABEL_33;
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_42:

    v57 = MEMORY[0x1E12D6370](v18, MEMORY[0x1E69E6158]);
    v59 = v58;

    (*(v71 + 8))(v74, v72);
    v60 = sub_1DF47EF6C(v57, v59, v79);

    v61 = v69;
    *(v69 + 14) = v60;
    v62 = v70;
    _os_log_impl(&dword_1DF47C000, v70, v68, "Retrieved eligibleKeys: %s, ineligibleKeys: %s", v61, 0x16u);
    v63 = v67;
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v63, -1, -1);
    MEMORY[0x1E12D75F0](v61, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return v21;
}

void *sub_1DF4F1970()
{
  v100[9] = *MEMORY[0x1E69E9840];
  v1 = sub_1DF5647E4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = 0;
  v99 = 0;
  v5 = swift_slowAlloc();
  domain_answer = os_eligibility_get_domain_answer();
  if (sub_1DF548FD8())
  {
    if (qword_1ED955308 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED955310;
    v0 = sub_1DF564914();
    LODWORD(v7) = [v7 BOOLForKey_];

    if (v7)
    {
      v99 = 1;
    }
  }

  if (domain_answer)
  {
    sub_1DF4F2F8C();
    swift_allocError();
    *v8 = domain_answer;
    *(v8 + 8) = 0;
LABEL_23:
    swift_willThrow();
    goto LABEL_24;
  }

  v9 = v99;
  if (v98 == 2)
  {
    sub_1DF4F2F8C();
    swift_allocError();
    *v10 = v9;
    v11 = 1;
LABEL_22:
    *(v10 + 8) = v11;
    goto LABEL_23;
  }

  if (v99 != 4)
  {
    if (v99 == 1)
    {
      sub_1DF4F2F8C();
      swift_allocError();
      *v10 = 0;
LABEL_21:
      v11 = 3;
      goto LABEL_22;
    }

    v19 = *v5;
    if (!*v5)
    {
      sub_1DF4F2F8C();
      swift_allocError();
      *v10 = 1;
      goto LABEL_21;
    }

    v20 = swift_unknownObjectRetain();
    v21 = MEMORY[0x1E12D77C0](v20);
    if (v21 != sub_1DF5647C4())
    {
      v22 = MEMORY[0x1E12D77C0](v19);
      sub_1DF4F2F8C();
      swift_allocError();
      *v23 = v22;
      *(v23 + 8) = 2;
      swift_willThrow();
      swift_unknownObjectRelease();
      goto LABEL_24;
    }

    v90 = v2;
    swift_unknownObjectRetain();
    sub_1DF564804();
    v25 = sub_1DF4F1164(v4);
    v95 = 0x80000001DF570B00;
    v88 = sub_1DF4BEB48(0xD000000000000024, 0x80000001DF570B00, v25);
    v92 = 0x80000001DF570B30;
    v94 = v25;
    v87 = sub_1DF4BEB48(0xD000000000000027, 0x80000001DF570B30, v25);
    v26 = sub_1DF5647D4();
    v27 = v26;
    v28 = v26[2];
    v89 = v19;
    if (v28)
    {
      v29 = 0;
      v30 = v26 + 5;
      v85 = v28 - 1;
      v31 = MEMORY[0x1E69E7CC0];
      v32 = v95;
      v93 = v26;
      v86 = v26 + 5;
      do
      {
        v91 = v31;
        v33 = &v30[2 * v29];
        v34 = v29;
        while (1)
        {
          if (v34 >= v27[2])
          {
            __break(1u);
            goto LABEL_79;
          }

          v36 = *(v33 - 1);
          v37 = *v33;
          if (v36 != 0xD000000000000024 || v32 != v37)
          {
            v39 = v28;
            v40 = sub_1DF5650D4();
            v28 = v39;
            v32 = v95;
            v27 = v93;
            if ((v40 & 1) == 0 && (v36 != 0xD000000000000027 || v92 != v37))
            {
              v35 = sub_1DF5650D4();
              v28 = v39;
              v32 = v95;
              v27 = v93;
              if ((v35 & 1) == 0)
              {
                break;
              }
            }
          }

          ++v34;
          v33 += 2;
          if (v28 == v34)
          {
            v31 = v91;
            goto LABEL_47;
          }
        }

        v31 = v91;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100[0] = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DF4BCB24(0, *(v31 + 16) + 1, 1);
          v31 = v100[0];
        }

        v43 = *(v31 + 16);
        v42 = *(v31 + 24);
        v44 = (v43 + 1);
        v32 = v95;
        v28 = v39;
        v30 = v86;
        if (v43 >= v42 >> 1)
        {
          v91 = (v43 + 1);
          v84 = v43;
          sub_1DF4BCB24((v42 > 1), v43 + 1, 1);
          v44 = v91;
          v43 = v84;
          v30 = v86;
          v28 = v39;
          v32 = v95;
          v31 = v100[0];
        }

        v29 = v34 + 1;
        *(v31 + 16) = v44;
        v45 = v31 + 16 * v43;
        *(v45 + 32) = v36;
        *(v45 + 40) = v37;
        v27 = v93;
      }

      while (v85 != v34);
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

LABEL_47:

    v46 = &unk_1ED955000;
    v92 = *(v31 + 16);
    if (v92)
    {
      v91 = v31;
      if (qword_1ED955720 != -1)
      {
        swift_once();
      }

      v47 = sub_1DF5647B4();
      __swift_project_value_buffer(v47, qword_1ED9558C0);
      v48 = v91;

      v49 = sub_1DF564794();
      v50 = sub_1DF564C44();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        LODWORD(v95) = v50;
        v52 = v51;
        v93 = swift_slowAlloc();
        v100[0] = v93;
        *v52 = 136315138;
        v53 = MEMORY[0x1E12D6370](v48, MEMORY[0x1E69E6158]);
        v55 = sub_1DF47EF6C(v53, v54, v100);

        *(v52 + 4) = v55;
        _os_log_impl(&dword_1DF47C000, v49, v95, "Checking remaining keys for device eligibility: %s", v52, 0xCu);
        v56 = v93;
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x1E12D75F0](v56, -1, -1);
        MEMORY[0x1E12D75F0](v52, -1, -1);
      }

      v57 = 0;
      v93 = v48 + 4;
      v58 = v94;
      v59 = v94 + 56;
      v60 = v48;
      while (v57 < v60[2])
      {
        v61 = &v93[2 * v57];
        v62 = v61[1];
        if (!*(v58 + 16))
        {

          goto LABEL_65;
        }

        v95 = v57;
        v63 = *v61;
        sub_1DF565234();

        sub_1DF5649E4();
        v64 = sub_1DF565264();
        v65 = v94;
        v66 = -1 << *(v94 + 32);
        v67 = v64 & ~v66;
        if (((*(v59 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
        {
LABEL_64:

LABEL_65:

          v71 = 0;
          v46 = &unk_1ED955000;
          goto LABEL_71;
        }

        ++v95;
        v68 = ~v66;
        while (1)
        {
          v69 = (*(v65 + 48) + 16 * v67);
          v70 = *v69 == v63 && v69[1] == v62;
          if (v70 || (sub_1DF5650D4() & 1) != 0)
          {
            break;
          }

          v67 = (v67 + 1) & v68;
          v65 = v94;
          if (((*(v59 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        v60 = v91;
        v58 = v94;
        v57 = v95;
        if (v95 == v92)
        {

          v71 = 1;
          v46 = &unk_1ED955000;
          goto LABEL_71;
        }
      }

      __break(1u);
    }

    else
    {

      if (qword_1ED955720 != -1)
      {
        swift_once();
      }

      v72 = sub_1DF5647B4();
      __swift_project_value_buffer(v72, qword_1ED9558C0);
      v73 = sub_1DF564794();
      v74 = sub_1DF564C44();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1DF47C000, v73, v74, "No remaining keys in os_eligibility check. Will assume device is eligible.", v75, 2u);
        MEMORY[0x1E12D75F0](v75, -1, -1);
      }

      v71 = 1;
LABEL_71:
      v76 = type metadata accessor for Eligibility();
      v77 = objc_allocWithZone(v76);
      v77[OBJC_IVAR___CSFEligibility_regionEligible] = v87 & 1;
      v77[OBJC_IVAR___CSFEligibility_languageEligible] = v88 & 1;
      v77[OBJC_IVAR___CSFEligibility_siriLanguageEligible] = 0;
      v77[OBJC_IVAR___CSFEligibility_locationEligible] = 0;
      v77[OBJC_IVAR___CSFEligibility_deviceEligibile] = v71;
      v97.receiver = v77;
      v97.super_class = v76;
      v60 = objc_msgSendSuper2(&v97, sel_init);
      if (v46[228] == -1)
      {
        goto LABEL_72;
      }
    }

    swift_once();
LABEL_72:
    v78 = sub_1DF5647B4();
    __swift_project_value_buffer(v78, qword_1ED9558C0);
    v0 = v60;
    v79 = sub_1DF564794();
    v80 = sub_1DF564C44();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      *(v81 + 4) = v0;
      *v82 = v0;
      v83 = v0;
      _os_log_impl(&dword_1DF47C000, v79, v80, "Calculated eligibility from os_eligibility: %@", v81, 0xCu);
      sub_1DF47E5B4(v82, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v82, -1, -1);
      MEMORY[0x1E12D75F0](v81, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v90 + 8))(v4, v1);
    goto LABEL_24;
  }

  if (qword_1ED955720 != -1)
  {
LABEL_79:
    swift_once();
  }

  v12 = sub_1DF5647B4();
  __swift_project_value_buffer(v12, qword_1ED9558C0);
  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v100[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1DF47EF6C(0xD000000000000014, 0x80000001DF572940, v100);
    _os_log_impl(&dword_1DF47C000, v13, v14, "%s Answer is eligible, returning eligible.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  v17 = type metadata accessor for Eligibility();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR___CSFEligibility_regionEligible] = 1;
  v18[OBJC_IVAR___CSFEligibility_languageEligible] = 1;
  v18[OBJC_IVAR___CSFEligibility_siriLanguageEligible] = 1;
  v18[OBJC_IVAR___CSFEligibility_locationEligible] = 1;
  v18[OBJC_IVAR___CSFEligibility_deviceEligibile] = 1;
  v96.receiver = v18;
  v96.super_class = v17;
  v0 = objc_msgSendSuper2(&v96, sel_init);
LABEL_24:
  sub_1DF47E5B4(v5, &unk_1ECE37F20, &unk_1DF56A1D0);
  MEMORY[0x1E12D75F0](v5, -1, -1);
  return v0;
}

unint64_t sub_1DF4F2F8C()
{
  result = qword_1ED954EC8;
  if (!qword_1ED954EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954EC8);
  }

  return result;
}

unint64_t sub_1DF4F3000()
{
  result = qword_1ED9551A8;
  if (!qword_1ED9551A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9551A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EligibilityError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for EligibilityError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1DF4F30E0(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1DF4F30F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

void *sub_1DF4F3120()
{
  sub_1DF5646D4();
  swift_allocObject();
  v0 = sub_1DF5646C4();
  type metadata accessor for AvailabilityClient();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = sub_1DF4E5EF4;
  result[4] = 0;
  result[5] = sub_1DF4E5F08;
  result[6] = 0;
  qword_1ED958B80 = result;
  return result;
}

uint64_t sub_1DF4F31A0(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4F31C0, 0, 0);
}

uint64_t sub_1DF4F31C0()
{
  v14 = v0;
  v0[5] = &type metadata for FeatureFlag;
  v1 = sub_1DF481614();
  *(v0 + 16) = 7;
  v0[6] = v1;
  v2 = sub_1DF5645A4();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2)
  {
    if (qword_1ED955730 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF5647B4();
    __swift_project_value_buffer(v3, qword_1ED955738);
    v4 = sub_1DF564794();
    v5 = sub_1DF564C44();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1DF47EF6C(0xD000000000000015, 0x80000001DF572AB0, &v13);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1E12D75F0](v7, -1, -1);
      MEMORY[0x1E12D75F0](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = sub_1DF564654();
    v0[13] = v10;
    v0[14] = *(v10 - 8);
    v11 = swift_task_alloc();
    v0[15] = v11;
    sub_1DF4F396C();
    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_1DF4F3454;

    return MEMORY[0x1EEE0B5B8](v11);
  }
}

uint64_t sub_1DF4F3454()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1DF4F3740;
  }

  else
  {

    v5 = sub_1DF4F35D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF4F35D4()
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED9556D8);
  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Successfully notified AvailabilityFoundationClient about new availability status %{public}@!", v7, 0xCu);
    sub_1DF484888(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DF4F3740()
{
  v21 = v0;

  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[11];
  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED9556D8);
  v4 = v2;
  v5 = v1;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C24();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[17];
  if (v8)
  {
    v10 = v0[11];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 138543618;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2082;
    swift_getErrorValue();
    v14 = v10;
    v15 = sub_1DF5651B4();
    v17 = sub_1DF47EF6C(v15, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_1DF47C000, v6, v7, "Failed to notify AvailabilityFoundationClient about new availability status %{public}@. Error: %{public}s", v11, 0x16u);
    sub_1DF484888(v12);
    MEMORY[0x1E12D75F0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1E12D75F0](v13, -1, -1);
    MEMORY[0x1E12D75F0](v11, -1, -1);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1DF4F396C()
{
  v1 = [v0 status];
  v2 = sub_1DF564634();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1 == 1)
  {
    v6 = MEMORY[0x1E69A1448];
  }

  else if (v1)
  {
    sub_1DF4F6798();
    sub_1DF564624();
    v6 = MEMORY[0x1E69A13F0];
  }

  else
  {
    v6 = MEMORY[0x1E69A1450];
  }

  (*(v3 + 104))(v5, *v6, v2);
  return sub_1DF564644();
}

uint64_t sub_1DF4F3A8C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1DF5644C4();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4F3B4C, 0, 0);
}

uint64_t sub_1DF4F3B4C(uint64_t a1)
{
  v71 = v1;
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  sub_1DF5644B4();
  v5 = sub_1DF5644A4();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v9 = sub_1DF488298(8, v5, v7, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = MEMORY[0x1E12D6280](v9, v11, v13, v15);
  v18 = v17;

  v1[11] = v16;
  v1[12] = v18;
  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v19 = sub_1DF5647B4();
  v1[13] = __swift_project_value_buffer(v19, qword_1ED955738);

  v20 = sub_1DF564794();
  v21 = sub_1DF564C44();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 136446210;
    v68 = v23;
    v69 = 91;
    v70 = 0xE100000000000000;

    MEMORY[0x1E12D62C0](0xD000000000000022, 0x80000001DF572A80);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v16, v18);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v24 = sub_1DF47EF6C(91, 0xE100000000000000, &v68);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_1DF47C000, v20, v21, "%{public}s Start", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v22, -1, -1);
  }

  if ((*(v1[7] + 40))())
  {
    v67 = v16;
    v69 = MEMORY[0x1E69E7CC0];
    sub_1DF4BCE90(0, 4, 0);
    v25 = v69;
    v27 = qword_1F5A88690;
    v26 = off_1F5A88698;
    v29 = *(v69 + 16);
    v28 = *(v69 + 24);
    v30 = v28 >> 1;
    v31 = v29 + 1;

    if (v28 >> 1 <= v29)
    {
      sub_1DF4BCE90((v28 > 1), v29 + 1, 1);
      v25 = v69;
      v28 = *(v69 + 24);
      v30 = v28 >> 1;
    }

    *(v25 + 16) = v31;
    v32 = v25 + 24 * v29;
    *(v32 + 32) = v27;
    *(v32 + 40) = v26;
    *(v32 + 48) = 1;
    v33 = qword_1F5A886A0;
    v34 = off_1F5A886A8;
    v69 = v25;
    v35 = v29 + 2;

    if (v30 <= v31)
    {
      sub_1DF4BCE90((v28 > 1), v35, 1);
      v25 = v69;
    }

    *(v25 + 16) = v35;
    v36 = v25 + 24 * v31;
    *(v36 + 32) = v33;
    *(v36 + 40) = v34;
    *(v36 + 48) = 1;
    v38 = qword_1F5A886B0;
    v37 = off_1F5A886B8;
    v69 = v25;
    v40 = *(v25 + 16);
    v39 = *(v25 + 24);
    v41 = v39 >> 1;
    v42 = v40 + 1;

    if (v39 >> 1 <= v40)
    {
      sub_1DF4BCE90((v39 > 1), v40 + 1, 1);
      v25 = v69;
      v39 = *(v69 + 24);
      v41 = v39 >> 1;
    }

    *(v25 + 16) = v42;
    v43 = v25 + 24 * v40;
    *(v43 + 32) = v38;
    *(v43 + 40) = v37;
    *(v43 + 48) = 1;
    v44 = aCloudLlm_0[0];
    v45 = aCloudLlm_0[1];
    v69 = v25;

    if (v41 <= v42)
    {
      sub_1DF4BCE90((v39 > 1), v40 + 2, 1);
      v25 = v69;
    }

    *(v25 + 16) = v40 + 2;
    v46 = v25 + 24 * v42;
    *(v46 + 32) = v44;
    *(v46 + 40) = v45;
    *(v46 + 48) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CD0, &unk_1DF56A380);
    v69 = sub_1DF564F34();

    sub_1DF4E9C6C(v47, 1, &v69);

    v56 = v69;

    v57 = sub_1DF564794();
    v58 = sub_1DF564C44();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 136446466;
      v68 = v60;
      v69 = 91;
      v70 = 0xE100000000000000;

      MEMORY[0x1E12D62C0](0xD000000000000022, 0x80000001DF572A80);
      MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
      MEMORY[0x1E12D62C0](v67, v18);
      MEMORY[0x1E12D62C0](93, 0xE100000000000000);

      v61 = sub_1DF47EF6C(v69, v70, &v68);

      *(v59 + 4) = v61;
      *(v59 + 12) = 2080;
      v62 = sub_1DF564884();
      v64 = sub_1DF47EF6C(v62, v63, &v68);

      *(v59 + 14) = v64;
      _os_log_impl(&dword_1DF47C000, v57, v58, "%{public}s ADM Availability bypass is set to YES. Overriding access status to: %s", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v60, -1, -1);
      MEMORY[0x1E12D75F0](v59, -1, -1);
    }
  }

  else
  {

    v48 = sub_1DF564794();
    v49 = sub_1DF564C44();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 136446466;
      v68 = v51;
      v69 = 91;
      v70 = 0xE100000000000000;

      MEMORY[0x1E12D62C0](0xD000000000000022, 0x80000001DF572A80);
      MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
      MEMORY[0x1E12D62C0](v16, v18);
      MEMORY[0x1E12D62C0](93, 0xE100000000000000);

      v52 = sub_1DF47EF6C(v69, v70, &v68);

      *(v50 + 4) = v52;
      *(v50 + 12) = 2082;
      v53 = sub_1DF564884();
      v55 = sub_1DF47EF6C(v53, v54, &v68);

      *(v50 + 14) = v55;
      _os_log_impl(&dword_1DF47C000, v48, v49, "%{public}s Attempting to update availability to %{public}s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v51, -1, -1);
      MEMORY[0x1E12D75F0](v50, -1, -1);
    }

    v56 = v1[6];
  }

  v1[14] = v56;

  v65 = swift_task_alloc();
  v1[15] = v65;
  *v65 = v1;
  v65[1] = sub_1DF4F43E4;

  return MEMORY[0x1EEE0B5D8](v56);
}

uint64_t sub_1DF4F43E4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_1DF4F4780;
  }

  else
  {
    v2 = sub_1DF4F4524;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF4F4524()
{
  v16 = v0;

  v1 = sub_1DF564794();
  v2 = sub_1DF564C44();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[12];
  if (v3)
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136446466;
    v15[0] = v7;
    v15[1] = 91;
    v15[2] = 0xE100000000000000;
    MEMORY[0x1E12D62C0](0xD000000000000022, 0x80000001DF572A80);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v5, v4);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v8 = sub_1DF47EF6C(91, 0xE100000000000000, v15);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2082;
    v9 = sub_1DF564884();
    v11 = v10;

    v12 = sub_1DF47EF6C(v9, v11, v15);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_1DF47C000, v1, v2, "%{public}s Successfully notified AvailabilityFoundationClient about feature access status: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DF4F4780()
{
  v21 = v0;
  v1 = v0[16];

  v2 = v1;
  v3 = sub_1DF564794();
  v4 = sub_1DF564C24();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v7 = v0[11];
    v6 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446722;
    v20[0] = v9;
    v20[1] = 91;
    v20[2] = 0xE100000000000000;
    MEMORY[0x1E12D62C0](0xD000000000000022, 0x80000001DF572A80);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v7, v6);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v10 = sub_1DF47EF6C(91, 0xE100000000000000, v20);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2082;
    v11 = sub_1DF564884();
    v13 = sub_1DF47EF6C(v11, v12, v20);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2082;
    swift_getErrorValue();
    v14 = sub_1DF5651B4();
    v16 = sub_1DF47EF6C(v14, v15, v20);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_1DF47C000, v3, v4, "%{public}s Failed to notify AvailabilityFoundationClient about access status: %{public}s. Error: %{public}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  else
  {
    v17 = v0[16];
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1DF4F4A28(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4F4A4C, 0, 0);
}

uint64_t sub_1DF4F4A4C()
{
  v11 = v0;
  if ((*(*(v0 + 48) + 24))())
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v1 = sub_1DF5647B4();
    __swift_project_value_buffer(v1, qword_1ED9556D8);
    v2 = sub_1DF564794();
    v3 = sub_1DF564C44();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 72);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315394;
      *(v5 + 4) = sub_1DF47EF6C(0xD000000000000022, 0x80000001DF572A50, &v10);
      *(v5 + 12) = 1024;
      *(v5 + 14) = v4;
      _os_log_impl(&dword_1DF47C000, v2, v3, "%s Eligibility bypass is set to YES. Overriding access status %{BOOL}d to true.", v5, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1E12D75F0](v6, -1, -1);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }

    v7 = 1;
  }

  else
  {
    v7 = *(v0 + 72);
  }

  *(v0 + 73) = v7;
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_1DF4F4C38;

  return MEMORY[0x1EEE0B5D0](v7);
}

uint64_t sub_1DF4F4C38()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1DF4F4E70;
  }

  else
  {
    v2 = sub_1DF4F4D4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF4F4D4C()
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED9556D8);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 73);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1DF47C000, v2, v3, "Successfully notified AvailabilityFoundationClient about access status: %{BOOL,public}d!", v5, 8u);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DF4F4E70()
{
  v17 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED9556D8);
  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = *(v0 + 73);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 67240450;
    *(v9 + 4) = v8;
    *(v9 + 8) = 2082;
    swift_getErrorValue();
    v11 = sub_1DF5651B4();
    v13 = sub_1DF47EF6C(v11, v12, &v16);

    *(v9 + 10) = v13;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Failed to notify AvailabilityFoundationClient about access status: %{BOOL,public}d. Error: %{public}s", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DF4F5040(char a1)
{
  *(v2 + 224) = v1;
  *(v2 + 256) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4F5064, 0, 0);
}

uint64_t sub_1DF4F5064()
{
  v20 = v0;
  if ((*(*(v0 + 224) + 24))())
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v1 = sub_1DF5647B4();
    __swift_project_value_buffer(v1, qword_1ED9556D8);
    v2 = sub_1DF564794();
    v3 = sub_1DF564C44();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 256);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136315394;
      *(v5 + 4) = sub_1DF47EF6C(0xD000000000000019, 0x80000001DF572A30, &v19);
      *(v5 + 12) = 1024;
      *(v5 + 14) = v4;
      _os_log_impl(&dword_1DF47C000, v2, v3, "%s Eligibility bypass is set to YES. Overriding OptIn status %{BOOL}d to true.", v5, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1E12D75F0](v6, -1, -1);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }
  }

  else if (*(v0 + 256) != 1)
  {
    v16 = 0;
    goto LABEL_17;
  }

  v7 = [objc_opt_self() mainBundle];
  v8 = [v7 bundleIdentifier];

  if (v8)
  {
    v9 = sub_1DF564944();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v0 + 192) = v9;
  *(v0 + 200) = v11;
  v12 = swift_task_alloc();
  *(v12 + 16) = v0 + 192;
  v13 = sub_1DF4C1F84(sub_1DF4C35D8, v12, &unk_1F5A885C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37B60, &unk_1DF567EB0);
  swift_arrayDestroy();

  if (v13)
  {
    v14 = objc_opt_self();
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1DF4F5438;
    v15 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F50, &unk_1DF56A370);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1DF4F5CC4;
    *(v0 + 104) = &block_descriptor_3;
    *(v0 + 112) = v15;
    [v14 clearCFUWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  v16 = 1;
LABEL_17:
  *(v0 + 257) = v16;
  v17 = swift_task_alloc();
  *(v0 + 240) = v17;
  *v17 = v0;
  v17[1] = sub_1DF4F56A8;

  return MEMORY[0x1EEE0B5C8](v16);
}

uint64_t sub_1DF4F5438()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1DF4F58E0;
  }

  else
  {
    v2 = sub_1DF4F5548;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF4F5548()
{
  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED955C68);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DF47C000, v2, v3, "Successfully cleared CFU on opt-in", v4, 2u);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  *(v0 + 257) = 1;
  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  *v5 = v0;
  v5[1] = sub_1DF4F56A8;

  return MEMORY[0x1EEE0B5C8](1);
}

uint64_t sub_1DF4F56A8()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1DF4F5AF4;
  }

  else
  {
    v2 = sub_1DF4F57BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF4F57BC()
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED9556D8);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 257);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1DF47C000, v2, v3, "Successfully notified AvailabilityFoundationClient about new optIn status: %{BOOL,public}d!", v5, 8u);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DF4F58E0(uint64_t a1)
{
  v17 = v1;
  swift_willThrow();
  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 232);
  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED955C68);
  v4 = v2;
  v5 = sub_1DF564794();
  v6 = sub_1DF564C24();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 232);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = sub_1DF5651B4();
    v13 = sub_1DF47EF6C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Unable to clear CFU on opt-in. Error: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {
  }

  *(v1 + 257) = 1;
  v14 = swift_task_alloc();
  *(v1 + 240) = v14;
  *v14 = v1;
  v14[1] = sub_1DF4F56A8;

  return MEMORY[0x1EEE0B5C8](1);
}

uint64_t sub_1DF4F5AF4()
{
  v17 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 248);
  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED9556D8);
  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 248);
  if (v6)
  {
    v8 = *(v0 + 257);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 67240450;
    *(v9 + 4) = v8;
    *(v9 + 8) = 2082;
    swift_getErrorValue();
    v11 = sub_1DF5651B4();
    v13 = sub_1DF47EF6C(v11, v12, &v16);

    *(v9 + 10) = v13;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Failed to notify AvailabilityFoundationClient about new optIn status: %{BOOL,public}d. Error: %{public}s", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DF4F5CC4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1DF4F5D70()
{

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

unint64_t sub_1DF4F5DC8()
{
  result = qword_1ECE37F40;
  if (!qword_1ECE37F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37F48, &qword_1DF56A250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37F40);
  }

  return result;
}

uint64_t sub_1DF4F5E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF48D3C0;

  return v9(a1, a2, a3);
}

uint64_t sub_1DF4F5F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF48D3C0;

  return v9(a1, a2, a3);
}

uint64_t sub_1DF4F608C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF48D3C0;

  return v9(a1, a2, a3);
}

uint64_t sub_1DF4F61B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF48D4B0;

  return v9(a1, a2, a3);
}

uint64_t sub_1DF4F6300(__n128 a1)
{
  v2 = 0;
  v3 = 0;
  v4 = *v1;
  v39 = MEMORY[0x1E69E7CD0];
  v35 = "notify(availability:)";
  v31 = " .shortOfStorage";
  v30 = "<Assets: unavailable -";
  v32 = 0x80000001DF5726B0;
  v33 = 0x80000001DF572650;
  a1.n128_u64[0] = 136315394;
  v34 = a1;
  do
  {
    v12 = v2;
    v13 = *(&unk_1F5A88A40 + v3 + 4);
    if ((v13 & ~v4) == 0)
    {
      if (v13 == 2)
      {
        v5 = sub_1DF5646B4();
        v6 = *(v5 - 8);
        v7 = MEMORY[0x1EEE9AC00](v5);
        v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x1EEE9AC00](v7);
        v11 = &v30 - v10;
        (*(v6 + 104))(&v30 - v10, *MEMORY[0x1E69A1480], v5);
        sub_1DF4F6E88(v9, v11);
        (*(v6 + 8))(v9, v5);
      }

      else if (v13 == 1)
      {
        v14 = sub_1DF5646B4();
        v15 = *(v14 - 8);
        v16 = MEMORY[0x1EEE9AC00](v14);
        v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x1EEE9AC00](v16);
        v20 = &v30 - v19;
        (*(v15 + 104))(&v30 - v19, *MEMORY[0x1E69A1488], v14);
        sub_1DF4F6E88(v18, v20);
        (*(v15 + 8))(v18, v14);
      }

      else
      {
        if (qword_1ED9556D0 != -1)
        {
          swift_once();
        }

        v21 = sub_1DF5647B4();
        __swift_project_value_buffer(v21, qword_1ED9556D8);
        v22 = sub_1DF564794();
        v23 = sub_1DF564C24();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v38 = v25;
          *v24 = v34.n128_u32[0];
          *(v24 + 4) = sub_1DF47EF6C(0xD00000000000001ALL, v35 | 0x8000000000000000, &v38);
          *(v24 + 12) = 2080;
          if (v13)
          {
            v36 = 0xD000000000000016;
            v37 = v33;
            if (v13)
            {
              MEMORY[0x1E12D62C0](0xD000000000000011, v31 | 0x8000000000000000);
            }

            if ((v13 & 2) != 0)
            {
              MEMORY[0x1E12D62C0](0xD000000000000010, v30 | 0x8000000000000000);
            }

            MEMORY[0x1E12D62C0](62, 0xE100000000000000);
            v26 = v36;
            v27 = v37;
          }

          else
          {
            v26 = 0xD000000000000013;
            v27 = v32;
          }

          v28 = sub_1DF47EF6C(v26, v27, &v38);

          *(v24 + 14) = v28;
          _os_log_impl(&dword_1DF47C000, v22, v23, "%s: Unknown reason: %s)", v24, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12D75F0](v25, -1, -1);
          MEMORY[0x1E12D75F0](v24, -1, -1);
        }
      }
    }

    v2 = 1;
    v3 = 1;
  }

  while ((v12 & 1) == 0);
  return v39;
}

uint64_t sub_1DF4F6798()
{
  v17 = MEMORY[0x1E69E7CD0];
  v1 = [v0 unavailabiltyReasons];
  v2 = 0x20u;
  v16 = v1;
  do
  {
    v4 = *(&unk_1F5A88600 + v2);
    if ((v4 & ~v1) == 0)
    {
      v5 = sub_1DF564614();
      v6 = *(v5 - 8);
      v7 = MEMORY[0x1EEE9AC00](v5);
      v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = MEMORY[0x1EEE9AC00](v7);
      v12 = &v16 - v11;
      MEMORY[0x1EEE9AC00](v10);
      v14 = &v16 - v13;
      if (v4 <= 15)
      {
        if (v4 > 3)
        {
          if (v4 == 4)
          {
            v3 = MEMORY[0x1E69A1428];
            goto LABEL_3;
          }

          if (v4 == 8)
          {
            v3 = MEMORY[0x1E69A1430];
            goto LABEL_3;
          }
        }

        else
        {
          if (v4 == 1)
          {
            v3 = MEMORY[0x1E69A1420];
LABEL_3:
            (*(v6 + 104))(&v16 - v13, *v3, v5);
            (*(v6 + 32))(v12, v14, v5);
            sub_1DF4F6A40(v9, v12);
            (*(v6 + 8))(v9, v5);
            v1 = v16;
            goto LABEL_4;
          }

          v3 = MEMORY[0x1E69A1438];
          if (v4 == 2)
          {
            goto LABEL_3;
          }
        }
      }

      else if (v4 <= 63)
      {
        if (v4 == 16)
        {
          v3 = MEMORY[0x1E69A1418];
          goto LABEL_3;
        }

        if (v4 == 32)
        {
          v3 = MEMORY[0x1E69A1410];
          goto LABEL_3;
        }
      }

      else
      {
        switch(v4)
        {
          case 64:
            v3 = MEMORY[0x1E69A1408];
            goto LABEL_3;
          case 128:
            v3 = MEMORY[0x1E69A1400];
            goto LABEL_3;
          case 256:
            v3 = MEMORY[0x1E69A13F8];
            goto LABEL_3;
        }
      }

      v3 = MEMORY[0x1E69A1440];
      goto LABEL_3;
    }

LABEL_4:
    v2 += 8;
  }

  while (v2 != 112);
  return v17;
}

uint64_t sub_1DF4F6A40(char *a1, char *a2)
{
  v28 = a1;
  v4 = sub_1DF564614();
  v27 = v2;
  v5 = *v2;
  sub_1DF4F8CDC(&qword_1ED9546C8, MEMORY[0x1EEE89528], MEMORY[0x1EEE89540]);
  v34 = a2;
  v6 = sub_1DF5648B4();
  v33 = v5;
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  v31 = v5 + 56;
  v9 = *(v4 - 8);
  v10 = *(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8;
  v25 = v9;
  v26 = v4 - 8;
  if (v10)
  {
    v29 = ~v7;
    v32 = v9[2];
    v11 = v9[8];
    v30 = v9[9];
    v12 = (v9 + 1);
    while (1)
    {
      MEMORY[0x1EEE9AC00](v6);
      v13 = v30 * v8;
      v32(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), *(v33 + 48) + v30 * v8, v4);
      sub_1DF4F8CDC(&qword_1ED9546C0, MEMORY[0x1EEE89528], MEMORY[0x1EEE89548]);
      v14 = sub_1DF5648F4();
      v15 = *v12;
      v6 = (*v12)(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v29;
      if (((*(v31 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v15(v34, v4);
    v32(v28, *(v33 + 48) + v13, v4);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = isUniquelyReferenced_nonNull_native;
    v19 = v25;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v21 = &v24 - v20;
    v22 = v34;
    (v19[2])(&v24 - v20, v34, v4);
    v35 = *v16;
    sub_1DF4F7A40(v21, v8, v18);
    *v16 = v35;
    (v19[4])(v28, v22, v4);
    return 1;
  }
}

uint64_t sub_1DF4F6D38(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DF565234();
  sub_1DF5649E4();
  v8 = sub_1DF565264();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1DF5650D4() & 1) != 0)
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

    sub_1DF4F7CCC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DF4F6E88(char *a1, char *a2)
{
  v28 = a1;
  v4 = sub_1DF5646B4();
  v27 = v2;
  v5 = *v2;
  sub_1DF4F8CDC(&qword_1ECE37F60, MEMORY[0x1EEE89558], MEMORY[0x1EEE89568]);
  v34 = a2;
  v6 = sub_1DF5648B4();
  v33 = v5;
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  v31 = v5 + 56;
  v9 = *(v4 - 8);
  v10 = *(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8;
  v25 = v9;
  v26 = v4 - 8;
  if (v10)
  {
    v29 = ~v7;
    v32 = v9[2];
    v11 = v9[8];
    v30 = v9[9];
    v12 = (v9 + 1);
    while (1)
    {
      MEMORY[0x1EEE9AC00](v6);
      v13 = v30 * v8;
      v32(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), *(v33 + 48) + v30 * v8, v4);
      sub_1DF4F8CDC(&qword_1ECE37F68, MEMORY[0x1EEE89558], MEMORY[0x1EEE89570]);
      v14 = sub_1DF5648F4();
      v15 = *v12;
      v6 = (*v12)(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v29;
      if (((*(v31 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v15(v34, v4);
    v32(v28, *(v33 + 48) + v13, v4);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = isUniquelyReferenced_nonNull_native;
    v19 = v25;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v21 = &v24 - v20;
    v22 = v34;
    (v19[2])(&v24 - v20, v34, v4);
    v35 = *v16;
    sub_1DF4F7E4C(v21, v8, v18);
    *v16 = v35;
    (v19[4])(v28, v22, v4);
    return 1;
  }
}

uint64_t sub_1DF4F7180(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F58, &qword_1DF56A390);
  result = sub_1DF564DB4();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v1;
    v34 = v3;
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
      v37 = (v10 - 1) & v10;
LABEL_15:
      v17 = v14 | (v6 << 6);
      v18 = sub_1DF564614();
      v36 = &v32;
      v19 = *(v18 - 8);
      MEMORY[0x1EEE9AC00](v18);
      v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = *(v3 + 48);
      v23 = *(v19 + 72);
      v35 = *(v19 + 32);
      v35(v21, v22 + v23 * v17, v18);
      sub_1DF4F8CDC(&qword_1ED9546C8, MEMORY[0x1EEE89528], MEMORY[0x1EEE89540]);
      result = sub_1DF5648B4();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      result = (v35)(*(v5 + 48) + v13 * v23, v21, v18);
      ++*(v5 + 16);
      v10 = v37;
      v3 = v34;
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
        v37 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DF4F74B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37F30, &unk_1DF56A3A0);
  result = sub_1DF564DB4();
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
      sub_1DF565234();
      sub_1DF5649E4();
      result = sub_1DF565264();
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

uint64_t sub_1DF4F7710(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F70, &qword_1DF56A398);
  result = sub_1DF564DB4();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v1;
    v34 = v3;
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
      v37 = (v10 - 1) & v10;
LABEL_15:
      v17 = v14 | (v6 << 6);
      v18 = sub_1DF5646B4();
      v36 = &v32;
      v19 = *(v18 - 8);
      MEMORY[0x1EEE9AC00](v18);
      v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = *(v3 + 48);
      v23 = *(v19 + 72);
      v35 = *(v19 + 32);
      v35(v21, v22 + v23 * v17, v18);
      sub_1DF4F8CDC(&qword_1ECE37F60, MEMORY[0x1EEE89558], MEMORY[0x1EEE89568]);
      result = sub_1DF5648B4();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      result = (v35)(*(v5 + 48) + v13 * v23, v21, v18);
      ++*(v5 + 16);
      v10 = v37;
      v3 = v34;
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
        v37 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DF4F7A40(uint64_t a1, unint64_t a2, char a3)
{
  v29 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DF4F7180(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1DF4F8234(&qword_1ECE37F58, &qword_1DF56A390, MEMORY[0x1EEE89530]);
      goto LABEL_12;
    }

    sub_1DF4F8474(v5 + 1);
  }

  v7 = *v3;
  v8 = sub_1DF564614();
  sub_1DF4F8CDC(&qword_1ED9546C8, MEMORY[0x1EEE89528], MEMORY[0x1EEE89540]);
  v9 = sub_1DF5648B4();
  v27 = v7 + 56;
  v28 = v7;
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v26 = ~v10;
    v11 = *(v8 - 8);
    v12 = v11[2];
    v13 = v11[8];
    v14 = v11[9];
    v15 = (v11 + 1);
    do
    {
      MEMORY[0x1EEE9AC00](v9);
      v12(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *(v28 + 48) + v14 * a2, v8);
      sub_1DF4F8CDC(&qword_1ED9546C0, MEMORY[0x1EEE89528], MEMORY[0x1EEE89548]);
      v16 = sub_1DF5648F4();
      v9 = (*v15)(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      if (v16)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v26;
    }

    while (((*(v27 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v17 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v18 = *(v17 + 48);
  v19 = sub_1DF564614();
  result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * a2, v29, v19);
  v21 = *(v17 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v17 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DF565134();
  __break(1u);
  return result;
}

void sub_1DF4F7CCC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DF4F74B0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1DF4F80D8();
      goto LABEL_16;
    }

    sub_1DF4F878C(v8 + 1);
  }

  v10 = *v4;
  sub_1DF565234();
  sub_1DF5649E4();
  v11 = sub_1DF565264();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1DF5650D4() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1DF565134();
  __break(1u);
}

uint64_t sub_1DF4F7E4C(uint64_t a1, unint64_t a2, char a3)
{
  v29 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DF4F7710(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1DF4F8234(&qword_1ECE37F70, &qword_1DF56A398, MEMORY[0x1EEE89550]);
      goto LABEL_12;
    }

    sub_1DF4F89C4(v5 + 1);
  }

  v7 = *v3;
  v8 = sub_1DF5646B4();
  sub_1DF4F8CDC(&qword_1ECE37F60, MEMORY[0x1EEE89558], MEMORY[0x1EEE89568]);
  v9 = sub_1DF5648B4();
  v27 = v7 + 56;
  v28 = v7;
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v26 = ~v10;
    v11 = *(v8 - 8);
    v12 = v11[2];
    v13 = v11[8];
    v14 = v11[9];
    v15 = (v11 + 1);
    do
    {
      MEMORY[0x1EEE9AC00](v9);
      v12(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *(v28 + 48) + v14 * a2, v8);
      sub_1DF4F8CDC(&qword_1ECE37F68, MEMORY[0x1EEE89558], MEMORY[0x1EEE89570]);
      v16 = sub_1DF5648F4();
      v9 = (*v15)(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      if (v16)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v26;
    }

    while (((*(v27 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v17 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v18 = *(v17 + 48);
  v19 = sub_1DF5646B4();
  result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * a2, v29, v19);
  v21 = *(v17 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v17 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DF565134();
  __break(1u);
  return result;
}

void sub_1DF4F80D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37F30, &unk_1DF56A3A0);
  v2 = *v0;
  v3 = sub_1DF564DA4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void *sub_1DF4F8234(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v30 = a3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_1DF564DA4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v4;
    result = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 56 + 8 * v9)
    {
      result = memmove(result, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v31 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v11 << 6);
        v22 = v30(0);
        v23 = *(v22 - 8);
        MEMORY[0x1EEE9AC00](v22);
        v25 = &v28 - v24;
        v27 = *(v26 + 72) * v21;
        (*(v23 + 16))(&v28 - v24, *(v5 + 48) + v27, v22);
        result = (*(v23 + 32))(*(v31 + 48) + v27, v25, v22);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v4 = v29;
        v7 = v31;
        goto LABEL_21;
      }

      v20 = *(v5 + 56 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1DF4F8474(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F58, &qword_1DF56A390);
  result = sub_1DF564DB4();
  v5 = result;
  if (*(v3 + 16))
  {
    v34 = v1;
    v35 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v36 = result;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_15:
      v17 = v14 | (v6 << 6);
      v18 = sub_1DF564614();
      v37 = &v33;
      v19 = *(v18 - 8);
      MEMORY[0x1EEE9AC00](v18);
      v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = v22;
      v24 = *(v3 + 48);
      v25 = *(v23 + 72);
      (*(v19 + 16))(v21, v24 + v25 * v17, v18);
      v5 = v36;
      sub_1DF4F8CDC(&qword_1ED9546C8, MEMORY[0x1EEE89528], MEMORY[0x1EEE89540]);
      result = sub_1DF5648B4();
      v26 = -1 << *(v5 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      result = (*(v19 + 32))(*(v5 + 48) + v13 * v25, v21, v18);
      ++*(v5 + 16);
      v10 = v38;
      v3 = v35;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v34;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v38 = (v16 - 1) & v16;
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

uint64_t sub_1DF4F878C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37F30, &unk_1DF56A3A0);
  result = sub_1DF564DB4();
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
      sub_1DF565234();

      sub_1DF5649E4();
      result = sub_1DF565264();
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