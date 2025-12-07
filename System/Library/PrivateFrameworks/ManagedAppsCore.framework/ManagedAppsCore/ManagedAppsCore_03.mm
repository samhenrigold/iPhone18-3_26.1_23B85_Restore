uint64_t ManagedAppsServer.notificationNameForConfigDetailChange(clientIdentity:)(uint64_t a1)
{
  v1 = sub_258049CD0();
  v2 = sub_258043AC4(1, v1);

  return v2;
}

uint64_t ManagedAppsServer.notificationNameForPasswordChange(clientIdentity:)(uint64_t a1)
{
  v1 = sub_258049CD0();
  v2 = sub_258043C54(1u, v1);

  return v2;
}

uint64_t ManagedAppsServer.notificationNameForCertificateChange(clientIdentity:)(uint64_t a1)
{
  v1 = sub_258049CD0();
  v2 = sub_258043C54(2u, v1);

  return v2;
}

uint64_t ManagedAppsServer.notificationNameForIdentityChange(clientIdentity:)(uint64_t a1)
{
  v1 = sub_258049CD0();
  v2 = sub_258043C54(3u, v1);

  return v2;
}

uint64_t sub_2580279CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2580381F0;

  return ManagedAppsServer.getConfigDetailsData(clientIdentity:)(a1);
}

uint64_t sub_258027A64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258038214;

  return sub_258021900(1, a1);
}

uint64_t sub_258027B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_258027BB0;

  return ManagedAppsServer.getPassword(with:clientIdentity:)(a1, a2, a3);
}

uint64_t sub_258027BB0(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_258027CC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258038214;

  return sub_258021900(2, a1);
}

uint64_t sub_258027D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_258038214;

  return ManagedAppsServer.getCertificate(with:clientIdentity:)(a1, a2, a3);
}

uint64_t sub_258027E0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258038214;

  return sub_258021900(3, a1);
}

uint64_t sub_258027EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_258038214;

  return ManagedAppsServer.getIdentityProxyEndpoint(with:clientIdentity:)(a1, a2, a3);
}

uint64_t sub_258027F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_257FDAFFC;

  return ManagedAppsServer.reportConfigDetailsState(code:reason:clientIdentity:)(a1, a2, a3, a4);
}

uint64_t sub_258028018(uint64_t a1)
{
  v1 = sub_258049CD0();
  v2 = sub_258043AC4(1, v1);

  return v2;
}

uint64_t sub_258028070(uint64_t a1)
{
  v1 = sub_258049CD0();
  v2 = sub_258043C54(1u, v1);

  return v2;
}

uint64_t sub_2580280C8(uint64_t a1)
{
  v1 = sub_258049CD0();
  v2 = sub_258043C54(2u, v1);

  return v2;
}

uint64_t sub_258028120(uint64_t a1)
{
  v1 = sub_258049CD0();
  v2 = sub_258043C54(3u, v1);

  return v2;
}

uint64_t ManagedAppsServer.setAppConfig(recordID:appConfigRecord:persona:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v6[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25802826C, 0, 0);
}

