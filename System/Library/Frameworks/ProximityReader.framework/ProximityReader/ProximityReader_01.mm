void sub_23A65A56C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = sub_23A6DCDF0();
  sub_23A646D48(v13, v12, &qword_27DF9D240, qword_23A6E1D30);
  v14 = sub_23A6DECC4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, v14) == 1)
  {
    sub_23A646DB0(v12, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v33 = v13;
    v17 = sub_23A6507C0();
    v18 = sub_23A6DCFB0();
    v32 = v16;
    v13 = v33;
    sub_23A6DCFBC(v17 & 1, v3, 0xD000000000000013, 0x800000023A6E8EB0, v18, v19);
    v16 = v32;

    (*(v15 + 8))(v12, v14);
  }

  v20 = *(v3 + 136);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
    return;
  }

  *(v3 + 136) = v22;
  if (v22 < 0)
  {
    *(v3 + 136) = 0;
  }

  else if (v22)
  {
    sub_23A646D48(v13, v6, &qword_27DF9D240, qword_23A6E1D30);
    if (v16(v6, 1, v14) == 1)
    {
      sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v26 = v35;

      v27 = sub_23A6DECA4();
      v28 = sub_23A6DF874();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v36 = v30;
        *v29 = 136315394;
        *(v29 + 4) = sub_23A657E78(v34, v26, &v36);
        *(v29 + 12) = 2048;
        *(v29 + 14) = *(v3 + 136);

        _os_log_impl(&dword_23A63D000, v27, v28, "reader [%s], [%ld] left", v29, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x23EE8A960](v30, -1, -1);
        MEMORY[0x23EE8A960](v29, -1, -1);
      }

      else
      {
      }

      (*(v15 + 8))(v6, v14);
    }

    return;
  }

  sub_23A646D48(v13, v9, &qword_27DF9D240, qword_23A6E1D30);
  if (v16(v9, 1, v14) == 1)
  {
    sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v23 = sub_23A6DECA4();
    v24 = sub_23A6DF8A4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23A63D000, v23, v24, "last reader removed, releasing connection", v25, 2u);
      MEMORY[0x23EE8A960](v25, -1, -1);
    }

    (*(v15 + 8))(v9, v14);
  }

  sub_23A65AA04(0);
}

void sub_23A65AA04(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = *(v1 + 200);
  if (v9)
  {
    aBlock[4] = sub_23A65AE60;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A65AE64;
    aBlock[3] = &block_descriptor_317;
    v10 = _Block_copy(aBlock);
    v11 = v9;
    v12 = [v11 remoteObjectProxyWithErrorHandler_];
    _Block_release(v10);
    sub_23A6DF994();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
    if (swift_dynamicCast())
    {
      v13 = v29;
      v14 = sub_23A6DCDF0();
      sub_23A646D48(v14, v8, &qword_27DF9D240, qword_23A6E1D30);
      v15 = sub_23A6DECC4();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v8, 1, v15) == 1)
      {
        sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v20 = v1;
        v21 = sub_23A6DECA4();
        v22 = sub_23A6DF8A4();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 67240192;
          *(v23 + 4) = a1 & 1;
          _os_log_impl(&dword_23A63D000, v21, v22, "closing session with delete=%{BOOL,public}d", v23, 8u);
          MEMORY[0x23EE8A960](v23, -1, -1);
        }

        (*(v16 + 8))(v8, v15);
        v1 = v20;
      }

      if (*(v1 + 192) == 5)
      {
        v24 = 0;
      }

      else
      {
        LOBYTE(aBlock[0]) = *(v1 + 192);
        LOBYTE(v29) = 0;
        sub_23A676584();
        v24 = sub_23A6DF604();
      }

      [v13 closeSessionWithDelete:a1 & 1 backgrounded:v24 & 1];

      swift_unknownObjectRelease();
    }

    else
    {
      v17 = sub_23A6DCDF0();
      sub_23A646D48(v17, v5, &qword_27DF9D240, qword_23A6E1D30);
      v18 = sub_23A6DECC4();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v5, 1, v18) == 1)
      {

        sub_23A646DB0(v5, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v25 = sub_23A6DECA4();
        v26 = sub_23A6DF884();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_23A63D000, v25, v26, "Error (closeSession): unexpected proxy type", v27, 2u);
          MEMORY[0x23EE8A960](v27, -1, -1);
        }

        (*(v19 + 8))(v5, v18);
      }
    }
  }
}

void sub_23A65AE64(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_23A65AECC()
{
  *(v1 + 32) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A65AF68, v0, 0);
}

uint64_t sub_23A65AF68()
{
  v1 = v0[4];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 112);
    v4 = v0[5];

    v5 = sub_23A6DCDF0();
    sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
    v6 = sub_23A6DECC4();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_23A646DB0(v0[5], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v10 = sub_23A6DECA4();
      v11 = sub_23A6DF874();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_23A63D000, v10, v11, "readerIdentifier retrieved from cache", v12, 2u);
        MEMORY[0x23EE8A960](v12, -1, -1);
      }

      v13 = v0[5];

      (*(v7 + 8))(v13, v6);
    }

    v14 = v0[1];

    return v14(v3, v2);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_23A65B1B8;

    return sub_23A66AF24(0xD000000000000010, 0x800000023A6E83E0);
  }
}

uint64_t sub_23A65B1B8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 56) = v6;
    *v6 = v3;
    v6[1] = sub_23A65B334;

    return sub_23A670C54(0);
  }
}

uint64_t sub_23A65B334(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 32);

    return MEMORY[0x2822009F8](sub_23A65B484, v7, 0);
  }
}

uint64_t sub_23A65B484()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor, &unk_23A6E1E88);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = 0xD000000000000010;
  *(v4 + 32) = 0x800000023A6E83E0;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = sub_23A65B80C;
  *(v4 + 64) = 0;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_23A65B5F8;
  v6 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 2, v2, v3, 0xD000000000000028, 0x800000023A6E88D0, sub_23A6759E8, v4, v6);
}

uint64_t sub_23A65B5F8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_23A65B798;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_23A65B720;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A65B720()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_23A65B798()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23A65B80C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a2, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_23A677FF8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65C470;
  aBlock[3] = &block_descriptor_310;
  v11 = _Block_copy(aBlock);

  [a1 getTerminalIdWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_23A65B9BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  v16 = sub_23A6DF7B4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a4, v8);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  (*(v9 + 32))(&v18[v17], v12, v8);
  v19 = &v18[(v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v19 = a1;
  *(v19 + 1) = a2;

  v20 = a3;
  sub_23A64A15C(0, 0, v15, &unk_23A6E20F0, v18);
}

uint64_t sub_23A65BBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = type metadata accessor for PaymentCardReaderError(0);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A65BCC4, 0, 0);
}

uint64_t sub_23A65BCC4()
{
  v37 = v0;
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[14];
    v3 = v0[11];
    v4 = v1;
    sub_23A6476F4(v4, v2);
    v5 = sub_23A6DCDF0();
    sub_23A646D48(v5, v3, &qword_27DF9D240, qword_23A6E1D30);
    v6 = sub_23A6DECC4();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v3, 1, v6) == 1)
    {
      sub_23A646DB0(v0[11], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      sub_23A648DF0(v0[14], v0[13]);
      v11 = sub_23A6DECA4();
      v12 = sub_23A6DF884();
      v13 = os_log_type_enabled(v11, v12);
      v14 = v0[13];
      if (v13)
      {
        v35 = v4;
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v36 = v16;
        *v15 = 136446210;
        v17 = PaymentCardReaderError.errorName.getter();
        v19 = v18;
        sub_23A648E54(v14);
        v20 = sub_23A657E78(v17, v19, &v36);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_23A63D000, v11, v12, "Error (readerIdentifier): %{public}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x23EE8A960](v16, -1, -1);
        v21 = v15;
        v4 = v35;
        MEMORY[0x23EE8A960](v21, -1, -1);
      }

      else
      {

        sub_23A648E54(v14);
      }

      (*(v7 + 8))(v0[11], v6);
    }

    v22 = v0[14];
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
    v23 = swift_allocError();
    sub_23A648DF0(v22, v24);
    v0[4] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0);
    sub_23A6DF764();

    sub_23A648E54(v22);
LABEL_15:

    v25 = v0[1];

    return v25();
  }

  if (!v0[8])
  {
    v26 = v0[10];
    v27 = sub_23A6DCDF0();
    sub_23A646D48(v27, v26, &qword_27DF9D240, qword_23A6E1D30);
    v28 = sub_23A6DECC4();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v26, 1, v28) == 1)
    {
      sub_23A646DB0(v0[10], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v30 = sub_23A6DECA4();
      v31 = sub_23A6DF884();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_23A63D000, v30, v31, "Error (readerIdentifier): nil", v32, 2u);
        MEMORY[0x23EE8A960](v32, -1, -1);
      }

      v33 = v0[10];

      (*(v29 + 8))(v33, v28);
    }

    goto LABEL_15;
  }

  v8 = qword_27DF9ED30;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_27DFA5E88;
  v0[15] = qword_27DFA5E88;
  v10 = *v9 + 616;
  v0[16] = *v10;
  v0[17] = v10 & 0xFFFFFFFFFFFFLL | 0x2DFC000000000000;

  return MEMORY[0x2822009F8](sub_23A65C1A4, v9, 0);
}

uint64_t sub_23A65C1A4()
{
  (*(v0 + 128))(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x2822009F8](sub_23A65C214, 0, 0);
}

uint64_t sub_23A65C214(uint64_t a1)
{
  v16 = v1;
  v2 = v1[9];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_23A646DB0(v1[9], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {

    v6 = sub_23A6DECA4();
    v7 = sub_23A6DF8A4();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = v1[7];
      v8 = v1[8];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_23A657E78(v9, v8, &v15);
      _os_log_impl(&dword_23A63D000, v6, v7, "Result (readerIdentifier): %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x23EE8A960](v11, -1, -1);
      MEMORY[0x23EE8A960](v10, -1, -1);
    }

    (*(v5 + 8))(v1[9], v4);
  }

  v12 = v1[8];
  v1[2] = v1[7];
  v1[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0);
  sub_23A6DF774();

  v13 = v1[1];

  return v13();
}

uint64_t sub_23A65C470(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_23A6DF624();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_23A65C508(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t sub_23A65C548(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_23A65C570, v1, 0);
}

uint64_t sub_23A65C570()
{
  v1 = v0[4];
  v2 = v0[3] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {

    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_23A65C704;
    v4 = v0[3];
    v5 = v0[4];
    v6 = v0[2];

    return sub_23A675A00(0, 0xD000000000000017, 0x800000023A6E8380, v6, v6, v4, v5);
  }

  else
  {
    type metadata accessor for PaymentCardReaderError(0);
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_23A65C704(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_23A65C830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23A65C850, a2, 0);
}

uint64_t sub_23A65C850()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_23A65C914;

  return sub_23A66AF24(0xD000000000000017, 0x800000023A6E8380);
}

uint64_t sub_23A65C914()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 64) = v6;
    *v6 = v3;
    v6[1] = sub_23A65CA90;

    return sub_23A670C54(0);
  }
}

uint64_t sub_23A65CA90(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_23A65CBE0, v7, 0);
  }
}

uint64_t sub_23A65CBE0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor, &unk_23A6E1E88);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0xD000000000000017;
  *(v5 + 32) = 0x800000023A6E8380;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = sub_23A677CF4;
  *(v5 + 64) = v2;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_23A65CD58;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 13, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A6782B0, v5, v7);
}

uint64_t sub_23A65CD58()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_23A65CF04;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_23A65CE80;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A65CE80()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 104);

  *v1 = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23A65CF04()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23A65CF78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C998, &qword_23A6E20A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = sub_23A6DF614();
  (*(v7 + 16))(v9, a2, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_23A677CFC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65D62C;
  aBlock[3] = &block_descriptor_285;
  v13 = _Block_copy(aBlock);

  [a1 isAccountLinked:v10 completion:v13];
  _Block_release(v13);
}

uint64_t sub_23A65D148(char a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for PaymentCardReaderError(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v42 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  if (a2)
  {
    v18 = a2;
    sub_23A6476F4(v18, v11);
    v19 = sub_23A6DCDF0();
    sub_23A646D48(v19, v14, &qword_27DF9D240, qword_23A6E1D30);
    v20 = sub_23A6DECC4();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v14, 1, v20) == 1)
    {
      sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v46 = a3;
      sub_23A648DF0(v11, v8);
      v25 = sub_23A6DECA4();
      v26 = sub_23A6DF884();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v43 = v27;
        v44 = swift_slowAlloc();
        v47 = v44;
        *v27 = 136446210;
        v28 = PaymentCardReaderError.errorName.getter();
        v45 = v18;
        v30 = v29;
        sub_23A648E54(v8);
        v31 = sub_23A657E78(v28, v30, &v47);
        v18 = v45;

        v32 = v43;
        *(v43 + 1) = v31;
        v33 = v26;
        v34 = v32;
        _os_log_impl(&dword_23A63D000, v25, v33, "Error (isAccountLinked): %{public}s", v32, 0xCu);
        v35 = v44;
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        MEMORY[0x23EE8A960](v35, -1, -1);
        MEMORY[0x23EE8A960](v34, -1, -1);
      }

      else
      {

        sub_23A648E54(v8);
      }

      (*(v21 + 8))(v14, v20);
    }

    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
    v40 = swift_allocError();
    sub_23A648DF0(v11, v41);
    v47 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C998, &qword_23A6E20A0);
    sub_23A6DF764();

    return sub_23A648E54(v11);
  }

  else
  {
    v22 = sub_23A6DCDF0();
    sub_23A646D48(v22, v17, &qword_27DF9D240, qword_23A6E1D30);
    v23 = sub_23A6DECC4();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v17, 1, v23) == 1)
    {
      sub_23A646DB0(v17, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v36 = sub_23A6DECA4();
      v37 = sub_23A6DF8A4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 67240192;
        *(v38 + 4) = a1 & 1;
        _os_log_impl(&dword_23A63D000, v36, v37, "Result (isAccountLinked): %{BOOL,public}d", v38, 8u);
        MEMORY[0x23EE8A960](v38, -1, -1);
      }

      (*(v24 + 8))(v17, v23);
    }

    LOBYTE(v47) = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C998, &qword_23A6E20A0);
    return sub_23A6DF774();
  }
}

void sub_23A65D62C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_23A65D6A4(uint64_t *a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 72) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5 = swift_task_alloc();
  v6 = *a1;
  v7 = a1[1];
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;

  return MEMORY[0x2822009F8](sub_23A65D750, v2, 0);
}

uint64_t sub_23A65D750()
{
  v32 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {
    type metadata accessor for PaymentCardReaderError(0);
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_25:

    v27 = *(v0 + 8);

    return v27();
  }

  v3 = *(v0 + 16);
  v4 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  *(v0 + 48) = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  v5 = *(v3 + v4);

  if (v5 == 1)
  {
    v6 = *(v0 + 24);
    v7 = sub_23A6DCDF0();
    sub_23A646D48(v7, v6, &qword_27DF9D240, qword_23A6E1D30);
    v8 = sub_23A6DECC4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) == 1)
    {
      sub_23A646DB0(*(v0 + 24), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v16 = sub_23A6DECA4();
      v17 = sub_23A6DF884();
      if (os_log_type_enabled(v16, v17))
      {
        v30 = v17;
        v18 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v31 = v28;
        buf = v18;
        *v18 = 136315138;
        if (("unction:isRead:request:)" & 0x2000000000000000) != 0)
        {
          v19 = ("unction:isRead:request:)" >> 40) & 0xF0000;
        }

        else
        {
          v19 = 1703936;
        }

        if (v19)
        {
          while (sub_23A6DF6F4() != 40 || v20 != 0xE100000000000000)
          {
            v21 = sub_23A6DFC04();

            if ((v21 & 1) != 0 || !((sub_23A6DF6A4() ^ v19) >> 14))
            {
              goto LABEL_22;
            }
          }
        }

LABEL_22:
        v22 = sub_23A6DF704();
        v23 = MEMORY[0x23EE89B50](v22);
        v25 = v24;

        v26 = sub_23A657E78(v23, v25, &v31);

        *(buf + 4) = v26;
        _os_log_impl(&dword_23A63D000, v16, v30, "Error (%s: a previous request is running, returning busy", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x23EE8A960](v28, -1, -1);
        MEMORY[0x23EE8A960](buf, -1, -1);
      }

      (*(v9 + 8))(*(v0 + 24), v8);
    }

    type metadata accessor for PaymentCardReaderError(0);
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_25;
  }

  *(v3 + v4) = 1;
  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  *v10 = v0;
  v10[1] = sub_23A65DC10;
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  v13 = *(v0 + 16);
  v14 = *(v0 + 72);

  return sub_23A65DE34(v10, v13, v11, v12, v14);
}

uint64_t sub_23A65DC10()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_23A65DDB8;
  }

  else
  {
    v4 = sub_23A65DD3C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A65DD3C()
{
  *(v0[2] + v0[6]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A65DDB8()
{
  *(v0[2] + v0[6]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A65DE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 104) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23A65DE58, a2, 0);
}

uint64_t sub_23A65DE58()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_23A65DF24;

  return sub_23A66AF24(0xD00000000000001ALL, 0x800000023A6E8900);
}

uint64_t sub_23A65DF24()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 64) = v6;
    *v6 = v3;
    v6[1] = sub_23A65E0A0;

    return sub_23A670C54(0);
  }
}

uint64_t sub_23A65E0A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_23A65E1F0, v7, 0);
  }
}

uint64_t sub_23A65E1F0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor, &unk_23A6E1E88);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0xD00000000000001ALL;
  *(v5 + 32) = 0x800000023A6E8900;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = sub_23A677CC0;
  *(v5 + 64) = v2;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_23A65E36C;
  v7 = v0[2];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A6782AC, v5, v8);
}

uint64_t sub_23A65E36C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_23A65CF04;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_23A65E494;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A65E494()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23A65E504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  v12 = sub_23A6DF614();
  (*(v9 + 16))(v11, a2, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_23A677CCC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65D62C;
  aBlock[3] = &block_descriptor_272;
  v15 = _Block_copy(aBlock);

  [a1 linkAccount:v12 relink:a5 & 1 completion:v15];
  _Block_release(v15);
}

