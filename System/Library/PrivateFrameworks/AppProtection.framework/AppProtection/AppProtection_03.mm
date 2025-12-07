uint64_t sub_185B0CF30(id a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void *a6, uint64_t (*a7)(void, void))
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v37 = HIDWORD(a2);
  v38 = HIDWORD(a3);
  v39 = HIDWORD(a4);
  v40 = HIDWORD(a5);
  if (a1)
  {
    v14 = a1;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v15 = sub_185B67B8C();
    __swift_project_value_buffer(v15, qword_1ED6F5130);
    v16 = a1;
    v17 = a6;
    v18 = sub_185B67B6C();
    v19 = sub_185B6808C();

    if (os_log_type_enabled(v18, v19))
    {
      v35 = a7;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 67109634;
      atoken.val[0] = v12;
      atoken.val[1] = v37;
      atoken.val[2] = v11;
      atoken.val[3] = v38;
      atoken.val[4] = v10;
      atoken.val[5] = v39;
      atoken.val[6] = v9;
      atoken.val[7] = v40;
      *(v20 + 4) = audit_token_to_pid(&atoken);
      *(v20 + 8) = 2112;
      *(v20 + 10) = v17;
      *v21 = v17;
      *(v20 + 18) = 2112;
      v22 = a1;
      v23 = v17;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 20) = v24;
      v21[1] = v24;
      _os_log_impl(&dword_185AC1000, v18, v19, "could not mark %d as accessing %@: %@", v20, 0x1Cu);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CC820, &unk_185B6B2A0);
      swift_arrayDestroy();
      MEMORY[0x1865FE2F0](v21, -1, -1);
      v25 = v20;
      a7 = v35;
      MEMORY[0x1865FE2F0](v25, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v26 = sub_185B67B8C();
    __swift_project_value_buffer(v26, qword_1ED6F5130);
    v27 = a6;
    v28 = sub_185B67B6C();
    v29 = sub_185B680AC();

    if (os_log_type_enabled(v28, v29))
    {
      v36 = a7;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 67109378;
      atoken.val[0] = v12;
      atoken.val[1] = v37;
      atoken.val[2] = v11;
      atoken.val[3] = v38;
      atoken.val[4] = v10;
      atoken.val[5] = v39;
      atoken.val[6] = v9;
      atoken.val[7] = v40;
      *(v30 + 4) = audit_token_to_pid(&atoken);
      *(v30 + 8) = 2112;
      *(v30 + 10) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_185AC1000, v28, v29, "notified %d as accessing %@", v30, 0x12u);
      sub_185AC3F6C(v31);
      MEMORY[0x1865FE2F0](v31, -1, -1);
      v33 = v30;
      a7 = v36;
      MEMORY[0x1865FE2F0](v33, -1, -1);
    }
  }

  return a7(a1 == 0, a1);
}

void sub_185B0D2AC(void (*a1)(id, void))
{
  sub_185ADF590(0, &qword_1EA8CC020, 0x1E696AD98);
  v2 = sub_185B6825C();
  a1(v2, 0);
}

void sub_185B0D434(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v18 = sub_185B126F4;
  v19 = v8;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_185B6657C;
  v17 = &block_descriptor_97_0;
  v9 = _Block_copy(&v14);

  v10 = APGetAsyncGuardProxy(v9);
  _Block_release(v9);
  v11 = [a4 effectiveBundleIdentifier];
  if (!v11)
  {
    sub_185B67E4C();
    v11 = sub_185B67E1C();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v18 = sub_185B12514;
  v19 = v12;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_185B2AF84;
  v17 = &block_descriptor_103;
  v13 = _Block_copy(&v14);

  [v10 authenticateForBundle:v11 interfacePresentationTarget:a1 completion:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

void sub_185B0D648(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;
}

uint64_t sub_185B0D6C0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  return 1;
}

void sub_185B0D760(id a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void *a6, uint64_t a7)
{
  v7 = a7;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v44 = HIDWORD(a2);
  v45 = HIDWORD(a3);
  v14 = HIDWORD(a4);
  v15 = HIDWORD(a5);
  if (a1)
  {
    v39 = HIDWORD(a4);
    v40 = HIDWORD(a5);
    v16 = a1;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v17 = sub_185B67B8C();
    __swift_project_value_buffer(v17, qword_1ED6F5130);
    v18 = a1;
    v19 = a6;
    v20 = sub_185B67B6C();
    v21 = sub_185B6808C();

    if (os_log_type_enabled(v20, v21))
    {
      v42 = v7;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 67109634;
      atoken.val[0] = v12;
      atoken.val[1] = v44;
      atoken.val[2] = v11;
      atoken.val[3] = v45;
      atoken.val[4] = v10;
      atoken.val[5] = v39;
      atoken.val[6] = v9;
      atoken.val[7] = v40;
      *(v22 + 4) = audit_token_to_pid(&atoken);
      *(v22 + 8) = 2112;
      *(v22 + 10) = v19;
      *v23 = v19;
      *(v22 + 18) = 2112;
      v24 = a1;
      v25 = v19;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 20) = v26;
      v23[1] = v26;
      _os_log_impl(&dword_185AC1000, v20, v21, "could not mark %d as accessing %@: %@", v22, 0x1Cu);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CC820, &unk_185B6B2A0);
      swift_arrayDestroy();
      MEMORY[0x1865FE2F0](v23, -1, -1);
      v27 = v22;
      v7 = v42;
      MEMORY[0x1865FE2F0](v27, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v28 = sub_185B67B8C();
    __swift_project_value_buffer(v28, qword_1ED6F5130);
    v29 = a6;
    v30 = sub_185B67B6C();
    v31 = sub_185B680AC();

    if (os_log_type_enabled(v30, v31))
    {
      v41 = v15;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v14;
      v35 = v33;
      *v32 = 67109378;
      atoken.val[0] = v12;
      atoken.val[1] = v44;
      atoken.val[2] = v11;
      atoken.val[3] = v45;
      atoken.val[4] = v10;
      atoken.val[5] = v34;
      atoken.val[6] = v9;
      atoken.val[7] = v41;
      *(v32 + 4) = audit_token_to_pid(&atoken);
      *(v32 + 8) = 2112;
      *(v32 + 10) = v29;
      *v35 = v29;
      v36 = v29;
      _os_log_impl(&dword_185AC1000, v30, v31, "marked %d as accessing %@", v32, 0x12u);
      sub_185AC3F6C(v35);
      MEMORY[0x1865FE2F0](v35, -1, -1);
      MEMORY[0x1865FE2F0](v32, -1, -1);
    }

    v7 = a7;
  }

  swift_beginAccess();
  v37 = *(v7 + 16);
  *(v7 + 16) = a1;
  v38 = a1;
}

id sub_185B0DC1C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_185B0DC70(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a2;
  v6 = a2;
}

uint64_t sub_185B0DE6C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_185B0DF30(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_185B67E4C();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  a7(v11, v13, a6, v14);
}

void sub_185B0DFEC(uint64_t a1, uint64_t (*a2)(), uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v14 = sub_185B0FA08;
  v15 = v5;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_185B6657C;
  v13 = &block_descriptor_10;
  v6 = _Block_copy(&v10);

  v7 = APGetAsyncGuardProxy(v6);
  _Block_release(v6);
  v8 = sub_185B67ABC();
  v14 = a2;
  v15 = a3;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_185B2AF84;
  v13 = &block_descriptor_16_1;
  v9 = _Block_copy(&v10);

  [v7 endTransactionWithUUID:v8 completion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

void sub_185B0E174(void *a1, uint64_t a2)
{
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  if (a1)
  {
    v11 = a1;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v12 = sub_185B67B8C();
    __swift_project_value_buffer(v12, qword_1ED6F5130);
    (*(v5 + 16))(v8, a2, v4);
    v13 = a1;
    v14 = sub_185B67B6C();
    v15 = sub_185B6808C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v16 = 136315394;
      sub_185ACA36C(&qword_1ED6F4640, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v18 = sub_185B6856C();
      v20 = v19;
      (*(v5 + 8))(v8, v4);
      v21 = sub_185ACB2C4(v18, v20, &v35);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2112;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v23;
      *v17 = v23;
      _os_log_impl(&dword_185AC1000, v14, v15, "could not invalidate assertion %s: %@", v16, 0x16u);
      sub_185AC3F6C(v17);
      MEMORY[0x1865FE2F0](v17, -1, -1);
      v24 = v34;
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x1865FE2F0](v24, -1, -1);
      MEMORY[0x1865FE2F0](v16, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v25 = sub_185B67B8C();
    __swift_project_value_buffer(v25, qword_1ED6F5130);
    (*(v5 + 16))(v10, a2, v4);
    v26 = sub_185B67B6C();
    v27 = sub_185B680AC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136315138;
      sub_185ACA36C(&qword_1ED6F4640, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v30 = sub_185B6856C();
      v32 = v31;
      (*(v5 + 8))(v10, v4);
      v33 = sub_185ACB2C4(v30, v32, &v35);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_185AC1000, v26, v27, "invalidated assertion %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x1865FE2F0](v29, -1, -1);
      MEMORY[0x1865FE2F0](v28, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }
}

void sub_185B0E6C8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_185B0E888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_185B6791C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_185B0E8F8(void *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_185B67AFC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v14 = sub_185B67B8C();
    __swift_project_value_buffer(v14, qword_1ED6F5130);
    (*(v10 + 16))(v12, a2, v9);
    v15 = a1;
    v16 = sub_185B67B6C();
    v17 = sub_185B6808C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v42 = a3;
      v19 = v18;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43 = v41;
      *v19 = 136315394;
      sub_185ACA36C(&qword_1ED6F4640, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v20 = sub_185B6856C();
      v22 = v21;
      (*(v10 + 8))(v12, v9);
      v23 = sub_185ACB2C4(v20, v22, &v43);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2112;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v25;
      v26 = v40;
      *v40 = v25;
      _os_log_impl(&dword_185AC1000, v16, v17, "failed to acquire assertion %s: %@", v19, 0x16u);
      sub_185AC3F6C(v26);
      MEMORY[0x1865FE2F0](v26, -1, -1);
      v27 = v41;
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x1865FE2F0](v27, -1, -1);
      v28 = v19;
      a3 = v42;
      MEMORY[0x1865FE2F0](v28, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }

    v39 = a1;
    (a3)(0, a1);
  }

  else
  {
    v29 = sub_185B67ABC();
    v30 = [objc_allocWithZone(APSubjectAccessAssertion) initWithSubject:a5 uuid:v29];

    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v31 = sub_185B67B8C();
    __swift_project_value_buffer(v31, qword_1ED6F5130);
    v32 = v30;
    v33 = sub_185B67B6C();
    v34 = sub_185B680AC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&dword_185AC1000, v33, v34, "acquired assertion %@", v35, 0xCu);
      sub_185AC3F6C(v36);
      MEMORY[0x1865FE2F0](v36, -1, -1);
      MEMORY[0x1865FE2F0](v35, -1, -1);
    }

    v42 = v32;
    (a3)(v32, 0);

    v38 = v42;
  }
}

id sub_185B0EE68()
{
  v1 = v0;
  v2 = sub_185B67AFC();
  v40 = *(v2 - 8);
  v3 = v40[8];
  v4 = MEMORY[0x1EEE9AC00](v2);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v35 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - v11;
  v13 = *(**&v0[OBJC_IVAR___APSubjectAccessAssertion_invalidated] + 136);

  LOBYTE(v13) = atomic_load_explicit(v13(v14), memory_order_acquire);

  if ((v13 & 1) == 0)
  {
    v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = v2;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v15 = sub_185B67B8C();
    __swift_project_value_buffer(v15, qword_1ED6F5130);
    v38 = v0;
    v16 = v0;
    v17 = sub_185B67B6C();
    v18 = sub_185B6809C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_185AC1000, v17, v18, "deallocating valid assertion %@!", v19, 0xCu);
      sub_185AC3F6C(v20);
      MEMORY[0x1865FE2F0](v20, -1, -1);
      MEMORY[0x1865FE2F0](v19, -1, -1);
    }

    v39 = v12;
    sub_185B67ADC();
    v22 = v40;
    v23 = v40[2];
    v24 = v12;
    v25 = v37;
    v23(v10, v24, v37);
    v23(v7, v10, v25);
    v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v27 = swift_allocObject();
    v35 = v7;
    v28 = v22[4];
    v28(v27 + v26, v10, v25);
    v29 = v36;
    v23(v36, v39, v25);
    v30 = swift_allocObject();
    v28(v30 + v26, v29, v25);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = sub_185B1270C;
    v31[4] = v27;
    v31[5] = sub_185B126FC;
    v31[6] = v30;

    v32 = v35;
    sub_185B0DFEC(v35, sub_185B12700, v31);

    v33 = v40[1];
    v33(v32, v25);
    v33(v39, v25);
    v1 = v38;
  }

  v41.receiver = v1;
  v41.super_class = APSubjectAccessAssertion;
  return objc_msgSendSuper2(&v41, sel_dealloc);
}

unint64_t APSubjectAccessAssertion.description.getter()
{
  v1 = v0;
  sub_185B6836C();

  v2 = [*(v0 + OBJC_IVAR___APSubjectAccessAssertion_subject) description];
  v3 = sub_185B67E4C();
  v5 = v4;

  MEMORY[0x1865FCF60](v3, v5);

  MEMORY[0x1865FCF60](0x203A6469757520, 0xE700000000000000);
  v6 = [*(v1 + OBJC_IVAR___APSubjectAccessAssertion_uuid) description];
  v7 = sub_185B67E4C();
  v9 = v8;

  MEMORY[0x1865FCF60](v7, v9);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  return 0xD000000000000022;
}

uint64_t sub_185B0F4C4()
{
  v44 = sub_185B67AFC();
  v1 = *(v44 - 8);
  v2 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v37 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v37 - v8;
  v42 = v10;
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v37 - v11;
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v13 = sub_185B67B8C();
  __swift_project_value_buffer(v13, qword_1ED6F5130);
  v14 = v0;
  v15 = sub_185B67B6C();
  v16 = sub_185B680AC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_185AC1000, v15, v16, "invalidating %@", v17, 0xCu);
    sub_185AC3F6C(v18);
    MEMORY[0x1865FE2F0](v18, -1, -1);
    MEMORY[0x1865FE2F0](v17, -1, -1);
  }

  sub_185B67ADC();
  v20 = v1;
  v21 = *(v1 + 16);
  v22 = v44;
  v21(v9, v12, v44);
  v21(v6, v9, v22);
  v23 = *(v20 + 80);
  v39 = v12;
  v40 = v20;
  v24 = (v23 + 16) & ~v23;
  v37 = swift_allocObject();
  v38 = v6;
  v41 = v14;
  v25 = *(v20 + 32);
  v26 = v44;
  v25(v37 + v24, v9, v44);
  v27 = v43;
  v21(v43, v12, v26);
  v28 = swift_allocObject();
  v29 = v28 + v24;
  v30 = v26;
  v25(v29, v27, v26);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = sub_185B0F9FC;
  v31[4] = v37;
  v31[5] = sub_185B0FA00;
  v31[6] = v28;

  v32 = v38;
  sub_185B0DFEC(v38, sub_185B0FA04, v31);

  v33 = *(v40 + 8);
  v33(v32, v30);
  v33(v39, v30);
  v34 = *(**&v41[OBJC_IVAR___APSubjectAccessAssertion_invalidated] + 136);

  atomic_store(1u, v34(v35));
}

void __swiftcall APSubjectAccessAssertion.init()(APSubjectAccessAssertion *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_185B0FA30(uint64_t (*a1)(), uint64_t a2)
{
  v5 = *(sub_185B67AFC() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_185B0DFEC(v6, a1, a2);
}

uint64_t objectdestroyTm()
{
  v1 = sub_185B67AFC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_185B0FB38(void *a1)
{
  v3 = *(sub_185B67AFC() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_185B0E174(a1, v4);
}

uint64_t objectdestroy_9Tm()
{

  return swift_deallocObject();
}

void sub_185B0FBE8(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_185B67C9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_185B67CDC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  _Block_copy(a2);
  if ([a1 shieldable])
  {
    if ([a1 isLocked])
    {
      v13 = swift_allocObject();
      *(v13 + 16) = sub_185ACA0F0;
      *(v13 + 24) = v12;
      v31 = sub_185B126F4;
      v32 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v29 = sub_185B6657C;
      v30 = &block_descriptor_258;
      v14 = _Block_copy(&aBlock);

      v15 = APGetAsyncGuardProxy(v14);
      _Block_release(v14);
      v16 = [a1 effectiveBundleIdentifier];
      if (!v16)
      {
        sub_185B67E4C();
        v16 = sub_185B67E1C();
      }

      v17 = swift_allocObject();
      *(v17 + 16) = sub_185ACA0F0;
      *(v17 + 24) = v12;
      v31 = sub_185B12714;
      v32 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v29 = sub_185B2AF84;
      v30 = &block_descriptor_264;
      v18 = _Block_copy(&aBlock);

      [v15 initiateAuthenticationWithShieldingForBundle:v16 completion:v18];
      _Block_release(v18);

      swift_unknownObjectRelease();
    }

    else
    {
      v24 = v9;
      v25 = v5;
      if (qword_1EA8CC098 != -1)
      {
        swift_once();
      }

      v23 = qword_1EA8D2348;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_185ACA0F0;
      *(v21 + 24) = v12;
      v31 = sub_185ACA070;
      v32 = v21;
      aBlock = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v29 = sub_185ACA0E8;
      v30 = &block_descriptor_252;
      v22 = _Block_copy(&aBlock);

      sub_185B67CBC();
      v26 = MEMORY[0x1E69E7CC0];
      sub_185ACA36C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
      sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
      sub_185B682CC();
      MEMORY[0x1865FD170](0, v11, v7, v22);
      _Block_release(v22);
      (*(v25 + 8))(v7, v4);
      (*(v24 + 8))(v11, v8);
    }
  }

  else
  {
    v19 = sub_185AD0148(1uLL, 0, 0, 62, 0xD000000000000034, 0x8000000185B764E0);
    v25 = sub_185B6791C();
    a2[2](a2, 0, v25);

    v20 = v25;
  }
}

void sub_185B101A8(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a2[1];
  v20 = *a2;
  v21 = v8;
  v9 = sub_185B67C9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_185B67CDC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isLocked])
  {
    if (a2[2])
    {
      p_aBlock = 0;
    }

    else
    {
      aBlock = v20;
      v24 = v21;
      p_aBlock = &aBlock;
    }

    sub_185B0D434(p_aBlock, a3, a4, a1);
  }

  else
  {
    *&v20 = v13;
    *&v21 = v10;
    if (qword_1EA8CC098 != -1)
    {
      swift_once();
    }

    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    v25 = sub_185ACA070;
    v26 = v18;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v24 = sub_185ACA0E8;
    *(&v24 + 1) = &block_descriptor_91;
    v19 = _Block_copy(&aBlock);

    sub_185B67CBC();
    v22 = MEMORY[0x1E69E7CC0];
    sub_185ACA36C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v16, v12, v19);
    _Block_release(v19);
    (*(v21 + 8))(v12, v9);
    (*(v14 + 8))(v16, v20);
  }
}

void sub_185B1053C(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v6 = sub_185B67C9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_185B67CDC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isLocked])
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v29 = sub_185B126F8;
    v30 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_185B6657C;
    v28 = &block_descriptor_200;
    v15 = _Block_copy(&aBlock);

    v16 = APGetAsyncGuardProxy(v15);
    _Block_release(v15);
    v17 = [a1 effectiveBundleIdentifier];
    if (!v17)
    {
      sub_185B67E4C();
      v17 = sub_185B67E1C();
    }

    v29 = a2;
    v30 = a3;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_185B0E6C8;
    v28 = &block_descriptor_203;
    v18 = _Block_copy(&aBlock);

    [v16 getIsChallengeCurrentlyRequiredForBundle:v17 completion:v18];
    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = v10;
    v23 = v7;
    if (qword_1EA8CC098 != -1)
    {
      swift_once();
    }

    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    v29 = sub_185B125AC;
    v30 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_185ACA0E8;
    v28 = &block_descriptor_194;
    v20 = _Block_copy(&aBlock);

    sub_185B67CBC();
    v24 = MEMORY[0x1E69E7CC0];
    sub_185ACA36C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v13, v9, v20);
    _Block_release(v20);
    (*(v23 + 8))(v9, v6);
    (*(v11 + 8))(v13, v22);
  }
}

void sub_185B109C0(uint64_t (*a1)(uint64_t a1), uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v13 = sub_185B126F4;
  v14 = v4;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_185B6657C;
  v12 = &block_descriptor_182;
  v5 = _Block_copy(&v9);

  v6 = APGetAsyncGuardProxy(v5);
  _Block_release(v5);
  v7 = sub_185B67E1C();
  v13 = a1;
  v14 = a2;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_185AC53EC;
  v12 = &block_descriptor_185;
  v8 = _Block_copy(&v9);

  [v6 authenticateUnconditionallyWithReason:v7 completion:v8];
  _Block_release(v8);
  swift_unknownObjectRelease();
}