uint64_t sub_25802826C()
{
  v26 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_258049D30();
  v0[22] = __swift_project_value_buffer(v2, qword_27F919E48);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2C0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_258032C5C(0xD00000000000002FLL, 0x8000000258051010, &v25);
    *(v7 + 12) = 2080;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_25804A110();
    v13 = v12;

    v14 = sub_258032C5C(v11, v13, &v25);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - setAppConfig:\n%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v15 = v0[17];
  swift_beginAccess();
  result = sub_257FDA958(v15 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v17 = v0[5];
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v17);
    v18 = swift_task_alloc();
    v0[23] = v18;
    *v18 = v0;
    v18[1] = sub_258028508;
    v19 = v0[20];
    v20 = v0[15];
    v21 = v0[16];
    v22 = v0[13];
    v23 = v0[14];
    v24 = v0[12];

    return sub_257FDB00C(v19, v24, v22, v23, v20, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258028508()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_25802885C;
  }

  else
  {
    v2 = sub_25802861C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25802861C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = type metadata accessor for AppRecordLookalike(0);
  v5 = *(v4 - 8);
  (*(v5 + 56))(v2, 0, 1, v4);
  sub_258014250(v2, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_257FDA958(v1, v3, &qword_27F915280, &qword_25804ED30);
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[19];
    v8 = *(v7 + *(v4 + 36));
    sub_258037DB4(v7, type metadata accessor for AppRecordLookalike);
    if (v8 == 1)
    {
      v9 = v0[17];
      v10 = v0[18];
      v12 = v0[12];
      v11 = v0[13];
      sub_25804A240();
      v13 = sub_25804A270();
      (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v9;
      v14[5] = v12;
      v14[6] = v11;

      sub_25802E704(0, 0, v10, &unk_25804ED40, v14);
    }

    sub_257FDAB84(v0[21], &qword_27F915280, &qword_25804ED30);

    v15 = v0[1];

    return v15();
  }

  return result;
}

uint64_t sub_25802885C()
{
  v21 = v0;
  v1 = v0[24];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v1;
  v3 = sub_258049D10();
  v4 = sub_25804A2D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0xD00000000000002FLL, 0x8000000258051010, v20);
    *(v6 + 12) = 2082;
    v0[11] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v9 = sub_25804A120();
    v11 = sub_258032C5C(v9, v10, v20);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_257FD4000, v3, v4, "%{public}s - setAppConfig failed with error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v12 = v0[24];
  v0[10] = v12;
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v14 = sub_25804A120();
  v16 = v15;
  sub_258036E5C();
  swift_allocError();
  *v17 = v14;
  *(v17 + 8) = v16;
  *(v17 + 16) = 1;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t ManagedAppsServer.removeAppConfig(recordID:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  v3[20] = swift_task_alloc();
  v4 = type metadata accessor for AppRecordLookalike(0);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258028BCC, 0, 0);
}

uint64_t sub_258028BCC()
{
  v1 = v0[19];
  swift_beginAccess();
  v2 = sub_257FDA958(v1 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v4 = v0[5];
  if (v4)
  {
    v0[25] = __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v0[26] = type metadata accessor for AppConfigDatabaseImpl(0);
    v0[27] = sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
    v5 = sub_25804A230();
    v7 = v6;
    v2 = sub_258028CD8;
    v4 = v5;
    v3 = v7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v2, v4, v3);
}

uint64_t sub_258028CD8()
{
  sub_257FE10F0(v0[17], v0[18], v0[20]);
  v0[28] = 0;

  return MEMORY[0x2822009F8](sub_258028D70, 0, 0);
}

uint64_t sub_258028D70()
{
  v31 = v0;
  v1 = v0[20];
  if ((*(v0[22] + 48))(v1, 1, v0[21]) == 1)
  {
    sub_257FDAB84(v1, &qword_27F915280, &qword_25804ED30);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v2 = sub_258049D30();
    __swift_project_value_buffer(v2, qword_27F919E48);

    v3 = sub_258049D10();
    v4 = sub_25804A2D0();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[17];
      v5 = v0[18];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v30 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_258032C5C(0xD00000000000001ALL, 0x8000000258051040, &v30);
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_258032C5C(v6, v5, &v30);
      _os_log_impl(&dword_257FD4000, v3, v4, "%{public}s - no result for record %{public}s!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v8, -1, -1);
      MEMORY[0x259C77210](v7, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_258037D4C(v1, v0[24], type metadata accessor for AppRecordLookalike);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v11 = v0[23];
    v12 = v0[24];
    v13 = sub_258049D30();
    __swift_project_value_buffer(v13, qword_27F919E48);
    sub_258037CE4(v12, v11, type metadata accessor for AppRecordLookalike);
    v14 = sub_258049D10();
    v15 = sub_25804A2C0();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[23];
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_258032C5C(0xD00000000000001ALL, 0x8000000258051040, &v30);
      *(v18 + 12) = 2080;
      v20 = sub_257FF8ED8();
      v22 = v21;
      sub_258037DB4(v17, type metadata accessor for AppRecordLookalike);
      v23 = sub_258032C5C(v20, v22, &v30);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_257FD4000, v14, v15, "%{public}s - record: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v19, -1, -1);
      MEMORY[0x259C77210](v18, -1, -1);
    }

    else
    {

      sub_258037DB4(v17, type metadata accessor for AppRecordLookalike);
    }

    v24 = sub_257FDA958(v0[19] + 32, (v0 + 7), &qword_27F915AE0, &qword_25804EC98);
    v26 = v0[10];
    if (v26)
    {
      v0[29] = __swift_project_boxed_opaque_existential_1(v0 + 7, v26);
      v27 = sub_25804A230();
      v29 = v28;
      v24 = sub_2580294A4;
      v26 = v27;
      v25 = v29;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v24, v26, v25);
  }
}

uint64_t sub_258029214()
{
  v20 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[28];
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0xD00000000000001ALL, 0x8000000258051040, v19);
    *(v6 + 12) = 2082;
    v0[16] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v9 = sub_25804A120();
    v11 = sub_258032C5C(v9, v10, v19);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v0[15] = v1;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v13 = sub_25804A120();
  v15 = v14;
  sub_258036E5C();
  swift_allocError();
  *v16 = v13;
  *(v16 + 8) = v15;
  *(v16 + 16) = 2;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_2580294A4()
{
  v1 = *(v0 + 224);
  sub_257FDB4F0(*(v0 + 136), *(v0 + 144), **(v0 + 232));
  *(v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_2580295D0;
  }

  else
  {
    v2 = sub_258029534;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258029534()
{
  sub_258037DB4(v0[24], type metadata accessor for AppRecordLookalike);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2580295D0()
{
  v20 = v0;
  sub_258037DB4(v0[24], type metadata accessor for AppRecordLookalike);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[30];
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0xD00000000000001ALL, 0x8000000258051040, v19);
    *(v6 + 12) = 2082;
    v0[16] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v9 = sub_25804A120();
    v11 = sub_258032C5C(v9, v10, v19);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v0[15] = v1;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v13 = sub_25804A120();
  v15 = v14;
  sub_258036E5C();
  swift_allocError();
  *v16 = v13;
  *(v16 + 8) = v15;
  *(v16 + 16) = 2;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t ManagedAppsServer.updateAppBundleID(for:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return MEMORY[0x2822009F8](sub_2580298A4, 0, 0);
}

uint64_t sub_2580298A4()
{
  v19 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  v0[15] = __swift_project_value_buffer(v1, qword_27F919E48);

  v2 = sub_258049D10();
  v3 = sub_25804A2C0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[12];
    v4 = v0[13];
    v7 = v0[10];
    v6 = v0[11];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446722;
    *(v8 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051060, &v18);
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_258032C5C(v7, v6, &v18);
    *(v8 + 22) = 2082;
    *(v8 + 24) = sub_258032C5C(v5, v4, &v18);
    _os_log_impl(&dword_257FD4000, v2, v3, "%{public}s - managementKey: %{public}s, bundleID: %{public}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v9, -1, -1);
    MEMORY[0x259C77210](v8, -1, -1);
  }

  v10 = v0[14];
  swift_beginAccess();
  v11 = sub_257FDA958(v10 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v13 = v0[5];
  if (v13)
  {
    v0[16] = __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
    type metadata accessor for AppConfigDatabaseImpl(0);
    sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);

    v14 = sub_25804A230();
    v16 = v15;
    v11 = sub_258029B5C;
    v13 = v14;
    v12 = v16;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v11, v13, v12);
}

uint64_t sub_258029B5C()
{
  sub_257FECE3C(*(v0 + 80), *(v0 + 88), **(v0 + 128), *(v0 + 96), *(v0 + 104));
  *(v0 + 136) = 0;

  return MEMORY[0x2822009F8](sub_258029BFC, 0, 0);
}

uint64_t sub_258029BFC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258029C60()
{
  v21 = v0;
  v1 = v0[17];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v1;
  v3 = sub_258049D10();
  v4 = sub_25804A2D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051060, v20);
    *(v6 + 12) = 2082;
    v0[2] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v9 = sub_25804A120();
    v11 = sub_258032C5C(v9, v10, v20);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_257FD4000, v3, v4, "%{public}s - Failed with error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v12 = v0[17];
  v0[2] = v12;
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v14 = sub_25804A120();
  v16 = v15;
  sub_258036E5C();
  swift_allocError();
  *v17 = v14;
  *(v17 + 8) = v16;
  *(v17 + 16) = 3;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_258029E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
  sub_258049F00();

  if (!v9)
  {
    goto LABEL_6;
  }

  if (a1 == a2 && v9 == a3)
  {
  }

  v6 = sub_25804A560();

  if ((v6 & 1) == 0)
  {
LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258049A80();
  }

  return result;
}

uint64_t ManagedAppsServer.updateAppCodeIdentity(for:appCodeIdentity:extensionCodeIdentities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return MEMORY[0x2822009F8](sub_25802A0C8, 0, 0);
}

uint64_t sub_25802A0C8()
{
  v31 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_258049D30();
  v0[15] = __swift_project_value_buffer(v2, qword_27F919E48);
  swift_bridgeObjectRetain_n();

  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2C0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = v0[11];
    v9 = v0[12];
    v10 = v0[10];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136446978;
    *(v11 + 4) = sub_258032C5C(0xD000000000000043, 0x8000000258051090, &v30);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_258032C5C(v10, v8, &v30);
    *(v11 + 22) = 2080;
    v13 = v9;
    v14 = [v13 description];
    v15 = sub_25804A110();
    v17 = v16;

    v18 = sub_258032C5C(v15, v17, &v30);

    *(v11 + 24) = v18;
    *(v11 + 32) = 2048;
    if (v7 >> 62)
    {
      v19 = sub_25804A480();
    }

    else
    {
      v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 34) = v19;

    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - managementKey: %{public}s, appCodeIdentity: %s extensions: %ld", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v12, -1, -1);
    MEMORY[0x259C77210](v11, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v20 = v0[14];
  swift_beginAccess();
  v21 = sub_257FDA958(v20 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v23 = v0[5];
  if (v23)
  {
    v24 = v0[12];
    v0[16] = __swift_project_boxed_opaque_existential_1(v0 + 2, v23);
    type metadata accessor for AppConfigDatabaseImpl(0);
    sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);

    v25 = v24;
    v26 = sub_25804A230();
    v28 = v27;
    v21 = sub_25802A434;
    v23 = v26;
    v22 = v28;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v21, v23, v22);
}

uint64_t sub_25802A434()
{
  sub_257FED63C(*(v0 + 80), *(v0 + 88), **(v0 + 128), *(v0 + 96), *(v0 + 104));
  *(v0 + 136) = 0;
  v1 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_258038210, 0, 0);
}

uint64_t sub_25802A4D8()
{
  v21 = v0;
  v1 = v0[17];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v1;
  v3 = sub_258049D10();
  v4 = sub_25804A2D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0xD000000000000043, 0x8000000258051090, v20);
    *(v6 + 12) = 2082;
    v0[2] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v9 = sub_25804A120();
    v11 = sub_258032C5C(v9, v10, v20);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_257FD4000, v3, v4, "%{public}s - Failed with error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v12 = v0[17];
  v0[2] = v12;
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v14 = sub_25804A120();
  v16 = v15;
  sub_258036E5C();
  swift_allocError();
  *v17 = v14;
  *(v17 + 8) = v16;
  *(v17 + 16) = 3;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_25802A708(uint64_t a1, void *a2, unint64_t a3)
{
  type metadata accessor for AppCodeIdentityRecord(0);
  swift_allocObject();
  sub_2580028CC(a2);
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A80();

  if (a3 >> 62)
  {
    v5 = sub_25804A480();
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258049A80();
  }

  result = sub_25804A430();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C768B0](v7, a3);
      }

      else
      {
        v8 = *(a3 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      type metadata accessor for ExtensionCodeIdentityRecord(0);
      swift_allocObject();
      sub_258003D74(v9);
      sub_25804A410();
      sub_25804A440();
      sub_25804A450();
      sub_25804A420();
    }

    while (v5 != v7);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t ManagedAppsServer.activateAppConfig(for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_257FDAFFC;

  return sub_25802AA3C(a1, a2, 1);
}

uint64_t sub_25802AA3C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 120) = a2;
  *(v4 + 128) = v3;
  *(v4 + 168) = a3;
  *(v4 + 112) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25802AAE0, 0, 0);
}

uint64_t sub_25802AAE0()
{
  v17 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  v0[18] = __swift_project_value_buffer(v1, qword_27F919E48);

  v2 = sub_258049D10();
  v3 = sub_25804A2C0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0xD000000000000030, 0x80000002580512B0, &v16);
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_258032C5C(v5, v4, &v16);
    _os_log_impl(&dword_257FD4000, v2, v3, "%{public}s - managementKey: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v8 = v0[16];
  v0[10] = 0;
  v0[11] = 0;
  swift_beginAccess();
  v9 = sub_257FDA958(v8 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v11 = v0[5];
  if (v11)
  {
    v0[19] = __swift_project_boxed_opaque_existential_1(v0 + 2, v11);
    type metadata accessor for AppConfigDatabaseImpl(0);
    sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
    v12 = sub_25804A230();
    v14 = v13;
    v9 = sub_25802AD54;
    v11 = v12;
    v10 = v14;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v9, v11, v10);
}

uint64_t sub_25802AD54()
{
  sub_257FDB6B8(*(v0 + 112), *(v0 + 120), **(v0 + 152), (v0 + 80));
  *(v0 + 160) = 0;

  return MEMORY[0x2822009F8](sub_25802ADEC, 0, 0);
}

uint64_t sub_25802ADEC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  if (v1)
  {
    if (*(v0 + 168) == 1)
    {
      v4 = *(v0 + 128);
      v3 = *(v0 + 136);
      sub_25804A240();
      v5 = sub_25804A270();
      (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
      v6 = swift_allocObject();
      v6[2] = 0;
      v6[3] = 0;
      v6[4] = v4;
      v6[5] = v2;
      v6[6] = v1;

      sub_25802E704(0, 0, v3, &unk_25804F1B0, v6);
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25802AF34()
{
  v21 = v0;
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v1;
  v3 = sub_258049D10();
  v4 = sub_25804A2D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0xD000000000000030, 0x80000002580512B0, v20);
    *(v6 + 12) = 2082;
    v0[13] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v9 = sub_25804A120();
    v11 = sub_258032C5C(v9, v10, v20);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_257FD4000, v3, v4, "%{public}s - Failed with error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v12 = v0[20];
  v0[12] = v12;
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v14 = sub_25804A120();
  v16 = v15;
  sub_258036E5C();
  swift_allocError();
  *v17 = v14;
  *(v17 + 8) = v16;
  *(v17 + 16) = 5;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_25802B180(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F00();

  *a2 = a1;
  a2[1] = v5;
}

uint64_t ManagedAppsServer.disableAppConfig(for:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for AppRecordLookalike(0);
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25802B40C, 0, 0);
}

uint64_t sub_25802B40C()
{
  v16 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  v0[25] = __swift_project_value_buffer(v1, qword_27F919E48);

  v2 = sub_258049D10();
  v3 = sub_25804A2C0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[17];
    v4 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0xD000000000000016, 0x80000002580510E0, &v15);
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_258032C5C(v5, v4, &v15);
    _os_log_impl(&dword_257FD4000, v2, v3, "%{public}s - managementKey: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v8 = v0[19];
  swift_beginAccess();
  result = sub_257FDA958(v8 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v10 = v0[5];
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_25802B65C;
    v12 = v0[24];
    v13 = v0[17];
    v14 = v0[18];

    return sub_257FE1590(v12, v13, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25802B65C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_25802B968;
  }

  else
  {
    v2 = sub_25802B770;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25802B770()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[21];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_257FDA958(v2, v1, &qword_27F915280, &qword_25804ED30);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_257FDAB84(v0[24], &qword_27F915280, &qword_25804ED30);
    sub_257FDAB84(v0[23], &qword_27F915280, &qword_25804ED30);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[19];
    sub_258037D4C(v0[23], v0[22], type metadata accessor for AppRecordLookalike);
    v8 = sub_257FDA958(v7 + 32, (v0 + 7), &qword_27F915AE0, &qword_25804EC98);
    v10 = v0[10];
    if (v10)
    {
      v0[28] = __swift_project_boxed_opaque_existential_1(v0 + 7, v10);
      type metadata accessor for AppConfigDatabaseImpl(0);
      sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
      v11 = sub_25804A230();
      v13 = v12;
      v8 = sub_25802BBB8;
      v10 = v11;
      v9 = v13;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v8, v10, v9);
  }
}

uint64_t sub_25802B968()
{
  v19 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[27];
  v2 = v1;
  v3 = sub_258049D10();
  v4 = sub_25804A2D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18[0] = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_258032C5C(0xD000000000000016, 0x80000002580510E0, v18);
    *(v5 + 12) = 2082;
    v0[16] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v8 = sub_25804A120();
    v10 = sub_258032C5C(v8, v9, v18);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_257FD4000, v3, v4, "%{public}s - Failed with error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v6, -1, -1);
    MEMORY[0x259C77210](v5, -1, -1);
  }

  v0[15] = v1;
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v12 = sub_25804A120();
  v14 = v13;
  sub_258036E5C();
  swift_allocError();
  *v15 = v12;
  *(v15 + 8) = v14;
  *(v15 + 16) = 6;
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_25802BBB8()
{
  v1 = *(v0 + 216);
  sub_257FDB890(*(v0 + 136), *(v0 + 144), **(v0 + 224));
  *(v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_25802BF84;
  }

  else
  {
    v2 = sub_25802BC48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25802BC48()
{
  v30 = v0;
  v1 = v0[19];
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  if (*(v1 + 72))
  {
    v3 = v0[29];
    sub_25801BA64(v0[22]);
    if (v3)
    {
      v7 = v4;
      v8 = v5;
      v9 = v6;
      v10 = v0[24];
      v11 = v0[22];
      sub_25801ACE8();
      v12 = swift_allocError();
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      sub_258037DB4(v11, type metadata accessor for AppRecordLookalike);
      sub_257FDAB84(v10, &qword_27F915280, &qword_25804ED30);
      v14 = v12;
      v15 = sub_258049D10();
      v16 = sub_25804A2D0();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v29[0] = v18;
        *v17 = 136446466;
        *(v17 + 4) = sub_258032C5C(0xD000000000000016, 0x80000002580510E0, v29);
        *(v17 + 12) = 2082;
        v0[16] = v12;
        v19 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
        v20 = sub_25804A120();
        v22 = sub_258032C5C(v20, v21, v29);

        *(v17 + 14) = v22;
        _os_log_impl(&dword_257FD4000, v15, v16, "%{public}s - Failed with error: %{public}s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C77210](v18, -1, -1);
        MEMORY[0x259C77210](v17, -1, -1);
      }

      v0[15] = v12;
      v23 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
      v24 = sub_25804A120();
      v26 = v25;
      sub_258036E5C();
      swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v26;
      *(v27 + 16) = 6;
      swift_willThrow();

      v28 = v0[1];
    }

    else
    {
      sub_258037DB4(v0[22], type metadata accessor for AppRecordLookalike);
      sub_257FDAB84(v0[24], &qword_27F915280, &qword_25804ED30);

      v28 = v0[1];
    }

    return v28();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25802BF84()
{
  v20 = v0;
  v1 = v0[24];
  sub_258037DB4(v0[22], type metadata accessor for AppRecordLookalike);
  sub_257FDAB84(v1, &qword_27F915280, &qword_25804ED30);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v0[29];
  v3 = v2;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0xD000000000000016, 0x80000002580510E0, v19);
    *(v6 + 12) = 2082;
    v0[16] = v2;
    v8 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v9 = sub_25804A120();
    v11 = sub_258032C5C(v9, v10, v19);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v0[15] = v2;
  v12 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v13 = sub_25804A120();
  v15 = v14;
  sub_258036E5C();
  swift_allocError();
  *v16 = v13;
  *(v16 + 8) = v15;
  *(v16 + 16) = 6;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_25802C20C(uint64_t a1)
{
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();
}

uint64_t ManagedAppsServer.completeRemovalOfAppConfig(for:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  v3[23] = swift_task_alloc();
  v4 = type metadata accessor for AppRecordLookalike(0);
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25802C49C, 0, 0);
}

uint64_t sub_25802C49C()
{
  v16 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  v0[28] = __swift_project_value_buffer(v1, qword_27F919E48);

  v2 = sub_258049D10();
  v3 = sub_25804A2C0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051100, &v15);
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_258032C5C(v5, v4, &v15);
    _os_log_impl(&dword_257FD4000, v2, v3, "%{public}s - managementKey: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v8 = v0[22];
  swift_beginAccess();
  result = sub_257FDA958(v8 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v10 = v0[5];
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
    v11 = swift_task_alloc();
    v0[29] = v11;
    *v11 = v0;
    v11[1] = sub_25802C6EC;
    v12 = v0[23];
    v13 = v0[20];
    v14 = v0[21];

    return sub_257FE1590(v12, v13, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25802C6EC()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_25802CC70;
  }

  else
  {
    v2 = sub_25802C800;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25802C800()
{
  v32 = v0;
  v1 = v0[23];
  if ((*(v0[25] + 48))(v1, 1, v0[24]) == 1)
  {
    sub_257FDAB84(v1, &qword_27F915280, &qword_25804ED30);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v2 = sub_258049D10();
    v3 = sub_25804A2D0();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[20];
      v4 = v0[21];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31 = v7;
      *v6 = 136446466;
      *(v6 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051100, &v31);
      *(v6 + 12) = 2082;
      *(v6 + 14) = sub_258032C5C(v5, v4, &v31);
      _os_log_impl(&dword_257FD4000, v2, v3, "%{public}s - no result for record %{public}s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v7, -1, -1);
      MEMORY[0x259C77210](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    v11 = v0[26];
    v10 = v0[27];
    sub_258037D4C(v1, v10, type metadata accessor for AppRecordLookalike);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    sub_258037CE4(v10, v11, type metadata accessor for AppRecordLookalike);
    v12 = sub_258049D10();
    v13 = sub_25804A2C0();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[26];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136446466;
      *(v16 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051100, &v31);
      *(v16 + 12) = 2080;
      v18 = sub_257FF8ED8();
      v20 = v19;
      sub_258037DB4(v15, type metadata accessor for AppRecordLookalike);
      v21 = sub_258032C5C(v18, v20, &v31);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_257FD4000, v12, v13, "%{public}s - record: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v17, -1, -1);
      MEMORY[0x259C77210](v16, -1, -1);
    }

    else
    {

      sub_258037DB4(v15, type metadata accessor for AppRecordLookalike);
    }

    v22 = sub_257FDA958(v0[22] + 32, (v0 + 7), &qword_27F915AE0, &qword_25804EC98);
    v24 = v0[10];
    if (v24)
    {
      v25 = v0[27];
      v26 = v0[24];
      v0[31] = __swift_project_boxed_opaque_existential_1(v0 + 7, v24);
      v27 = (v25 + *(v26 + 20));
      v0[32] = *v27;
      v0[33] = v27[1];
      type metadata accessor for AppConfigDatabaseImpl(0);
      sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
      v28 = sub_25804A230();
      v30 = v29;
      v22 = sub_25802CEC0;
      v24 = v28;
      v23 = v30;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v22, v24, v23);
  }
}

uint64_t sub_25802CC70()
{
  v19 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[30];
  v2 = v1;
  v3 = sub_258049D10();
  v4 = sub_25804A2D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18[0] = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051100, v18);
    *(v5 + 12) = 2082;
    v0[19] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v8 = sub_25804A120();
    v10 = sub_258032C5C(v8, v9, v18);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_257FD4000, v3, v4, "%{public}s - Failed with error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v6, -1, -1);
    MEMORY[0x259C77210](v5, -1, -1);
  }

  v0[18] = v1;
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v12 = sub_25804A120();
  v14 = v13;
  sub_258036E5C();
  swift_allocError();
  *v15 = v12;
  *(v15 + 8) = v14;
  *(v15 + 16) = 7;
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_25802CEC0()
{
  v1 = v0[30];
  sub_257FE4AB4(v0[32], v0[33]);
  v0[34] = v1;
  if (v1)
  {
    v2 = sub_25802D2B8;
  }

  else
  {
    v2 = sub_25802CF50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25802CF50()
{
  v33 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[22];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  swift_beginAccess();

  sub_25801C770(v31, v2, v1);
  result = swift_endAccess();
  if (*(v3 + 72))
  {
    v5 = v0[34];
    v6 = v0[27];

    sub_25801BA64(v6);
    v10 = v0[27];
    if (v5)
    {
      v11 = v7;
      v12 = v8;
      v13 = v9;

      sub_25801ACE8();
      v14 = swift_allocError();
      *v15 = v11;
      *(v15 + 8) = v12;
      *(v15 + 16) = v13;
      sub_258037DB4(v10, type metadata accessor for AppRecordLookalike);
      v16 = v14;
      v17 = sub_258049D10();
      v18 = sub_25804A2D0();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *&v31[0] = v20;
        *v19 = 136446466;
        *(v19 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051100, v31);
        *(v19 + 12) = 2082;
        v0[19] = v14;
        v21 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
        v22 = sub_25804A120();
        v24 = sub_258032C5C(v22, v23, v31);

        *(v19 + 14) = v24;
        _os_log_impl(&dword_257FD4000, v17, v18, "%{public}s - Failed with error: %{public}s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C77210](v20, -1, -1);
        MEMORY[0x259C77210](v19, -1, -1);
      }

      v0[18] = v14;
      v25 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
      v26 = sub_25804A120();
      v28 = v27;
      sub_258036E5C();
      swift_allocError();
      *v29 = v26;
      *(v29 + 8) = v28;
      *(v29 + 16) = 7;
      swift_willThrow();

      v30 = v0[1];
    }

    else
    {
      sub_258037DB4(v0[27], type metadata accessor for AppRecordLookalike);

      v30 = v0[1];
    }

    return v30();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25802D2B8()
{
  v19 = v0;
  sub_258037DB4(v0[27], type metadata accessor for AppRecordLookalike);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[34];
  v2 = v1;
  v3 = sub_258049D10();
  v4 = sub_25804A2D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18[0] = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051100, v18);
    *(v5 + 12) = 2082;
    v0[19] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v8 = sub_25804A120();
    v10 = sub_258032C5C(v8, v9, v18);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_257FD4000, v3, v4, "%{public}s - Failed with error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v6, -1, -1);
    MEMORY[0x259C77210](v5, -1, -1);
  }

  v0[18] = v1;
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v12 = sub_25804A120();
  v14 = v13;
  sub_258036E5C();
  swift_allocError();
  *v15 = v12;
  *(v15 + 8) = v14;
  *(v15 + 16) = 7;
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_25802D524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = type metadata accessor for AppRecordLookalike(0);
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25802D62C, 0, 0);
}

uint64_t sub_25802D62C()
{
  v1 = v0[22];
  swift_beginAccess();
  v2 = sub_257FDA958(v1 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v4 = v0[5];
  if (v4)
  {
    v0[30] = __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    type metadata accessor for AppConfigDatabaseImpl(0);
    sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
    v5 = sub_25804A230();
    v7 = v6;
    v2 = sub_25802D730;
    v4 = v5;
    v3 = v7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v2, v4, v3);
}

uint64_t sub_25802D730()
{
  sub_257FE10F0(v0[23], v0[24], v0[29]);
  v0[31] = 0;

  return MEMORY[0x2822009F8](sub_25802D7C4, 0, 0);
}

uint64_t sub_25802D7C4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_257FDA958(v2, v1, &qword_27F915280, &qword_25804ED30);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v5 = *(v0 + 224);
    sub_257FDAB84(*(v0 + 232), &qword_27F915280, &qword_25804ED30);
    sub_257FDAB84(v5, &qword_27F915280, &qword_25804ED30);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 248);
    v9 = *(v0 + 216);
    v10 = *(v0 + 200);
    sub_258037D4C(*(v0 + 224), v9, type metadata accessor for AppRecordLookalike);
    sub_25801E298(*(v9 + *(v10 + 20)), *(v9 + *(v10 + 20) + 8), v0 + 56);
    if (v8)
    {

      v11 = *(v0 + 176);
      *(v0 + 160) = xmmword_25804B2B0;
      result = sub_257FDA958(v11 + 32, v0 + 96, &qword_27F915AE0, &qword_25804EC98);
      v12 = *(v0 + 120);
      if (v12)
      {
        v13 = *__swift_project_boxed_opaque_existential_1((v0 + 96), v12);
        v14 = swift_task_alloc();
        *(v0 + 264) = v14;
        *v14 = v0;
        v14[1] = sub_25802DD2C;
        v15 = *(v0 + 216);

        return sub_257FDF19C(v15, v13, v0 + 160);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v16 = *(v0 + 216);
      v17 = *(v0 + 200);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v18 = (v16 + *(v17 + 24));
      v20 = *v18;
      v19 = v18[1];
      v21 = swift_task_alloc();
      *(v0 + 256) = v21;
      *v21 = v0;
      v21[1] = sub_25802DB0C;

      return sub_257FD5CFC(v20, v19);
    }
  }

  return result;
}

uint64_t sub_25802DA84()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25802DB0C()
{

  if (v0)
  {

    v1 = sub_2580381C8;
  }

  else
  {
    v1 = sub_25802DC24;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_25802DC24()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  *(v0 + 160) = xmmword_25804B2B0;
  result = sub_257FDA958(*(v0 + 176) + 32, v0 + 96, &qword_27F915AE0, &qword_25804EC98);
  v2 = *(v0 + 120);
  if (v2)
  {
    v3 = *__swift_project_boxed_opaque_existential_1((v0 + 96), v2);
    v4 = swift_task_alloc();
    *(v0 + 264) = v4;
    *v4 = v0;
    v4[1] = sub_25802DD2C;
    v5 = *(v0 + 216);

    return sub_257FDF19C(v5, v3, v0 + 160);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25802DD2C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_25802E000;
  }

  else
  {
    v2 = sub_25802DE40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25802DE40()
{
  v1 = v0[22];
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  if (*(v1 + 72))
  {
    v3 = v0[34];
    v4 = v0[27];
    v5 = v0[20];
    v6 = v0[21];

    v7 = sub_25801B81C(v4, v5, v6);
    v10 = v0[29];
    v11 = v0[27];
    if (v3)
    {
      v12 = v7;
      v13 = v8;
      v14 = v9;

      sub_25801ACE8();
      swift_allocError();
      *v15 = v12;
      *(v15 + 8) = v13;
      *(v15 + 16) = v14;
      sub_257FDAB84(v10, &qword_27F915280, &qword_25804ED30);
    }

    else
    {
      sub_257FDAB84(v0[29], &qword_27F915280, &qword_25804ED30);
    }

    sub_258037DB4(v11, type metadata accessor for AppRecordLookalike);
    sub_257FDAAA0(v0[20], v0[21]);

    v16 = v0[1];

    return v16();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25802E000()
{
  v1 = v0[27];
  sub_257FDAB84(v0[29], &qword_27F915280, &qword_25804ED30);
  sub_258037DB4(v1, type metadata accessor for AppRecordLookalike);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_257FDAAA0(v0[20], v0[21]);

  v2 = v0[1];

  return v2();
}

void sub_25802E0C8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_258049A20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = sub_25801BF90(2);
  if (!v14)
  {
    v19 = 0;
    v20 = 0xF000000000000000;
LABEL_16:
    v35 = *a2;
    v36 = a2[1];
    *a2 = v19;
    a2[1] = v20;
    sub_257FDAAA0(v35, v36);
    return;
  }

  v37 = v7;
  v38 = v5;
  v39 = v4;
  v40 = v2;
  v41 = v14;
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258037F14(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  v15 = sub_258049EE0();

  if (!v15)
  {
    v19 = 0;
    v20 = 0xF000000000000000;
    goto LABEL_16;
  }

  v41 = v15;
  swift_getKeyPath();
  sub_258037F14(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);

  sub_258049A90();

  swift_getKeyPath();
  sub_257FEC568();
  sub_258049F00();

  v16 = type metadata accessor for DataPersistenceValue(0);
  v17 = (*(*(v16 - 8) + 48))(v13, 1, v16);
  v18 = v40;
  if (v17 == 1)
  {

    v19 = 0;
    v20 = 0xF000000000000000;
LABEL_15:
    sub_257FDAB84(v13, &qword_27F915268, &qword_25804F1E0);
    goto LABEL_16;
  }

  sub_257FDA958(v13, v11, &qword_27F915268, &qword_25804F1E0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v19 = *v11;
    v20 = v11[1];
    goto LABEL_15;
  }

  v22 = v37;
  v21 = v38;
  v23 = v39;
  (*(v38 + 32))(v37, v11, v39);
  v24 = sub_258049A30();
  if (!v18)
  {
    v19 = v24;
    v20 = v25;

    (*(v21 + 8))(v22, v23);
    goto LABEL_15;
  }

  (*(v21 + 8))(v22, v23);
  sub_257FDAB84(v13, &qword_27F915268, &qword_25804F1E0);
  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v26 = sub_258049D30();
  __swift_project_value_buffer(v26, qword_27F919DE8);
  v27 = v18;
  v28 = sub_258049D10();
  v29 = sub_25804A2D0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41 = v32;
    *v30 = 136446466;
    *(v30 + 4) = sub_258032C5C(0xD000000000000018, 0x80000002580512F0, &v41);
    *(v30 + 12) = 2114;
    v33 = v18;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v34;
    *v31 = v34;
    _os_log_impl(&dword_257FD4000, v28, v29, "%{public}s - could not read legacy app config from file: %{public}@", v30, 0x16u);
    sub_257FDAB84(v31, &qword_27F915248, &qword_25804B388);
    MEMORY[0x259C77210](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x259C77210](v32, -1, -1);
    MEMORY[0x259C77210](v30, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_25802E704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_257FDA958(a3, v22 - v9, &qword_27F915AF8, &qword_25804FCD0);
  v11 = sub_25804A270();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_257FDAB84(v10, &qword_27F915AF8, &qword_25804FCD0);
  }

  else
  {
    sub_25804A260();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25804A230();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25804A130() + 32;

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

      sub_257FDAB84(a3, &qword_27F915AF8, &qword_25804FCD0);

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

  sub_257FDAB84(a3, &qword_27F915AF8, &qword_25804FCD0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t ManagedAppsServer.getAllAppConfigState()()
{
  v1[34] = v0;
  v2 = sub_258049C20();
  v1[35] = v2;
  v1[36] = *(v2 - 8);
  v1[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0);
  v1[38] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v1[39] = v3;
  v1[40] = *(v3 - 8);
  v1[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25802EB10, 0, 0);
}

uint64_t sub_25802EB10()
{
  v15 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  __swift_project_value_buffer(v1, qword_27F919E48);
  v2 = sub_258049D10();
  v3 = sub_25804A2C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_258032C5C(0xD000000000000016, 0x8000000258051150, &v14);
    _os_log_impl(&dword_257FD4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x259C77210](v5, -1, -1);
    MEMORY[0x259C77210](v4, -1, -1);
  }

  v6 = v0[34];
  v0[42] = sub_258036FA4(MEMORY[0x277D84F90], &qword_27F915B48, &qword_25804F138);
  swift_beginAccess();
  v7 = sub_257FDA958(v6 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v9 = v0[5];
  if (v9)
  {
    v0[43] = *__swift_project_boxed_opaque_existential_1(v0 + 2, v9);
    type metadata accessor for AppConfigDatabaseImpl(0);
    sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
    v10 = sub_25804A230();
    v12 = v11;
    v7 = sub_25802ED50;
    v9 = v10;
    v8 = v12;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v7, v9, v8);
}

uint64_t sub_25802ED50()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v0[44] = type metadata accessor for AppRecord(0);
  v0[45] = sub_258037F14(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049E80();
  v0[46] = sub_25801CAC0(v1, type metadata accessor for AppRecord, &qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v0[47] = 0;
  (*(v0[40] + 8))(v0[41], v0[39]);

  return MEMORY[0x2822009F8](sub_25802EF0C, 0, 0);
}

uint64_t sub_25802EF0C()
{
  v100 = v0;
  v1 = *(v0 + 368);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v1 >> 62)
  {
    goto LABEL_128;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_129:

    v64 = objc_allocWithZone(sub_258049B60());
    v65 = sub_258049B50();

    v66 = *(v0 + 8);

    return v66(v65);
  }

LABEL_3:
  v76 = v1 & 0xC000000000000001;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  v1 = 0;
  v69 = v3;
  v70 = *(v0 + 376);
  v81 = (*(v0 + 288) + 104);
  v71 = *MEMORY[0x277D25A88];
  v68 = *MEMORY[0x277D25A80];
  v80 = *MEMORY[0x277D25A90];
  v72 = *(v0 + 336);
  v75 = v2;
  while (1)
  {
    if (v76)
    {
      v4 = MEMORY[0x259C768B0](v1, *(v0 + 368));
      v5 = __OFADD__(v1++, 1);
      if (v5)
      {
        goto LABEL_126;
      }
    }

    else
    {
      if (v1 >= *(v69 + 16))
      {
        goto LABEL_127;
      }

      v5 = __OFADD__(v1++, 1);
      if (v5)
      {
        goto LABEL_126;
      }
    }

    v79 = v1;
    *(v0 + 176) = v4;
    v6 = v4;
    swift_getKeyPath();
    sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
    sub_258049A90();

    swift_getKeyPath();
    sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
    sub_258049F00();

    if (!*(v0 + 88))
    {
      goto LABEL_27;
    }

    v77 = *(v0 + 88);
    v73 = *(v0 + 80);
    *(v0 + 184) = v6;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    if (*(v0 + 169))
    {
      break;
    }

LABEL_5:
    v1 = v79;
    if (v79 == v75)
    {
      goto LABEL_129;
    }
  }

  v7 = *(v0 + 352);
  v74 = v6;
  *(v0 + 192) = v6;
  v8 = off_2869384B8(v7, &off_2869384B0);
  v9 = v8;
  if (!(v8 >> 62))
  {
    v1 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_16;
    }

LABEL_31:

    v93 = 0;
    goto LABEL_32;
  }

  v1 = sub_25804A480();
  if (!v1)
  {
    goto LABEL_31;
  }

LABEL_16:
  v10 = 0;
  v97 = v1;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v93 = MEMORY[0x259C768B0](v10, v9);
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_123;
      }
    }

    else
    {
      if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_124;
      }

      v93 = *(v9 + 8 * v10 + 32);

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_123;
      }
    }

    *(v0 + 200) = v93;
    swift_getKeyPath();
    sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
    sub_258049A90();

    swift_getKeyPath();
    sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
    sub_258049F00();

    v12 = sub_25804A4C0();

    if (v12 == 1)
    {
      break;
    }

    v13 = sub_25804A560();

    if (v13)
    {
      goto LABEL_29;
    }

    ++v10;
    v1 = v97;
    if (v11 == v97)
    {
      goto LABEL_31;
    }
  }

LABEL_29:

LABEL_32:
  *(v0 + 208) = v74;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v14 = type metadata accessor for ExtensionRecord(0);
  sub_257FDAEC0();
  v94 = v14;
  sub_258049EF0();

  v1 = *(v0 + 216);
  v99[0] = MEMORY[0x277D84F90];
  if (!(v1 >> 62))
  {
    v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_34;
    }

    goto LABEL_62;
  }

  v15 = sub_25804A480();
  if (!v15)
  {
LABEL_62:
    v27 = MEMORY[0x277D84F90];
LABEL_63:

    if (v93)
    {
      sub_25803768C(v93);
      v28 = v27;
      v29 = v27 & 0x4000000000000000;
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_104;
      }

      goto LABEL_70;
    }

    v28 = v27;
    v29 = v27 & 0x4000000000000000;
    if ((v27 & 0x8000000000000000) != 0 || v29)
    {
      v63 = sub_25804A480();
      v28 = v27;
      if (v63)
      {
LABEL_69:
        if ((v28 & 0x8000000000000000) != 0)
        {
LABEL_104:
          v56 = v28;
          v57 = sub_25804A480();
          v28 = v56;
          v30 = v57;
          if (!v57)
          {
LABEL_105:

            v1 = MEMORY[0x277D84F90];
LABEL_106:
            if (*(v1 + 16))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B00, &qword_25804EEA8);
              v58 = sub_25804A4B0();
            }

            else
            {
              v58 = MEMORY[0x277D84F98];
            }

            v99[0] = v58;

            v18 = v70;
            sub_258035F00(v59, 1, v99);
            if (v70)
            {
              goto LABEL_117;
            }

            v60 = objc_allocWithZone(sub_258049B80());
            v61 = sub_258049B70();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v99[0] = v72;
            sub_258035348(v61, v73, v77, isUniquelyReferenced_nonNull_native, &qword_27F915B48, &qword_25804F138);

            v70 = 0;
            v72 = v99[0];
            goto LABEL_5;
          }

LABEL_72:
          v31 = v28;
          v99[0] = MEMORY[0x277D84F90];
          v32 = sub_258033264(0, v30 & ~(v30 >> 63), 0);
          if (v30 < 0)
          {
            __break(1u);
            return MEMORY[0x2821FEBD8](v32, v33, v34, v35, v36);
          }

          v37 = 0;
          v1 = v99[0];
          v38 = v31;
          v84 = off_2869384A8;
          v85 = v31 & 0xC000000000000001;
          v78 = v31 + 32;
          v82 = v30;
          v83 = v31;
          while (1)
          {
            if (__OFADD__(v37, 1))
            {
              goto LABEL_122;
            }

            v90 = v37 + 1;
            v92 = v1;
            if (v85)
            {
              v39 = MEMORY[0x259C768B0]();
            }

            else
            {
              if (v37 >= *(v38 + 16))
              {
                goto LABEL_125;
              }

              v39 = *(v78 + 8 * v37);
            }

            *(v0 + 240) = v39;
            swift_getKeyPath();
            sub_258037F14(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
            sub_258049A90();

            swift_getKeyPath();
            sub_258037F14(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
            sub_258049F00();

            v86 = *(v0 + 136);
            v88 = *(v0 + 128);
            *(v0 + 248) = v39;
            v40 = (v84)(v94);
            v18 = v40;
            if (v40 >> 62)
            {
              v41 = sub_25804A480();
              if (!v41)
              {
LABEL_98:

                v47 = *v81;
                goto LABEL_99;
              }
            }

            else
            {
              v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v41)
              {
                goto LABEL_98;
              }
            }

            v42 = 0;
            v96 = v41;
            while (1)
            {
              if ((v18 & 0xC000000000000001) != 0)
              {
                v43 = MEMORY[0x259C768B0](v42, v18);
                v44 = v42 + 1;
                if (__OFADD__(v42, 1))
                {
                  goto LABEL_115;
                }
              }

              else
              {
                if (v42 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_116;
                }

                v43 = *(v18 + 8 * v42 + 32);

                v44 = v42 + 1;
                if (__OFADD__(v42, 1))
                {
                  goto LABEL_115;
                }
              }

              *(v0 + 256) = v43;
              swift_getKeyPath();
              sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
              sub_258049A90();

              swift_getKeyPath();
              sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
              sub_258049F00();

              v45 = sub_25804A4C0();

              if (v45 == 1)
              {
                break;
              }

              v46 = sub_25804A560();

              if (v46)
              {
                goto LABEL_93;
              }

              ++v42;
              if (v44 == v96)
              {
                goto LABEL_98;
              }
            }

LABEL_93:

            *(v0 + 264) = v43;
            swift_getKeyPath();
            sub_258049A90();

            swift_getKeyPath();
            sub_257FEE6B4(&qword_27F915600, &qword_27F915608, &qword_25804BDB0);
            sub_258049F00();

            v47 = *v81;
            if ((*(v0 + 168) & 1) == 0)
            {
              v48 = *(v0 + 296);
              v49 = *(v0 + 280);
              if (*(v0 + 160))
              {
                v50 = v71;
              }

              else
              {
                v50 = v68;
              }

              goto LABEL_100;
            }

LABEL_99:
            v48 = *(v0 + 296);
            v49 = *(v0 + 280);
            v50 = v80;
LABEL_100:
            v47(v48, v50, v49);
            v51 = objc_allocWithZone(sub_258049BA0());
            v52 = sub_258049B90();

            v1 = v92;
            v99[0] = v92;
            v54 = *(v92 + 16);
            v53 = *(v92 + 24);
            if (v54 >= v53 >> 1)
            {
              sub_258033264((v53 > 1), v54 + 1, 1);
              v1 = v99[0];
            }

            *(v1 + 16) = v54 + 1;
            v55 = (v1 + 24 * v54);
            v55[4] = v88;
            v55[5] = v86;
            v55[6] = v52;
            v37 = v90;
            v38 = v83;
            if (v90 == v82)
            {

              goto LABEL_106;
            }
          }
        }

LABEL_70:
        if (!v29)
        {
          v30 = *(v28 + 16);
          if (v30)
          {
            goto LABEL_72;
          }

          goto LABEL_105;
        }

        goto LABEL_104;
      }
    }

    else if (*(v27 + 16))
    {
      goto LABEL_69;
    }

LABEL_27:

    goto LABEL_5;
  }

LABEL_34:
  v16 = 0;
  v95 = v1 & 0xC000000000000001;
  v91 = v1 & 0xFFFFFFFFFFFFFF8;
  v89 = v1;
  v87 = v15;
  while (1)
  {
    if (v95)
    {
      v17 = MEMORY[0x259C768B0](v16, v1);
      v5 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v5)
      {
        goto LABEL_120;
      }
    }

    else
    {
      if (v16 >= *(v91 + 16))
      {
        goto LABEL_121;
      }

      v5 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v5)
      {
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
        v2 = sub_25804A480();
        if (!v2)
        {
          goto LABEL_129;
        }

        goto LABEL_3;
      }
    }

    v98 = v18;
    *(v0 + 224) = v17;
    v19 = off_2869384A8(v94, &off_2869384A0);
    v20 = v19;
    if (!(v19 >> 62))
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        break;
      }

      goto LABEL_35;
    }

    v21 = sub_25804A480();
    if (v21)
    {
      break;
    }

LABEL_35:

LABEL_36:
    v16 = v98;
    v1 = v89;
    if (v98 == v87)
    {
      v27 = v99[0];
      goto LABEL_63;
    }
  }

  v22 = 0;
  while ((v20 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x259C768B0](v22, v20);
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_113;
    }

LABEL_46:
    *(v0 + 232) = v23;
    v18 = &unk_25804EDF8;
    swift_getKeyPath();
    sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
    sub_258049A90();

    swift_getKeyPath();
    sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
    sub_258049F00();

    v25 = sub_25804A4C0();

    if (v25 == 1)
    {

LABEL_54:

      sub_25804A410();
      sub_25804A440();
      sub_25804A450();
      sub_25804A420();
      goto LABEL_36;
    }

    v26 = sub_25804A560();

    if (v26)
    {
      goto LABEL_54;
    }

    ++v22;
    if (v24 == v21)
    {
      goto LABEL_35;
    }
  }

  if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_114;
  }

  v23 = *(v20 + 8 * v22 + 32);

  v24 = v22 + 1;
  if (!__OFADD__(v22, 1))
  {
    goto LABEL_46;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  v33 = "Swift/Dictionary.swift";
  v32 = v18;
  v34 = 22;
  v35 = 1;
  v36 = 490;

  return MEMORY[0x2821FEBD8](v32, v33, v34, v35, v36);
}

uint64_t sub_258030020()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2580300AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_257FDAFFC;

  return ManagedAppsServer.setAppConfig(recordID:appConfigRecord:persona:)(a1, a2, a3, a4, a5);
}

uint64_t sub_258030174(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_257FDAFFC;

  return ManagedAppsServer.removeAppConfig(recordID:)(a1, a2);
}

uint64_t sub_25803021C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_257FDAFFC;

  return ManagedAppsServer.updateAppBundleID(for:bundleID:)(a1, a2, a3, a4);
}

uint64_t sub_2580302DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_257FDAFFC;

  return ManagedAppsServer.updateAppCodeIdentity(for:appCodeIdentity:extensionCodeIdentities:)(a1, a2, a3, a4);
}

uint64_t sub_25803039C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_257FDAFFC;

  return sub_25802AA3C(a1, a2, 1);
}

uint64_t sub_258030448(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_257FDAFFC;

  return ManagedAppsServer.disableAppConfig(for:)(a1, a2);
}

uint64_t sub_2580304F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_257FDAFFC;

  return ManagedAppsServer.completeRemovalOfAppConfig(for:)(a1, a2);
}

uint64_t sub_258030598()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258038214;

  return ManagedAppsServer.getAllAppConfigState()();
}

