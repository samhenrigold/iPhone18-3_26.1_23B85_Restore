uint64_t sub_266336B28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2664E0038();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664E00B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280071AC8 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  aBlock[4] = sub_26633C36C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_82;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  sub_2664E0068();
  v19[1] = MEMORY[0x277D84F90];
  sub_2662A3D30(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

void sub_266336E10(void *a1, void (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  if (a1)
  {
    v11 = a1;
    v12 = sub_2664DE198();
    if ([v12 code] == 9)
    {
      v13 = [v12 domain];
      v14 = sub_2664E02C8();
      v16 = v15;

      if (v14 == sub_2664E02C8() && v16 == v17)
      {
        v19 = 1;
      }

      else
      {
        v19 = sub_2664E0D88();
      }
    }

    else
    {
      v19 = 0;
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v24, v4);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06E8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v31 = v12;
      v28 = a2;
      v29 = v27;
      *v27 = 67109120;
      *(v27 + 4) = v19 & 1;
      _os_log_impl(&dword_26629C000, v25, v26, "AccountProvider#gdprPopIfNeeded privacyAcknowledgementRequired: %{BOOL}d", v27, 8u);
      v30 = v29;
      a2 = v28;
      v12 = v31;
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    a2(v19 & 1);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v10, v20, v4);
    v21 = sub_2664DFE18();
    v22 = sub_2664E06E8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26629C000, v21, v22, "AccountProvider#gdprPopIfNeeded error is nil. Returning false", v23, 2u);
      MEMORY[0x266784AD0](v23, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    a2(0);
  }
}

void sub_2663371F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_266337294()
{
  v1[15] = v0;
  v2 = sub_2664DFE38();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_2664DFAE8();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2663373A4, 0, 0);
}

uint64_t sub_2663373A4()
{
  v1 = static SiriEnvironmentWrapper.retrieve()();
  v0[23] = v1;
  if (v1)
  {
    v2 = v0[22];
    sub_2664DF4D8();
    sub_2664DFAB8();

    v3 = sub_2664DFAD8();
    sub_26633AB20(v2);
    if (v3)
    {
      v4 = swift_task_alloc();
      v0[24] = v4;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BF0, qword_2664E6180);
      *v4 = v0;
      v4[1] = sub_266337658;
      v6 = v0[15];

      return MEMORY[0x2822007B8](v0 + 14, 0, 0, 0xD000000000000014, 0x80000002664F4E80, sub_26633AB7C, v6, v5);
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  v10 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v7, v10, v9);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "AccountProvider#requestingUserIsDeviceOwner Non multi-user request: returning true", v13, 2u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v0[17] + 8))(v0[18], v0[16]);

  v14 = v0[1];

  return v14(1);
}

uint64_t sub_266337658()
{

  return MEMORY[0x2822009F8](sub_266337754, 0, 0);
}

uint64_t sub_266337754()
{
  v1 = v0[14];
  if (!v1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v9 = v0 + 19;
    v21 = v0[19];
    v22 = v0[16];
    v23 = v0[17];
    v24 = __swift_project_value_buffer(v22, qword_280F914F0);
    swift_beginAccess();
    (*(v23 + 16))(v21, v24, v22);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06D8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "AccountProvider#requestingUserIsDeviceOwner Unable to get requesting user's DSID (possibly unsure or unknown user).", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);

LABEL_19:
      v7 = 0;
      goto LABEL_20;
    }

LABEL_18:

    goto LABEL_19;
  }

  v2 = v0[15];
  v3 = v2[11];
  v4 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v3);
  v5 = AccountStoreProviding.ownerDSID.getter(v3, v4);
  if (!v5)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v9 = v0 + 20;
    v28 = v0[20];
    v29 = v0[16];
    v30 = v0[17];
    v31 = __swift_project_value_buffer(v29, qword_280F914F0);
    swift_beginAccess();
    (*(v30 + 16))(v28, v31, v29);
    v32 = sub_2664DFE18();
    v33 = sub_2664E06D8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26629C000, v32, v33, "AccountProvider#requestingUserIsDeviceOwner unable to get device owner's DSID.", v34, 2u);
      MEMORY[0x266784AD0](v34, -1, -1);

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v6 = v5;
  sub_2662C1744(0, &qword_280F8F548, 0x277D82BB8);
  v7 = sub_2664E0918();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = v0 + 21;
  v8 = v0[21];
  v11 = v0[16];
  v10 = v0[17];
  v12 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v8, v12, v11);
  v13 = v1;
  v14 = v6;
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();

  if (os_log_type_enabled(v15, v16))
  {
    v37 = v7;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412802;
    *(v17 + 4) = v13;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v18 = v1;
    v18[1] = v6;
    *(v17 + 22) = 1024;
    *(v17 + 24) = v37 & 1;
    v19 = v13;
    v13 = v14;
    _os_log_impl(&dword_26629C000, v15, v16, "AccountProvider#requestingUserIsDeviceOwner requestingUserDSID: %@, ownerDSID: %@. requestingUserIsDeviceOwner: %{BOOL}d", v17, 0x1Cu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B0, &unk_2664E3670);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v18, -1, -1);
    v20 = v17;
    v7 = v37;
    MEMORY[0x266784AD0](v20, -1, -1);
    v14 = v15;
    v15 = v19;
  }

LABEL_20:
  (*(v0[17] + 8))(*v9, v0[16]);

  v35 = v0[1];

  return v35(v7 & 1);
}

uint64_t sub_266337C5C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BF0, qword_2664E6180);
  *v1 = v0;
  v1[1] = sub_266337D44;
  v3 = *(v0 + 24);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000014, 0x80000002664F4E80, sub_26633C4E0, v3, v2);
}

uint64_t sub_266337D44()
{

  return MEMORY[0x2822009F8](sub_266337E40, 0, 0);
}

uint64_t sub_266337E58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C00, &unk_2664E62C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_266337FF0(sub_26633C28C, v7);
}

uint64_t sub_266337FA0(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C00, &unk_2664E62C8);
  return sub_2664E0588();
}

void sub_266337FF0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664DFAE8();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();
    sub_2664DFAB8();

    v13 = sub_2664DFAD8();
    sub_26633AB20(v12);
    if (v13)
    {

      sub_26633B268(v14, a1, a2, v3);

      return;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v15, v6);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "AccountProvider#requestingUserDSID Non multi-user request: Returning owner's DSID", v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v19 = v3[11];
  v20 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v19);
  v21 = AccountStoreProviding.ownerDSID.getter(v19, v20);
  a1();
}

uint64_t sub_2663382B4(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, void *a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  if (a2)
  {
    v32 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v14, v17, v10);

    v18 = sub_2664DFE18();
    v19 = sub_2664E06E8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = a4;
      v21 = v20;
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_2662A320C(a1, a2, &v33);
      _os_log_impl(&dword_26629C000, v18, v19, "AccountProvider#requestingUserDSID Multi-user request: Getting DSID for user homeID: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x266784AD0](v22, -1, -1);
      v23 = v21;
      a4 = v31;
      MEMORY[0x266784AD0](v23, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v24 = a5[11];
    v25 = a5[12];
    __swift_project_boxed_opaque_existential_1(a5 + 8, v24);
    return AccountStoreProviding.amsDSID(forHomeUserIdentifier:completion:)(a1, a2, v32, a4, v24, v25);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v16, v27, v10);
    v28 = sub_2664DFE18();
    v29 = sub_2664E06D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v28, v29, "AccountProvider#requestingUserDSID Multi-user request: Unable to get requesting user's home identifier (unknown user)", v30, 2u);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    return a3(0);
  }
}

uint64_t sub_266338648(void (*a1)(void, void), uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = sub_2664DEA98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DFAE8();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    v33 = v9;
    v17 = v2;
    sub_2664DF4D8();
    sub_2664DFAB8();

    v18 = sub_2664DFAD8();
    sub_26633AB20(v16);
    if (v18)
    {
      sub_26633B7C0(v17 + 24, &v36);
      if (v37)
      {
        sub_2662A8618(&v36, v38);
        sub_2664DF4A8();
        sub_2664DEB48();

        v19 = sub_2664DEA18();
        v21 = v20;
        (*(v11 + 8))(v13, v10);
        if (v21)
        {
          sub_26633AD84(v19, v21, v38, v34, v35);
        }

        else
        {
          sub_26633B034(v38, v34, v35);
        }

        return __swift_destroy_boxed_opaque_existential_1Tm(v38);
      }

      else
      {
        sub_2662A9238(&v36, &qword_280072BF8, &unk_2664E6F40);
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v27 = __swift_project_value_buffer(v3, qword_280F914F0);
        swift_beginAccess();
        v28 = v33;
        (*(v4 + 16))(v33, v27, v3);
        v29 = sub_2664DFE18();
        v30 = sub_2664E06D8();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_26629C000, v29, v30, "AccountProvider#requestingUserHomeID Unable to get multi user connection", v31, 2u);
          MEMORY[0x266784AD0](v31, -1, -1);
        }

        (*(v4 + 8))(v28, v3);
        v34(0, 0);
      }
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  (*(v4 + 16))(v7, v22, v3);
  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_26629C000, v23, v24, "AccountProvider#requestingUserHomeID not multi-user returning nil", v25, 2u);
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  return (v34)(0, 0);
}

void sub_266338B24(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void, void), void (*a5)(void, void))
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  if (a3)
  {
    v20 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v19, v21, v10);
    v22 = a3;
    v23 = sub_2664DFE18();
    v24 = sub_2664E06D8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v45 = a4;
      v27 = v26;
      v46 = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v28 = sub_2664E0DE8();
      v30 = sub_2662A320C(v28, v29, &v46);
      v44 = v10;
      v31 = v30;

      *(v25 + 4) = v31;
      _os_log_impl(&dword_26629C000, v23, v24, "AccountProvider#requestingUserHomeID Error returned from getHomeUserId: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v32 = v27;
      a4 = v45;
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v25, -1, -1);

      (*(v11 + 8))(v19, v44);
    }

    else
    {

      (*(v11 + 8))(v19, v10);
    }

    a4(0, 0);
  }

  else
  {
    if (a2)
    {
      v45 = a5;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v33 = __swift_project_value_buffer(v10, qword_280F914F0);
      swift_beginAccess();
      (*(v11 + 16))(v14, v33, v10);

      v34 = sub_2664DFE18();
      v35 = sub_2664E06E8();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v46 = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_2662A320C(a1, a2, &v46);
        _os_log_impl(&dword_26629C000, v34, v35, "AccountProvider#requestingUserHomeID Requesting user's home id: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x266784AD0](v37, -1, -1);
        MEMORY[0x266784AD0](v36, -1, -1);
      }

      (*(v11 + 8))(v14, v10);
      v38 = a1;
      v39 = a2;
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v40 = __swift_project_value_buffer(v10, qword_280F914F0);
      swift_beginAccess();
      (*(v11 + 16))(v17, v40, v10);
      v41 = sub_2664DFE18();
      v42 = sub_2664E06D8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_26629C000, v41, v42, "AccountProvider#requestingUserHomeID Missing homeUserID from getHomeUserId", v43, 2u);
        MEMORY[0x266784AD0](v43, -1, -1);
      }

      (*(v11 + 8))(v17, v10);
      v38 = 0;
      v39 = 0;
    }

    a4(v38, v39);
  }
}

uint64_t AccountProvider.deinit()
{
  sub_2662A9238(v0 + 24, &qword_280072BF8, &unk_2664E6F40);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t AccountProvider.__deallocating_deinit()
{
  sub_2662A9238(v0 + 24, &qword_280072BF8, &unk_2664E6F40);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_266339138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_26633A5B4(a1, a2, 1, sub_26633C4E8, v8);
}

uint64_t sub_2663391D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = *v4;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = a1;
  v14[4] = a2;
  v15 = sub_2664E05C8();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = sub_26633C4E4;
  v16[5] = v13;
  v16[6] = &unk_2664E62B8;
  v16[7] = v14;

  sub_26633E760(0, 0, v11, &unk_2664E62C0, v16);
}

uint64_t sub_266339394()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266336498;

  return sub_266337294();
}

uint64_t sub_266339448()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BF0, qword_2664E6180);
  *v1 = v0;
  v1[1] = sub_266339530;
  v3 = *(v0 + 24);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000014, 0x80000002664F4E80, sub_26633C4E0, v3, v2);
}

uint64_t sub_266339530()
{

  return MEMORY[0x2822009F8](sub_26633C4EC, 0, 0);
}

uint64_t sub_26633962C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26633C4D0;

  return sub_26633A8F4();
}

uint64_t sub_2663396CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[4] = a4;
  v6[5] = a5;
  v9 = (a6 + *a6);
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_2663397C0;

  return v9(v6 + 2);
}

uint64_t sub_2663397C0()
{

  return MEMORY[0x2822009F8](sub_2663398BC, 0, 0);
}

uint64_t sub_2663398BC()
{
  (*(v0 + 32))(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26633992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v9 = (a6 + *a6);
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_266339A20;

  return v9(v6 + 5);
}

uint64_t sub_266339A20()
{

  return MEMORY[0x2822009F8](sub_266339B1C, 0, 0);
}

uint64_t sub_266339B1C()
{
  (*(v0 + 16))(v0 + 40);
  v1 = *(v0 + 8);

  return v1();
}

void sub_266339BAC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_266339C5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[3] = a5;
  v19[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  *(a4 + 16) = a1;
  sub_26633B7C0(a2, a4 + 24);
  sub_2662A5550(v19, a4 + 64);
  v12 = objc_opt_self();
  v13 = a1;
  v14 = [v12 defaultCenter];
  v15 = *MEMORY[0x277D7F8C8];
  v16 = objc_opt_self();

  v17 = [v16 defaultIdentityStore];
  [v14 addObserver:a4 selector:sel_handleActiveAccountDidChangeNotificationWithNotification_ name:v15 object:v17];

  sub_2662A9238(a2, &qword_280072BF8, &unk_2664E6F40);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return a4;
}

char *sub_266339DD0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v59 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v59 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - v15;
  v17 = [objc_opt_self() currentDeviceInfo];
  v18 = [v17 isInternalBuild];

  if (!v18)
  {
    v42 = a1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v43, v4);

    v44 = sub_2664DFE18();
    v45 = v5;
    v46 = sub_2664E06E8();

    if (os_log_type_enabled(v44, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v67[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_2662A320C(v42, a2, v67);
      _os_log_impl(&dword_26629C000, v44, v46, "AccountProvider#getOverrideSharedUserID Not on internal build, returning nil for %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x266784AD0](v48, -1, -1);
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    (*(v45 + 8))(v8, v4);
    return 0;
  }

  v63 = v14;
  v64 = v11;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v65 = *(v5 + 16);
  (v65)(v16, v19, v4);

  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();

  v22 = os_log_type_enabled(v20, v21);
  v66 = v5;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v62 = v4;
    v25 = a1;
    v26 = v24;
    v67[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_2662A320C(v25, a2, v67);
    _os_log_impl(&dword_26629C000, v20, v21, "AccountProvider#getOverrideSharedUserID possibly overriding %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v27 = v26;
    a1 = v25;
    v4 = v62;
    MEMORY[0x266784AD0](v27, -1, -1);
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  v28 = *(v5 + 8);
  v28(v16, v4);
  v29 = sub_2664E02A8();
  v30 = sub_2664E02A8();
  CFPreferencesAppSynchronize(v29);
  v31 = CFPreferencesCopyAppValue(v30, v29);
  v32 = v31;
  if (!v31 || (v68 = v31, swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
    v49 = v64;
    (v65)(v64, v19, v4);
    swift_unknownObjectRetain();
    v50 = sub_2664DFE18();
    v51 = sub_2664E06E8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v62 = v28;
      v53 = v52;
      v54 = swift_slowAlloc();
      v67[0] = v54;
      *v53 = 136315138;
      v68 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C10, &qword_2664E62D8);
      v55 = sub_2664E0938();
      v57 = sub_2662A320C(v55, v56, v67);
      v61 = v30;
      v58 = v57;

      *(v53 + 4) = v58;
      _os_log_impl(&dword_26629C000, v50, v51, "AccountProvider#getOverrideSharedUserID appValue isn't a string type or nil: %s -- skipping", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x266784AD0](v54, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);
      swift_unknownObjectRelease();

      v62(v49, v4);
    }

    else
    {

      swift_unknownObjectRelease();
      v28(v49, v4);
    }

    return 0;
  }

  v61 = v30;
  v62 = v28;
  v60 = a1;
  v33 = v67[1];
  v64 = v67[0];
  v34 = v63;
  v65();

  v35 = sub_2664DFE18();
  v36 = sub_2664E06E8();

  v37 = v33;

  if (os_log_type_enabled(v35, v36))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v67[0] = v39;
    *v38 = 136315394;
    v40 = v64;
    *(v38 + 4) = sub_2662A320C(v64, v37, v67);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_2662A320C(v60, a2, v67);
    _os_log_impl(&dword_26629C000, v35, v36, "AccountProvider#getOverrideSharedUserID override %s in place for %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v39, -1, -1);
    MEMORY[0x266784AD0](v38, -1, -1);
    swift_unknownObjectRelease();

    v62(v63, v4);
    return v40;
  }

  else
  {

    swift_unknownObjectRelease();
    v62(v34, v4);
    return v64;
  }
}

void sub_26633A5B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  *(v10 + 16) = v11;
  if (v11)
  {
    v12 = v11;
    v13 = sub_2664E02A8();
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = a4;
    *(v14 + 32) = a5;
    *(v14 + 40) = a3 & 1;
    *(v14 + 48) = a1;
    *(v14 + 56) = a2;
    v16[4] = sub_26633C378;
    v16[5] = v14;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_26639F104;
    v16[3] = &block_descriptor_92_0;
    v15 = _Block_copy(v16);

    [v12 getHomeUserIdForSharedUserId:v13 completion:v15];
    _Block_release(v15);
  }

  else
  {
  }
}

uint64_t sub_26633A76C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2662C1890;

  return sub_2663363BC(a1);
}

uint64_t sub_26633A820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2662C1890;

  return sub_2663396CC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26633A8F4()
{
  v1 = sub_2664DFE38();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26633A9B0, 0, 0);
}

uint64_t sub_26633A9B0()
{
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "AccountProvider#sharedUserIdToAccount returning nil on non-tvOS platform", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_26633AB20(uint64_t a1)
{
  v2 = sub_2664DFAE8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26633AD84(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = a5;
    v17 = a1;
    v18 = v16;
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_2662A320C(v17, a2, &v28);
    _os_log_impl(&dword_26629C000, v14, v15, "AccountProvider#homeUserId for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266784AD0](v19, -1, -1);
    v20 = v18;
    a1 = v17;
    a5 = v26;
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v21 = a3[3];
  v22 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v21);
  v23 = swift_allocObject();
  *(v23 + 16) = v27;
  *(v23 + 24) = a5;
  v24 = *(v22 + 24);

  v24(a1, a2, sub_26633C250, v23, v21, v22);
}

uint64_t sub_26633B034(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "AccountProvider#getHomeUserIdOfRecognizedUser...", v13, 2u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = *(v15 + 16);

  v17(sub_26633C278, v16, v14, v15);
}

uint64_t sub_26633B268(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v36 = a1;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v34 = &v34 - v12;
  v13 = sub_2664DEA98();
  v35 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DFAE8();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v37 = a2;
  v38 = a3;
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;

  v39 = a4;

  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();
    sub_2664DFAB8();

    v20 = sub_2664DFAD8();
    sub_26633AB20(v18);
    if (v20)
    {
      sub_26633B7C0(v36 + 24, &v40);
      if (v41)
      {
        sub_2662A8618(&v40, v42);
        sub_2664DF4A8();
        sub_2664DEB48();

        v21 = sub_2664DEA18();
        v23 = v22;
        (*(v35 + 8))(v15, v13);
        if (v23)
        {
          sub_26633AD84(v21, v23, v42, sub_26633C280, v19);
        }

        else
        {
          sub_26633B034(v42, sub_26633C280, v19);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v42);
      }

      else
      {
        sub_2662A9238(&v40, &qword_280072BF8, &unk_2664E6F40);
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v28 = __swift_project_value_buffer(v7, qword_280F914F0);
        swift_beginAccess();
        v29 = v34;
        (*(v8 + 16))(v34, v28, v7);
        v30 = sub_2664DFE18();
        v31 = sub_2664E06D8();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_26629C000, v30, v31, "AccountProvider#requestingUserHomeID Unable to get multi user connection", v32, 2u);
          MEMORY[0x266784AD0](v32, -1, -1);
        }

        (*(v8 + 8))(v29, v7);
        sub_2663382B4(0, 0, v37, v38, v39);
      }
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v11, v24, v7);
  v25 = sub_2664DFE18();
  v26 = sub_2664E06E8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_26629C000, v25, v26, "AccountProvider#requestingUserHomeID not multi-user returning nil", v27, 2u);
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  sub_2663382B4(0, 0, v37, v38, v39);
}