uint64_t sub_23A65E6E4(char a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = type metadata accessor for PaymentCardReaderError(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v49 - v19);
  if (a2)
  {
    v21 = a2;
    sub_23A6476F4(v21, v20);
    v22 = sub_23A6DCDF0();
    sub_23A646D48(v22, v14, &qword_27DF9D240, qword_23A6E1D30);
    v23 = sub_23A6DECC4();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v14, 1, v23) == 1)
    {
      sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v53 = v21;
      sub_23A648DF0(v20, v17);
      v28 = sub_23A6DECA4();
      v29 = sub_23A6DF884();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v52 = a3;
        v31 = v30;
        v50 = swift_slowAlloc();
        v54 = v50;
        *v31 = 136446210;
        v32 = PaymentCardReaderError.errorName.getter();
        v51 = v15;
        v34 = v33;
        sub_23A648E54(v17);
        v35 = sub_23A657E78(v32, v34, &v54);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_23A63D000, v28, v29, "Error (linkAccount): %{public}s", v31, 0xCu);
        v36 = v50;
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x23EE8A960](v36, -1, -1);
        MEMORY[0x23EE8A960](v31, -1, -1);
      }

      else
      {

        sub_23A648E54(v17);
      }

      (*(v24 + 8))(v14, v23);
      v21 = v53;
    }

    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
    v39 = swift_allocError();
    sub_23A648DF0(v20, v40);
    v54 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
    sub_23A6DF764();

    return sub_23A648E54(v20);
  }

  else
  {
    v25 = sub_23A6DCDF0();
    if (a1)
    {
      sub_23A646D48(v25, v11, &qword_27DF9D240, qword_23A6E1D30);
      v26 = sub_23A6DECC4();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v11, 1, v26) == 1)
      {
        sub_23A646DB0(v11, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v42 = sub_23A6DECA4();
        v43 = sub_23A6DF8A4();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_23A63D000, v42, v43, "Result (linkAccount): success", v44, 2u);
          MEMORY[0x23EE8A960](v44, -1, -1);
        }

        (*(v27 + 8))(v11, v26);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
      return sub_23A6DF774();
    }

    else
    {
      sub_23A646D48(v25, v8, &qword_27DF9D240, qword_23A6E1D30);
      v37 = sub_23A6DECC4();
      v38 = *(v37 - 8);
      if ((*(v38 + 48))(v8, 1, v37) == 1)
      {
        sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v45 = sub_23A6DECA4();
        v46 = sub_23A6DF8A4();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_23A63D000, v45, v46, "Result (linkAccount): result is false, linkAccount cancelled", v47, 2u);
          MEMORY[0x23EE8A960](v47, -1, -1);
        }

        (*(v38 + 8))(v8, v37);
      }

      sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
      v48 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      v54 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
      return sub_23A6DF764();
    }
  }
}

uint64_t sub_23A65ED68(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 72) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v5 + 96) = swift_task_alloc();
  v8 = sub_23A6DE2F4();
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a1;
  v11 = a1[1];
  *(v5 + 120) = v9;
  *(v5 + 128) = v10;
  v12 = *a2;
  *(v5 + 136) = v11;
  *(v5 + 144) = v12;
  *(v5 + 66) = *(a2 + 8);
  *(v5 + 67) = *(a2 + 9);

  return MEMORY[0x2822009F8](sub_23A65EE90, v4, 0);
}

uint64_t sub_23A65EE90(uint64_t a1)
{
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  v4 = *(v1 + 104);
  v5 = *(v1 + 72);
  sub_23A6DE2E4();
  v6 = sub_23A6DE2B4();
  v8 = v7;
  *(v1 + 152) = v6;
  *(v1 + 160) = v7;
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v10 = *(v1 + 88);
    v9 = *(v1 + 96);
    v12 = *(v1 + 72);
    v11 = *(v1 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    v14 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_updateHandlers;
    swift_beginAccess();
    sub_23A63F91C(v12, v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v10 + v14);
    *(v10 + v14) = 0x8000000000000000;
    sub_23A674F00(sub_23A67604C, v13, v6, v8, isUniquelyReferenced_nonNull_native, &qword_27DF9C9B0, &qword_23A6E20B8);

    *(v10 + v14) = v28;
    swift_endAccess();
    v16 = sub_23A6DCDF0();
    sub_23A646D48(v16, v9, &qword_27DF9D240, qword_23A6E1D30);
    v17 = sub_23A6DECC4();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v9, 1, v17) == 1)
    {
      sub_23A646DB0(*(v1 + 96), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {

      v19 = sub_23A6DECA4();
      v20 = sub_23A6DF8A4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134349056;
        *(v21 + 4) = *(*(v10 + v14) + 16);

        _os_log_impl(&dword_23A63D000, v19, v20, "added updateHandlers=%{public}ld", v21, 0xCu);
        MEMORY[0x23EE8A960](v21, -1, -1);
      }

      else
      {
      }

      (*(v18 + 8))(*(v1 + 96), v17);
    }
  }

  v22 = *(v1 + 67);
  v23 = *(v1 + 66);
  v24 = *(v1 + 88);
  *(v1 + 40) = *(v1 + 128);
  *(v1 + 48) = *(v1 + 136);
  *(v1 + 64) = v23;
  *(v1 + 65) = v22;
  v27 = (*(*v24 + 648) + **(*v24 + 648));
  v25 = swift_task_alloc();
  *(v1 + 168) = v25;
  *v25 = v1;
  v25[1] = sub_23A65F254;

  return v27(v1 + 40, v1 + 56);
}

uint64_t sub_23A65F254(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  v5 = *(v4 + 88);
  if (v1)
  {
    v6 = sub_23A65F414;
  }

  else
  {
    *(v4 + 184) = a1;
    v6 = sub_23A65F380;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A65F380()
{
  sub_23A65F4A4(v0[11], v0[19], v0[20]);

  v1 = v0[1];
  v2 = v0[23];

  return v1(v2);
}

uint64_t sub_23A65F414()
{
  sub_23A65F4A4(v0[11], v0[19], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A65F4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_updateHandlers;
  swift_beginAccess();
  v10 = sub_23A6742C8(a2, a3);
  v12 = v11;
  swift_endAccess();
  sub_23A677CB0(v10, v12);
  v13 = sub_23A6DCDF0();
  sub_23A646D48(v13, v8, &qword_27DF9D240, qword_23A6E1D30);
  v14 = sub_23A6DECC4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    return sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
  }

  v17 = sub_23A6DECA4();
  v18 = sub_23A6DF8A4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134349056;
    *(v19 + 4) = *(*(a1 + v9) + 16);

    _os_log_impl(&dword_23A63D000, v17, v18, "removed updateHandlers=%{public}ld", v19, 0xCu);
    MEMORY[0x23EE8A960](v19, -1, -1);
  }

  else
  {
  }

  return (*(v15 + 8))(v8, v14);
}

uint64_t sub_23A65F6D0(uint64_t *a1, uint64_t *a2)
{
  *(v3 + 16) = v2;
  v6 = sub_23A6DE574();
  *(v3 + 24) = v6;
  *(v3 + 32) = *(v6 - 8);
  *(v3 + 40) = swift_task_alloc();
  v7 = sub_23A6DE7F4();
  *(v3 + 48) = v7;
  *(v3 + 56) = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a1;
  v10 = a1[1];
  *(v3 + 64) = v8;
  *(v3 + 72) = v9;
  v11 = *a2;
  *(v3 + 80) = v10;
  *(v3 + 88) = v11;
  *(v3 + 128) = *(a2 + 8);
  *(v3 + 129) = *(a2 + 9);

  return MEMORY[0x2822009F8](sub_23A65F818, v2, 0);
}

uint64_t sub_23A65F818()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = *(v0 + 129);
    v5 = *(v0 + 128);
    v6 = *(v0 + 88);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v11 = *(v0 + 16);
    *v8 = v1;
    v8[1] = v2;
    (*(v7 + 104))(v8, *MEMORY[0x277D43908], v9);

    sub_23A6DE474();
    v12 = swift_task_alloc();
    *(v0 + 96) = v12;
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v6;
    *(v12 + 48) = v5;
    *(v12 + 49) = v4;
    v13 = swift_task_alloc();
    *(v0 + 104) = v13;
    *v13 = v0;
    v13[1] = sub_23A65FA48;

    return sub_23A66B94C(0, 0xD000000000000026, 0x800000023A6E8920, &unk_23A6E1DB0, v12);
  }

  else
  {
    type metadata accessor for PaymentCardReaderError(0);
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_23A65FA48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = *(v4 + 16);
    v6 = sub_23A65FC38;
  }

  else
  {
    v7 = *(v4 + 16);
    *(v4 + 120) = a1;

    v6 = sub_23A65FB88;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A65FB88()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];
  v5 = v0[15];

  return v4(v5);
}

uint64_t sub_23A65FC38()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23A65FCFC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23A65FD20, v2, 0);
}

uint64_t sub_23A65FD20()
{
  sub_23A66B410(v0[2], v0[3], 0x65526C65636E6163, 0xEE00293A5F286461);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_23A65FE2C;

  return sub_23A670C54(1);
}

uint64_t sub_23A65FE2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {
    v7 = *(v3 + 32);

    return MEMORY[0x2822009F8](sub_23A65FF78, v7, 0);
  }
}

uint64_t sub_23A65FF78()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor, &unk_23A6E1E88);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  strcpy((v4 + 24), "cancelRead(_:)");
  *(v4 + 39) = -18;
  *(v4 + 40) = v2;
  *(v4 + 48) = 1;
  *(v4 + 56) = sub_23A6602F4;
  *(v4 + 64) = 0;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_23A6600F4;
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 10, v2, v3, 0xD000000000000028, 0x800000023A6E88D0, sub_23A676154, v4, v6);
}

uint64_t sub_23A6600F4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_23A660284;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_23A66021C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A66021C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23A660284()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_23A6602F4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C998, &qword_23A6E20A0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a2, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_23A677A38;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A660688;
  aBlock[3] = &block_descriptor_243;
  v11 = _Block_copy(aBlock);

  [a1 cancelTransactionWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_23A6604A4(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = sub_23A6DCDF0();
  sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
  v6 = sub_23A6DECC4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_23A646DB0(v4, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = sub_23A6DECA4();
    v9 = sub_23A6DF8A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67240192;
      *(v10 + 4) = a1 & 1;
      _os_log_impl(&dword_23A63D000, v8, v9, "Result (cancelRead): %{BOOL,public}d", v10, 8u);
      MEMORY[0x23EE8A960](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v12[15] = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C998, &qword_23A6E20A0);
  return sub_23A6DF774();
}

uint64_t sub_23A660688(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_23A6606DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v6[11] = swift_task_alloc();
  v7 = sub_23A6DE2F4();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6607DC, v5, 0);
}

uint64_t sub_23A6607DC(uint64_t a1)
{
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[12];
  v5 = v1[8];
  sub_23A6DE2E4();
  v6 = sub_23A6DE2B4();
  v8 = v7;
  v1[15] = v6;
  v1[16] = v7;
  (*(v3 + 8))(v2, v4);
  v10 = v1[8];
  v9 = v1[9];
  if (v5)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v10;
    *(v5 + 24) = v9;
    v11 = sub_23A67604C;
  }

  else
  {
    v11 = 0;
  }

  v13 = v1[10];
  v12 = v1[11];
  v14 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_eventHandlers;
  swift_beginAccess();
  sub_23A63F91C(v10, v9);

  sub_23A659228(v11, v5, v6, v8);
  swift_endAccess();
  v15 = sub_23A6DCDF0();
  sub_23A646D48(v15, v12, &qword_27DF9D240, qword_23A6E1D30);
  v16 = sub_23A6DECC4();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) == 1)
  {
    sub_23A646DB0(v1[11], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {

    v18 = sub_23A6DECA4();
    v19 = sub_23A6DF8A4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134349056;
      *(v20 + 4) = *(*(v13 + v14) + 16);

      _os_log_impl(&dword_23A63D000, v18, v19, "added eventHandlers=%{public}ld", v20, 0xCu);
      MEMORY[0x23EE8A960](v20, -1, -1);
    }

    else
    {
    }

    (*(v17 + 8))(v1[11], v16);
  }

  v21 = *(*v1[10] + 672);
  v27 = (v21 + *v21);
  v22 = swift_task_alloc();
  v1[17] = v22;
  *v22 = v1;
  v22[1] = sub_23A660B48;
  v23 = v1[6];
  v24 = v1[7];
  v25 = v1[5];

  return v27(v25, v23, v24);
}

uint64_t sub_23A660B48(uint64_t a1)
{
  v4 = *v2;
  v4[18] = v1;

  v5 = v4[10];
  if (v1)
  {
    v6 = sub_23A660D18;
  }

  else
  {
    v4[19] = a1;
    v6 = sub_23A660C84;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A660C84()
{
  sub_23A660DA8(v0[10], v0[15], v0[16]);

  v1 = v0[1];
  v2 = v0[19];

  return v1(v2);
}

uint64_t sub_23A660D18()
{
  sub_23A660DA8(v0[10], v0[15], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A660DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_eventHandlers;
  swift_beginAccess();

  sub_23A659228(0, 0, a2, a3);
  swift_endAccess();
  v10 = sub_23A6DCDF0();
  sub_23A646D48(v10, v8, &qword_27DF9D240, qword_23A6E1D30);
  v11 = sub_23A6DECC4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    return sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
  }

  v14 = sub_23A6DECA4();
  v15 = sub_23A6DF8A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134349056;
    *(v16 + 4) = *(*(a1 + v9) + 16);

    _os_log_impl(&dword_23A63D000, v14, v15, "removed eventHandlers=%{public}ld", v16, 0xCu);
    MEMORY[0x23EE8A960](v16, -1, -1);
  }

  else
  {
  }

  return (*(v12 + 8))(v8, v11);
}

uint64_t sub_23A660FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A661070, v3, 0);
}

uint64_t sub_23A661070()
{
  v32 = v0;
  sub_23A66B410(v0[3], v0[4], 0x5F3A5F2864616572, 0xEA0000000000293ALL);
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_23A676188(v2);
  v5 = v4;
  v6 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  v0[8] = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  v7 = *(v1 + v6);

  v8 = v2;
  if (v7 == 1)
  {
    v9 = v0[7];
    v10 = sub_23A6DCDF0();
    sub_23A646D48(v10, v9, &qword_27DF9D240, qword_23A6E1D30);
    v11 = sub_23A6DECC4();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_23A646DB0(v0[7], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v17 = sub_23A6DECA4();
      v18 = sub_23A6DF884();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v30;
        *v19 = 136315138;
        while (sub_23A6DF6F4() != 40 || v20 != 0xE100000000000000)
        {
          v21 = sub_23A6DFC04();

          if ((v21 & 1) != 0 || (sub_23A6DF6A4() & 0xFFFFFFFFFFFFC000) == 0xA0000)
          {
            goto LABEL_15;
          }
        }

LABEL_15:
        v22 = sub_23A6DF704();
        v23 = MEMORY[0x23EE89B50](v22);
        v25 = v24;

        v26 = sub_23A657E78(v23, v25, &v31);

        *(v19 + 4) = v26;
        _os_log_impl(&dword_23A63D000, v17, v18, "Error (%s: a previous request is running, returning busy", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x23EE8A960](v30, -1, -1);
        MEMORY[0x23EE8A960](v19, -1, -1);
      }

      (*(v12 + 8))(v0[7], v11);
    }

    v27 = v0[5];
    sub_23A6763DC();
    swift_allocError();
    *v28 = xmmword_23A6E1CA0;
    *(v28 + 16) = 3;
    swift_willThrow();

    v29 = v0[1];

    return v29();
  }

  else
  {
    *(v1 + v6) = 1;
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = sub_23A661478;
    v15 = v0[5];
    v14 = v0[6];

    return sub_23A66169C((v0 + 2), v3, v5, 2, v14, v15);
  }
}

uint64_t sub_23A661478()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_23A661624;
  }

  else
  {
    v4 = sub_23A6615A4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A6615A4()
{
  v1 = v0[5];
  *(v0[6] + v0[8]) = 0;

  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_23A661624()
{
  v1 = v0[5];
  *(v0[6] + v0[8]) = 0;

  v2 = v0[1];

  return v2();
}

uint64_t sub_23A66169C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 136) = a4;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  v8 = sub_23A6DE574();
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 - 8);
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A66176C, a5, 0);
}

uint64_t sub_23A66176C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v10 = *(v0 + 48);
  v6 = *(v0 + 136);
  sub_23A6DE444();
  sub_23A6DE554();
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *(v7 + 16) = v10;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v6;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_23A661884;

  return sub_23A670C54(1);
}

uint64_t sub_23A661884(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 48);

    return MEMORY[0x2822009F8](sub_23A6619DC, v7, 0);
  }
}

uint64_t sub_23A6619DC()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[6];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor, &unk_23A6E1E88);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0x5F3A5F2864616572;
  *(v5 + 32) = 0xEA0000000000293ALL;
  *(v5 + 40) = v3;
  *(v5 + 48) = 1;
  *(v5 + 56) = sub_23A677954;
  *(v5 + 64) = v2;
  v6 = swift_task_alloc();
  v0[15] = v6;
  v7 = sub_23A6DE624();
  *v6 = v0;
  v6[1] = sub_23A661B58;

  return MEMORY[0x2822008A0](v0 + 2, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A677964, v5, v7);
}

uint64_t sub_23A661B58()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_23A661D0C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_23A661C80;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A661C80()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 16);

  *v1 = v2;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23A661D0C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23A661D88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v25 = a7;
  v23 = a5;
  v24 = a6;
  v26 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C988, &qword_23A6E2090);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C900, &qword_23A6E1D20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  sub_23A6DE864();
  v17 = sub_23A6DE2F4();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  v18 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_lastCardReadTransactionID;
  swift_beginAccess();
  sub_23A677544(v16, a3 + v18);
  swift_endAccess();
  if (*(a3 + 208))
  {
    type metadata accessor for StoreAndForwardPaymentCardReaderSession(0);
    if (swift_dynamicCastClass())
    {
    }
  }

  sub_23A6DE844();
  (*(v11 + 16))(v13, a2, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = swift_allocObject();
  v21 = v24;
  *(v20 + 16) = v23;
  *(v20 + 24) = v21;
  *(v20 + 32) = v25;
  (*(v11 + 32))(v20 + v19, v13, v10);
  aBlock[4] = sub_23A677990;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A662708;
  aBlock[3] = &block_descriptor_231;
  v22 = _Block_copy(aBlock);

  [v26 startTransaction:a4 completion:v22];
  _Block_release(v22);
}

