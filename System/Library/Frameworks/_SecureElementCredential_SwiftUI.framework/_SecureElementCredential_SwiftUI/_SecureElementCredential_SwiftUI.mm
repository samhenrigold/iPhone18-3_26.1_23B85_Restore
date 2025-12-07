uint64_t View.transactionTask(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v21 = 0;
  sub_23B95D7B8(&qword_27E195E68, &qword_23B963A90);
  sub_23B9635F0();
  v11 = v14;
  v12 = v15;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = v11;
  v18 = v12;
  v19 = KeyPath;
  v20 = 0;
  MEMORY[0x23EEB1200](&v14, a4, &type metadata for CredentialTransactionTaskModifier, a5);
}

uint64_t CredentialSession.configuration()()
{
  type metadata accessor for CredentialTransaction.Configuration(0);
  swift_allocObject();

  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23B95D5DC;

  return sub_23B95DA18(v0);
}

uint64_t sub_23B95D5DC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_23B95D6DC()
{
  v0 = sub_23B963540();
  sub_23B95D8AC(v0, qword_27E195EF8);
  sub_23B95D910(v0, qword_27E195EF8);
  return sub_23B963530();
}

uint64_t sub_23B95D75C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B963590();
  *a1 = result;
  return result;
}

uint64_t sub_23B95D7B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23B95D800(void *a1)
{
  v1 = sub_23B963580();
  sub_23B95D858(v1, v2, v3);
  return swift_getWitnessTable();
}

unint64_t sub_23B95D858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E195E70;
  if (!qword_27E195E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E195E70);
  }

  return result;
}

uint64_t *sub_23B95D8AC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_23B95D910(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23B95D960()
{
  v1 = *v0;
  sub_23B963720();
  MEMORY[0x23EEB1350](v1);
  return sub_23B963740();
}

uint64_t sub_23B95D9D4(uint64_t a1)
{
  v2 = *v1;
  sub_23B963720();
  MEMORY[0x23EEB1350](v2);
  return sub_23B963740();
}

uint64_t sub_23B95DA18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23B963480();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B95DAD8, 0, 0);
}

uint64_t sub_23B95DAD8()
{
  v17 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  *(v4 + 16) = v0[2];

  sub_23B963470();
  (*(v2 + 32))(v4 + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier, v1, v3);
  *(v4 + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_state) = 0;
  if (qword_27E195E60 != -1)
  {
    swift_once();
  }

  v5 = sub_23B963540();
  sub_23B95D910(v5, qword_27E195EF8);

  v6 = sub_23B963520();
  v7 = sub_23B9636B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = sub_23B963450();
    v12 = sub_23B96035C(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_23B95C000, v6, v7, "Returning new configuration with identifier %s", v8, 0xCu);
    sub_23B960904(v9);
    MEMORY[0x23EEB15F0](v9, -1, -1);
    MEMORY[0x23EEB15F0](v8, -1, -1);
  }

  v13 = v0[1];
  v14 = v0[3];

  return v13(v14);
}

uint64_t sub_23B95DCDC()
{
  v1[2] = v0;
  v2 = sub_23B9634F0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B95DDA8, 0, 0);
}

uint64_t sub_23B95DDA8()
{
  v24 = v0;
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_state))
  {
    if (qword_27E195E60 != -1)
    {
      swift_once();
    }

    v2 = sub_23B963540();
    sub_23B95D910(v2, qword_27E195EF8);

    v3 = sub_23B963520();
    v4 = sub_23B9636B0();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v23 = v6;
      *v5 = 136315138;
      v7 = sub_23B963450();
      v9 = sub_23B96035C(v7, v8, &v23);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_23B95C000, v3, v4, "Configuration %s has been invalidated", v5, 0xCu);
      sub_23B960904(v6);
      MEMORY[0x23EEB15F0](v6, -1, -1);
      MEMORY[0x23EEB15F0](v5, -1, -1);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_state) = 1;
    if (qword_27E195E60 != -1)
    {
      swift_once();
    }

    v12 = sub_23B963540();
    v0[7] = sub_23B95D910(v12, qword_27E195EF8);

    v13 = sub_23B963520();
    v14 = sub_23B9636B0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      v17 = sub_23B963450();
      v19 = sub_23B96035C(v17, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_23B95C000, v13, v14, "Invalidating configuration %s", v15, 0xCu);
      sub_23B960904(v16);
      MEMORY[0x23EEB15F0](v16, -1, -1);
      MEMORY[0x23EEB15F0](v15, -1, -1);
    }

    v0[8] = *(v0[2] + 16);
    v22 = (*MEMORY[0x277CDBCD0] + MEMORY[0x277CDBCD0]);
    v20 = swift_task_alloc();
    v0[9] = v20;
    *v20 = v0;
    v20[1] = sub_23B95E13C;
    v21 = v0[6];

    return v22(v21);
  }
}