void sub_185B10B44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  v15 = sub_185B126F4;
  v16 = v6;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_185B6657C;
  v14 = &block_descriptor_169;
  v7 = _Block_copy(&v11);

  v8 = APGetAsyncGuardProxy(v7);
  _Block_release(v7);
  v9 = sub_185B67E1C();
  v15 = a3;
  v16 = a4;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_185AC53EC;
  v14 = &block_descriptor_172;
  v10 = _Block_copy(&v11);

  [v8 authenticateUnconditionallyWithReason:v9 completion:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();
}

id sub_185B10CD8(void *a1)
{
  if ([a1 shieldable])
  {
    result = [a1 isLocked];
    if (result)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v14 = sub_185B12704;
      v15 = v3;
      v10 = MEMORY[0x1E69E9820];
      v11 = 1107296256;
      v12 = sub_185B6657C;
      v13 = &block_descriptor_140;
      v4 = _Block_copy(&v10);

      v5 = APGetSyncGuardProxy(v4);
      _Block_release(v4);
      v6 = [a1 effectiveBundleIdentifier];
      if (!v6)
      {
        sub_185B67E4C();
        v6 = sub_185B67E1C();
      }

      v14 = sub_185B12708;
      v15 = v3;
      v10 = MEMORY[0x1E69E9820];
      v11 = 1107296256;
      v12 = sub_185B2AF84;
      v13 = &block_descriptor_143;
      v7 = _Block_copy(&v10);

      [v5 initiateAuthenticationWithShieldingForBundle:v6 completion:v7];
      _Block_release(v7);
      swift_unknownObjectRelease();

      swift_beginAccess();
      v8 = *(v3 + 16);
      if (v8)
      {
        swift_willThrow();
        v9 = v8;
      }
    }
  }

  else
  {
    sub_185AD0148(1uLL, 0, 0, 175, 0xD00000000000002DLL, 0x8000000185B76410);
    return swift_willThrow();
  }

  return result;
}

id sub_185B10F4C(void *a1)
{
  result = [a1 isLocked];
  if (result)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = 0;
    v14 = sub_185B12574;
    v15 = v3;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_185B6657C;
    v13 = &block_descriptor_133;
    v4 = _Block_copy(&v10);

    v5 = APGetSyncGuardProxy(v4);
    _Block_release(v4);
    v6 = [a1 effectiveBundleIdentifier];
    if (!v6)
    {
      sub_185B67E4C();
      v6 = sub_185B67E1C();
    }

    v14 = sub_185B12590;
    v15 = v3;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_185B2AF84;
    v13 = &block_descriptor_136;
    v7 = _Block_copy(&v10);

    [v5 authenticateForBundle:v6 completion:v7];
    _Block_release(v7);
    swift_unknownObjectRelease();

    swift_beginAccess();
    v8 = *(v3 + 16);
    if (v8)
    {
      swift_willThrow();
      v9 = v8;
    }
  }

  return result;
}

id sub_185B11170(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v52 = *MEMORY[0x1E69E9840];
  if ([a1 shieldable])
  {
    result = [a1 isLocked];
    if (result)
    {
      v41 = a4;
      v39 = a6;
      v13 = HIDWORD(a4);
      v14 = HIDWORD(a5);
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v15 = sub_185B67B8C();
      __swift_project_value_buffer(v15, qword_1ED6F5130);
      v16 = a1;
      v17 = sub_185B67B6C();
      v18 = sub_185B680AC();

      v40 = HIDWORD(a5);
      if (os_log_type_enabled(v17, v18))
      {
        v37 = v13;
        v13 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v13 = 67109378;
        *atoken.val = a2;
        *&atoken.val[2] = a3;
        atoken.val[4] = v41;
        atoken.val[5] = v37;
        *&atoken.val[6] = a5;
        *(v13 + 4) = audit_token_to_pid(&atoken);
        *(v13 + 8) = 2112;
        *(v13 + 10) = v16;
        *v19 = v16;
        v20 = v16;
        v21 = v18;
        LODWORD(v22) = HIDWORD(a3);
        _os_log_impl(&dword_185AC1000, v17, v21, "marking %d as accessing %@", v13, 0x12u);
        sub_185AC3F6C(v19);
        v23 = v19;
        v14 = HIDWORD(a5);
        MEMORY[0x1865FE2F0](v23, -1, -1);
        v24 = v13;
        LODWORD(v13) = v37;
        MEMORY[0x1865FE2F0](v24, -1, -1);
      }

      else
      {

        v22 = HIDWORD(a3);
      }

      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      v42 = a2;
      v43 = a3;
      v44 = v22;
      v45 = v41;
      v46 = v13;
      v47 = a5;
      v48 = v14;
      v50 = sub_185B12704;
      v51 = v25;
      *atoken.val = MEMORY[0x1E69E9820];
      *&atoken.val[2] = 1107296256;
      *&atoken.val[4] = sub_185B6657C;
      *&atoken.val[6] = &block_descriptor_123;
      v26 = _Block_copy(&atoken);

      v38 = APGetSyncGuardProxy(v26);
      _Block_release(v26);
      v27 = [v16 effectiveBundleIdentifier];
      v28 = v16;
      v29 = a5;
      v30 = v13;
      v31 = v27;
      if (!v27)
      {
        sub_185B67E4C();
        v31 = sub_185B67E1C();
      }

      v32 = swift_allocObject();
      *(v32 + 16) = a2;
      *(v32 + 24) = a3;
      *(v32 + 28) = v22;
      *(v32 + 32) = v41;
      *(v32 + 36) = v30;
      *(v32 + 40) = v29;
      *(v32 + 44) = v40;
      *(v32 + 48) = v28;
      *(v32 + 56) = v25;
      v50 = sub_185B12564;
      v51 = v32;
      *atoken.val = MEMORY[0x1E69E9820];
      *&atoken.val[2] = 1107296256;
      *&atoken.val[4] = sub_185B2AF84;
      *&atoken.val[6] = &block_descriptor_129;
      v33 = _Block_copy(&atoken);
      v34 = v28;

      [v38 initiateAuthenticationWithShieldingForBundle:v31 onBehalfOfProcessWithAuditToken:&v42 accessGrantReason:v39 completion:v33];
      _Block_release(v33);
      swift_unknownObjectRelease();

      swift_beginAccess();
      v35 = *(v25 + 16);
      if (v35)
      {
        swift_willThrow();
        v36 = v35;
      }
    }
  }

  else
  {
    sub_185AD0148(1uLL, 0, 0, 205, 0xD00000000000004ALL, 0x8000000185B763C0);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_185B11624()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v11 = sub_185B12704;
  v12 = v0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_185B6657C;
  v10 = &block_descriptor_116;
  v1 = _Block_copy(&v7);

  v2 = APGetSyncGuardProxy(v1);
  _Block_release(v1);
  v11 = sub_185B12710;
  v12 = v0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_185AC53EC;
  v10 = &block_descriptor_119;
  v3 = _Block_copy(&v7);

  [v2 authenticateUnconditionallyWithReason:0 completion:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v4 = *(v0 + 16);
  if (v4)
  {
    swift_willThrow();
    v5 = v4;
  }
}

uint64_t sub_185B117F8(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v14 = sub_185B12704;
  v15 = v2;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_185B6657C;
  v13 = &block_descriptor_109;
  v3 = _Block_copy(&v10);

  v4 = APGetSyncGuardProxy(v3);
  _Block_release(v3);
  v5 = sub_185B67E1C();
  v14 = sub_185B12548;
  v15 = v2;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_185AC53EC;
  v13 = &block_descriptor_112;
  v6 = _Block_copy(&v10);

  [v4 authenticateUnconditionallyWithReason:v5 completion:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v7 = *(v2 + 16);
  if (v7)
  {
    swift_willThrow();
    v8 = v7;
  }
}

uint64_t sub_185B119F0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v14 = sub_185AE7948;
  v15 = v4;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_185B6657C;
  v13 = &block_descriptor_75;
  v5 = _Block_copy(&v10);

  v6 = APGetAsyncGuardProxy(v5);
  _Block_release(v5);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v14 = sub_185B124D8;
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_185B2AF84;
  v13 = &block_descriptor_81;
  v8 = _Block_copy(&v10);

  [v6 abortOngoingAuthWithCompletion_];
  _Block_release(v8);
  return swift_unknownObjectRelease();
}

void sub_185B11B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  v16 = sub_185B126F4;
  v17 = v6;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_185B6657C;
  v15 = &block_descriptor_59;
  v7 = _Block_copy(&v12);

  v8 = APGetAsyncGuardProxy(v7);
  _Block_release(v7);
  v9 = sub_185B67E1C();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v16 = sub_185B12714;
  v17 = v10;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_185B2AF84;
  v15 = &block_descriptor_65;
  v11 = _Block_copy(&v12);

  [v8 noteAllScenesDismissedForBundleID:v9 completion:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();
}

uint64_t sub_185B11D40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unsigned int *a8)
{
  v70 = a8;
  v81 = a7;
  v71 = a5;
  v69 = a3;
  v68 = a2;
  v85[4] = *MEMORY[0x1E69E9840];
  v11 = sub_185B67AFC();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v75 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v62[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v62[-v18];
  sub_185B67AEC();
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v79 = a6;
  v20 = sub_185B67B8C();
  __swift_project_value_buffer(v20, qword_1ED6F5130);
  v21 = v12[2];
  v76 = v19;
  v74 = v12 + 2;
  v73 = v21;
  v21(v17, v19, v11);
  v22 = a1;
  v23 = sub_185B67B6C();
  v24 = sub_185B680AC();

  v25 = os_log_type_enabled(v23, v24);
  v77 = v11;
  v78 = v22;
  v80 = v12;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v67 = v13;
    v27 = v26;
    v28 = swift_slowAlloc();
    v64 = v28;
    v65 = swift_slowAlloc();
    v85[0] = v65;
    *v27 = 138413058;
    *(v27 + 4) = v22;
    *v28 = v22;
    *(v27 + 12) = 1024;
    v29 = v22;
    v30 = v68;
    v31 = v69;
    *atoken.val = v68;
    *&atoken.val[2] = v69;
    *&atoken.val[4] = a4;
    v66 = a4;
    v32 = v71;
    *&atoken.val[6] = v71;
    *(v27 + 14) = audit_token_to_pid(&atoken);
    *(v27 + 18) = 2048;
    v63 = v24;
    *(v27 + 20) = v79;
    *(v27 + 28) = 2080;
    sub_185ACA36C(&qword_1ED6F4640, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v33 = sub_185B6856C();
    v35 = v34;
    v36 = v17;
    v37 = v11;
    v38 = v70;
    v39 = v81;
    v72 = v80[1];
    v72(v36, v37);
    v40 = sub_185ACB2C4(v33, v35, v85);

    *(v27 + 30) = v40;
    _os_log_impl(&dword_185AC1000, v23, v63, "Acquiring access assertion for %@ on behalf of %d reason %ld uuid %s", v27, 0x26u);
    v41 = v64;
    sub_185AC3F6C(v64);
    MEMORY[0x1865FE2F0](v41, -1, -1);
    v42 = v65;
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
    MEMORY[0x1865FE2F0](v42, -1, -1);
    v43 = v27;
    v13 = v67;
    MEMORY[0x1865FE2F0](v43, -1, -1);

    v44 = v66;
    v45 = v78;
  }

  else
  {

    v72 = v12[1];
    v72(v17, v11);
    v45 = v22;
    v44 = a4;
    v32 = v71;
    v39 = v81;
    v31 = v69;
    v30 = v68;
    v38 = v70;
  }

  v85[0] = v30;
  v85[1] = v31;
  v85[2] = v44;
  v85[3] = v32;
  v46 = swift_allocObject();
  *(v46 + 16) = v39;
  *(v46 + 24) = v38;
  v83 = sub_185B06F74;
  v84 = v46;
  *atoken.val = MEMORY[0x1E69E9820];
  *&atoken.val[2] = 1107296256;
  v70 = &atoken.val[4];
  *&atoken.val[4] = sub_185B6657C;
  *&atoken.val[6] = &block_descriptor_37_2;
  v47 = _Block_copy(&atoken);

  v71 = APGetAsyncGuardProxy(v47);
  _Block_release(v47);
  v48 = [v45 effectiveBundleIdentifier];
  if (!v48)
  {
    sub_185B67E4C();
    v48 = sub_185B67E1C();
  }

  v49 = v76;
  v69 = sub_185B67ABC();
  v50 = v75;
  v51 = v77;
  v73(v75, v49, v77);
  v52 = v80;
  v53 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v54 = (v13 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  (v52[4])(v55 + v53, v50, v51);
  v56 = (v55 + v54);
  *v56 = v81;
  v56[1] = v38;
  v57 = v78;
  *(v55 + ((v54 + 23) & 0xFFFFFFFFFFFFFFF8)) = v78;
  v83 = sub_185B1242C;
  v84 = v55;
  *atoken.val = MEMORY[0x1E69E9820];
  *&atoken.val[2] = 1107296256;
  *&atoken.val[4] = sub_185B2AF84;
  *&atoken.val[6] = &block_descriptor_43;
  v58 = _Block_copy(&atoken);
  v59 = v57;

  v60 = v69;
  [v71 beginTransactionForAccessOfBundle:v48 onBehalfOfProcessWithAuditToken:v85 accessGrantReason:v79 transactionUUID:v69 completion:v58];
  _Block_release(v58);
  swift_unknownObjectRelease();

  return (v72)(v49, v51);
}

void sub_185B1242C(void *a1)
{
  v3 = *(sub_185B67AFC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  sub_185B0E8F8(a1, v1 + v4, v9, v10, v8);
}

id sub_185B12718()
{
  result = APGetReadServiceInterface();
  qword_1EA8D2328 = result;
  return result;
}

id sub_185B127F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_185B12898@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APReadService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection13APReadService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

uint64_t sub_185B12914(uint64_t a1)
{
  result = sub_185B12958(&qword_1EA8CBEA8, MEMORY[0x1E69E81B8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_185B12958(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for APReadClient();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_185B12998(uint64_t a1, uint64_t a2)
{
  LOBYTE(v26[0]) = 0;
  if (AppProtectionFeatures.enabled.getter())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection13APReadService_policy, v23);
      v4 = v24;
      v5 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v5 + 136))(v26, v4, v5);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      v6 = v27;
      v7 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v8 = (*(v7 + 40))(v6, v7);
      v9 = sub_185AE39B4(v8);

      v10 = *(a2 + 16);
      v11 = v9;
      v10(a2, v11, 0);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }

    else
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
      v22 = sub_185B6791C();
      (*(a2 + 16))(a2, 0, v22);
    }
  }

  else
  {
    v12 = *MEMORY[0x1E696A768];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_185B6BB60;
    *(inited + 32) = 0x656E694C5041;
    v14 = MEMORY[0x1E69E6530];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 40;
    v15 = MEMORY[0x1E69E6158];
    *(inited + 72) = v14;
    *(inited + 80) = 0x636E75465041;
    *(inited + 120) = v15;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 96) = 0xD000000000000022;
    *(inited + 104) = 0x8000000185B765C0;
    v16 = v12;
    sub_185AD038C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
    swift_arrayDestroy();
    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v18 = sub_185B67D7C();

    v19 = [v17 initWithDomain:v16 code:-4 userInfo:v18];

    v20 = sub_185B6791C();
    (*(a2 + 16))(a2, 0, v20);
  }
}

uint64_t sub_185B12CC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void *sub_185B12D28(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = sub_185B6791C();
  v7[0] = 0;
  v3 = [v1 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v7];

  v4 = v7[0];
  if (v3)
  {
    v5 = sub_185B67A5C();
  }

  else
  {
    v5 = v4;
    sub_185B6792C();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_185B12E1C()
{
  v1 = v0;
  v2 = *v0;
  empty = xpc_dictionary_create_empty();
  v4 = sub_185B67ECC();
  xpc_dictionary_set_int64(empty, (v4 + 32), 1);

  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v5 = sub_185B67B8C();
  __swift_project_value_buffer(v5, qword_1EA8D2278);

  v6 = sub_185B67B6C();
  v7 = sub_185B680AC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v1[2];

    _os_log_impl(&dword_185AC1000, v6, v7, "pinging %llu", v8, 0xCu);
    MEMORY[0x1865FE2F0](v8, -1, -1);
  }

  else
  {
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v2;
    v13[4] = sub_185B17C88;
    v13[5] = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_185B12CC8;
    v13[3] = &block_descriptor_111;
    v11 = _Block_copy(v13);
    swift_retain_n();

    xpc_event_publisher_fire_with_reply();
    _Block_release(v11);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_185B13100(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  if ((sub_185B16B70(a1, *(result + 16)) & 1) == 0)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v9 = sub_185B67B8C();
    __swift_project_value_buffer(v9, qword_1EA8D2278);

    v10 = sub_185B67B6C();
    v11 = sub_185B6808C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *(v4 + 16);

      v13 = "subscriber %llu bad pong shape, rejecting";
LABEL_23:
      _os_log_impl(&dword_185AC1000, v10, v11, v13, v12, 0xCu);
      MEMORY[0x1865FE2F0](v12, -1, -1);

      goto LABEL_25;
    }

LABEL_24:

LABEL_25:
    if (!swift_unknownObjectWeakLoadStrong())
    {
    }

    v20 = sub_185B67B6C();
    v21 = sub_185B680AC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = *(v4 + 16);

      _os_log_impl(&dword_185AC1000, v20, v21, "removing tracking for subscriber %llu as it failed to provide a firm handshake", v22, 0xCu);
      MEMORY[0x1865FE2F0](v22, -1, -1);
    }

    else
    {
    }

    v23 = *(v4 + 16);
    swift_beginAccess();
    sub_185B2EB98(0, v23);
    swift_endAccess();

    return swift_unknownObjectRelease();
  }

  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v5 = sub_185B67B8C();
  __swift_project_value_buffer(v5, qword_1EA8D2278);

  v6 = sub_185B67B6C();
  v7 = sub_185B680AC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v4 + 16);

    _os_log_impl(&dword_185AC1000, v6, v7, "pong from %llu", v8, 0xCu);
    MEMORY[0x1865FE2F0](v8, -1, -1);
  }

  else
  {
  }

  if ((sub_185B1672C(a1, *(v4 + 16)) & 1) == 0)
  {

    v10 = sub_185B67B6C();
    v11 = sub_185B6808C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *(v4 + 16);

      v13 = "subscriber %llu does not pass validation";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v14 = *(v4 + 40);
  if (v14)
  {
    *(v4 + 40) = 0;
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      do
      {
        v18 = *(v16 - 1);
        v19 = *v16;
        if (swift_unknownObjectWeakLoadStrong())
        {
          if (v18)
          {
            aBlock[4] = v18;
            aBlock[5] = v19;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_185B12CC8;
            aBlock[3] = &block_descriptor_114;
            v17 = _Block_copy(aBlock);
            sub_185B17C90(v18, v19);
            sub_185B17C90(v18, v19);
            sub_185B17C90(v18, v19);
            swift_unknownObjectRetain();

            xpc_event_publisher_fire_with_reply();
            swift_unknownObjectRelease();
            sub_185AE20B8(v18, v19);
            _Block_release(v17);
            swift_unknownObjectRelease();
            sub_185AE20B8(v18, v19);
          }

          else
          {
            xpc_event_publisher_fire();
            swift_unknownObjectRelease();
          }
        }

        v16 += 3;
        --v15;
      }

      while (v15);
    }

    else
    {
    }
  }

  else
  {
    result = sub_185B6842C();
    __break(1u);
  }

  return result;
}

uint64_t sub_185B1367C()
{
  sub_185AD3598(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_185B136E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_185B1375C(v6, a2, a3);
  }

  return result;
}