uint64_t ManagedAppsServer.touch()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257FDAFFC;

  return sub_2580378A4();
}

uint64_t sub_2580306E8()
{
  v1 = v0[25];
  swift_beginAccess();
  result = sub_257FDA958(v1 + 32, (v0 + 12), &qword_27F915AE0, &qword_25804EC98);
  v3 = v0[15];
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 12, v3);
    v4 = swift_task_alloc();
    v0[26] = v4;
    *v4 = v0;
    v4[1] = sub_2580307C0;

    return sub_257FE4DCC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2580307C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_2580308D4;
  }

  else
  {
    v4 = sub_258030B54;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2580308D4()
{
  v22 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_258032C5C(0x61746144706D7564, 0xEE00292865736162, v21);
    *(v7 + 12) = 2082;
    v0[24] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v10 = sub_25804A120();
    v12 = sub_258032C5C(v10, v11, v21);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v13 = v0[28];
  v0[23] = v13;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v15 = sub_25804A120();
  v17 = v16;
  sub_258036E5C();
  swift_allocError();
  *v18 = v15;
  *(v18 + 8) = v17;
  *(v18 + 16) = 9;
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_258030B54()
{
  v1 = v0[25];
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B08, &qword_25804EEC8);
  v2 = swift_allocObject();
  v0[29] = v2;
  *(v2 + 16) = xmmword_25804B660;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  v0[30] = inited;
  *(inited + 16) = xmmword_25804B660;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x8000000258051170;
  v4 = *(v1 + 80);
  v0[31] = v4;

  return MEMORY[0x2822009F8](sub_258030C3C, v4, 0);
}

uint64_t sub_258030C3C()
{
  v9 = v0;
  v1 = *(v0 + 248);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_258032BD8(*(v2 + 16), 0);
    v5 = sub_2580363CC(&v8, v4 + 4, v3, v2);
    v6 = v8;

    sub_257FF43E0(v6);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  *(v0 + 256) = v4;

  return MEMORY[0x2822009F8](sub_258030D4C, 0, 0);
}

uint64_t sub_258030D4C()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[27];
  *(v3 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B10, &qword_25804EED8);
  *(v3 + 48) = v1;
  v5 = sub_258036B88(v3);
  swift_setDeallocating();
  sub_257FDAB84(v3 + 32, &qword_27F915AA8, &qword_25804EEE0);
  *(v2 + 32) = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v2, 0x6E6F6D656144202DLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  result = v4;
  if (v4)
  {
    v8 = v0[1];

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ManagedAppsServer.eraseDatabase()()
{
  *(v1 + 160) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915220, &qword_25804EC90);
  *(v1 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258030EE8, 0, 0);
}

uint64_t sub_258030EE8()
{
  v1 = v0[20];
  swift_beginAccess();
  v2 = sub_257FDA958(v1 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v4 = v0[5];
  if (v4)
  {
    v0[22] = __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v0[23] = type metadata accessor for AppConfigDatabaseImpl(0);
    sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
    v5 = sub_25804A230();
    v7 = v6;
    v2 = sub_258030FF0;
    v4 = v5;
    v3 = v7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v2, v4, v3);
}

uint64_t sub_258030FF0()
{
  sub_258049E60();
  *(v0 + 192) = 0;

  return MEMORY[0x2822009F8](sub_258031090, 0, 0);
}

uint64_t sub_258031090()
{
  v28 = v0;
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = *(v1 + 16);
  if (*(v1 + 24))
  {
    v3 = 1;
  }

  else
  {
    sub_258049B10();
    v3 = 0;
  }

  v4 = v0[24];
  v5 = v0[21];
  v6 = sub_258049A20();
  (*(*(v6 - 8) + 56))(v5, v3, 1, v6);
  v7 = sub_257FEB5A8(v2, v5, 0);
  if (v4)
  {
    v8 = v4;
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v9 = sub_258049D30();
    __swift_project_value_buffer(v9, qword_27F919E48);
    v10 = v4;
    v11 = sub_258049D10();
    v12 = sub_25804A2D0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27[0] = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_258032C5C(0x7461446573617265, 0xEF29286573616261, v27);
      *(v13 + 12) = 2082;
      v0[19] = v8;
      v15 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
      v16 = sub_25804A120();
      v18 = sub_258032C5C(v16, v17, v27);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_257FD4000, v11, v12, "%{public}s - Failed with error: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v14, -1, -1);
      MEMORY[0x259C77210](v13, -1, -1);
    }

    v0[18] = v8;
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v20 = sub_25804A120();
    v22 = v21;
    sub_258036E5C();
    swift_allocError();
    *v23 = v20;
    *(v23 + 8) = v22;
    *(v23 + 16) = 10;
    swift_willThrow();

    v24 = v0[1];
  }

  else
  {
    v25 = v0[20];
    v0[10] = v0[23];
    v0[11] = &off_286937E20;
    v0[7] = v7;
    swift_beginAccess();
    sub_258036DEC((v0 + 7), v25 + 32);
    swift_endAccess();

    v24 = v0[1];
  }

  return v24();
}

uint64_t sub_2580313F0()
{
  v20 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[24];
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0x7461446573617265, 0xEF29286573616261, v19);
    *(v6 + 12) = 2082;
    v0[19] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v9 = sub_25804A120();
    v11 = sub_258032C5C(v9, v10, v19);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v0[18] = v1;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v13 = sub_25804A120();
  v15 = v14;
  sub_258036E5C();
  swift_allocError();
  *v16 = v13;
  *(v16 + 8) = v15;
  *(v16 + 16) = 10;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_258031674()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257FDAFFC;

  return sub_2580378A4();
}