uint64_t sub_23B95E13C()
{

  return MEMORY[0x2822009F8](sub_23B95E238, 0, 0);
}

uint64_t sub_23B95E238()
{
  v26 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  (*(v3 + 16))(v1, v0[6], v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == *MEMORY[0x277CDBCB8])
  {
    (*(v0[4] + 96))(v0[5], v0[3]);
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_23B95E644;

    return MEMORY[0x28212AE50]();
  }

  else if (v4 == *MEMORY[0x277CDBCC0])
  {
    (*(v0[4] + 96))(v0[5], v0[3]);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_23B95E814;

    return MEMORY[0x28212AE40]();
  }

  else
  {
    if (v4 == *MEMORY[0x277CDBCB0])
    {

      v7 = sub_23B963520();
      v8 = sub_23B9636B0();

      v9 = os_log_type_enabled(v7, v8);
      v10 = v0[6];
      v11 = v0[3];
      v12 = v0[4];
      if (v9)
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v25 = v14;
        *v13 = 136315138;
        v15 = sub_23B963450();
        v17 = sub_23B96035C(v15, v16, &v25);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_23B95C000, v7, v8, "Configuration %s is being invalidated in management session state, no-op", v13, 0xCu);
        sub_23B960904(v14);
        MEMORY[0x23EEB15F0](v14, -1, -1);
        MEMORY[0x23EEB15F0](v13, -1, -1);
      }

      (*(v12 + 8))(v10, v11);

      v18 = v0[1];
    }

    else
    {
      if (v4 != *MEMORY[0x277CDBCC8])
      {
        (*(v0[4] + 8))(v0[5], v0[3]);
      }

      v19 = v0[6];
      v20 = v0[3];
      v21 = v0[4];
      v22 = sub_23B963500();
      sub_23B960950();
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277CDBCD8], v22);
      swift_willThrow();
      (*(v21 + 8))(v19, v20);

      v18 = v0[1];
    }

    return v18();
  }
}

