uint64_t sub_23983C5B4(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_23983C5D4, 0, 0);
}

char *sub_23983C5D4()
{
  v39 = v0;
  if (qword_27DF7C230 != -1)
  {
    swift_once();
  }

  v1 = sub_239856B34();
  __swift_project_value_buffer(v1, qword_27DF82E80);

  v2 = sub_239856B14();
  v3 = sub_239856D34();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v38 = v6;
    *v5 = 136315138;
    v7 = sub_23982EAE8(0, &qword_27DF7CB20, off_278AA14F8);
    v8 = MEMORY[0x23EE78CD0](v4, v7);
    v10 = sub_2398407F4(v8, v9, &v38);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_239824000, v2, v3, "Selecting WiFi network from WiFi scan results: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x23EE79A40](v6, -1, -1);
    MEMORY[0x23EE79A40](v5, -1, -1);
  }

  v11 = v0[6];
  v12 = *(v0[7] + OBJC_IVAR____TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler_extensionRequestHandler);
  if (v11 >> 62)
  {
    v13 = sub_239856EC4();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v38 = MEMORY[0x277D84F90];
    result = sub_239841154(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = 0;
    v35 = v0;
    v36 = v11 & 0xC000000000000001;
    v33 = v12;
    v34 = v0[6] + 32;
    v14 = v38;
    v17 = v13;
    do
    {
      if (v36)
      {
        v18 = MEMORY[0x23EE78E40](v16, v35[6]);
      }

      else
      {
        v18 = *(v34 + 8 * v16);
      }

      v19 = v18;
      v20 = [v18 ssid];
      v21 = sub_239856AB4();
      v23 = v22;

      v24 = [v19 rssi];
      v25 = sub_239857074();

      v26 = [v19 security];
      v27 = [v19 band];

      v38 = v14;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_239841154((v28 > 1), v29 + 1, 1);
        v14 = v38;
      }

      ++v16;
      *(v14 + 16) = v29 + 1;
      v30 = v14 + 24 * v29;
      *(v30 + 32) = v21;
      *(v30 + 40) = v23;
      *(v30 + 48) = v25;
      *(v30 + 49) = v26;
      *(v30 + 50) = v27;
    }

    while (v17 != v16);
    v0 = v35;
    v12 = v33;
  }

  v0[8] = v14;
  v31 = *((*MEMORY[0x277D85000] & *v12) + 0x58);
  v37 = (v31 + *v31);
  v32 = swift_task_alloc();
  v0[9] = v32;
  *v32 = v0;
  v32[1] = sub_23983C9FC;

  return (v37)(v0 + 2, v14);
}

uint64_t sub_23983C9FC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_23983CC54;
  }

  else
  {

    v2 = sub_23983CB18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23983CB18()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  if (v2 >> 60 == 15)
  {
    sub_239828288(v0[2], v0[3], v0[4], v0[5]);
    v5 = 0;
  }

  else
  {
    v6 = objc_allocWithZone(MTSWiFiNetworkAssociation);
    sub_239828190(v1, v2, v4, v3);
    v7 = sub_239856AA4();
    v8 = sub_239856AA4();
    v9 = [v6 initWithSSID:v7 credentials:v8];
    sub_239828288(v1, v2, v4, v3);
    sub_2398282D8(v1, v2);
    sub_2398282D8(v4, v3);

    v5 = v9;
  }

  v10 = v0[1];

  return v10(v5);
}

uint64_t sub_23983CC54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23983CE40(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_23982EAE8(0, &qword_27DF7CB20, off_278AA14F8);
  v5 = sub_239856CA4();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_23983CF28;

  return sub_23983C5B4(v5);
}

uint64_t sub_23983CF28(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_239856A84();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_23983D0E4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_23983D104, 0, 0);
}