void sub_185B1375C(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v19 = sub_185B67B8C();
    __swift_project_value_buffer(v19, qword_1EA8D2278);
    oslog = sub_185B67B6C();
    v20 = sub_185B680AC();
    if (!os_log_type_enabled(oslog, v20))
    {
      goto LABEL_23;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "initial barrier on event stream.";
    v23 = v20;
    v24 = oslog;
    v25 = v21;
    v26 = 2;
LABEL_22:
    _os_log_impl(&dword_185AC1000, v24, v23, v22, v25, v26);
    MEMORY[0x1865FE2F0](v21, -1, -1);
LABEL_23:

    return;
  }

  v4 = v3;
  if (a1 != 1)
  {
    if (!a1)
    {
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v7 = sub_185B67B8C();
      __swift_project_value_buffer(v7, qword_1EA8D2278);
      swift_unknownObjectRetain();
      v8 = sub_185B67B6C();
      v9 = sub_185B680AC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v37[0] = v11;
        *v10 = 134218242;
        *(v10 + 4) = a2;
        *(v10 + 12) = 2080;
        if (a3)
        {
          v12 = MEMORY[0x1865FE580](a3);
          a3 = sub_185B67F1C();
          v14 = v13;
          free(v12);
        }

        else
        {
          v14 = 0;
        }

        v37[1] = a3;
        v37[2] = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD238, &qword_185B6D570);
        v30 = sub_185B67EBC();
        v32 = sub_185ACB2C4(v30, v31, v37);

        *(v10 + 14) = v32;
        _os_log_impl(&dword_185AC1000, v8, v9, "adding event subscriber with token %llu desc %s", v10, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        MEMORY[0x1865FE2F0](v11, -1, -1);
        MEMORY[0x1865FE2F0](v10, -1, -1);
      }

      type metadata accessor for APSystemAppXPCEventStreamClient();
      v33 = swift_allocObject();
      v33[4] = 0;
      swift_unknownObjectWeakInit();
      v34 = MEMORY[0x1E69E7CC0];
      v33[2] = a2;
      v33[4] = &off_1EF4696A8;
      v33[5] = v34;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37[0] = *(v4 + 32);
      *(v4 + 32) = 0x8000000000000000;
      sub_185B528A0(v33, a2, isUniquelyReferenced_nonNull_native);
      *(v4 + 32) = v37[0];
      swift_endAccess();
      sub_185B12E1C();

      return;
    }

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v28 = sub_185B67B8C();
    __swift_project_value_buffer(v28, qword_1EA8D2278);
    oslog = sub_185B67B6C();
    v29 = sub_185B6809C();
    if (!os_log_type_enabled(oslog, v29))
    {
      goto LABEL_23;
    }

    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = a1;
    v22 = "unknown action %u";
    v23 = v29;
    v24 = oslog;
    v25 = v21;
    v26 = 8;
    goto LABEL_22;
  }

  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v15 = sub_185B67B8C();
  __swift_project_value_buffer(v15, qword_1EA8D2278);
  v16 = sub_185B67B6C();
  v17 = sub_185B680AC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = a2;
    _os_log_impl(&dword_185AC1000, v16, v17, "removing subscriber with token %llu", v18, 0xCu);
    MEMORY[0x1865FE2F0](v18, -1, -1);
  }

  swift_beginAccess();
  sub_185B2EB98(0, a2);
  swift_endAccess();
}

uint64_t sub_185B13C4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  empty = xpc_dictionary_create_empty();
  v9 = sub_185B67ECC();
  xpc_dictionary_set_int64(empty, (v9 + 32), 2);

  v10 = sub_185B67ECC();
  v11 = sub_185B67ECC();
  xpc_dictionary_set_string(empty, (v10 + 32), (v11 + 32));

  v12 = sub_185B67ECC();
  xpc_dictionary_set_BOOL(empty, (v12 + 32), a3 & 1);

  sub_185B13EA8(empty, a4, a5);

  return swift_unknownObjectRelease();
}

uint64_t sub_185B13D70(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5)
{
  empty = xpc_dictionary_create_empty();
  v9 = sub_185B67ECC();
  xpc_dictionary_set_int64(empty, (v9 + 32), 3);

  v10 = sub_185B67ECC();
  v11 = sub_185B67ECC();
  xpc_dictionary_set_string(empty, (v10 + 32), (v11 + 32));

  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = sub_185B67ECC();
    xpc_dictionary_set_int64(empty, (v13 + 32), a3);

    sub_185B13EA8(empty, a4, a5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_185B13EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v43 = a2;
  v57 = a1;
  v45 = sub_185B67C9C();
  v50 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v48 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_185B67CDC();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = dispatch_group_create();
  swift_beginAccess();
  if (!*(*(v3 + 4) + 16))
  {
    v4 = v3;
    if (qword_1EA8CB718 != -1)
    {
LABEL_27:
      swift_once();
    }

    v9 = sub_185B67B8C();
    __swift_project_value_buffer(v9, qword_1EA8D2278);
    v10 = sub_185B67B6C();
    v11 = sub_185B6808C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_185AC1000, v10, v11, "System app event stream: no subscribers to send message to!", v12, 2u);
      MEMORY[0x1865FE2F0](v12, -1, -1);
    }

    v3 = v4;
  }

  v42[4] = v3;
  v13 = *(v3 + 4);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v51 = &v61;

  v19 = 0;
  v54 = xmmword_185B6BB70;
  v56 = v13 + 64;
  v53 = v7;
  v52 = v8;
  v55 = v13;
  while (v17)
  {
    v20 = v19;
LABEL_14:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = *(*(v13 + 56) + ((v20 << 9) | (8 * v21)));

    dispatch_group_enter(v8);
    v23 = swift_allocObject();
    *(v23 + 16) = v7;
    *(v23 + 24) = v8;
    v4 = *(v22 + 40);
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD210, &qword_185B6E8A0);
      inited = swift_initStackObject();
      *(inited + 32) = v57;
      v7 = inited + 32;
      *(inited + 16) = v54;
      *(inited + 40) = sub_185B17C40;
      *(inited + 48) = v23;
      v25 = *(v4 + 2);

      v26 = v8;

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v28 = *(v4 + 3) >> 1, v28 <= v25))
      {
        v4 = sub_185B3CB5C(isUniquelyReferenced_nonNull_native, v25 + 1, 1, v4);
        v28 = *(v4 + 3) >> 1;
      }

      v13 = v55;
      if (v28 <= *(v4 + 2))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      ++*(v4 + 2);
      *(v22 + 40) = v4;

      v19 = v20;
      v7 = v53;
      v8 = v52;
      v14 = v56;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v42[2] = *(v22 + 16);
        v30 = *(Strong + 16);
        v42[0] = *(Strong + 24);
        v42[1] = v30;
        v63 = sub_185B17C40;
        v64 = v23;
        aBlock = MEMORY[0x1E69E9820];
        v60 = 1107296256;
        v61 = sub_185B12CC8;
        v62 = &block_descriptor_96;
        v42[3] = Strong;
        v31 = _Block_copy(&aBlock);
        v4 = v8;
        swift_retain_n();

        v32 = v8;

        xpc_event_publisher_fire_with_reply();

        v33 = v31;
        v14 = v56;
        _Block_release(v33);

        swift_unknownObjectRelease();
      }

      else
      {

        v34 = v8;
      }

      v19 = v20;
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  v35 = swift_allocObject();
  v36 = v44;
  v35[2] = v43;
  v35[3] = v36;
  v35[4] = v7;
  v63 = sub_185B17DD0;
  v64 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_185ACA0E8;
  v62 = &block_descriptor_102;
  v37 = _Block_copy(&aBlock);

  v38 = v46;
  sub_185B67CBC();
  v58 = MEMORY[0x1E69E7CC0];
  sub_185AC72E0(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
  v39 = v48;
  v40 = v45;
  sub_185B682CC();
  sub_185B680CC();
  _Block_release(v37);

  (*(v50 + 8))(v39, v40);
  (*(v47 + 8))(v38, v49);
}

void sub_185B1466C(void *a1, uint64_t a2, NSObject *a3)
{
  length[20] = *MEMORY[0x1E69E9840];
  length[0] = 0;
  v6 = sub_185B67ECC();
  data = xpc_dictionary_get_data(a1, (v6 + 32), length);

  if (data)
  {
    v8 = sub_185AE35C4(data, length[0]);
    v10 = v9;
    sub_185ADF590(0, &qword_1EA8CD218, 0x1E696ACD0);
    sub_185ADF590(0, &unk_1EA8CD220, 0x1E696ABC0);
    v11 = sub_185B680BC();
    v23 = v11;
    if (v11)
    {
      sub_185AE2FC8(v8, v10);
    }

    else
    {
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v12 = sub_185B67B8C();
      __swift_project_value_buffer(v12, qword_1EA8D2278);
      v13 = sub_185B67B6C();
      v14 = sub_185B6809C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_185AC1000, v13, v14, "could not get error from data", v15, 2u);
        MEMORY[0x1865FE2F0](v15, -1, -1);
      }

      v16 = *MEMORY[0x1E696A250];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_185B6BB60;
      *(inited + 32) = 0x656E694C5041;
      v18 = MEMORY[0x1E69E6530];
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = 222;
      v19 = MEMORY[0x1E69E6158];
      *(inited + 72) = v18;
      *(inited + 80) = 0x636E75465041;
      *(inited + 120) = v19;
      *(inited + 88) = 0xE600000000000000;
      *(inited + 96) = 0xD00000000000001BLL;
      *(inited + 104) = 0x8000000185B767E0;
      v20 = v16;
      sub_185AD038C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
      swift_arrayDestroy();
      v21 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v22 = sub_185B67D7C();

      v23 = [v21 initWithDomain:v20 code:4864 userInfo:v22];
      sub_185AE2FC8(v8, v10);
    }

    swift_beginAccess();
    v24 = *(a2 + 16);
    *(a2 + 16) = v23;
  }

  dispatch_group_leave(a3);
}

uint64_t sub_185B149CC()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void sub_185B14A8C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = MEMORY[0x1865FE700](a1);
    if (v3 != sub_185B67BFC())
    {
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v4 = sub_185B67B8C();
      __swift_project_value_buffer(v4, qword_1ED6F5130);
      swift_unknownObjectRetain();
      v5 = sub_185B67B6C();
      v6 = sub_185B6809C();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_8;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33 = v8;
      *v7 = 136315138;
      v9 = MEMORY[0x1865FE580](a1);
      v10 = sub_185B67F1C();
      v12 = v11;
      free(v9);
      v13 = sub_185ACB2C4(v10, v12, &v33);

      *(v7 + 4) = v13;
      v14 = "non-dictionary on event stream %s";
LABEL_7:
      _os_log_impl(&dword_185AC1000, v5, v6, v14, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x1865FE2F0](v8, -1, -1);
      MEMORY[0x1865FE2F0](v7, -1, -1);
LABEL_8:

      return;
    }

    v15 = sub_185B67ECC();
    int64 = xpc_dictionary_get_int64(a1, (v15 + 32));

    if (int64 <= 1)
    {
      if (!int64)
      {
        if (qword_1ED6F4CB0 != -1)
        {
          swift_once();
        }

        v23 = sub_185B67B8C();
        __swift_project_value_buffer(v23, qword_1ED6F5130);
        swift_unknownObjectRetain();
        v24 = sub_185B67B6C();
        v25 = sub_185B680AC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v33 = v27;
          *v26 = 136315138;
          v28 = MEMORY[0x1865FE580](a1);
          v29 = sub_185B67F1C();
          v31 = v30;
          free(v28);
          v32 = sub_185ACB2C4(v29, v31, &v33);

          *(v26 + 4) = v32;
          _os_log_impl(&dword_185AC1000, v24, v25, "unexpected none event or no event type: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v27);
          MEMORY[0x1865FE2F0](v27, -1, -1);
          MEMORY[0x1865FE2F0](v26, -1, -1);
        }

        goto LABEL_27;
      }

      if (int64 == 1)
      {
        if (xpc_dictionary_create_reply(a1))
        {
          xpc_dictionary_send_reply();
          swift_unknownObjectRelease();
        }

        goto LABEL_27;
      }

LABEL_17:
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v17 = sub_185B67B8C();
      __swift_project_value_buffer(v17, qword_1ED6F5130);
      swift_unknownObjectRetain();
      v5 = sub_185B67B6C();
      v6 = sub_185B680AC();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_8;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33 = v8;
      *v7 = 136315138;
      v18 = MEMORY[0x1865FE580](a1);
      v19 = sub_185B67F1C();
      v21 = v20;
      free(v18);
      v22 = sub_185ACB2C4(v19, v21, &v33);

      *(v7 + 4) = v22;
      v14 = "unexpected event %s";
      goto LABEL_7;
    }

    if (int64 == 2)
    {
      sub_185B14F24(a1);
    }

    else
    {
      if (int64 != 3)
      {
        goto LABEL_17;
      }

      sub_185B15410(a1);
    }

LABEL_27:
  }
}

void sub_185B14F24(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);
  v3 = sub_185B67ECC();
  string = xpc_dictionary_get_string(a1, (v3 + 32));

  if (!string)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v16 = sub_185B67B8C();
    __swift_project_value_buffer(v16, qword_1ED6F5130);
    swift_unknownObjectRetain();
    v17 = sub_185B67B6C();
    v18 = sub_185B6809C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136446210;
      v21 = MEMORY[0x1865FE580](a1);
      v22 = sub_185B67F1C();
      v24 = v23;
      free(v21);
      v25 = sub_185ACB2C4(v22, v24, &v33);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_185AC1000, v17, v18, "no bundleID in %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1865FE2F0](v20, -1, -1);
      MEMORY[0x1865FE2F0](v19, -1, -1);
    }

    goto LABEL_15;
  }

  v5 = sub_185B67F1C();
  v7 = v6;
  v8 = sub_185B67ECC();
  v9 = xpc_dictionary_get_BOOL(a1, (v8 + 32));

  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v10 = sub_185B67B8C();
  __swift_project_value_buffer(v10, qword_1ED6F5130);

  v11 = sub_185B67B6C();
  v12 = sub_185B680AC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_185ACB2C4(v5, v7, &v33);
    *(v13 + 12) = 1024;
    *(v13 + 14) = v9;
    _os_log_impl(&dword_185AC1000, v11, v12, "set shielded event: %s shielded -> %{BOOL}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x1865FE2F0](v14, -1, -1);
    MEMORY[0x1865FE2F0](v13, -1, -1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = reply;
    swift_unknownObjectRetain();
    sub_185B16EA0(v5, v7, v9, sub_185B17B70, v15);
    swift_unknownObjectRelease();

LABEL_15:

    swift_unknownObjectRelease();
    return;
  }

  if (reply)
  {
    v26 = sub_185AD0148(4uLL, 0, 0, 302, 0xD00000000000001ALL, 0x8000000185B767C0);
    v27 = sub_185B12D28(v26);
    v29 = v28;

    swift_unknownObjectRetain();
    sub_185B16278(v27, v29, reply);
    xpc_dictionary_send_reply();
    sub_185AE2FC8(v27, v29);
    goto LABEL_15;
  }

  oslog = sub_185B67B6C();
  v30 = sub_185B6809C();
  if (os_log_type_enabled(oslog, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_185AC1000, oslog, v30, "no delegate and no reply for set shielded event? Dropping", v31, 2u);
    MEMORY[0x1865FE2F0](v31, -1, -1);
  }
}

void sub_185B15410(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);
  v3 = sub_185B67ECC();
  string = xpc_dictionary_get_string(a1, (v3 + 32));

  if (!string)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v16 = sub_185B67B8C();
    __swift_project_value_buffer(v16, qword_1ED6F5130);
    swift_unknownObjectRetain();
    v17 = sub_185B67B6C();
    v18 = sub_185B6809C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136315138;
      v21 = MEMORY[0x1865FE580](a1);
      v22 = sub_185B67F1C();
      v24 = v23;
      free(v21);
      v25 = sub_185ACB2C4(v22, v24, &v33);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_185AC1000, v17, v18, "no bundleID in %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1865FE2F0](v20, -1, -1);
      MEMORY[0x1865FE2F0](v19, -1, -1);
    }

    goto LABEL_15;
  }

  v5 = sub_185B67F1C();
  v7 = v6;
  v8 = sub_185B67ECC();
  int64 = xpc_dictionary_get_int64(a1, (v8 + 32));

  if (int64 < 0)
  {
    __break(1u);
  }

  else if (qword_1ED6F4CB0 == -1)
  {
    goto LABEL_4;
  }

  swift_once();
LABEL_4:
  v10 = sub_185B67B8C();
  __swift_project_value_buffer(v10, qword_1ED6F5130);

  v11 = sub_185B67B6C();
  v12 = sub_185B680AC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_185ACB2C4(v5, v7, &v33);
    *(v13 + 12) = 2048;
    *(v13 + 14) = int64;
    _os_log_impl(&dword_185AC1000, v11, v12, "set shieldStyle event: %s shieldStyle -> %lld", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x1865FE2F0](v14, -1, -1);
    MEMORY[0x1865FE2F0](v13, -1, -1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = reply;
    swift_unknownObjectRetain();
    sub_185B17540(v5, v7, int64, sub_185B166F0, v15);
    swift_unknownObjectRelease();

LABEL_15:

    swift_unknownObjectRelease();
    return;
  }

  if (reply)
  {
    v26 = sub_185AD0148(4uLL, 0, 0, 343, 0xD00000000000001DLL, 0x8000000185B76770);
    v27 = sub_185B12D28(v26);
    v29 = v28;

    swift_unknownObjectRetain();
    sub_185B16278(v27, v29, reply);
    xpc_dictionary_send_reply();
    sub_185AE2FC8(v27, v29);
    goto LABEL_15;
  }

  oslog = sub_185B67B6C();
  v30 = sub_185B6809C();
  if (os_log_type_enabled(oslog, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_185AC1000, oslog, v30, "no delegate and no reply for set shielded event? Dropping", v31, 2u);
    MEMORY[0x1865FE2F0](v31, -1, -1);
  }
}

void sub_185B15910(void *a1, void *a2, double a3, int8x8_t a4, uint64_t a5, const char *a6)
{
  if (a2)
  {
    if (a1)
    {
      swift_unknownObjectRetain();
      v8 = a1;
      v21 = sub_185B12D28(a1);
      v23 = v22;
      swift_unknownObjectRetain();
      sub_185B16278(v21, v23, a2);
      sub_185AE2FC8(v21, v23);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    xpc_dictionary_send_reply();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v11 = sub_185B67B8C();
    __swift_project_value_buffer(v11, qword_1ED6F5130);
    v12 = a1;
    oslog = sub_185B67B6C();
    v13 = sub_185B6809C();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = vuzp1_s8(a4, v16).u32[0];
      v17 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD200, &qword_185B6D558);
      v18 = sub_185B67EBC();
      v20 = sub_185ACB2C4(v18, v19, &v25);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_185AC1000, oslog, v13, a6, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x1865FE2F0](v15, -1, -1);
      MEMORY[0x1865FE2F0](v14, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_185B15C9C()
{
  sub_185AD3598(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_185B15CF8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  MEMORY[0x1865FCFA0]();
  if (*((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_185B67F8C();
  }

  sub_185B67FAC();
  if (!*(a1 + 16))
  {
    v5 = *a1;
    type metadata accessor for APSystemAppClientXPCEventStream();
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v6 + 24) = &off_1EF469670;
    swift_unknownObjectWeakAssign();
    v7 = v5;

    xpc_dictionary_create_empty();
    sub_185B67ECC();
    xpc_set_event();
    swift_unknownObjectRelease();

    v8 = swift_allocObject();
    swift_weakInit();
    v12[4] = sub_185B17CA0;
    v12[5] = v8;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_185B12CC8;
    v12[3] = &block_descriptor_120;
    v9 = _Block_copy(v12);
    v10 = v7;

    v11 = sub_185B67ECC();
    xpc_set_event_stream_handler((v11 + 32), v10, v9);

    _Block_release(v9);

    *(a1 + 16) = v6;
  }
}

void sub_185B15F24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_185AE7520((a1 + 8), v3);

  v5 = *(a1 + 8);
  if (v5 >> 62)
  {
    v6 = sub_185B6844C();
    if (v6 >= v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= v4)
    {
LABEL_3:
      sub_185B570B4(v4, v6);
      return;
    }
  }

  __break(1u);
}

void sub_185B15FC8(void *a1, uint64_t a2, dispatch_group_t group)
{
  if (a1)
  {
    swift_beginAccess();
    v6 = *(a2 + 16);
    *(a2 + 16) = a1;
    v7 = a1;
  }

  dispatch_group_leave(group);
}

void sub_185B16038(uint64_t a1@<X0>, NSObject *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *(a1 + 8);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:
    *a3 = v5;
    return;
  }

  v6 = sub_185B6844C();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 >= 1)
  {

    if ((v5 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x1865FD3E0](i, v5);
        swift_unknownObjectRelease();
        dispatch_group_enter(a2);
      }
    }

    else
    {
      do
      {
        dispatch_group_enter(a2);
        --v6;
      }

      while (v6);
    }

    goto LABEL_12;
  }

  __break(1u);
}