uint64_t sub_258031714()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2580317A4;

  return ManagedAppsServer.dumpDatabase()();
}

uint64_t sub_2580317A4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2580318A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257FD8590;

  return ManagedAppsServer.eraseDatabase()();
}

uint64_t sub_258031934()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257FD8590;

  return sub_2580319C4();
}

uint64_t sub_2580319C4()
{
  v1[12] = v0;
  v2 = type metadata accessor for AppRecordLookalike(0);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258031A9C, 0, 0);
}

uint64_t sub_258031A9C()
{
  v1 = v0[12];
  swift_beginAccess();
  result = sub_257FDA958(v1 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v3 = v0[5];
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_258031B74;

    return sub_257FE210C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258031B74(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_258031FD0;
  }

  else
  {
    v4 = sub_258031C88;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_258031C88()
{
  v27 = v0;
  v1 = *(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = *(v1 + 16);
  *(v0 + 168) = v2;
  v3 = *(v0 + 152);
  if (v2)
  {
    v4 = *(v0 + 112);
    v5 = *(v4 + 80);
    *(v0 + 216) = v5;
    *(v0 + 176) = *(v4 + 72);
    *(v0 + 184) = 0;
    sub_258037CE4(v3 + ((v5 + 32) & ~v5), *(v0 + 136), type metadata accessor for AppRecordLookalike);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v8 = sub_258049D30();
    *(v0 + 192) = __swift_project_value_buffer(v8, qword_27F919E48);
    sub_258037CE4(v7, v6, type metadata accessor for AppRecordLookalike);
    v9 = sub_258049D10();
    v10 = sub_25804A2B0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 128);
    if (v11)
    {
      v13 = *(v0 + 104);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446466;
      *(v14 + 4) = sub_258032C5C(0xD000000000000017, 0x8000000258051330, &v26);
      *(v14 + 12) = 2082;
      v16 = (v12 + *(v13 + 24));
      v17 = *v16;
      v18 = v16[1];

      sub_258037DB4(v12, type metadata accessor for AppRecordLookalike);
      v19 = sub_258032C5C(v17, v18, &v26);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_257FD4000, v9, v10, "%{public}s - Found pending removal %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v15, -1, -1);
      MEMORY[0x259C77210](v14, -1, -1);
    }

    else
    {

      sub_258037DB4(v12, type metadata accessor for AppRecordLookalike);
    }

    v22 = (*(v0 + 136) + *(*(v0 + 104) + 24));
    v24 = *v22;
    v23 = v22[1];
    v25 = swift_task_alloc();
    *(v0 + 200) = v25;
    *v25 = v0;
    v25[1] = sub_258032200;

    return ManagedAppsServer.completeRemovalOfAppConfig(for:)(v24, v23);
  }

  else
  {

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_258031FD0()
{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_258032C5C(0xD000000000000017, 0x8000000258051330, &v16);
    *(v8 + 12) = 2082;
    v0[10] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v11 = sub_25804A120();
    v13 = sub_258032C5C(v11, v12, &v16);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v9, -1, -1);
    MEMORY[0x259C77210](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_258032200()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_258032674;
  }

  else
  {
    v2 = sub_258032314;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258032314()
{
  v26 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 184) + 1;
  sub_258037DB4(*(v0 + 136), type metadata accessor for AppRecordLookalike);
  if (v2 == v1)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 184) + 1;
    *(v0 + 184) = v6;
    sub_258037CE4(*(v0 + 152) + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + v5 * v6, *(v0 + 136), type metadata accessor for AppRecordLookalike);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v9 = sub_258049D30();
    *(v0 + 192) = __swift_project_value_buffer(v9, qword_27F919E48);
    sub_258037CE4(v8, v7, type metadata accessor for AppRecordLookalike);
    v10 = sub_258049D10();
    v11 = sub_25804A2B0();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 128);
    if (v12)
    {
      v14 = *(v0 + 104);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136446466;
      *(v15 + 4) = sub_258032C5C(0xD000000000000017, 0x8000000258051330, &v25);
      *(v15 + 12) = 2082;
      v17 = (v13 + *(v14 + 24));
      v18 = *v17;
      v19 = v17[1];

      sub_258037DB4(v13, type metadata accessor for AppRecordLookalike);
      v20 = sub_258032C5C(v18, v19, &v25);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_257FD4000, v10, v11, "%{public}s - Found pending removal %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v16, -1, -1);
      MEMORY[0x259C77210](v15, -1, -1);
    }

    else
    {

      sub_258037DB4(v13, type metadata accessor for AppRecordLookalike);
    }

    v21 = (*(v0 + 136) + *(*(v0 + 104) + 24));
    v23 = *v21;
    v22 = v21[1];
    v24 = swift_task_alloc();
    *(v0 + 200) = v24;
    *v24 = v0;
    v24[1] = sub_258032200;

    return ManagedAppsServer.completeRemovalOfAppConfig(for:)(v23, v22);
  }
}

uint64_t sub_258032674()
{
  v44 = v0;
  v1 = *(v0 + 208);
  sub_258037CE4(*(v0 + 136), *(v0 + 120), type metadata accessor for AppRecordLookalike);
  v2 = v1;
  v3 = sub_258049D10();
  v4 = sub_25804A2D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 208);
    v6 = *(v0 + 120);
    v7 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v43 = v9;
    *v8 = 136446722;
    *(v8 + 4) = sub_258032C5C(0xD000000000000017, 0x8000000258051330, &v43);
    *(v8 + 12) = 2082;
    v10 = (v6 + *(v7 + 24));
    v11 = *v10;
    v12 = v10[1];

    sub_258037DB4(v6, type metadata accessor for AppRecordLookalike);
    v13 = sub_258032C5C(v11, v12, &v43);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2082;
    *(v0 + 88) = v5;
    v14 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v15 = sub_25804A120();
    v17 = sub_258032C5C(v15, v16, &v43);

    *(v8 + 24) = v17;
    _os_log_impl(&dword_257FD4000, v3, v4, "%{public}s - Failed to cleanup pending removal %{public}s: %{public}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v9, -1, -1);
    MEMORY[0x259C77210](v8, -1, -1);
  }

  else
  {
    v18 = *(v0 + 120);

    sub_258037DB4(v18, type metadata accessor for AppRecordLookalike);
  }

  v19 = *(v0 + 168);
  v20 = *(v0 + 184) + 1;
  sub_258037DB4(*(v0 + 136), type metadata accessor for AppRecordLookalike);
  if (v20 == v19)
  {

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = *(v0 + 176);
    v24 = *(v0 + 184) + 1;
    *(v0 + 184) = v24;
    sub_258037CE4(*(v0 + 152) + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + v23 * v24, *(v0 + 136), type metadata accessor for AppRecordLookalike);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 128);
    v26 = *(v0 + 136);
    v27 = sub_258049D30();
    *(v0 + 192) = __swift_project_value_buffer(v27, qword_27F919E48);
    sub_258037CE4(v26, v25, type metadata accessor for AppRecordLookalike);
    v28 = sub_258049D10();
    v29 = sub_25804A2B0();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 128);
    if (v30)
    {
      v32 = *(v0 + 104);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v33 = 136446466;
      *(v33 + 4) = sub_258032C5C(0xD000000000000017, 0x8000000258051330, &v43);
      *(v33 + 12) = 2082;
      v35 = (v31 + *(v32 + 24));
      v36 = *v35;
      v37 = v35[1];

      sub_258037DB4(v31, type metadata accessor for AppRecordLookalike);
      v38 = sub_258032C5C(v36, v37, &v43);

      *(v33 + 14) = v38;
      _os_log_impl(&dword_257FD4000, v28, v29, "%{public}s - Found pending removal %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v34, -1, -1);
      MEMORY[0x259C77210](v33, -1, -1);
    }

    else
    {

      sub_258037DB4(v31, type metadata accessor for AppRecordLookalike);
    }

    v39 = (*(v0 + 136) + *(*(v0 + 104) + 24));
    v41 = *v39;
    v40 = v39[1];
    v42 = swift_task_alloc();
    *(v0 + 200) = v42;
    *v42 = v0;
    v42[1] = sub_258032200;

    return ManagedAppsServer.completeRemovalOfAppConfig(for:)(v41, v40);
  }
}