char *sub_23983D104()
{
  v31 = v0;
  if (qword_27DF7C230 != -1)
  {
    swift_once();
  }

  v1 = sub_239856B34();
  __swift_project_value_buffer(v1, qword_27DF82E80);

  v2 = sub_239856B14();
  v3 = sub_239856D34();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v29[0] = v6;
    *v5 = 136315138;
    v7 = sub_23982EAE8(0, &qword_27DF7CB10, off_278AA14E8);
    v8 = MEMORY[0x23EE78CD0](v4, v7);
    v10 = sub_2398407F4(v8, v9, v29);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_239824000, v2, v3, "Selecting Thread network from Thread scan results: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x23EE79A40](v6, -1, -1);
    MEMORY[0x23EE79A40](v5, -1, -1);
  }

  v11 = v0[4];
  v12 = *(v0[5] + OBJC_IVAR____TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler_extensionRequestHandler);
  if (v11 >> 62)
  {
    v13 = sub_239856EC4();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v28 = MEMORY[0x277D84F90];
    result = sub_239841174(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = 0;
    v14 = v28;
    v17 = v0[4] + 32;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x23EE78E40](v16, v0[4]);
      }

      else
      {
        v18 = *(v17 + 8 * v16);
      }

      sub_23982FDD0(v18, v29);
      v20 = *(v28 + 16);
      v19 = *(v28 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_239841174((v19 > 1), v20 + 1, 1);
      }

      ++v16;
      *(v28 + 16) = v20 + 1;
      v21 = (v28 + (v20 << 6));
      v22 = v29[0];
      v23 = v29[1];
      v24 = v30[0];
      *(v21 + 75) = *(v30 + 11);
      v21[3] = v23;
      v21[4] = v24;
      v21[2] = v22;
    }

    while (v13 != v16);
  }

  v0[6] = v14;
  v25 = *((*MEMORY[0x277D85000] & *v12) + 0x60);
  v27 = (v25 + *v25);
  v26 = swift_task_alloc();
  v0[7] = v26;
  *v26 = v0;
  v26[1] = sub_23983D498;

  return (v27)(v0 + 2, v14);
}

uint64_t sub_23983D498()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_23983D660;
  }

  else
  {

    v2 = sub_23983D5B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23983D5B4()
{
  if (*(v0 + 24))
  {
    v1 = 0;
  }

  else
  {
    v2 = objc_allocWithZone(MTSThreadNetworkAssociation);
    v3 = sub_239857114();
    v4 = [v2 initWithExtendedPANID_];

    v1 = v4;
  }

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_23983D660()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23983D84C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_23982EAE8(0, &qword_27DF7CB10, off_278AA14E8);
  v5 = sub_239856CA4();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_2398417DC;

  return sub_23983D0E4(v5);
}

uint64_t sub_23983D934(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_23983D954, 0, 0);
}

uint64_t sub_23983D954()
{
  if (qword_27DF7C230 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_239856B34();
  __swift_project_value_buffer(v2, qword_27DF82E80);
  v3 = v1;
  v4 = sub_239856B14();
  v5 = sub_239856D34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_239824000, v4, v5, "Validating device credential: %@", v7, 0xCu);
    sub_23982F038(v8, &qword_27DF7CAF0, &qword_23985A620);
    MEMORY[0x23EE79A40](v8, -1, -1);
    MEMORY[0x23EE79A40](v7, -1, -1);
  }

  v10 = v0[8];
  v11 = v0[9];

  v12 = *(v11 + OBJC_IVAR____TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler_extensionRequestHandler);
  v13 = [v10 certificationDeclaration];
  v14 = sub_239856AB4();
  v16 = v15;

  v17 = [v10 deviceAttestationCertificate];
  v18 = sub_239856AB4();
  v20 = v19;

  v21 = [v10 productAttestationIntermediateCertificate];
  v22 = sub_239856AB4();
  v24 = v23;

  v0[2] = v14;
  v0[3] = v16;
  v0[4] = v18;
  v0[5] = v20;
  v0[6] = v22;
  v0[7] = v24;
  v25 = *((*MEMORY[0x277D85000] & *v12) + 0x50);
  v28 = (v25 + *v25);
  v26 = swift_task_alloc();
  v0[10] = v26;
  *v26 = v0;
  v26[1] = sub_23983DC54;

  return v28(v0 + 2);
}