void sub_185B1610C(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = v5;
  a1(v5);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_185B1618C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_185B161DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_185B16230(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_185B16248(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_185B16278(uint64_t a1, unint64_t a2, void *a3)
{
  bytes[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      bytes[0] = a1;
      LOWORD(bytes[1]) = a2;
      BYTE2(bytes[1]) = BYTE2(a2);
      BYTE3(bytes[1]) = BYTE3(a2);
      BYTE4(bytes[1]) = BYTE4(a2);
      v6 = BYTE6(a2);
      BYTE5(bytes[1]) = BYTE5(a2);
      v7 = sub_185B67ECC();
      v8 = swift_unknownObjectRetain_n();
      xpc_dictionary_set_data(v8, (v7 + 32), bytes, v6);
      swift_unknownObjectRelease_n();
    }

    v10 = a1;
    v11 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v5 == 2)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
LABEL_7:
    swift_unknownObjectRetain();
    sub_185B16464(v10, v11, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
    return swift_unknownObjectRelease();
  }

  memset(bytes, 0, 14);
  v12 = sub_185B67ECC();
  v13 = swift_unknownObjectRetain_n();
  xpc_dictionary_set_data(v13, (v12 + 32), bytes, 0);
  swift_unknownObjectRelease_n();
}

char *sub_185B16464(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_185B6783C();
  v8 = result;
  if (result)
  {
    result = sub_185B6785C();
    if (__OFSUB__(a1, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_185B6784C();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  v12 = sub_185B67ECC();
  xpc_dictionary_set_data(a4, (v12 + 32), v8, v11);
  swift_unknownObjectRelease();
}

void *sub_185B16524(void *a1)
{
  v1[4] = MEMORY[0x1E69E7CC8];
  v1[2] = a1;
  sub_185B67ECC();
  v3 = a1;
  v4 = xpc_event_publisher_create();

  if (v4)
  {
    v1[3] = v4;
    v6 = swift_allocObject();
    swift_weakInit();
    v16 = sub_185B17CA8;
    v17 = v6;
    v12 = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_185AE0424;
    v15 = &block_descriptor_126;
    v7 = _Block_copy(&v12);
    v8 = v4;

    xpc_event_publisher_set_handler();
    _Block_release(v7);

    v9 = v1[3];
    v16 = sub_185AE04A4;
    v17 = 0;
    v12 = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_185ACEA8C;
    v15 = &block_descriptor_129_0;
    v10 = _Block_copy(&v12);
    v11 = v9;
    xpc_event_publisher_set_error_handler();
    _Block_release(v10);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_185B1672C(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_audit_token();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v3 = sub_185B67B8C();
  __swift_project_value_buffer(v3, qword_1EA8D2278);
  v4 = sub_185B67B6C();
  v5 = sub_185B680AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = a2;
    *(v6 + 12) = 1024;
    swift_beginAccess();
    memset(&atoken, 0, sizeof(atoken));
    *(v6 + 14) = audit_token_to_pid(&atoken);
    _os_log_impl(&dword_185AC1000, v4, v5, "validating %llu pid %d", v6, 0x12u);
    MEMORY[0x1865FE2F0](v6, -1, -1);
  }

  swift_beginAccess();
  v7 = xpc_copy_entitlement_for_token();
  swift_endAccess();
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = MEMORY[0x1865FE700](v7);
  if (v8 == sub_185B67BCC())
  {
    v18 = swift_unknownObjectRetain();
    v19 = MEMORY[0x1865FE700](v18);
    if (v19 == sub_185B67BCC())
    {
      if (xpc_string_get_string_ptr(v7))
      {
        v20 = sub_185B67F1C();
        v22 = v21;
        swift_unknownObjectRelease();
        if (v20 == 0xD000000000000015 && 0x8000000185B764C0 == v22)
        {
        }

        else
        {
          v23 = sub_185B6859C();

          if ((v23 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        v10 = sub_185B67B6C();
        v11 = sub_185B680AC();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 134217984;
          *(v12 + 4) = a2;
          v13 = "tok %llu is SpringBoard";
          goto LABEL_24;
        }

LABEL_25:

        swift_unknownObjectRelease();
        return 1;
      }

      __break(1u);
    }

    result = sub_185B6842C();
    __break(1u);
    return result;
  }

LABEL_7:
  swift_unknownObjectRelease();
LABEL_8:
  swift_beginAccess();
  v9 = xpc_copy_entitlement_for_token();
  swift_endAccess();
  if (v9)
  {
    if (xpc_BOOL_get_value(v9))
    {
      v10 = sub_185B67B6C();
      v11 = sub_185B680AC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        *(v12 + 4) = a2;
        v13 = "tok %llu is entitled";
LABEL_24:
        _os_log_impl(&dword_185AC1000, v10, v11, v13, v12, 0xCu);
        MEMORY[0x1865FE2F0](v12, -1, -1);
        goto LABEL_25;
      }

      goto LABEL_25;
    }

    swift_unknownObjectRelease();
  }

  v14 = sub_185B67B6C();
  v15 = sub_185B680AC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a2;
    _os_log_impl(&dword_185AC1000, v14, v15, "tok %llu is NOT ENTITLED!", v16, 0xCu);
    MEMORY[0x1865FE2F0](v16, -1, -1);
  }

  return 0;
}

uint64_t sub_185B16B70(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1865FE700]();
  if (v4 == sub_185B67BBC())
  {
    v17 = sub_185B67C0C();
    if (xpc_dictionary_get_string(a1, v17))
    {
      v18 = sub_185B67F1C();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v22 = sub_185B67B8C();
    __swift_project_value_buffer(v22, qword_1EA8D2278);

    v7 = sub_185B67B6C();
    v23 = sub_185B6808C();

    if (!os_log_type_enabled(v7, v23))
    {

      goto LABEL_23;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v24 = 134218242;
    *(v24 + 4) = a2;
    *(v24 + 12) = 2080;
    if (v20)
    {
      v26 = v18;
    }

    else
    {
      v26 = 0xD000000000000010;
    }

    if (v20)
    {
      v27 = v20;
    }

    else
    {
      v27 = 0x8000000185B76870;
    }

    v28 = sub_185ACB2C4(v26, v27, &v29);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_185AC1000, v7, v23, "Error pinging for token %llu! %s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x1865FE2F0](v25, -1, -1);
    v16 = v24;
    goto LABEL_21;
  }

  v5 = MEMORY[0x1865FE700](a1);
  if (v5 == sub_185B67BFC())
  {
    return 1;
  }

  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v6 = sub_185B67B8C();
  __swift_project_value_buffer(v6, qword_1EA8D2278);
  swift_unknownObjectRetain();
  v7 = sub_185B67B6C();
  v8 = sub_185B6809C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 134218242;
    *(v9 + 4) = a2;
    *(v9 + 12) = 2080;
    v11 = MEMORY[0x1865FE580](a1);
    v12 = sub_185B67F1C();
    v14 = v13;
    free(v11);
    v15 = sub_185ACB2C4(v12, v14, &v29);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_185AC1000, v7, v8, "Bad object type in pong from %llu! %s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x1865FE2F0](v10, -1, -1);
    v16 = v9;
LABEL_21:
    MEMORY[0x1865FE2F0](v16, -1, -1);
  }

LABEL_23:

  return 0;
}

void sub_185B16EA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a4;
  LOBYTE(v6) = a3;
  v7 = sub_185B67C9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_185B67CDC();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  v12 = dispatch_group_create();
  v39 = v5;
  v13 = *(v5 + 16);
  v54 = v12;
  v57 = v12;

  os_unfair_lock_lock(v13 + 10);
  sub_185B17BAC(&v13[4], &aBlock);
  os_unfair_lock_unlock(v13 + 10);
  v14 = aBlock;

  v15 = objc_opt_self();
  v16 = sub_185B67E1C();
  v53 = [v15 applicationWithBundleIdentifier_];

  v17 = v14;
  v47 = v7;
  v46 = v8;
  v45 = v10;
  if (v14 >> 62)
  {
    goto LABEL_12;
  }

  v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
    while (v18 >= 1)
    {
      v19 = 0;
      v52 = v17 & 0xC000000000000001;
      v51 = v6 & 1;
      v50 = &v61;
      v49 = v17;
      v48 = v18;
      while (1)
      {
        v20 = v52 ? MEMORY[0x1865FD3E0](v19) : *(v17 + 8 * v19 + 32);
        v21 = v20;
        v22 = swift_allocObject();
        v14 = v54;
        *(v22 + 16) = v55;
        *(v22 + 24) = v14;
        v56 = *&v21[OBJC_IVAR___APSystemAppOutlet_callbackQueue];
        v6 = swift_allocObject();
        v23 = v53;
        *(v6 + 16) = v21;
        *(v6 + 24) = v23;
        *(v6 + 32) = v51;
        *(v6 + 40) = sub_185B17BC8;
        *(v6 + 48) = v22;
        v24 = swift_allocObject();
        *(v24 + 16) = sub_185B17BD0;
        *(v24 + 24) = v6;
        v63 = sub_185AE7C88;
        v64 = v24;
        aBlock = MEMORY[0x1E69E9820];
        v60 = 1107296256;
        v61 = sub_185AD94F4;
        v62 = &block_descriptor_83;
        v25 = _Block_copy(&aBlock);

        v26 = v14;
        v27 = v21;
        v28 = v23;

        dispatch_sync(v56, v25);

        _Block_release(v25);
        LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

        if (v22)
        {
          break;
        }

        ++v19;
        v17 = v49;
        if (v48 == v19)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_12:
      v38 = v17;
      v18 = sub_185B6844C();
      v17 = v38;
      if (!v18)
      {
        goto LABEL_10;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_10:

    v29 = *(v39 + 16);

    os_unfair_lock_lock((v29 + 40));
    v30 = *(v29 + 16);
    os_unfair_lock_unlock((v29 + 40));

    v31 = swift_allocObject();
    v32 = v41;
    v31[2] = v40;
    v31[3] = v32;
    v31[4] = v55;
    v63 = sub_185B17BE0;
    v64 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_185ACA0E8;
    v62 = &block_descriptor_89;
    v33 = _Block_copy(&aBlock);

    v34 = v42;
    sub_185B67CBC();
    v58 = MEMORY[0x1E69E7CC0];
    sub_185AC72E0(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    v35 = v44;
    v36 = v47;
    sub_185B682CC();
    v37 = v54;
    sub_185B680CC();
    _Block_release(v33);

    (*(v46 + 8))(v35, v36);
    (*(v43 + 8))(v34, v45);
  }
}

void sub_185B17540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v44 = a4;
  v56 = a3;
  v6 = sub_185B67C9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_185B67CDC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  v13 = dispatch_group_create();
  v43 = v5;
  v14 = *(v5 + 16);
  v46 = v13;
  v58 = v13;

  os_unfair_lock_lock(v14 + 10);
  sub_185B17D8C(&v14[4], &aBlock);
  os_unfair_lock_unlock(v14 + 10);
  v50 = v9;
  v15 = aBlock;

  v16 = objc_opt_self();
  v17 = sub_185B67E1C();
  v57 = [v16 applicationWithBundleIdentifier_];

  v18 = v15;
  v52 = v7;
  v53 = v6;
  v51 = v10;
  v49 = v11;
  if (v15 >> 62)
  {
    goto LABEL_12;
  }

  v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19)
  {
    while (v19 >= 1)
    {
      v20 = 0;
      v54 = &v62;
      v55 = v18 & 0xC000000000000001;
      v21 = v18;
      v22 = v57;
      while (1)
      {
        v23 = v55 ? MEMORY[0x1865FD3E0](v20) : *(v18 + 8 * v20 + 32);
        v24 = v23;
        v25 = *&v23[OBJC_IVAR___APSystemAppOutlet_callbackQueue];
        v26 = swift_allocObject();
        v26[2] = v22;
        v26[3] = v24;
        v26[4] = v56;
        v27 = swift_allocObject();
        *(v27 + 16) = sub_185B17B64;
        *(v27 + 24) = v26;
        v64 = sub_185AE7934;
        v65 = v27;
        aBlock = MEMORY[0x1E69E9820];
        v61 = 1107296256;
        v62 = sub_185AD94F4;
        v63 = &block_descriptor_11;
        v28 = _Block_copy(&aBlock);
        v29 = v22;
        v30 = v24;

        dispatch_sync(v25, v28);

        _Block_release(v28);
        LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

        if (v28)
        {
          break;
        }

        ++v20;
        v18 = v21;
        if (v19 == v20)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_12:
      v40 = v18;
      v41 = sub_185B6844C();
      v18 = v40;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_10;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_10:

    v31 = *(v43 + 16);

    os_unfair_lock_lock((v31 + 40));
    v32 = *(v31 + 16);
    os_unfair_lock_unlock((v31 + 40));

    v33 = swift_allocObject();
    v34 = v45;
    v33[2] = v44;
    v33[3] = v34;
    v33[4] = v47;
    v64 = sub_185B17DD0;
    v65 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_185ACA0E8;
    v63 = &block_descriptor_66;
    v35 = _Block_copy(&aBlock);

    v36 = v48;
    sub_185B67CBC();
    v59 = MEMORY[0x1E69E7CC0];
    sub_185AC72E0(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    v37 = v50;
    v38 = v53;
    sub_185B682CC();
    v39 = v46;
    sub_185B680CC();
    _Block_release(v35);

    (*(v52 + 8))(v37, v38);
    (*(v49 + 8))(v36, v51);
  }
}

uint64_t objectdestroy_72Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_62Tm()
{

  return swift_deallocObject();
}

uint64_t sub_185B17C90(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So13OS_xpc_object_pIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_185B17CC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_185B17D10(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_185B17F54(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, id, void *))
{
  v8 = sub_185B67AFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a4);
  sub_185B67ADC();
  _Block_copy(v12);
  v13 = a1;
  a5(v11, v13, v12);
  _Block_release(v12);
  _Block_release(v12);

  return (*(v9 + 8))(v11, v8);
}

id sub_185B181B8(uint64_t a1)
{
  result = APGetExtensionInfoServiceInterface(a1);
  qword_1EA8D22F8 = result;
  return result;
}

id sub_185B18298()
{
  if (qword_1EA8CBB28 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D22F8;

  return v0;
}

id sub_185B1833C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_185B183C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APExtensionInfoService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection22APExtensionInfoService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

id sub_185B18440(void *a1)
{
  v2 = type metadata accessor for APExtensionInfoClient();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC13AppProtection21APExtensionInfoClient_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1EF469B78;
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR____TtC13AppProtection21APExtensionInfoClient_connection] = a1;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = a1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_185B18534(uint64_t a1, uint64_t a2)
{
  result = sub_185B18E98(&qword_1EA8CBB10, a2, type metadata accessor for APExtensionInfoClient, MEMORY[0x1E69E81B8]);
  *(a1 + 8) = result;
  return result;
}

void sub_185B1858C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = a2;
  v24 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_185B67AFC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v22 = a1;
  v13(v10, a1, v11);
  v14 = *(v12 + 56);
  v14(v10, 0, 1, v11);
  v15 = *(a4 + OBJC_IVAR____TtC13AppProtection21APExtensionInfoClient_connection);
  v25 = a5;
  _Block_copy(a5);
  LODWORD(v15) = [v15 processIdentifier];
  v16 = a4 + OBJC_IVAR____TtC13AppProtection21APExtensionInfoClient_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_185B1DEAC(0, 0, v10, v15, Strong, *(v16 + 8), v30);
  swift_unknownObjectRelease();
  sub_185ACF5CC(v10, &unk_1EA8CD9A0, &unk_185B6C2C0);
  if (*(&v30[0] + 1))
  {
    v31[2] = v30[2];
    v31[3] = v30[3];
    v31[4] = v30[4];
    v31[5] = v30[5];
    v31[0] = v30[0];
    v31[1] = v30[1];
    v13(v10, v22, v11);
    v14(v10, 0, 1, v11);
    v18 = sub_185B1E6B4(0, 0, v10, v23, v24);
    v20 = v19;
    sub_185ACF5CC(v10, &unk_1EA8CD9A0, &unk_185B6C2C0);
    memset(v26, 0, sizeof(v26));
    LOBYTE(v27) = -2;
    *(&v27 + 1) = v18;
    *&v28 = v20;
    WORD4(v28) = 1;
    v29 = v31[0];
    v32[2] = v27;
    v32[3] = v28;
    memset(v32, 0, 32);
    v32[4] = v31[0];
    v21 = v25;
    _Block_copy(v25);

    sub_185B031F8(v32, v31, v21);
    _Block_release(v21);
    sub_185AF6A24(v26);
    sub_185AF6A78(v31);
  }

  else
  {
    sub_185ACF5CC(v30, &qword_1EA8CD008, &unk_185B6CA30);
    v21 = v25;
    (*(v25 + 2))(v25, 1, 0);
  }

  _Block_release(v21);
}

uint64_t sub_185B1886C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_185AE8F94(a1);
  if (v11)
  {
    v12 = v11;
    v13 = v10;
    v14 = a2 + OBJC_IVAR____TtC13AppProtection21APExtensionInfoClient_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      (*(v15 + 8))(v31, ObjectType, v15);
      swift_unknownObjectRelease();
      sub_185AC66F8(v31, v32);
      v17 = v33;
      v18 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      v19 = (*(v18 + 64))(v13, v12, v17, v18);

      (*(a3 + 16))(a3, (v19 & 1) == 0, 0);
      return __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    else
    {

      v30 = *(a3 + 16);

      return v30(a3, 1, 0);
    }
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v21 = sub_185B67B8C();
    __swift_project_value_buffer(v21, qword_1EA8D2278);
    (*(v7 + 16))(v9, a1, v6);
    v22 = sub_185B67B6C();
    v23 = sub_185B680AC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      *v24 = 136446210;
      sub_185B18E98(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v26 = sub_185B6856C();
      v28 = v27;
      (*(v7 + 8))(v9, v6);
      v29 = sub_185ACB2C4(v26, v28, v32);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_185AC1000, v22, v23, "no containing bundle record for extension uuid %{public}s assuming unlocked", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x1865FE2F0](v25, -1, -1);
      MEMORY[0x1865FE2F0](v24, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    return (*(a3 + 16))(a3, 0, 0);
  }
}

void sub_185B18C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_185AE948C(a1);
  if (v7)
  {
    v8 = v7;
    v9 = v6;
    v10 = sub_185AE8F94(a1);
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      v14 = a2 + OBJC_IVAR____TtC13AppProtection21APExtensionInfoClient_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 8);
        ObjectType = swift_getObjectType();
        (*(v15 + 8))(v28, ObjectType, v15);
        swift_unknownObjectRelease();
        v17 = v29;
        v18 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        v19 = (*(v18 + 24))(v17, v18);
        v20 = sub_185AC3A7C(v13, v12, v19);

        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        if (v20)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v14 + 8);
        v22 = swift_getObjectType();
        (*(v21 + 8))(v28, v22, v21);
        swift_unknownObjectRelease();
        v23 = v29;
        v24 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        v25 = (*(v24 + 40))(v23, v24);
        sub_185AC3A7C(v9, v8, v25);

        __swift_destroy_boxed_opaque_existential_0Tm(v28);
LABEL_14:
        v26 = sub_185B67FBC();
        (*(a3 + 16))(a3, v26, 0);

        return;
      }

LABEL_13:

      goto LABEL_14;
    }
  }

  sub_185AD0C64();
  v27 = sub_185B6825C();
  (*(a3 + 16))(a3, v27, 0);
}

uint64_t sub_185B18E98(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_185B18EE0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_185B683DC();
    v4 = v1 + 56;
    v5 = sub_185B682DC();
    v6 = *(v1 + 36);
    result = objc_opt_self();
    v7 = 0;
    v19 = v1 + 64;
    v20 = result;
    v21 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;

      v10 = sub_185B67E1C();
      v11 = [v20 applicationWithBundleIdentifier_];

      sub_185B683BC();
      sub_185B683EC();
      v1 = v21;
      sub_185B683FC();
      result = sub_185B683CC();
      v8 = 1 << *(v21 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v12 = *(v4 + 8 * v9);
      if ((v12 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v6 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v13 = v12 & (-2 << (v5 & 0x3F));
      if (v13)
      {
        v8 = __clz(__rbit64(v13)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v9 << 6;
        v15 = v9 + 1;
        v16 = (v19 + 8 * v9);
        while (v15 < (v8 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = sub_185B19C34(v5, v6, 0);
            v8 = __clz(__rbit64(v17)) + v14;
            goto LABEL_4;
          }
        }

        result = sub_185B19C34(v5, v6, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v5 = v8;
      if (v22 + 1 == v2)
      {
        return v23;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_185B1919C()
{
  sub_185B19524(*v0);
  v2 = v1;

  *v0 = v2;
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
    v10 = v8;
LABEL_16:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(*(v2 + 48) + 8 * v14);
    sub_185ADF8F0(*(v2 + 56) + 40 * v14, v25);
    *&v26 = v15;
    sub_185AC66F8(v25, &v26 + 8);
    v16 = v15;
LABEL_17:
    v29[0] = v26;
    v29[1] = v27;
    v29[2] = v28;
    v17 = v26;
    if (!v26)
    {

      return v9;
    }

    sub_185AC66F8((v29 + 8), &v26);
    v18 = *(&v27 + 1);
    v19 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    v20 = (*(v19 + 8))(v18, v19);
    if (v20)
    {
      v21 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_185B3CE08(0, v9[2] + 1, 1, v9);
      }

      v23 = v9[2];
      v22 = v9[3];
      if (v23 >= v22 >> 1)
      {
        v9 = sub_185B3CE08((v22 > 1), v23 + 1, 1, v9);
      }

      v9[2] = v23 + 1;
      v24 = &v9[2 * v23];
      v24[4] = v17;
      v24[5] = v21;
    }

    else
    {
    }

    result = __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  }

  if (v6 <= v8 + 1)
  {
    v11 = v8 + 1;
  }

  else
  {
    v11 = v6;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      v5 = 0;
      v27 = 0u;
      v28 = 0u;
      v8 = v12;
      v26 = 0u;
      goto LABEL_17;
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185B193C8(_BYTE *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC13AppProtection29DefaultSubjectMonitorRegistry_mutableState);

  os_unfair_lock_lock(v3 + 6);
  v4 = sub_185B1919C();
  os_unfair_lock_unlock(v3 + 6);

  sub_185B198D0(a1, v4);
}

id sub_185B19490(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_185B19524(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_185B19858(v7, v4, v2);
      MEMORY[0x1865FE2F0](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_185B19684(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_185B19684(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v29 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a3 + 48) + 8 * v12);
    v22 = v12;
    sub_185ADF8F0(*(a3 + 56) + 40 * v12, v28);
    v24 = v13;
    sub_185ADF8F0(v28, v25);
    v15 = v26;
    v14 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v16 = *(v14 + 8);
    v17 = v13;
    if (v16(v15, v14))
    {
      swift_unknownObjectRelease();
      sub_185B19C40(&v24);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);

      *(a1 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v18 = __OFADD__(v21++, 1);
      v7 = v29;
      if (v18)
      {
        __break(1u);
LABEL_16:
        sub_185B3F5C8(a1, a2, v21, a3);
        return;
      }
    }

    else
    {
      sub_185B19C40(&v24);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);

      v7 = v29;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_16;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_185B19858(void *result, uint64_t a2, uint64_t a3)
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

    sub_185B19684(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_185B198D0(_BYTE *a1, uint64_t a2)
{
  v4 = a1[49] ^ a1[48];
  v5 = sub_185B665E4();
  v6 = sub_185B18EE0(v5);

  v20 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v7 = [objc_opt_self() lockedMetaSubject];
    MEMORY[0x1865FCFA0]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_185B67F8C();
    }

    sub_185B67FAC();
    v20 = v21;
  }

  if ((a1[51] ^ a1[50]))
  {
    v8 = [objc_opt_self() hiddenMetaSubject];
    MEMORY[0x1865FCFA0]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_185B67F8C();
    }

    sub_185B67FAC();
    v20 = v21;
  }

  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = (a2 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = OBJC_IVAR____TtC13AppProtection26DefaultSubjectMonitorToken_subjectMask;
      if (*(v11 + OBJC_IVAR____TtC13AppProtection26DefaultSubjectMonitorToken_subjectMask))
      {
        if (v6 >> 62)
        {
          if (sub_185B6844C())
          {
            type metadata accessor for APSubject(0);
            v16 = v11;
            swift_unknownObjectRetain();

            sub_185B6843C();
LABEL_17:

            type metadata accessor for APSubject(0);
            v15 = sub_185B67F5C();

            [v12 appProtectionSubjectsChanged:v15 forSubscription:v11];

            if ((*(v11 + v13) & 2) == 0)
            {
              goto LABEL_11;
            }

            goto LABEL_22;
          }
        }

        else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          swift_bridgeObjectRetain_n();
          v14 = v11;
          swift_unknownObjectRetain();
          sub_185B685AC();
          type metadata accessor for APSubject(0);
          goto LABEL_17;
        }
      }

      v17 = v11;
      swift_unknownObjectRetain();
      if ((*(v11 + v13) & 2) == 0)
      {
        goto LABEL_11;
      }

LABEL_22:
      if (v20 >> 62)
      {
        if (sub_185B6844C())
        {
LABEL_24:
          type metadata accessor for APSubject(0);
          v18 = sub_185B67F5C();
          [v12 appProtectionSubjectsChanged:v18 forSubscription:v11];
          swift_unknownObjectRelease();

          goto LABEL_12;
        }
      }

      else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

LABEL_11:

      swift_unknownObjectRelease();
LABEL_12:
      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_185B19C34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_185B19C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD290, &qword_185B6D740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_185B19CB8()
{
  v1 = 0x55556E696769726FLL;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_185B19D40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_185B1C2DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_185B19D74(uint64_t a1)
{
  v2 = sub_185B1CD28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_185B19DB0(uint64_t a1)
{
  v2 = sub_185B1CD28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_185B19DEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_185B67AFC();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD2A8, &qword_185B6D8A8);
  v21 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Backup(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B1CD28();
  sub_185B686EC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v21;
  v11 = v22;
  v18 = v10;
  v19 = a1;
  LOBYTE(v26) = 0;
  sub_185B1CCE0(&qword_1EA8CBFD8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v23;
  v13 = v24;
  sub_185B684BC();
  (*(v11 + 32))(v18, v14, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2B0, &qword_185B6D8B0);
  v25 = 1;
  v23 = sub_185B1CE3C(&qword_1EA8CB688, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
  sub_185B684BC();
  *&v18[*(v8 + 20)] = v26;
  v25 = 2;
  sub_185B684BC();
  (*(v12 + 8))(v7, v13);
  v15 = *(v8 + 24);
  v16 = v18;
  *&v18[v15] = v26;
  sub_185B1CD7C(v16, v20);
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  return sub_185B1CDE0(v16);
}

uint64_t sub_185B1A208(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2C0, &qword_185B6D8B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B1CD28();
  sub_185B686FC();
  LOBYTE(v13) = 0;
  sub_185B67AFC();
  sub_185B1CCE0(&unk_1EA8CBFE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_185B6851C();
  if (!v2)
  {
    v9 = type metadata accessor for Backup(0);
    v13 = *(v3 + *(v9 + 20));
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2B0, &qword_185B6D8B0);
    sub_185B1CE3C(&qword_1EA8CD2D0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_185B6851C();
    v13 = *(v3 + *(v9 + 24));
    v12 = 2;
    sub_185B6851C();
    LOBYTE(v13) = 3;
    sub_185B6850C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_185B1A484@<X0>(uint64_t a3@<X8>)
{
  sub_185B678DC();
  swift_allocObject();
  sub_185B678CC();
  v4 = type metadata accessor for Backup(0);
  sub_185B1CCE0(&unk_1EA8CB780, type metadata accessor for Backup, &unk_185B6D868);
  sub_185B678BC();

  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t sub_185B1A6D8()
{
  sub_185B6836C();

  type metadata accessor for Backup(0);
  v0 = sub_185B67FEC();
  MEMORY[0x1865FCF60](v0);

  MEMORY[0x1865FCF60](0x6E6564646968202CLL, 0xEA0000000000203ALL);
  v1 = sub_185B67FEC();
  MEMORY[0x1865FCF60](v1);

  MEMORY[0x1865FCF60](0x6E696769726F202CLL, 0xEA0000000000203ALL);
  sub_185B67AFC();
  sub_185B1CCE0(&qword_1ED6F4640, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v2 = sub_185B6856C();
  MEMORY[0x1865FCF60](v2);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  return 0x6C2870756B636142;
}

uint64_t sub_185B1A874@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B226C4(v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185ACC524(sub_185ACAF24, 0);
  v9 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185ACC524(sub_185ACB234, 0);
  v12 = v11;
  (*(v5 + 32))(a2, v7, v4);
  v13 = type metadata accessor for Backup(0);
  *(a2 + *(v13 + 20)) = v9;
  *(a2 + *(v13 + 24)) = v12;
  return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
}

uint64_t sub_185B1ABCC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC13AppProtection27ContainerBasedBackupManager_transaction);
    v3 = result;
    os_unfair_lock_lock((v2 + 24));
    *(v2 + 16) = 0;
    os_unfair_lock_unlock((v2 + 24));
    sub_185B1ACF8(v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_185B1AC60()
{
  v1 = *(v0 + OBJC_IVAR____TtC13AppProtection27ContainerBasedBackupManager_transaction);
  os_unfair_lock_lock((v1 + 24));
  if (!*(v1 + 16))
  {
    *(v1 + 16) = os_transaction_create();
  }

  os_unfair_lock_unlock((v1 + 24));
  v2 = *(*(v0 + 24) + OBJC_IVAR____TtC13AppProtection15SaturatingTimer_state);
  os_unfair_lock_lock(v2 + 7);
  sub_185ADF7C8(&v2[4]);

  os_unfair_lock_unlock(v2 + 7);
}

uint64_t sub_185B1ACF8(uint64_t a1)
{
  v2 = sub_185B6795C();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_185B67A0C();
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Backup(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2D8, &qword_185B6D8C0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  sub_185B6810C();
  sub_185B1CF38(v16, v14);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    sub_185ACF5CC(v16, &unk_1EA8CD2D8, &qword_185B6D8C0);
    return sub_185ACF5CC(v14, &unk_1EA8CD2D8, &qword_185B6D8C0);
  }

  v32 = v16;
  sub_185B1CEA8(v14, v10);
  sub_185B6790C();
  swift_allocObject();
  sub_185B678FC();
  sub_185B1CCE0(&qword_1EA8CD2A0, type metadata accessor for Backup, &unk_185B6D840);
  v17 = sub_185B678EC();
  if (!v1)
  {
    v19 = v17;
    v20 = v18;
    v31 = v10;

    v21 = v38;
    if (qword_1EA8CBAF0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v21, qword_1EA8CBAF8);
    v36 = 0xD000000000000019;
    v37 = 0x8000000185B76B30;
    v23 = v33;
    v22 = v34;
    (*(v33 + 104))(v4, *MEMORY[0x1E6968F70], v34);
    sub_185B1CC8C();
    sub_185B679FC();
    (*(v23 + 8))(v4, v22);
    sub_185B67A6C();
    (*(v35 + 8))(v6, v21);
    sub_185AE2FC8(v19, v20);
    v24 = v31;
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v25 = sub_185B67B8C();
    __swift_project_value_buffer(v25, qword_1EA8D2278);
    v26 = sub_185B67B6C();
    v27 = sub_185B680AC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_185AC1000, v26, v27, "Wrote backup.", v28, 2u);
      MEMORY[0x1865FE2F0](v28, -1, -1);
    }

    sub_185B1CDE0(v24);
    v14 = v32;
    return sub_185ACF5CC(v14, &unk_1EA8CD2D8, &qword_185B6D8C0);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_185B1B3A0@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v1 = sub_185B67AFC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v90 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v85 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2D8, &qword_185B6D8C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v98 = &v85 - v8;
  v9 = type metadata accessor for Backup(0);
  v105 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v87 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v85 - v12;
  v13 = sub_185B6795C();
  v102 = *(v13 - 8);
  v103 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_185B67A0C();
  v101 = *(v104 - 8);
  v16 = MEMORY[0x1EEE9AC00](v104);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v85 - v19;
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v20 = sub_185B67B8C();
  v97 = __swift_project_value_buffer(v20, qword_1EA8D2278);
  v21 = sub_185B67B6C();
  v22 = sub_185B680AC();
  v23 = os_log_type_enabled(v21, v22);
  v24 = 0x1EA8CB000uLL;
  v25 = MEMORY[0x1E6968F70];
  v100 = v9;
  v89 = v1;
  v88 = v2;
  v86 = v6;
  if (v23)
  {
    v26 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v106[0] = v95;
    *v26 = 136315138;
    if (qword_1EA8CBAF0 != -1)
    {
      swift_once();
    }

    v27 = v104;
    __swift_project_value_buffer(v104, qword_1EA8CBAF8);
    v107 = 0xD000000000000019;
    v108 = 0x8000000185B76B30;
    v28 = *v25;
    v30 = v102;
    v29 = v103;
    (*(v102 + 104))(v15, v28, v103);
    sub_185B1CC8C();
    v31 = v96;
    sub_185B679FC();
    (*(v30 + 8))(v15, v29);
    sub_185B1CCE0(&qword_1EA8CBFF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v32 = sub_185B6856C();
    v34 = v33;
    (*(v101 + 8))(v31, v27);
    v35 = sub_185ACB2C4(v32, v34, v106);

    *(v26 + 4) = v35;
    _os_log_impl(&dword_185AC1000, v21, v22, "Checking for remote backup info in %s", v26, 0xCu);
    v36 = v95;
    __swift_destroy_boxed_opaque_existential_0Tm(v95);
    MEMORY[0x1865FE2F0](v36, -1, -1);
    MEMORY[0x1865FE2F0](v26, -1, -1);

    v24 = 0x1EA8CB000;
  }

  else
  {
  }

  if (*(v24 + 2800) != -1)
  {
    swift_once();
  }

  v37 = v104;
  __swift_project_value_buffer(v104, qword_1EA8CBAF8);
  v107 = 0xD000000000000019;
  v108 = 0x8000000185B76B30;
  v95 = 0x8000000185B76B30;
  v39 = v102;
  v38 = v103;
  v40 = *(v102 + 104);
  v94 = *MEMORY[0x1E6968F70];
  v93 = v40;
  v40(v15);
  v92 = sub_185B1CC8C();
  sub_185B679FC();
  v102 = *(v39 + 8);
  (v102)(v15, v38);
  v41 = sub_185B67A1C();
  v43 = v42;
  v101 = *(v101 + 8);
  (v101)(v18, v37);
  v44 = v98;
  sub_185B1A484(v98);
  v45 = v41;
  v46 = v100;
  sub_185AE2FC8(v45, v43);
  if ((*(v105 + 48))(v44, 1, v46) == 1)
  {
    sub_185ACF5CC(v44, &unk_1EA8CD2D8, &qword_185B6D8C0);
    v47 = sub_185B67B6C();
    v48 = sub_185B680AC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v106[0] = v50;
      *v49 = 136446210;
      v107 = 0xD000000000000019;
      v108 = v95;
      v51 = v103;
      v93(v15, v94, v103);
      v52 = v96;
      sub_185B679FC();
      (v102)(v15, v51);
      sub_185B1CCE0(&qword_1EA8CBFF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v53 = v104;
      v54 = sub_185B6856C();
      v56 = v55;
      (v101)(v52, v53);
      v57 = sub_185ACB2C4(v54, v56, v106);

      *(v49 + 4) = v57;
      _os_log_impl(&dword_185AC1000, v47, v48, "No backup at %{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      v58 = v50;
      v46 = v100;
      MEMORY[0x1865FE2F0](v58, -1, -1);
      MEMORY[0x1865FE2F0](v49, -1, -1);
    }

    return (*(v105 + 56))(v99, 1, 1, v46);
  }

  else
  {
    v60 = v44;
    v61 = v91;
    sub_185B1CEA8(v60, v91);
    v62 = v86;
    sub_185B226C4(v86);
    v63 = v87;
    sub_185B1CD7C(v61, v87);
    v64 = v88;
    v66 = v89;
    v65 = v90;
    (*(v88 + 16))(v90, v62, v89);
    v67 = sub_185B67B6C();
    v68 = sub_185B680AC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v107 = v104;
      *v69 = 136446466;
      sub_185B1CCE0(&qword_1ED6F4640, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v70 = sub_185B6856C();
      v72 = v71;
      sub_185B1CDE0(v63);
      v73 = sub_185ACB2C4(v70, v72, &v107);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2082;
      v74 = v90;
      v75 = sub_185B6856C();
      v77 = v76;
      v78 = *(v64 + 8);
      v78(v74, v66);
      v79 = sub_185ACB2C4(v75, v77, &v107);

      *(v69 + 14) = v79;
      _os_log_impl(&dword_185AC1000, v67, v68, "Backup origin UUID is %{public}s, container instance UUID is %{public}s", v69, 0x16u);
      v80 = v104;
      swift_arrayDestroy();
      MEMORY[0x1865FE2F0](v80, -1, -1);
      v81 = v69;
      v61 = v91;
      MEMORY[0x1865FE2F0](v81, -1, -1);
    }

    else
    {

      v78 = *(v64 + 8);
      v78(v65, v66);
      sub_185B1CDE0(v63);
    }

    sub_185B1CCE0(&qword_1ED6F45C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v82 = sub_185B67DEC();
    v78(v62, v66);
    v83 = (v105 + 56);
    if (v82)
    {
      sub_185B1CDE0(v61);
      return (*v83)(v99, 1, 1, v100);
    }

    else
    {
      v84 = v99;
      sub_185B1CEA8(v61, v99);
      return (*v83)(v84, 0, 1, v100);
    }
  }
}

uint64_t sub_185B1BF64()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  v1 = OBJC_IVAR____TtC13AppProtection27ContainerBasedBackupManager_originUUID;
  v2 = sub_185B67AFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_185B1C058(uint64_t a1)
{
  result = sub_185B67AFC();
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

uint64_t sub_185B1C158(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_185B1C190(uint64_t a1)
{
  sub_185B67AFC();
  if (v1 <= 0x3F)
  {
    sub_185B1C214();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_185B1C214()
{
  if (!qword_1EA8CB690)
  {
    v0 = sub_185B6802C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA8CB690);
    }
  }
}

uint64_t sub_185B1C2DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x55556E696769726FLL && a2 == 0xEA00000000004449;
  if (v4 || (sub_185B6859C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000185B76B70 == a2 || (sub_185B6859C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000185B76B90 == a2 || (sub_185B6859C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_185B6859C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id sub_185B1C458()
{
  v0 = sub_185B6795C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_185B67A0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  if (qword_1EA8CBAF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_1EA8CBAF8);
  v12[0] = 0xD000000000000019;
  v12[1] = 0x8000000185B76B30;
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F70], v0);
  sub_185B1CC8C();
  sub_185B679FC();
  (*(v1 + 8))(v3, v0);
  sub_185B679DC();
  (*(v5 + 8))(v7, v4);
  v9 = sub_185B67E1C();

  v10 = [v8 fileExistsAtPath_];

  return v10;
}

uint64_t sub_185B1C6CC(uint64_t a1)
{
  v2 = sub_185B6795C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_185B67A0C();
  v15 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B6790C();
  swift_allocObject();
  sub_185B678FC();
  type metadata accessor for Backup(0);
  sub_185B1CCE0(&qword_1EA8CD2A0, type metadata accessor for Backup, &unk_185B6D840);
  v9 = sub_185B678EC();
  if (v1)
  {

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v11 = v9;
    v12 = v10;

    if (qword_1EA8CBAF0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_1EA8CBAF8);
    v14[0] = 0xD000000000000019;
    v14[1] = 0x8000000185B76B30;
    (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v2);
    sub_185B1CC8C();
    sub_185B679FC();
    (*(v3 + 8))(v5, v2);
    sub_185B67A6C();
    (*(v15 + 8))(v8, v6);
    return sub_185AE2FC8(v11, v12);
  }

  return result;
}

id sub_185B1C9C4()
{
  v14[2] = *MEMORY[0x1E69E9840];
  v0 = sub_185B6795C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_185B67A0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  if (qword_1EA8CBAF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_1EA8CBAF8);
  v14[0] = 0xD000000000000019;
  v14[1] = 0x8000000185B76B30;
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F70], v0);
  sub_185B1CC8C();
  sub_185B679FC();
  (*(v1 + 8))(v3, v0);
  v9 = sub_185B6799C();
  (*(v5 + 8))(v7, v4);
  v14[0] = 0;
  v10 = [v8 removeItemAtURL:v9 error:v14];

  if (v10)
  {
    return v14[0];
  }

  v12 = v14[0];
  sub_185B6792C();

  return swift_willThrow();
}

unint64_t sub_185B1CC8C()
{
  result = qword_1EA8CB6D8;
  if (!qword_1EA8CB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CB6D8);
  }

  return result;
}

uint64_t sub_185B1CCE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_185B1CD28()
{
  result = qword_1EA8CB7A0;
  if (!qword_1EA8CB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CB7A0);
  }

  return result;
}

uint64_t sub_185B1CD7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Backup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_185B1CDE0(uint64_t a1)
{
  v2 = type metadata accessor for Backup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_185B1CE3C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA8CD2B0, &qword_185B6D8B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_185B1CEA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Backup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_185B1CF38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2D8, &qword_185B6D8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for Backup.BackupCodingKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Backup.BackupCodingKey(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_185B1D0FC()
{
  result = qword_1EA8CD2E8;
  if (!qword_1EA8CD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD2E8);
  }

  return result;
}

unint64_t sub_185B1D154()
{
  result = qword_1EA8CB790;
  if (!qword_1EA8CB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CB790);
  }

  return result;
}

unint64_t sub_185B1D1AC()
{
  result = qword_1EA8CB798;
  if (!qword_1EA8CB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CB798);
  }

  return result;
}

void sub_185B1D230(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

id sub_185B1D2AC(uint64_t a1)
{
  result = APGetMaintenanceServiceInterface(a1);
  qword_1EA8D2310 = result;
  return result;
}

id sub_185B1D350()
{
  if (qword_1EA8CBBE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2310;

  return v0;
}

id sub_185B1D3F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_185B1D49C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APMaintenanceService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection20APMaintenanceService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

id sub_185B1D518()
{
  v0 = type metadata accessor for APMaintenanceClient();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC13AppProtection19APMaintenanceClient_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1EF469D88;
  swift_unknownObjectWeakAssign();
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_185B1D598(uint64_t a1)
{
  result = sub_185B1D5DC(&qword_1EA8CBBD0, MEMORY[0x1E69E81B8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_185B1D5DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for APMaintenanceClient();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_185B1D61C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection20APMaintenanceService_policy, v11);
    swift_unknownObjectRelease();
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v5 + 120))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v6 = sub_185B67B8C();
  __swift_project_value_buffer(v6, qword_1EA8D2278);
  v7 = sub_185B67B6C();
  v8 = sub_185B680AC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_185AC1000, v7, v8, "all accesses cleared.", v9, 2u);
    MEMORY[0x1865FE2F0](v9, -1, -1);
  }

  return (*(a2 + 16))(a2, 0);
}

void sub_185B1D8E0(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = (Strong + OBJC_IVAR____TtC13AppProtection20APMaintenanceService_policy);
    sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection20APMaintenanceService_policy, v37);
    v5 = v38;
    v6 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v6 + 24))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    sub_185ADF8F0(v4, v37);
    v7 = v38;
    v8 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v8 + 16))(v7, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    sub_185ADF8F0(v4, v37);
    v9 = v38;
    v10 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v10 + 32))(v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    sub_185ADF8F0(v4, v37);
    v11 = v38;
    v12 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v34 = (*(v12 + 128))(v11, v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    v14 = objc_allocWithZone(APClientState);
    v15 = sub_185B67FCC();

    v16 = sub_185B67FCC();

    v17 = sub_185B67FCC();

    v18 = [v14 initWithLockedAppBundleIdentifiers:v15 hiddenAppBundleIdentifiers:v16 effectivelyLockedBundleIdentifiers:v17];

    v19 = v4[3];
    v20 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v19);
    v21 = (*(v20 + 184))(v19, v20);
    v22 = [objc_opt_self() sharedInstance];
    v23 = [v22 isFeatureEnabled];

    v24 = objc_allocWithZone(APStateDump);
    v25 = _s17AccessListWrapperCMa();
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR____TtCE13AppProtectionCSo11APStateDumpP33_08AD371E34EDC7245D13D99B4228357017AccessListWrapper_accesses] = v34;
    v36.receiver = v26;
    v36.super_class = v25;
    v27 = v18;
    v28 = objc_msgSendSuper2(&v36, sel_init);
    v29 = _s19AssertionMapWrapperCMa();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtCE13AppProtectionCSo11APStateDumpP33_08AD371E34EDC7245D13D99B4228357019AssertionMapWrapper_authAssertions] = v21;
    v35.receiver = v30;
    v35.super_class = v29;
    v31 = objc_msgSendSuper2(&v35, sel_init);
    v32 = [v24 initWithState:v27 accesses:v28 authAssertions:v31 dtoEnabled:v23];

    (*(a2 + 16))(a2, v32, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
    v33 = sub_185B6791C();
    (*(a2 + 16))(a2, 0, v33);
  }
}

uint64_t sub_185B1DD70()
{
  result = sub_185B1DD94();
  byte_1EA8D22E0 = result & 1;
  return result;
}

uint64_t sub_185B1DD94()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    v1 = [objc_opt_self() processInfo];
    v2 = [v1 environment];

    v3 = sub_185B67D8C();
    if (*(v3 + 16))
    {
      sub_185AC9F40(0xD000000000000010, 0x8000000185B76CC0);
      if (v4)
      {
      }
    }

    v5 = sub_185B67EFC();

    return v5 > 0;
  }

  return result;
}

double sub_185B1DEAC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, _DWORD *a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a6;
  v74 = a5;
  v72 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v66 - v12;
  v14 = sub_185B67AFC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v66 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v66 - v22;
  if (a2)
  {
    v24 = 0x8000000185B75730;
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v25 = 0xD000000000000013;
    v26 = sub_185B67B8C();
    __swift_project_value_buffer(v26, qword_1EA8D2278);

    v27 = sub_185B67B6C();
    v28 = sub_185B680AC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v76[0] = v30;
      *v29 = 136446466;
      *(v29 + 4) = sub_185ACB2C4(a1, a2, v76);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_185ACB2C4(0xD000000000000013, 0x8000000185B75730, v76);
      _os_log_impl(&dword_185AC1000, v27, v28, "Authenticating for viewSubject %{public}s inside %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865FE2F0](v30, -1, -1);
      MEMORY[0x1865FE2F0](v29, -1, -1);
    }

    v31 = 0;
    v32 = 0;
  }

  else
  {
    sub_185AE7B2C(a3, v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_185ACF5CC(v13, &unk_1EA8CD9A0, &unk_185B6C2C0);
      v31 = 0;
      v32 = 0;
      v25 = 0;
      v24 = 0;
    }

    else
    {
      (*(v15 + 32))(v23, v13, v14);
      v31 = sub_185AE948C(v23);
      v32 = v35;
      v71 = sub_185AE8F94(v23);
      v24 = v36;
      if (!v32 || !v36)
      {

        v50 = v15;
        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v51 = sub_185B67B8C();
        __swift_project_value_buffer(v51, qword_1EA8D2278);
        (*(v15 + 16))(v18, v23, v14);
        v52 = sub_185B67B6C();
        v53 = sub_185B680AC();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v73 = v54;
          v74 = swift_slowAlloc();
          *&v76[0] = v74;
          *v54 = 136446210;
          sub_185ACA328(&qword_1ED6F4640, MEMORY[0x1E69695E0]);
          v55 = sub_185B6856C();
          v57 = v56;
          v58 = *(v50 + 8);
          v58(v18, v14);
          v59 = sub_185ACB2C4(v55, v57, v76);

          v60 = v73;
          *(v73 + 1) = v59;
          v61 = v53;
          v62 = v60;
          _os_log_impl(&dword_185AC1000, v52, v61, "no containing bundle record for extension uuid %{public}s", v60, 0xCu);
          v63 = v74;
          __swift_destroy_boxed_opaque_existential_0Tm(v74);
          MEMORY[0x1865FE2F0](v63, -1, -1);
          MEMORY[0x1865FE2F0](v62, -1, -1);

          v58(v23, v14);
        }

        else
        {

          v64 = *(v50 + 8);
          v64(v18, v14);
          v64(v23, v14);
        }

        goto LABEL_15;
      }

      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v37 = sub_185B67B8C();
      __swift_project_value_buffer(v37, qword_1EA8D2278);
      v38 = v15;
      (*(v15 + 16))(v21, v23, v14);

      v39 = sub_185B67B6C();
      v40 = sub_185B680AC();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v68 = v40;
        v42 = v41;
        v69 = swift_slowAlloc();
        *&v76[0] = v69;
        *v42 = 136446466;
        sub_185ACA328(&qword_1ED6F4640, MEMORY[0x1E69695E0]);
        v70 = v39;
        v43 = sub_185B6856C();
        v45 = v44;
        v46 = *(v38 + 8);
        v66 = v43;
        v67 = v46;
        v46(v21, v14);
        v47 = sub_185ACB2C4(v66, v45, v76);

        v48 = v42;
        *(v42 + 4) = v47;
        *(v42 + 12) = 2080;
        v25 = v71;
        *(v48 + 14) = sub_185ACB2C4(v71, v24, v76);
        _os_log_impl(&dword_185AC1000, v70, v68, "Authenticating for extension %{public}s inside %s", v48, 0x16u);
        v49 = v69;
        swift_arrayDestroy();
        MEMORY[0x1865FE2F0](v49, -1, -1);
        MEMORY[0x1865FE2F0](v48, -1, -1);

        v67(v23, v14);
      }

      else
      {

        v65 = *(v38 + 8);
        v65(v21, v14);
        v65(v23, v14);
        v25 = v71;
      }
    }
  }

  if (v74)
  {
    ObjectType = swift_getObjectType();
    (*(v73 + 1))(v75, ObjectType);
    sub_185AC66F8(v75, v76);
    if (v24)
    {
      sub_185AC66F8(v76, a7 + 48);
      *a7 = v25;
      *(a7 + 8) = v24;
      *(a7 + 16) = v31;
      *(a7 + 24) = v32;
      *(a7 + 32) = 0;
      *(a7 + 40) = 0;
      *(a7 + 88) = 257;
      *(a7 + 92) = v72;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v76);
  }

  else
  {
  }

LABEL_15:
  result = 0.0;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  return result;
}

uint64_t sub_185B1E6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a3;
  v45 = a1;
  v46 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v39 - v8;
  v10 = sub_185B67AFC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v39 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v39 - v18;
  v20 = sub_185B67B1C();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = sub_185B67E0C();
  MEMORY[0x1EEE9AC00](v21 - 8);
  if (!a5)
  {
    v39[1] = v14;
    v40 = v17;
    v23 = v45;
    v41 = v19;
    v42 = v11;
    v43 = 0;
    sub_185B67DFC();
    type metadata accessor for APSettingsManager(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    sub_185B67B0C();
    sub_185B67EAC();
    v22 = a4;
    v26 = v46;
    if (v46)
    {
      v27 = objc_allocWithZone(MEMORY[0x1E69635F8]);

      v29 = sub_185AD006C(v23, v26, 0);
    }

    else
    {
      sub_185AE7B2C(v44, v9);
      v28 = v42;
      if ((*(v42 + 48))(v9, 1, v10) == 1)
      {

        sub_185ACF5CC(v9, &unk_1EA8CD9A0, &unk_185B6C2C0);
        goto LABEL_9;
      }

      v30 = v41;
      (*(v28 + 32))(v41, v9, v10);
      v31 = v40;
      (*(v28 + 16))(v40, v30, v10);
      v32 = objc_allocWithZone(MEMORY[0x1E69635D0]);
      v29 = sub_185AE9B34(v31);
      (*(v28 + 8))(v30, v10);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_185B6BB70;
    v34 = [v29 localizedName];
    v35 = sub_185B67E4C();
    v37 = v36;

    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = sub_185B06CBC();
    *(v33 + 32) = v35;
    *(v33 + 40) = v37;
    v22 = sub_185B67E7C();

    goto LABEL_9;
  }

  v22 = a4;
LABEL_9:

  return v22;
}

uint64_t sub_185B1EE48()
{
  v2 = *v0;
  v3 = *(*v0 + 16);
  if (!v3)
  {
    v4 = 0;
    Strong = 0;
    return sub_185B56E14(v4, Strong);
  }

  v4 = 0;
  for (i = 48; ; i += 16)
  {
    if (v4 >= v2[2])
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    sub_185AE7A7C(v2 + i - 16, v11);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_185AE7AD8(v11);
    if (!Strong)
    {
      break;
    }

    swift_unknownObjectRelease();
    if (v3 == ++v4)
    {
      v4 = v2[2];
      Strong = v4;
      return sub_185B56E14(v4, Strong);
    }
  }

  Strong = v4 + 1;
  if (v2[2] - 1 == v4)
  {
    return sub_185B56E14(v4, Strong);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_30;
  }

  while (2)
  {
    *v0 = v2;
    v6 = v2 + 4;
    v7 = v2[2];
    i += v2;
    while (1)
    {
      if (Strong >= v7)
      {
        goto LABEL_25;
      }

      sub_185AE7A7C(i, v11);
      v8 = swift_unknownObjectWeakLoadStrong();
      sub_185AE7AD8(v11);
      if (v8)
      {
        break;
      }

LABEL_13:
      ++Strong;
      v7 = v2[2];
      i += 16;
      if (Strong == v7)
      {
        goto LABEL_22;
      }
    }

    swift_unknownObjectRelease();
    if (Strong == v4)
    {
LABEL_12:
      ++v4;
      goto LABEL_13;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    v9 = v2[2];
    if (v4 >= v9)
    {
      goto LABEL_27;
    }

    sub_185AE7A7C(&v6[2 * v4], v11);
    if (Strong >= v9)
    {
      goto LABEL_28;
    }

    sub_185B1F618(i, &v6[2 * v4]);
    if (Strong < v2[2])
    {
      sub_185B1F650(v11, i);
      *v0 = v2;
      goto LABEL_12;
    }

    __break(1u);
LABEL_22:
    if (Strong < v4)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      v2 = sub_185B568D0(v2);
      continue;
    }

    return sub_185B56E14(v4, Strong);
  }
}

uint64_t sub_185B1F014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE70, &unk_185B6C5A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(a1 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(ObjectType, v18);
    swift_unknownObjectRelease();
    v20 = *(v5 + 56);
    v20(v17, 0, 1, v4);
  }

  else
  {
    v20 = *(v5 + 56);
    v20(v17, 1, 1, v4);
  }

  v21 = swift_getObjectType();
  (*(v35 + 8))(v21);
  v20(v15, 0, 1, v4);
  v22 = *(v7 + 48);
  sub_185AE7B2C(v17, v9);
  sub_185AE7B2C(v15, &v9[v22]);
  v23 = v5;
  v24 = *(v5 + 48);
  if (v24(v9, 1, v4) != 1)
  {
    v26 = v33;
    sub_185AE7B2C(v9, v33);
    if (v24(&v9[v22], 1, v4) != 1)
    {
      v27 = v23;
      v28 = &v9[v22];
      v29 = v32;
      (*(v23 + 32))(v32, v28, v4);
      sub_185ACA328(&qword_1ED6F45C0, MEMORY[0x1E69695C8]);
      v25 = sub_185B67DEC();
      v30 = *(v27 + 8);
      v30(v29, v4);
      sub_185ACF5CC(v15, &unk_1EA8CD9A0, &unk_185B6C2C0);
      sub_185ACF5CC(v17, &unk_1EA8CD9A0, &unk_185B6C2C0);
      v30(v33, v4);
      sub_185ACF5CC(v9, &unk_1EA8CD9A0, &unk_185B6C2C0);
      return v25 & 1;
    }

    sub_185ACF5CC(v15, &unk_1EA8CD9A0, &unk_185B6C2C0);
    sub_185ACF5CC(v17, &unk_1EA8CD9A0, &unk_185B6C2C0);
    (*(v23 + 8))(v26, v4);
    goto LABEL_9;
  }

  sub_185ACF5CC(v15, &unk_1EA8CD9A0, &unk_185B6C2C0);
  sub_185ACF5CC(v17, &unk_1EA8CD9A0, &unk_185B6C2C0);
  if (v24(&v9[v22], 1, v4) != 1)
  {
LABEL_9:
    sub_185ACF5CC(v9, &qword_1EA8CCE70, &unk_185B6C5A0);
    v25 = 0;
    return v25 & 1;
  }

  sub_185ACF5CC(v9, &unk_1EA8CD9A0, &unk_185B6C2C0);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_185B1F4B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v10[1] = a4;
  swift_unknownObjectWeakAssign();
  v6 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_185B3CB24(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_185B3CB24((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  sub_185B0B2D4(v10, &v6[2 * v8 + 4]);
  *a2 = v6;
  return sub_185B1EE48();
}

uint64_t sub_185B1F588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_185B56168(sub_185B1F5F8);
  v6 = *(*a2 + 16);
  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    sub_185B56E14(result, v6);
    return sub_185B1EE48();
  }

  return result;
}

id sub_185B1F698(uint64_t a1)
{
  result = APGetWriteServiceInterface(a1);
  qword_1EA8D2368 = result;
  return result;
}

uint64_t sub_185B1F6F0(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, id, void *))
{
  v9 = _Block_copy(aBlock);
  v10 = sub_185B67E4C();
  v12 = v11;
  _Block_copy(v9);
  v13 = a1;
  a6(v10, v12, a4, v13, v9);
  _Block_release(v9);
  _Block_release(v9);
}

id sub_185B1F818()
{
  if (qword_1EA8CC3E0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2368;

  return v0;
}

id sub_185B1F8BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_185B1F964@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APWriteService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection14APWriteService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

id sub_185B1F9E0()
{
  v0 = type metadata accessor for APWriteClient();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC13AppProtection13APWriteClient_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1EF469EB8;
  swift_unknownObjectWeakAssign();
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_185B1FA60(uint64_t a1)
{
  result = sub_185B1FAA4(&qword_1EA8CBDF0, MEMORY[0x1E69E81B8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_185B1FAA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for APWriteClient();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_185B1FAE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v14[0]) = 0;
  if (AppProtectionFeatures.enabled.getter())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection14APWriteService_policy, v14);
      swift_unknownObjectRelease();
      v10 = v15;
      v11 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v11 + 56))(a1, a2, a3 & 1, v10, v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }

    (*(a5 + 16))(a5, 0);
  }

  else
  {
    v12 = sub_185AD0148(2uLL, 0, 0, 32, 0xD000000000000029, 0x8000000185B755F0);
    v13 = sub_185B6791C();
    (*(a5 + 16))(a5, v13);
  }
}

void sub_185B1FC98(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v14[0]) = 0;
  if (AppProtectionFeatures.enabled.getter())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection14APWriteService_policy, v14);
      swift_unknownObjectRelease();
      v10 = v15;
      v11 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v11 + 48))(a1, a2, a3 & 1, v10, v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }

    (*(a5 + 16))(a5, 0);
  }

  else
  {
    v12 = sub_185AD0148(2uLL, 0, 0, 46, 0xD000000000000029, 0x8000000185B755C0);
    v13 = sub_185B6791C();
    (*(a5 + 16))(a5, v13);
  }
}

void sub_185B1FE4C(int a1)
{
  if (notify_is_valid_token(a1))
  {
    v2 = notify_cancel(a1);
    if (v2)
    {
      v3 = v2;
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v4 = sub_185B67B8C();
      __swift_project_value_buffer(v4, qword_1ED6F5130);
      oslog = sub_185B67B6C();
      v5 = sub_185B6809C();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = v3;
        _os_log_impl(&dword_185AC1000, oslog, v5, "could not unregister for changes: %u", v6, 8u);
        MEMORY[0x1865FE2F0](v6, -1, -1);
      }
    }
  }
}

uint64_t sub_185B1FF78()
{
  sub_185B1FE4C(*(v0 + 32));
  v1 = *(v0 + 40);

  os_unfair_lock_lock(v1 + 8);
  sub_185B1FE4C(v1[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v1 + 8);

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_185B1FFF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 40);

    os_unfair_lock_lock((v3 + 32));
    v4 = *(v3 + 24);

    os_unfair_lock_unlock((v3 + 32));

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 40;
      do
      {
        v7 = *(v6 - 8);

        v7(v8);

        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t sub_185B200C4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 16);

    os_unfair_lock_lock(v2 + 12);
    sub_185B205EC(&v2[4]);
    os_unfair_lock_unlock(v2 + 12);
  }

  return result;
}

uint64_t sub_185B20150(__int128 *a1, uint64_t a2)
{
  if (qword_1ED6F4CB0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v4 = sub_185B67B8C();
  __swift_project_value_buffer(v4, qword_1ED6F5130);
  sub_185B206C4(a1, &v25);
  v5 = sub_185B67B6C();
  v6 = sub_185B680AC();
  sub_185ACC058(a1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    v9 = a1[1];
    v25 = *a1;
    v26 = v9;
    v27 = a1[2];
    v28 = *(a1 + 12);
    sub_185B206C4(a1, &v23);
    v10 = sub_185B67EBC();
    v12 = sub_185ACB2C4(v10, v11, &v24);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_185AC1000, v5, v6, "diff is %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1865FE2F0](v8, -1, -1);
    MEMORY[0x1865FE2F0](v7, -1, -1);
  }

  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = *(*(a2 + 56) + ((v18 << 10) | (16 * v19)));
      v21 = a1[1];
      v25 = *a1;
      v26 = v21;
      v27 = a1[2];
      v28 = *(a1 + 12);

      v20(&v25);

      if (!v15)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v18 >= v16)
    {
    }

    v15 = *(a2 + 64 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_12;
    }
  }
}

uint64_t sub_185B203B4()
{
  type metadata accessor for ServerBackedClientPolicyStore.Wrapper();
  inited = swift_initStackObject();
  *(inited + 16) = [objc_allocWithZone(APClientState) init];
  v2 = [objc_allocWithZone(APClientState) init];
  v3 = *(v0 + 16);

  os_unfair_lock_lock((v3 + 48));
  sub_185B20668((v3 + 16));
  os_unfair_lock_unlock((v3 + 48));

  return *(inited + 16);
}

uint64_t sub_185B2046C()
{

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_185B204D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_185B20520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_185B20560(uint64_t a1, int a2)
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

uint64_t sub_185B205A8(uint64_t result, int a2, int a3)
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

uint64_t sub_185B20614(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return v2(v5);
}

void sub_185B20668(void **a1)
{
  v3 = *(v1 + 24);
  sub_185AC31B8(a1);
  v4 = *a1;
  v5 = *(v3 + 16);
  *(v3 + 16) = *a1;
  v6 = v4;
}

AppProtection::ManagedAppProtectability __swiftcall ManagedAppProtectability.init(lockable:hideable:)(Swift::Bool lockable, Swift::Bool hideable)
{
  *v2 = lockable;
  v2[1] = hideable;
  result.lockable = lockable;
  return result;
}

uint64_t ManagedAppProtectability.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_185B6836C();
  MEMORY[0x1865FCF60](0xD000000000000023, 0x8000000185B76FA0);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1865FCF60](v3, v4);

  MEMORY[0x1865FCF60](0x626165646968202CLL, 0xEC000000203A656CLL);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1865FCF60](v5, v6);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_185B208D8()
{
  if (*v0)
  {
    return 0x656C626165646968;
  }

  else
  {
    return 0x656C62616B636F6CLL;
  }
}

uint64_t sub_185B2090C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C62616B636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_185B6859C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C626165646968 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_185B6859C();

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

uint64_t sub_185B209F4(uint64_t a1)
{
  v2 = sub_185B20BF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_185B20A30(uint64_t a1)
{
  v2 = sub_185B20BF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppProtectability.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD320, &qword_185B6DCE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  v10 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B20BF8();
  sub_185B686FC();
  v12 = 0;
  sub_185B684FC();
  if (!v2)
  {
    v11 = 1;
    sub_185B684FC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_185B20BF8()
{
  result = qword_1EA8CD328;
  if (!qword_1EA8CD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD328);
  }

  return result;
}

uint64_t ManagedAppProtectability.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD330, &qword_185B6DCE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B20BF8();
  sub_185B686EC();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_185B684AC();
    v13 = 1;
    v11 = sub_185B684AC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    a2[1] = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t ManagementInterfaceEvent.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v4 == 2)
    {
      sub_185B6836C();

      v6 = "appLockabilityChanged(";
    }

    else
    {
      sub_185B6836C();

      v6 = "appHideabilityChanged(";
    }

    v11 = 0xD000000000000016;
    v12 = (v6 - 32) | 0x8000000000000000;
    MEMORY[0x1865FCF60](v1, v2);
    MEMORY[0x1865FCF60](8236, 0xE200000000000000);
    v7 = (v3 & 1) == 0;
  }

  else
  {
    if (v4)
    {
      sub_185B6836C();

      v5 = "deviceHideCapabilityRestrictionChanged(";
    }

    else
    {
      sub_185B6836C();

      v5 = "deviceLockCapabilityRestrictionChanged(";
    }

    v11 = 0xD000000000000027;
    v12 = (v5 - 32) | 0x8000000000000000;
    v7 = (v1 & 1) == 0;
  }

  if (v7)
  {
    v8 = 0x65736C6166;
  }

  else
  {
    v8 = 1702195828;
  }

  if (v7)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x1865FCF60](v8, v9);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  MEMORY[0x1865FCF60](v11, v12);

  return 0xD000000000000019;
}