uint64_t sub_23B95E644()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_23B95E928;
  }

  else
  {
    v2 = sub_23B95E758;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23B95E758()
{
  v1 = v0[5];
  (*(v0[4] + 8))(v0[6], v0[3]);
  v2 = sub_23B9634A0();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_23B95E814()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_23B95E9E4;
  }

  else
  {
    v2 = sub_23B9612AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23B95E928()
{
  v1 = v0[5];
  (*(v0[4] + 8))(v0[6], v0[3]);
  v2 = sub_23B9634A0();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_23B95E9E4()
{
  v1 = v0[5];
  (*(v0[4] + 8))(v0[6], v0[3]);
  v2 = sub_23B9634A0();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t CredentialTransaction.Configuration.deinit()
{

  v1 = OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier;
  v2 = sub_23B963480();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CredentialTransaction.Configuration.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier;
  v2 = sub_23B963480();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23B95EBDC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_23B963480();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B95ECA0, 0, 0);
}

uint64_t sub_23B95ECA0()
{
  v39 = v0;
  v1 = v0[4];
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *(v1 + 24);
    if (qword_27E195E60 != -1)
    {
      swift_once();
    }

    v4 = sub_23B963540();
    sub_23B95D910(v4, qword_27E195EF8);

    v5 = sub_23B963520();
    v6 = sub_23B9636A0();

    if (os_log_type_enabled(v5, v6))
    {
      v37 = v3;
      v8 = v0[6];
      v7 = v0[7];
      v9 = v0[4];
      v10 = v0[5];
      v11 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38[0] = v36;
      *v11 = 136315650;
      *(v11 + 4) = sub_23B96035C(0xD000000000000022, 0x800000023B964150, v38);
      *(v11 + 12) = 2080;
      (*(v8 + 16))(v7, *(v9 + 16) + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier, v10);
      v12 = sub_23B963450();
      v14 = v13;
      (*(v8 + 8))(v7, v10);
      v3 = v37;
      v15 = sub_23B96035C(v12, v14, v38);

      *(v11 + 14) = v15;
      *(v11 + 22) = 2080;
      *(v11 + 24) = sub_23B96035C(v37, v2, v38);
      _os_log_impl(&dword_23B95C000, v5, v6, "%s Configuration %s, scene identifier %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EEB15F0](v36, -1, -1);
      MEMORY[0x23EEB15F0](v11, -1, -1);
    }

    v0[8] = *(*(v0[4] + 16) + 16);

    v16 = swift_task_alloc();
    v0[9] = v16;
    *v16 = v0;
    v16[1] = sub_23B95F1DC;
    v18 = v0[2];
    v17 = v0[3];

    return MEMORY[0x28212AE48](v18, v3, v2, v17);
  }

  else
  {
    if (qword_27E195E60 != -1)
    {
      swift_once();
    }

    v19 = sub_23B963540();
    sub_23B95D910(v19, qword_27E195EF8);

    v20 = sub_23B963520();
    v21 = sub_23B9636C0();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = v0[6];
      v22 = v0[7];
      v25 = v0[4];
      v24 = v0[5];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_23B96035C(0xD000000000000022, 0x800000023B964150, v38);
      *(v26 + 12) = 2080;
      (*(v23 + 16))(v22, *(v25 + 16) + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier, v24);
      v28 = sub_23B963450();
      v30 = v29;
      (*(v23 + 8))(v22, v24);
      v31 = sub_23B96035C(v28, v30, v38);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_23B95C000, v20, v21, "%s Configuration %s no scene identifier", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB15F0](v27, -1, -1);
      MEMORY[0x23EEB15F0](v26, -1, -1);
    }

    v32 = sub_23B963500();
    sub_23B960950();
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277CDBCE0], v32);
    swift_willThrow();

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_23B95F1DC()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B95F324, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23B95F324()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B95F390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_23B963480();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B95F454, 0, 0);
}

uint64_t sub_23B95F454()
{
  v40 = v0;
  v1 = v0[5];
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *(v1 + 24);
    if (qword_27E195E60 != -1)
    {
      swift_once();
    }

    v4 = sub_23B963540();
    sub_23B95D910(v4, qword_27E195EF8);

    v5 = sub_23B963520();
    v6 = sub_23B9636A0();

    if (os_log_type_enabled(v5, v6))
    {
      v38 = v3;
      v8 = v0[7];
      v7 = v0[8];
      v9 = v0[5];
      v10 = v0[6];
      v11 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39[0] = v37;
      *v11 = 136315650;
      *(v11 + 4) = sub_23B96035C(0xD000000000000031, 0x800000023B964180, v39);
      *(v11 + 12) = 2080;
      (*(v8 + 16))(v7, *(v9 + 16) + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier, v10);
      v12 = sub_23B963450();
      v14 = v13;
      (*(v8 + 8))(v7, v10);
      v3 = v38;
      v15 = sub_23B96035C(v12, v14, v39);

      *(v11 + 14) = v15;
      *(v11 + 22) = 2080;
      *(v11 + 24) = sub_23B96035C(v38, v2, v39);
      _os_log_impl(&dword_23B95C000, v5, v6, "%s Configuration %s, scene identifier %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EEB15F0](v37, -1, -1);
      MEMORY[0x23EEB15F0](v11, -1, -1);
    }

    v0[9] = *(*(v0[5] + 16) + 16);

    v16 = swift_task_alloc();
    v0[10] = v16;
    *v16 = v0;
    v16[1] = sub_23B95F994;
    v17 = v0[3];
    v18 = v0[4];
    v19 = v0[2];

    return MEMORY[0x28212AE58](v19, v3, v2, v17, v18);
  }

  else
  {
    if (qword_27E195E60 != -1)
    {
      swift_once();
    }

    v20 = sub_23B963540();
    sub_23B95D910(v20, qword_27E195EF8);

    v21 = sub_23B963520();
    v22 = sub_23B9636C0();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = v0[7];
      v23 = v0[8];
      v26 = v0[5];
      v25 = v0[6];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39[0] = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_23B96035C(0xD000000000000031, 0x800000023B964180, v39);
      *(v27 + 12) = 2080;
      (*(v24 + 16))(v23, *(v26 + 16) + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier, v25);
      v29 = sub_23B963450();
      v31 = v30;
      (*(v24 + 8))(v23, v25);
      v32 = sub_23B96035C(v29, v31, v39);

      *(v27 + 14) = v32;
      _os_log_impl(&dword_23B95C000, v21, v22, "%s Configuration %s no scene identifier", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB15F0](v28, -1, -1);
      MEMORY[0x23EEB15F0](v27, -1, -1);
    }

    v33 = sub_23B963500();
    sub_23B960950();
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277CDBCE0], v33);
    swift_willThrow();

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_23B95F994()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B95FADC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23B95FADC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B95FB48(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23B963480();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B95FC08, 0, 0);
}