uint64_t sub_23983DC54()
{
  v2 = *v1;
  v2[11] = v0;

  v3 = v2[4];
  v4 = v2[5];
  v6 = v2[6];
  v5 = v2[7];
  sub_2398282D8(v2[2], v2[3]);
  sub_2398282D8(v3, v4);
  sub_2398282D8(v6, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23983DDC8, 0, 0);
  }

  else
  {
    v7 = v2[1];

    return v7();
  }
}

uint64_t sub_23983DF68(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_23983E02C;

  return sub_23983D934(v6);
}

uint64_t sub_23983E02C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_239856A84();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_23983E1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_239856AF4();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23983E290, 0, 0);
}

uint64_t sub_23983E290()
{
  v39 = v0;
  if (qword_27DF7C230 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[4];
  v6 = sub_239856B34();
  __swift_project_value_buffer(v6, qword_27DF82E80);
  (*(v2 + 16))(v1, v4, v3);
  v7 = v5;

  v8 = sub_239856B14();
  v9 = sub_239856D34();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  v36 = v7;
  if (v10)
  {
    v33 = v0[5];
    v34 = v0[6];
    v14 = v0[4];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v15 = 138412802;
    *(v15 + 4) = v7;
    *v16 = v14;
    *(v15 + 12) = 2080;
    v17 = v7;
    *(v15 + 14) = sub_2398407F4(v33, v34, &v38);
    *(v15 + 22) = 2080;
    sub_239840F54();
    v18 = sub_239857034();
    v20 = v19;
    (*(v12 + 8))(v11, v13);
    v21 = sub_2398407F4(v18, v20, &v38);

    *(v15 + 24) = v21;
    _os_log_impl(&dword_239824000, v8, v9, "Pairing device in home: %@, onboarding payload: %s, uuid: %s", v15, 0x20u);
    sub_23982F038(v16, &qword_27DF7CAF0, &qword_23985A620);
    MEMORY[0x23EE79A40](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23EE79A40](v35, -1, -1);
    MEMORY[0x23EE79A40](v15, -1, -1);

    if (v0[4])
    {
LABEL_5:
      v22 = [v36 name];
      v23 = sub_239856C34();
      v25 = v24;

      goto LABEL_8;
    }
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    if (v0[4])
    {
      goto LABEL_5;
    }
  }

  v23 = 0;
  v25 = 0;
LABEL_8:
  v0[12] = v25;
  v26 = *(v0[8] + OBJC_IVAR____TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler_extensionRequestHandler);
  v0[2] = v23;
  v0[3] = v25;
  v27 = *((*MEMORY[0x277D85000] & *v26) + 0x68);
  v37 = v27 + *v27;
  v28 = swift_task_alloc();
  v0[13] = v28;
  *v28 = v0;
  v28[1] = sub_23983E670;
  v29 = v0[6];
  v30 = v0[7];
  v31 = v0[5];

  return (v37)(v0 + 2, v31, v29, v30);
}

uint64_t sub_23983E670()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23983E7B8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23983E7B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23983E9C8(void *a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v9 = sub_239856AF4();
  v5[4] = v9;
  v5[5] = *(v9 - 8);
  v10 = swift_task_alloc();
  v5[6] = v10;
  v5[7] = _Block_copy(a4);
  v11 = sub_239856C34();
  v13 = v12;
  v5[8] = v12;
  sub_239856AE4();
  v14 = a1;
  a5;
  v15 = swift_task_alloc();
  v5[9] = v15;
  *v15 = v5;
  v15[1] = sub_23983EB2C;

  return sub_23983E1C8(a1, v11, v13, v10);
}

uint64_t sub_23983EB2C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  (*(v6 + 8))(v5, v7);

  v11 = *(v3 + 56);
  if (v2)
  {
    v12 = sub_239856A84();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 56), 0);
  }

  _Block_release(*(v4 + 56));

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_23983ED58(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_23983ED78, 0, 0);
}