uint64_t getEnumTagSinglePayload for ManagedAppProtectability(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ManagedAppProtectability(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_185B211A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_185B211F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

unint64_t sub_185B212E0()
{
  result = qword_1EA8CD338;
  if (!qword_1EA8CD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD338);
  }

  return result;
}

unint64_t sub_185B21338()
{
  result = qword_1EA8CD340;
  if (!qword_1EA8CD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD340);
  }

  return result;
}

unint64_t sub_185B21390()
{
  result = qword_1EA8CD348;
  if (!qword_1EA8CD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD348);
  }

  return result;
}

uint64_t sub_185B213E4()
{
  v0 = sub_185B680DC();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_185B67CDC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_185B680EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185AC7294();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  sub_185B67CBC();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_185AE8448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AE84A0();
  sub_185B682CC();
  result = sub_185B6813C();
  qword_1EA8CB7E0 = result;
  return result;
}

void sub_185B215E4()
{
  v1 = v0;
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v2 = sub_185B67B8C();
  __swift_project_value_buffer(v2, qword_1EA8D2278);
  v3 = sub_185B67B6C();
  v4 = sub_185B680AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_185AC1000, v3, v4, "resuming accountsd translator", v5, 2u);
    MEMORY[0x1865FE2F0](v5, -1, -1);
  }

  v6 = [objc_opt_self() sharedSubscriber];
  v8[4] = sub_185B21B04;
  v8[5] = v1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_185B21A14;
  v8[3] = &block_descriptor_13;
  v7 = _Block_copy(v8);

  [v6 registerAccountChangeEventHandler_];
  _Block_release(v7);
}