uint64_t sub_23A662074(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v52[-v12];
  MEMORY[0x28223BE20](v14);
  v55 = &v52[-v15];
  v16 = sub_23A6DE574();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23A6DE444();
  sub_23A6DE534();
  (*(v17 + 8))(v19, v16);
  if (a2)
  {
    v57 = a2;
    v20 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    if (swift_dynamicCast())
    {
      sub_23A6DA0F4(v60, &v57);
      v21 = v57;
      v22 = v58;
      v23 = v59;
      v24 = sub_23A6DCDF0();
      v25 = v55;
      sub_23A646D48(v24, v55, &qword_27DF9D240, qword_23A6E1D30);
      v26 = sub_23A6DECC4();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v25, 1, v26) == 1)
      {
        sub_23A646DB0(v25, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        sub_23A6775B4(v21, v22, v23);
        v39 = sub_23A6DECA4();
        v40 = sub_23A6DF884();
        sub_23A6775CC(v21, v22, v23);
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v60 = v54;
          *v41 = 136446210;
          v57 = v21;
          v58 = v22;
          v59 = v23;
          v53 = v40;
          v42 = PaymentCardReaderSession.ReadError.errorName.getter();
          v44 = sub_23A657E78(v42, v43, &v60);

          *(v41 + 4) = v44;
          _os_log_impl(&dword_23A63D000, v39, v53, "Error (read): %{public}s", v41, 0xCu);
          v45 = v54;
          __swift_destroy_boxed_opaque_existential_1Tm(v54);
          MEMORY[0x23EE8A960](v45, -1, -1);
          MEMORY[0x23EE8A960](v41, -1, -1);
        }

        (*(v27 + 8))(v25, v26);
      }

      sub_23A6763DC();
      v46 = swift_allocError();
      *v47 = v21;
      *(v47 + 8) = v22;
      *(v47 + 16) = v23;
LABEL_22:
      v57 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C988, &qword_23A6E2090);
      return sub_23A6DF764();
    }
  }

  if (!a1)
  {
    v32 = sub_23A6DCDF0();
    sub_23A646D48(v32, v13, &qword_27DF9D240, qword_23A6E1D30);
    v33 = sub_23A6DECC4();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v13, 1, v33) == 1)
    {
      sub_23A646DB0(v13, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v48 = sub_23A6DECA4();
      v49 = sub_23A6DF884();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_23A63D000, v48, v49, "Error (read): nil result", v50, 2u);
        MEMORY[0x23EE8A960](v50, -1, -1);
      }

      (*(v34 + 8))(v13, v33);
    }

    sub_23A6763DC();
    v46 = swift_allocError();
    *v51 = xmmword_23A6E1CB0;
    *(v51 + 16) = 3;
    goto LABEL_22;
  }

  v28 = a1;
  v29 = sub_23A6DCDF0();
  sub_23A646D48(v29, v10, &qword_27DF9D240, qword_23A6E1D30);
  v30 = sub_23A6DECC4();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v10, 1, v30) == 1)
  {
    sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v35 = sub_23A6DECA4();
    v36 = sub_23A6DF8A4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_23A63D000, v35, v36, "Result (read): success", v37, 2u);
      MEMORY[0x23EE8A960](v37, -1, -1);
    }

    (*(v31 + 8))(v10, v30);
  }

  v57 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C988, &qword_23A6E2090);
  return sub_23A6DF774();
}

uint64_t sub_23A662710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a3;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C900, &qword_23A6E1D20);
  v7[8] = swift_task_alloc();
  v9 = sub_23A6DE2F4();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a4;
  v12 = a4[1];
  v7[15] = v10;
  v7[16] = v11;
  v7[17] = v12;

  return MEMORY[0x2822009F8](sub_23A662880, v6, 0);
}

uint64_t sub_23A662880(uint64_t a1)
{
  v64 = v1;
  if (*(v1[7] + 208))
  {
    type metadata accessor for StoreAndForwardPaymentCardReaderSession(0);
    if (swift_dynamicCastClass())
    {
      v2 = v1[15];
      v3 = sub_23A6DCDF0();
      sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
      v4 = sub_23A6DECC4();
      v5 = *(v4 - 8);
      if ((*(v5 + 48))(v2, 1, v4) == 1)
      {
        sub_23A646DB0(v1[15], &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v19 = sub_23A6DECA4();
        v20 = sub_23A6DF884();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_23A63D000, v19, v20, "PIN capture is not supported during a SAF session", v21, 2u);
          MEMORY[0x23EE8A960](v21, -1, -1);
        }

        v22 = v1[15];

        (*(v5 + 8))(v22, v4);
      }

      sub_23A6763DC();
      swift_allocError();
      v24 = xmmword_23A6E1CC0;
LABEL_27:
      *v23 = v24;
      *(v23 + 16) = 3;
      swift_willThrow();
LABEL_28:

      v35 = v1[1];

      return v35();
    }
  }

  v6 = v1[17];
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v7 = v1[16] & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v15 = v1[12];
    v16 = sub_23A6DCDF0();
    sub_23A646D48(v16, v15, &qword_27DF9D240, qword_23A6E1D30);
    v17 = sub_23A6DECC4();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v15, 1, v17) == 1)
    {
      sub_23A646DB0(v1[12], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v27 = sub_23A6DECA4();
      v28 = sub_23A6DF884();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_23A63D000, v27, v28, "PIN token is empty", v29, 2u);
        MEMORY[0x23EE8A960](v29, -1, -1);
      }

      v30 = v1[12];

      (*(v18 + 8))(v30, v17);
    }

    sub_23A6763DC();
    swift_allocError();
    v24 = xmmword_23A6E1CE0;
    goto LABEL_27;
  }

  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[8];
  sub_23A6DE2A4();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = v1[13];
    sub_23A646DB0(v1[8], &qword_27DF9C900, &qword_23A6E1D20);
    v12 = sub_23A6DCDF0();
    sub_23A646D48(v12, v11, &qword_27DF9D240, qword_23A6E1D30);
    v13 = sub_23A6DECC4();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v11, 1, v13) == 1)
    {
      sub_23A646DB0(v1[13], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v31 = sub_23A6DECA4();
      v32 = sub_23A6DF884();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_23A63D000, v31, v32, "Transaction ID is invalid", v33, 2u);
        MEMORY[0x23EE8A960](v33, -1, -1);
      }

      v34 = v1[13];

      (*(v14 + 8))(v34, v13);
    }

    sub_23A6763DC();
    swift_allocError();
    v24 = xmmword_23A6E1CD0;
    goto LABEL_27;
  }

  v26 = v1[3];
  v25 = v1[4];
  (*(v1[10] + 32))(v1[11], v1[8], v1[9]);
  sub_23A66B410(v26, v25, 0xD00000000000002CLL, 0x800000023A6E8950);
  v37 = v1[7];
  v38 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  v1[18] = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  if (*(v37 + v38) == 1)
  {
    v39 = v1[14];
    v40 = sub_23A6DCDF0();
    sub_23A646D48(v40, v39, &qword_27DF9D240, qword_23A6E1D30);
    v41 = sub_23A6DECC4();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v39, 1, v41) == 1)
    {
      sub_23A646DB0(v1[14], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v49 = sub_23A6DECA4();
      v50 = sub_23A6DF884();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        buf = v51;
        v63 = v61;
        *v51 = 136315138;
        if (("ype:options:signPost:)" & 0x2000000000000000) != 0)
        {
          v52 = ("ype:options:signPost:)" >> 40) & 0xF0000;
        }

        else
        {
          v52 = 2883584;
        }

        if (v52)
        {
          while (sub_23A6DF6F4() != 40 || v53 != 0xE100000000000000)
          {
            v54 = sub_23A6DFC04();

            if ((v54 & 1) != 0 || !((sub_23A6DF6A4() ^ v52) >> 14))
            {
              goto LABEL_48;
            }
          }
        }

LABEL_48:
        v55 = sub_23A6DF704();
        v56 = MEMORY[0x23EE89B50](v55);
        v58 = v57;

        v59 = sub_23A657E78(v56, v58, &v63);

        *(buf + 4) = v59;
        _os_log_impl(&dword_23A63D000, v49, v50, "Error (%s: a previous request is running, returning busy", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        MEMORY[0x23EE8A960](v61, -1, -1);
        MEMORY[0x23EE8A960](buf, -1, -1);
      }

      (*(v42 + 8))(v1[14], v41);
    }

    sub_23A6763DC();
    swift_allocError();
    *v60 = xmmword_23A6E1CA0;
    *(v60 + 16) = 3;
    swift_willThrow();
    (*(v1[10] + 8))(v1[11], v1[9]);
    goto LABEL_28;
  }

  *(v37 + v38) = 1;
  v43 = swift_task_alloc();
  v1[19] = v43;
  *v43 = v1;
  v43[1] = sub_23A663184;
  v44 = v1[16];
  v45 = v1[17];
  v46 = v1[11];
  v47 = v1[7];
  v48 = v1[2];

  return sub_23A663448(v48, v47, v44, v45, v46);
}

uint64_t sub_23A663184()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_23A66337C;
  }

  else
  {
    v4 = sub_23A6632B0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A6632B0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  *(v0[7] + v0[18]) = 0;
  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23A66337C()
{
  *(v0[7] + v0[18]) = 0;
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A663448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_23A6DE574();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A663514, a2, 0);
}

uint64_t sub_23A663514()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v8 = *(v0 + 40);
  sub_23A6DE514();
  sub_23A6DE544();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v8;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_23A663608;

  return sub_23A670C54(1);
}

uint64_t sub_23A663608(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_23A663760, v7, 0);
  }
}

uint64_t sub_23A663760()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[3];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor, &unk_23A6E1E88);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0xD00000000000002CLL;
  *(v5 + 32) = 0x800000023A6E8950;
  *(v5 + 40) = v3;
  *(v5 + 48) = 1;
  *(v5 + 56) = sub_23A67785C;
  *(v5 + 64) = v2;
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_23A6638E4;
  v7 = v0[2];

  return MEMORY[0x2822008A0](v7, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A677868, v5, &type metadata for PaymentCardReadResult);
}

uint64_t sub_23A6638E4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_23A663A84;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_23A663A0C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A663A0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A663A84()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23A663B00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C980, &qword_23A6E2088);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = sub_23A6DF614();
  v11 = sub_23A6DE2D4();
  (*(v7 + 16))(v9, a2, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = sub_23A677894;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A662708;
  aBlock[3] = &block_descriptor_216;
  v14 = _Block_copy(aBlock);

  [a1 startIssuerPINEntry:v10 transactionId:v11 completion:v14];
  _Block_release(v14);
}

void sub_23A663CEC(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v52[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v52[-v13];
  v15 = sub_23A6DE574();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v52[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23A6DE514();
  sub_23A6DE524();
  (*(v16 + 8))(v18, v15);
  if (a2)
  {
    v56 = a2;
    v19 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    if (swift_dynamicCast())
    {
      sub_23A6DA0F4(v61, &v56);
      v20 = v56;
      v21 = v57;
      v22 = v58;
      v23 = sub_23A6DCDF0();
      sub_23A646D48(v23, v14, &qword_27DF9D240, qword_23A6E1D30);
      v24 = sub_23A6DECC4();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(v14, 1, v24) == 1)
      {
        sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        sub_23A6775B4(v20, v21, v22);
        v40 = sub_23A6DECA4();
        v41 = sub_23A6DF884();
        sub_23A6775CC(v20, v21, v22);
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v55 = a3;
          v43 = v42;
          v54 = swift_slowAlloc();
          *&v61 = v54;
          *v43 = 136446210;
          v56 = v20;
          v57 = v21;
          LOBYTE(v58) = v22;
          v53 = v41;
          v44 = PaymentCardReaderSession.ReadError.errorName.getter();
          v46 = sub_23A657E78(v44, v45, &v61);

          *(v43 + 4) = v46;
          _os_log_impl(&dword_23A63D000, v40, v53, "Error (capturePIN): %{public}s", v43, 0xCu);
          v47 = v54;
          __swift_destroy_boxed_opaque_existential_1Tm(v54);
          MEMORY[0x23EE8A960](v47, -1, -1);
          MEMORY[0x23EE8A960](v43, -1, -1);
        }

        (*(v25 + 8))(v14, v24);
      }

      sub_23A6763DC();
      v38 = swift_allocError();
      *v48 = v20;
      *(v48 + 8) = v21;
      *(v48 + 16) = v22;
LABEL_20:
      v56 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C980, &qword_23A6E2088);
      sub_23A6DF764();
      return;
    }
  }

  if (!a1)
  {
LABEL_10:
    v32 = sub_23A6DCDF0();
    sub_23A646D48(v32, v8, &qword_27DF9D240, qword_23A6E1D30);
    v33 = sub_23A6DECC4();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v8, 1, v33) == 1)
    {
      sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v35 = sub_23A6DECA4();
      v36 = sub_23A6DF884();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_23A63D000, v35, v36, "Error (capturePIN): nil result", v37, 2u);
        MEMORY[0x23EE8A960](v37, -1, -1);
      }

      (*(v34 + 8))(v8, v33);
    }

    sub_23A6763DC();
    v38 = swift_allocError();
    *v39 = xmmword_23A6E1CB0;
    *(v39 + 16) = 3;
    goto LABEL_20;
  }

  v26 = a1;
  sub_23A6DA494(&v56);
  v27 = v56;
  v28 = v57;
  v61 = v58;
  v62 = v59;
  v63[0] = *v60;
  *(v63 + 13) = *&v60[13];
  if (!v57)
  {

    goto LABEL_10;
  }

  v29 = sub_23A6DCDF0();
  sub_23A646D48(v29, v11, &qword_27DF9D240, qword_23A6E1D30);
  v30 = sub_23A6DECC4();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v11, 1, v30) == 1)
  {
    sub_23A646DB0(v11, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v49 = sub_23A6DECA4();
    v50 = sub_23A6DF8A4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_23A63D000, v49, v50, "Result (capturePIN): success", v51, 2u);
      MEMORY[0x23EE8A960](v51, -1, -1);
    }

    (*(v31 + 8))(v11, v30);
  }

  v56 = v27;
  v57 = v28;
  v58 = v61;
  v59 = v62;
  *v60 = v63[0];
  *&v60[13] = *(v63 + 13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C980, &qword_23A6E2088);
  sub_23A6DF774();
}

uint64_t sub_23A6643B4(_OWORD *a1)
{
  *(v2 + 24) = v1;
  *(v2 + 32) = *a1;
  return MEMORY[0x2822009F8](sub_23A6643DC, v1, 0);
}

uint64_t sub_23A6643DC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_23A6644A0;

  return sub_23A66AF24(0x6628737574617473, 0xEC000000293A726FLL);
}

uint64_t sub_23A6644A0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 64) = v6;
    *v6 = v3;
    v6[1] = sub_23A66461C;

    return sub_23A670C54(0);
  }
}

uint64_t sub_23A66461C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_23A66476C, v7, 0);
  }
}

uint64_t sub_23A66476C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor, &unk_23A6E1E88);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *(v5 + 16) = v1;
  strcpy((v5 + 24), "status(for:)");
  *(v5 + 37) = 0;
  *(v5 + 38) = -5120;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = sub_23A676430;
  *(v5 + 64) = v2;
  v6 = swift_task_alloc();
  v0[11] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C920, &unk_23A6E1DF8);
  *v6 = v0;
  v6[1] = sub_23A6648F4;

  return MEMORY[0x2822008A0](v0 + 2, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A676438, v5, v7);
}

uint64_t sub_23A6648F4()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_23A65CF04;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_23A664A1C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A664A1C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_23A664A94(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C978, &qword_23A6E2080);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  if (a4)
  {
    a4 = sub_23A6DF614();
  }

  (*(v8 + 16))(v11, a2, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  aBlock[4] = sub_23A677834;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A665280;
  aBlock[3] = &block_descriptor_201;
  v14 = _Block_copy(aBlock);

  [a1 status:a4 completion:v14];
  _Block_release(v14);
}

uint64_t sub_23A664C68(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = type metadata accessor for PaymentCardReaderError(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v51 - v19);
  if (a2)
  {
    v55 = a3;
    v21 = a2;
    sub_23A6476F4(v21, v20);
    v22 = sub_23A6DCDF0();
    sub_23A646D48(v22, v14, &qword_27DF9D240, qword_23A6E1D30);
    v23 = sub_23A6DECC4();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v14, 1, v23) == 1)
    {
      sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      sub_23A648DF0(v20, v17);
      v28 = sub_23A6DECA4();
      v29 = sub_23A6DF884();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v52 = v30;
        v53 = swift_slowAlloc();
        v56 = v53;
        *v30 = 136446210;
        v31 = PaymentCardReaderError.errorName.getter();
        v54 = v21;
        v33 = v32;
        sub_23A648E54(v17);
        v34 = sub_23A657E78(v31, v33, &v56);
        v21 = v54;

        v35 = v52;
        *(v52 + 1) = v34;
        v36 = v29;
        v37 = v35;
        _os_log_impl(&dword_23A63D000, v28, v36, "Error (status): %{public}s", v35, 0xCu);
        v38 = v53;
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        MEMORY[0x23EE8A960](v38, -1, -1);
        MEMORY[0x23EE8A960](v37, -1, -1);
      }

      else
      {

        sub_23A648E54(v17);
      }

      (*(v24 + 8))(v14, v23);
    }

    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
    v39 = swift_allocError();
    sub_23A648DF0(v20, v40);
    v56 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C978, &qword_23A6E2080);
    sub_23A6DF764();

    return sub_23A648E54(v20);
  }

  else if (a1)
  {

    v25 = sub_23A6DCDF0();
    sub_23A646D48(v25, v8, &qword_27DF9D240, qword_23A6E1D30);
    v26 = sub_23A6DECC4();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v8, 1, v26) == 1)
    {
      sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v45 = sub_23A6DECA4();
      v46 = sub_23A6DF8A4();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_23A63D000, v45, v46, "Result (status): success", v47, 2u);
        MEMORY[0x23EE8A960](v47, -1, -1);
      }

      (*(v27 + 8))(v8, v26);
    }

    v56 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C978, &qword_23A6E2080);
    return sub_23A6DF774();
  }

  else
  {
    v42 = sub_23A6DCDF0();
    sub_23A646D48(v42, v11, &qword_27DF9D240, qword_23A6E1D30);
    v43 = sub_23A6DECC4();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v11, 1, v43) == 1)
    {
      return sub_23A646DB0(v11, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v48 = sub_23A6DECA4();
      v49 = sub_23A6DF884();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_23A63D000, v48, v49, "Error (status): nil result", v50, 2u);
        MEMORY[0x23EE8A960](v50, -1, -1);
      }

      return (*(v44 + 8))(v11, v43);
    }
  }
}