uint64_t sub_23B95FC08()
{
  v38 = v0;
  v1 = v0[3];
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *(v1 + 24);
    if (qword_27E195E60 != -1)
    {
      swift_once();
    }

    v4 = sub_23B963540();
    sub_23B95D910(v4, qword_27E195EF8);

    v5 = sub_23B963520();
    v6 = sub_23B9636A0();

    if (os_log_type_enabled(v5, v6))
    {
      v36 = v3;
      v8 = v0[5];
      v7 = v0[6];
      v9 = v0[3];
      v10 = v0[4];
      v11 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37[0] = v35;
      *v11 = 136315650;
      *(v11 + 4) = sub_23B96035C(0xD00000000000003ELL, 0x800000023B9641C0, v37);
      *(v11 + 12) = 2080;
      (*(v8 + 16))(v7, *(v9 + 16) + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier, v10);
      v12 = sub_23B963450();
      v14 = v13;
      (*(v8 + 8))(v7, v10);
      v3 = v36;
      v15 = sub_23B96035C(v12, v14, v37);

      *(v11 + 14) = v15;
      *(v11 + 22) = 2080;
      *(v11 + 24) = sub_23B96035C(v36, v2, v37);
      _os_log_impl(&dword_23B95C000, v5, v6, "%s Configuration %s, scene identifier %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EEB15F0](v35, -1, -1);
      MEMORY[0x23EEB15F0](v11, -1, -1);
    }

    v0[7] = *(*(v0[3] + 16) + 16);

    v16 = swift_task_alloc();
    v0[8] = v16;
    *v16 = v0;
    v16[1] = sub_23B960140;
    v17 = v0[2];

    return MEMORY[0x28212AE30](v3, v2, v17);
  }

  else
  {
    if (qword_27E195E60 != -1)
    {
      swift_once();
    }

    v18 = sub_23B963540();
    sub_23B95D910(v18, qword_27E195EF8);

    v19 = sub_23B963520();
    v20 = sub_23B9636C0();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = v0[5];
      v21 = v0[6];
      v24 = v0[3];
      v23 = v0[4];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_23B96035C(0xD00000000000003ELL, 0x800000023B9641C0, v37);
      *(v25 + 12) = 2080;
      (*(v22 + 16))(v21, *(v24 + 16) + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier, v23);
      v27 = sub_23B963450();
      v29 = v28;
      (*(v22 + 8))(v21, v23);
      v30 = sub_23B96035C(v27, v29, v37);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_23B95C000, v19, v20, "%s Configuration %s no scene identifier", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB15F0](v26, -1, -1);
      MEMORY[0x23EEB15F0](v25, -1, -1);
    }

    v31 = sub_23B963500();
    sub_23B960950();
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277CDBCE0], v31);
    swift_willThrow();

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_23B960140()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B960288, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23B960288()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CredentialTransaction.deinit()
{

  return v0;
}

uint64_t CredentialTransaction.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_23B96035C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B960428(v11, 0, 0, 1, a1, a2);
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
    sub_23B96124C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_23B960904(v11);
  return v7;
}