uint64_t sub_185B21784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EA8CB7D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EA8CB7E0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_185B21B0C;
  *(v5 + 24) = a3;
  v8[4] = sub_185AE7934;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_185AD94F4;
  v8[3] = &block_descriptor_4;
  v6 = _Block_copy(v8);

  dispatch_sync(v4, v6);
  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_185B218F0(uint64_t a1)
{
  v2 = sub_185B6781C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B67E1C();
  memset(v9, 0, sizeof(v9));
  sub_185B677EC();
  v6 = *(a1 + 16);
  v7 = sub_185B677CC();
  [v6 postNotification_];

  return (*(v3 + 8))(v5, v2);
}

void sub_185B21A14(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

id sub_185B21A8C()
{
  type metadata accessor for AccountsdXPCEventStreamTranslator();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
  *(v0 + 16) = result;
  qword_1EA8D22C0 = v0;
  return result;
}

id sub_185B21B1C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *MEMORY[0x1E696A798];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB60;
  *(inited + 32) = 0x656E694C5041;
  v14 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = a4;
  *(inited + 72) = v14;
  *(inited + 80) = 0x636E75465041;
  v15 = MEMORY[0x1E69E6158];
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = a5;
  *(inited + 104) = a6;
  v16 = v12;

  sub_185AD038C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
  swift_arrayDestroy();
  if (a3)
  {
    v17 = sub_185B67E4C();
    v19 = v18;
    v27 = v15;
    *&v26 = a2;
    *(&v26 + 1) = a3;
    sub_185AD093C(&v26, v25);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_185ACFF1C(v25, v17, v19, isUniquelyReferenced_nonNull_native);
  }

  v21 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v22 = sub_185B67D7C();

  v23 = [v21 initWithDomain:v16 code:a1 userInfo:v22];

  return v23;
}