uint64_t sub_26633B7C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BF8, &unk_2664E6F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of AccountProviding.requestingUserIsDeviceOwner()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26633C4D0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of AccountProviding.requestingUserDSID()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26633C4D0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of AccountProviding.sharedUserIdToAccount(sharedUserId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26633C4D0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_26633BBE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26633BC3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of AccountProvider.sharedUserIdToAccount(sharedUserId:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 176) + **(*v2 + 176));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_266336498;

  return v8(a1, a2);
}

uint64_t dispatch thunk of AccountProvider.requestingUserIsDeviceOwner()()
{
  v4 = (*(*v0 + 224) + **(*v0 + 224));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_266336498;

  return v4();
}

uint64_t dispatch thunk of AccountProvider.requestingUserDSID()()
{
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26633C4D0;

  return v4();
}

uint64_t sub_26633C19C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2662BD660;

  return sub_2663363BC(a1);
}

uint64_t sub_26633C28C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C00, &unk_2664E62C8);

  return sub_266337FA0(a1);
}

uint64_t objectdestroy_5Tm_1(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

void sub_26633C3AC(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

void sub_26633C3F0(void *a1, void *a2)
{
  v5 = *(sub_2664DE4A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  sub_2663354E8(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v6, *(v2 + v6 + *(v5 + 64)), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_26633C4F0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_2664E0678();
  if (!v19)
  {
    return sub_2664E04E8();
  }

  v41 = v19;
  v45 = sub_2664E0C08();
  v32 = sub_2664E0C18();
  sub_2664E0BB8();
  result = sub_2664E0668();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_2664E0698();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_2664E0BF8();
      result = sub_2664E0688();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id _INPBString.init(from:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v9 = result;
    v10 = objc_allocWithZone(MEMORY[0x277CD43C0]);
    v11 = v9;
    v12 = [v10 init];
    if (v12)
    {
      v13 = v12;
      v14 = sub_2664E02A8();

      [v13 setValue_];

      [v11 addValue_];
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      (*(v5 + 16))(v7, v15, v4);

      v16 = sub_2664DFE18();
      v17 = sub_2664E06D8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v21 = v19;
        *v18 = 136315138;
        v20 = sub_2662A320C(a1, a2, &v21);

        *(v18 + 4) = v20;
        _os_log_impl(&dword_26629C000, v16, v17, "_INPBString#init Unable to create _INPBString for string: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x266784AD0](v19, -1, -1);
        MEMORY[0x266784AD0](v18, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v7, v4);
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String_optional __swiftcall _INPBString.toString()()
{
  v1 = [v0 values];
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v1;
  sub_2662C1744(0, &qword_280072C20, 0x277CD43C0);
  v3 = sub_2664E04A8();

  if (!(v3 >> 62))
  {
    v1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_4;
    }

LABEL_10:

LABEL_11:
    v1 = 0;
LABEL_12:
    v4 = 0;
    goto LABEL_15;
  }

  v1 = sub_2664E0A68();
  if (!v1)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x266783B70](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v6 value];

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = sub_2664E02C8();
  v10 = v9;

  v4 = v10;
  v1 = v8;
LABEL_15:
  result.value._object = v4;
  result.value._countAndFlagsBits = v1;
  return result;
}

id sub_26633CD9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_2662C1744(0, &qword_280072C28, 0x277CD43B8);

  result = _INPBString.init(from:)(v3, v4);
  *a2 = result;
  return result;
}

void sub_26633CE5C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 values];
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  sub_2662C1744(0, &qword_280072C20, 0x277CD43C0);
  v5 = sub_2664E04A8();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (!sub_2664E0A68())
  {
LABEL_12:

LABEL_13:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x266783B70](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = [v7 value];

  if (v8)
  {
    v9 = sub_2664E02C8();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *a2 = v9;
  a2[1] = v11;
}

uint64_t sub_26633CF9C()
{
  v0 = sub_2664DF248();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DF288();
  swift_allocObject();
  v4 = sub_2664DF278();
  sub_2664DFF88();
  if (v5)
  {
    sub_2664DF268();
  }

  (*(v1 + 104))(v3, *MEMORY[0x277D5EE18], v0);
  sub_2664DF2B8();
  swift_allocObject();
  sub_2664DF2A8();
  sub_2664DF298();

  sub_2664DF258();

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t INMediaDestination.toRREntity(groupIdentifier:targetApp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a1;
  v46 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C30, &qword_2664E62F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_2664DE4A8();
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C38, qword_2664E62F8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v36 - v15;
  if (a2 && (v17 = sub_2664DF7D8(), v18))
  {
    v42 = v17;
    v45 = v18;
  }

  else
  {

    v45 = 0x80000002664F2F20;
    v42 = 0xD000000000000018;
  }

  v19 = sub_26633CF9C();
  sub_26633CF9C();
  v20 = MEMORY[0x266782230]();

  if (v20)
  {
    v38 = v20;
    v40 = v7;
    v41 = v6;
    v21 = sub_2664DF1C8();
    (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
    v39 = v19;
    v22 = MEMORY[0x2667821D0](v19, v16);
    sub_26633D6B8(v16);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v24 = v11;
    (*(v11 + 16))(v13, v23, v10);

    v25 = sub_2664DFE18();
    v26 = sub_2664E06C8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47 = v22;
      v48 = v28;
      *v27 = 136315138;
      sub_2664DF2C8();
      v37 = v9;
      sub_26633D790();
      v29 = sub_2664E0D48();
      v31 = sub_2662A320C(v29, v30, &v48);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_26629C000, v25, v26, "INMediaDestination#toRREntity UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x266784AD0](v28, -1, -1);
      MEMORY[0x266784AD0](v27, -1, -1);

      (*(v24 + 8))(v13, v10);
      v9 = v37;
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    sub_2664DE498();
    sub_2664DE458();
    (*(v43 + 8))(v9, v40);
    sub_26633D720(v44, v41);
    v34 = v46;
    sub_2664DFEE8();

    v35 = sub_2664DFF28();
    return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  }

  else
  {
    v32 = sub_2664DFF28();
    (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
  }
}

uint64_t sub_26633D6B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C38, qword_2664E62F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26633D720(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C30, &qword_2664E62F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26633D790()
{
  result = qword_280072C40;
  if (!qword_280072C40)
  {
    sub_2664DF2C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072C40);
  }

  return result;
}

uint64_t sub_26633D7E8(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_26633DA8C(*v11, a2, v15, v19, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v21;
}

uint64_t sub_26633DA8C(uint64_t a1, void *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v63 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v82[3] = v10;
  v82[4] = &off_2877F3740;
  v82[0] = a1;
  v81[3] = &type metadata for PlaybackStarter;
  v81[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v81[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v80[3] = &type metadata for PlaybackQueueLocationProvider;
  v80[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v80[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v82, v79);
  sub_2662A5550(a2, v78);
  sub_2662A5550(v81, v77);
  sub_2662A5550(v80, v76);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v79, v79[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v77, v77[3]);
  MEMORY[0x28223BE20](v21);
  v23 = (&v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v76, v76[3]);
  MEMORY[0x28223BE20](v25);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v19;
  v75[3] = v10;
  v75[4] = &off_2877F3740;
  v75[0] = v29;
  v74[3] = &type metadata for PlaybackStarter;
  v74[4] = &off_2877EE098;
  v30 = swift_allocObject();
  v74[0] = v30;
  v31 = v23[3];
  v30[3] = v23[2];
  v30[4] = v31;
  v30[5] = v23[4];
  v32 = v23[1];
  v30[1] = *v23;
  v30[2] = v32;
  v72 = &type metadata for PlaybackQueueLocationProvider;
  v73 = &off_2877E8100;
  v33 = swift_allocObject();
  *&v71 = v33;
  v34 = v27[3];
  v33[3] = v27[2];
  v33[4] = v34;
  v33[5] = v27[4];
  v35 = v27[1];
  v33[1] = *v27;
  v33[2] = v35;
  sub_2662A5550(v75, a5 + 16);
  sub_2662A5550(v78, a5 + 56);
  sub_2662A5550(v74, a5 + 104);
  sub_2662A5550(v75, v70);
  sub_2662A5550(v78, v69);
  sub_2662A5550(v74, v68);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v70, v70[3]);
  MEMORY[0x28223BE20](v36);
  v38 = (&v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v68, v68[3]);
  MEMORY[0x28223BE20](v40);
  v42 = (&v62 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = *v38;
  v67[3] = v10;
  v67[4] = &off_2877F3740;
  v66 = &off_2877EE098;
  v67[0] = v44;
  v65 = &type metadata for PlaybackStarter;
  v45 = swift_allocObject();
  v64[0] = v45;
  v46 = v42[3];
  v45[3] = v42[2];
  v45[4] = v46;
  v45[5] = v42[4];
  v47 = v42[1];
  v45[1] = *v42;
  v45[2] = v47;
  type metadata accessor for LocalPlaybackHelper();
  v48 = swift_allocObject();
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v67, v10);
  MEMORY[0x28223BE20](v49);
  v51 = (&v62 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x28223BE20](v53);
  v55 = (&v62 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v51;
  v48[5] = v10;
  v48[6] = &off_2877F3740;
  v48[2] = v57;
  v48[15] = &type metadata for PlaybackStarter;
  v48[16] = &off_2877EE098;
  v58 = swift_allocObject();
  v48[12] = v58;
  v59 = v55[3];
  v58[3] = v55[2];
  v58[4] = v59;
  v58[5] = v55[4];
  v60 = v55[1];
  v58[1] = *v55;
  v58[2] = v60;
  sub_2662A8618(v69, (v48 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  *(a5 + 96) = v48;
  sub_2662A8618(&v71, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  return a5;
}

uint64_t static Task<>.withCallback<A>(_:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  v13 = sub_2664E05C8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a5;
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a1;
  v14[8] = a2;

  sub_26633E760(0, 0, v12, &unk_2664E6360, v14);
}

{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  v13 = sub_2664E05C8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a5;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;

  sub_26633E760(0, 0, v12, &unk_2664E6370, v14);
}

uint64_t sub_26633E474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a5;
  v8[4] = a8;
  v8[2] = a4;
  v8[5] = *(a8 - 8);
  v10 = swift_task_alloc();
  v8[6] = v10;
  v13 = (a6 + *a6);
  v11 = swift_task_alloc();
  v8[7] = v11;
  *v11 = v8;
  v11[1] = sub_26633E5CC;

  return v13(v10);
}

uint64_t sub_26633E5CC()
{

  return MEMORY[0x2822009F8](sub_26633E6C8, 0, 0);
}

uint64_t sub_26633E6C8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26633E760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26633EF94(a3, v25 - v10);
  v12 = sub_2664E05C8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26633F004(v11);
  }

  else
  {
    sub_2664E05B8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2664E0578();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2664E0338() + 32;
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

      sub_26633F004(a3);

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

  sub_26633F004(a3);
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

uint64_t sub_26633EA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280073B30, &qword_2664E4E50);
  v9 = sub_2664E0ED8();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26633EB10, 0, 0);
}

uint64_t sub_26633EB10()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_26633EBE4;
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);

  return MEMORY[0x2821BBDF0](v5, &unk_2664E6388, v2, v6);
}

uint64_t sub_26633EBE4()
{

  return MEMORY[0x2822009F8](sub_26633ECFC, 0, 0);
}

uint64_t sub_26633ECFC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  (*(v0 + 32))(v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26633ED94(uint64_t a1)
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
  v11[1] = sub_2662C1890;

  return sub_26633EA20(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26633EEB8(uint64_t a1)
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
  v11[1] = sub_2662BD660;

  return sub_26633E474(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t sub_26633EF94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26633F004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26633F06C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2662C1890;

  return sub_266396550(a1, v4);
}

uint64_t sub_26633F124(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2662BD660;

  return sub_2662BD568(a1, v4);
}

void sub_26633F1D8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v66 = sub_2664DFE38();
  v64 = *(v66 - 8);
  v10 = MEMORY[0x28223BE20](v66);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v61 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v61 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1[5];
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v65 = v21;
  if (*(v18 + 16))
  {
    v22 = qword_280F914E8;
    swift_retain_n();
    if (v22 != -1)
    {
      swift_once();
    }

    v23 = v66;
    v24 = __swift_project_value_buffer(v66, qword_280F914F0);
    swift_beginAccess();
    v25 = v64;
    (*(v64 + 16))(v15, v24, v23);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06C8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "PlaybackCreateRadioProvider#createRadioFromNowPlaying Executing logic for hashedRouteUIDs (WHA)", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    (*(v25 + 8))(v15, v23);
    sub_2662C1744(0, &qword_280072C48, 0x277D27850);
    v29 = [swift_getObjCClassFromMetadata() systemMediaApplicationDestination];
    v30 = sub_2664E0488();
    v31 = swift_allocObject();
    v32 = v65;
    *(v31 + 16) = sub_26633FE4C;
    *(v31 + 24) = v32;
    aBlock[4] = sub_26631D1BC;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2663A0C48;
    aBlock[3] = &block_descriptor_12;
    v33 = _Block_copy(aBlock);

    [v29 resolveWithHashedRouteIdentifiers:v30 audioRoutingInfo:0 completion:v33];
    _Block_release(v33);
  }

  else
  {
    v63 = a4;
    if (v20)
    {
      v62 = v20;
      v34 = v5;
      v35 = qword_280F914E8;
      swift_retain_n();
      if (v35 != -1)
      {
        swift_once();
      }

      v36 = v66;
      v37 = __swift_project_value_buffer(v66, qword_280F914F0);
      swift_beginAccess();
      v38 = v64;
      (*(v64 + 16))(v12, v37, v36);
      v39 = sub_2664DFE18();
      v40 = sub_2664E06C8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_26629C000, v39, v40, "PlaybackCreateRadioProvider#createRadioFromNowPlaying Executing logic for seRouteId", v41, 2u);
        MEMORY[0x266784AD0](v41, -1, -1);
      }

      (*(v38 + 8))(v12, v66);
      sub_2662C1744(0, &qword_280072C48, 0x277D27850);
      v42 = [swift_getObjCClassFromMetadata() systemMediaApplicationDestination];
      sub_266340E4C(v34, aBlock);
      sub_266340E4C(aBlock, &v68);
      v43 = swift_allocObject();
      v44 = v71;
      *(v43 + 48) = v70;
      *(v43 + 64) = v44;
      *(v43 + 80) = v72;
      v45 = v69;
      *(v43 + 16) = v68;
      *(v43 + 32) = v45;
      v46 = v62;
      *(v43 + 96) = v19;
      *(v43 + 104) = v46;
      v47 = v65;
      *(v43 + 112) = sub_26633FE4C;
      *(v43 + 120) = v47;
      v67[4] = sub_266340F24;
      v67[5] = v43;
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 1107296256;
      v67[2] = sub_2663A0C48;
      v67[3] = &block_descriptor_12_0;
      v48 = _Block_copy(v67);

      [v42 resolveWithRouteIdentifiers:0 audioRoutingInfo:0 completion:v48];
      _Block_release(v48);

      sub_266340EF4(aBlock);
    }

    else
    {
      sub_266340E4C(v5, aBlock);
      v49 = qword_280F914E8;
      swift_retain_n();
      v50 = a2;
      if (v49 != -1)
      {
        swift_once();
      }

      v51 = v66;
      v52 = __swift_project_value_buffer(v66, qword_280F914F0);
      swift_beginAccess();
      v53 = v64;
      (*(v64 + 16))(v17, v52, v51);
      v54 = sub_2664DFE18();
      v55 = sub_2664E06E8();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_26629C000, v54, v55, "MediaPlaybackProvider#companionOriginIfAvailable On non-watch. Returning nil", v56, 2u);
        MEMORY[0x266784AD0](v56, -1, -1);
      }

      (*(v53 + 8))(v17, v51);
      sub_266340E4C(aBlock, &v68);
      v57 = swift_allocObject();
      v58 = v71;
      *(v57 + 48) = v70;
      *(v57 + 64) = v58;
      *(v57 + 80) = v72;
      v59 = v69;
      *(v57 + 16) = v68;
      *(v57 + 32) = v59;
      v60 = v63;
      *(v57 + 96) = a3;
      *(v57 + 104) = v60;

      sub_2664AD07C(v50, sub_266340E84, v57);

      sub_266340EF4(aBlock);
    }
  }
}

void sub_26633FA18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v28 - v11;
  if (a1)
  {
    v13 = objc_allocWithZone(MEMORY[0x277D27828]);
    v14 = a1;
    v15 = [v13 init];
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    v32 = sub_266340F90;
    v33 = v16;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v30 = sub_26634045C;
    v31 = &block_descriptor_24;
    v17 = _Block_copy(&aBlock);

    [v15 sendCommand:121 toDestination:v14 withOptions:0 completion:v17];
    _Block_release(v17);
  }

  else
  {
    v28[0] = a2;
    v28[1] = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    v19 = *(v7 + 16);
    v19(v12, v18, v6);
    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26629C000, v20, v21, "PlaybackCreateRadioProvider#createRadioFromNowPlaying unexpected nil MPCAssistantRemoteControlDestination from media remote", v22, 2u);
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    v23 = *(v7 + 8);
    v23(v12, v6);
    v19(v10, v18, v6);
    v24 = sub_2664DFE18();
    v25 = sub_2664E06B8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&aBlock = v27;
      *v26 = 134218498;
      *(v26 + 4) = 9;
      *(v26 + 12) = 2048;
      *(v26 + 14) = 13;
      *(v26 + 22) = 2080;
      *(v26 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &aBlock);
      _os_log_impl(&dword_26629C000, v24, v25, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v26, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x266784AD0](v27, -1, -1);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    v23(v10, v6);
    aBlock = xmmword_2664E6390;
    v30 = 0xE900000000000074;
    LOBYTE(v31) = 1;
    (v28[0])(&aBlock);
    sub_2662D2F30(aBlock, *(&aBlock + 1), v30, v31);
  }
}

uint64_t sub_26633FE54(void *a1, unint64_t a2, uint64_t (*a3)(__int128 *), uint64_t a4)
{
  v61 = a4;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v60 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v54 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  v16 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v17 = sub_2664E08F8();
  *&v65 = v17;
  v63 = &v65;
  v18 = sub_2662C5584(sub_266340F98, v62, a2);

  if (v18)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v20 = v8;
    (*(v8 + 16))(v15, v19, v7);
    v21 = sub_2664DFE18();
    v22 = sub_2664E06C8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26629C000, v21, v22, "PlaybackCreateRadioProvider#createRadioFromNowPlaying Create radio success", v23, 2u);
      MEMORY[0x266784AD0](v23, -1, -1);
    }

    (*(v20 + 8))(v15, v7);
    v65 = 0uLL;
    v67 = 0;
    v66 = 0;
    return a3(&v65);
  }

  else
  {
    v59 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v26 = v8;
    v27 = *(v8 + 16);
    v27(v13, v25, v7);
    v28 = a1;

    v29 = sub_2664DFE18();
    v58 = v7;
    v30 = v29;
    v31 = sub_2664E06D8();

    v57 = v31;
    v32 = v31;
    v33 = v30;
    if (os_log_type_enabled(v30, v32))
    {
      v34 = swift_slowAlloc();
      v56 = v27;
      v35 = v34;
      v36 = swift_slowAlloc();
      v64 = a1;
      *&v65 = v36;
      *v35 = 136315394;
      v37 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C50, &qword_2664E63C0);
      v38 = sub_2664E0318();
      v40 = sub_2662A320C(v38, v39, &v65);
      v55 = v26;
      v41 = v25;
      v42 = v40;

      *(v35 + 4) = v42;
      *(v35 + 12) = 2080;
      v43 = MEMORY[0x2667834D0](a2, v16);
      v45 = sub_2662A320C(v43, v44, &v65);
      v25 = v41;

      *(v35 + 14) = v45;
      _os_log_impl(&dword_26629C000, v33, v57, "PlaybackCreateRadioProvider#createRadioFromNowPlaying Create radio failed. Error: %s, statuses: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v36, -1, -1);
      v46 = v35;
      v27 = v56;
      MEMORY[0x266784AD0](v46, -1, -1);

      v26 = v55;
    }

    else
    {
    }

    v47 = *(v26 + 8);
    v48 = v58;
    v47(v13, v58);
    v49 = v60;
    v27(v60, v25, v48);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06B8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v65 = v53;
      *v52 = 134218498;
      *(v52 + 4) = 9;
      *(v52 + 12) = 2048;
      *(v52 + 14) = 8;
      *(v52 + 22) = 2080;
      *(v52 + 24) = sub_2662A320C(0xD000000000000011, 0x80000002664F5080, &v65);
      _os_log_impl(&dword_26629C000, v50, v51, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v52, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x266784AD0](v53, -1, -1);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    v47(v49, v48);
    v65 = xmmword_2664E63A0;
    v66 = 0x80000002664F5080;
    v67 = 1;
    v59(&v65);
    return sub_2662D2F30(v65, *(&v65 + 1), v66, v67);
  }
}

uint64_t sub_26634045C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v5 = sub_2664E04A8();

  v6 = a2;
  v4(a2, v5);
}