void *sub_258032BD8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A78, &unk_25804E110);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_258032C5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_258032D28(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25801BC58(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_258032D28(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_258032E34(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25804A400();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_258032E34(uint64_t a1, unint64_t a2)
{
  v3 = sub_258032E80(a1, a2);
  sub_258032FB0(&unk_2869376A8);
  return v3;
}

void *sub_258032E80(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25803309C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25804A400();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25804A190();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25803309C(v10, 0);
        result = sub_25804A3A0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_258032FB0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_258033110(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25803309C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B70, &qword_25804F348);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_258033110(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B70, &qword_25804F348);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_258033204(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258033284(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_258033224(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258033390(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_258033244(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258033568(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_258033264(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25803369C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258033284(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A78, &unk_25804E110);
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

void *sub_258033390(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B38, &qword_25804F128);
  v10 = *(type metadata accessor for AppRecordLookalike(0) - 8);
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
  v15 = *(type metadata accessor for AppRecordLookalike(0) - 8);
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

void *sub_258033568(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B08, &qword_25804EEC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB8, &qword_25804EC40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25803369C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B50, &qword_25804F140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B58, &qword_25804F148);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2580337E4(uint64_t a1, uint64_t a2)
{
  sub_25804A600();
  sub_25804A150();
  v4 = sub_25804A620();

  return sub_258035550(a1, a2, v4);
}

double sub_25803385C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_2580337E4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_258035A58();
      v10 = v12;
    }

    sub_258019BBC((*(v10 + 56) + 32 * v8), a3);
    sub_258034B6C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_258033900@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2580337E4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_258035BFC();
      v10 = v12;
    }

    sub_257FDAA0C((*(v10 + 56) + 40 * v8), a3);
    sub_258034D1C(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2580339AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B18, &qword_25804F100);
  v34 = v4;
  result = sub_25804A4A0();
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

      sub_25804A600();
      sub_25804A150();
      result = sub_25804A620();
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

uint64_t sub_258033C54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B40, &qword_25804F130);
  v34 = v4;
  result = sub_25804A4A0();
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

      sub_25804A600();
      sub_25804A150();
      result = sub_25804A620();
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

uint64_t sub_258033EFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B30, &qword_25804F120);
  v34 = v4;
  result = sub_25804A4A0();
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

      sub_25804A600();
      sub_25804A150();
      result = sub_25804A620();
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

uint64_t sub_2580341A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AD8, &qword_25804EC50);
  v33 = v4;
  result = sub_25804A4A0();
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
        sub_258019BBC(v24, v34);
      }

      else
      {
        sub_25801BC58(v24, v34);
      }

      sub_25804A600();
      sub_25804A150();
      result = sub_25804A620();
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
      result = sub_258019BBC(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_25803445C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B68, &qword_25804F158);
  v33 = v4;
  result = sub_25804A4A0();
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_257FDAA0C(v24, v34);
      }

      else
      {
        sub_257FDA854(v24, v34);
      }

      sub_25804A600();
      sub_25804A150();
      result = sub_25804A620();
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
      result = sub_257FDAA0C(v34, *(v7 + 56) + 40 * v15);
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

uint64_t sub_258034720(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_25804A4A0();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_25804A600();
      sub_25804A150();
      result = sub_25804A620();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_2580349BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25804A360() + 1) & ~v5;
    do
    {
      sub_25804A600();

      sub_25804A150();
      v9 = sub_25804A620();

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

uint64_t sub_258034B6C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25804A360() + 1) & ~v5;
    do
    {
      sub_25804A600();

      sub_25804A150();
      v10 = sub_25804A620();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_258034D1C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25804A360() + 1) & ~v5;
    do
    {
      sub_25804A600();

      sub_25804A150();
      v11 = sub_25804A620();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_258034ED8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2580337E4(a2, a3);
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
      sub_2580339AC(v16, a4 & 1);
      v11 = sub_2580337E4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_25804A580();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_258035608();
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

uint64_t sub_258035068(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2580337E4(a2, a3);
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
      sub_258033C54(v16, a4 & 1);
      v11 = sub_2580337E4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_25804A580();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_258035778();
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

_OWORD *sub_2580351E4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2580337E4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_258035A58();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2580341A4(v16, a4 & 1);
    v11 = sub_2580337E4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_25804A580();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_258019BBC(a1, v22);
  }

  else
  {
    sub_2580354E4(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_258035348(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_2580337E4(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_258034720(v20, a4 & 1, a5, a6);
      v15 = sub_2580337E4(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_25804A580();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_258035DA4(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

_OWORD *sub_2580354E4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_258019BBC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_258035550(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25804A560())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_258035608()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B18, &qword_25804F100);
  v2 = *v0;
  v3 = sub_25804A490();
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

void *sub_258035778()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B40, &qword_25804F130);
  v2 = *v0;
  v3 = sub_25804A490();
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

void *sub_2580358E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B30, &qword_25804F120);
  v2 = *v0;
  v3 = sub_25804A490();
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

void *sub_258035A58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AD8, &qword_25804EC50);
  v2 = *v0;
  v3 = sub_25804A490();
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
        sub_25801BC58(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_258019BBC(v25, (*(v4 + 56) + v22));
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

void *sub_258035BFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B68, &qword_25804F158);
  v2 = *v0;
  v3 = sub_25804A490();
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
        v22 = 40 * v17;
        sub_257FDA854(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_257FDAA0C(v25, *(v4 + 56) + v22);
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

id sub_258035DA4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25804A490();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_258035F00(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_2580337E4(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v17) = v12;
  if (v9[3] < v16)
  {
    sub_258034720(v16, v5 & 1, &qword_27F915B00, &qword_25804EEA8);
    v11 = sub_2580337E4(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_25804A580();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_258035DA4(&qword_27F915B00, &qword_25804EEA8);
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_25804A3B0();
    MEMORY[0x259C76670](0xD00000000000001BLL, 0x8000000258051290);
    sub_25804A460();
    MEMORY[0x259C76670](39, 0xE100000000000000);
    sub_25804A470();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v17 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v5 = *(v17 - 2);
      v6 = *(v17 - 1);
      v27 = *v17;
      v28 = *a3;

      v10 = v27;
      v29 = sub_2580337E4(v5, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v7 = v30;
      if (v28[3] < v33)
      {
        sub_258034720(v33, 1, &qword_27F915B00, &qword_25804EEA8);
        v29 = sub_2580337E4(v5, v6);
        if ((v7 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v7)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v5;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v17 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t (*sub_2580362C4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C768B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2580381EC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_258036344(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C768B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2580363C4;
  }

  __break(1u);
  return result;
}

void *sub_2580363CC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_258036524(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = type metadata accessor for AppAssetResolverImpl(0);
  v30 = v10;
  v31 = &off_286937DB0;
  *&v29 = a1;
  v11 = *a5;
  v13 = sub_2580337E4(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_257FDAA0C(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_258035BFC();
    goto LABEL_7;
  }

  sub_25803445C(v16, a4 & 1);
  v22 = sub_2580337E4(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_25804A580();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_25803671C(v13, a2, a3, *v26, v19);

  return __swift_destroy_boxed_opaque_existential_1(&v29);
}

uint64_t sub_25803671C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = type metadata accessor for AppAssetResolverImpl(0);
  v17 = &off_286937DB0;
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_257FDAA0C(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_2580367CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B18, &qword_25804F100);
    v3 = sub_25804A4B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2580337E4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_2580368E4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_25804A170();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_258036980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B30, &qword_25804F120);
    v3 = sub_25804A4B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2580337E4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_258036A84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B40, &qword_25804F130);
    v3 = sub_25804A4B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2580337E4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_258036B88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AD8, &qword_25804EC50);
    v3 = sub_25804A4B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_257FDA958(v4, &v13, &qword_27F915AA8, &qword_25804EEE0);
      v5 = v13;
      v6 = v14;
      result = sub_2580337E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_258019BBC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_258036CB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B68, &qword_25804F158);
    v3 = sub_25804A4B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_257FDA958(v4, &v13, &unk_27F915B80, &qword_25804F3C8);
      v5 = v13;
      v6 = v14;
      result = sub_2580337E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_257FDAA0C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_258036DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AE0, &qword_25804EC98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_258036E5C()
{
  result = qword_27F915AF0;
  if (!qword_27F915AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915AF0);
  }

  return result;
}

uint64_t sub_258036EDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257FDAFFC;

  return sub_25802D524(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_258036FA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_25804A4B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2580337E4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_2580370D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRecordLookalike(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v51[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258049D00();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v51[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51[-1] - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v51[-1] - v15;
  if (*(a1 + *(v4 + 36)) == 1)
  {
    v17 = (a1 + *(v4 + 28));
    v19 = *v17;
    v18 = v17[1];
    if (!v18 && (sub_258049CE0() & 1) == 0)
    {
      return 1;
    }

    v20 = sub_258049CF0();
    if (v18)
    {
      if (v19 == v20 && v18 == v21)
      {

        return 1;
      }

      v23 = sub_25804A560();

      if (v23)
      {
        return 1;
      }
    }

    else
    {
    }

    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v35 = sub_258049D30();
    __swift_project_value_buffer(v35, qword_27F919E48);
    (*(v8 + 16))(v16, a2, v7);
    sub_258037CE4(a1, v6, type metadata accessor for AppRecordLookalike);
    v36 = sub_258049D10();
    v37 = sub_25804A2D0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v38 = 136446466;
      v39 = sub_258049CF0();
      v41 = v40;
      (*(v8 + 8))(v16, v7);
      v42 = sub_258032C5C(v39, v41, &v52);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      v43 = &v6[*(v4 + 28)];
      v44 = v43[1];
      v51[0] = *v43;
      v51[1] = v44;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915528, &qword_25804BFA0);
      v45 = sub_25804A120();
      v47 = v46;
      sub_258037DB4(v6, type metadata accessor for AppRecordLookalike);
      v48 = sub_258032C5C(v45, v47, &v52);

      *(v38 + 14) = v48;
      _os_log_impl(&dword_257FD4000, v36, v37, "Current persona (%{public}s) does not match expected persona %{public}s", v38, 0x16u);
      v49 = v50;
      swift_arrayDestroy();
      MEMORY[0x259C77210](v49, -1, -1);
      MEMORY[0x259C77210](v38, -1, -1);
    }

    else
    {

      sub_258037DB4(v6, type metadata accessor for AppRecordLookalike);
      (*(v8 + 8))(v16, v7);
    }
  }

  else
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v25 = sub_258049D30();
    __swift_project_value_buffer(v25, qword_27F919E48);
    v26 = *(v8 + 16);
    v26(v14, a2, v7);
    v27 = sub_258049D10();
    v28 = sub_25804A2E0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v51[0] = v30;
      *v29 = 136446210;
      v26(v11, v14, v7);
      v31 = sub_25804A120();
      v33 = v32;
      (*(v8 + 8))(v14, v7);
      v34 = sub_258032C5C(v31, v33, v51);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_257FD4000, v27, v28, "App record for client %{public}s is not active", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x259C77210](v30, -1, -1);
      MEMORY[0x259C77210](v29, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v14, v7);
    }
  }

  return 0;
}

uint64_t sub_25803768C(uint64_t a1)
{
  v2 = sub_258049C20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v9 = a1, swift_getKeyPath(), sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834), sub_258049A90(), , swift_getKeyPath(), sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4), sub_257FEE6B4(&qword_27F915600, &qword_27F915608, &qword_25804BDB0), sub_258049F00(), , v10 != 1))
  {
    if (v9)
    {
      v6 = MEMORY[0x277D25A88];
    }

    else
    {
      v6 = MEMORY[0x277D25A80];
    }

    (*(v3 + 104))(v5, *v6, v2);
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D25A90], v2);
  }

  v7 = objc_allocWithZone(sub_258049BA0());
  return sub_258049B90();
}

uint64_t sub_2580378C0()
{
  v9 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  __swift_project_value_buffer(v1, qword_27F919E48);
  v2 = sub_258049D10();
  v3 = sub_25804A2E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_258032C5C(0x29286863756F74, 0xE700000000000000, &v8);
    _os_log_impl(&dword_257FD4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x259C77210](v5, -1, -1);
    MEMORY[0x259C77210](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_258037B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257FD8590;

  return sub_25802D524(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_258037CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258037D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258037DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258037E40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_257FDAFFC;

  return sub_257FD97CC(v2, v3, v4, v5, v6);
}

uint64_t sub_258037F14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 56, 7);
}

uint64_t sub_258037FCC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_257FDAFFC;

  return sub_257FD84CC(v2, v3, v4, v5, v6);
}

uint64_t sub_2580380B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2580380F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257FD8590;

  return sub_258031934();
}

id sub_2580382A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAppsServiceDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_258038324()
{
  result = qword_27F915C10;
  if (!qword_27F915C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915C10);
  }

  return result;
}

uint64_t sub_258038378(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_serviceType))
  {
    v3 = sub_258049C40();
  }

  else
  {
    v3 = sub_258049C30();
  }

  v4 = v3;
  [a1 setExportedInterface_];

  v5 = *(v1 + OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_scope);
  v6 = *(v1 + OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_server);
  type metadata accessor for ManagedAppsServicer();
  swift_allocObject();

  v7 = a1;
  [v7 setExportedObject_];

  [v7 resume];
  return 1;
}