uint64_t sub_185B21D18(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v7);
      if (v2)
      {

        v4 = v2;
        v2 = 0;
      }

      else
      {
      }

      v5 += 16;
      --v3;
    }

    while (v3);
    if (v4)
    {
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_185B21DC0()
{
  container_error_free();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_185B21E1C()
{
  v0 = container_error_copy_unlocalized_description();
  if (!v0)
  {
    return 0x296C6C756E28;
  }

  v1 = v0;
  v2 = sub_185B67F1C();
  free(v1);
  return v2;
}

unint64_t sub_185B21E84(unint64_t __errnum)
{
  if (__errnum >> 62)
  {
    if (__errnum >> 62 != 1)
    {
      return 0xD000000000000032;
    }

    if (strerror(__errnum))
    {
      v1 = sub_185B67F1C();
      v3 = v2;
    }

    else
    {
      sub_185B6836C();

      v8 = sub_185B6856C();
      MEMORY[0x1865FCF60](v8);

      v1 = 0x6E776F6E6B6E7528;
      v3 = 0xEF206F6E72726520;
    }

    sub_185B6836C();

    v9 = 0xD00000000000002CLL;
  }

  else
  {
    sub_185B6836C();

    v9 = 0xD000000000000022;
    v4 = container_error_copy_unlocalized_description();
    if (v4)
    {
      v5 = v4;
      v1 = sub_185B67F1C();
      v3 = v6;
      free(v5);
    }

    else
    {
      v3 = 0xE600000000000000;
      v1 = 0x296C6C756E28;
    }
  }

  MEMORY[0x1865FCF60](v1, v3);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  return v9;
}

uint64_t sub_185B22068@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC818, &qword_185B6E0C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v24 - v6;
  v8 = sub_185B67A0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!container_query_create())
  {
    sub_185B22670();
    swift_allocError();
    *v15 = 0x8000000000000000;
    return swift_willThrow();
  }

  container_query_set_class();
  container_query_operation_set_flags();
  if (a2)
  {
    container_query_set_persona_unique_string();
  }

  if (container_query_get_single_result())
  {
    result = container_get_path();
    if (result)
    {
      (*(v9 + 56))(v7, 1, 1, v8);
      sub_185B679AC();
      sub_185ACF5CC(v7, &qword_1EA8CC818, &qword_185B6E0C0);
      v13 = container_copy_sandbox_token();
      if (v13)
      {
        v14 = v13;
        if (sandbox_extension_consume() < 0)
        {
          v22 = MEMORY[0x1865FCC70]() | 0x4000000000000000;
          sub_185B22670();
          swift_allocError();
          *v23 = v22;
          swift_willThrow();
          (*(v9 + 8))(v11, v8);
          return container_query_free();
        }

        free(v14);
      }

      else
      {
        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v18 = sub_185B67B8C();
        __swift_project_value_buffer(v18, qword_1EA8D2278);
        v19 = sub_185B67B6C();
        v20 = sub_185B680AC();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_185AC1000, v19, v20, "No sandbox token in container, hoping for the best", v21, 2u);
          MEMORY[0x1865FE2F0](v21, -1, -1);
        }
      }

      (*(v9 + 32))(a3, v11, v8);
      return container_query_free();
    }

    __break(1u);
  }

  else
  {
    result = container_query_get_last_error();
    if (result)
    {
      type metadata accessor for ContainerErrorCopy();
      v16 = swift_allocObject();
      *(v16 + 16) = container_error_copy();
      sub_185B22670();
      swift_allocError();
      *v17 = v16;
      swift_willThrow();
      return container_query_free();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185B22410()
{
  v0 = sub_185B67A0C();
  __swift_allocate_value_buffer(v0, qword_1EA8CBC10);
  v1 = __swift_project_value_buffer(v0, qword_1EA8CBC10);
  return sub_185B22068(*MEMORY[0x1E69E9980], v1);
}

uint64_t sub_185B22544()
{
  v0 = sub_185B67A0C();
  __swift_allocate_value_buffer(v0, qword_1EA8CBAF8);
  v1 = __swift_project_value_buffer(v0, qword_1EA8CBAF8);
  return sub_185B22068(0, v1);
}

unint64_t sub_185B22670()
{
  result = qword_1EA8CD350;
  if (!qword_1EA8CD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD350);
  }

  return result;
}

uint64_t sub_185B226C4@<X0>(char *a1@<X8>)
{
  v81 = a1;
  v1 = sub_185B678AC();
  v76 = *(v1 - 8);
  v77 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v79 = (&v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_185B67E9C();
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v72 - v7;
  v9 = sub_185B67AFC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v84 = &v72 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v73 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v72 - v18;
  v19 = sub_185B6795C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_185B67A0C();
  v80 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CBC08 != -1)
  {
    v71 = v24;
    swift_once();
    v24 = v71;
  }

  v82 = v24;
  __swift_project_value_buffer(v24, qword_1EA8CBC10);
  strcpy(v85, "InstanceUUID");
  BYTE5(v85[1]) = 0;
  HIWORD(v85[1]) = -5120;
  (*(v20 + 104))(v22, *MEMORY[0x1E6968F70], v19);
  sub_185B1CC8C();
  sub_185B679FC();
  (*(v20 + 8))(v22, v19);
  v83 = v26;
  v27 = sub_185B23394(v26);
  if (v28 >> 60 == 15)
  {
    v29 = v9;
    (*(v10 + 56))(v8, 1, 1, v9);
    v30 = v84;
LABEL_6:
    sub_185ACF5CC(v8, &unk_1EA8CD9A0, &unk_185B6C2C0);
    sub_185B67AEC();
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v34 = sub_185B67B8C();
    v35 = __swift_project_value_buffer(v34, qword_1EA8D2278);
    (*(v10 + 16))(v13, v30, v29);
    v78 = v35;
    v36 = sub_185B67B6C();
    v37 = sub_185B680AC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v85[0] = v39;
      *v38 = 136315138;
      sub_185B24474(&qword_1ED6F4640, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v40 = sub_185B6856C();
      v42 = v41;
      (*(v10 + 8))(v13, v29);
      v43 = sub_185ACB2C4(v40, v42, v85);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_185AC1000, v36, v37, "saving new container instance UUID %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      v44 = v39;
      v30 = v84;
      MEMORY[0x1865FE2F0](v44, -1, -1);
      MEMORY[0x1865FE2F0](v38, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v29);
    }

    sub_185B67AAC();
    sub_185B67E8C();
    v45 = sub_185B67E5C();
    v47 = v46;

    (*(v74 + 8))(v5, v75);
    if (v47 >> 60 == 15)
    {
      v48 = sub_185B67B6C();
      v49 = sub_185B6809C();
      v50 = os_log_type_enabled(v48, v49);
      v51 = v83;
      if (v50)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_185AC1000, v48, v49, "could not convert container instance UUID to string data!?", v52, 2u);
        MEMORY[0x1865FE2F0](v52, -1, -1);
      }
    }

    else
    {
      v51 = v83;
      sub_185B67A6C();
      sub_185B24210(v45, v47);
    }

    v53 = v79;
    sub_185B6789C();
    sub_185B6788C();
    sub_185B6798C();
    (*(v76 + 8))(v53, v77);
    (*(v10 + 32))(v81, v30, v29);
    v68 = v82;
    return (*(v80 + 8))(v51, v68);
  }

  v31 = v27;
  v32 = v28;
  sub_185B23698(v8);
  sub_185B24210(v31, v32);
  v29 = v9;
  v33 = (*(v10 + 48))(v8, 1, v9);
  v30 = v84;
  if (v33 == 1)
  {
    goto LABEL_6;
  }

  v54 = *(v10 + 32);
  v55 = v78;
  v54(v78, v8, v29);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v56 = sub_185B67B8C();
  __swift_project_value_buffer(v56, qword_1EA8D2278);
  v57 = v73;
  (*(v10 + 16))(v73, v55, v29);
  v58 = sub_185B67B6C();
  v59 = sub_185B680AC();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v84 = v54;
    v61 = v60;
    v79 = swift_slowAlloc();
    v85[0] = v79;
    *v61 = 136315138;
    sub_185B24474(&qword_1ED6F4640, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v62 = sub_185B6856C();
    v64 = v63;
    (*(v10 + 8))(v57, v29);
    v65 = sub_185ACB2C4(v62, v64, v85);

    *(v61 + 4) = v65;
    _os_log_impl(&dword_185AC1000, v58, v59, "loaded container instance UUID %s", v61, 0xCu);
    v66 = v79;
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    MEMORY[0x1865FE2F0](v66, -1, -1);
    v67 = v61;
    v54 = v84;
    MEMORY[0x1865FE2F0](v67, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v57, v29);
  }

  v69 = v82;
  v51 = v83;
  sub_185B23A68(v83);
  v54(v81, v55, v29);
  v68 = v69;
  return (*(v80 + 8))(v51, v68);
}

uint64_t sub_185B23394(uint64_t a1)
{
  v1 = sub_185B67A0C();
  MEMORY[0x1EEE9AC00](v1);
  return sub_185B67A1C();
}

uint64_t sub_185B23698@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_185B67E9C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_185B67E8C();
  v8 = sub_185B67E6C();
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    sub_185B67A9C();
    v12 = sub_185B67AFC();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6, 1, v12) != 1)
    {

      (*(v13 + 32))(a3, v6, v12);
      return (*(v13 + 56))(a3, 0, 1, v12);
    }

    sub_185ACF5CC(v6, &unk_1EA8CD9A0, &unk_185B6C2C0);
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v14 = sub_185B67B8C();
    __swift_project_value_buffer(v14, qword_1EA8D2278);

    v15 = sub_185B67B6C();
    v16 = sub_185B6808C();

    if (!os_log_type_enabled(v15, v16))
    {

      goto LABEL_14;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315138;
    v19 = sub_185ACB2C4(v11, v10, &v27);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_185AC1000, v15, v16, "Could not parse %s as a UUID", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x1865FE2F0](v18, -1, -1);
    v20 = v17;
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v21 = sub_185B67B8C();
    __swift_project_value_buffer(v21, qword_1EA8D2278);
    v15 = sub_185B67B6C();
    v22 = sub_185B6808C();
    if (!os_log_type_enabled(v15, v22))
    {
      goto LABEL_14;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_185AC1000, v15, v22, "could not parse data as UTF-8", v23, 2u);
    v20 = v23;
  }

  MEMORY[0x1865FE2F0](v20, -1, -1);
LABEL_14:

  v25 = sub_185B67AFC();
  return (*(*(v25 - 8) + 56))(a3, 1, 1, v25);
}

void sub_185B23A68(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = sub_185B67A0C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_185B678AC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD358, &qword_185B6E0C8);
  inited = swift_initStackObject();
  v63 = xmmword_185B6BB70;
  *(inited + 16) = xmmword_185B6BB70;
  v10 = *MEMORY[0x1E695DAF0];
  *(inited + 32) = *MEMORY[0x1E695DAF0];
  v11 = v10;
  sub_185B24224(inited);
  swift_setDeallocating();
  sub_185B24418(inited + 32);
  sub_185B6796C();

  v54 = sub_185B6787C();
  (*(v6 + 8))(v8, v5);
  if (v54)
  {
    v55 = sub_185B67E4C();
    v57 = v56;
    if (v55 == sub_185B67E4C() && v57 == v58)
    {

      return;
    }

    v60 = sub_185B6859C();

    if (v60)
    {

      return;
    }
  }

  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v12 = sub_185B67B8C();
  __swift_project_value_buffer(v12, qword_1EA8D2278);
  v13 = v54;
  v14 = sub_185B67B6C();
  v15 = sub_185B6808C();

  v16 = os_log_type_enabled(v14, v15);
  v62 = v13;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = v3;
    v19 = v2;
    v20 = swift_slowAlloc();
    v64 = v54;
    v65 = v20;
    *v17 = 136446210;
    v21 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD370, &qword_185B6E0E0);
    v22 = sub_185B67EBC();
    v24 = sub_185ACB2C4(v22, v23, &v65);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_185AC1000, v14, v15, "File protection on instance UUID file was %{public}s, trying to correct...", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v25 = v20;
    v2 = v19;
    v3 = v18;
    MEMORY[0x1865FE2F0](v25, -1, -1);
    MEMORY[0x1865FE2F0](v17, -1, -1);
  }

  v26 = [objc_opt_self() defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD360, &qword_185B6E0D0);
  v27 = swift_initStackObject();
  *(v27 + 16) = v63;
  v28 = *MEMORY[0x1E696A3A0];
  *(v27 + 32) = *MEMORY[0x1E696A3A0];
  v29 = *MEMORY[0x1E696A3A8];
  type metadata accessor for FileProtectionType(0);
  *(v27 + 64) = v30;
  *(v27 + 40) = v29;
  v31 = v28;
  v32 = v29;
  sub_185B52D50(v27);
  swift_setDeallocating();
  sub_185ACF5CC(v27 + 32, &qword_1EA8CD368, &qword_185B6E0D8);
  type metadata accessor for FileAttributeKey(0);
  sub_185B24474(&qword_1EA8CCA48, type metadata accessor for FileAttributeKey, &unk_185B6BAE8);
  v33 = sub_185B67D7C();

  sub_185B679DC();
  v34 = sub_185B67E1C();

  v65 = 0;
  LODWORD(v29) = [v26 setAttributes:v33 ofItemAtPath:v34 error:&v65];

  if (v29)
  {
    v35 = v65;
  }

  else
  {
    v36 = v65;
    v37 = sub_185B6792C();

    swift_willThrow();
    v38 = v61;
    (*(v3 + 16))(v61, a1, v2);
    v39 = v37;
    v40 = sub_185B67B6C();
    v41 = sub_185B6808C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = v3;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v65 = v45;
      *v42 = 136446466;
      sub_185B24474(&qword_1EA8CBFF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v46 = sub_185B6856C();
      v47 = v38;
      v48 = v46;
      v50 = v49;
      (*(v43 + 8))(v47, v2);
      v51 = sub_185ACB2C4(v48, v50, &v65);

      *(v42 + 4) = v51;
      *(v42 + 12) = 2112;
      v52 = v37;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v53;
      *v44 = v53;
      _os_log_impl(&dword_185AC1000, v40, v41, "Could not set file protection of %{public}s: %@", v42, 0x16u);
      sub_185ACF5CC(v44, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x1865FE2F0](v45, -1, -1);
      MEMORY[0x1865FE2F0](v42, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v38, v2);
    }
  }
}

uint64_t sub_185B24210(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_185AE2FC8(result, a2);
  }

  return result;
}