uint64_t sub_23983ED78()
{
  if (qword_27DF7C230 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_239856B34();
  __swift_project_value_buffer(v2, qword_27DF82E80);
  v3 = v1;
  v4 = sub_239856B14();
  v5 = sub_239856D34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v3;
    *v8 = v6;
    v9 = v3;
    _os_log_impl(&dword_239824000, v4, v5, "Fetching rooms in home: %@", v7, 0xCu);
    sub_23982F038(v8, &qword_27DF7CAF0, &qword_23985A620);
    MEMORY[0x23EE79A40](v8, -1, -1);
    MEMORY[0x23EE79A40](v7, -1, -1);
  }

  v10 = v0[4];

  if (v10)
  {
    v11 = [v3 name];
    v12 = sub_239856C34();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[6] = v14;
  v15 = *(v0[5] + OBJC_IVAR____TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler_extensionRequestHandler);
  v0[2] = v12;
  v0[3] = v14;
  v16 = *((*MEMORY[0x277D85000] & *v15) + 0x70);
  v19 = (v16 + *v16);
  v17 = swift_task_alloc();
  v0[7] = v17;
  *v17 = v0;
  v17[1] = sub_23983F028;

  return v19(v0 + 2);
}

uint64_t sub_23983F028(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_23983F148, 0, 0);
}

uint64_t sub_23983F148()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_239856E84();
    v3 = v1 + 40;
    do
    {
      v4 = objc_allocWithZone(MTSDeviceSetupRoom);

      v5 = sub_239856C24();
      [v4 initWithName_];

      sub_239856E64();
      sub_239856E94();
      sub_239856EA4();
      sub_239856E74();
      v3 += 16;
      --v2;
    }

    while (v2);

    v6 = v9;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_23983F41C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_23983F4DC;

  return sub_23983ED58(a1);
}

uint64_t sub_23983F4DC(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_239856A84();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_23982EAE8(0, &qword_27DF7CB00, off_278AA14C0);
    v11 = sub_239856C94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_23983F698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_23983F6BC, 0, 0);
}

uint64_t sub_23983F6BC()
{
  v25 = v0;
  if (qword_27DF7C230 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_239856B34();
  __swift_project_value_buffer(v2, qword_27DF82E80);
  v3 = v1;

  v4 = sub_239856B14();
  v5 = sub_239856D34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_2398407F4(v8, v6, &v24);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v3;
    *v10 = v7;
    v12 = v3;
    _os_log_impl(&dword_239824000, v4, v5, "Configuring device with name: %s, room: %@", v9, 0x16u);
    sub_23982F038(v10, &qword_27DF7CAF0, &qword_23985A620);
    MEMORY[0x23EE79A40](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23EE79A40](v11, -1, -1);
    MEMORY[0x23EE79A40](v9, -1, -1);
  }

  if (v0[6])
  {
    v13 = [v3 name];
    v14 = sub_239856C34();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v0[8] = v16;
  v17 = *(v0[7] + OBJC_IVAR____TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler_extensionRequestHandler);
  v0[2] = v14;
  v0[3] = v16;
  v18 = *((*MEMORY[0x277D85000] & *v17) + 0x78);
  v23 = (v18 + *v18);
  v19 = swift_task_alloc();
  v0[9] = v19;
  *v19 = v0;
  v19[1] = sub_23983F9D8;
  v21 = v0[4];
  v20 = v0[5];

  return (v23)(v21, v20, v0 + 2);
}

uint64_t sub_23983F9D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23983FC7C(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_239856C34();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_23983FD68;

  return sub_23983F698(v7, v9, a2);
}

uint64_t sub_23983FD68()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_239856A84();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

id sub_23983FF58()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23983FFC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23982F208;

  return sub_23983FC7C(v2, v3, v5, v4);
}

uint64_t sub_239840084(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_23982F208;

  return v6();
}

uint64_t sub_23984016C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23982F208;

  return sub_239840084(v2, v3, v4);
}

uint64_t sub_23984022C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_23982EDE8;

  return v7();
}

uint64_t sub_239840314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23982F208;

  return sub_23984022C(a1, v4, v5, v6);
}