uint64_t get_enum_tag_for_layout_string_15ManagedAppsCore0aB12ServiceErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 0x10) != 0)
  {
    return (*a1 + 16);
  }

  else
  {
    return *(a1 + 16) & 0x1F;
  }
}

uint64_t sub_25803847C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF0 && *(a1 + 17))
  {
    return (*a1 + 240);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0x10)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2580384C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEF)
  {
    *(result + 16) = 0;
    *result = a2 - 240;
    *(result + 8) = 0;
    if (a3 >= 0xF0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF0)
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

uint64_t sub_258038508(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x10)
  {
    *result = a2 - 16;
    *(result + 8) = 0;
    LOBYTE(a2) = 16;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_258038534(unint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 200;
      break;
    case 2:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 201;
      break;
    case 3:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 202;
      break;
    case 4:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 203;
      break;
    case 5:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 204;
      break;
    case 6:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 205;
      break;
    case 7:
      sub_25804A3B0();
      MEMORY[0x259C76670](0xD00000000000003ALL, 0x80000002580515D0);
      MEMORY[0x259C76670](a1, a2);
      result = 206;
      break;
    case 8:
      sub_25804A3B0();
      MEMORY[0x259C76670](0xD000000000000032, 0x8000000258051590);
      MEMORY[0x259C76670](a1, a2);
      result = 207;
      break;
    case 9:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 300;
      break;
    case 10:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 301;
      break;
    case 11:
      sub_25804A3B0();
      MEMORY[0x259C76670](0xD000000000000042, 0x80000002580514E0);
      MEMORY[0x259C76670](a1, a2);
      result = 400;
      break;
    case 12:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 405;
      break;
    case 13:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 401;
      break;
    case 14:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 402;
      break;
    case 15:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 403;
      break;
    case 16:
      if (a1 > 1)
      {
        v6 = a1 ^ 2 | a2;
        v7 = 101;
        v8 = 404;
      }

      else
      {
        v6 = a1 | a2;
        v7 = 1;
        v8 = 102;
      }

      if (v6)
      {
        result = v8;
      }

      else
      {
        result = v7;
      }

      break;
    default:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 100;
      break;
  }

  return result;
}

uint64_t sub_258038BF0(uint64_t a1)
{
  v2 = sub_258038D90();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_258038C2C(uint64_t a1)
{
  v2 = sub_258038D90();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_258038C94()
{
  v1 = sub_258038534(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

unint64_t sub_258038CCC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25804B660;
  *(inited + 32) = sub_25804A110();
  *(inited + 40) = v5;
  sub_258038534(v1, v2, v3);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_258036B88(inited);
  swift_setDeallocating();
  sub_258038DE4(inited + 32);
  return v8;
}

unint64_t sub_258038D90()
{
  result = qword_27F915C80;
  if (!qword_27F915C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915C80);
  }

  return result;
}

uint64_t sub_258038DE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258038E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_258041D84(a3, v25 - v10);
  v12 = sub_25804A270();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_257FDAB84(v11, &qword_27F915AF8, &qword_25804FCD0);
  }

  else
  {
    sub_25804A260();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25804A230();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25804A130() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_257FDAB84(a3, &qword_27F915AF8, &qword_25804FCD0);

      return v23;
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

  sub_257FDAB84(a3, &qword_27F915AF8, &qword_25804FCD0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t static ManagedAppsPublicXPCProtocolError.publicError(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if (v10 == 11)
  {
    sub_258039248(v8, v9, 0xBu);
    v4 = MEMORY[0x277D25A98];
    goto LABEL_11;
  }

  if (v10 == 12)
  {
    sub_258039248(v8, v9, 0xCu);
LABEL_9:
    v4 = MEMORY[0x277D25AB0];
    goto LABEL_11;
  }

  if (v10 == 16 && __PAIR128__((v8 != 0) + v9 - 1, v8 - 1) < 2)
  {
    goto LABEL_9;
  }

  sub_258039248(v8, v9, v10);
LABEL_7:
  v4 = MEMORY[0x277D25AA0];
LABEL_11:
  v5 = *v4;
  v6 = sub_258049C50();
  return (*(*(v6 - 8) + 104))(a2, v5, v6);
}

uint64_t sub_258039248(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFu)
  {
  }

  return result;
}

uint64_t sub_258039260(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;

  v6 = sub_25804A100();
  v7 = [a2 valueForEntitlement_];

  if (v7)
  {
    sub_25804A350();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    sub_2580432A4(0, &qword_27F915CB0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      if ([v33 BOOLValue])
      {
        if (qword_27F915188 != -1)
        {
          swift_once();
        }

        v8 = sub_258049D30();
        __swift_project_value_buffer(v8, qword_27F919E48);
        v9 = sub_258049D10();
        v10 = sub_25804A2C0();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_257FD4000, v9, v10, "Caller entitled for app configuration operations", v11, 2u);
          MEMORY[0x259C77210](v11, -1, -1);
        }

        *(v4 + 32) = 1;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_257FDAB84(&v36, &qword_27F915AC8, &unk_25804EC30);
  }

  v12 = sub_25804A100();
  v13 = [a2 valueForEntitlement_];

  if (v13)
  {
    sub_25804A350();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    sub_2580432A4(0, &qword_27F915CB0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      if ([v33 BOOLValue])
      {
        if (qword_27F915188 != -1)
        {
          swift_once();
        }

        v14 = sub_258049D30();
        __swift_project_value_buffer(v14, qword_27F919E48);
        v15 = sub_258049D10();
        v16 = sub_25804A2C0();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_257FD4000, v15, v16, "Caller entitled for internal operations", v17, 2u);
          MEMORY[0x259C77210](v17, -1, -1);
        }

        *(v4 + 33) = 1;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_257FDAB84(&v36, &qword_27F915AC8, &unk_25804EC30);
  }

  [a2 auditToken];
  v18 = sub_258039828(v36, *(&v36 + 1), v37, *(&v37 + 1));
  v19 = *(v4 + 40);
  *(v4 + 40) = v18;

  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v20 = sub_258049D30();
  __swift_project_value_buffer(v20, qword_27F919E48);

  v21 = sub_258049D10();
  v22 = sub_25804A2C0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v36 = v24;
    *v23 = 136315138;
    v25 = *(v4 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915CA8, &qword_25804F8E8);
    v26 = sub_25804A120();
    v28 = sub_258032C5C(v26, v27, &v36);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_257FD4000, v21, v22, "Client code identity: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x259C77210](v24, -1, -1);
    MEMORY[0x259C77210](v23, -1, -1);
  }

  if (*(v4 + 40) || (*(v4 + 32) & 1) != 0 || (*(v4 + 33) & 1) != 0)
  {
  }

  else
  {
    v30 = sub_258049D10();
    v31 = sub_25804A2D0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_257FD4000, v30, v31, "Failed to get code identity for un-entitled caller", v32, 2u);
      MEMORY[0x259C77210](v32, -1, -1);
    }
  }

  return v4;
}