uint64_t sub_266340500(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_2664DFE38();
  v75 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v73 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v70 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v70 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v70 - v19;
  if (!a2)
  {
    v74 = a5;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v34 = v75;
    (*(v75 + 16))(v20, v33, v10);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06C8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v71 = a3;
      v38 = v37;
      v39 = swift_slowAlloc();
      v79[0] = v39;
      *v38 = 136315138;
      v80 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726A8, &qword_2664E4B00);
      v40 = sub_2664E0318();
      v73 = v10;
      v42 = a4;
      v43 = sub_2662A320C(v40, v41, v79);

      *(v38 + 4) = v43;
      a4 = v42;
      _os_log_impl(&dword_26629C000, v35, v36, "group leader endpoint %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266784AD0](v39, -1, -1);
      v44 = v38;
      a3 = v71;
      MEMORY[0x266784AD0](v44, -1, -1);

      (*(v34 + 8))(v20, v73);
    }

    else
    {

      (*(v34 + 8))(v20, v10);
    }

    __swift_project_boxed_opaque_existential_1((a3 + 40), *(a3 + 64));
    v45 = swift_allocObject();
    *(v45 + 16) = a4;
    *(v45 + 24) = v74;

    sub_2664A3CBC(a1, sub_266341020, v45);
  }

  v71 = a3;
  type metadata accessor for CFError(0);
  sub_2662F0D58();
  v21 = swift_allocError();
  *v22 = a2;
  v70 = a2;
  v23 = sub_2664DE198();

  v24 = [v23 code];
  v72 = a4;
  if (v24 == 33)
  {
    v74 = a1;
    v25 = [v23 domain];
    result = sub_2664E02C8();
    if (!*MEMORY[0x277D27AE0])
    {
      __break(1u);
      return result;
    }

    v28 = result;
    v29 = v27;

    if (v28 == sub_2664E02C8() && v29 == v30)
    {

      v31 = v72;
      v32 = v74;
LABEL_14:
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v47 = __swift_project_value_buffer(v10, qword_280F914F0);
      swift_beginAccess();
      (*(v75 + 16))(v18, v47, v10);
      v48 = sub_2664DFE18();
      v49 = sub_2664E06C8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_26629C000, v48, v49, "group leader legacy", v50, 2u);
        MEMORY[0x266784AD0](v50, -1, -1);
      }

      (*(v75 + 8))(v18, v10);
      __swift_project_boxed_opaque_existential_1((v71 + 40), *(v71 + 64));
      v51 = swift_allocObject();
      *(v51 + 16) = v31;
      *(v51 + 24) = a5;

      sub_2664A3CBC(v32, sub_266340F74, v51);
    }

    v46 = sub_2664E0D88();

    v31 = v72;
    v32 = v74;
    if (v46)
    {
      goto LABEL_14;
    }
  }

  v74 = a5;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v52 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v53 = v75;
  v71 = *(v75 + 16);
  (v71)(v15, v52, v10);
  v54 = v70;
  v55 = sub_2664DFE18();
  v56 = sub_2664E06D8();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&v76 = v58;
    *v57 = 136315138;
    v80 = a2;
    v59 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726B8, &qword_2664E4B08);
    v60 = sub_2664E0318();
    v62 = sub_2662A320C(v60, v61, &v76);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_26629C000, v55, v56, "group leader endpoint not found: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    v63 = v58;
    v53 = v75;
    MEMORY[0x266784AD0](v63, -1, -1);
    MEMORY[0x266784AD0](v57, -1, -1);
  }

  v64 = *(v53 + 8);
  v64(v15, v10);
  v65 = v73;
  (v71)(v73, v52, v10);
  v66 = sub_2664DFE18();
  v67 = sub_2664E06B8();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v76 = v69;
    *v68 = 134218498;
    *(v68 + 4) = 9;
    *(v68 + 12) = 2048;
    *(v68 + 14) = 8;
    *(v68 + 22) = 2080;
    *(v68 + 24) = sub_2662A320C(0xD00000000000001BLL, 0x80000002664F4660, &v76);
    _os_log_impl(&dword_26629C000, v66, v67, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v68, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x266784AD0](v69, -1, -1);
    MEMORY[0x266784AD0](v68, -1, -1);
  }

  v64(v65, v10);
  v76 = xmmword_2664E63B0;
  v77 = 0x80000002664F4660;
  v78 = 1;
  v72(&v76);
  return sub_2662D2F30(v76, *(&v76 + 1), v77, v78);
}

uint64_t sub_266340DC0(unsigned __int16 *a1, uint64_t (*a2)(uint64_t *))
{
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = *(a1 + 1);
    v7 = *a1;
    v8 = v5;
    v9 = v4;
    v10 = 1;

    a2(&v7);
    return sub_2662D2F30(v7, v8, v9, v10);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    return a2(&v7);
  }
}

void sub_266340F24(void *a1)
{
  v2 = v1[14];
  v3 = sub_2664AD590(a1, v1[12], v1[13]);
  v2();
}

uint64_t sub_266341038(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007374;
  v3 = 0x6C75736552706F74;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x736E6F6974617473;
  if (a1 != 6)
  {
    v6 = 0x6169726F74696465;
    v5 = 0xEE00736D6574496CLL;
  }

  v7 = 0x6970456F69646172;
  v8 = 0xED00007365646F73;
  if (a1 != 4)
  {
    v7 = 0x73676E6F73;
    v8 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x73747369747261;
  if (a1 != 2)
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xE900000000000073;
  }

  v11 = 0xE600000000000000;
  v12 = 0x736D75626C61;
  if (!a1)
  {
    v12 = 0x6C75736552706F74;
    v11 = 0xEA00000000007374;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x736E6F6974617473)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xEE00736D6574496CLL;
        if (v13 != 0x6169726F74696465)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xED00007365646F73;
      if (v13 != 0x6970456F69646172)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x73676E6F73)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x73747369747261)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x7473696C79616C70;
      v2 = 0xE900000000000073;
    }

    else if (a2)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x736D75626C61)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_2664E0D88();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_2663412C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D7269666E6F63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6F666E4965726F6DLL;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7463656A6572;
    }

    else
    {
      v4 = 0x6D7269666E6F63;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6F666E4965726F6DLL;
  if (a2 != 2)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x7463656A6572;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2664E0D88();
  }

  return v11 & 1;
}