unint64_t sub_23B960428(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23B960534(a5, a6);
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
    result = sub_23B9636F0();
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

void *sub_23B960534(uint64_t a1, unint64_t a2)
{
  v3 = sub_23B960580(a1, a2);
  sub_23B9606B0(&unk_284E50968);
  return v3;
}

void *sub_23B960580(uint64_t a1, unint64_t a2)
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

  v6 = sub_23B96079C(v5, 0);
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

  result = sub_23B9636F0();
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
        v10 = sub_23B963630();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23B96079C(v10, 0);
        result = sub_23B9636E0();
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

uint64_t sub_23B9606B0(uint64_t result)
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

  result = sub_23B960810(result, v11, 1, v3);
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

void *sub_23B96079C(uint64_t a1, uint64_t a2)
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

  sub_23B95D7B8(&qword_27E195E98, &qword_23B963C38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23B960810(char *result, int64_t a2, char a3, char *a4)
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
    sub_23B95D7B8(&qword_27E195E98, &qword_23B963C38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_23B960904(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_23B960950()
{
  result = qword_27E195E78;
  if (!qword_27E195E78)
  {
    sub_23B963500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E195E78);
  }

  return result;
}

uint64_t dispatch thunk of CredentialTransaction.performTransaction(using:options:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 96) + **(*v2 + 96));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23B9612B0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CredentialTransaction.performTransactionInWiredMode(using:instanceAID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 104) + **(*v3 + 104));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_23B9612B0;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of CredentialTransaction.performCardEmulationTransactionWithCurrentCredential(options:)(uint64_t a1)
{
  v6 = (*(*v1 + 112) + **(*v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23B960D64;

  return v6(a1);
}

uint64_t sub_23B960D64()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for CredentialTransaction.Configuration(uint64_t a1)
{
  result = qword_27E195E80;
  if (!qword_27E195E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B960EAC(uint64_t a1)
{
  result = sub_23B963480();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of CredentialTransaction.Configuration.invalidate()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23B9612B0;

  return v4();
}

uint64_t getEnumTagSinglePayload for CredentialTransaction.Configuration.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CredentialTransaction.Configuration.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B9611F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E195E90;
  if (!qword_27E195E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E195E90);
  }

  return result;
}

uint64_t sub_23B96124C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_23B9612C0(uint64_t a1, uint64_t a2)
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

uint64_t sub_23B9612DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_23B961324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B9613A0(uint64_t a1)
{
  v1[12] = a1;
  v1[13] = sub_23B963660();
  v1[14] = sub_23B963650();
  v3 = sub_23B963640();
  v1[15] = v3;
  v1[16] = v2;

  return MEMORY[0x2822009F8](sub_23B96143C, v3, v2);
}

uint64_t sub_23B96143C()
{
  v47 = v0;
  v1 = *(v0 + 96);
  v2 = *v1;
  *(v0 + 136) = *v1;
  if (!v2 || (*(v2 + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_state) & 1) != 0)
  {

    if (qword_27E195E60 != -1)
    {
      swift_once();
    }

    v3 = sub_23B963540();
    sub_23B95D910(v3, qword_27E195EF8);
    v4 = sub_23B963520();
    v5 = sub_23B9636B0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_23B95C000, v4, v5, "Invalid configuration in transactionTask modifier", v6, 2u);
      MEMORY[0x23EEB15F0](v6, -1, -1);
    }

LABEL_8:
    v7 = *(v0 + 8);

    return v7();
  }

  v9 = v1[5];
  *(v0 + 40) = *(v1 + 48);
  *(v0 + 32) = v9;
  v10 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_23B963140(v0 + 32, v0 + 48, &qword_27E195EC0, &qword_23B963D90);
    sub_23B9636D0();
    v34 = sub_23B9635D0();
    sub_23B963510();

    v35 = sub_23B9635C0();
    v36 = *(v35 - 8);
    v37 = swift_task_alloc();
    sub_23B9635B0();
    swift_getAtKeyPath();
    sub_23B9631A8(v0 + 32, &qword_27E195EC0, &qword_23B963D90);
    (*(v36 + 8))(v37, v35);

    v10 = *(v0 + 80);
    *(v0 + 144) = v10;
    if (v10)
    {
      goto LABEL_13;
    }

LABEL_21:

    if (qword_27E195E60 != -1)
    {
      swift_once();
    }

    v38 = sub_23B963540();
    sub_23B95D910(v38, qword_27E195EF8);

    v39 = sub_23B963520();
    v40 = sub_23B9636C0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v41 = 136315138;
      v43 = sub_23B963450();
      v45 = sub_23B96035C(v43, v44, &v46);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_23B95C000, v39, v40, "No scene session in CredentialTransactionTaskModifier in configuration %s", v41, 0xCu);
      sub_23B960904(v42);
      MEMORY[0x23EEB15F0](v42, -1, -1);
      MEMORY[0x23EEB15F0](v41, -1, -1);
    }

    goto LABEL_8;
  }

  sub_23B963140(v0 + 32, v0 + 64, &qword_27E195EC0, &qword_23B963D90);
  *(v0 + 144) = v10;
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_13:
  if (qword_27E195E60 != -1)
  {
    swift_once();
  }

  v11 = sub_23B963540();
  sub_23B95D910(v11, qword_27E195EF8);

  v12 = v10;
  v13 = sub_23B963520();
  v14 = sub_23B9636A0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v46 = v16;
    *v15 = 136315394;
    v17 = sub_23B963450();
    v19 = sub_23B96035C(v17, v18, &v46);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = [v12 persistentIdentifier];
    v21 = sub_23B963610();
    v23 = v22;

    v24 = sub_23B96035C(v21, v23, &v46);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_23B95C000, v13, v14, "Transaction task successfully created for configuration %s and scene Identifier %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB15F0](v16, -1, -1);
    MEMORY[0x23EEB15F0](v15, -1, -1);
  }

  v25 = *(v0 + 96);

  v26 = [v12 persistentIdentifier];
  v27 = sub_23B963610();
  v29 = v28;

  type metadata accessor for CredentialTransaction();
  v30 = swift_allocObject();
  *(v0 + 152) = v30;
  v30[2] = v2;
  v30[3] = v27;
  v30[4] = v29;
  *(v0 + 16) = *(v25 + 24);
  *(v0 + 88) = v30;

  sub_23B95D7B8(&qword_27E195ED0, &qword_23B963DA0);
  sub_23B963600();
  v31 = swift_task_alloc();
  *(v0 + 160) = v31;
  v31[2] = v2;
  v31[3] = v25;
  v31[4] = v30;
  v32 = swift_task_alloc();
  *(v0 + 168) = v32;
  *(v32 + 16) = v2;
  *(v32 + 24) = v30;
  *(v0 + 176) = sub_23B963650();
  v33 = swift_task_alloc();
  *(v0 + 184) = v33;
  *v33 = v0;
  v33[1] = sub_23B961B64;

  return MEMORY[0x282200830]();
}