uint64_t sub_23A665280(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_23A6DF5A4();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_23A66532C(uint64_t *a1)
{
  *(v2 + 16) = v1;
  v4 = sub_23A6DE784();
  *(v2 + 24) = v4;
  *(v2 + 32) = *(v4 - 8);
  *(v2 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v2 + 48) = swift_task_alloc();
  v5 = sub_23A6DE574();
  *(v2 + 56) = v5;
  *(v2 + 64) = *(v5 - 8);
  *(v2 + 72) = swift_task_alloc();
  v6 = sub_23A6DE7F4();
  *(v2 + 80) = v6;
  *(v2 + 88) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a1;
  *(v2 + 96) = v7;
  *(v2 + 104) = v8;
  *(v2 + 144) = *(a1 + 8);
  *(v2 + 145) = *(a1 + 9);

  return MEMORY[0x2822009F8](sub_23A6654F4, v1, 0);
}

uint64_t sub_23A6654F4()
{
  v1 = *(v0 + 145);
  v2 = *(v0 + 144);
  v3 = *(v0 + 72);
  v4 = *(v0 + 16);
  v8 = *(v0 + 96);
  (*(*(v0 + 88) + 104))(*(v0 + 96), *MEMORY[0x277D43900], *(v0 + 80));
  sub_23A6DE454();
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *(v5 + 32) = v8;
  *(v5 + 48) = v2;
  *(v5 + 49) = v1;
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_23A665638;

  return sub_23A66B94C(0, 0xD000000000000026, 0x800000023A6E8920, &unk_23A6E1E08, v5);
}

uint64_t sub_23A665638(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v4 = v3[2];
    v5 = sub_23A665AB4;
  }

  else
  {
    v6 = v3[2];

    v5 = sub_23A665760;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A665760()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);
  type metadata accessor for StoreAndForwardPaymentCardReaderSession(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v8 = v0[6];

    v9 = sub_23A6DCDF0();
    sub_23A646D48(v9, v8, &qword_27DF9D240, qword_23A6E1D30);
    v10 = sub_23A6DECC4();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) == 1)
    {
      sub_23A646DB0(v0[6], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v12 = sub_23A6DECA4();
      v13 = sub_23A6DF884();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23A63D000, v12, v13, "Error (prepare): unexpected session type", v14, 2u);
        MEMORY[0x23EE8A960](v14, -1, -1);
      }

      v15 = v0[6];

      (*(v11 + 8))(v15, v10);
    }

    v17 = v0[4];
    v16 = v0[5];
    v18 = v0[3];
    type metadata accessor for PaymentCardReaderError(0);
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
    swift_allocError();
    v20 = v19;
    (*(v17 + 104))(v16, *MEMORY[0x277D43838], v18);
    v21 = sub_23A6DE774();
    (*(v17 + 8))(v16, v18);
    *v20 = v21;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_23A665AB4()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23A665B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A665C2C, v3, 0);
}

uint64_t sub_23A665C2C()
{
  v29 = v0;
  sub_23A66B410(v0[3], v0[4], 0xD000000000000019, 0x800000023A6E8980);
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  v0[7] = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  v3 = *(v1 + v2);

  if (v3 == 1)
  {
    v5 = v0[6];
    v6 = sub_23A6DCDF0();
    sub_23A646D48(v6, v5, &qword_27DF9D240, qword_23A6E1D30);
    v7 = sub_23A6DECC4();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {
      sub_23A646DB0(v0[6], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v13 = sub_23A6DECA4();
      v14 = sub_23A6DF884();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        buf = v15;
        v28 = v26;
        *v15 = 136315138;
        if (("ng:cardReaderTransactionId:)" & 0x2000000000000000) != 0)
        {
          v16 = ("ng:cardReaderTransactionId:)" >> 40) & 0xF0000;
        }

        else
        {
          v16 = 1638400;
        }

        if (v16)
        {
          while (sub_23A6DF6F4() != 40 || v17 != 0xE100000000000000)
          {
            v18 = sub_23A6DFC04();

            if ((v18 & 1) != 0 || !((sub_23A6DF6A4() ^ v16) >> 14))
            {
              goto LABEL_18;
            }
          }
        }

LABEL_18:
        v19 = sub_23A6DF704();
        v20 = MEMORY[0x23EE89B50](v19);
        v22 = v21;

        v23 = sub_23A657E78(v20, v22, &v28);

        *(buf + 4) = v23;
        _os_log_impl(&dword_23A63D000, v13, v14, "Error (%s: a previous request is running, returning busy", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x23EE8A960](v26, -1, -1);
        MEMORY[0x23EE8A960](buf, -1, -1);
      }

      (*(v8 + 8))(v0[6], v7);
    }

    sub_23A6763DC();
    swift_allocError();
    *v24 = xmmword_23A6E1CA0;
    *(v24 + 16) = 3;
    swift_willThrow();

    v25 = v0[1];

    return v25();
  }

  else
  {
    *(v4 + v2) = 1;
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_23A66602C;
    v10 = v0[5];
    v11 = v0[2];

    return sub_23A666240(v11, v10);
  }
}

uint64_t sub_23A66602C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_23A6661CC;
  }

  else
  {
    v4 = sub_23A666158;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A666158()
{
  *(v0[5] + v0[7]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A6661CC()
{
  *(v0[5] + v0[7]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A666240(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = sub_23A6DE574();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A666304, a2, 0);
}

uint64_t sub_23A666304()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_23A6DE564();
  sub_23A6DE544();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = &unk_23A6E2058;
  *(v4 + 24) = 0;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_23A666400;

  return sub_23A66AF24(0xD000000000000028, 0x800000023A6E88D0);
}

uint64_t sub_23A666400()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 72) = v6;
    *v6 = v3;
    v6[1] = sub_23A666584;

    return sub_23A670C54(0);
  }
}

uint64_t sub_23A666584(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_23A6666DC, v7, 0);
  }
}

uint64_t sub_23A6666DC()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[3];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor, &unk_23A6E1E88);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0xD000000000000028;
  *(v5 + 32) = 0x800000023A6E88D0;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = sub_23A6775E4;
  *(v5 + 64) = v2;
  v6 = swift_task_alloc();
  v0[12] = v6;
  v7 = type metadata accessor for StoreAndForwardStatus(0);
  *v6 = v0;
  v6[1] = sub_23A666848;
  v8 = v0[2];

  return MEMORY[0x2822008A0](v8, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A67762C, v5, v7);
}

uint64_t sub_23A666848()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_23A6669E8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_23A666970;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A666970()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A6669E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A666A64(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  v3 = sub_23A6DE784();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = sub_23A6DE574();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  type metadata accessor for StoreAndForwardStatus(0);
  v2[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A666BFC, 0, 0);
}

uint64_t sub_23A666BFC()
{
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23A666D18;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C970, &qword_23A6E2078);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A66765C;
  v0[13] = &block_descriptor_189;
  v0[14] = v2;
  [v1 storeAndForwardStatusWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A666D18()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_23A667068;
  }

  else
  {
    v2 = sub_23A666E28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23A666E28(uint64_t a1)
{
  v2 = *(v1 + 280);
  v3 = *(v1 + 144);
  v4 = sub_23A6DCDF0();
  sub_23A646D48(v4, v2, &qword_27DF9D240, qword_23A6E1D30);
  v5 = sub_23A6DECC4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    sub_23A646DB0(*(v1 + 280), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = sub_23A6DECA4();
    v8 = sub_23A6DF8A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23A63D000, v7, v8, "Result (storeAndForwardStatus): success", v9, 2u);
      MEMORY[0x23EE8A960](v9, -1, -1);
    }

    v10 = *(v1 + 280);

    (*(v6 + 8))(v10, v5);
  }

  v11 = *(v1 + 248);
  v12 = *(v1 + 232);
  v13 = *(v1 + 240);
  sub_23A6DB1A8(*(v1 + 256));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C968, &qword_23A6E2060);
  sub_23A6DF774();

  sub_23A6DE564();
  sub_23A6DE524();
  (*(v13 + 8))(v11, v12);

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_23A667068(uint64_t a1)
{
  v54 = v1;
  v2 = *(v1 + 288);
  v4 = *(v1 + 240);
  v3 = *(v1 + 248);
  v5 = *(v1 + 232);
  swift_willThrow();
  sub_23A6DE564();
  sub_23A6DE524();
  (*(v4 + 8))(v3, v5);
  *(v1 + 152) = v2;
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {
    v7 = *(v1 + 272);

    sub_23A6DA0F4(*(v1 + 160), &v51);
    v8 = v51;
    v9 = v52;
    v10 = v53;
    v11 = sub_23A6DCDF0();
    sub_23A646D48(v11, v7, &qword_27DF9D240, qword_23A6E1D30);
    v12 = sub_23A6DECC4();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {
      sub_23A646DB0(*(v1 + 272), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      sub_23A6775B4(v8, v9, v10);
      v18 = sub_23A6DECA4();
      v19 = sub_23A6DF884();
      sub_23A6775CC(v8, v9, v10);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v50 = v48;
        *v20 = 136446210;
        v51 = v8;
        v52 = v9;
        v53 = v10;
        v21 = PaymentCardReaderSession.ReadError.errorName.getter();
        v47 = v19;
        v23 = sub_23A657E78(v21, v22, &v50);

        *(v20 + 4) = v23;
        _os_log_impl(&dword_23A63D000, v18, v47, "Error (storeAndForwardStatus): %{public}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x23EE8A960](v48, -1, -1);
        MEMORY[0x23EE8A960](v20, -1, -1);
      }

      (*(v13 + 8))(*(v1 + 272), v12);
    }

    sub_23A6763DC();
    v24 = swift_allocError();
    *v25 = v8;
    *(v25 + 8) = v9;
    *(v25 + 16) = v10;
    *(v1 + 184) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C968, &qword_23A6E2060);
    sub_23A6DF764();
    v26 = *(v1 + 152);
  }

  else
  {
    v14 = *(v1 + 264);

    v15 = sub_23A6DCDF0();
    sub_23A646D48(v15, v14, &qword_27DF9D240, qword_23A6E1D30);
    v16 = sub_23A6DECC4();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v14, 1, v16) == 1)
    {
      sub_23A646DB0(*(v1 + 264), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v27 = *(v1 + 288);
      v28 = v27;
      v29 = sub_23A6DECA4();
      v30 = sub_23A6DF884();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v1 + 288);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v51 = v33;
        *v32 = 136315138;
        *(v1 + 176) = v31;
        v34 = v31;
        v35 = sub_23A6DF634();
        v37 = sub_23A657E78(v35, v36, &v51);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_23A63D000, v29, v30, "Error (storeAndForwardStatus): unexpected error [ %s ]", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x23EE8A960](v33, -1, -1);
        MEMORY[0x23EE8A960](v32, -1, -1);
      }

      (*(v17 + 8))(*(v1 + 264), v16);
    }

    v49 = *(v1 + 288);
    v39 = *(v1 + 216);
    v38 = *(v1 + 224);
    v40 = *(v1 + 208);
    type metadata accessor for PaymentCardReaderError(0);
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
    v41 = swift_allocError();
    v43 = v42;
    (*(v39 + 104))(v38, *MEMORY[0x277D43838], v40);
    v44 = sub_23A6DE774();
    (*(v39 + 8))(v38, v40);
    *v43 = v44;
    swift_storeEnumTagMultiPayload();
    *(v1 + 168) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C968, &qword_23A6E2060);
    sub_23A6DF764();
    v26 = v49;
  }

  v45 = *(v1 + 8);

  return v45();
}

uint64_t sub_23A66765C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_23A667734(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C900, &qword_23A6E1D20);
  v3[8] = swift_task_alloc();
  v4 = sub_23A6DE2F4();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A667880, v2, 0);
}

uint64_t sub_23A667880(uint64_t a1)
{
  v52 = v1;
  v2 = v1[14];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v2, 1, v4);
  v8 = v1[14];
  if (v7 == 1)
  {
    sub_23A646DB0(v1[14], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v49 = v1[7];
    v9 = v5;
    v10 = sub_23A6507C0();
    v11 = sub_23A6DCFB0();
    v12 = v10 & 1;
    v5 = v9;
    sub_23A6DCFBC(v12, v49, 0xD00000000000001ALL, 0x800000023A6E89A0, v11, v13);

    (*(v9 + 8))(v8, v4);
  }

  sub_23A66B410(v1[5], v1[6], 0xD00000000000001ALL, 0x800000023A6E89A0);
  v48 = v5;
  v50 = v4;
  v14 = v1[9];
  v15 = v1[10];
  v17 = v1[7];
  v16 = v1[8];
  v18 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_lastCardReadTransactionID;
  swift_beginAccess();
  sub_23A646D48(v17 + v18, v16, &qword_27DF9C900, &qword_23A6E1D20);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v19 = v1[12];
    sub_23A646DB0(v1[8], &qword_27DF9C900, &qword_23A6E1D20);
    sub_23A646D48(v3, v19, &qword_27DF9D240, qword_23A6E1D30);
    if (v6(v19, 1, v50) == 1)
    {
      sub_23A646DB0(v1[12], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v23 = sub_23A6DECA4();
      v24 = sub_23A6DF884();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_23A63D000, v23, v24, "No transaction to decline", v25, 2u);
        MEMORY[0x23EE8A960](v25, -1, -1);
      }

      v26 = v1[12];

      (*(v48 + 8))(v26, v50);
    }

    sub_23A6763DC();
    swift_allocError();
    *v27 = xmmword_23A6E1CF0;
    *(v27 + 16) = 3;
    swift_willThrow();
LABEL_31:

    v44 = v1[1];

    return v44();
  }

  v20 = v1[7];
  (*(v1[10] + 32))(v1[11], v1[8], v1[9]);
  v21 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  v1[15] = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  if (*(v20 + v21) == 1)
  {
    v22 = v1[13];
    sub_23A646D48(v3, v22, &qword_27DF9D240, qword_23A6E1D30);
    if (v6(v22, 1, v50) == 1)
    {
      sub_23A646DB0(v1[13], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v32 = sub_23A6DECA4();
      v33 = sub_23A6DF884();
      if (os_log_type_enabled(v32, v33))
      {
        v46 = v33;
        v34 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v51 = v45;
        buf = v34;
        *v34 = 136315138;
        if (("storeAndForwardStatus(_:)" & 0x2000000000000000) != 0)
        {
          v35 = ("storeAndForwardStatus(_:)" >> 40) & 0xF0000;
        }

        else
        {
          v35 = 1703936;
        }

        if (v35)
        {
          while (sub_23A6DF6F4() != 40 || v36 != 0xE100000000000000)
          {
            v37 = sub_23A6DFC04();

            if ((v37 & 1) != 0 || !((sub_23A6DF6A4() ^ v35) >> 14))
            {
              goto LABEL_28;
            }
          }
        }

LABEL_28:
        v38 = sub_23A6DF704();
        v39 = MEMORY[0x23EE89B50](v38);
        v41 = v40;

        v42 = sub_23A657E78(v39, v41, &v51);

        *(buf + 4) = v42;
        _os_log_impl(&dword_23A63D000, v32, v46, "Error (%s: a previous request is running, returning busy", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        MEMORY[0x23EE8A960](v45, -1, -1);
        MEMORY[0x23EE8A960](buf, -1, -1);
      }

      (*(v48 + 8))(v1[13], v50);
    }

    sub_23A6763DC();
    swift_allocError();
    *v43 = xmmword_23A6E1CA0;
    *(v43 + 16) = 3;
    swift_willThrow();
    (*(v1[10] + 8))(v1[11], v1[9]);
    goto LABEL_31;
  }

  *(v20 + v21) = 1;
  v28 = swift_task_alloc();
  v1[16] = v28;
  *v28 = v1;
  v28[1] = sub_23A667F90;
  v29 = v1[11];
  v30 = v1[7];

  return sub_23A66823C(v28, v30, v29);
}

uint64_t sub_23A667F90()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_23A66817C;
  }

  else
  {
    v4 = sub_23A6680BC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A6680BC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  *(v0[7] + v0[15]) = 0;
  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23A66817C()
{
  *(v0[7] + v0[15]) = 0;
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A66823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = sub_23A6DE2F4();
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v3[6] = *(v6 + 64);
  v3[7] = swift_task_alloc();
  v7 = sub_23A6DE574();
  v3[8] = v7;
  v3[9] = *(v7 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A668364, a2, 0);
}

uint64_t sub_23A668364()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];
  sub_23A6DE4C4();
  sub_23A6DE544();
  (*(v2 + 8))(v1, v3);
  (*(v5 + 16))(v4, v7, v6);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v0[11] = v10;
  *(v10 + 16) = v8;
  (*(v5 + 32))(v10 + v9, v4, v6);

  v11 = swift_task_alloc();
  v0[12] = v11;
  *(v11 + 16) = &unk_23A6E2038;
  *(v11 + 24) = v10;
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_23A6684F4;

  return sub_23A66AF24(0xD000000000000028, 0x800000023A6E88D0);
}

uint64_t sub_23A6684F4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v2[19] = v0;
    v4 = v2[2];

    return MEMORY[0x2822009F8](sub_23A668B64, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[14] = v5;
    *v5 = v3;
    v5[1] = sub_23A668680;

    return sub_23A670C54(0);
  }
}

uint64_t sub_23A668680(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 120) = a1;

  if (v1)
  {
    *(v3 + 152) = v1;
    v4 = *(v3 + 16);

    v5 = sub_23A668B64;
    v6 = v4;
  }

  else
  {
    v6 = *(v3 + 16);
    v5 = sub_23A6687BC;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_23A6687BC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[2];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor, &unk_23A6E1E88);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0xD000000000000028;
  *(v5 + 32) = 0x800000023A6E88D0;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = sub_23A6773AC;
  *(v5 + 64) = v2;
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_23A668920;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A6773F4, v5, v7);
}

uint64_t sub_23A668920()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_23A668AE0;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_23A668A48;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A668A48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A668AE0()
{

  *(v0 + 152) = *(v0 + 144);
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_23A668B64, v1, 0);
}

uint64_t sub_23A668B64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A668BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a3;
  v4[32] = a4;
  v4[29] = a1;
  v4[30] = a2;
  v6 = sub_23A6DE574();
  v4[33] = v6;
  v4[34] = *(v6 - 8);
  v4[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C900, &qword_23A6E1D20);
  v4[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A668D2C, a3, 0);
}