uint64_t sub_2663413F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1954047342;
    }

    else
    {
      v4 = 7827310;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x726574616CLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  else
  {
    v4 = 0x726F707075736E75;
    v3 = 0xEB00000000646574;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1954047342;
    }

    else
    {
      v9 = 7827310;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x6E776F6E6B6E75;
    if (a2 != 3)
    {
      v6 = 0x726F707075736E75;
      v5 = 0xEB00000000646574;
    }

    if (a2 == 2)
    {
      v7 = 0x726574616CLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_2664E0D88();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_266341574(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 6647407;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE300000000000000;
    v4 = 7105633;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  else
  {
    v4 = 0x726F707075736E75;
    v3 = 0xEB00000000646574;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 6647407;
    }

    else
    {
      v9 = 1701736302;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x6E776F6E6B6E75;
    if (a2 != 3)
    {
      v6 = 0x726F707075736E75;
      v5 = 0xEB00000000646574;
    }

    if (a2 == 2)
    {
      v7 = 7105633;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_2664E0D88();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2663416E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6574656C706D6F63;
  v4 = a1;
  v5 = 0x80000002664F3300;
  v6 = 0x656C7069746C756DLL;
  v7 = 0xEE0064656C696146;
  if (a1 != 4)
  {
    v6 = 0x656C706D6F636E69;
    v7 = 0xEA00000000006574;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x64656C696166;
  if (a1 != 1)
  {
    v9 = 0xD000000000000013;
    v8 = 0x80000002664F32E0;
  }

  if (!a1)
  {
    v9 = 0x6574656C706D6F63;
    v8 = 0xE900000000000064;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x80000002664F3300;
      if (v10 != 0xD000000000000013)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE0064656C696146;
      if (v10 != 0x656C7069746C756DLL)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xEA00000000006574;
      if (v10 != 0x656C706D6F636E69)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x64656C696166)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0xD000000000000013;
      v2 = 0x80000002664F32E0;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_2664E0D88();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_2663418D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6E696D7265746564;
    }

    else
    {
      v3 = 0x63697473756F6361;
    }

    if (v2)
    {
      v4 = 0xE900000000000065;
    }

    else
    {
      v4 = 0xEA00000000004449;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000002664F1900;
    v3 = 0xD000000000000014;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000002664F1920;
  }

  else
  {
    v3 = 0x6964654D6E65706FLL;
    v4 = 0xED00006D65744961;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6E696D7265746564;
    }

    else
    {
      v6 = 0x63697473756F6361;
    }

    if (a2)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xEA00000000004449;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000002664F1900;
    if (v3 != 0xD000000000000014)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000002664F1920;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED00006D65744961;
    if (v3 != 0x6964654D6E65706FLL)
    {
LABEL_31:
      v7 = sub_2664E0D88();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_266341AA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x62696C656C6F6877;
  v5 = 0xEC00000079726172;
  if (a1 != 6)
  {
    v4 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1684630645;
  if (a1 != 4)
  {
    v7 = 0x6867696C746F7073;
    v6 = 0xE900000000000074;
  }

  if (a1 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x72657669746C756DLL;
  v9 = 0xEA00000000006573;
  if (a1 != 2)
  {
    v8 = 0x65726F7473;
    v9 = 0xE500000000000000;
  }

  v10 = 0x636E797369726973;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v10 = 0x656369766564;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEC00000079726172;
        if (v11 != 0x62696C656C6F6877)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
LABEL_45:
          v14 = sub_2664E0D88();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1684630645)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE900000000000074;
      if (v11 != 0x6867696C746F7073)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEA00000000006573;
      if (v11 != 0x72657669746C756DLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x65726F7473)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x636E797369726973)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x656369766564)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_266341D20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006575;
  v3 = 0x6575516F54646461;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x657469726F766166;
    v14 = 0xE900000000000064;
    if (a1 != 2)
    {
      v13 = 0x69726F7661666E75;
      v14 = 0xEB00000000646574;
    }

    v15 = 0x506F546465646461;
    v16 = 0xEF7473696C79616CLL;
    if (!a1)
    {
      v15 = 0x6575516F54646461;
      v16 = 0xEA00000000006575;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x7473614C79616C70;
    v7 = 0x6574664179616C70;
    v8 = 0xE900000000000072;
    if (a1 != 7)
    {
      v7 = 0x4C74736567677573;
      v8 = 0xEB00000000737365;
    }

    if (a1 != 6)
    {
      v6 = v7;
      v5 = v8;
    }

    v9 = 0x417972617262696CLL;
    v10 = 0xEC00000064656464;
    if (a1 != 4)
    {
      v9 = 0x7478654E79616C70;
      v10 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE900000000000064;
        if (v11 != 0x657469726F766166)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xEB00000000646574;
        if (v11 != 0x69726F7661666E75)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xEF7473696C79616CLL;
      if (v11 != 0x506F546465646461)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xEC00000064656464;
        if (v11 != 0x417972617262696CLL)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x7478654E79616C70)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x7473614C79616C70)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xE900000000000072;
      if (v11 != 0x6574664179616C70)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v3 = 0x4C74736567677573;
    v2 = 0xEB00000000737365;
  }

  if (v11 != v3)
  {
LABEL_49:
    v17 = sub_2664E0D88();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_266342030(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E6F685069;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646F50656D6F68;
    }

    else
    {
      v4 = 0x5654656C707061;
    }

    v5 = 0xE700000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 1684099177;
    }

    else
    {
      v4 = 0x656E6F685069;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x646F50656D6F68;
  if (a2 != 2)
  {
    v7 = 0x5654656C707061;
  }

  if (a2)
  {
    v2 = 1684099177;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2664E0D88();
  }

  return v10 & 1;
}

uint64_t static PlaybackItem.Identifier.parse(uri:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2664DFE08();
  v116 = *(v6 - 8);
  v117 = v6;
  MEMORY[0x28223BE20](v6);
  v115 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664DFE38();
  v119 = *(v8 - 8);
  v120 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v104 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v113 = &v104 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v104 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v104 - v20;
  v22 = sub_2664DE268();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = a1;
  sub_2664DE258();
  v26 = v23;
  v27 = *(v23 + 48);
  v118 = v22;
  if (v27(v21, 1, v22) == 1)
  {
    sub_2662A9238(v21, &qword_280072BC0, &qword_2664E6030);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = v120;
    v29 = __swift_project_value_buffer(v120, qword_280F914F0);
    swift_beginAccess();
    v30 = v119;
    (*(v119 + 16))(v11, v29, v28);

    v31 = sub_2664DFE18();
    v32 = sub_2664E06D8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = a3;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v121[0] = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_2662A320C(v114, a2, v121);
      _os_log_impl(&dword_26629C000, v31, v32, "Identifier#parse uri:%{public}s not parseable as URL", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266784AD0](v35, -1, -1);
      v36 = v34;
      a3 = v33;
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    (*(v30 + 8))(v11, v120);
    v37 = sub_2664E0858();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v38 = qword_280F91D48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2664E36F0;
    v40 = MEMORY[0x277D83C10];
    *(v39 + 56) = MEMORY[0x277D83B88];
    *(v39 + 64) = v40;
    *(v39 + 32) = 1;
    v41 = v115;
    sub_2664DFDF8();
    sub_2664DFDC8(v37, &dword_26629C000, v38, "invalidPlaybackItemIdentifier", 29, 2, v41, "status=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 65, 2, v39);

    result = (*(v116 + 8))(v41, v117);
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v112 = a3;
  (*(v23 + 32))(v25, v21, v118);
  v121[1] = sub_2664DE238();
  v121[2] = v43;
  if (qword_280071AD8 != -1)
  {
    swift_once();
  }

  v44 = sub_2664DE098();
  __swift_project_value_buffer(v44, qword_280072C58);
  sub_2662D2EBC();
  v45 = sub_2664E0988();
  v47 = v46;

  v48 = sub_2664DE248();
  v50 = v119;
  if (!v49)
  {
    goto LABEL_22;
  }

  v51 = v49;
  v110 = v48;
  v52 = sub_2664DE228();
  if (v53)
  {
    v54 = v53;
    v55 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v55 = v45 & 0xFFFFFFFFFFFFLL;
    }

    if (!v55 || v52 == v45 && v53 == v47 || (v109 = v52, (sub_2664E0D88() & 1) != 0))
    {

      goto LABEL_21;
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v108 = v51;
    v114 = v54;
    v70 = v120;
    v71 = __swift_project_value_buffer(v120, qword_280F914F0);
    swift_beginAccess();
    v105 = *(v50 + 16);
    v106 = v71;
    v105(v18, v71, v70);

    v72 = sub_2664DFE18();
    v73 = sub_2664E06B8();

    v74 = os_log_type_enabled(v72, v73);
    v111 = v25;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v121[0] = v76;
      *v75 = 136315138;
      *(v75 + 4) = sub_2662A320C(v45, v47, v121);
      _os_log_impl(&dword_26629C000, v72, v73, "Identifier#parse identifier: %s ", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x266784AD0](v76, -1, -1);
      MEMORY[0x266784AD0](v75, -1, -1);
    }

    v107 = *(v50 + 8);
    v107(v18, v120);
    a3 = v112;
    v77 = v114;

    v78._countAndFlagsBits = v109;
    v78._object = v77;
    PlaybackItem.ContentOrigin.init(rawValue:)(v78);
    if (LOBYTE(v121[0]) == 8)
    {
      v79 = 7;
    }

    else
    {
      v79 = LOBYTE(v121[0]);
    }

    v80 = v108;

    v81._countAndFlagsBits = v110;
    v81._object = v80;
    PlaybackItem.Scheme.init(rawValue:)(v81);
    if (LOBYTE(v121[0]) == 16)
    {
      v82 = 15;
    }

    else
    {
      v82 = LOBYTE(v121[0]);
    }

    LOBYTE(v121[0]) = v82;
    v83 = PlaybackItem.Scheme.rawValue.getter();
    v85 = v113;
    if (v83 == 0x6E776F6E6B6E75 && v84 == 0xE700000000000000)
    {
      goto LABEL_42;
    }

    v86 = sub_2664E0D88();

    if (v86)
    {

      a3 = v112;
      goto LABEL_46;
    }

    if (v79 > 3)
    {
      if (v79 > 5)
      {
        a3 = v112;
        if (v79 != 6)
        {
LABEL_42:

LABEL_43:

LABEL_46:
          v87 = v85;
          v105(v85, v106, v120);
          v88 = v114;

          v89 = v108;

          v90 = sub_2664DFE18();
          v91 = sub_2664E06D8();

          v92 = os_log_type_enabled(v90, v91);
          v93 = v111;
          if (v92)
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v121[0] = v95;
            *v94 = 136446466;
            v96 = sub_2662A320C(v110, v89, v121);

            *(v94 + 4) = v96;
            *(v94 + 12) = 2082;
            v97 = sub_2662A320C(v109, v88, v121);

            *(v94 + 14) = v97;
            a3 = v112;
            _os_log_impl(&dword_26629C000, v90, v91, "Identifier#parse unknown scheme:%{public}s or contentOrigin: %{public}s", v94, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266784AD0](v95, -1, -1);
            MEMORY[0x266784AD0](v94, -1, -1);
          }

          else
          {
          }

          v107(v87, v120);
          v98 = sub_2664E0858();
          if (qword_280F91508 != -1)
          {
            swift_once();
          }

          v99 = qword_280F91D48;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
          v100 = swift_allocObject();
          *(v100 + 16) = xmmword_2664E36F0;
          v101 = MEMORY[0x277D83C10];
          *(v100 + 56) = MEMORY[0x277D83B88];
          *(v100 + 64) = v101;
          *(v100 + 32) = 3;
          v102 = v115;
          sub_2664DFDF8();
          sub_2664DFDC8(v98, &dword_26629C000, v99, "invalidPlaybackItemIdentifier", 29, 2, v102, "status=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 65, 2, v100);

          (*(v116 + 8))(v102, v117);
          result = (*(v26 + 8))(v93, v118);
          goto LABEL_9;
        }
      }

      else
      {
        a3 = v112;
      }
    }

    else
    {
      a3 = v112;
    }

    v103 = sub_2664E0D88();

    if ((v103 & 1) == 0)
    {
      (*(v26 + 8))(v111, v118);

      *a3 = v82 | (v79 << 8);
      a3[1] = v45;
      a3[2] = v47;
      return result;
    }

    goto LABEL_43;
  }

LABEL_21:

LABEL_22:

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v56 = v120;
  v57 = __swift_project_value_buffer(v120, qword_280F914F0);
  swift_beginAccess();
  (*(v50 + 16))(v14, v57, v56);

  v58 = sub_2664DFE18();
  v59 = sub_2664E06D8();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v111 = v25;
    v62 = v50;
    v63 = v61;
    v121[0] = v61;
    *v60 = 136446210;
    *(v60 + 4) = sub_2662A320C(v114, a2, v121);
    _os_log_impl(&dword_26629C000, v58, v59, "Identifier#parse could not initialize Identifier from uri: %{public}s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x266784AD0](v63, -1, -1);
    MEMORY[0x266784AD0](v60, -1, -1);

    (*(v62 + 8))(v14, v120);
    v25 = v111;
  }

  else
  {

    (*(v50 + 8))(v14, v120);
  }

  v64 = sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v65 = qword_280F91D48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_2664E36F0;
  v67 = MEMORY[0x277D83C10];
  *(v66 + 56) = MEMORY[0x277D83B88];
  *(v66 + 64) = v67;
  *(v66 + 32) = 2;
  v68 = v115;
  sub_2664DFDF8();
  sub_2664DFDC8(v64, &dword_26629C000, v65, "invalidPlaybackItemIdentifier", 29, 2, v68, "status=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 65, 2, v66);

  (*(v116 + 8))(v68, v117);
  result = (*(v26 + 8))(v25, v118);
  v69 = v112;
  *v112 = 0;
  v69[1] = 0;
  v69[2] = 0;
  return result;
}

uint64_t sub_2663430A0()
{
  sub_2664E0B28();

  MEMORY[0x2667833B0](*(v0 + 32), *(v0 + 40));
  MEMORY[0x2667833B0](0x6573734173616820, 0xEF203A6F666E4974);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
  v1 = sub_2664E0318();
  MEMORY[0x2667833B0](v1);

  return 0x203A697275;
}

uint64_t PlaybackItem.init(_:assetInfo:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  static PlaybackItem.Identifier.parse(uri:)(a1, a2, v25);
  v14 = v26;
  if (v26)
  {
    v16 = v25[0];
    v15 = v25[1];
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
    *(v5 + 48) = v16;
    *(v5 + 56) = v15;
    *(v5 + 64) = v14;
    swift_beginAccess();
    *(v5 + 16) = a3;
    *(v5 + 24) = a4;
  }

  else
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v13, v17, v10);

    v18 = sub_2664DFE18();
    v19 = sub_2664E06D8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315138;
      v22 = sub_2662A320C(a1, a2, &v24);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_26629C000, v18, v19, "Error creating identifier for uri: %s. Failing initializer", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x266784AD0](v21, -1, -1);
      MEMORY[0x266784AD0](v20, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v13, v10);

    type metadata accessor for PlaybackItem();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

uint64_t sub_2663434D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_266343534()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_266343580(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t PlaybackItem.uri.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PlaybackItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t PlaybackItem.Identifier.description.getter(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  BYTE8(v6) = 0;
  *&v6 = *v1;
  v4 = PlaybackItem.Scheme.rawValue.getter();
  MEMORY[0x2667833B0](v4);

  MEMORY[0x2667833B0](3092282, 0xE300000000000000);
  sub_2664E0C28();
  MEMORY[0x2667833B0](47, 0xE100000000000000);
  MEMORY[0x2667833B0](v2, v3);
  return *(&v6 + 1);
}

unint64_t PlaybackItem.Scheme.rawValue.getter()
{
  result = 0x6172706D61732D78;
  switch(*v0)
  {
    case 1:
      result = 0x6C70706D61732D78;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x656D706D61732D78;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
    case 8:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 0xA:
      result = 0x2D616964656D2D78;
      break;
    case 0xB:
      result = 0x6574616572632D78;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
    case 0xE:
      result = 0xD00000000000001ALL;
      break;
    case 0xF:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

SiriAudioSupport::PlaybackItem::Identifier __swiftcall PlaybackItem.Identifier.init(scheme:contentOrigin:identifier:)(SiriAudioSupport::PlaybackItem::Scheme scheme, SiriAudioSupport::PlaybackItem::ContentOrigin contentOrigin, Swift::String identifier)
{
  v4 = *contentOrigin;
  *v3 = *scheme;
  *(v3 + 1) = v4;
  *(v3 + 8) = identifier;
  result.identifier._object = identifier._countAndFlagsBits;
  LOBYTE(result.identifier._countAndFlagsBits) = contentOrigin;
  result.scheme = scheme;
  return result;
}

uint64_t sub_26634393C()
{
  v0 = sub_2664DE098();
  __swift_allocate_value_buffer(v0, qword_280072C58);
  __swift_project_value_buffer(v0, qword_280072C58);
  return sub_2664DE078();
}

uint64_t PlaybackItem.Identifier.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PlaybackItem.Identifier.decodedSiriSyncID.getter()
{
  v1 = sub_2664E0308();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = *(v0 + 8);
  if (*(v0 + 1) <= 1u)
  {
    if (*(v0 + 1))
    {
      v4 = sub_2664DE2A8();
      if (v5 >> 60 != 15)
      {
        v6 = v4;
        v7 = v5;
        sub_2664E02F8();
        v8 = sub_2664E02D8();
        v10 = v9;
        sub_2662B79A8(v6, v7);
        if (v10)
        {
          return v8;
        }
      }
    }
  }

  return v2;
}

uint64_t PlaybackItem.Identifier.identifierForSiriSyncID.getter()
{
  v1 = sub_2664E0308();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = *(v0 + 1);
  v4 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v2 <= 1 && *(v0 + 1) && (v6 = sub_2664DE2A8(), v7 >> 60 != 15) && (v8 = v6, v9 = v7, sub_2664E02F8(), v10 = sub_2664E02D8(), v12 = v11, sub_2662B79A8(v8, v9), v12))
  {
    v4 = v10;
    v3 = v12;
  }

  else
  {
  }

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  if (v2 <= 1 && v2)
  {
  }

  else
  {
    v13 = sub_2664E0D88();

    if ((v13 & 1) == 0)
    {
LABEL_15:
      v14 = 0;
      goto LABEL_21;
    }
  }

  sub_2662D2EBC();
  v15 = sub_2664E0968();

  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 16 + 16 * v16);
    v14 = *v17;
    v18 = v17[1];
  }

  else
  {
    v14 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = sub_2662F26E0(1, v14, v18);
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_2663487F8(v19, v21, v23, v25, 45, 0xE100000000000000);
LABEL_21:

  return v14;
}

SiriAudioSupport::PlaybackItem::Identifier_optional __swiftcall PlaybackItem.Identifier.init(from:)(Swift::String from)
{
  v134 = v1;
  v135 = sub_2664DFE38();
  v133 = *(v135 - 8);
  v2 = MEMORY[0x28223BE20](v135);
  v132 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v125 = &v118 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v128 = &v118 - v7;
  MEMORY[0x28223BE20](v6);
  v127 = &v118 - v8;
  v9 = sub_2664DF768();
  v10 = *(v9 - 1);
  v129 = v9;
  v130 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v126 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v118 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v118 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v118 - v19;
  v21 = sub_2664DF748();
  v131 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v118 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v118 - v29);
  MEMORY[0x28223BE20](v28);
  v32 = &v118 - v31;
  sub_2664DF778();
  v120 = v24;
  v121 = v27;
  v119 = v15;
  v122 = v18;
  v123 = v20;
  v33 = v130;

  v34 = v131;
  v35 = *(v131 + 16);
  v124 = v32;
  v35(v30, v32, v21);
  v36 = (*(v34 + 88))(v30, v21);
  if (v36 == *MEMORY[0x277D2A540])
  {
    v37 = *(v34 + 96);
    v132 = v21;
    v37(v30, v21);
    v39 = *v30;
    v38 = v30[1];
    v41 = v30[2];
    v40 = v30[3];
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v42 = v135;
    v43 = __swift_project_value_buffer(v135, qword_280F914F0);
    swift_beginAccess();
    v44 = v133;
    v45 = v128;
    (*(v133 + 16))(v128, v43, v42);

    v46 = sub_2664DFE18();
    v47 = sub_2664E06C8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v130 = v41;
      v49 = v39;
      v50 = v48;
      v51 = swift_slowAlloc();
      v137 = v51;
      *v50 = 136315394;

      v52 = v44;
      v53 = sub_2664E0148();
      v55 = v54;

      v56 = sub_2662A320C(v53, v55, &v137);

      *(v50 + 4) = v56;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_2662A320C(v130, v40, &v137);
      _os_log_impl(&dword_26629C000, v46, v47, "Identifier#init(from musicKitId:) catalog content with id: %s and type: %s", v50, 0x16u);
      swift_arrayDestroy();
      v57 = v51;
      v34 = v131;
      MEMORY[0x266784AD0](v57, -1, -1);
      v58 = v50;
      v39 = v49;
      v41 = v130;
      MEMORY[0x266784AD0](v58, -1, -1);

      (*(v52 + 8))(v128, v135);
    }

    else
    {

      (*(v44 + 8))(v45, v42);
    }

    v81 = v124;
    if (v41 == 0x736D75626C61 && v40 == 0xE600000000000000 || (sub_2664E0D88() & 1) != 0)
    {

      v82 = 2;
    }

    else if (v41 == 0x73676E6F73 && v40 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
    {

      v82 = 3;
    }

    else if (v41 == 0x7473696C79616C70 && v40 == 0xE900000000000073 || (sub_2664E0D88() & 1) != 0)
    {

      v82 = 1;
    }

    else if (v41 == 0x736E6F6974617473 && v40 == 0xE800000000000000)
    {

      v82 = 0;
    }

    else
    {
      v117 = sub_2664E0D88();

      if (v117)
      {
        v82 = 0;
      }

      else
      {
        v82 = 15;
      }
    }

    v137 = 0;
    v138 = 0xE000000000000000;
    LOBYTE(v136) = v82;
    v83 = PlaybackItem.Scheme.rawValue.getter();
    MEMORY[0x2667833B0](v83);

    MEMORY[0x2667833B0](3092282, 0xE300000000000000);
    LOBYTE(v136) = 3;
    sub_2664E0C28();
    MEMORY[0x2667833B0](47, 0xE100000000000000);
    MEMORY[0x2667833B0](v39, v38);

    v84 = v137;
    v85 = v138;
    v86 = 768;
    v87 = v132;
LABEL_47:
    v110 = (*(v34 + 8))(v81, v87);
    v116 = v134;
    *v134 = v86 | v82;
    v116[1] = v84;
    v116[2] = v85;
    goto LABEL_51;
  }

  if (v36 == *MEMORY[0x277D2A548])
  {
    v60 = *(v34 + 96);
    v132 = v21;
    v60(v30, v21);
    v61 = v30[1];
    v128 = *v30;
    v121 = v61;
    v62 = v30[2];
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C78, &unk_2664E6488);
    v64 = v123;
    v65 = v129;
    (*(v33 + 32))(v123, v30 + *(v63 + 64), v129);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v66 = v135;
    v67 = __swift_project_value_buffer(v135, qword_280F914F0);
    swift_beginAccess();
    v68 = v133;
    (*(v133 + 16))(v127, v67, v66);
    v69 = v122;
    v125 = *(v33 + 16);
    (v125)(v122, v64, v65);

    v70 = sub_2664DFE18();
    v71 = sub_2664E06C8();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v137 = v120;
      *v72 = 134218498;
      *(v72 + 4) = v128;
      *(v72 + 12) = 2080;
      v73 = sub_2662A320C(v121, v62, &v137);

      *(v72 + 14) = v73;
      *(v72 + 22) = 2080;
      (v125)(v119, v69, v129);
      v74 = sub_2664E0318();
      v76 = v75;
      v77 = *(v33 + 8);
      v77(v69, v129);
      v78 = sub_2662A320C(v74, v76, &v137);

      *(v72 + 24) = v78;
      v79 = v77;
      _os_log_impl(&dword_26629C000, v70, v71, "Identifier#init(from musicKitId:) library content with deviceLocalId: %lld, deviceLocalDatabaseID: %s, kind: %s", v72, 0x20u);
      v80 = v120;
      swift_arrayDestroy();
      v65 = v129;
      MEMORY[0x266784AD0](v80, -1, -1);
      MEMORY[0x266784AD0](v72, -1, -1);
    }

    else
    {

      v79 = *(v33 + 8);
      v79(v69, v65);
    }

    (*(v68 + 8))(v127, v135);
    v107 = v132;
    v108 = v126;
    (v125)(v126, v123, v65);
    v109 = (*(v33 + 88))(v108, v65);
    if (v109 == *MEMORY[0x277D2A590])
    {
      v82 = 2;
    }

    else if (v109 == *MEMORY[0x277D2A5A0])
    {
      v82 = 8;
    }

    else if (v109 == *MEMORY[0x277D2A598])
    {
      v82 = 9;
    }

    else if (v109 == *MEMORY[0x277D2A5C8])
    {
      v82 = 1;
    }

    else if (v109 == *MEMORY[0x277D2A588])
    {
      v82 = 3;
    }

    else
    {
      v79(v108, v65);
      v82 = 15;
    }

    v137 = 0;
    v138 = 0xE000000000000000;
    LOBYTE(v136) = v82;
    v114 = PlaybackItem.Scheme.rawValue.getter();
    MEMORY[0x2667833B0](v114);

    MEMORY[0x2667833B0](3092282, 0xE300000000000000);
    LOBYTE(v136) = 0;
    sub_2664E0C28();
    MEMORY[0x2667833B0](47, 0xE100000000000000);
    v136 = v128;
    v115 = sub_2664E0D48();
    MEMORY[0x2667833B0](v115);

    v84 = v137;
    v85 = v138;
    v79(v123, v65);
    v86 = 0;
    v87 = v107;
    v34 = v131;
    v81 = v124;
    goto LABEL_47;
  }

  v130 = v30;
  v88 = v124;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v89 = v135;
  v90 = __swift_project_value_buffer(v135, qword_280F914F0);
  swift_beginAccess();
  v91 = v133;
  v92 = v125;
  (*(v133 + 16))(v125, v90, v89);
  v93 = v121;
  v35(v121, v88, v21);
  v94 = sub_2664DFE18();
  v95 = sub_2664E06D8();
  v96 = os_log_type_enabled(v94, v95);
  v97 = v120;
  if (v96)
  {
    v98 = swift_slowAlloc();
    v132 = v21;
    v99 = v98;
    v129 = swift_slowAlloc();
    v137 = v129;
    *v99 = 136315138;
    v35(v97, v93, v132);
    v128 = sub_2664E0318();
    v100 = v34;
    v102 = v101;
    v103 = *(v100 + 8);
    v103(v93, v132);
    v104 = sub_2662A320C(v128, v102, &v137);

    *(v99 + 4) = v104;
    _os_log_impl(&dword_26629C000, v94, v95, "Identifier#init(from musicKitId:) unknown musicKitId type: %s", v99, 0xCu);
    v105 = v129;
    __swift_destroy_boxed_opaque_existential_1Tm(v129);
    MEMORY[0x266784AD0](v105, -1, -1);
    v106 = v99;
    v21 = v132;
    MEMORY[0x266784AD0](v106, -1, -1);
  }

  else
  {

    v103 = *(v34 + 8);
    v103(v93, v21);
  }

  (*(v91 + 8))(v92, v135);
  v103(v124, v21);
  v110 = (v103)(v130, v21);
  v59 = v134;
  *v134 = 0;
  v59[1] = 0;
  v59[2] = 0;
LABEL_51:
  result.value.identifier._object = v112;
  result.value.identifier._countAndFlagsBits = v111;
  *&result.value.scheme = v110;
  result.is_nil = v113;
  return result;
}

uint64_t PlaybackItem.Identifier.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2664DFBE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664DFC08();
  if (!v9)
  {
    v15 = sub_2664DFC48();
    result = (*(*(v15 - 8) + 8))(a1, v15);
    goto LABEL_7;
  }

  v10 = v9;
  v11 = v8;
  sub_2664DFC18();
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 != *MEMORY[0x277D554A8] && v12 != *MEMORY[0x277D554C8] && v12 != *MEMORY[0x277D554C0])
  {
    v16 = v12 == *MEMORY[0x277D55510] || v12 == *MEMORY[0x277D55500];
    v17 = v11;
    if (!v16)
    {
      if (v12 == *MEMORY[0x277D55470])
      {
        goto LABEL_5;
      }

      if (v12 != *MEMORY[0x277D55528] && v12 != *MEMORY[0x277D55498])
      {
        if (v12 == *MEMORY[0x277D554F0])
        {
          goto LABEL_5;
        }

        if (v12 == *MEMORY[0x277D554F8])
        {
          goto LABEL_24;
        }

        if (v12 == *MEMORY[0x277D55448])
        {
          goto LABEL_5;
        }

        v17 = v11;
        if (v12 != *MEMORY[0x277D554B8])
        {
          if (v12 == *MEMORY[0x277D55488] || v12 == *MEMORY[0x277D554E0])
          {
            goto LABEL_5;
          }

          if (v12 != *MEMORY[0x277D554A0])
          {
            if (v12 == *MEMORY[0x277D55518] || v12 == *MEMORY[0x277D55480])
            {
              goto LABEL_5;
            }

            if (v12 == *MEMORY[0x277D55490])
            {
LABEL_24:
              v31 = 0;
              v32 = 0xE000000000000000;
              MEMORY[0x2667833B0](0xD000000000000017, 0x80000002664F1760);
              MEMORY[0x2667833B0](3092282, 0xE300000000000000);
              v34 = 3;
              sub_2664E0C28();
              MEMORY[0x2667833B0](47, 0xE100000000000000);
              MEMORY[0x2667833B0](v11, v10);

              v21 = v31;
              v20 = v32;
              v25 = sub_2664DFC48();
              result = (*(*(v25 - 8) + 8))(a1, v25);
              v23 = 768;
              v22 = 5;
              goto LABEL_16;
            }

            v17 = v11;
            if (v12 != *MEMORY[0x277D55458])
            {
              if (v12 == *MEMORY[0x277D55478] || v12 == *MEMORY[0x277D554D0])
              {
                goto LABEL_5;
              }

              if (v12 == *MEMORY[0x277D554E8])
              {
                v31 = 0;
                v32 = 0xE000000000000000;
                MEMORY[0x2667833B0](0xD000000000000014, 0x80000002664F1740);
                MEMORY[0x2667833B0](3092282, 0xE300000000000000);
                v34 = 3;
                sub_2664E0C28();
                MEMORY[0x2667833B0](47, 0xE100000000000000);
                MEMORY[0x2667833B0](v11, v10);

                v21 = v31;
                v20 = v32;
                v26 = sub_2664DFC48();
                result = (*(*(v26 - 8) + 8))(a1, v26);
                v23 = 768;
                v22 = 4;
                goto LABEL_16;
              }

              if (v12 == *MEMORY[0x277D55468])
              {
                v31 = 0;
                v32 = 0xE000000000000000;
                MEMORY[0x2667833B0](0xD00000000000001FLL, 0x80000002664F17A0);
                MEMORY[0x2667833B0](3092282, 0xE300000000000000);
                v34 = 3;
                sub_2664E0C28();
                MEMORY[0x2667833B0](47, 0xE100000000000000);
                MEMORY[0x2667833B0](v11, v10);

                v21 = v31;
                v20 = v32;
                v27 = sub_2664DFC48();
                result = (*(*(v27 - 8) + 8))(a1, v27);
                v23 = 768;
                v22 = 7;
                goto LABEL_16;
              }

              if (v12 == *MEMORY[0x277D554D8] || v12 == *MEMORY[0x277D55450] || v12 == *MEMORY[0x277D554B0] || v12 == *MEMORY[0x277D55520])
              {
                goto LABEL_5;
              }

              v17 = v11;
              if (v12 != *MEMORY[0x277D55460])
              {
                v28 = *MEMORY[0x277D55508];
                v29 = v12;
                v30 = sub_2664DFC48();
                (*(*(v30 - 8) + 8))(a1, v30);

                if (v29 != v28)
                {
                  result = (*(v5 + 8))(v7, v4);
                }

                goto LABEL_7;
              }
            }
          }
        }
      }
    }

    v18._countAndFlagsBits = v17;
    v18._object = v10;
    PlaybackItem.Identifier.init(from:)(v18);
    v19 = sub_2664DFC48();
    result = (*(*(v19 - 8) + 8))(a1, v19);
    v20 = v33;
    if (!v33)
    {
      goto LABEL_7;
    }

    v21 = v32;
    v22 = v31;
    v23 = v31 & 0xFF00;
LABEL_16:
    *a2 = v23 | v22;
    a2[1] = v21;
    a2[2] = v20;
    return result;
  }

LABEL_5:
  v13 = sub_2664DFC48();
  (*(*(v13 - 8) + 8))(a1, v13);

LABEL_7:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

Swift::Bool __swiftcall PlaybackItem.Identifier.isLibraryIdentifier()()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 1);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = 0x656369766564;
  v7 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, v7, v1);

  v8 = sub_2664DFE18();
  v9 = sub_2664E06B8();

  if (!os_log_type_enabled(v8, v9))
  {

    (*(v2 + 8))(v4, v1);
    goto LABEL_94;
  }

  v10 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  v63 = v62;
  *v10 = 136315138;
  if (byte_2877E2D28 > 3u)
  {
    if (byte_2877E2D28 > 5u)
    {
      if (byte_2877E2D28 == 6)
      {
        v15 = 0x62696C656C6F6877;
        v16 = 0xEC00000079726172;
      }

      else
      {
        v16 = 0xE700000000000000;
        v15 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      if (byte_2877E2D28 == 4)
      {
        v15 = 1684630645;
      }

      else
      {
        v15 = 0x6867696C746F7073;
      }

      if (byte_2877E2D28 == 4)
      {
        v16 = 0xE400000000000000;
      }

      else
      {
        v16 = 0xE900000000000074;
      }
    }
  }

  else
  {
    v11 = 0xE600000000000000;
    v12 = 0x72657669746C756DLL;
    v13 = 0xEA00000000006573;
    if (byte_2877E2D28 != 2)
    {
      v12 = 0x65726F7473;
      v13 = 0xE500000000000000;
    }

    v14 = 0x636E797369726973;
    if (byte_2877E2D28)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v14 = 0x656369766564;
    }

    if (byte_2877E2D28 <= 1u)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    if (byte_2877E2D28 <= 1u)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }
  }

  v17 = 0xE600000000000000;
  v18 = 0x62696C656C6F6877;
  v19 = 0xEC00000079726172;
  if (v5 != 6)
  {
    v18 = 0x6E776F6E6B6E75;
    v19 = 0xE700000000000000;
  }

  v20 = 0xE400000000000000;
  v21 = 1684630645;
  if (v5 != 4)
  {
    v21 = 0x6867696C746F7073;
    v20 = 0xE900000000000074;
  }

  if (v5 <= 5)
  {
    v18 = v21;
    v19 = v20;
  }

  v22 = 0x72657669746C756DLL;
  v23 = 0xEA00000000006573;
  if (v5 != 2)
  {
    v22 = 0x65726F7473;
    v23 = 0xE500000000000000;
  }

  v24 = 0x636E797369726973;
  if (v5)
  {
    v17 = 0xE800000000000000;
  }

  else
  {
    v24 = 0x656369766564;
  }

  if (v5 > 1)
  {
    v17 = v23;
  }

  else
  {
    v22 = v24;
  }

  if (v5 <= 3)
  {
    v25 = v22;
  }

  else
  {
    v25 = v18;
  }

  if (v5 <= 3)
  {
    v26 = v17;
  }

  else
  {
    v26 = v19;
  }

  v27 = 1702195828;
  if (v15 == v25 && v16 == v26)
  {
    goto LABEL_91;
  }

  v28 = sub_2664E0D88();

  if ((v28 & 1) == 0)
  {
    if (byte_2877E2D29 > 3u)
    {
      if (byte_2877E2D29 > 5u)
      {
        if (byte_2877E2D29 == 6)
        {
          v34 = 0x62696C656C6F6877;
          v35 = 0xEC00000079726172;
        }

        else
        {
          v35 = 0xE700000000000000;
          v34 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        if (byte_2877E2D29 == 4)
        {
          v34 = 1684630645;
        }

        else
        {
          v34 = 0x6867696C746F7073;
        }

        if (byte_2877E2D29 == 4)
        {
          v35 = 0xE400000000000000;
        }

        else
        {
          v35 = 0xE900000000000074;
        }
      }
    }

    else
    {
      v30 = 0xE600000000000000;
      v31 = 0x72657669746C756DLL;
      v32 = 0xEA00000000006573;
      if (byte_2877E2D29 != 2)
      {
        v31 = 0x65726F7473;
        v32 = 0xE500000000000000;
      }

      v33 = 0x636E797369726973;
      if (byte_2877E2D29)
      {
        v30 = 0xE800000000000000;
      }

      else
      {
        v33 = 0x656369766564;
      }

      if (byte_2877E2D29 <= 1u)
      {
        v34 = v33;
      }

      else
      {
        v34 = v31;
      }

      if (byte_2877E2D29 <= 1u)
      {
        v35 = v30;
      }

      else
      {
        v35 = v32;
      }
    }

    if (v5 > 3)
    {
      if (v5 > 5)
      {
        if (v5 == 6)
        {
          v37 = 0x62696C656C6F6877;
          v36 = 0xEC00000079726172;
        }

        else
        {
          v36 = 0xE700000000000000;
          v37 = 0x6E776F6E6B6E75;
        }
      }

      else if (v5 == 4)
      {
        v36 = 0xE400000000000000;
        v37 = 1684630645;
      }

      else
      {
        v37 = 0x6867696C746F7073;
        v36 = 0xE900000000000074;
      }
    }

    else if (v5 > 1)
    {
      if (v5 == 2)
      {
        v37 = 0x72657669746C756DLL;
        v36 = 0xEA00000000006573;
      }

      else
      {
        v36 = 0xE500000000000000;
        v37 = 0x65726F7473;
      }
    }

    else if (v5)
    {
      v36 = 0xE800000000000000;
      v37 = 0x636E797369726973;
    }

    else
    {
      v36 = 0xE600000000000000;
      v37 = 0x656369766564;
    }

    if (v34 != v37 || v35 != v36)
    {
      v48 = sub_2664E0D88();

      if (v48)
      {
        goto LABEL_50;
      }

      v49 = 0x656369766564;
      if (byte_2877E2D2A > 3u)
      {
        if (byte_2877E2D2A > 5u)
        {
          if (byte_2877E2D2A == 6)
          {
            v49 = 0x62696C656C6F6877;
            v50 = 0xEC00000079726172;
          }

          else
          {
            v50 = 0xE700000000000000;
            v49 = 0x6E776F6E6B6E75;
          }
        }

        else if (byte_2877E2D2A == 4)
        {
          v50 = 0xE400000000000000;
          v49 = 1684630645;
        }

        else
        {
          v49 = 0x6867696C746F7073;
          v50 = 0xE900000000000074;
        }
      }

      else if (byte_2877E2D2A > 1u)
      {
        if (byte_2877E2D2A == 2)
        {
          v49 = 0x72657669746C756DLL;
          v50 = 0xEA00000000006573;
        }

        else
        {
          v50 = 0xE500000000000000;
          v49 = 0x65726F7473;
        }
      }

      else if (byte_2877E2D2A)
      {
        v50 = 0xE800000000000000;
        v49 = 0x636E797369726973;
      }

      else
      {
        v50 = 0xE600000000000000;
      }

      if (v5 > 3)
      {
        if (v5 > 5)
        {
          if (v5 == 6)
          {
            v58 = 0x62696C656C6F6877;
            v57 = 0xEC00000079726172;
          }

          else
          {
            v57 = 0xE700000000000000;
            v58 = 0x6E776F6E6B6E75;
          }
        }

        else if (v5 == 4)
        {
          v57 = 0xE400000000000000;
          v58 = 1684630645;
        }

        else
        {
          v58 = 0x6867696C746F7073;
          v57 = 0xE900000000000074;
        }
      }

      else if (v5 > 1)
      {
        if (v5 == 2)
        {
          v58 = 0x72657669746C756DLL;
          v57 = 0xEA00000000006573;
        }

        else
        {
          v57 = 0xE500000000000000;
          v58 = 0x65726F7473;
        }
      }

      else if (v5)
      {
        v57 = 0xE800000000000000;
        v58 = 0x636E797369726973;
      }

      else
      {
        v57 = 0xE600000000000000;
        v58 = 0x656369766564;
      }

      if (v49 != v58 || v50 != v57)
      {
        v59 = sub_2664E0D88();

        v60 = (v59 & 1) == 0;
        v27 = 1702195828;
        if (v60)
        {
          v27 = 0x65736C6166;
        }

        if (v60)
        {
          v29 = 0xE500000000000000;
        }

        else
        {
          v29 = 0xE400000000000000;
        }

        goto LABEL_92;
      }
    }

    v27 = 1702195828;
LABEL_91:

    v29 = 0xE400000000000000;
LABEL_92:
    v6 = 0x656369766564;
    goto LABEL_93;
  }

LABEL_50:
  v29 = 0xE400000000000000;
  v6 = 0x656369766564;
  v27 = 1702195828;
LABEL_93:
  v38 = sub_2662A320C(v27, v29, &v63);

  *(v10 + 4) = v38;
  _os_log_impl(&dword_26629C000, v8, v9, "PlaybackItem#isLibraryIdentifier: %s ", v10, 0xCu);
  v39 = v62;
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  MEMORY[0x266784AD0](v39, -1, -1);
  MEMORY[0x266784AD0](v10, -1, -1);

  (*(v2 + 8))(v4, v1);
LABEL_94:
  if (byte_2877E2D28 > 3u)
  {
    if (byte_2877E2D28 > 5u)
    {
      if (byte_2877E2D28 == 6)
      {
        v41 = 0x62696C656C6F6877;
        v40 = 0xEC00000079726172;
        if (v5 <= 3)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v40 = 0xE700000000000000;
        v41 = 0x6E776F6E6B6E75;
        if (v5 <= 3)
        {
          goto LABEL_122;
        }
      }

      goto LABEL_108;
    }

    if (byte_2877E2D28 == 4)
    {
      v40 = 0xE400000000000000;
      v41 = 1684630645;
      if (v5 > 3)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v41 = 0x6867696C746F7073;
      v40 = 0xE900000000000074;
      if (v5 > 3)
      {
        goto LABEL_108;
      }
    }
  }

  else if (byte_2877E2D28 > 1u)
  {
    if (byte_2877E2D28 != 2)
    {
      v40 = 0xE500000000000000;
      v41 = 0x65726F7473;
      if (v5 <= 3)
      {
        goto LABEL_122;
      }

      goto LABEL_108;
    }

    v41 = 0x72657669746C756DLL;
    v40 = 0xEA00000000006573;
    if (v5 > 3)
    {
      goto LABEL_108;
    }
  }

  else
  {
    if (!byte_2877E2D28)
    {
      v40 = 0xE600000000000000;
      v41 = 0x656369766564;
      if (v5 <= 3)
      {
        goto LABEL_122;
      }

LABEL_108:
      if (v5 > 5)
      {
        if (v5 == 6)
        {
          v42 = 0xEC00000079726172;
          if (v41 != 0x62696C656C6F6877)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v42 = 0xE700000000000000;
          if (v41 != 0x6E776F6E6B6E75)
          {
            goto LABEL_139;
          }
        }
      }

      else if (v5 == 4)
      {
        v42 = 0xE400000000000000;
        if (v41 != 1684630645)
        {
          goto LABEL_139;
        }
      }

      else
      {
        v42 = 0xE900000000000074;
        if (v41 != 0x6867696C746F7073)
        {
          goto LABEL_139;
        }
      }

      goto LABEL_136;
    }

    v40 = 0xE800000000000000;
    v41 = 0x636E797369726973;
    if (v5 > 3)
    {
      goto LABEL_108;
    }
  }

LABEL_122:
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v42 = 0xEA00000000006573;
      if (v41 != 0x72657669746C756DLL)
      {
        goto LABEL_139;
      }
    }

    else
    {
      v42 = 0xE500000000000000;
      if (v41 != 0x65726F7473)
      {
        goto LABEL_139;
      }
    }
  }

  else if (v5)
  {
    v42 = 0xE800000000000000;
    if (v41 != 0x636E797369726973)
    {
      goto LABEL_139;
    }
  }

  else
  {
    v42 = 0xE600000000000000;
    if (v41 != 0x656369766564)
    {
      goto LABEL_139;
    }
  }