uint64_t sub_185B24224(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD378, &qword_185B6E0E8);
    v3 = sub_185B6834C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_185B67E4C();
      sub_185B6866C();
      v27 = v7;
      sub_185B67EEC();
      v8 = sub_185B686AC();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_185B67E4C();
        v18 = v17;
        if (v16 == sub_185B67E4C() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_185B6859C();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_185B24418(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_185B24474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t get_enum_tag_for_layout_string_13AppProtection19ContainerFetchError33_D5166DC3C354ECCF2AE9EE69E5553F59LLO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_185B244D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 8))
  {
    return (*a1 + 14);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_185B24528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *sub_185B24584(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

id sub_185B245BC(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = sub_185B67E1C();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_185B6792C();

    swift_willThrow();
  }

  return v5;
}

void sub_185B246A4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v192 = a3;
  v198 = *MEMORY[0x1E69E9840];
  v6 = sub_185B67C9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v185 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_185B67CDC();
  v184 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v183 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_185B67B1C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_185B67E0C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = os_transaction_create();
  v15 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  v16 = *(v3 + 16);
  *(v3 + 16) = v15;
  v17 = v15;

  if (!v17)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v27 = sub_185B67B8C();
    __swift_project_value_buffer(v27, qword_1EA8D2278);
    v28 = sub_185B67B6C();
    v29 = sub_185B6808C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_185AC1000, v28, v29, "Unexpected nil LAContext", v30, 2u);
      MEMORY[0x1865FE2F0](v30, -1, -1);
    }

    v191 = sub_185AD0148(0xBuLL, 0, 0, 73, 0xD000000000000027, 0x8000000185B773C0);
    a2(0);
    swift_unknownObjectRelease();
    v31 = v191;

    return;
  }

  v179 = v12;
  v173 = v7;
  v174 = v6;
  v180 = v3;
  v181 = a2;
  v182 = v14;
  v18 = *(a1 + 72);
  v178 = *(a1 + 64);
  v19 = *(a1 + 48);
  v176 = *(a1 + 40);
  v20 = *(a1 + 8);
  v190 = *a1;
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  v23 = *(a1 + 32);
  v191 = v17;
  v189 = v21;
  v188 = v20;
  v187 = v22;
  if (v23 >= 0xFE)
  {
    v24 = v18;
    if (!v18)
    {
      v33 = 0;
      v25 = 0;
      v177 = 0;
      goto LABEL_34;
    }

    v175 = v19;
    swift_bridgeObjectRetain_n();
    v25 = 0;
    v26 = 0;
    goto LABEL_26;
  }

  v175 = v19;
  if ((v23 & 0x80) != 0)
  {
    *aBlock.val = 0;
    v34 = v190;
    sub_185B26EC8(v190, v20, v22, v21, v23);

    sub_185B26EC8(v34, v20, v22, v21, v23);
    v35 = [v34 findApplicationRecordWithError_];
    v36 = *aBlock.val;
    if (!v35)
    {
      v42 = v36;
      v43 = sub_185B6792C();

      swift_willThrow();
      v17 = v191;

      v177 = 0;
      v44 = v20;
      v25 = v20;
      if (!v18)
      {
        goto LABEL_30;
      }

      sub_185B26DBC(v190, v20, v187, v189, v23);
      v177 = 0;
LABEL_25:
      v24 = v18;

      v26 = v177;
LABEL_26:
      sub_185ADF590(0, &qword_1EA8CD3B0, 0x1E6963620);
      v33 = sub_185B245BC(v178, v24, 1);
      if (v26)
      {

        v33 = 0;
      }

      v177 = 0;
      v17 = v191;
      goto LABEL_33;
    }

    v177 = 0;
    v25 = v20;
    v32 = v35;
    if (!v18)
    {
LABEL_20:
      if (v32)
      {
        v38 = v32;
        v39 = [v32 bundleIdentifier];
        if (v39)
        {
          v40 = v39;
          v178 = sub_185B67E4C();
          v24 = v41;
          sub_185B26DBC(v190, v188, v187, v189, v23);
        }

        else
        {
          sub_185B26DBC(v190, v188, v187, v189, v23);
          v178 = 0;
          v24 = 0;
        }

        v33 = v38;
        goto LABEL_33;
      }

      v44 = v25;
LABEL_30:
      sub_185B26DBC(v190, v20, v187, v189, v23);
      v33 = 0;
      v178 = 0;
      v24 = 0;
      v19 = v175;
      v25 = v44;
      goto LABEL_34;
    }
  }

  else
  {
    sub_185ADF590(0, &qword_1EA8CD3B0, 0x1E6963620);

    v32 = sub_185B2EC58(v190, v20, v22, v21);
    v177 = 0;
    v25 = v23;
    v17 = v191;
    v20 = v188;
    if (!v18)
    {
      goto LABEL_20;
    }
  }

  v37 = v32;
  sub_185B26DBC(v190, v20, v187, v189, v23);
  if (!v37)
  {
    goto LABEL_25;
  }

  v33 = v37;
  v24 = v18;
LABEL_33:
  v19 = v175;
LABEL_34:
  v179 = v33;
  if (v19)
  {
    v45 = sub_185B67E1C();
    [v17 setOptionAuthenticationReason_];
  }

  else
  {
    if (!v33)
    {
      goto LABEL_42;
    }

    v45 = v33;
    sub_185B67DFC();
    type metadata accessor for APSettingsManager(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v47 = [objc_opt_self() bundleForClass_];
    sub_185B67B0C();
    if (v25)
    {
      sub_185B67EAC();
    }

    else
    {
      v176 = sub_185B67EAC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
      v48 = v23;
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_185B6BB70;
      v50 = [v45 localizedName];
      v51 = sub_185B67E4C();
      v53 = v52;

      *(v49 + 56) = MEMORY[0x1E69E6158];
      *(v49 + 64) = sub_185B06CBC();
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      sub_185B67E7C();

      v23 = v48;
    }

    v54 = sub_185B67E1C();

    [v17 setOptionAuthenticationReason_];
  }

LABEL_42:
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  v56 = (v55 + 16);
  LODWORD(v176) = *(a1 + 56);
  if (v176)
  {
    sub_185ADF590(0, &qword_1EA8CC020, 0x1E696AD98);
    v57 = sub_185B6825C();
    [v17 setOptionNoFailureUI_];

    v58 = sub_185B6826C();
    [v17 setOptionMaxBiometryFailures_];

    v59 = v189;
    if (*(a1 + 57) & 1) != 0 && (v60 = [objc_opt_self() currentUser], v61 = objc_msgSend(v60, sel_state), v60, v62 = objc_msgSend(v61, sel_biometry), v61, v62) && (v63 = objc_msgSend(v62, sel_isUsable), v62, (v63))
    {
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v64 = sub_185B67B8C();
      __swift_project_value_buffer(v64, qword_1EA8D2278);

      v65 = sub_185B67B6C();
      v66 = sub_185B6807C();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *aBlock.val = v68;
        *v67 = 136315138;
        if (v24)
        {
          v69 = v178;
        }

        else
        {
          v69 = 0;
        }

        if (!v24)
        {
          v24 = 0xE000000000000000;
        }

        v70 = v23;
        v71 = sub_185ACB2C4(v69, v24, &aBlock);

        *(v67 + 4) = v71;
        v23 = v70;
        v17 = v191;
        _os_log_impl(&dword_185AC1000, v65, v66, "First attempt auth for %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v68);
        MEMORY[0x1865FE2F0](v68, -1, -1);
        MEMORY[0x1865FE2F0](v67, -1, -1);
      }

      else
      {
      }

      v72 = 4;
    }

    else
    {

      v72 = 1025;
    }
  }

  else
  {

    v72 = 1025;
    v59 = v189;
  }

  LOBYTE(aBlock.val[0]) = 1;
  if (AppProtectionFeatures.enabled.getter())
  {
    v73 = [objc_allocWithZone(MEMORY[0x1E696EE80]) initWithDomain:0 authenticationContext:0];
    *aBlock.val = 0;
    v74 = [v73 numberForKey:14 error:&aBlock];
    v75 = *aBlock.val;
    if (v74)
    {
      v76 = v55;
      v77 = v74;
      [v77 doubleValue];
      if (v78 / 1000.0 <= 86400.0)
      {
        v72 = 1;
      }

      else
      {
        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v79 = sub_185B67B8C();
        __swift_project_value_buffer(v79, qword_1EA8D2278);
        v80 = sub_185B67B6C();
        v81 = sub_185B6807C();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = v23;
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_185AC1000, v80, v81, "Allowing passcode fallback after 24 hrs without successful bioauth", v83, 2u);
          v84 = v83;
          v23 = v82;
          v17 = v191;
          MEMORY[0x1865FE2F0](v84, -1, -1);
        }

        v72 = 2;
      }

      v55 = v76;
      v59 = v189;
    }

    else
    {
      v72 = 1;
    }

    if (v176)
    {
      sub_185ADF590(0, &qword_1EA8CC020, 0x1E696AD98);
      v85 = sub_185B6825C();
      [v17 setOptionPresentingEmbeddedUI_];
    }

    v86 = sub_185B67E1C();
    [v17 setLocalizedFallbackTitle_];
  }

  *aBlock.val = *v56;
  v87 = [v17 canEvaluatePolicy:v72 error:{&aBlock, v173, v174}];
  v88 = *aBlock.val;
  v89 = *v56;
  *v56 = *aBlock.val;
  v90 = v88;

  if (v87)
  {
    if (v72 == 1025)
    {
      sub_185ADF590(0, &qword_1EA8CC020, 0x1E696AD98);
      v91 = sub_185B6825C();
      [v17 setOptionUseShortExpirationTimer_];
    }

    if (!_AXSClarityBoardEnabled())
    {
      v92 = sub_185B6803C();
      [v17 setOptionLightweightUIMode_];
    }

    v93 = v188;
    if (v23 >= 0xFE)
    {
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v94 = sub_185B67B8C();
      __swift_project_value_buffer(v94, qword_1EA8D2278);
      v95 = sub_185B67B6C();
      v96 = sub_185B680AC();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_185AC1000, v95, v96, "will not bind authentication UI", v97, 2u);
        v98 = v97;
        v17 = v191;
        MEMORY[0x1865FE2F0](v98, -1, -1);
      }

      goto LABEL_103;
    }

    if ((v23 & 0x80) == 0)
    {
      v114 = v23;
      v115 = v190;
      v116 = HIDWORD(v190);
      v117 = HIDWORD(v188);
      v118 = v187;
      v119 = HIDWORD(v187);
      sub_185B26DBC(v190, v188, v187, v59, v114);
      *aBlock.val = __PAIR64__(v116, v115);
      *&aBlock.val[2] = __PAIR64__(v117, v93);
      *&aBlock.val[4] = __PAIR64__(v119, v118);
      *&aBlock.val[6] = v59;
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v120 = sub_185B67B8C();
      __swift_project_value_buffer(v120, qword_1EA8D2278);
      v121 = sub_185B67B6C();
      v122 = sub_185B680AC();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        *v123 = 67109120;
        swift_beginAccess();
        atoken = aBlock;
        *(v123 + 4) = audit_token_to_pid(&atoken);
        _os_log_impl(&dword_185AC1000, v121, v122, "Requesting LocalAuthentication bind UI to pid %d", v123, 8u);
        MEMORY[0x1865FE2F0](v123, -1, -1);
      }

      swift_beginAccess();
      v124 = sub_185AE35C4(&aBlock, 0x20uLL);
      v126 = v125;
      swift_endAccess();
      v127 = sub_185B67A4C();
      v128 = v191;
      [v191 setOptionCallerAuditToken_];

      v129 = sub_185B6803C();
      [v128 setOptionCallerAuditTokenUsage_];
LABEL_93:

      v17 = v128;
      v130 = v124;
      v131 = v126;
LABEL_102:
      sub_185AE2FC8(v130, v131);
LABEL_103:
      sub_185B532B4(MEMORY[0x1E69E7CC0]);
      v154 = sub_185B67D7C();

      v155 = swift_allocObject();
      swift_weakInit();
      v156 = swift_allocObject();
      v157 = v181;
      v156[2] = v155;
      v156[3] = v157;
      v158 = v182;
      v156[4] = v192;
      v156[5] = v158;
      v156[6] = v17;
      v196 = sub_185B26DE8;
      v197 = v156;
      *aBlock.val = MEMORY[0x1E69E9820];
      *&aBlock.val[2] = 1107296256;
      *&aBlock.val[4] = sub_185B265F0;
      *&aBlock.val[6] = &block_descriptor_22_1;
      v159 = _Block_copy(&aBlock);
      v160 = v17;

      swift_unknownObjectRetain();

      [v160 evaluatePolicy:v72 options:v154 reply:v159];

      swift_unknownObjectRelease();
      _Block_release(v159);

      return;
    }

    v132 = [objc_opt_self() predicateMatchingLSApplicationIdentity_];
    sub_185ADF590(0, &unk_1EA8CD390, 0x1E69C75D0);
    v133 = v132;
    v134 = v177;
    v135 = sub_185B26DF8(v133);
    if (v134)
    {
    }

    else
    {
      v161 = v135;

      if (v161)
      {
        [v161 auditToken];

        aBlock = atoken;
        v162 = v190;
        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v163 = sub_185B67B8C();
        __swift_project_value_buffer(v163, qword_1EA8D2278);
        v164 = v188;
        v165 = v187;
        sub_185B26EBC(v162, v188, v187, v59, v23);
        v166 = sub_185B67B6C();
        v167 = sub_185B680AC();
        sub_185B26DBC(v162, v164, v165, v59, v23);
        if (os_log_type_enabled(v166, v167))
        {
          v168 = swift_slowAlloc();
          v169 = swift_slowAlloc();
          *v168 = 67109378;
          swift_beginAccess();
          v193 = aBlock;
          *(v168 + 4) = audit_token_to_pid(&v193);
          *(v168 + 8) = 2114;
          *(v168 + 10) = v162;
          *v169 = v162;
          sub_185B26EBC(v162, v188, v165, v59, v23);
          _os_log_impl(&dword_185AC1000, v166, v167, "Requesting LocalAuthentication bind UI to pid %d from identity %{public}@", v168, 0x12u);
          sub_185AC3F6C(v169);
          MEMORY[0x1865FE2F0](v169, -1, -1);
          MEMORY[0x1865FE2F0](v168, -1, -1);
        }

        swift_beginAccess();
        v124 = sub_185AE35C4(&aBlock, 0x20uLL);
        v126 = v170;
        swift_endAccess();
        v171 = sub_185B67A4C();
        v128 = v191;
        [v191 setOptionCallerAuditToken_];

        v129 = sub_185B6803C();
        [v128 setOptionCallerAuditTokenUsage_];
        sub_185B26DBC(v162, v188, v165, v59, v23);
        goto LABEL_93;
      }
    }

    v136 = v190;
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v137 = sub_185B67B8C();
    __swift_project_value_buffer(v137, qword_1EA8D2278);
    v138 = v188;
    v139 = v187;
    sub_185B26EBC(v136, v188, v187, v59, v23);
    v140 = sub_185B67B6C();
    v141 = sub_185B680AC();
    v142 = v139;
    sub_185B26DBC(v136, v138, v139, v59, v23);
    if (os_log_type_enabled(v140, v141))
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      *v143 = 138412290;
      *(v143 + 4) = v136;
      *v144 = v136;
      sub_185B26EBC(v136, v188, v142, v59, v23);
      _os_log_impl(&dword_185AC1000, v140, v141, "Requesting LocalAuthentication bind UI to identity %@", v143, 0xCu);
      sub_185AC3F6C(v144);
      MEMORY[0x1865FE2F0](v144, -1, -1);
      MEMORY[0x1865FE2F0](v143, -1, -1);
    }

    v145 = objc_opt_self();
    *aBlock.val = 0;
    v146 = [v145 archivedDataWithRootObject:v136 requiringSecureCoding:1 error:&aBlock];
    v147 = *aBlock.val;
    if (v146)
    {
      v148 = sub_185B67A5C();
      v150 = v149;

      v151 = sub_185B67A4C();
      v152 = v191;
      [v191 setOptionCallerAuditToken_];

      v153 = sub_185B6803C();
      [v152 setOptionCallerAuditTokenUsage_];
      sub_185B26DBC(v136, v188, v142, v59, v23);

      v130 = v148;
      v131 = v150;
      v17 = v152;
      goto LABEL_102;
    }

    v172 = v147;
    sub_185B6792C();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_185B26DBC(v190, v188, v187, v59, v23);
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v99 = sub_185B67B8C();
    __swift_project_value_buffer(v99, qword_1EA8D2278);

    v100 = sub_185B67B6C();
    v101 = sub_185B6808C();

    v102 = os_log_type_enabled(v100, v101);
    v103 = v174;
    v104 = v173;
    if (v102)
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v105 = 138412290;
      swift_beginAccess();
      v107 = *v56;
      *(v105 + 4) = *v56;
      *v106 = v107;
      v108 = v107;
      _os_log_impl(&dword_185AC1000, v100, v101, "Can't evaluate device owner auth! Cannot continue. %@", v105, 0xCu);
      sub_185AC3F6C(v106);
      MEMORY[0x1865FE2F0](v106, -1, -1);
      MEMORY[0x1865FE2F0](v105, -1, -1);
    }

    v109 = swift_allocObject();
    v110 = v192;
    v109[2] = v181;
    v109[3] = v110;
    v109[4] = v55;
    v196 = sub_185B26DDC;
    v197 = v109;
    *aBlock.val = MEMORY[0x1E69E9820];
    *&aBlock.val[2] = 1107296256;
    *&aBlock.val[4] = sub_185ACA0E8;
    *&aBlock.val[6] = &block_descriptor_13;
    v111 = _Block_copy(&aBlock);

    v112 = v183;
    sub_185B67CBC();
    *v193.val = MEMORY[0x1E69E7CC0];
    sub_185B26D00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185B26D58();
    v113 = v185;
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v112, v113, v111);
    _Block_release(v111);
    swift_unknownObjectRelease();

    (*(v104 + 8))(v113, v103);
    (*(v184 + 8))(v112, v186);
  }
}

uint64_t sub_185B261EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(result + 24);

    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = a4;
    v15[5] = a5;
    v15[6] = a6;
    v15[7] = a7;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_185B26EDC;
    *(v16 + 24) = v15;
    aBlock[4] = sub_185AE7934;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185AD94F4;
    aBlock[3] = &block_descriptor_31;
    v17 = _Block_copy(aBlock);

    v18 = a2;
    swift_unknownObjectRetain();
    v19 = a7;

    dispatch_sync(v14, v17);

    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_185B263C4(uint64_t a1, void *a2, uint64_t (*a3)(void, void))
{
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v6 = sub_185B67B8C();
  __swift_project_value_buffer(v6, qword_1EA8D2278);

  v7 = a2;
  v8 = sub_185B67B6C();
  v9 = sub_185B680AC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC838, &unk_185B6B2B0);
    v14 = sub_185B67EBC();
    v16 = sub_185ACB2C4(v14, v15, &v21);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2114;
    if (a2)
    {
      v17 = a2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v19 = v18;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    a3 = v10;
    *(v11 + 14) = v18;
    *v12 = v19;
    _os_log_impl(&dword_185AC1000, v8, v9, "Authentication result: %{public}s err: %{public}@", v11, 0x16u);
    sub_185AC3F6C(v12);
    MEMORY[0x1865FE2F0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1865FE2F0](v13, -1, -1);
    MEMORY[0x1865FE2F0](v11, -1, -1);
  }

  else
  {
  }

  return a3(a1 != 0, a2);
}

uint64_t sub_185B265F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_185B67D8C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_185B2669C(void (*a1)(void, void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = v5;
  a1(0, v5);
}

uint64_t sub_185B26708()
{
  v1 = sub_185B67C9C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_185B67CDC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  v9 = sub_185B680FC();
  aBlock[4] = sub_185B26CC4;
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACA0E8;
  aBlock[3] = &block_descriptor_14;
  v10 = _Block_copy(aBlock);

  sub_185B67CBC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_185B26D00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185B26D58();
  sub_185B682CC();
  MEMORY[0x1865FD170](0, v8, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_185B26988()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_185B26AB4()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E696EE80]) initWithDomain:0 authenticationContext:0];
  v11[0] = 0;
  v1 = [v0 numberForKey:14 error:v11];
  v2 = v11[0];
  v11[0] = 0;
  v3 = v2;
  v4 = [v0 numberForKey:21 error:v11];
  v5 = v4;
  v6 = v11[0];
  if (v1)
  {
    v7 = v11[0];
    [v1 doubleValue];
    if (v5)
    {
      [v5 doubleValue];

      return;
    }

    goto LABEL_7;
  }

  if (v4)
  {
    v8 = v11[0];
    [v5 doubleValue];

LABEL_7:
    return;
  }

  if (v3)
  {
    v9 = v11[0];
  }

  else if (v11[0])
  {
    v10 = v11[0];
  }

  else
  {
    sub_185B21B1C(2, 0xD000000000000018, 0x8000000185B77350, 53, 0xD000000000000013, 0x8000000185B77370);
  }

  swift_willThrow();
}

void sub_185B26CC4()
{
  [*(v0 + 16) invalidate];
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
}

unint64_t sub_185B26D00()
{
  result = qword_1ED6F45B0;
  if (!qword_1ED6F45B0)
  {
    sub_185B67C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F45B0);
  }

  return result;
}

unint64_t sub_185B26D58()
{
  result = qword_1ED6F45A0;
  if (!qword_1ED6F45A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CCF50, &unk_185B6C580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F45A0);
  }

  return result;
}

void sub_185B26DBC(id a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 <= 0xFDu)
  {
    sub_185B26DD0(a1, a2, a3, a4, a5);
  }
}

void sub_185B26DD0(id a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }
}

id sub_185B26DF8(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_185B6792C();

    swift_willThrow();
  }

  return v1;
}

id sub_185B26EBC(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
    return result;
  }

  return result;
}

id sub_185B26EC8(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 <= 0xFDu)
  {
    return sub_185B26EBC(result, a2, a3, a4, a5);
  }

  return result;
}

id sub_185B26F04(uint64_t a1)
{
  type metadata accessor for APDaemonPersistentContainer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EA8CB960 = result;
  return result;
}

uint64_t sub_185B26F58()
{
  v0 = sub_185B6795C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_185B67A0C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v17 - v10;
  __swift_allocate_value_buffer(v9, qword_1EA8CB938);
  v19 = __swift_project_value_buffer(v4, qword_1EA8CB938);
  if (qword_1EA8CBC08 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_1EA8CBC10);
  (*(v5 + 16))(v8, v12, v4);
  strcpy(v20, "Library");
  v20[1] = 0xE700000000000000;
  v13 = *MEMORY[0x1E6968F58];
  v18 = *(v1 + 104);
  v18(v3, v13, v0);
  v17[1] = sub_185B1CC8C();
  sub_185B679FC();
  v14 = *(v1 + 8);
  v14(v3, v0);
  v15 = *(v5 + 8);
  v15(v8, v4);
  strcpy(v20, "store.sqlite3");
  HIWORD(v20[1]) = -4864;
  v18(v3, *MEMORY[0x1E6968F68], v0);
  sub_185B679FC();
  v14(v3, v0);
  return (v15)(v11, v4);
}