uint64_t sub_23A668D2C()
{
  v1 = v0[29];
  v2 = sub_23A6DE2D4();
  v0[40] = v2;
  v0[2] = v0;
  v0[3] = sub_23A668E5C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C960, &qword_23A6E2050);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A6697CC;
  v0[13] = &block_descriptor_171;
  v0[14] = v3;
  [v1 declineTransaction:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A668E5C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 248);
  if (v2)
  {
    v4 = sub_23A669200;
  }

  else
  {
    v4 = sub_23A668F7C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A668F7C()
{
  v1 = *(v0 + 312);

  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_23A646DB0(*(v0 + 312), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v5 = sub_23A6DECA4();
    v6 = sub_23A6DF8A4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23A63D000, v5, v6, "Result (storeAndForwardDecline): success", v7, 2u);
      MEMORY[0x23EE8A960](v7, -1, -1);
    }

    v8 = *(v0 + 312);

    (*(v4 + 8))(v8, v3);
  }

  v9 = *(v0 + 280);
  v10 = *(v0 + 288);
  v11 = *(v0 + 264);
  v12 = *(v0 + 272);
  v13 = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  sub_23A6DF774();
  v14 = sub_23A6DE2F4();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_lastCardReadTransactionID;
  swift_beginAccess();
  sub_23A677544(v10, v13 + v15);
  swift_endAccess();
  sub_23A6DE4C4();
  sub_23A6DE524();
  (*(v12 + 8))(v9, v11);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_23A669200(uint64_t a1)
{
  v54 = v1;
  v3 = *(v1 + 320);
  v2 = *(v1 + 328);
  v4 = *(v1 + 280);
  v5 = *(v1 + 288);
  v6 = *(v1 + 264);
  v7 = *(v1 + 272);
  v8 = *(v1 + 248);
  swift_willThrow();

  v9 = sub_23A6DE2F4();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_lastCardReadTransactionID;
  swift_beginAccess();
  sub_23A677544(v5, v8 + v10);
  swift_endAccess();
  sub_23A6DE4C4();
  sub_23A6DE524();
  (*(v7 + 8))(v4, v6);
  *(v1 + 192) = v2;
  v11 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {
    v12 = *(v1 + 304);

    sub_23A6DA0F4(*(v1 + 200), &v51);
    v13 = v51;
    v14 = v52;
    v15 = v53;
    v16 = sub_23A6DCDF0();
    sub_23A646D48(v16, v12, &qword_27DF9D240, qword_23A6E1D30);
    v17 = sub_23A6DECC4();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v12, 1, v17) == 1)
    {
      sub_23A646DB0(*(v1 + 304), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      sub_23A6775B4(v13, v14, v15);
      v23 = sub_23A6DECA4();
      v24 = sub_23A6DF884();
      sub_23A6775CC(v13, v14, v15);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v50 = v49;
        *v25 = 136446210;
        v51 = v13;
        v52 = v14;
        v53 = v15;
        v26 = PaymentCardReaderSession.ReadError.errorName.getter();
        v48 = v24;
        v28 = sub_23A657E78(v26, v27, &v50);

        *(v25 + 4) = v28;
        _os_log_impl(&dword_23A63D000, v23, v48, "Error (storeAndForwardDecline): %{public}s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x23EE8A960](v49, -1, -1);
        MEMORY[0x23EE8A960](v25, -1, -1);
      }

      (*(v18 + 8))(*(v1 + 304), v17);
    }

    sub_23A6763DC();
    v29 = swift_allocError();
    *v30 = v13;
    *(v30 + 8) = v14;
    *(v30 + 16) = v15;
    *(v1 + 224) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
    sub_23A6DF764();
    v31 = *(v1 + 192);
  }

  else
  {
    v19 = *(v1 + 296);

    v20 = sub_23A6DCDF0();
    sub_23A646D48(v20, v19, &qword_27DF9D240, qword_23A6E1D30);
    v21 = sub_23A6DECC4();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v19, 1, v21) == 1)
    {
      sub_23A646DB0(*(v1 + 296), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v32 = *(v1 + 328);
      v33 = v32;
      v34 = sub_23A6DECA4();
      v35 = sub_23A6DF884();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = *(v1 + 328);
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v51 = v38;
        *v37 = 136315138;
        *(v1 + 216) = v36;
        v39 = v36;
        v40 = sub_23A6DF634();
        v42 = sub_23A657E78(v40, v41, &v51);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_23A63D000, v34, v35, "Error (storeAndForwardDecline): unexpected error [ %s ]", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x23EE8A960](v38, -1, -1);
        MEMORY[0x23EE8A960](v37, -1, -1);
      }

      (*(v22 + 8))(*(v1 + 296), v21);
    }

    v43 = *(v1 + 328);
    sub_23A6763DC();
    v44 = swift_allocError();
    *v45 = xmmword_23A6E1CB0;
    *(v45 + 16) = 3;
    *(v1 + 208) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
    sub_23A6DF764();
    v31 = v43;
  }

  v46 = *(v1 + 8);

  return v46();
}

uint64_t sub_23A6697CC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_23A669878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *(v6 + 120) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  return MEMORY[0x2822009F8](sub_23A6698A4, a3, 0);
}

uint64_t sub_23A6698A4(uint64_t a1)
{
  v2 = *(v1 + 120);
  v3 = v2 & 1;
  v4 = (v2 >> 8) & 1;
  v8 = *(v1 + 48);
  v9 = *(v1 + 32);
  sub_23A6DE544();
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *(v5 + 16) = v8;
  *(v5 + 32) = v3;
  *(v5 + 33) = v4;
  *(v5 + 40) = v9;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *v6 = v1;
  v6[1] = sub_23A669998;

  return sub_23A66AF24(0xD000000000000026, 0x800000023A6E8920);
}

uint64_t sub_23A669998()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 80) = v6;
    *v6 = v3;
    v6[1] = sub_23A669B14;

    return sub_23A670C54(0);
  }
}

uint64_t sub_23A669B14(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 40);

    return MEMORY[0x2822009F8](sub_23A669C64, v7, 0);
  }
}

uint64_t sub_23A669C64()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor, &unk_23A6E1E88);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0xD000000000000026;
  *(v5 + 32) = 0x800000023A6E8920;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = sub_23A677AB4;
  *(v5 + 64) = v2;
  v6 = swift_task_alloc();
  v0[13] = v6;
  v7 = type metadata accessor for PaymentCardReaderSession(0);
  *v6 = v0;
  v6[1] = sub_23A669DE0;

  return MEMORY[0x2822008A0](v0 + 2, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A677AD8, v5, v7);
}

uint64_t sub_23A669DE0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_23A669F8C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_23A669F08;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A669F08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 16);

  *v1 = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23A669F8C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23A66A000(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v45 = a7;
  v46 = a1;
  v42 = a6;
  v43 = a2;
  LODWORD(v40) = a5;
  v38 = a4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9A0, &unk_23A6E20A8);
  v48 = *(v41 - 8);
  v44 = *(v48 + 64);
  MEMORY[0x28223BE20](v41);
  v49 = &v32 - v9;
  v47 = sub_23A6DE574();
  v35 = *(v47 - 8);
  v39 = *(v35 + 64);
  MEMORY[0x28223BE20](v47);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v11;
  v12 = sub_23A6DE754();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_23A6DE7F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = *(v14 + 16);
  v34 = v13;
  v17(&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v13, v16);
  aBlock = a4;
  LOWORD(v51) = v40 & 0x101;
  v36 = (v40 >> 8) & 1;
  v37 = v40 & 1;
  sub_23A6DA0E8();
  v18 = objc_allocWithZone(sub_23A6DE964());
  v40 = sub_23A6DE954();
  v19 = v35;
  (*(v35 + 16))(v11, v42, v47);
  v20 = v48;
  v21 = v41;
  (*(v48 + 16))(v49, v43, v41);
  (v17)(&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v13);
  v22 = v19;
  v23 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v24 = (v39 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v20 + 80) + v24 + 8) & ~*(v20 + 80);
  v26 = (v44 + *(v14 + 80) + v25) & ~*(v14 + 80);
  v27 = swift_allocObject();
  (*(v22 + 32))(v27 + v23, v33, v47);
  *(v27 + v24) = v45;
  (*(v48 + 32))(v27 + v25, v49, v21);
  (*(v14 + 32))(v27 + v26, &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
  v28 = v27 + ((v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v28 = v38;
  v29 = v36;
  *(v28 + 8) = v37;
  *(v28 + 9) = v29;
  v54 = sub_23A677B04;
  v55 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_23A66AE90;
  v53 = &block_descriptor_261;
  v30 = _Block_copy(&aBlock);

  v31 = v40;
  [v46 startSession:v40 completion:v30];
  _Block_release(v30);
}

void sub_23A66A480(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, int a8)
{
  LODWORD(v87) = a8;
  v86 = a7;
  v84 = a6;
  v93 = a5;
  v90 = a4;
  v88 = a1;
  v9 = sub_23A6DE784();
  v85 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A8, &qword_23A6E12A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v84 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v21);
  v89 = &v84 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v84 - v24;
  v92 = type metadata accessor for PaymentCardReaderError(0);
  MEMORY[0x28223BE20](v92);
  v91 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v84 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = (&v84 - v31);
  sub_23A6DE524();
  if (a2)
  {
    v33 = a2;
    sub_23A6476F4(v33, v32);
    v88 = sub_23A6DCDF0();
    sub_23A646D48(v88, v25, &qword_27DF9D240, qword_23A6E1D30);
    v34 = sub_23A6DECC4();
    v35 = *(v34 - 8);
    v87 = *(v35 + 48);
    if (v87(v25, 1, v34) == 1)
    {
      sub_23A646DB0(v25, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v85 = v35;
      v86 = v33;
      sub_23A648DF0(v32, v29);
      v48 = sub_23A6DECA4();
      v49 = sub_23A6DF884();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v94 = v84;
        *v50 = 136446210;
        v51 = PaymentCardReaderError.errorName.getter();
        v53 = v52;
        sub_23A648E54(v29);
        v54 = sub_23A657E78(v51, v53, &v94);

        *(v50 + 4) = v54;
        _os_log_impl(&dword_23A63D000, v48, v49, "Error (prepare): %{public}s", v50, 0xCu);
        v55 = v84;
        __swift_destroy_boxed_opaque_existential_1Tm(v84);
        MEMORY[0x23EE8A960](v55, -1, -1);
        MEMORY[0x23EE8A960](v50, -1, -1);
      }

      else
      {

        sub_23A648E54(v29);
      }

      v35 = v85;
      (*(v85 + 8))(v25, v34);
      v33 = v86;
    }

    v56 = v91;
    sub_23A648DF0(v32, v91);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_23A648E54(v56);
    if (EnumCaseMultiPayload == 18)
    {
      v58 = v89;
      sub_23A646D48(v88, v89, &qword_27DF9D240, qword_23A6E1D30);
      if (v87(v58, 1, v34) == 1)
      {
        sub_23A646DB0(v58, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v59 = sub_23A6DECA4();
        v60 = sub_23A6DF8A4();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = v35;
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_23A63D000, v59, v60, "busy on prepare, no clean up", v62, 2u);
          v63 = v62;
          v35 = v61;
          MEMORY[0x23EE8A960](v63, -1, -1);
        }

        (*(v35 + 8))(v89, v34);
      }
    }

    else
    {
      *(v90 + 208) = 0;
    }

    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
    v64 = swift_allocError();
    sub_23A648DF0(v32, v65);
    v94 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9A0, &unk_23A6E20A8);
    sub_23A6DF764();

    sub_23A648E54(v32);
  }

  else
  {
    v36 = v85;
    v37 = v86;
    v38 = v87;
    if (v88)
    {
      v39 = v17;
      v40 = v14;
      v41 = v88;
      v42 = sub_23A6DCDF0();
      v43 = v39;
      sub_23A646D48(v42, v39, &qword_27DF9D240, qword_23A6E1D30);
      v44 = sub_23A6DECC4();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(v39, 1, v44) == 1)
      {
        sub_23A646DB0(v39, &qword_27DF9D240, qword_23A6E1D30);
        v46 = v84;
        v47 = v38;
      }

      else
      {
        v92 = v41;
        v71 = sub_23A6DECA4();
        v72 = sub_23A6DF8A4();
        v47 = v38;
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_23A63D000, v71, v72, "Result (prepare): session created", v73, 2u);
          MEMORY[0x23EE8A960](v73, -1, -1);
        }

        (*(v45 + 8))(v43, v44);
        v46 = v84;
        v41 = v92;
      }

      v94 = v37;
      v95 = v47 & 0x101;
      sub_23A6DE6F4();
      v74 = sub_23A6DE6E4();
      v76 = sub_23A676B60(v46, &v94, v40, v74, v75 & 1);
      sub_23A646DB0(v40, &qword_27DF9C7A8, &qword_23A6E12A0);
      *(v90 + 208) = v76;

      v94 = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9A0, &unk_23A6E20A8);
      sub_23A6DF774();
    }

    else
    {
      v66 = sub_23A6DCDF0();
      v67 = v20;
      sub_23A646D48(v66, v20, &qword_27DF9D240, qword_23A6E1D30);
      v68 = sub_23A6DECC4();
      v69 = *(v68 - 8);
      if ((*(v69 + 48))(v20, 1, v68) == 1)
      {
        sub_23A646DB0(v20, &qword_27DF9D240, qword_23A6E1D30);
        v70 = v11;
      }

      else
      {
        v77 = sub_23A6DECA4();
        v78 = sub_23A6DF884();
        v70 = v11;
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_23A63D000, v77, v78, "Error (prepare): unknown", v79, 2u);
          MEMORY[0x23EE8A960](v79, -1, -1);
        }

        (*(v69 + 8))(v67, v68);
      }

      sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
      v80 = swift_allocError();
      v82 = v81;
      (*(v36 + 104))(v70, *MEMORY[0x277D43838], v9);
      v83 = sub_23A6DE774();
      (*(v36 + 8))(v70, v9);
      *v82 = v83;
      swift_storeEnumTagMultiPayload();
      v94 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9A0, &unk_23A6E20A8);
      sub_23A6DF764();
    }
  }
}

void sub_23A66AE98(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_23A66AF24(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A66AFC4, v2, 0);
}

uint64_t sub_23A66AFC4()
{
  v23 = v0;
  if (*sub_23A64950C() == 1)
  {
    v1 = v0[4];
    v2 = v1[21];
    v3 = v1[22];
    v4 = __swift_project_boxed_opaque_existential_1(v1 + 18, v2);
    v5 = *(v2 - 8);
    v6 = swift_task_alloc();
    (*(v5 + 16))(v6, v4, v2);
    LOBYTE(v4) = (*(v3 + 16))(v2, v3);
    (*(v5 + 8))(v6, v2);

    if (v4 & 1) != 0 || (*(v0[4] + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_backgroundAllowed))
    {

      v7 = v0[1];
      goto LABEL_6;
    }

    v9 = v0[5];
    v10 = sub_23A6DCDF0();
    sub_23A646D48(v10, v9, &qword_27DF9D240, qword_23A6E1D30);
    v11 = sub_23A6DECC4();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_23A646DB0(v0[5], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {

      v13 = sub_23A6DECA4();
      v14 = sub_23A6DF884();

      if (os_log_type_enabled(v13, v14))
      {
        v16 = v0[2];
        v15 = v0[3];
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v18;
        *v17 = 136315138;
        v19 = sub_23A66B368(v16, v15);
        v21 = sub_23A657E78(v19, v20, &v22);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_23A63D000, v13, v14, "Warning (%s: backgroundRequestNotAllowed", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x23EE8A960](v18, -1, -1);
        MEMORY[0x23EE8A960](v17, -1, -1);
      }

      (*(v12 + 8))(v0[5], v11);
    }
  }

  type metadata accessor for PaymentCardReaderError(0);
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v7 = v0[1];
LABEL_6:

  return v7();
}

uint64_t sub_23A66B368(uint64_t a1, unint64_t a2)
{
  sub_23A673B98(40, 0xE100000000000000, a1, a2);
  v2 = sub_23A6DF704();
  v3 = MEMORY[0x23EE89B50](v2);

  return v3;
}

uint64_t sub_23A66B410(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v48 = a3;
  v49 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v14 = v4[21];
  v13 = v4[22];
  v15 = __swift_project_boxed_opaque_existential_1(v4 + 18, v14);
  v16 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  LOBYTE(v13) = (*(v13 + 16))(v14, v13);
  (*(v16 + 8))(v19, v14);
  if ((v13 & 1) == 0 && (*(v5 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_backgroundAllowed) & 1) == 0)
  {
    v29 = sub_23A6DCDF0();
    v30 = v12;
    sub_23A646D48(v29, v12, &qword_27DF9D240, qword_23A6E1D30);
    v31 = sub_23A6DECC4();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      sub_23A646DB0(v30, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v38 = v49;

      v39 = sub_23A6DECA4();
      v40 = sub_23A6DF884();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v51 = v42;
        *v41 = 136315138;
        v43 = sub_23A66B368(v48, v38);
        v45 = sub_23A657E78(v43, v44, &v51);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_23A63D000, v39, v40, "Warning (%s: readFromBackgroundError", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x23EE8A960](v42, -1, -1);
        MEMORY[0x23EE8A960](v41, -1, -1);
      }

      (*(v32 + 8))(v30, v31);
    }

    v37 = 1;
    goto LABEL_21;
  }

  v20 = v5[26];
  v21 = a1;
  v22 = a2;
  if (!v20 || ((result = *(v20 + 32), result == v21) ? (v24 = *(v20 + 40) == a2) : (v24 = 0), !v24 && (result = sub_23A6DFC04(), (result & 1) == 0)))
  {
    v25 = sub_23A6DCDF0();
    v26 = v50;
    sub_23A646D48(v25, v50, &qword_27DF9D240, qword_23A6E1D30);
    v27 = sub_23A6DECC4();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      sub_23A646DB0(v26, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {

      v33 = sub_23A6DECA4();
      v34 = sub_23A6DF884();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v51 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_23A657E78(v21, v22, &v51);
        _os_log_impl(&dword_23A63D000, v33, v34, "Session is wrong, nil or invalidated [ %s ]", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        v26 = v50;
        MEMORY[0x23EE8A960](v36, -1, -1);
        MEMORY[0x23EE8A960](v35, -1, -1);
      }

      (*(v28 + 8))(v26, v27);
    }

    v37 = 4;
LABEL_21:
    sub_23A6763DC();
    swift_allocError();
    *v46 = v37;
    *(v46 + 8) = 0;
    *(v46 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23A66B94C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 24) = a2;
  *(v6 + 96) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A66B9F4, v5, 0);
}

uint64_t sub_23A66B9F4(uint64_t a1)
{
  v24 = v1;
  v2 = *(v1 + 56);
  v3 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  *(v1 + 72) = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  if (*(v2 + v3) == 1)
  {
    v4 = *(v1 + 64);
    v5 = sub_23A6DCDF0();
    sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
    v6 = sub_23A6DECC4();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_23A646DB0(*(v1 + 64), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {

      v11 = sub_23A6DECA4();
      v12 = sub_23A6DF884();

      if (os_log_type_enabled(v11, v12))
      {
        v14 = *(v1 + 24);
        v13 = *(v1 + 32);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23 = v16;
        *v15 = 136315138;
        v17 = sub_23A66B368(v14, v13);
        v19 = sub_23A657E78(v17, v18, &v23);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_23A63D000, v11, v12, "Error (%s: a previous request is running, returning busy", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x23EE8A960](v16, -1, -1);
        MEMORY[0x23EE8A960](v15, -1, -1);
      }

      (*(v7 + 8))(*(v1 + 64), v6);
    }

    if (*(v1 + 96) == 1)
    {
      sub_23A6763DC();
      swift_allocError();
      *v20 = xmmword_23A6E1CA0;
      *(v20 + 16) = 3;
    }

    else
    {
      type metadata accessor for PaymentCardReaderError(0);
      sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    swift_willThrow();

    v21 = *(v1 + 8);

    return v21();
  }

  else
  {
    v8 = *(v1 + 40);
    *(v2 + v3) = 1;
    v22 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v1 + 80) = v9;
    *v9 = v1;
    v9[1] = sub_23A66BDBC;

    return v22(v1 + 16);
  }
}