LABEL_136:
  if (v40 == v42)
  {
    goto LABEL_137;
  }

LABEL_139:
  v44 = sub_2664E0D88();

  if (v44)
  {
LABEL_140:
    v43 = 1;
    return v43 & 1;
  }

  if (byte_2877E2D29 > 3u)
  {
    if (byte_2877E2D29 > 5u)
    {
      if (byte_2877E2D29 == 6)
      {
        v47 = 0x62696C656C6F6877;
        v46 = 0xEC00000079726172;
        if (v5 <= 3)
        {
          goto LABEL_173;
        }
      }

      else
      {
        v46 = 0xE700000000000000;
        v47 = 0x6E776F6E6B6E75;
        if (v5 <= 3)
        {
          goto LABEL_173;
        }
      }

      goto LABEL_161;
    }

    if (byte_2877E2D29 == 4)
    {
      v46 = 0xE400000000000000;
      v47 = 1684630645;
      if (v5 > 3)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v47 = 0x6867696C746F7073;
      v46 = 0xE900000000000074;
      if (v5 > 3)
      {
        goto LABEL_161;
      }
    }
  }

  else if (byte_2877E2D29 > 1u)
  {
    if (byte_2877E2D29 != 2)
    {
      v46 = 0xE500000000000000;
      v47 = 0x65726F7473;
      if (v5 <= 3)
      {
        goto LABEL_173;
      }

      goto LABEL_161;
    }

    v47 = 0x72657669746C756DLL;
    v46 = 0xEA00000000006573;
    if (v5 > 3)
    {
      goto LABEL_161;
    }
  }

  else
  {
    if (!byte_2877E2D29)
    {
      v46 = 0xE600000000000000;
      v47 = 0x656369766564;
      if (v5 <= 3)
      {
        goto LABEL_173;
      }

LABEL_161:
      if (v5 > 5)
      {
        if (v5 == 6)
        {
          v52 = 0x62696C656C6F6877;
          v51 = 0xEC00000079726172;
        }

        else
        {
          v51 = 0xE700000000000000;
          v52 = 0x6E776F6E6B6E75;
        }
      }

      else if (v5 == 4)
      {
        v51 = 0xE400000000000000;
        v52 = 1684630645;
      }

      else
      {
        v52 = 0x6867696C746F7073;
        v51 = 0xE900000000000074;
      }

      goto LABEL_182;
    }

    v46 = 0xE800000000000000;
    v47 = 0x636E797369726973;
    if (v5 > 3)
    {
      goto LABEL_161;
    }
  }