void sub_23B961B64()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);

    MEMORY[0x2822009F8](sub_23B961CB0, v3, v4);
  }
}

uint64_t sub_23B961CB0()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B961D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_23B963660();
  v4[5] = sub_23B963650();
  v6 = sub_23B963640();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_23B961DD0, v6, v5);
}

uint64_t sub_23B961DD0()
{
  v14 = v0;
  if (qword_27E195E60 != -1)
  {
    swift_once();
  }

  v1 = sub_23B963540();
  sub_23B95D910(v1, qword_27E195EF8);

  v2 = sub_23B963520();
  v3 = sub_23B9636B0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = sub_23B963450();
    v8 = sub_23B96035C(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_23B95C000, v2, v3, "Performing transaction action for configuration %s", v4, 0xCu);
    sub_23B960904(v5);
    MEMORY[0x23EEB15F0](v5, -1, -1);
    MEMORY[0x23EEB15F0](v4, -1, -1);
  }

  v12 = (*(v0[3] + 8) + **(v0[3] + 8));
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_23B96200C;
  v10 = v0[4];

  return v12(v10);
}

uint64_t sub_23B96200C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23B96212C, v3, v2);
}

uint64_t sub_23B96212C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B962190(uint64_t a1, uint64_t a2)
{
  sub_23B95D7B8(&qword_27E195ED8, &qword_23B963DB8);
  MEMORY[0x28223BE20]();
  v4 = &v16 - v3;
  if (qword_27E195E60 != -1)
  {
    swift_once();
  }

  v5 = sub_23B963540();
  sub_23B95D910(v5, qword_27E195EF8);

  v6 = sub_23B963520();
  v7 = sub_23B9636B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = sub_23B963450();
    v12 = sub_23B96035C(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_23B95C000, v6, v7, "Invalidating configuration due to transaction task cancellation for configuration %s", v8, 0xCu);
    sub_23B960904(v9);
    MEMORY[0x23EEB15F0](v9, -1, -1);
    MEMORY[0x23EEB15F0](v8, -1, -1);
  }

  v13 = sub_23B963690();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;

  sub_23B962784(0, 0, v4, &unk_23B963DC8, v14);
}