uint64_t sub_23A66BDBC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_23A66BF5C;
  }

  else
  {
    v4 = sub_23A66BEE8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A66BEE8()
{
  *(v0[7] + v0[9]) = 0;
  v1 = v0[2];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_23A66BF5C()
{
  *(v0[7] + v0[9]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A66BFCC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v47[1] = a8;
  v48 = a7;
  v51 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v13 - 8);
  v50 = v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v47 - v19;
  v21 = *(v16 + 16);
  v52 = a1;
  v21(v47 - v19, a1, v15, v18);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v47[0] = a3;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v25 = *(v16 + 32);
  v49 = v15;
  v25(v24 + v22, v20, v15);
  v26 = v24 + v23;
  v27 = a5;
  *v26 = a5;
  *(v26 + 8) = a6;
  aBlock[4] = sub_23A677E90;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_291;
  v28 = _Block_copy(aBlock);

  v29 = [v51 remoteObjectProxyWithErrorHandler_];
  _Block_release(v28);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v48(v53, v52);
    return swift_unknownObjectRelease();
  }

  v31 = sub_23A6DCDF0();
  v32 = v50;
  sub_23A646D48(v31, v50, &qword_27DF9D240, qword_23A6E1D30);
  v33 = sub_23A6DECC4();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {

    v37 = sub_23A6DECA4();
    v38 = sub_23A6DF884();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315138;
      v41 = sub_23A66B368(v47[0], a4);
      v43 = v27;
      v44 = sub_23A657E78(v41, v42, aBlock);

      *(v39 + 4) = v44;
      v27 = v43;
      _os_log_impl(&dword_23A63D000, v37, v38, "Error (%s: unexpected proxy type", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x23EE8A960](v40, -1, -1);
      v32 = v50;
      MEMORY[0x23EE8A960](v39, -1, -1);
    }

    (*(v34 + 8))(v32, v33);
    v35 = *(v27 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v36 = swift_allocError();
    if (v35)
    {
      v46 = xmmword_23A6E1D10;
    }

    else
    {
      v46 = xmmword_23A6E1D00;
    }

    *v45 = v46;
    *(v45 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v32, &qword_27DF9D240, qword_23A6E1D30);
  v35 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError(0);
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
  v36 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v36;
  return sub_23A6DF764();
}

uint64_t sub_23A66C514(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v47[1] = a8;
  v48 = a7;
  v51 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v13 - 8);
  v50 = v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C998, &qword_23A6E20A0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v47 - v19;
  v21 = *(v16 + 16);
  v52 = a1;
  v21(v47 - v19, a1, v15, v18);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v47[0] = a3;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v25 = *(v16 + 32);
  v49 = v15;
  v25(v24 + v22, v20, v15);
  v26 = v24 + v23;
  v27 = a5;
  *v26 = a5;
  *(v26 + 8) = a6;
  aBlock[4] = sub_23A677A24;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_237;
  v28 = _Block_copy(aBlock);

  v29 = [v51 remoteObjectProxyWithErrorHandler_];
  _Block_release(v28);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v48(v53, v52);
    return swift_unknownObjectRelease();
  }

  v31 = sub_23A6DCDF0();
  v32 = v50;
  sub_23A646D48(v31, v50, &qword_27DF9D240, qword_23A6E1D30);
  v33 = sub_23A6DECC4();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {

    v37 = sub_23A6DECA4();
    v38 = sub_23A6DF884();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315138;
      v41 = sub_23A66B368(v47[0], a4);
      v43 = v27;
      v44 = sub_23A657E78(v41, v42, aBlock);

      *(v39 + 4) = v44;
      v27 = v43;
      _os_log_impl(&dword_23A63D000, v37, v38, "Error (%s: unexpected proxy type", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x23EE8A960](v40, -1, -1);
      v32 = v50;
      MEMORY[0x23EE8A960](v39, -1, -1);
    }

    (*(v34 + 8))(v32, v33);
    v35 = *(v27 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v36 = swift_allocError();
    if (v35)
    {
      v46 = xmmword_23A6E1D10;
    }

    else
    {
      v46 = xmmword_23A6E1D00;
    }

    *v45 = v46;
    *(v45 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v32, &qword_27DF9D240, qword_23A6E1D30);
  v35 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError(0);
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
  v36 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v36;
  return sub_23A6DF764();
}

uint64_t sub_23A66CA5C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v47[1] = a8;
  v48 = a7;
  v51 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v13 - 8);
  v50 = v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v47 - v19;
  v21 = *(v16 + 16);
  v52 = a1;
  v21(v47 - v19, a1, v15, v18);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v47[0] = a3;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v25 = *(v16 + 32);
  v49 = v15;
  v25(v24 + v22, v20, v15);
  v26 = v24 + v23;
  v27 = a5;
  *v26 = a5;
  *(v26 + 8) = a6;
  aBlock[4] = sub_23A67740C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_163;
  v28 = _Block_copy(aBlock);

  v29 = [v51 remoteObjectProxyWithErrorHandler_];
  _Block_release(v28);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v48(v53, v52);
    return swift_unknownObjectRelease();
  }

  v31 = sub_23A6DCDF0();
  v32 = v50;
  sub_23A646D48(v31, v50, &qword_27DF9D240, qword_23A6E1D30);
  v33 = sub_23A6DECC4();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {

    v37 = sub_23A6DECA4();
    v38 = sub_23A6DF884();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315138;
      v41 = sub_23A66B368(v47[0], a4);
      v43 = v27;
      v44 = sub_23A657E78(v41, v42, aBlock);

      *(v39 + 4) = v44;
      v27 = v43;
      _os_log_impl(&dword_23A63D000, v37, v38, "Error (%s: unexpected proxy type", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x23EE8A960](v40, -1, -1);
      v32 = v50;
      MEMORY[0x23EE8A960](v39, -1, -1);
    }

    (*(v34 + 8))(v32, v33);
    v35 = *(v27 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v36 = swift_allocError();
    if (v35)
    {
      v46 = xmmword_23A6E1D10;
    }

    else
    {
      v46 = xmmword_23A6E1D00;
    }

    *v45 = v46;
    *(v45 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v32, &qword_27DF9D240, qword_23A6E1D30);
  v35 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError(0);
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
  v36 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v36;
  return sub_23A6DF764();
}

uint64_t sub_23A66CFA4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v47[1] = a8;
  v48 = a7;
  v51 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v13 - 8);
  v50 = v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C988, &qword_23A6E2090);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v47 - v19;
  v21 = *(v16 + 16);
  v52 = a1;
  v21(v47 - v19, a1, v15, v18);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v47[0] = a3;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v25 = *(v16 + 32);
  v49 = v15;
  v25(v24 + v22, v20, v15);
  v26 = v24 + v23;
  v27 = a5;
  *v26 = a5;
  *(v26 + 8) = a6;
  aBlock[4] = sub_23A67797C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_225;
  v28 = _Block_copy(aBlock);

  v29 = [v51 remoteObjectProxyWithErrorHandler_];
  _Block_release(v28);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v48(v53, v52);
    return swift_unknownObjectRelease();
  }

  v31 = sub_23A6DCDF0();
  v32 = v50;
  sub_23A646D48(v31, v50, &qword_27DF9D240, qword_23A6E1D30);
  v33 = sub_23A6DECC4();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {

    v37 = sub_23A6DECA4();
    v38 = sub_23A6DF884();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315138;
      v41 = sub_23A66B368(v47[0], a4);
      v43 = v27;
      v44 = sub_23A657E78(v41, v42, aBlock);

      *(v39 + 4) = v44;
      v27 = v43;
      _os_log_impl(&dword_23A63D000, v37, v38, "Error (%s: unexpected proxy type", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x23EE8A960](v40, -1, -1);
      v32 = v50;
      MEMORY[0x23EE8A960](v39, -1, -1);
    }

    (*(v34 + 8))(v32, v33);
    v35 = *(v27 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v36 = swift_allocError();
    if (v35)
    {
      v46 = xmmword_23A6E1D10;
    }

    else
    {
      v46 = xmmword_23A6E1D00;
    }

    *v45 = v46;
    *(v45 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v32, &qword_27DF9D240, qword_23A6E1D30);
  v35 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError(0);
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
  v36 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v36;
  return sub_23A6DF764();
}

uint64_t sub_23A66D4EC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v47[1] = a8;
  v48 = a7;
  v51 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v13 - 8);
  v50 = v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C980, &qword_23A6E2088);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v47 - v19;
  v21 = *(v16 + 16);
  v52 = a1;
  v21(v47 - v19, a1, v15, v18);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v47[0] = a3;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v25 = *(v16 + 32);
  v49 = v15;
  v25(v24 + v22, v20, v15);
  v26 = v24 + v23;
  v27 = a5;
  *v26 = a5;
  *(v26 + 8) = a6;
  aBlock[4] = sub_23A677880;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_210;
  v28 = _Block_copy(aBlock);

  v29 = [v51 remoteObjectProxyWithErrorHandler_];
  _Block_release(v28);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v48(v53, v52);
    return swift_unknownObjectRelease();
  }

  v31 = sub_23A6DCDF0();
  v32 = v50;
  sub_23A646D48(v31, v50, &qword_27DF9D240, qword_23A6E1D30);
  v33 = sub_23A6DECC4();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {

    v37 = sub_23A6DECA4();
    v38 = sub_23A6DF884();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315138;
      v41 = sub_23A66B368(v47[0], a4);
      v43 = v27;
      v44 = sub_23A657E78(v41, v42, aBlock);

      *(v39 + 4) = v44;
      v27 = v43;
      _os_log_impl(&dword_23A63D000, v37, v38, "Error (%s: unexpected proxy type", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x23EE8A960](v40, -1, -1);
      v32 = v50;
      MEMORY[0x23EE8A960](v39, -1, -1);
    }

    (*(v34 + 8))(v32, v33);
    v35 = *(v27 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v36 = swift_allocError();
    if (v35)
    {
      v46 = xmmword_23A6E1D10;
    }

    else
    {
      v46 = xmmword_23A6E1D00;
    }

    *v45 = v46;
    *(v45 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v32, &qword_27DF9D240, qword_23A6E1D30);
  v35 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError(0);
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
  v36 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v36;
  return sub_23A6DF764();
}

uint64_t sub_23A66DA34(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v47[1] = a8;
  v48 = a7;
  v51 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v13 - 8);
  v50 = v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C978, &qword_23A6E2080);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v47 - v19;
  v21 = *(v16 + 16);
  v52 = a1;
  v21(v47 - v19, a1, v15, v18);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v47[0] = a3;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v25 = *(v16 + 32);
  v49 = v15;
  v25(v24 + v22, v20, v15);
  v26 = v24 + v23;
  v27 = a5;
  *v26 = a5;
  *(v26 + 8) = a6;
  aBlock[4] = sub_23A677820;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_195;
  v28 = _Block_copy(aBlock);

  v29 = [v51 remoteObjectProxyWithErrorHandler_];
  _Block_release(v28);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v48(v53, v52);
    return swift_unknownObjectRelease();
  }

  v31 = sub_23A6DCDF0();
  v32 = v50;
  sub_23A646D48(v31, v50, &qword_27DF9D240, qword_23A6E1D30);
  v33 = sub_23A6DECC4();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {

    v37 = sub_23A6DECA4();
    v38 = sub_23A6DF884();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315138;
      v41 = sub_23A66B368(v47[0], a4);
      v43 = v27;
      v44 = sub_23A657E78(v41, v42, aBlock);

      *(v39 + 4) = v44;
      v27 = v43;
      _os_log_impl(&dword_23A63D000, v37, v38, "Error (%s: unexpected proxy type", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x23EE8A960](v40, -1, -1);
      v32 = v50;
      MEMORY[0x23EE8A960](v39, -1, -1);
    }

    (*(v34 + 8))(v32, v33);
    v35 = *(v27 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v36 = swift_allocError();
    if (v35)
    {
      v46 = xmmword_23A6E1D10;
    }

    else
    {
      v46 = xmmword_23A6E1D00;
    }

    *v45 = v46;
    *(v45 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v32, &qword_27DF9D240, qword_23A6E1D30);
  v35 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError(0);
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
  v36 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v36;
  return sub_23A6DF764();
}

uint64_t sub_23A66DF7C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v47[1] = a8;
  v48 = a7;
  v51 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v13 - 8);
  v50 = v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C968, &qword_23A6E2060);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v47 - v19;
  v21 = *(v16 + 16);
  v52 = a1;
  v21(v47 - v19, a1, v15, v18);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v47[0] = a3;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v25 = *(v16 + 32);
  v49 = v15;
  v25(v24 + v22, v20, v15);
  v26 = v24 + v23;
  v27 = a5;
  *v26 = a5;
  *(v26 + 8) = a6;
  aBlock[4] = sub_23A677644;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_181;
  v28 = _Block_copy(aBlock);

  v29 = [v51 remoteObjectProxyWithErrorHandler_];
  _Block_release(v28);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v48(v53, v52);
    return swift_unknownObjectRelease();
  }

  v31 = sub_23A6DCDF0();
  v32 = v50;
  sub_23A646D48(v31, v50, &qword_27DF9D240, qword_23A6E1D30);
  v33 = sub_23A6DECC4();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {

    v37 = sub_23A6DECA4();
    v38 = sub_23A6DF884();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315138;
      v41 = sub_23A66B368(v47[0], a4);
      v43 = v27;
      v44 = sub_23A657E78(v41, v42, aBlock);

      *(v39 + 4) = v44;
      v27 = v43;
      _os_log_impl(&dword_23A63D000, v37, v38, "Error (%s: unexpected proxy type", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x23EE8A960](v40, -1, -1);
      v32 = v50;
      MEMORY[0x23EE8A960](v39, -1, -1);
    }

    (*(v34 + 8))(v32, v33);
    v35 = *(v27 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v36 = swift_allocError();
    if (v35)
    {
      v46 = xmmword_23A6E1D10;
    }

    else
    {
      v46 = xmmword_23A6E1D00;
    }

    *v45 = v46;
    *(v45 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v32, &qword_27DF9D240, qword_23A6E1D30);
  v35 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError(0);
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
  v36 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v36;
  return sub_23A6DF764();
}

uint64_t sub_23A66E4C4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v47[1] = a8;
  v48 = a7;
  v51 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v13 - 8);
  v50 = v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9A0, &unk_23A6E20A8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v47 - v19;
  v21 = *(v16 + 16);
  v52 = a1;
  v21(v47 - v19, a1, v15, v18);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v47[0] = a3;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v25 = *(v16 + 32);
  v49 = v15;
  v25(v24 + v22, v20, v15);
  v26 = v24 + v23;
  v27 = a5;
  *v26 = a5;
  *(v26 + 8) = a6;
  aBlock[4] = sub_23A677AF0;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_255;
  v28 = _Block_copy(aBlock);

  v29 = [v51 remoteObjectProxyWithErrorHandler_];
  _Block_release(v28);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v48(v53, v52);
    return swift_unknownObjectRelease();
  }

  v31 = sub_23A6DCDF0();
  v32 = v50;
  sub_23A646D48(v31, v50, &qword_27DF9D240, qword_23A6E1D30);
  v33 = sub_23A6DECC4();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {

    v37 = sub_23A6DECA4();
    v38 = sub_23A6DF884();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315138;
      v41 = sub_23A66B368(v47[0], a4);
      v43 = v27;
      v44 = sub_23A657E78(v41, v42, aBlock);

      *(v39 + 4) = v44;
      v27 = v43;
      _os_log_impl(&dword_23A63D000, v37, v38, "Error (%s: unexpected proxy type", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x23EE8A960](v40, -1, -1);
      v32 = v50;
      MEMORY[0x23EE8A960](v39, -1, -1);
    }

    (*(v34 + 8))(v32, v33);
    v35 = *(v27 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v36 = swift_allocError();
    if (v35)
    {
      v46 = xmmword_23A6E1D10;
    }

    else
    {
      v46 = xmmword_23A6E1D00;
    }

    *v45 = v46;
    *(v45 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v32, &qword_27DF9D240, qword_23A6E1D30);
  v35 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError(0);
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
  v36 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v36;
  return sub_23A6DF764();
}

uint64_t sub_23A66EA0C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7, uint64_t *a8)
{
  v41 = a7;
  v40 = a6;
  v39 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v37 - v14;
  v16 = sub_23A6DCDF0();
  sub_23A646D48(v16, v15, &qword_27DF9D240, qword_23A6E1D30);
  v17 = sub_23A6DECC4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_23A646DB0(v15, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v38 = a8;

    v19 = a1;
    v20 = sub_23A6DECA4();
    v21 = sub_23A6DF884();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37[1] = a4;
      v24 = v23;
      v43 = v23;
      *v22 = 136315394;
      v25 = sub_23A66B368(a2, a3);
      v27 = sub_23A657E78(v25, v26, &v43);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2080;
      v42 = a1;
      v28 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
      v29 = sub_23A6DF634();
      v31 = sub_23A657E78(v29, v30, &v43);

      *(v22 + 14) = v31;
      _os_log_impl(&dword_23A63D000, v20, v21, "Error (%s: proxy error handler [ %s ]", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE8A960](v24, -1, -1);
      MEMORY[0x23EE8A960](v22, -1, -1);
    }

    (*(v18 + 8))(v15, v17);
    a8 = v38;
  }

  v32 = *(v39 + 194);
  if (v40)
  {
    sub_23A6763DC();
    v34 = swift_allocError();
    if (v32)
    {
      v35 = xmmword_23A6E1D10;
    }

    else
    {
      v35 = xmmword_23A6E1D00;
    }

    *v33 = v35;
    *(v33 + 16) = 3;
  }

  else
  {
    type metadata accessor for PaymentCardReaderError(0);
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
    v34 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  v43 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(v41, a8);
  return sub_23A6DF764();
}

uint64_t sub_23A66EDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v24 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v23 - v17;
  v19 = sub_23A6DF7B4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(v15, a2, v12);
  v20 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a3;
  *(v21 + 5) = a4;
  *(v21 + 6) = a1;
  (*(v13 + 32))(&v21[v20], v15, v12);

  swift_unknownObjectRetain();
  sub_23A64A15C(0, 0, v18, v24, v21);
}