LABEL_173:
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v52 = 0x72657669746C756DLL;
      v51 = 0xEA00000000006573;
    }

    else
    {
      v51 = 0xE500000000000000;
      v52 = 0x65726F7473;
    }
  }

  else if (v5)
  {
    v51 = 0xE800000000000000;
    v52 = 0x636E797369726973;
  }

  else
  {
    v51 = 0xE600000000000000;
    v52 = 0x656369766564;
  }

LABEL_182:
  if (v47 != v52 || v46 != v51)
  {
    v53 = sub_2664E0D88();

    if (v53)
    {
      goto LABEL_140;
    }

    if (byte_2877E2D2A > 3u)
    {
      if (byte_2877E2D2A > 5u)
      {
        if (byte_2877E2D2A == 6)
        {
          v55 = 0x62696C656C6F6877;
          v54 = 0xEC00000079726172;
        }

        else
        {
          v54 = 0xE700000000000000;
          v55 = 0x6E776F6E6B6E75;
        }
      }

      else if (byte_2877E2D2A == 4)
      {
        v54 = 0xE400000000000000;
        v55 = 1684630645;
      }

      else
      {
        v55 = 0x6867696C746F7073;
        v54 = 0xE900000000000074;
      }
    }

    else if (byte_2877E2D2A > 1u)
    {
      if (byte_2877E2D2A == 2)
      {
        v55 = 0x72657669746C756DLL;
        v54 = 0xEA00000000006573;
      }

      else
      {
        v54 = 0xE500000000000000;
        v55 = 0x65726F7473;
      }
    }

    else if (byte_2877E2D2A)
    {
      v54 = 0xE800000000000000;
      v55 = 0x636E797369726973;
    }

    else
    {
      v54 = 0xE600000000000000;
      v55 = 0x656369766564;
    }

    if (v5 > 3)
    {
      if (v5 > 5)
      {
        if (v5 == 6)
        {
          v6 = 0x62696C656C6F6877;
          v56 = 0xEC00000079726172;
        }

        else
        {
          v56 = 0xE700000000000000;
          v6 = 0x6E776F6E6B6E75;
        }
      }

      else if (v5 == 4)
      {
        v56 = 0xE400000000000000;
        v6 = 1684630645;
      }

      else
      {
        v6 = 0x6867696C746F7073;
        v56 = 0xE900000000000074;
      }
    }

    else if (v5 > 1)
    {
      if (v5 == 2)
      {
        v6 = 0x72657669746C756DLL;
        v56 = 0xEA00000000006573;
      }

      else
      {
        v56 = 0xE500000000000000;
        v6 = 0x65726F7473;
      }
    }

    else if (v5)
    {
      v56 = 0xE800000000000000;
      v6 = 0x636E797369726973;
    }

    else
    {
      v56 = 0xE600000000000000;
    }

    if (v55 != v6 || v54 != v56)
    {
      v43 = sub_2664E0D88();
      goto LABEL_138;
    }
  }

LABEL_137:
  v43 = 1;
LABEL_138:

  return v43 & 1;
}

uint64_t sub_266346598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_2664DF6F8();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C80, &qword_2664E6498);
  v4[18] = swift_task_alloc();
  v4[19] = type metadata accessor for MusicSiriItemIdentifierResponse(0);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v6 = sub_2664DF7C8();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  sub_2664E0308();
  v4[27] = swift_task_alloc();
  v7 = sub_2664DFE38();
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2663467FC, 0, 0);
}

uint64_t sub_2663467FC()
{
  v108 = v0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = __swift_project_value_buffer(v2, qword_280F914F0);
  *(v0 + 280) = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v0 + 288) = v5;
  *(v0 + 296) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();

  v103 = v5;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v107[0] = v104;
    *v9 = 136315394;
    v10 = *(v8 + 49);
    v12 = *(v8 + 56);
    v11 = *(v8 + 64);
    if (v10 <= 1 && v10 && (v78 = sub_2664DE2A8(), v79 >> 60 != 15) && (v102 = v78, v80 = v79, sub_2664E02F8(), v99 = sub_2664E02D8(), v82 = v81, sub_2662B79A8(v102, v80), v82))
    {
      v12 = v99;
      v11 = v82;
    }

    else
    {
    }

    v13 = *(v0 + 232);
    v98 = *(v0 + 224);
    v100 = *(v0 + 272);
    v14 = *(v0 + 112);
    v15 = sub_2662A320C(v12, v11, v107);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2662A320C(*(v14 + 32), *(v14 + 40), v107);
    _os_log_impl(&dword_26629C000, v6, v7, "PlaybackItem#toMusicSiriRepresentation... decoded siri sync ID: %s and catalog ID: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v104, -1, -1);
    MEMORY[0x266784AD0](v9, -1, -1);

    v16 = *(v13 + 8);
    v16(v100, v98);
    v5 = v103;
  }

  else
  {
    v17 = *(v0 + 272);
    v18 = *(v0 + 224);
    v19 = *(v0 + 232);

    v16 = *(v19 + 8);
    v16(v17, v18);
  }

  v105 = v16;
  *(v0 + 304) = v16;
  v20 = *(v0 + 112);
  v22 = *(v20 + 56);
  v21 = *(v20 + 64);
  LOWORD(v107[0]) = *(v20 + 48);
  v107[1] = v22;
  v107[2] = v21;

  v23 = PlaybackItem.Identifier.isLibraryIdentifier()();

  v24 = *(v0 + 224);
  if (v23)
  {
    v101 = v22;
    v5(*(v0 + 264), v4, v24);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06B8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "PlaybackItem#toMusicSiriRepresentation This is for the siriSyncIdentifier (Library).", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    v28 = *(v0 + 264);
    v29 = *(v0 + 224);
    v30 = *(v0 + 104);

    v105(v28, v29);
    if (!v30)
    {
      v70 = *(v0 + 96);
      v40 = v70[3];
      v41 = v70[4];
      __swift_project_boxed_opaque_existential_1(v70, v40);
      v71 = *(v20 + 49);
      v72 = v101;
      if (v71 <= 1 && v71 && (v91 = sub_2664DE2A8(), v92 >> 60 != 15) && (v93 = v91, v94 = v92, sub_2664E02F8(), v95 = sub_2664E02D8(), v97 = v96, v72 = v101, sub_2662B79A8(v93, v94), v97))
      {
        v72 = v95;
        v21 = v97;
      }

      else
      {
      }

      *(v0 + 328) = v21;
      v73 = *(v0 + 192);
      v74 = *(v0 + 200);
      v75 = *(v0 + 144);
      *(v0 + 353) = 0;
      (*(v74 + 56))(v75, 1, 1, v73);
      v106 = (*(v41 + 8) + **(v41 + 8));
      v76 = swift_task_alloc();
      *(v0 + 336) = v76;
      *v76 = v0;
      v76[1] = sub_2663476BC;
      v48 = *(v0 + 168);
      v49 = *(v0 + 144);
      v50 = v0 + 353;
      v51 = v72;
      goto LABEL_24;
    }

    v31 = *(v0 + 256);
    v32 = *(v0 + 224);
    v33 = [*(v0 + 104) stringValue];
    sub_2664E02C8();

    v103(v31, v4, v32);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06C8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_26629C000, v34, v35, "PlaybackItem#toMusicSiriRepresentation... setting account ID.", v36, 2u);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    v37 = *(v0 + 256);
    v38 = *(v0 + 224);
    v39 = *(v0 + 96);

    v105(v37, v38);
    sub_2664DF7B8();

    v40 = v39[3];
    v41 = v39[4];
    __swift_project_boxed_opaque_existential_1(v39, v40);
    if (*(v20 + 49) <= 1u)
    {
      v42 = v101;
      if (*(v20 + 49))
      {
        v83 = sub_2664DE2A8();
        if (v84 >> 60 != 15)
        {
          v85 = v83;
          v86 = v84;
          sub_2664E02F8();
          v87 = sub_2664E02D8();
          v89 = v88;
          v90 = v85;
          v42 = v101;
          sub_2662B79A8(v90, v86);
          if (v89)
          {
            v42 = v87;
            v21 = v89;
            goto LABEL_17;
          }
        }
      }
    }

    else
    {
      v42 = v101;
    }

LABEL_17:
    *(v0 + 312) = v21;
    v44 = *(v0 + 200);
    v43 = *(v0 + 208);
    v45 = *(v0 + 192);
    v46 = *(v0 + 144);
    *(v0 + 354) = 0;
    (*(v44 + 16))(v46, v43, v45);
    (*(v44 + 56))(v46, 0, 1, v45);
    v106 = (*(v41 + 8) + **(v41 + 8));
    v47 = swift_task_alloc();
    *(v0 + 320) = v47;
    *v47 = v0;
    v47[1] = sub_2663471DC;
    v48 = *(v0 + 176);
    v49 = *(v0 + 144);
    v50 = v0 + 354;
    v51 = v42;
LABEL_24:
    v67 = v21;
    v68 = v40;
    v69 = v41;
    goto LABEL_25;
  }

  v5(*(v0 + 248), v4, v24);
  v52 = sub_2664DFE18();
  v53 = sub_2664E06B8();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_26629C000, v52, v53, "PlaybackItem#toMusicSiriRepresentation This is for the legacySiriIdentifier (Catalog).", v54, 2u);
    MEMORY[0x266784AD0](v54, -1, -1);
  }

  v55 = *(v0 + 248);
  v56 = *(v0 + 224);
  v57 = *(v0 + 192);
  v58 = *(v0 + 200);
  v59 = *(v0 + 144);
  v60 = *(v0 + 112);
  v61 = *(v0 + 96);

  v105(v55, v56);
  v62 = v61[3];
  v63 = v61[4];
  __swift_project_boxed_opaque_existential_1(v61, v62);
  v64 = *(v60 + 32);
  v65 = *(v60 + 40);
  *(v0 + 352) = 1;
  (*(v58 + 56))(v59, 1, 1, v57);
  v106 = (*(v63 + 8) + **(v63 + 8));
  v66 = swift_task_alloc();
  *(v0 + 344) = v66;
  *v66 = v0;
  v66[1] = sub_266347B88;
  v48 = *(v0 + 160);
  v49 = *(v0 + 144);
  v50 = v0 + 352;
  v51 = v64;
  v67 = v65;
  v68 = v62;
  v69 = v63;
LABEL_25:

  return v106(v48, v51, v67, v50, v49, v68, v69);
}

uint64_t sub_2663471DC()
{
  v1 = *(*v0 + 144);

  sub_2662A9238(v1, &qword_280072C80, &qword_2664E6498);

  return MEMORY[0x2822009F8](sub_266347320, 0, 0);
}

uint64_t sub_266347320()
{
  v38 = v0;
  v1 = v0[36];
  v2 = v0[35];
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[23];
  sub_266348870(v0[22], v5);
  v7 = *v5;
  v6 = v5[1];
  v1(v3, v2, v4);
  swift_bridgeObjectRetain_n();
  v8 = sub_2664DFE18();
  v9 = sub_2664E06C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[23];
    v35 = v0[19];
    v11 = v0[15];
    v12 = v0[16];
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v13 = 136315394;
    if (v6)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0;
    }

    v15 = 0xE000000000000000;
    if (!v6)
    {
      v6 = 0xE000000000000000;
    }

    v16 = sub_2662A320C(v14, v6, &v37);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    swift_beginAccess();
    v17 = *(v35 + 20);
    if ((*(v12 + 48))(v10 + v17, 1, v11))
    {
      v18 = 0;
    }

    else
    {
      v22 = v0[16];
      v23 = v0[17];
      v24 = v0[15];
      (*(v22 + 16))(v23, v10 + v17, v24);
      sub_266348994();
      v25 = sub_2664E0DE8();
      v15 = v26;
      (*(v22 + 8))(v23, v24);
      v18 = v25;
    }

    v27 = v0[38];
    v28 = v0[30];
    v29 = v0[28];
    v30 = sub_2662A320C(v18, v15, &v37);

    *(v13 + 14) = v30;
    _os_log_impl(&dword_26629C000, v8, v9, "PlaybackItem#toMusicSiriRepresentation Music Siri Item representation ID: %s, error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v36, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);

    v27(v28, v29);
  }

  else
  {
    v19 = v0[38];
    v20 = v0[30];
    v21 = v0[28];

    v19(v20, v21);
  }

  v31 = v0[23];
  v32 = v0[11];
  swift_beginAccess();
  sub_2663488D4(v31, v32);
  sub_266348938(v31);
  (*(v0[25] + 8))(v0[26], v0[24]);

  v33 = v0[1];

  return v33();
}

uint64_t sub_2663476BC()
{
  v1 = *(*v0 + 144);

  sub_2662A9238(v1, &qword_280072C80, &qword_2664E6498);

  return MEMORY[0x2822009F8](sub_266347800, 0, 0);
}

uint64_t sub_266347800()
{
  v38 = v0;
  v1 = v0[36];
  v2 = v0[35];
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[23];
  sub_266348870(v0[21], v5);
  v7 = *v5;
  v6 = v5[1];
  v1(v3, v2, v4);
  swift_bridgeObjectRetain_n();
  v8 = sub_2664DFE18();
  v9 = sub_2664E06C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[23];
    v35 = v0[19];
    v11 = v0[15];
    v12 = v0[16];
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v13 = 136315394;
    if (v6)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0;
    }

    v15 = 0xE000000000000000;
    if (!v6)
    {
      v6 = 0xE000000000000000;
    }

    v16 = sub_2662A320C(v14, v6, &v37);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    swift_beginAccess();
    v17 = *(v35 + 20);
    if ((*(v12 + 48))(v10 + v17, 1, v11))
    {
      v18 = 0;
    }

    else
    {
      v22 = v0[16];
      v23 = v0[17];
      v24 = v0[15];
      (*(v22 + 16))(v23, v10 + v17, v24);
      sub_266348994();
      v25 = sub_2664E0DE8();
      v15 = v26;
      (*(v22 + 8))(v23, v24);
      v18 = v25;
    }

    v27 = v0[38];
    v28 = v0[30];
    v29 = v0[28];
    v30 = sub_2662A320C(v18, v15, &v37);

    *(v13 + 14) = v30;
    _os_log_impl(&dword_26629C000, v8, v9, "PlaybackItem#toMusicSiriRepresentation Music Siri Item representation ID: %s, error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v36, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);

    v27(v28, v29);
  }

  else
  {
    v19 = v0[38];
    v20 = v0[30];
    v21 = v0[28];

    v19(v20, v21);
  }

  v31 = v0[23];
  v32 = v0[11];
  swift_beginAccess();
  sub_2663488D4(v31, v32);
  sub_266348938(v31);

  v33 = v0[1];

  return v33();
}

uint64_t sub_266347B88()
{
  v1 = *(*v0 + 144);

  sub_2662A9238(v1, &qword_280072C80, &qword_2664E6498);

  return MEMORY[0x2822009F8](sub_266347CB0, 0, 0);
}

uint64_t sub_266347CB0()
{
  v38 = v0;
  v1 = v0[36];
  v2 = v0[35];
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[23];
  sub_266348870(v0[20], v5);
  v7 = *v5;
  v6 = v5[1];
  v1(v3, v2, v4);
  swift_bridgeObjectRetain_n();
  v8 = sub_2664DFE18();
  v9 = sub_2664E06C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[23];
    v35 = v0[19];
    v11 = v0[15];
    v12 = v0[16];
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v13 = 136315394;
    if (v6)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0;
    }

    v15 = 0xE000000000000000;
    if (!v6)
    {
      v6 = 0xE000000000000000;
    }

    v16 = sub_2662A320C(v14, v6, &v37);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    swift_beginAccess();
    v17 = *(v35 + 20);
    if ((*(v12 + 48))(v10 + v17, 1, v11))
    {
      v18 = 0;
    }

    else
    {
      v22 = v0[16];
      v23 = v0[17];
      v24 = v0[15];
      (*(v22 + 16))(v23, v10 + v17, v24);
      sub_266348994();
      v25 = sub_2664E0DE8();
      v15 = v26;
      (*(v22 + 8))(v23, v24);
      v18 = v25;
    }

    v27 = v0[38];
    v28 = v0[30];
    v29 = v0[28];
    v30 = sub_2662A320C(v18, v15, &v37);

    *(v13 + 14) = v30;
    _os_log_impl(&dword_26629C000, v8, v9, "PlaybackItem#toMusicSiriRepresentation Music Siri Item representation ID: %s, error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v36, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);

    v27(v28, v29);
  }

  else
  {
    v19 = v0[38];
    v20 = v0[30];
    v21 = v0[28];

    v19(v20, v21);
  }

  v31 = v0[23];
  v32 = v0[11];
  swift_beginAccess();
  sub_2663488D4(v31, v32);
  sub_266348938(v31);

  v33 = v0[1];

  return v33();
}