id sub_258039828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v40[1] = *MEMORY[0x277D85DE8];
  if (*(v4 + 33))
  {
    sub_2580432A4(0, &qword_27F915CA0, 0x277D03500);
    sub_25804A310();
    v11 = v10;
    sub_25804A300();
    if (v11 && v12)
    {
      v13 = objc_allocWithZone(MEMORY[0x277D034C8]);
      v14 = sub_25804A100();

      v15 = sub_25804A100();

      v16 = sub_25804A100();
      v17 = [v13 initWithCodeSigningID:v14 teamID:v15 path:v16];

      result = v17;
      if (*(v5 + 33))
      {
        return result;
      }
    }

    else
    {

      result = 0;
      if (*(v4 + 33))
      {
        return result;
      }
    }
  }

  else
  {
    v36 = a1;
    v37 = a2;
    v38 = a3;
    v39 = a4;
    result = [objc_opt_self() codeIdentityForAuditToken_];
    if (*(v4 + 33))
    {
      return result;
    }
  }

  if ((*(v5 + 32) & 1) == 0 && !result)
  {
    sub_2580432A4(0, &qword_27F915CA0, 0x277D03500);
    v19 = sub_25804A320();
    result = 0;
    if (v19)
    {
      v36 = a1;
      v37 = a2;
      v38 = a3;
      v39 = a4;
      v20 = [objc_opt_self() bundleIDFromAuditToken_];
      if (v20)
      {
        v21 = v20;
        v22 = sub_25804A110();
        v24 = v23;

        sub_25804A300();
        if (v24 && v25)
        {
          if (qword_27F915188 != -1)
          {
            swift_once();
          }

          v26 = sub_258049D30();
          __swift_project_value_buffer(v26, qword_27F919E48);

          v27 = sub_258049D10();
          v28 = sub_25804A2B0();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v40[0] = v30;
            *v29 = 136315138;
            *(v29 + 4) = sub_258032C5C(v22, v24, v40);
            _os_log_impl(&dword_257FD4000, v27, v28, "Overriding code identity for %s", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v30);
            MEMORY[0x259C77210](v30, -1, -1);
            MEMORY[0x259C77210](v29, -1, -1);
          }

          v31 = objc_allocWithZone(MEMORY[0x277D034C8]);
          v32 = sub_25804A100();

          v33 = sub_25804A100();

          v34 = sub_25804A100();
          v35 = [v31 initWithCodeSigningID:v32 teamID:v33 path:v34];

          return v35;
        }
      }

      else
      {
        sub_25804A300();
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_258039C20()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_258039C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_258049D00();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258039D48, 0, 0);
}