uint64_t sub_23A66EFA4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_23A647140;

  return v12(a6, a7);
}

uint64_t sub_23A66F0A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_23A647234;

  return v12(a6, a7);
}

uint64_t sub_23A66F1AC(int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  if (*(v1 + 192) == 5)
  {
    goto LABEL_17;
  }

  LOBYTE(aBlock[0]) = *(v1 + 192);
  LOBYTE(v43) = 2;
  sub_23A676584();
  if (sub_23A6DF604())
  {
    goto LABEL_3;
  }

  if (*(v1 + 192) == 5)
  {
LABEL_17:
    v22 = 0;
    v23 = 0xE000000000000000;
    goto LABEL_18;
  }

  LOBYTE(aBlock[0]) = *(v1 + 192);
  LOBYTE(v43) = 1;
  if (sub_23A6DF604())
  {
LABEL_3:
    v45 = a1;
    v44 = 3;
    sub_23A6765D8();
    sub_23A6DF714();
    sub_23A6DF714();
    if (aBlock[0] == v43 || (v45 = a1, v44 = 0, sub_23A6DF714(), sub_23A6DF714(), aBlock[0] == v43))
    {
      v10 = *(v1 + 200);
      if (v10)
      {
        aBlock[4] = sub_23A678258;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23A65AE64;
        aBlock[3] = &block_descriptor_0;
        v11 = _Block_copy(aBlock);
        v12 = v10;

        v13 = [v12 remoteObjectProxyWithErrorHandler_];
        _Block_release(v11);

        sub_23A6DF994();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
        if (swift_dynamicCast())
        {
          v14 = aBlock[0];
          v15 = sub_23A6DCDF0();
          sub_23A646D48(v15, v9, &qword_27DF9D240, qword_23A6E1D30);
          v16 = sub_23A6DECC4();
          v17 = *(v16 - 8);
          if ((*(v17 + 48))(v9, 1, v16) == 1)
          {
            sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
          }

          else
          {
            v18 = sub_23A6DECA4();
            v19 = sub_23A6DF8A4();
            if (os_log_type_enabled(v18, v19))
            {
              v20 = swift_slowAlloc();
              *v20 = 0;
              _os_log_impl(&dword_23A63D000, v18, v19, "Going to background, disconnecting", v20, 2u);
              MEMORY[0x23EE8A960](v20, -1, -1);
            }

            (*(v17 + 8))(v9, v16);
          }

          [v14 closeSessionWithDelete:0 backgrounded:1];
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v21 = *(v2 + 192);
  if (v21 == 5)
  {
    goto LABEL_17;
  }

  v22 = sub_23A6B41BC(v21);
  v23 = v38;
LABEL_18:
  v24 = sub_23A6DCDF0();
  sub_23A646D48(v24, v6, &qword_27DF9D240, qword_23A6E1D30);
  v25 = sub_23A6DECC4();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v6, 1, v25) == 1)
  {

    result = sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v41 = a1;

    v28 = sub_23A6DECA4();
    v29 = sub_23A6DF8A4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v40 = v2;
      v31 = v30;
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136446466;
      v33 = sub_23A657E78(v22, v23, aBlock);

      *(v31 + 4) = v33;
      *(v31 + 12) = 2082;
      LOBYTE(v43) = v41;
      sub_23A676530();
      v34 = sub_23A6DFBD4();
      v36 = sub_23A657E78(v34, v35, aBlock);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_23A63D000, v28, v29, "Foreground state change: [ %{public}s, %{public}s ]", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE8A960](v32, -1, -1);
      v37 = v31;
      v2 = v40;
      MEMORY[0x23EE8A960](v37, -1, -1);
    }

    else
    {
    }

    result = (*(v26 + 8))(v6, v25);
    LOBYTE(a1) = v41;
  }

  *(v2 + 192) = a1;
  return result;
}

uint64_t sub_23A66F7D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_23A6DCDF0();
  sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
  v6 = sub_23A6DECC4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_23A646DB0(v4, &qword_27DF9D240, qword_23A6E1D30);
  }

  v9 = a1;
  v10 = sub_23A6DECA4();
  v11 = sub_23A6DF884();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = a1;
    v19 = v13;
    *v12 = 136315138;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v15 = sub_23A6DF634();
    v17 = sub_23A657E78(v15, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_23A63D000, v10, v11, "Error (closeSession): proxy error handler [ %s ]", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x23EE8A960](v13, -1, -1);
    MEMORY[0x23EE8A960](v12, -1, -1);
  }

  return (*(v7 + 8))(v4, v6);
}

uint64_t sub_23A66FA04(char a1)
{
  v2 = v1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C948, &qword_23A6E1E40);
  v4 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v46 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v46 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v52 = sub_23A6DCDF0();
  sub_23A646D48(v52, v14, &qword_27DF9D240, qword_23A6E1D30);
  v15 = sub_23A6DECC4();
  v16 = *(v15 - 8);
  v50 = *(v16 + 48);
  v51 = v16 + 48;
  if (v50(v14, 1, v15) == 1)
  {
    sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v17 = sub_23A6DECA4();
    v18 = sub_23A6DF8A4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v48 = v16;
      v20 = v19;
      *v19 = 67240192;
      *(v19 + 4) = a1 & 1;
      _os_log_impl(&dword_23A63D000, v17, v18, "Closed by remote?=%{BOOL,public}d", v19, 8u);
      v21 = v20;
      v16 = v48;
      MEMORY[0x23EE8A960](v21, -1, -1);
    }

    (*(v16 + 8))(v14, v15);
  }

  *(v2 + 194) = (a1 & 1) == 0;
  if (*(v2 + 208))
  {
    v48 = v16;
    v46 = v15;
    swift_beginAccess();
    v47 = v2;
    v22 = *(v2 + 128);
    v23 = 1 << *(v22 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v22 + 64);
    v26 = (v23 + 63) >> 6;
    v27 = (v4 + 8);
    v53 = v59 + 8;
    v54 = v59 + 16;
    result = swift_bridgeObjectRetain_n();
    v29 = 0;
    v30 = v59;
    v31 = v56;
    if (v25)
    {
      while (1)
      {
        v32 = v29;
LABEL_15:
        v33 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v34 = v55;
        (*(v30 + 16))(v55, *(v22 + 56) + *(v30 + 72) * (v33 | (v32 << 6)), v31);
        v60 = 0;
        v61 = 1;
        v35 = v57;
        sub_23A6DF7D4();
        (*v27)(v35, v58);
        result = (*(v30 + 8))(v34, v31);
        if (!v25)
        {
          goto LABEL_11;
        }
      }
    }

    while (1)
    {
LABEL_11:
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        return result;
      }

      if (v32 >= v26)
      {
        break;
      }

      v25 = *(v22 + 64 + 8 * v32);
      ++v29;
      if (v25)
      {
        v29 = v32;
        goto LABEL_15;
      }
    }

    v60 = 0;
    v61 = 1;
    v36 = v47;
    sub_23A670A04(&v60);
    v37 = v49;
    sub_23A646D48(v52, v49, &qword_27DF9D240, qword_23A6E1D30);
    v38 = v46;
    if (v50(v37, 1, v46) == 1)
    {
      sub_23A646DB0(v37, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v39 = sub_23A6DECA4();
      v40 = sub_23A6DF8A4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_23A63D000, v39, v40, "Releasing active session", v41, 2u);
        MEMORY[0x23EE8A960](v41, -1, -1);
      }

      (*(v48 + 8))(v37, v38);
    }

    *(v36 + 208) = 0;
  }

  else
  {
    sub_23A646D48(v52, v9, &qword_27DF9D240, qword_23A6E1D30);
    if (v50(v9, 1, v15) == 1)
    {
      return sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v42 = v16;
      v43 = sub_23A6DECA4();
      v44 = sub_23A6DF8A4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_23A63D000, v43, v44, "Cannot find active session", v45, 2u);
        MEMORY[0x23EE8A960](v45, -1, -1);
      }

      return (*(v42 + 8))(v9, v15);
    }
  }
}

uint64_t sub_23A670094(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C948, &qword_23A6E1E40);
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = v30 - v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v30 - v8;
  v10 = sub_23A6DCDF0();
  sub_23A646D48(v10, v9, &qword_27DF9D240, qword_23A6E1D30);
  v11 = sub_23A6DECC4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {

    v13 = sub_23A6DECA4();
    v14 = sub_23A6DF8A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      v16 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_updateHandlers;
      swift_beginAccess();
      *(v15 + 4) = *(*(v2 + v16) + 16);

      _os_log_impl(&dword_23A63D000, v13, v14, "progress updateHandlers count=%ld", v15, 0xCu);
      MEMORY[0x23EE8A960](v15, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v9, v11);
  }

  swift_beginAccess();
  v30[0] = v2;
  v17 = *(v2 + 128);
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v21 = (v18 + 63) >> 6;
  v22 = (v3 + 8);
  v30[1] = v5 + 8;
  v30[2] = v5 + 16;
  result = swift_bridgeObjectRetain_n();
  v24 = 0;
  for (i = v32; v20; result = (*(v5 + 8))(v28, i))
  {
    v26 = v24;
LABEL_15:
    v27 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v28 = v31;
    (*(v5 + 16))(v31, *(v17 + 56) + *(v5 + 72) * (v27 | (v26 << 6)), i);
    v36 = v35;
    v37 = 0;
    v29 = v33;
    sub_23A6DF7D4();
    (*v22)(v29, v34);
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v21)
    {

      v36 = v35;
      v37 = 0;
      return sub_23A670A04(&v36);
    }

    v20 = *(v17 + 64 + 8 * v26);
    ++v24;
    if (v20)
    {
      v24 = v26;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void *sub_23A6704FC(unint64_t a1)
{
  v2 = v1;
  v42 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C948, &qword_23A6E1E40);
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = v36 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v36 - v7;
  v9 = sub_23A6DCDF0();
  sub_23A646D48(v9, v8, &qword_27DF9D240, qword_23A6E1D30);
  v10 = sub_23A6DECC4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    swift_retain_n();
    v12 = sub_23A6DECA4();
    v13 = sub_23A6DF8A4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v48[0] = swift_slowAlloc();
      v37 = v3;
      v15 = v48[0];
      *v14 = 136446466;
      v16 = sub_23A6DE8E4();
      v18 = sub_23A657E78(v16, v17, v48);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      v19 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_eventHandlers;
      swift_beginAccess();
      v20 = *(*(v2 + v19) + 16);

      *(v14 + 14) = v20;

      _os_log_impl(&dword_23A63D000, v12, v13, "readerFeedback: %{public}s, eventHandlers count=%{public}ld", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v21 = v15;
      v3 = v37;
      MEMORY[0x23EE8A960](v21, -1, -1);
      MEMORY[0x23EE8A960](v14, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v8, v10);
  }

  swift_beginAccess();
  v22 = *(v2 + 128);
  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 64);
  v26 = (v23 + 63) >> 6;
  v37 = v43 + 16;
  v27 = (v3 + 8);
  v36[0] = v2;
  v36[1] = v43 + 8;
  result = swift_bridgeObjectRetain_n();
  v29 = 0;
  if (v25)
  {
    while (1)
    {
      v30 = v29;
LABEL_15:
      v31 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v32 = v43;
      v33 = v38;
      v34 = v39;
      (*(v43 + 16))(v38, *(v22 + 56) + *(v43 + 72) * (v31 | (v30 << 6)), v39);
      sub_23A6DA3C0(v42, &v46);
      v44 = v46;
      v45 = v47;
      v35 = v40;
      sub_23A6DF7D4();
      (*v27)(v35, v41);
      result = (*(v32 + 8))(v33, v34);
      if (!v25)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      return result;
    }

    if (v30 >= v26)
    {
      break;
    }

    v25 = *(v22 + 64 + 8 * v30);
    ++v29;
    if (v25)
    {
      v29 = v30;
      goto LABEL_15;
    }
  }

  if (*(v36[0] + 208))
  {
    result = sub_23A6DA480(v42, &v46);
    if (v46 != 7)
    {
      return sub_23A670B34(&v46);
    }
  }

  return result;
}

uint64_t sub_23A670A04(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_updateHandlers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; result = )
  {
    v12 = i;
LABEL_9:
    v13 = *(*(v5 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
    v8 &= v8 - 1;
    v14 = v2;
    v15 = v3;

    v13(&v14);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A670B34(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_eventHandlers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = )
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(v4 + 56) + ((v11 << 10) | (16 * v12)));
    v14 = v2;

    v13(&v14);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A670C54(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 104) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v2 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A670CF4, v1, 0);
}

uint64_t sub_23A670CF4(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = *(v1 + 72);
  if (v6 == 1)
  {
    sub_23A646DB0(*(v1 + 72), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = *(v1 + 64);
    v9 = sub_23A6507C0();
    v10 = sub_23A6DCFB0();
    sub_23A6DCFBC(v9 & 1, v8, 0xD00000000000001BLL, 0x800000023A6E8E40, v10, v11);

    (*(v5 + 8))(v7, v4);
  }

  v12 = *(v1 + 64);
  v13 = *(v12 + 200);
  if (v13)
  {
LABEL_7:
    *(v1 + 80) = v13;
    if (*(v12 + 193))
    {
      v24 = v13;

      v25 = *(v1 + 8);
      v26 = *(v1 + 80);

      return v25(v26);
    }

    else
    {
      v28 = v13;
      v29 = swift_task_alloc();
      *(v1 + 88) = v29;
      *v29 = v1;
      v29[1] = sub_23A671218;
      v30 = *(v1 + 104);

      return sub_23A6713C4(v28, v30);
    }
  }

  *(v12 + 194) = 0;
  sub_23A6DE684();
  v14 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v15 = sub_23A6DF614();

  v16 = [v14 initWithMachServiceName:v15 options:0];

  v17 = objc_opt_self();
  v18 = [v17 interfaceWithProtocol_];
  [v16 setRemoteObjectInterface_];

  v19 = [v17 interfaceWithProtocol_];
  [v16 setExportedInterface_];

  type metadata accessor for PaymentCardReaderDelegate();
  [v16 setExportedObject_];

  v20 = swift_allocObject();
  swift_weakInit();
  *(v1 + 48) = sub_23A677F5C;
  *(v1 + 56) = v20;
  *(v1 + 16) = MEMORY[0x277D85DD0];
  *(v1 + 24) = 1107296256;
  *(v1 + 32) = sub_23A672F1C;
  *(v1 + 40) = &block_descriptor_297;
  v21 = _Block_copy((v1 + 16));

  [v16 setInterruptionHandler_];
  _Block_release(v21);
  v22 = *(v12 + 200);
  *(v12 + 200) = v16;
  v23 = v16;

  [v23 resume];
  v13 = *(v12 + 200);
  if (v13)
  {
    v12 = *(v1 + 64);
    goto LABEL_7;
  }

  v31 = *(v12 + 194);
  if (*(v1 + 104) == 1)
  {
    sub_23A6763DC();
    swift_allocError();
    if (v31)
    {
      v33 = xmmword_23A6E1D10;
    }

    else
    {
      v33 = xmmword_23A6E1D00;
    }

    *v32 = v33;
    *(v32 + 16) = 3;
  }

  else
  {
    type metadata accessor for PaymentCardReaderError(0);
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  swift_willThrow();

  v34 = *(v1 + 8);

  return v34();
}

uint64_t sub_23A671218()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[8];

    return MEMORY[0x2822009F8](sub_23A671358, v3, 0);
  }

  else
  {

    v4 = v2[1];
    v5 = v2[10];

    return v4(v5);
  }
}

uint64_t sub_23A671358()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A6713C4(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v3 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A671464, v2, 0);
}

uint64_t sub_23A671464(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = *(v1 + 32);
  if (v6 == 1)
  {
    sub_23A646DB0(*(v1 + 32), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = *(v1 + 24);
    v9 = sub_23A6507C0();
    v10 = sub_23A6DCFB0();
    sub_23A6DCFBC(v9 & 1, v8, 0xD000000000000014, 0x800000023A6E8BC0, v10, v11);

    (*(v5 + 8))(v7, v4);
  }

  if (*(v1 + 64) == 1)
  {
    sub_23A6763DC();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 3;
    swift_willThrow();

    v13 = *(v1 + 8);

    return v13();
  }

  else
  {
    v16 = *(v1 + 16);
    v15 = *(v1 + 24);
    *(v15 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_backgroundAllowed) = 0;
    v17 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor, &unk_23A6E1E88);
    v18 = swift_task_alloc();
    *(v1 + 40) = v18;
    *(v18 + 16) = v16;
    *(v18 + 24) = v15;
    *(v18 + 32) = 0;
    v19 = swift_task_alloc();
    *(v1 + 48) = v19;
    *v19 = v1;
    v19[1] = sub_23A671734;
    v20 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v19, v15, v17, 0xD000000000000014, 0x800000023A6E8BC0, sub_23A676A20, v18, v20);
  }
}