SiriAudioSupport::PlaybackItem::ContentOrigin_optional __swiftcall PlaybackItem.ContentOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PlaybackItem.ContentOrigin.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656369766564;
  v3 = 0x62696C656C6F6877;
  if (v1 != 6)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  v4 = 1684630645;
  if (v1 != 4)
  {
    v4 = 0x6867696C746F7073;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x72657669746C756DLL;
  if (v1 != 2)
  {
    v5 = 0x65726F7473;
  }

  if (*v0)
  {
    v2 = 0x636E797369726973;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_2663481C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656369766564;
  v5 = 0xEC00000079726172;
  v6 = 0x62696C656C6F6877;
  if (v2 != 6)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684630645;
  if (v2 != 4)
  {
    v8 = 0x6867696C746F7073;
    v7 = 0xE900000000000074;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006573;
  v10 = 0x72657669746C756DLL;
  if (v2 != 2)
  {
    v10 = 0x65726F7473;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x636E797369726973;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

SiriAudioSupport::PlaybackItem::Scheme_optional __swiftcall PlaybackItem.Scheme.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

Swift::String __swiftcall PlaybackItem.Scheme.toMediaTypeString()()
{
  v1 = 0xE500000000000000;
  v2 = 0x6D75626C61;
  switch(*v0)
  {
    case 1:
      v1 = 0xE800000000000000;
      v2 = 0x7473696C79616C70;
      goto LABEL_15;
    case 2:
      goto LABEL_15;
    case 3:
      v1 = 0xE400000000000000;
      v2 = 1735290739;
      goto LABEL_15;
    case 4:
      v1 = 0xEE0065646F736970;
      v2 = 0x4574736163646F70;
      goto LABEL_15;
    case 5:
      v1 = 0xEB00000000776F68;
      goto LABEL_12;
    case 6:
    case 0xA:
    case 0xC:
    case 0xE:
    case 0xF:
      v1 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      goto LABEL_15;
    case 7:
      v1 = 0xEE006E6F69746174;
LABEL_12:
      v2 = 0x5374736163646F70;
      goto LABEL_15;
    case 8:
      v1 = 0xE600000000000000;
      v2 = 0x747369747261;
      goto LABEL_15;
    case 9:
      v2 = 0x65726E6567;
      goto LABEL_15;
    case 0xB:
      v3 = 0x53636973756DLL;
      goto LABEL_8;
    case 0xD:
      v1 = 0xE90000000000006BLL;
      v2 = 0x6F6F426F69647561;
      goto LABEL_15;
    default:
      v3 = 0x536F69646172;
LABEL_8:
      v2 = v3 & 0xFFFFFFFFFFFFLL | 0x6174000000000000;
      v1 = 0xEC0000006E6F6974;
LABEL_15:
      result._object = v1;
      result._countAndFlagsBits = v2;
      return result;
  }
}

uint64_t sub_266348484()
{
  v0 = PlaybackItem.Scheme.rawValue.getter();
  v2 = v1;
  if (v0 == PlaybackItem.Scheme.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2664E0D88();
  }

  return v5 & 1;
}

uint64_t sub_266348520()
{
  sub_2664E0E68();
  PlaybackItem.Scheme.rawValue.getter();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_266348588(uint64_t a1)
{
  PlaybackItem.Scheme.rawValue.getter();
  sub_2664E0368();
}

uint64_t sub_2663485EC(uint64_t a1)
{
  sub_2664E0E68();
  PlaybackItem.Scheme.rawValue.getter();
  sub_2664E0368();

  return sub_2664E0EB8();
}

unint64_t sub_26634865C@<X0>(unint64_t *a1@<X8>)
{
  result = PlaybackItem.Scheme.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *PlaybackItem.deinit()
{

  return v0;
}

uint64_t PlaybackItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_266348774(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2663487C8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2663487F8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_2664E0D38() & 1;
  }
}

uint64_t sub_266348870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSiriItemIdentifierResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2663488D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSiriItemIdentifierResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266348938(uint64_t a1)
{
  v2 = type metadata accessor for MusicSiriItemIdentifierResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266348994()
{
  result = qword_280072C88;
  if (!qword_280072C88)
  {
    sub_2664DF6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072C88);
  }

  return result;
}

unint64_t sub_2663489F0()
{
  result = qword_280072C90;
  if (!qword_280072C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072C90);
  }

  return result;
}

unint64_t sub_266348A78()
{
  result = qword_280072CA8;
  if (!qword_280072CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072CA8);
  }

  return result;
}

uint64_t sub_266348AFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t dispatch thunk of PlaybackItem.toMusicSiriRepresentation(musicSiriItemProvider:accountId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 144) + **(*v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2662BD660;

  return v10(a1, a2, a3);
}

uint64_t sub_266348D48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266348D90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackItem.ContentOrigin(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlaybackItem.ContentOrigin(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PlaybackItem.Scheme(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackItem.Scheme(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_266349094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = a3 + 48;
  result = MEMORY[0x277D84F90];
  v34 = a3 + 48;
  do
  {
    v35 = result;
    v7 = (v5 + 24 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_31;
      }

      v19 = *v7;
      v20 = *(*v7 + 16);
      if (!a2)
      {
        if (!v20)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }

      if (!v20)
      {
        goto LABEL_18;
      }

      v21 = sub_2662A3E98(a1, a2);
      if (v22)
      {
        break;
      }

      if (!*(v19 + 16))
      {
        goto LABEL_18;
      }

LABEL_15:
      v23 = sub_2662A3E98(0x6B6361626C6C6166, 0xE800000000000000);
      if ((v24 & 1) == 0)
      {
LABEL_18:

LABEL_19:
        v18 = 0;
        v17 = 0;
        v14 = 0;
        v15 = 0uLL;
        v16 = 0uLL;
        goto LABEL_5;
      }

      v25 = (*(v19 + 56) + (v23 << 6));
      v27 = v25[2];
      v26 = v25[3];
      v28 = v25[1];
      v41 = *v25;
      v42 = v28;
      v43 = v27;
      v44 = v26;
      v13 = *(&v41 + 1);
      v14 = v41;
      v36 = v27;
      v37 = v28;
      v18 = *(&v26 + 1);
      v17 = v26;
      sub_2662C0AE0(&v41, v40);

      if (v13)
      {
        goto LABEL_21;
      }

      v16 = v36;
      v15 = v37;
LABEL_5:
      v41 = v14;
      v42 = v15;
      v43 = v16;
      *&v44 = v17;
      *(&v44 + 1) = v18;
      result = sub_26634AACC(&v41);
      v7 += 3;
      if (v4 == v3)
      {
        return v35;
      }
    }

    v9 = (*(v19 + 56) + (v21 << 6));
    v11 = v9[2];
    v10 = v9[3];
    v12 = v9[1];
    v41 = *v9;
    v42 = v12;
    v43 = v11;
    v44 = v10;
    sub_2662C0AE0(&v41, v40);

    v13 = *(&v41 + 1);
    v14 = v41;
    v15 = v42;
    v16 = v43;
    v18 = *(&v44 + 1);
    v17 = v44;
    if (!*(&v41 + 1))
    {
      goto LABEL_5;
    }

    v36 = v43;
    v37 = v42;
LABEL_21:
    v5 = v34;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v35;
    }

    else
    {
      result = sub_2663845E8(0, *(v35 + 16) + 1, 1, v35);
    }

    v30 = *(result + 16);
    v29 = *(result + 24);
    v32 = v36;
    v31 = v37;
    if (v30 >= v29 >> 1)
    {
      result = sub_2663845E8((v29 > 1), v30 + 1, 1, result);
      v32 = v36;
      v31 = v37;
    }

    *(result + 16) = v30 + 1;
    v33 = result + (v30 << 6);
    *(v33 + 32) = v14;
    *(v33 + 40) = v13;
    *(v33 + 48) = v31;
    *(v33 + 64) = v32;
    *(v33 + 80) = v17;
    *(v33 + 88) = v18;
  }

  while (v4 != v3);
  return result;
}

uint64_t sub_266349310(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v32 = MEMORY[0x277D84F90];
  sub_2662FCF04(0, v1, 0);
  v2 = v32;
  v4 = a1 + 64;
  result = sub_2664E0A18();
  v6 = result;
  v7 = 0;
  v29 = *(a1 + 36);
  v28 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v6);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v6);

    sub_266349688(v12, v13, v14, &v30);

    v15 = v30;
    v16 = v31;
    v32 = v2;
    v18 = *(v2 + 16);
    v17 = *(v2 + 24);
    if (v18 >= v17 >> 1)
    {
      v27 = v31;
      result = sub_2662FCF04((v17 > 1), v18 + 1, 1);
      v16 = v27;
      v2 = v32;
    }

    *(v2 + 16) = v18 + 1;
    v19 = v2 + 24 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v20 = *(a1 + 64 + 8 * v10);
    if ((v20 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v6 & 0x3F));
    if (v21)
    {
      v8 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v28;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v9 = v28;
      v24 = (a1 + 72 + 8 * v10);
      while (v23 < (v8 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_26634AE1C(v6, v29, 0);
          v8 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_26634AE1C(v6, v29, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t InstalledAppContainer.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void __swiftcall InstalledAppContainer.bestApp(for:)(SiriAudioSupport::InstalledApp_optional *__return_ptr retstr, Swift::String_optional a2)
{
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (a2.value._object)
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = sub_2662A3E98(a2.value._countAndFlagsBits, a2.value._object);
    if (v7)
    {
LABEL_7:
      v9 = *(v4 + 56) + (v6 << 6);
      v11 = *(v9 + 32);
      v10 = *(v9 + 48);
      v12 = *(v9 + 16);
      v16[0] = *v9;
      v16[1] = v12;
      v16[2] = v11;
      v16[3] = v10;
      v13 = *(v9 + 16);
      retstr->value.bundleIdentifier = *v9;
      *&retstr->value.supportedMediaCategories._rawValue = v13;
      v14 = *(v9 + 48);
      *&retstr->value.appInstalledAs = *(v9 + 32);
      *&retstr->value.appName.value._object = v14;
      sub_2662C0AE0(v16, &v15);
      return;
    }

    v5 = *(v4 + 16);
  }

  if (v5)
  {
    v6 = sub_2662A3E98(0x6B6361626C6C6166, 0xE800000000000000);
    if (v8)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  *&retstr->value.appInstalledAs = 0u;
  *&retstr->value.appName.value._object = 0u;
  retstr->value.bundleIdentifier = 0u;
  *&retstr->value.supportedMediaCategories._rawValue = 0u;
}

uint64_t sub_266349688@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v66 = a1;
  v58 = a4;
  v64 = sub_2664DFE38();
  v6 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F98];
  v67[0] = MEMORY[0x277D84F98];
  v9 = *(a3 + 16);
  v65 = a2;
  v60 = v6;
  v62 = v9;
  if (v9)
  {
    v10 = (a3 + 32);
    v11 = v9;
    do
    {
      v12 = v10[1];
      v80 = *v10;
      v81 = v12;
      v13 = v10[3];
      v15 = *v10;
      v14 = v10[1];
      v82 = v10[2];
      v83 = v13;
      v76 = v15;
      v77 = v14;
      v16 = v10[3];
      v78 = v10[2];
      v79 = v16;
      sub_2662C0AE0(&v80, &v72);
      sub_266349D48(v67, &v76, v66, a2);
      v72 = v76;
      v73 = v77;
      v74 = v78;
      v75 = v79;
      sub_2662C0B3C(&v72);
      v10 += 4;
      --v11;
    }

    while (v11);
    v17 = v67[0];
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  *&v76 = v8;
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  if (v20)
  {
    while (1)
    {
      v23 = v22;
LABEL_13:
      v24 = (*(v17 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v20)))));
      v25 = v24[1];
      *&v80 = *v24;
      *(&v80 + 1) = v25;

      sub_26634A164(&v76, &v80, v66, v65, a3);
      v20 &= v20 - 1;

      v22 = v23;
      if (!v20)
      {
        goto LABEL_10;
      }
    }
  }

  while (1)
  {
LABEL_10:
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);

      v72 = v76;
      v73 = v77;
      v74 = v78;
      v75 = v79;
      sub_2662C0B3C(&v72);

      __break(1u);

      __break(1u);
      return result;
    }

    if (v23 >= v21)
    {
      break;
    }

    v20 = *(v17 + 64 + 8 * v23);
    ++v22;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  v26 = v76;
  v71 = v76;
  v27 = v65;
  if (*(v76 + 16))
  {
    sub_2662A3E98(0x6B6361626C6C6166, 0xE800000000000000);
    if (v28)
    {
      goto LABEL_46;
    }
  }

  if (!v62)
  {
    goto LABEL_45;
  }

  v29 = 0;
  v30 = (a3 + 32);
  v31 = v60++;
  v61 = (v31 + 2);
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v32 = v62 - 1;
  v59 = 0x8200202uLL;
  while (1)
  {
    v33 = v30[1];
    v72 = *v30;
    v73 = v33;
    v34 = v30[3];
    v74 = v30[2];
    v75 = v34;
    v35 = v72;
    if (v72 != v66 || *(&v72 + 1) != v27)
    {
      break;
    }

LABEL_25:
    if (v29)
    {
      v37 = v78;
      v38 = v74;
      v39 = &v76;
      if (v74 != 1 && (v78 & 1) != 0)
      {
        v39 = &v72;
        sub_2662C0AE0(&v72, v67);
        sub_26634AACC(&v76);
      }

      v40 = v39[1];
      v80 = *v39;
      v81 = v40;
      v41 = v39[3];
      v82 = v39[2];
      v83 = v41;
      if (v38 == (v37 & 1))
      {
        sub_2662C0AE0(&v72, v67);
        sub_26634AACC(&v80);
        v29 = *(&v72 + 1);
        v42 = v72;
        v43 = &v72;
      }

      else
      {
        v29 = *(&v80 + 1);
        v42 = v80;
        v43 = &v80;
      }

      v52 = v43[2];
      v68 = v43[1];
      v69 = v52;
      v70 = v43[3];
      v27 = v65;
      if (!v32)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v29 = *(&v72 + 1);
      v42 = v72;
      v68 = v73;
      v69 = v74;
      v70 = v75;
      sub_2662C0AE0(&v72, &v80);
      if (!v32)
      {
        goto LABEL_43;
      }
    }

LABEL_42:
    *&v76 = v42;
    *(&v76 + 1) = v29;
    v77 = v68;
    v78 = v69;
    v79 = v70;
    --v32;
    v30 += 4;
  }

  if (sub_2664E0D88())
  {
    v29 = *(&v76 + 1);
    goto LABEL_25;
  }

  v62 = v32;
  sub_2662C0AE0(&v72, &v80);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v44 = v64;
  v45 = __swift_project_value_buffer(v64, qword_280F914F0);
  swift_beginAccess();
  (*v61)(v63, v45, v44);
  sub_2662C0AE0(&v72, &v80);

  v46 = sub_2664DFE18();
  v47 = sub_2664E06D8();
  sub_2662C0B3C(&v72);

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v80 = v49;
    *v48 = v59;

    sub_2662C0B3C(&v72);
    v50 = sub_2662A320C(v35, *(&v35 + 1), &v80);

    *(v48 + 4) = v50;
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_2662A320C(v66, v65, &v80);
    _os_log_impl(&dword_26629C000, v46, v47, "InstalledApp.bundleIdentifier: %s is different from queried bundleIdentifier: %s. Dropping...", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v49, -1, -1);
    v51 = v48;
    v27 = v65;
    MEMORY[0x266784AD0](v51, -1, -1);
  }

  else
  {
    sub_2662C0B3C(&v72);
  }

  (*v60)(v63, v64);
  v32 = v62;
  v29 = *(&v76 + 1);
  v42 = v76;
  v68 = v77;
  v69 = v78;
  v70 = v79;
  if (v62)
  {
    goto LABEL_42;
  }

LABEL_43:
  if (v29)
  {
    *&v80 = v42;
    *(&v80 + 1) = v29;
    v81 = v68;
    v82 = v69;
    v83 = v70;
    v53 = v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67[0] = v53;
    sub_26634ED9C(&v80, 0x6B6361626C6C6166, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v26 = v67[0];
    goto LABEL_46;
  }

LABEL_45:
  sub_26640793C(0x6B6361626C6C6166, 0xE800000000000000, &v80);
  sub_26634AACC(&v80);
  v26 = v71;
LABEL_46:
  v55 = v58;
  *v58 = v66;
  v55[1] = v27;
  v55[2] = v26;
}

uint64_t sub_266349D48(uint64_t *a1, __int128 *a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[1];
  v40 = *a2;
  v41 = v12;
  v13 = a2[3];
  v42 = a2[2];
  v43 = v13;
  v14 = v40;
  if (v40 == __PAIR128__(a4, a3) || (sub_2664E0D88() & 1) != 0)
  {
    if (!*(*a1 + 16) || (sub_2662A3E98(0x6B6361626C6C6166, 0xE800000000000000), (v15 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39[0] = *a1;
      sub_26634ED5C(MEMORY[0x277D84F90], 0x6B6361626C6C6166, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      *a1 = v39[0];
    }

    v18 = sub_2663970CC(v38, 0x6B6361626C6C6166, 0xE800000000000000);
    v19 = *v17;
    if (*v17)
    {
      v20 = v17;
      sub_2662C0AE0(&v40, v39);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v19;
      if ((v21 & 1) == 0)
      {
        v19 = sub_2663845E8(0, *(v19 + 2) + 1, 1, v19);
        *v20 = v19;
      }

      v23 = *(v19 + 2);
      v22 = *(v19 + 3);
      if (v23 >= v22 >> 1)
      {
        v19 = sub_2663845E8((v22 > 1), v23 + 1, 1, v19);
        *v20 = v19;
      }

      *(v19 + 2) = v23 + 1;
      v24 = &v19[64 * v23];
      v25 = v40;
      v26 = v41;
      v27 = v43;
      *(v24 + 4) = v42;
      *(v24 + 5) = v27;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      return (v18)(v38, 0);
    }

    else
    {
      return (v18)(v38, 0);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v11, v29, v8);
    sub_2662C0AE0(&v40, v39);

    v30 = sub_2664DFE18();
    v31 = sub_2664E06D8();
    sub_2662C0B3C(&v40);

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v36 = v30;
      v33 = v32;
      v37 = swift_slowAlloc();
      v39[0] = v37;
      *v33 = 136315394;
      *(v33 + 4) = sub_2662A320C(v14, *(&v14 + 1), v39);
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_2662A320C(a3, a4, v39);
      v34 = v36;
      _os_log_impl(&dword_26629C000, v36, v31, "InstalledApp.bundleIdentifier: %s is different from queried bundleIdentifier: %s. Dropping...", v33, 0x16u);
      v35 = v37;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v35, -1, -1);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    else
    {
    }

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_26634A164(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v80 = a4;
  v104 = a3;
  v81 = sub_2664DFE38();
  v8 = *(v81 - 8);
  v9 = MEMORY[0x28223BE20](v81);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v66 - v11;
  MEMORY[0x28223BE20](v10);
  v15 = a2[1];
  v71 = *a2;
  v72 = a5;
  v16 = *(a5 + 16);
  if (!v16)
  {
    goto LABEL_32;
  }

  v79 = &v66 - v13;
  v68 = v14;
  v69 = a1;
  v70 = v15;
  v17 = (a5 + 32);
  v67 = v8;
  v76 = (v8 + 16);
  v77 = (v8 + 8);
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v18 = v16 - 1;
  v73 = 0x8200202uLL;
  v19 = v80;
  v75 = v12;
  while (1)
  {
    v20 = v17[1];
    v92 = *v17;
    v93 = v20;
    v21 = v17[3];
    v94 = v17[2];
    v95 = v21;
    v22 = v92;
    v23 = v92 == v104 && *(&v92 + 1) == v19;
    if (!v23 && (sub_2664E0D88() & 1) == 0)
    {
      break;
    }

    if (*(&v96 + 1))
    {
      if (v98 & 1) == 0 || (v94)
      {
        v88 = v96;
        v89 = v97;
        v24 = v98;
        v25 = v99;
      }

      else
      {
        sub_2662C0AE0(&v92, &v100);
        sub_26634AACC(&v96);
        v88 = v92;
        v89 = v93;
        v24 = v94;
        v25 = v95;
      }
    }

    else
    {
      v100 = v92;
      v101 = v93;
      v102 = v94;
      v103 = v95;
      sub_2662C0AE0(&v92, v87);
      v88 = v100;
      v89 = v101;
      v24 = v102;
      v25 = v103;
    }

    v90 = v24;
    v91 = v25;
    if (!v18)
    {
      goto LABEL_23;
    }

LABEL_22:
    v96 = v88;
    v97 = v89;
    v98 = v90;
    v99 = v91;
    --v18;
    v17 += 4;
  }

  sub_2662C0AE0(&v92, &v100);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v26 = v81;
  v27 = __swift_project_value_buffer(v81, qword_280F914F0);
  swift_beginAccess();
  (*v76)(v79, v27, v26);
  sub_2662C0AE0(&v92, &v100);
  v28 = v80;

  v29 = sub_2664DFE18();
  v30 = sub_2664E06D8();
  sub_2662C0B3C(&v92);

  v78 = v29;
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *&v100 = v74;
    *v31 = v73;

    sub_2662C0B3C(&v92);
    v32 = sub_2662A320C(v22, *(&v22 + 1), &v100);

    *(v31 + 4) = v32;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_2662A320C(v104, v28, &v100);
    v33 = v30;
    v34 = v78;
    _os_log_impl(&dword_26629C000, v78, v33, "InstalledApp.bundleIdentifier: %s is different from queried bundleIdentifier: %s. Dropping...", v31, 0x16u);
    v35 = v74;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v35, -1, -1);
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  else
  {
    sub_2662C0B3C(&v92);
  }

  (*v77)(v79, v81);
  v88 = v96;
  v89 = v97;
  v90 = v98;
  v91 = v99;
  v12 = v75;
  v19 = v80;
  if (v18)
  {
    goto LABEL_22;
  }

LABEL_23:
  v87[0] = v88;
  v87[1] = v89;
  v87[2] = v90;
  v87[3] = v91;
  if (*(&v88 + 1))
  {
    v100 = v88;
    v101 = v89;
    v102 = v90;
    v103 = v91;
    sub_2662C0AE0(v87, &v83);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v36 = v81;
    v37 = __swift_project_value_buffer(v81, qword_280F914F0);
    swift_beginAccess();
    v38 = v68;
    (*v76)(v68, v37, v36);

    sub_26634AE28(&v88, &v83);
    v39 = sub_2664DFE18();
    v40 = sub_2664E06C8();
    sub_26634AACC(&v88);

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v82[0] = v42;
      *v41 = v73;
      v83 = v100;
      v84 = v101;
      v85 = v102;
      v86 = v103;
      v43 = InstalledApp.slimDescription()();
      v44 = sub_2662A320C(v43._countAndFlagsBits, v43._object, v82);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_2662A320C(v71, v70, v82);
      _os_log_impl(&dword_26629C000, v39, v40, "Found fallbackApp: %s for user: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v42, -1, -1);
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    (*v77)(v38, v81);
    v45 = v69;
    v46 = *v69;
    if (*(*v69 + 16) && (v47 = sub_2662A3E98(0x6B6361626C6C6166, 0xE800000000000000), (v48 & 1) != 0))
    {
      v49 = (*(v46 + 56) + (v47 << 6));
      v51 = v49[2];
      v50 = v49[3];
      v52 = *v49;
      v84 = v49[1];
      v85 = v51;
      v83 = v52;
      v86 = v50;
      sub_2662C0AE0(&v83, v82);
      sub_26634AACC(&v88);
      sub_26634AACC(&v88);
      return sub_2662C0B3C(&v83);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v83 = *v45;
      sub_26634ED9C(&v100, 0x6B6361626C6C6166, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      result = sub_26634AACC(&v88);
      *v45 = v83;
    }

    return result;
  }

  v15 = v70;
  v8 = v67;
LABEL_32:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v54 = v81;
  v55 = __swift_project_value_buffer(v81, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v12, v55, v54);

  v56 = v72;

  v57 = sub_2664DFE18();
  v58 = sub_2664E06D8();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = v8;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v96 = v61;
    *v60 = 136315394;
    *(v60 + 4) = sub_2662A320C(v71, v15, &v96);
    *(v60 + 12) = 2080;
    v62 = sub_2662B9B7C(v56);
    v64 = sub_2662A320C(v62, v63, &v96);

    *(v60 + 14) = v64;
    _os_log_impl(&dword_26629C000, v57, v58, "Fatal: Unable to get the best app for user: %s from installedApps: %s", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v61, -1, -1);
    MEMORY[0x266784AD0](v60, -1, -1);

    return (*(v59 + 8))(v12, v81);
  }

  else
  {

    return (*(v8 + 8))(v12, v81);
  }
}

uint64_t sub_26634AA34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26634AA7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26634AACC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CC0, &qword_2664E6858);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26634AB34(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v41 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_26:
    v33 = sub_266349310(v1);

    return v33;
  }

  v3 = (a1 + 32);
  while (1)
  {
    v8 = v3[3];
    v39 = v3[2];
    v40 = v8;
    v9 = v3[1];
    v37 = *v3;
    v38 = v9;
    v10 = v37;
    v11 = v41;
    if (v41[2])
    {
      sub_2662C0AE0(&v37, v36);

      sub_2662A3E98(v10, *(&v10 + 1));
      if (v12)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_2662C0AE0(&v37, v36);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36[0] = v11;
    v14 = sub_2662A3E98(v10, *(&v10 + 1));
    v16 = v11[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v11[3] < v19)
    {
      sub_26644FF98(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_2662A3E98(v10, *(&v10 + 1));
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_29;
      }

LABEL_14:
      v22 = v36[0];
      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v23 = v14;
    sub_2664538E8();
    v14 = v23;
    v22 = v36[0];
    if ((v20 & 1) == 0)
    {
LABEL_17:
      v22[(v14 >> 6) + 8] |= 1 << v14;
      *(v22[6] + 16 * v14) = v10;
      *(v22[7] + 8 * v14) = MEMORY[0x277D84F90];
      v24 = v22[2];
      v18 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v18)
      {
        goto LABEL_28;
      }

      v22[2] = v25;

      goto LABEL_19;
    }

LABEL_15:
    *(v22[7] + 8 * v14) = MEMORY[0x277D84F90];

LABEL_19:
    v41 = v22;
LABEL_20:
    v27 = sub_2663970CC(v35, v10, *(&v10 + 1));
    v28 = *v26;
    if (*v26)
    {
      v29 = v26;
      sub_2662C0AE0(&v37, v36);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      *v29 = v28;
      if ((v30 & 1) == 0)
      {
        v28 = sub_2663845E8(0, *(v28 + 2) + 1, 1, v28);
        *v29 = v28;
      }

      v32 = *(v28 + 2);
      v31 = *(v28 + 3);
      if (v32 >= v31 >> 1)
      {
        v28 = sub_2663845E8((v31 > 1), v32 + 1, 1, v28);
        *v29 = v28;
      }

      *(v28 + 2) = v32 + 1;
      v4 = &v28[64 * v32];
      v5 = v37;
      v6 = v38;
      v7 = v40;
      *(v4 + 4) = v39;
      *(v4 + 5) = v7;
      *(v4 + 2) = v5;
      *(v4 + 3) = v6;
    }

    (v27)(v35, 0);
    sub_2662C0B3C(&v37);

    v3 += 4;
    if (!--v2)
    {
      v1 = v41;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t sub_26634AE1C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_26634AE28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CC0, &qword_2664E6858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OpenPodcastChannelAppIntent.init(channelEntity:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CC8, &qword_2664E6860);
  swift_allocObject();
  result = sub_2664DFA28();
  *a2 = result;
  return result;
}

uint64_t sub_26634AF58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v10 = sub_2664DE438();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_26636B8D0();
  }

  sub_2664DE428();
  sub_2664DE388();
  v15 = v14;
  (*(v11 + 8))(v13, v10);
  v16 = type metadata accessor for EntitySearchSignalLocal();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v15;
  v20[3] = v16;
  v20[4] = &off_2877EA300;
  v20[0] = v17;

  a4(v20);
  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

uint64_t sub_26634B0C0(uint64_t a1)
{
  v3 = sub_2664DFE38();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v62 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v65 = &v62 - v6;
  v7 = *(v1 + 16);

  sub_266449428(a1, v7);
  v9 = v8;

  *(v1 + 16) = v9;

  v10 = *(v1 + 24);

  sub_2664495A0(a1, v10);
  v12 = v11;

  *(v1 + 24) = v12;

  v66 = v1;
  v13 = *(v1 + 16);

  v14 = sub_26639F100();
  v15 = sub_2663D8A24(v13, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  v16 = sub_2664E0C78();
  v17 = v16;
  v18 = 0;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v15 + 64);
  v22 = (v19 + 63) >> 6;
  v67 = (v16 + 64);
  if (v21)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_10:
      v28 = v23 | (v18 << 6);
      v25 = 16 * v28;
      v29 = (*(v15 + 48) + 16 * v28);
      v31 = *v29;
      v30 = v29[1];

      v32 = Double.rounded(to:)(3);
      *(v67 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v33 = (v17[6] + 16 * v28);
      *v33 = v31;
      v33[1] = v30;
      *(v17[7] + 8 * v28) = v32;
      v34 = v17[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      v17[2] = v36;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  else
  {
LABEL_5:
    v24 = v18;
    v25 = v65;
    v26 = v66;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v18 >= v22)
      {
        break;
      }

      v27 = *(v15 + 64 + 8 * v18);
      ++v24;
      if (v27)
      {
        v23 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_10;
      }
    }

    *(v26 + 16) = v17;

    if (qword_280F914E8 != -1)
    {
      goto LABEL_22;
    }
  }

  v37 = v64;
  v38 = __swift_project_value_buffer(v64, qword_280F914F0);
  swift_beginAccess();
  v39 = v63;
  v67 = *(v63 + 16);
  v67(v25, v38, v37);

  v40 = sub_2664DFE18();
  v41 = sub_2664E06C8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v68 = v43;
    *v42 = 136315138;

    v44 = sub_2664E01D8();
    v46 = v45;

    v47 = sub_2662A320C(v44, v46, &v68);
    v37 = v64;

    *(v42 + 4) = v47;
    v39 = v63;
    _os_log_impl(&dword_26629C000, v40, v41, "EntitySearchSignalLocal#signal BundleScore from view %s ", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x266784AD0](v43, -1, -1);
    MEMORY[0x266784AD0](v42, -1, -1);
  }

  v48 = *(v39 + 8);
  v48(v25, v37);
  v49 = v62;
  v67(v62, v38, v37);

  v50 = sub_2664DFE18();
  v51 = sub_2664E06C8();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v68 = v53;
    *v52 = 136315138;
    v54 = v37;

    v55 = sub_2664E01D8();
    v57 = v56;

    v58 = sub_2662A320C(v55, v57, &v68);

    *(v52 + 4) = v58;
    _os_log_impl(&dword_26629C000, v50, v51, "EntitySearchSignalLocal#signal Bundle Recency from view  %s ", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x266784AD0](v53, -1, -1);
    MEMORY[0x266784AD0](v52, -1, -1);

    v59 = v62;
    v60 = v54;
  }

  else
  {

    v59 = v49;
    v60 = v37;
  }

  return (v48)(v59, v60);
}

uint64_t sub_26634B6A4()
{
  v0 = sub_2662C3A68(&unk_2877E18E0);
  result = swift_arrayDestroy();
  qword_280F91C58 = v0;
  return result;
}

unint64_t sub_26634B6F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DE438();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 24);
  if (*(v10 + 16))
  {

    v11 = sub_2662A3E98(a1, a2);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v26 = [v14 integerValue];

      goto LABEL_6;
    }
  }

  v26 = -1;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000019;
  *(inited + 16) = xmmword_2664E36E0;
  *(inited + 40) = 0x80000002664F1510;
  if (*(*(v3 + 24) + 16))
  {

    sub_2662A3E98(a1, a2);
    if (v16)
    {

      goto LABEL_11;
    }
  }

  sub_2664DE428();
  sub_2664DE3E8();
  (*(v7 + 8))(v9, v6);
LABEL_11:
  v17 = Double.rounded(to:)(5);
  v18 = MEMORY[0x277D839F8];
  *(inited + 48) = v17;
  *(inited + 72) = v18;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x80000002664F14F0;
  v19 = *(v3 + 16);
  if (*(v19 + 16))
  {

    v20 = sub_2662A3E98(a1, a2);
    v21 = 0;
    if (v22)
    {
      v21 = *(*(v19 + 56) + 8 * v20);
    }
  }

  else
  {
    v21 = 0;
  }

  *(inited + 96) = v21;
  *(inited + 120) = v18;
  *(inited + 128) = 0xD000000000000017;
  *(inited + 168) = MEMORY[0x277D83B88];
  v23 = v26;
  *(inited + 136) = 0x80000002664F1530;
  *(inited + 144) = v23;
  v24 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v24;
}

void sub_26634B9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26634B6F0(a1, a2);
  if (*(v4 + 16))
  {
    v5 = v4;
    v6 = sub_2662A3E98(0xD000000000000017, 0x80000002664F14F0);
    if (v7)
    {
      sub_2662A01E8(*(v5 + 56) + 32 * v6, v11);

      sub_266318804(v11, &v12);
      sub_266319BF4();
      swift_dynamicCast();
      [v10 doubleValue];
      v9 = v8;

      *(a3 + 184) = v9;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26634BAB4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26634BB24()
{
  if (qword_280F8FB40 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26634BBF8(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v5[0] = a1;
  v5[1] = a2;

  a3(v5);
}

uint64_t sub_26634BC6C(uint64_t a1, uint64_t a2, int a3, void (*a4)(uint64_t, void *), uint64_t a5)
{
  v82 = a5;
  v83 = a4;
  v78 = a3;
  v90 = a2;
  v89 = sub_2664DE438();
  v6 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v77[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = sub_2664DFE38();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v77[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v87 = (v6 + 8);

  v14 = 0;
  v15 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
  v84 = a1 + 64;
  v85 = a1;
  v86 = v13;
  while (1)
  {
    v93 = v15;
    if (!v12)
    {
      break;
    }

    v92 = isUniquelyReferenced_nonNull_native;
LABEL_12:
    v18 = __clz(__rbit64(v12)) | (v14 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    sub_2662A5550(*(a1 + 56) + 40 * v18, v96);
    v95[0] = v21;
    v95[1] = v20;
    v22 = v97;
    v23 = v98;
    __swift_project_boxed_opaque_existential_1(v96, v97);
    v24 = *(v23 + 8);

    v25 = v88;
    v24(v22, v23);
    v26 = v21;
    sub_2664DE388();
    v28 = v27;
    (*v87)(v25, v89);
    v29 = v93;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v29;
    v30 = sub_2662A3E98(v21, v20);
    v32 = *(v29 + 16);
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      swift_once();
      goto LABEL_39;
    }

    v36 = v31;
    if (*(v29 + 24) < v35)
    {
      sub_2664508BC(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_2662A3E98(v21, v20);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_48;
      }

LABEL_17:
      v15 = v94;
      if (v36)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v38 = v30;
    sub_266453E30();
    v30 = v38;
    v15 = v94;
    if (v36)
    {
LABEL_18:
      *(v15[7] + 8 * v30) = v28;
      goto LABEL_22;
    }

LABEL_20:
    v15[(v30 >> 6) + 8] |= 1 << v30;
    v39 = (v15[6] + 16 * v30);
    *v39 = v26;
    v39[1] = v20;
    *(v15[7] + 8 * v30) = v28;
    v40 = v15[2];
    v34 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v34)
    {
      goto LABEL_45;
    }

    v15[2] = v41;

LABEL_22:
    v42 = v97;
    v43 = v98;
    __swift_project_boxed_opaque_existential_1(v96, v97);
    v44 = (*(v43 + 16))(v42, v43);
    isUniquelyReferenced_nonNull_native = *(v44 + 16);
    if (isUniquelyReferenced_nonNull_native)
    {
      v91 = v26;
      v93 = v15;
      v94 = MEMORY[0x277D84F90];
      sub_2662FD0FC(0, isUniquelyReferenced_nonNull_native, 0);
      v45 = v94;
      v46 = v94[2];
      v47 = 32;
      do
      {
        v48 = *(v44 + v47);
        v94 = v45;
        v49 = *(v45 + 24);
        if (v46 >= v49 >> 1)
        {
          sub_2662FD0FC((v49 > 1), v46 + 1, 1);
          v45 = v94;
        }

        *(v45 + 16) = v46 + 1;
        *(v45 + 8 * v46 + 32) = v48;
        v47 += 2;
        ++v46;
        --isUniquelyReferenced_nonNull_native;
      }

      while (isUniquelyReferenced_nonNull_native);

      v15 = v93;
      v26 = v91;
    }

    else
    {

      v45 = MEMORY[0x277D84F90];
    }

    sub_2663D8E90(v45, 604800.0);
    v51 = v50;

    v52 = v92;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v52;
    v54 = sub_2662A3E98(v26, v20);
    v56 = *(v52 + 16);
    v57 = (v55 & 1) == 0;
    v34 = __OFADD__(v56, v57);
    v58 = v56 + v57;
    if (v34)
    {
      goto LABEL_44;
    }

    v59 = v55;
    if (*(v52 + 24) >= v58)
    {
      if ((v53 & 1) == 0)
      {
        v64 = v54;
        sub_266453E30();
        v54 = v64;
      }
    }

    else
    {
      sub_2664508BC(v58, v53);
      v54 = sub_2662A3E98(v26, v20);
      if ((v59 & 1) != (v60 & 1))
      {
LABEL_48:
        result = sub_2664E0DD8();
        __break(1u);
        return result;
      }
    }

    v13 = v86;
    isUniquelyReferenced_nonNull_native = v94;
    if (v59)
    {
      *(v94[7] + 8 * v54) = v51;
    }

    else
    {
      v94[(v54 >> 6) + 8] |= 1 << v54;
      v61 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v54);
      *v61 = v26;
      v61[1] = v20;
      *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v54) = v51;
      v62 = *(isUniquelyReferenced_nonNull_native + 16);
      v34 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v34)
      {
        goto LABEL_46;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v63;
    }

    v12 &= v12 - 1;
    sub_26634CD00(v95);
    v9 = v84;
    a1 = v85;
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v17 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v17);
    ++v14;
    if (v12)
    {
      v92 = isUniquelyReferenced_nonNull_native;
      v14 = v17;
      goto LABEL_12;
    }
  }

  if (qword_280F914E8 != -1)
  {
    goto LABEL_47;
  }

LABEL_39:
  v65 = v81;
  v66 = __swift_project_value_buffer(v81, qword_280F914F0);
  swift_beginAccess();
  v67 = v80;
  v68 = v79;
  (*(v80 + 16))(v79, v66, v65);

  v69 = sub_2664DFE18();
  v70 = sub_2664E06C8();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v94 = v72;
    *v71 = 67109378;
    *(v71 + 4) = (v78 & 1) == 0;
    *(v71 + 8) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CE8, &qword_2664E69D8);
    v73 = sub_2664E01D8();
    v75 = sub_2662A320C(v73, v74, &v94);

    *(v71 + 10) = v75;
    _os_log_impl(&dword_26629C000, v69, v70, "EntitySearchSignal#signal Results from SRView for %{BOOL}d : %s", v71, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x266784AD0](v72, -1, -1);
    MEMORY[0x266784AD0](v71, -1, -1);
  }

  (*(v67 + 8))(v68, v65);
  v83(isUniquelyReferenced_nonNull_native, v93);
}