uint64_t sub_2398403E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2398406CC(a3, v23 - v10);
  v12 = sub_239856D14();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_23982F038(v11, &qword_27DF7C508, &qword_23985C690);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_239856D04();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_239856CC4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_239856C54() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_23982F038(a3, &qword_27DF7C508, &qword_23985C690);

    return v21;
  }

LABEL_8:
  sub_23982F038(a3, &qword_27DF7C508, &qword_23985C690);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2398406CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23984073C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23982F208;

  return sub_23982D5A0(a1, v4);
}

unint64_t sub_2398407F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2398408C0(v11, 0, 0, 1, a1, a2);
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
    sub_23982A730(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2398408C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2398409CC(a5, a6);
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
    result = sub_239856E54();
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

void *sub_2398409CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_239840A18(a1, a2);
  sub_239840B48(&unk_284C446C0);
  return v3;
}

void *sub_239840A18(uint64_t a1, unint64_t a2)
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

  v6 = sub_239840C34(v5, 0);
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

  result = sub_239856E54();
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
        v10 = sub_239856C84();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_239840C34(v10, 0);
        result = sub_239856E04();
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

uint64_t sub_239840B48(uint64_t result)
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

  result = sub_239840CA8(result, v11, 1, v3);
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

void *sub_239840C34(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CAF8, &qword_23985C6F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_239840CA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CAF8, &qword_23985C6F0);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_239840DD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23982F208;

  return sub_23983F41C(v2, v3, v4);
}

uint64_t sub_239840E8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23982F208;

  return sub_23983E9C8(v2, v3, v4, v5, v6);
}

unint64_t sub_239840F54()
{
  result = qword_27DF7CB08;
  if (!qword_27DF7CB08)
  {
    sub_239856AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CB08);
  }

  return result;
}

uint64_t sub_239840FAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23982F208;

  return sub_23983DF68(v2, v3, v4);
}

uint64_t sub_239841060()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23982F208;

  return sub_23983D84C(v2, v3, v4);
}