uint64_t sub_23A671734()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_23A6718C0;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_23A67185C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A67185C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A6718C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A67192C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v49 = a2;
  v7 = sub_23A6DE574();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v44 - v15;
  v17 = *(v12 + 16);
  v51 = a1;
  v44 = v17;
  (v17)(v16, a1, v11, v14);
  v18 = *(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  LODWORD(v50) = a4;
  *(v19 + 24) = a4;
  v20 = *(v12 + 32);
  v20(v19 + ((v18 + 25) & ~v18), v16, v11);
  v58 = sub_23A676A2C;
  v59 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v55 = 1107296256;
  v56 = sub_23A65AE64;
  v57 = &block_descriptor_143;
  v21 = _Block_copy(&aBlock);
  v52 = a3;

  v22 = [v49 remoteObjectProxyWithErrorHandler_];
  _Block_release(v21);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v23 = v50 & 1;
    v50 = v53;
    v24 = v46;
    sub_23A6DE464();
    sub_23A6DE544();
    (*(v47 + 8))(v24, v48);
    v44(v16, v51, v11);
    v25 = (v18 + 24) & ~v18;
    v26 = swift_allocObject();
    *(v26 + 16) = v52;
    v20(v26 + v25, v16, v11);
    *(v26 + v25 + v13) = v23;
    v58 = sub_23A676AB0;
    v59 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v56 = sub_23A672B90;
    v57 = &block_descriptor_149;
    v27 = _Block_copy(&aBlock);

    [v50 createContextWithCompletion_];
    _Block_release(v27);
    return swift_unknownObjectRelease();
  }

  v29 = v50;
  v30 = v52;
  v49 = v11;
  v31 = sub_23A6DCDF0();
  v32 = v45;
  sub_23A646D48(v31, v45, &qword_27DF9D240, qword_23A6E1D30);
  v33 = sub_23A6DECC4();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {
    v38 = sub_23A6DECA4();
    v39 = sub_23A6DF884();
    v40 = v29;
    if (os_log_type_enabled(v38, v39))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_23A63D000, v38, v39, "Error (refreshContext): unexpected proxy type", v41, 2u);
      MEMORY[0x23EE8A960](v41, -1, -1);
    }

    (*(v34 + 8))(v32, v33);
    v36 = *(v30 + 194);
    if ((v40 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v37 = swift_allocError();
    if (v36)
    {
      v43 = xmmword_23A6E1D10;
    }

    else
    {
      v43 = xmmword_23A6E1D00;
    }

    *v42 = v43;
    *(v42 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v32, &qword_27DF9D240, qword_23A6E1D30);
  v35 = v29;
  v36 = *(v30 + 194);
  if (v35)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError(0);
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
  v37 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock = v37;
  return sub_23A6DF764();
}

uint64_t sub_23A671F8C(void *a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v59 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v58 = sub_23A6DCDF0();
  sub_23A646D48(v58, v13, &qword_27DF9D240, qword_23A6E1D30);
  v14 = sub_23A6DECC4();
  v15 = *(v14 - 8);
  v56 = *(v15 + 48);
  v57 = v15 + 48;
  if (v56(v13, 1, v14) == 1)
  {
    sub_23A646DB0(v13, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v55 = v3;
    v16 = a1;
    v3 = sub_23A6DECA4();
    v17 = sub_23A6DF884();

    if (os_log_type_enabled(v3, v17))
    {
      v18 = swift_slowAlloc();
      v53 = v7;
      v19 = v18;
      v20 = swift_slowAlloc();
      v54 = v15;
      v52 = v20;
      v62[0] = v20;
      *v19 = 136315138;
      v60 = a1;
      v21 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
      v22 = sub_23A6DF634();
      v24 = sub_23A657E78(v22, v23, v62);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_23A63D000, v3, v17, "Error (refreshContext): proxy error handler [ %s ]", v19, 0xCu);
      v25 = v52;
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      v15 = v54;
      MEMORY[0x23EE8A960](v25, -1, -1);
      v26 = v19;
      v7 = v53;
      MEMORY[0x23EE8A960](v26, -1, -1);
    }

    (*(v15 + 8))(v13, v14);
    LOBYTE(v3) = v55;
  }

  v27 = sub_23A6DE114();
  v28 = [v27 domain];
  v29 = sub_23A6DF624();
  v31 = v30;

  if (v29 == sub_23A6DF624() && v31 == v32)
  {
  }

  else
  {
    v33 = sub_23A6DFC04();

    if ((v33 & 1) == 0)
    {
LABEL_15:

      v38 = *(v59 + 194);
      if (v3)
      {
        sub_23A6763DC();
        v40 = swift_allocError();
        if (v38)
        {
          v41 = xmmword_23A6E1D10;
        }

        else
        {
          v41 = xmmword_23A6E1D00;
        }

        *v39 = v41;
        *(v39 + 16) = 3;
      }

      else
      {
        type metadata accessor for PaymentCardReaderError(0);
        sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
        v40 = swift_allocError();
        swift_storeEnumTagMultiPayload();
      }

      v62[0] = v40;
      goto LABEL_22;
    }
  }

  if ([v27 code] != 4099)
  {
    goto LABEL_15;
  }

  v34 = [v27 debugDescription];
  v35 = sub_23A6DF624();
  v37 = v36;

  v62[0] = v35;
  v62[1] = v37;
  v60 = 0xD000000000000013;
  v61 = 0x800000023A6E8BF0;
  sub_23A677268();
  LOBYTE(v34) = sub_23A6DF984();

  if ((v34 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v3)
  {
    sub_23A646D48(v58, v10, &qword_27DF9D240, qword_23A6E1D30);
    if (v56(v10, 1, v14) == 1)
    {
      sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v43 = sub_23A6DECA4();
      v44 = sub_23A6DF884();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_23A63D000, v43, v44, "Error (context for read): error 159 - Sandbox", v45, 2u);
        MEMORY[0x23EE8A960](v45, -1, -1);
      }

      (*(v15 + 8))(v10, v14);
    }

    sub_23A6763DC();
    v46 = swift_allocError();
    *v47 = 0;
    *(v47 + 8) = 0;
    *(v47 + 16) = 3;
    v62[0] = v46;
  }

  else
  {
    sub_23A646D48(v58, v7, &qword_27DF9D240, qword_23A6E1D30);
    if (v56(v7, 1, v14) == 1)
    {
      sub_23A646DB0(v7, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v48 = sub_23A6DECA4();
      v49 = sub_23A6DF884();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_23A63D000, v48, v49, "Error (context for non-read): error 159 - Sandbox", v50, 2u);
        MEMORY[0x23EE8A960](v50, -1, -1);
      }

      (*(v15 + 8))(v7, v14);
    }

    type metadata accessor for PaymentCardReaderError(0);
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
    v51 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v62[0] = v51;
  }

LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  return sub_23A6DF764();
}

uint64_t sub_23A6726E0(char a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v34 - v13;
  v15 = sub_23A6DE574();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE464();
  sub_23A6DE524();
  (*(v16 + 8))(v18, v15);
  *(a3 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_backgroundAllowed) = a2;
  if ((a1 & 1) == 0)
  {
    *(a3 + 193) = 0;
    v22 = sub_23A6DCDF0();
    sub_23A646D48(v22, v11, &qword_27DF9D240, qword_23A6E1D30);
    v23 = sub_23A6DECC4();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v11, 1, v23) == 1)
    {
      sub_23A646DB0(v11, &qword_27DF9D240, qword_23A6E1D30);
      if ((a5 & 1) == 0)
      {
LABEL_6:
        type metadata accessor for PaymentCardReaderError(0);
        sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
        v25 = swift_allocError();
        swift_storeEnumTagMultiPayload();
LABEL_15:
        v34[1] = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
        return sub_23A6DF764();
      }
    }

    else
    {
      v30 = sub_23A6DECA4();
      v31 = sub_23A6DF884();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 67240192;
        *(v32 + 4) = a5 & 1;
        _os_log_impl(&dword_23A63D000, v30, v31, "Error (refreshContext): isRead = %{BOOL,public}d, failed", v32, 8u);
        MEMORY[0x23EE8A960](v32, -1, -1);
      }

      (*(v24 + 8))(v11, v23);
      if ((a5 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    sub_23A6763DC();
    v25 = swift_allocError();
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 3;
    goto LABEL_15;
  }

  *(a3 + 193) = 1;
  v19 = sub_23A6DCDF0();
  sub_23A646D48(v19, v14, &qword_27DF9D240, qword_23A6E1D30);
  v20 = sub_23A6DECC4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v26 = sub_23A6DECA4();
    v27 = sub_23A6DF8A4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_23A63D000, v26, v27, "Result (refreshContext): success", v28, 2u);
      MEMORY[0x23EE8A960](v28, -1, -1);
    }

    (*(v21 + 8))(v14, v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  return sub_23A6DF774();
}

uint64_t sub_23A672B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_23A672C00(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_23A6DCDF0();
  sub_23A646D48(v7, v6, &qword_27DF9D240, qword_23A6E1D30);
  v8 = sub_23A6DECC4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v10 = sub_23A6DECA4();
    v11 = sub_23A6DF8A4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23A63D000, v10, v11, "Connection to PaymentTerminalService interrupted, nullifying connection", v12, 2u);
      MEMORY[0x23EE8A960](v12, -1, -1);
    }

    (*(v9 + 8))(v6, v8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = sub_23A6DF7B4();
    (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    sub_23A64A15C(0, 0, v3, &unk_23A6E20E0, v16);
  }

  return result;
}

uint64_t sub_23A672EBC()
{
  sub_23A672F60();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A672F1C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_23A672F60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v14 - v3;
  v5 = *(v0 + 200);
  if (v5)
  {
    [v5 setExportedObject_];
    v6 = *(v0 + 200);
  }

  else
  {
    v6 = 0;
  }

  *(v0 + 200) = 0;

  *(v0 + 193) = 0;
  if ((*(v0 + 194) & 1) == 0)
  {
    v7 = sub_23A6DCDF0();
    sub_23A646D48(v7, v4, &qword_27DF9D240, qword_23A6E1D30);
    v8 = sub_23A6DECC4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {
      sub_23A646DB0(v4, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v10 = v0;
      v11 = sub_23A6DECA4();
      v12 = sub_23A6DF884();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_23A63D000, v11, v12, "Unexpected interruption of XPC connection", v13, 2u);
        MEMORY[0x23EE8A960](v13, -1, -1);
      }

      (*(v9 + 8))(v4, v8);
      v0 = v10;
    }

    (*(*v0 + 800))(1);
  }
}

uint64_t sub_23A673170(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_23A6DF7B4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = a1;
  sub_23A64A15C(0, 0, v4, &unk_23A6E1E50, v6);
}

uint64_t sub_23A673288()
{
  if (qword_27DF9ED30 != -1)
  {
    swift_once();
  }

  v1 = qword_27DFA5E88;
  v0[2] = qword_27DFA5E88;
  v2 = *v1 + 800;
  v0[3] = *v2;
  v0[4] = v2 & 0xFFFFFFFFFFFFLL | 0x352E000000000000;

  return MEMORY[0x2822009F8](sub_23A673344, v1, 0);
}

uint64_t sub_23A673344()
{
  (*(v0 + 24))(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A6734E4()
{
  if (qword_27DF9ED30 != -1)
  {
    swift_once();
  }

  v1 = qword_27DFA5E88;
  v0[3] = qword_27DFA5E88;
  v2 = *v1 + 808;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0xFE4D000000000000;

  return MEMORY[0x2822009F8](sub_23A678250, v1, 0);
}

uint64_t sub_23A6735E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_23A6DF7B4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  sub_23A64A15C(0, 0, v7, a3, v9);
}

uint64_t sub_23A6736F4()
{
  if (qword_27DF9ED30 != -1)
  {
    swift_once();
  }

  v1 = qword_27DFA5E88;
  v0[3] = qword_27DFA5E88;
  v2 = *v1 + 816;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0x6850000000000000;

  return MEMORY[0x2822009F8](sub_23A6737B0, v1, 0);
}

uint64_t sub_23A6737B0()
{
  (*(v0 + 32))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A673834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_23A6DF7B4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  sub_23A64A15C(0, 0, v9, a5, v11);
}

uint64_t sub_23A673938(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_23A6DF7B4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = a2;
  sub_23A64A15C(0, 0, v5, &unk_23A6E1E80, v7);
}

uint64_t sub_23A673A50()
{
  if (qword_27DF9ED30 != -1)
  {
    swift_once();
  }

  v1 = qword_27DFA5E88;
  v0[2] = qword_27DFA5E88;
  v2 = *v1 + 792;
  v0[3] = *v2;
  v0[4] = v2 & 0xFFFFFFFFFFFFLL | 0xA538000000000000;

  return MEMORY[0x2822009F8](sub_23A673344, v1, 0);
}

uint64_t sub_23A673B0C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23A673B44()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_23A673B98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_23A6DF6F4() != a1 || v9 != a2)
  {
    v10 = sub_23A6DFC04();

    if (v10)
    {
      return v8;
    }

    v8 = sub_23A6DF6A4();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_23A673C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_23A6DFB04();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_23A673D88, 0, 0);
}

uint64_t sub_23A673D88()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_23A6DFB14();
  v5 = sub_23A6781B0(&qword_27DF9C9C0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_23A6DFC64();
  sub_23A6781B0(&qword_27DF9C9C8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_23A6DFB24();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_23A673F18;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_23A673F18()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A6740D4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_23A6740D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A674140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_23A648D1C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23A675168();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_23A6749C0(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_23A6742C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_23A648D1C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23A6753F0(&qword_27DF9C9B0, &qword_23A6E20B8);
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_23A674BC4(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_23A674388(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9D0, &qword_23A6E2108);
  v42 = v4;
  result = sub_23A6DFB74();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_23A6DFCE4();
      sub_23A6DF684();
      result = sub_23A6DFD14();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_23A674710(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = v6;
  result = sub_23A6DFB74();
  v9 = result;
  if (*(v7 + 16))
  {
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
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = 16 * (v20 | (v10 << 6));
      v24 = (*(v7 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v36 = *(*(v7 + 56) + v23);
      if ((v35 & 1) == 0)
      {
      }

      sub_23A6DFCE4();
      sub_23A6DF684();
      result = sub_23A6DFD14();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = 16 * v17;
      v19 = (*(v9 + 48) + v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v9 + 56) + v18) = v36;
      ++*(v9 + 16);
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

unint64_t sub_23A6749C0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23A6DF9C4() + 1) & ~v5;
    while (1)
    {
      sub_23A6DFCE4();

      sub_23A6DF684();
      v9 = sub_23A6DFD14();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23A674BC4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23A6DF9C4() + 1) & ~v5;
    do
    {
      sub_23A6DFCE4();

      sub_23A6DF684();
      v9 = sub_23A6DFD14();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

uint64_t sub_23A674D74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_23A648D1C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_23A675168();
      goto LABEL_7;
    }

    sub_23A674388(v15, a4 & 1);
    v26 = sub_23A648D1C(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_23A6DFC54();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_23A6750AC(v12, a2, a3, a1, v18);
}

uint64_t sub_23A674F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t *a7)
{
  v10 = v7;
  v16 = *v7;
  v17 = sub_23A648D1C(a3, a4);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 < v22 || (a5 & 1) != 0)
    {
      sub_23A674710(v22, a5 & 1, a6, a7);
      v17 = sub_23A648D1C(a3, a4);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_23A6DFC54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_23A6753F0(a6, a7);
      v17 = v25;
    }
  }

  v27 = *v10;
  if (v23)
  {
    v28 = (v27[7] + 16 * v17);
    *v28 = a1;
    v28[1] = a2;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = (v27[6] + 16 * v17);
  *v30 = a3;
  v30[1] = a4;
  v31 = (v27[7] + 16 * v17);
  *v31 = a1;
  v31[1] = a2;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

uint64_t sub_23A6750AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

char *sub_23A675168()
{
  v1 = v0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9D0, &qword_23A6E2108);
  v3 = *v0;
  v4 = sub_23A6DFB64();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

void *sub_23A6753F0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23A6DFB64();
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
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + v19);
        v24 = (*(v6 + 48) + v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + v19) = v23;
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

unint64_t sub_23A675560(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9D8, &unk_23A6E2110);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9D0, &qword_23A6E2108);
    v7 = sub_23A6DFB84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23A646D48(v9, v5, &qword_27DF9C9D8, &unk_23A6E2110);
      v12 = *v5;
      v11 = v5[1];
      result = sub_23A648D1C(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_23A67577C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23A6DFB84();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_23A648D1C(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
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

uint64_t sub_23A675890(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for PaymentCardReaderActor(uint64_t a1)
{
  result = qword_27DF9EDE8;
  if (!qword_27DF9EDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A675940()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A647234;

  return sub_23A6599A4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_23A675A00(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 97) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v7 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A675AAC, a4, 0);
}

uint64_t sub_23A675AAC(uint64_t a1)
{
  v25 = v1;
  v2 = *(v1 + 32);
  v3 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  *(v1 + 72) = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  if (*(v2 + v3) == 1)
  {
    v4 = *(v1 + 64);
    v5 = sub_23A6DCDF0();
    sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
    v6 = sub_23A6DECC4();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_23A646DB0(*(v1 + 64), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {

      v13 = sub_23A6DECA4();
      v14 = sub_23A6DF884();

      if (os_log_type_enabled(v13, v14))
      {
        v16 = *(v1 + 16);
        v15 = *(v1 + 24);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v24 = v18;
        *v17 = 136315138;
        v19 = sub_23A66B368(v16, v15);
        v21 = sub_23A657E78(v19, v20, &v24);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_23A63D000, v13, v14, "Error (%s: a previous request is running, returning busy", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x23EE8A960](v18, -1, -1);
        MEMORY[0x23EE8A960](v17, -1, -1);
      }

      (*(v7 + 8))(*(v1 + 64), v6);
    }

    if (*(v1 + 97) == 1)
    {
      sub_23A6763DC();
      swift_allocError();
      *v22 = xmmword_23A6E1CA0;
      *(v22 + 16) = 3;
    }

    else
    {
      type metadata accessor for PaymentCardReaderError(0);
      sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError, &protocol conformance descriptor for PaymentCardReaderError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    swift_willThrow();

    v23 = *(v1 + 8);

    return v23(0);
  }

  else
  {
    *(v2 + v3) = 1;
    v8 = swift_task_alloc();
    *(v1 + 80) = v8;
    *v8 = v1;
    v8[1] = sub_23A675E2C;
    v9 = *(v1 + 48);
    v10 = *(v1 + 56);
    v11 = *(v1 + 40);

    return sub_23A65C830(v1 + 96, v11, v9, v10);
  }
}

uint64_t sub_23A675E2C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_23A675FD4;
  }

  else
  {
    v4 = sub_23A675F58;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A675F58()
{
  *(*(v0 + 32) + *(v0 + 72)) = 0;

  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23A675FD4()
{
  *(v0[4] + v0[9]) = 0;

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_23A676074(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (*(v1 + 49))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23A647234;

  return sub_23A669878(a1, v4, v5, v6, v7, v9 | v8);
}

const char *sub_23A676188(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_23A6DE874();
  if (v5 == 2)
  {
    return "PaymentWithVAS";
  }

  if (v5 == 1)
  {
    return "VAS";
  }

  if (v5)
  {
    v8 = sub_23A6DCDF0();
    sub_23A646D48(v8, v4, &qword_27DF9D240, qword_23A6E1D30);
    v9 = sub_23A6DECC4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v4, 1, v9) == 1)
    {
      sub_23A646DB0(v4, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v11 = a1;
      v12 = sub_23A6DECA4();
      v13 = sub_23A6DF884();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        sub_23A6DE874();
        *(v14 + 4) = sub_23A6DE764();

        _os_log_impl(&dword_23A63D000, v12, v13, "Unknown transaction data type [ %ld ]", v14, 0xCu);
        MEMORY[0x23EE8A960](v14, -1, -1);
      }

      else
      {

        v12 = v11;
      }

      (*(v10 + 8))(v4, v9);
    }

    return "Unknown";
  }

  else
  {
    sub_23A6DE854();
    v6 = sub_23A6DE7C4();
    if (v6 == sub_23A6DE7C4())
    {
      return "Payment";
    }

    else
    {
      return "Verification";
    }
  }
}

unint64_t sub_23A6763DC()
{
  result = qword_27DF9C918;
  if (!qword_27DF9C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C918);
  }

  return result;
}

uint64_t sub_23A676450(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (*(v1 + 49))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23A647140;

  return sub_23A669878(a1, v4, v5, v6, v7, v9 | v8);
}