uint64_t sub_23B9623FC()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_23B962490;

  return sub_23B95DCDC();
}

uint64_t sub_23B962490()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B9625C4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23B9625C4()
{
  v15 = v0;
  if (qword_27E195E60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_23B963540();
  sub_23B95D910(v2, qword_27E195EF8);
  MEMORY[0x23EEB14F0](v1);
  v3 = sub_23B963520();
  v4 = sub_23B9636C0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 64);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_23B963710();
    v11 = sub_23B96035C(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_23B95C000, v3, v4, "Error %s found when invalidating configuration due to transaction task cancellation", v7, 0xCu);
    sub_23B960904(v8);
    MEMORY[0x23EEB15F0](v8, -1, -1);
    MEMORY[0x23EEB15F0](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23B962784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23B95D7B8(&qword_27E195ED8, &qword_23B963DB8);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_23B963140(a3, v24 - v9, &qword_27E195ED8, &qword_23B963DB8);
  v11 = sub_23B963690();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23B9631A8(v10, &qword_27E195ED8, &qword_23B963DB8);
  }

  else
  {
    sub_23B963680();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23B963640();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23B963620() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_23B9631A8(a3, &qword_27E195ED8, &qword_23B963DB8);

      return v22;
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

  sub_23B9631A8(a3, &qword_27E195ED8, &qword_23B963DB8);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23B962AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v17 = *v2;
  v18 = v9;
  v19 = v7;
  v20 = v8;
  v21 = *(v2 + 48);
  v10 = swift_allocObject();
  *(v10 + 16) = v17;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  v11 = v2[5];
  *(v10 + 48) = v9;
  *(v10 + 56) = v11;
  *(v10 + 64) = *(v2 + 48);
  v12 = (a2 + *(sub_23B95D7B8(&qword_27E195EA0, &qword_23B963D68) + 36));
  v13 = sub_23B95D7B8(&qword_27E195EA8, &qword_23B963D70);
  sub_23B963140(&v17, v16, &qword_27E195EB0, &unk_23B963D78);

  sub_23B963140(&v19, v16, &qword_27E195E68, &qword_23B963A90);
  sub_23B963140(&v18, v16, &qword_27E195EB8, &qword_23B963D88);
  sub_23B963140(&v20, v16, &qword_27E195EC0, &qword_23B963D90);
  sub_23B963670();
  *(v12 + *(v13 + 40)) = v17;
  *v12 = &unk_23B963D60;
  v12[1] = v10;
  v14 = sub_23B95D7B8(&qword_27E195EC8, &qword_23B963D98);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  return sub_23B963140(&v17, v16, &qword_27E195EB0, &unk_23B963D78);
}

uint64_t sub_23B962CA4()
{

  sub_23B962D00(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

void sub_23B962D00(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_23B962D0C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23B960D64;

  return sub_23B9613A0(v0 + 16);
}

uint64_t sub_23B962DA0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23B962E98;

  return v6(a1);
}

uint64_t sub_23B962E98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B962F90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23B960D64;

  return sub_23B961D34(a1, v4, v5, v6);
}

uint64_t sub_23B96304C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B96308C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23B9612B0;

  return sub_23B9623DC(a1, v4, v5, v6);
}

uint64_t sub_23B963140(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23B95D7B8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B9631A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_23B95D7B8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B963208(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B9612B0;

  return sub_23B962DA0(a1, v4);
}

uint64_t sub_23B9632C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_23B9632FC()
{
  result = qword_27E195EE0;
  if (!qword_27E195EE0)
  {
    sub_23B9633BC(&qword_27E195EA0, &qword_23B963D68);
    sub_23B963404(&qword_27E195EE8, &qword_27E195EC8, &qword_23B963D98, MEMORY[0x282211060]);
    sub_23B963404(&qword_27E195EF0, &qword_27E195EA8, &qword_23B963D70, MEMORY[0x28220EA78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E195EE0);
  }

  return result;
}

uint64_t sub_23B9633BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23B963404(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_23B9633BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}