uint64_t sub_258039D48()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 16);
  sub_258049CC0();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258039ED4;
  v3 = *(v0 + 64);

  return ManagedAppsServer.getConfigDetailsData(clientIdentity:)(v3);
}

uint64_t sub_258039ED4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = v2;

  if (v2)
  {
    v5 = sub_25803A178;
  }

  else
  {
    v5 = sub_258039FEC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_258039FEC()
{
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  __swift_project_value_buffer(v1, qword_27F919E48);
  v2 = sub_258049D10();
  v3 = sub_25804A2C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_257FD4000, v2, v3, "getConfigDetailsData has data", v4, 2u);
    MEMORY[0x259C77210](v4, -1, -1);
  }

  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  v10 = v0[4];

  sub_257FECD7C(v6, v5);
  v10(v6, v5, 0);
  sub_257FDAAB4(v6, v5);
  sub_257FDAAB4(v6, v5);
  (*(v8 + 8))(v7, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_25803A178()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[12];
  v2 = v0[4];
  sub_258049C50();
  sub_258042A24();
  v3 = swift_allocError();
  static ManagedAppsPublicXPCProtocolError.publicError(_:)(v1, v4);
  v2(0, 0xF000000000000000, v3);

  v5 = v0[1];

  return v5();
}

void sub_25803A270(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_2580499A0();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_258049A40();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_25803A308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_258049D00();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25803A3CC, 0, 0);
}

uint64_t sub_25803A3CC()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 16);
  sub_258049CC0();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_25803A550;
  v3 = *(v0 + 64);

  return sub_258021900(1, v3);
}

uint64_t sub_25803A550(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_2580432EC;
  }

  else
  {
    v4 = sub_25803A664;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25803A664()
{
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  __swift_project_value_buffer(v1, qword_27F919E48);

  v2 = sub_258049D10();
  v3 = sub_25804A2C0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 80);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_257FD4000, v2, v3, "getPasswordIdentifiers: %ld", v6, 0xCu);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  else
  {
  }

  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 48);
  (*(v0 + 32))(*(v0 + 80), 0);

  (*(v8 + 8))(v7, v9);

  v10 = *(v0 + 8);

  return v10();
}

void sub_25803A818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_25804A1E0();
    if (a2)
    {
LABEL_3:
      v6 = sub_2580499A0();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_25803A8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_258049D00();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25803A980, 0, 0);
}

uint64_t sub_25803A980()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 16);
  sub_258049CC0();
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_25803AB10;
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);

  return ManagedAppsServer.getPassword(with:clientIdentity:)(v5, v4, v3);
}

uint64_t sub_25803AB10(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = sub_25803ACF4;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = sub_25803AC44;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25803AC44()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  (*(v0 + 48))(*(v0 + 112), *(v0 + 104), 0);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25803ACF4()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[12];
  v2 = v0[6];
  sub_258049C50();
  sub_258042A24();
  v3 = swift_allocError();
  static ManagedAppsPublicXPCProtocolError.publicError(_:)(v1, v4);
  v2(0, 0, v3);

  v5 = v0[1];

  return v5();
}

void sub_25803ADEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_25804A100();
    if (a3)
    {
LABEL_3:
      v7 = sub_2580499A0();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_25803AE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_258049D00();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25803AF40, 0, 0);
}

uint64_t sub_25803AF40()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 16);
  sub_258049CC0();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_25803B0C4;
  v3 = *(v0 + 64);

  return sub_258021900(2, v3);
}

uint64_t sub_25803B0C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_2580432EC;
  }

  else
  {
    v4 = sub_25803B1D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25803B1D8()
{
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  __swift_project_value_buffer(v1, qword_27F919E48);

  v2 = sub_258049D10();
  v3 = sub_25804A2C0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 80);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_257FD4000, v2, v3, "getCertificateIdentifiers: %ld", v6, 0xCu);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  else
  {
  }

  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 48);
  (*(v0 + 32))(*(v0 + 80), 0);

  (*(v8 + 8))(v7, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_25803B38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_258049D00();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25803B45C, 0, 0);
}

uint64_t sub_25803B45C()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 16);
  sub_258049CC0();
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_25803B5EC;
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);

  return ManagedAppsServer.getCertificate(with:clientIdentity:)(v5, v4, v3);
}

uint64_t sub_25803B5EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_25803B814;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_25803B714;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25803B714()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  v6 = SecCertificateCopyData(v1);
  v7 = sub_258049A60();
  v9 = v8;

  sub_257FECD7C(v7, v9);
  v5(v7, v9, 0);
  sub_257FDAAB4(v7, v9);

  sub_257FDAAB4(v7, v9);
  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_25803B814()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[12];
  v2 = v0[6];
  sub_258049C50();
  sub_258042A24();
  v3 = swift_allocError();
  static ManagedAppsPublicXPCProtocolError.publicError(_:)(v1, v4);
  v2(0, 0xF000000000000000, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25803B90C(uint64_t a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, uint64_t, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_25804A110();
  v10 = v9;
  _Block_copy(v7);

  a5(v8, v10, a1, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_25803B9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_258049D00();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25803BA78, 0, 0);
}

uint64_t sub_25803BA78()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 16);
  sub_258049CC0();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_25803BBFC;
  v3 = *(v0 + 64);

  return sub_258021900(3, v3);
}

uint64_t sub_25803BBFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_25803BEAC;
  }

  else
  {
    v4 = sub_25803BD10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25803BD10()
{
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  __swift_project_value_buffer(v1, qword_27F919E48);

  v2 = sub_258049D10();
  v3 = sub_25804A2C0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 80);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_257FD4000, v2, v3, "getIdentityIdentifiers: %ld", v6, 0xCu);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  else
  {
  }

  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 48);
  (*(v0 + 32))(*(v0 + 80), 0);

  (*(v8 + 8))(v7, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_25803BEAC()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[11];
  v2 = v0[4];
  sub_258049C50();
  sub_258042A24();
  v3 = swift_allocError();
  static ManagedAppsPublicXPCProtocolError.publicError(_:)(v1, v4);
  v2(0, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25803BFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_258049D00();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25803C070, 0, 0);
}

uint64_t sub_25803C070()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 16);
  sub_258049CC0();
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_25803C1FC;
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);

  return ManagedAppsServer.getIdentityProxyEndpoint(with:clientIdentity:)(v5, v4, v3);
}

uint64_t sub_25803C1FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_25803C3E4;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_25803C324;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25803C324()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v1;
  v5(v1, 0);

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25803C3E4()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[12];
  v2 = v0[6];
  sub_258049C50();
  sub_258042A24();
  v3 = swift_allocError();
  static ManagedAppsPublicXPCProtocolError.publicError(_:)(v1, v4);
  v2(0, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25803C4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v12;
  v8[8] = v13;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_258049D00();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25803C5AC, 0, 0);
}

uint64_t sub_25803C5AC()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 16);
  sub_258049CC0();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_25803C738;
  v3 = *(v0 + 88);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);

  return ManagedAppsServer.reportConfigDetailsState(code:reason:clientIdentity:)(v6, v4, v5, v3);
}

uint64_t sub_25803C738()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_25803C8E4;
  }

  else
  {
    v2 = sub_25803C84C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25803C84C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  (*(v0 + 56))(0);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25803C8E4()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[13];
  v2 = v0[7];
  sub_258049C50();
  sub_258042A24();
  v3 = swift_allocError();
  static ManagedAppsPublicXPCProtocolError.publicError(_:)(v1, v4);
  v2(v3);

  v5 = v0[1];

  return v5();
}

void sub_25803CA70(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2580499A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_25803CB44(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  v7 = _Block_copy(aBlock);
  _Block_copy(v7);

  sub_258040584(v8, v7, a4, a5);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_25803CBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x2822009F8](sub_25803CBFC, 0, 0);
}

uint64_t sub_25803CBFC()
{
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_25803CCA4;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return ManagedAppsServer.setAppConfig(recordID:appConfigRecord:persona:)(v6, v4, v5, v2, v3);
}

uint64_t sub_25803CCA4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_25803CE20;
  }

  else
  {
    v2 = sub_25803CDB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25803CDB8()
{
  (*(v0 + 64))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25803CE20()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25803CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_25803CFC0, 0, 0);
}

uint64_t sub_25803CFC0()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_25803D060;
  v3 = v0[3];
  v2 = v0[4];

  return ManagedAppsServer.removeAppConfig(recordID:)(v3, v2);
}

uint64_t sub_25803D060()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_25803D1DC;
  }

  else
  {
    v2 = sub_25803D174;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25803D174()
{
  (*(v0 + 40))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25803D1DC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25803D2A4(uint64_t a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = _Block_copy(aBlock);
  v14 = sub_25804A110();
  v16 = v15;
  _Block_copy(v13);

  sub_258041158(v14, v16, a1, v13, a5, a6, a7, a8);
  _Block_release(v13);
  _Block_release(v13);
}

uint64_t sub_25803D36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_25803D3A0, 0, 0);
}

uint64_t sub_25803D3A0()
{
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_25803D444;
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];

  return ManagedAppsServer.updateAppBundleID(for:bundleID:)(v5, v4, v2, v3);
}

uint64_t sub_25803D444()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_25803D5C0;
  }

  else
  {
    v2 = sub_25803D558;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25803D558()
{
  (*(v0 + 56))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25803D5C0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25803D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_25803D744, 0, 0);
}

uint64_t sub_25803D744()
{
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_25803D7E8;
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];

  return ManagedAppsServer.updateAppCodeIdentity(for:appCodeIdentity:extensionCodeIdentities:)(v5, v4, v2, v3);
}

uint64_t sub_25803D7E8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_258043374;
  }

  else
  {
    v2 = sub_25804337C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25803D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_25803DA10, 0, 0);
}

uint64_t sub_25803DA10()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_25803DAB0;
  v3 = v0[3];
  v2 = v0[4];

  return sub_25802AA3C(v3, v2, 1);
}

uint64_t sub_25803DAB0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_258043378;
  }

  else
  {
    v2 = sub_258043380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}