void *sub_239841114(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_239841194(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_239841134(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23984136C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_239841154(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_239841478(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_239841174(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_239841594(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_239841194(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CB30, &qword_23985C7D0);
  v10 = *(type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0) - 8);
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
  v15 = *(type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0) - 8);
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

char *sub_23984136C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CB38, &qword_23985C7D8);
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

char *sub_239841478(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CB28, &qword_23985C7C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_239841594(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CB18, &qword_23985C798);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t objectdestroy_38Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2398416E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23982F208;

  return sub_23983CE40(v2, v3, v4);
}

uint64_t objectdestroy_16Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2398417E0()
{
  v0 = sub_239856B34();
  __swift_allocate_value_buffer(v0, qword_27DF82E80);
  __swift_project_value_buffer(v0, qword_27DF82E80);
  sub_239856C34();
  return sub_239856B24();
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

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.certificationDeclaration.getter()
{
  v1 = *v0;
  sub_239826330(*v0, *(v0 + 8));
  return v1;
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.certificationDeclaration.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2398282D8(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.deviceAttestationCertificate.getter()
{
  v1 = *(v0 + 16);
  sub_239826330(v1, *(v0 + 24));
  return v1;
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.deviceAttestationCertificate.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2398282D8(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.productAttestationIntermediateCertificate.getter()
{
  v1 = *(v0 + 32);
  sub_239826330(v1, *(v0 + 40));
  return v1;
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.productAttestationIntermediateCertificate.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2398282D8(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.init(certificationDeclaration:deviceAttestationCertificate:productAttestationIntermediateCertificate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

BOOL static MatterAddDeviceExtensionRequestHandler.DeviceCredential.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (!sub_239827F9C(*a1, a1[1], *a2, a2[1]) || !sub_239827F9C(v2, v3, v6, v7))
  {
    return 0;
  }

  return sub_239827F9C(v4, v5, v8, v9);
}

unint64_t sub_239841B20()
{
  v1 = 0xD00000000000001CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_239841B78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_239842814(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_239841BAC(uint64_t a1)
{
  v2 = sub_23984243C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239841BE8(uint64_t a1)
{
  v2 = sub_23984243C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CBA0, &qword_23985C7E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v10 = v1[4];
  v16 = v1[5];
  v17 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239826330(v7, v8);
  sub_23984243C();
  sub_239857144();
  v21 = v7;
  v22 = v8;
  v23 = 0;
  sub_239828988();
  v11 = v20;
  sub_239856FE4();
  sub_2398282D8(v21, v22);
  if (!v11)
  {
    v13 = v16;
    v12 = v17;
    v21 = v19;
    v22 = v18;
    v23 = 1;
    sub_239826330(v19, v18);
    sub_239856FE4();
    sub_2398282D8(v21, v22);
    v21 = v12;
    v22 = v13;
    v23 = 2;
    sub_239826330(v12, v13);
    sub_239856FE4();
    sub_2398282D8(v21, v22);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.hash(into:)(uint64_t a1)
{
  sub_239856AC4();
  sub_239856AC4();

  return sub_239856AC4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.hashValue.getter()
{
  sub_239857094();
  sub_239856AC4();
  sub_239856AC4();
  sub_239856AC4();
  return sub_2398570E4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CBB0, &qword_23985C7E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23984243C();
  sub_239857134();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  sub_239828A30();
  sub_239856F44();
  v18 = v20;
  v19 = v21;
  v22 = 1;
  sub_239856F44();
  v16 = v20;
  v17 = v21;
  v22 = 2;
  sub_239856F44();
  (*(v6 + 8))(v8, v5);
  v9 = v20;
  v10 = v21;
  v12 = v18;
  v11 = v19;
  *a2 = v18;
  a2[1] = v11;
  v14 = v16;
  v13 = v17;
  a2[2] = v16;
  a2[3] = v13;
  a2[4] = v9;
  a2[5] = v10;
  sub_239826330(v12, v11);
  sub_239826330(v14, v13);
  sub_239826330(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_2398282D8(v12, v11);
  sub_2398282D8(v14, v13);
  return sub_2398282D8(v9, v10);
}

uint64_t sub_2398421EC()
{
  sub_239857094();
  sub_239856AC4();
  sub_239856AC4();
  sub_239856AC4();
  return sub_2398570E4();
}

uint64_t sub_239842270(uint64_t a1)
{
  sub_239856AC4();
  sub_239856AC4();

  return sub_239856AC4();
}

uint64_t sub_2398422DC(uint64_t a1)
{
  sub_239857094();
  sub_239856AC4();
  sub_239856AC4();
  sub_239856AC4();
  return sub_2398570E4();
}

BOOL sub_23984238C(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (!sub_239827F9C(*a1, a1[1], *a2, a2[1]) || !sub_239827F9C(v2, v3, v6, v7))
  {
    return 0;
  }

  return sub_239827F9C(v4, v5, v8, v9);
}

unint64_t sub_23984243C()
{
  result = qword_27DF7CBA8;
  if (!qword_27DF7CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CBA8);
  }

  return result;
}

unint64_t sub_239842494()
{
  result = qword_27DF7CBB8;
  if (!qword_27DF7CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CBB8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2398424FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_239842550(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t _s16DeviceCredentialV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s16DeviceCredentialV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_239842710()
{
  result = qword_27DF7CBC0;
  if (!qword_27DF7CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CBC0);
  }

  return result;
}

unint64_t sub_239842768()
{
  result = qword_27DF7CBC8;
  if (!qword_27DF7CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CBC8);
  }

  return result;
}

unint64_t sub_2398427C0()
{
  result = qword_27DF7CBD0;
  if (!qword_27DF7CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CBD0);
  }

  return result;
}

uint64_t sub_239842814(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x800000023985D5B0 == a2 || (sub_239857054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000023985D5D0 == a2 || (sub_239857054() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000029 && 0x800000023985D5F0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_239857054();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_239844BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23985160C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2398541BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_239856024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  os_unfair_lock_unlock((v20 + v22));
  _Unwind_Resume(a1);
}

void sub_2398562E8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_239856370(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}