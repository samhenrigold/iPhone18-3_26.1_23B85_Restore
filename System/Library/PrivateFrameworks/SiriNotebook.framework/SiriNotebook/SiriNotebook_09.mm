uint64_t sub_2681C7908(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_1(sub_2681C7920);
}

uint64_t sub_2681C7920()
{
  v1 = sub_2681C7FA8();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v0[5] = v2;
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_2681C7C30;
    v6 = v0[2];

    return MEMORY[0x2821BB9F8](v6, v3, v4);
  }

  else
  {
    v9 = (*(v0[3] + 64) + **(v0[3] + 64));
    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_2681C7AA4;

    return v9();
  }
}

uint64_t sub_2681C7AA4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  if (v2)
  {
    v9 = v7[1];

    return v9();
  }

  else
  {
    v6[5] = a2;
    v11 = swift_task_alloc();
    v6[6] = v11;
    *v11 = v7;
    v11[1] = sub_2681C7C30;
    v12 = v6[2];

    return MEMORY[0x2821BB9F8](v12, a1, a2);
  }
}

uint64_t sub_2681C7C30()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {
    v5 = sub_2681C7D98;
  }

  else
  {
    v5 = sub_2681C7D38;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2681C7D38()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2681C7D98()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2681C7FA8()
{
  sub_2681C8DD0(v0 + 80, v15);
  v1 = v16;
  if (!v16)
  {
    sub_2681C8E40(v15);
    goto LABEL_9;
  }

  v2 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v2 + 8))(v1, v2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_0(v15);
  if (v4 == 1)
  {
    goto LABEL_9;
  }

  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

LABEL_9:
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v10 = sub_2683CF7E8();
    __swift_project_value_buffer(v10, qword_28027C958);
    v11 = sub_2683CF7C8();
    v12 = sub_2683CFE98();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2680EB000, v11, v12, "No 3P app name found.", v13, 2u);
      MEMORY[0x26D617A40](v13, -1, -1);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_2681C8148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2681C17B8;

  return MEMORY[0x2821B9CD8](a1, a2, a3);
}

uint64_t sub_2681C81FC()
{
  v1 = sub_2681C71D4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2681C8258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681C8F2C;

  return MEMORY[0x2821BA000](a1, a2, a3, a4);
}

uint64_t sub_2681C831C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2681C8F2C;

  return sub_2681C7908(a1);
}

uint64_t sub_2681C83B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681C8F2C;

  return MEMORY[0x2821BA010](a1, a2, a3, a4);
}

uint64_t sub_2681C8488()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681C8F2C;

  return sub_2681C7E48();
}

uint64_t sub_2681C8514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681C8F2C;

  return MEMORY[0x2821BB9E8](a1, a2, a3, a4);
}

uint64_t sub_2681C85D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681C8F2C;

  return MEMORY[0x2821BB9F0](a1, a2, a3, a4);
}

uint64_t sub_2681C869C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681C8F2C;

  return MEMORY[0x2821BB9D8](a1, a2, a3, a4);
}

uint64_t sub_2681C8760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681C8F2C;

  return MEMORY[0x2821BB9E0](a1, a2, a3, a4);
}

uint64_t sub_2681C8824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2681C8F2C;

  return MEMORY[0x2821BB9D0](a1, a2, a3, a4, a5);
}

uint64_t sub_2681C8900()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681C8F2C;

  return sub_2681C7F20();
}

uint64_t sub_2681C898C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681C8F2C;

  return MEMORY[0x2821BBAB0](a1, a2, a3, a4);
}

uint64_t sub_2681C8A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681C8F2C;

  return MEMORY[0x2821BBAB8](a1, a2, a3, a4);
}

uint64_t sub_2681C8B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681C8F2C;

  return MEMORY[0x2821BBAA8](a1, a2, a3, a4);
}

uint64_t sub_2681C8BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2681C8F2C;

  return MEMORY[0x2821BBAA0](a1, a2, a3, a4, a5);
}

unint64_t sub_2681C8CA4(uint64_t a1)
{
  result = sub_2681C8CCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2681C8CCC()
{
  result = qword_28024EB38;
  if (!qword_28024EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EB38);
  }

  return result;
}

unint64_t sub_2681C8D24()
{
  result = qword_28024EB40;
  if (!qword_28024EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EB40);
  }

  return result;
}

unint64_t sub_2681C8D7C()
{
  result = qword_28024EB48;
  if (!qword_28024EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EB48);
  }

  return result;
}

uint64_t sub_2681C8DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E2D0, &qword_2683D66E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681C8E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E2D0, &qword_2683D66E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2681C8EA8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 0:
    case 1:
    case 3:
    case 4:

      break;
    case 2:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2681C8EE4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_2683D0388();
}

id sub_2681C8F60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = sub_2681C9140(a1);
  if (v7 >> 60 == 15)
  {
    sub_2681C91A4(a1);
    if (v8)
    {
      sub_2681C9208(0x7079546567616D49, 0xEC0000004C525565, v5);
      sub_2683CB418();

      v9 = sub_2683CB438();
      v10 = 0;
      if (__swift_getEnumTagSinglePayload(v4, 1, v9) != 1)
      {
        v10 = sub_2683CB3C8();
        (*(*(v9 - 8) + 8))(v4, v9);
      }

      [v5 setUrlValue_];
    }
  }

  else
  {
    v11 = v6;
    v12 = v7;
    sub_2681C926C(v6, v7, v5);
    sub_26814F5CC(v11, v12);
  }

  [a1 _imageSize];
  v14 = v13;
  [a1 _imageSize];
  [v5 setSize_];

  return v5;
}

uint64_t sub_2681C9140(void *a1)
{
  v1 = [a1 _imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CB468();

  return v3;
}

uint64_t sub_2681C91A4(void *a1)
{
  v1 = [a1 _identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CFA78();

  return v3;
}

void sub_2681C9208(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();

  [a3 setContentType_];
}

void sub_2681C926C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CB448();
  [a3 setImageData_];
}

uint64_t sub_2681C92CC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2681C930C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2681C936C(uint64_t a1, uint64_t a2)
{
  v26 = sub_2683CCC18();
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  v9 = sub_2683CC748();
  OUTLINED_FUNCTION_0_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_3();
  v15 = v14 - v13;
  v16 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v17 = sub_2683CC738();
  v19 = v18;
  (*(v11 + 8))(v15, v9);
  sub_2683CCB88();
  v16(v29, v8, v17, v19);

  (*(v4 + 8))(v8, v26);
  sub_2681340E8(v29, &v27, &qword_28024D458, &unk_2683D2C60);
  v20 = v27;
  if (v27 == 2)
  {
    sub_268143388(&v27);
    goto LABEL_12;
  }

  if (v27 == 3)
  {
    sub_2681433DC(&v27, &qword_28024D458, &unk_2683D2C60);
LABEL_12:
    sub_268138DC8(v29);
    return sub_2681433DC(v29, &qword_28024D458, &unk_2683D2C60);
  }

  sub_2681433DC(&v28, &qword_28024D460, &qword_2683D5050);
  if ((v20 & 1) == 0 || !sub_2681C9678())
  {
    goto LABEL_12;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v21 = sub_2683CF7E8();
  __swift_project_value_buffer(v21, qword_28027C958);
  v22 = sub_2683CF7C8();
  v23 = sub_2683CFE98();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2680EB000, v22, v23, "[AddTasks NeedsConfirmation] Got reject parse, but treating as .cancel()", v24, 2u);
    OUTLINED_FUNCTION_38();
  }

  sub_2683CC298();
  return sub_2681433DC(v29, &qword_28024D458, &unk_2683D2C60);
}

BOOL sub_2681C9678()
{
  v0 = sub_2683CC748();
  OUTLINED_FUNCTION_0_3();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v7 = sub_2683CC738();
  v9 = v8;
  (*(v2 + 8))(v6, v0);
  if (sub_2681E290C(v7, v9) != 3)
  {
    return 0;
  }

  v10 = sub_2683CC9D8();
  v11 = [v10 confirmationReason];

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v12 = sub_2683CF7E8();
  __swift_project_value_buffer(v12, qword_28027C958);
  v13 = sub_2683CF7C8();
  v14 = sub_2683CFE98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB58, &unk_2683D97C8);
    v17 = sub_2683CFAD8();
    v19 = sub_2681610A0(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_2680EB000, v13, v14, "[AddTasks NeedsConfirmation shouldTreatRejectAsCancel] Parameter is .targetTaskList and reason is %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  return v11 == 1;
}

uint64_t sub_2681C98C0()
{
  OUTLINED_FUNCTION_14();
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v3;
  v1[46] = v4;
  v5 = sub_2683CCBA8();
  v1[49] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[50] = v6;
  v1[51] = OUTLINED_FUNCTION_15_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5B0, &qword_2683D97C0);
  OUTLINED_FUNCTION_23(v7);
  v1[52] = OUTLINED_FUNCTION_15_1();
  v8 = sub_2683CCC18();
  v1[53] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[54] = v9;
  v1[55] = OUTLINED_FUNCTION_15_1();
  v10 = sub_2683CC748();
  v1[56] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[57] = v11;
  v1[58] = OUTLINED_FUNCTION_55();
  v1[59] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_2681C9A38()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v5 = *(v0 + 432);
  v4 = *(v0 + 440);
  v61 = *(*(v0 + 384) + 48);
  v62 = *(v0 + 424);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v6 = sub_2683CC738();
  v8 = v7;
  v60 = *(v3 + 8);
  v60(v1, v2);
  sub_2683CCB88();
  v61(v4, v6, v8);

  (*(v5 + 8))(v4, v62);
  sub_2681340E8(v0 + 16, v0 + 88, &qword_28024D458, &unk_2683D2C60);
  v9 = *(v0 + 88);
  *(v0 + 480) = v9;
  if (v9 == 2)
  {
    sub_268143388(v0 + 88);
    goto LABEL_5;
  }

  if (v9 == 3)
  {
    sub_2681433DC(v0 + 88, &qword_28024D458, &unk_2683D2C60);
LABEL_5:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v10 = sub_2683CF7E8();
    __swift_project_value_buffer(v10, qword_28027C958);
    v11 = OUTLINED_FUNCTION_32_1();
    v12(v11);
    v13 = sub_2683CF7C8();
    v14 = sub_2683CFE78();
    if (os_log_type_enabled(v13, v14))
    {
      v16 = *(v0 + 400);
      v15 = *(v0 + 408);
      v17 = *(v0 + 392);
      v18 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v18 = 136315138;
      sub_2683CCB88();
      OUTLINED_FUNCTION_44();
      sub_2683CFAD8();
      (*(v16 + 8))(v15, v17);
      v19 = OUTLINED_FUNCTION_44();
      v22 = sub_2681610A0(v19, v20, v21);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2680EB000, v13, v14, "[AddTasks.NeedsConfirmation parseResponse] Did not get ConfirmationTask from parse: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
      v24 = *(v0 + 400);
      v23 = *(v0 + 408);
      v25 = *(v0 + 392);

      (*(v24 + 8))(v23, v25);
    }

    v26 = sub_26812C6B8();
    OUTLINED_FUNCTION_59_1(&type metadata for CommonErrors, v26);
    *v27 = 0u;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 4;
    swift_willThrow();
    goto LABEL_16;
  }

  v28 = *(v0 + 464);
  v29 = *(v0 + 448);
  v30 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v30;
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 201) = *(v0 + 137);
  sub_2683CC9E8();
  v31 = sub_2683CC738();
  v33 = v32;
  v60(v28, v29);

  v34 = sub_2681E290C(v31, v33);
  if (v34 == 8)
  {
    v35 = sub_26812C6B8();
    v36 = OUTLINED_FUNCTION_59_1(&type metadata for CommonErrors, v35);
    *v37 = v31;
    v37[1] = v33;
    OUTLINED_FUNCTION_16_1(v36, v37);
    sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
LABEL_16:
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

    OUTLINED_FUNCTION_40();
LABEL_17:

    return v48();
  }

  v38 = v34;

  v39 = sub_2683CC9C8();
  if (v9)
  {
    v40 = *(v0 + 472);
    v41 = *(v0 + 448);
    sub_2683CC9E8();
    v42 = sub_2683CC728();
    v44 = v43;
    v60(v40, v41);
    v45 = sub_2682D3594(v38, v42, v44 & 1);
  }

  else
  {
    v46 = sub_2683CC9D8();
    v47 = [v46 itemToConfirm];

    sub_2683D0038();
    swift_unknownObjectRelease();
    v45 = sub_2682D3714(v38, (v0 + 328), 0, 1);
    __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  }

  *(v0 + 488) = v45;
  sub_2681340E8(v0 + 160, v0 + 224, &qword_28024D460, &qword_2683D5050);
  if (*(v0 + 280))
  {
    if (*(v0 + 280) == 255)
    {
      sub_2681433DC(v0 + 224, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v0 + 224);
    }

    v54 = OUTLINED_FUNCTION_54_1();
    OUTLINED_FUNCTION_1();
    v55 = OUTLINED_FUNCTION_38_6();
    v56(v55);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v54);
    sub_26816E814();
    sub_2683CC8D8();
    sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

    OUTLINED_FUNCTION_7_4();
    goto LABEL_17;
  }

  sub_268128148((v0 + 224), v0 + 288);
  v50 = *(v0 + 312);
  v51 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1((v0 + 288), v50);
  v52 = sub_2683CC9B8();
  *(v0 + 496) = v52;
  v63 = (*(v51 + 24) + **(v51 + 24));
  v53 = swift_task_alloc();
  *(v0 + 504) = v53;
  *v53 = v0;
  v53[1] = sub_2681CA1A8;

  return v63(1, v52, v50, v51);
}

uint64_t sub_2681CA1A8(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 512) = v1;

  if (!v1)
  {
    *(v4 + 520) = a1;
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681CA2DC()
{
  v1 = v0[65];
  v2 = v0[61];
  sub_2682D33A8(v1);

  __swift_destroy_boxed_opaque_existential_0(v0 + 36);
  v3 = OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1();
  v4 = OUTLINED_FUNCTION_38_6();
  v5(v4);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v3);
  sub_26816E814();
  sub_2683CC8D8();
  sub_2681433DC((v0 + 20), &qword_28024D460, &qword_2683D5050);
  sub_2681433DC((v0 + 2), &qword_28024D458, &unk_2683D2C60);

  OUTLINED_FUNCTION_7_4();

  return v9();
}

void sub_2681CA43C()
{
  sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
  sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 288));

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2681CA510()
{
  OUTLINED_FUNCTION_14();
  v1[29] = v2;
  v1[30] = v0;
  v1[27] = v3;
  v1[28] = v4;
  v5 = type metadata accessor for Snippet(0);
  v1[31] = v5;
  OUTLINED_FUNCTION_23(v5);
  v1[32] = OUTLINED_FUNCTION_55();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v6 = sub_2683CC9A8();
  v1[36] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[37] = v7;
  v1[38] = OUTLINED_FUNCTION_15_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v8);
  v1[39] = OUTLINED_FUNCTION_15_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v9);
  v1[40] = OUTLINED_FUNCTION_15_1();
  v10 = sub_2683CC138();
  v1[41] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[42] = v11;
  v1[43] = OUTLINED_FUNCTION_55();
  v1[44] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v12);
  v1[45] = OUTLINED_FUNCTION_15_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v13);
  v1[46] = v14;
  v1[47] = *(v15 + 64);
  v1[48] = OUTLINED_FUNCTION_55();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v16 = sub_2683CC528();
  v1[56] = v16;
  OUTLINED_FUNCTION_3_1(v16);
  v1[57] = v17;
  v1[58] = OUTLINED_FUNCTION_15_1();
  v18 = sub_2683CC748();
  v1[59] = v18;
  OUTLINED_FUNCTION_3_1(v18);
  v1[60] = v19;
  v1[61] = OUTLINED_FUNCTION_55();
  v1[62] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  v1[63] = v20;
  OUTLINED_FUNCTION_3_1(v20);
  v1[64] = v21;
  v1[65] = OUTLINED_FUNCTION_15_1();
  v22 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v22);
}

uint64_t sub_2681CA888()
{
  v38 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v1 = sub_2683CF7E8();
  __swift_project_value_buffer(v1, qword_28027C958);
  v2 = OUTLINED_FUNCTION_32_1();
  v3(v2);
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE98();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[62];
    v7 = v0[60];
    v33 = v0[59];
    v8 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v8 = 136315138;
    v34 = v5;
    sub_2683CC9E8();
    v9 = sub_2683CC738();
    v11 = v10;
    (*(v7 + 8))(v6, v33);
    v12 = OUTLINED_FUNCTION_44();
    v13(v12);
    v14 = sub_2681610A0(v9, v11, &v37);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_2680EB000, v4, v34, "AddTasks making prompt for confirming %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v15 = OUTLINED_FUNCTION_44();
    v16(v15);
  }

  v18 = v0[60];
  v17 = v0[61];
  v19 = v0[59];
  sub_2683CC9E8();
  v20 = sub_2683CC738();
  v22 = v21;
  (*(v18 + 8))(v17, v19);

  v23 = sub_2681E290C(v20, v22);
  if (v23 == 8)
  {
    v24 = sub_26812C6B8();
    v36 = OUTLINED_FUNCTION_59_1(&type metadata for CommonErrors, v24);
    *v25 = v20;
    v25[1] = v22;
    OUTLINED_FUNCTION_16_1(v36, v25);
    OUTLINED_FUNCTION_15_13();

    OUTLINED_FUNCTION_40();

    return v26();
  }

  else
  {
    v28 = v23;

    v0[5] = &type metadata for AddTasks.Parameter;
    v0[6] = &off_287903B10;
    *(v0 + 16) = v28;
    sub_2681686A4(v0 + 2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v29 = sub_2683CC9D8();
    v30 = [v29 confirmationReason];

    v31 = swift_task_alloc();
    v0[66] = v31;
    *v31 = v0;
    v31[1] = sub_2681CACBC;
    v32 = OUTLINED_FUNCTION_39_4(v0[28]);

    return sub_2681CC0F0(v32, v28, v30);
  }
}

uint64_t sub_2681CACBC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 536) = v4;
  *(v2 + 544) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v5);
}

void sub_2681CADC4()
{
  v1 = v0[67];
  v3 = v0[57];
  v2 = v0[58];
  v4 = v0[56];
  v5 = v0[54];
  v6 = v0[45];
  v7 = v0[40];
  v85 = v0[39];
  v8 = v0[31];
  v86 = *(v0[30] + 64);
  __swift_storeEnumTagSinglePayload(v0[55], 1, 1, v8);
  *v5 = 1541;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  (*(v3 + 16))(v6, v2, v4);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
  sub_2683CC118();
  v15 = sub_2683CED08();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
  v16 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v85, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v17 = swift_allocObject();
  v0[69] = v17;
  *(v17 + 16) = xmmword_2683D2250;
  *(v17 + 32) = v1;
  v18 = v1;
  if (sub_2683ABE58())
  {
    sub_2683ABE60();
    if ((v17 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x26D616C90](0, v17);
    }

    else
    {
      v19 = *(v17 + 32);
    }

    v20 = v19;
    v21 = [v19 catId];

    v81 = sub_2683CFA78();
    v84 = v22;
  }

  else
  {
    v81 = 0;
    v84 = 0;
  }

  v23 = v0[55];
  v25 = v0[52];
  v24 = v0[53];
  v27 = v0[46];
  v26 = v0[47];
  v76 = v0[44];
  v77 = v0[45];
  v28 = v0[42];
  v29 = v0[43];
  v75 = v0[41];
  v78 = v0[40];
  v79 = v0[39];
  v80 = v23;
  v82 = v0[31];
  v83 = v0[51];
  sub_2681340E8(v0[54], v24, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v23, v25, &qword_28024E770, &qword_2683D80D0);
  v30 = *(v27 + 80);
  v31 = (v30 + 24) & ~v30;
  v32 = (v26 + v30 + v31) & ~v30;
  v33 = swift_allocObject();
  v0[70] = v33;
  *(v33 + 16) = v86;
  sub_2681430AC(v24, v33 + v31);
  sub_2681430AC(v25, v33 + v32);
  (*(v28 + 16))(v29, v76, v75);
  v34 = swift_task_alloc();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = 0;
  *(v34 + 40) = v81;
  *(v34 + 48) = v84;
  *(v34 + 56) = v77;
  *(v34 + 64) = 257;
  *(v34 + 72) = sub_26814311C;
  *(v34 + 80) = v33;
  *(v34 + 88) = 0;
  *(v34 + 96) = v78;
  *(v34 + 104) = 2;
  *(v34 + 112) = v79;

  sub_2683CC8E8();

  sub_2681340E8(v80, v83, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v83, 1, v82) == 1)
  {
    v35 = v0 + 51;
  }

  else
  {
    v36 = v0[54];
    v37 = v0[50];
    v38 = v0[31];
    sub_26814320C(v0[51], v0[35]);
    sub_2681340E8(v36, v37, &qword_28024E770, &qword_2683D80D0);
    if (__swift_getEnumTagSinglePayload(v37, 1, v38) != 1)
    {
      v58 = v0[34];
      v59 = v0[35];
      v60 = v0[31];
      sub_26814320C(v0[50], v58);
      v0[20] = v60;
      v61 = sub_268143270();
      v0[21] = v61;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      sub_2681432C8(v59, boxed_opaque_existential_0);
      v0[25] = v60;
      v0[26] = v61;
      v63 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
      sub_2681432C8(v58, v63);
      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_10_2();
      v0[71] = v64;
      *v64 = v65;
      v64[1] = sub_2681CB4B0;
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X5 }
    }

    v35 = v0 + 50;
    sub_26814332C(v0[35]);
  }

  v39 = *v35;
  v40 = v0[55];
  v41 = v0[49];
  v42 = v0[31];
  sub_2681433DC(v39, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v40, v41, &qword_28024E770, &qword_2683D80D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v42);
  v44 = v0[49];
  v45 = v0[31];
  if (EnumTagSinglePayload == 1)
  {
    v46 = v0[54];
    v47 = v0[48];
    sub_2681433DC(v44, &qword_28024E770, &qword_2683D80D0);
    sub_2681340E8(v46, v47, &qword_28024E770, &qword_2683D80D0);
    v48 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v48, v49, v45) == 1)
    {
      sub_2681433DC(v0[48], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_10_2();
      v0[74] = v50;
      *v50 = v51;
      v50[1] = sub_2681CBCF4;
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X3 }
    }

    v68 = v0[31];
    v69 = v0[32];
    sub_26814320C(v0[48], v69);
    v0[10] = v68;
    v0[11] = sub_268143270();
    v70 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    sub_2681432C8(v69, v70);
    OUTLINED_FUNCTION_16_16();
    OUTLINED_FUNCTION_10_2();
    v0[73] = v71;
    *v71 = v72;
    v71[1] = sub_2681CBA38;
  }

  else
  {
    v54 = v0[33];
    sub_26814320C(v44, v54);
    v0[15] = v45;
    v0[16] = sub_268143270();
    v55 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    sub_2681432C8(v54, v55);
    OUTLINED_FUNCTION_16_16();
    OUTLINED_FUNCTION_10_2();
    v0[72] = v56;
    *v56 = v57;
    v56[1] = sub_2681CB77C;
  }

  OUTLINED_FUNCTION_24_3();

  __asm { BR              X4 }
}

uint64_t sub_2681CB4B0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681CB77C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681CBA38()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681CBCF4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

void sub_2681CBFA0()
{
  (*(v0[57] + 8))(v0[58], v0[56]);
  OUTLINED_FUNCTION_15_13();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2681CC0F0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 144) = a3;
  *(v4 + 152) = v3;
  *(v4 + 336) = a2;
  *(v4 + 136) = a1;
  v5 = sub_2683CF168();
  *(v4 + 160) = v5;
  *(v4 + 168) = *(v5 - 8);
  *(v4 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681CC208);
}

uint64_t sub_2681CC208()
{
  switch(*(v2 + 336))
  {
    case 2:
      v8 = OUTLINED_FUNCTION_44_4();
      *(v2 + 208) = sub_2681DF4C8(v8);
      if (v1)
      {
        goto LABEL_17;
      }

      v9 = *(v2 + 160);
      sub_2683CFEA8();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
      v13 = swift_task_alloc();
      *(v2 + 216) = v13;
      *v13 = v2;
      v13[1] = sub_2681CC630;
      OUTLINED_FUNCTION_39_4(*(v2 + 200));
      OUTLINED_FUNCTION_20_9();

      result = sub_268324300();
      break;
    case 3:
      v21 = OUTLINED_FUNCTION_44_4();
      v22 = sub_2681DFA18(v21);
      *(v2 + 232) = v22;
      if (v1)
      {
        goto LABEL_17;
      }

      v23 = *(v2 + 168);
      v24 = *(v2 + 144);
      v25 = [v22 title];
      sub_2683CFEA8();

      v26 = *(v23 + 16);
      v27 = *(v2 + 176);
      v28 = *(v2 + 160);
      if (v24 == 1)
      {
        v26(*(v2 + 192), v27, *(v2 + 160));
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
        v32 = swift_task_alloc();
        *(v2 + 240) = v32;
        *v32 = v2;
        v32[1] = sub_2681CC7DC;
        OUTLINED_FUNCTION_39_4(*(v2 + 192));
        OUTLINED_FUNCTION_20_9();

        result = sub_268324114();
      }

      else
      {
        v26(*(v2 + 184), v27, *(v2 + 160));
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v40, v41, v42, v28);
        v43 = swift_task_alloc();
        *(v2 + 256) = v43;
        *v43 = v2;
        v43[1] = sub_2681CC994;
        OUTLINED_FUNCTION_39_4(*(v2 + 184));
        OUTLINED_FUNCTION_20_9();

        result = sub_268323F28();
      }

      break;
    case 5:
      v34 = OUTLINED_FUNCTION_44_4();
      *(v2 + 272) = sub_2681DF970(v34);
      if (v1)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_43_4();
      type metadata accessor for NotebookTemporalEventTriggerConcept();
      *(v2 + 280) = sub_2681A2C04(v0);
      v37 = swift_task_alloc();
      *(v2 + 288) = v37;
      *v37 = v2;
      OUTLINED_FUNCTION_42_6(v37);
      OUTLINED_FUNCTION_20_9();

      result = sub_2683244EC(v38);
      break;
    case 6:
      v16 = OUTLINED_FUNCTION_44_4();
      *(v2 + 304) = sub_2681DF5DC(v16);
      if (v1)
      {
        goto LABEL_17;
      }

      v17 = OUTLINED_FUNCTION_43_4();
      type metadata accessor for NotebookSpatialEventTriggerConcept(v17);
      *(v2 + 312) = sub_268163274(v0);
      v18 = swift_task_alloc();
      *(v2 + 320) = v18;
      *v18 = v2;
      OUTLINED_FUNCTION_42_6(v18);
      OUTLINED_FUNCTION_20_9();

      result = sub_268323E08(v19);
      break;
    default:
      v3 = sub_2681E27F8(*(v2 + 336));
      v5 = v4;
      v6 = sub_26816E7C0();
      OUTLINED_FUNCTION_59_1(&type metadata for AddTasks.Errors, v6);
      *v7 = v3;
      *(v7 + 8) = v5;
      *(v7 + 16) = 0;
      swift_willThrow();
LABEL_17:
      OUTLINED_FUNCTION_28_7();

      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_20_9();

      __asm { BRAA            X1, X16 }

      return result;
  }

  return result;
}

uint64_t sub_2681CC630()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 224) = v0;

  sub_2681433DC(v6, &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2681CC75C()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_28_7();

  v1 = OUTLINED_FUNCTION_37_0();

  return v2(v1);
}

uint64_t sub_2681CC7DC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 248) = v0;

  sub_2681433DC(v6, &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2681CC908()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_9();
  v0 = OUTLINED_FUNCTION_20_12();
  v1(v0);
  OUTLINED_FUNCTION_28_7();

  v2 = OUTLINED_FUNCTION_37_0();

  return v3(v2);
}

uint64_t sub_2681CC994()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 264) = v0;

  sub_2681433DC(v6, &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2681CCAC0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_9();
  v0 = OUTLINED_FUNCTION_20_12();
  v1(v0);
  OUTLINED_FUNCTION_28_7();

  v2 = OUTLINED_FUNCTION_37_0();

  return v3(v2);
}

uint64_t sub_2681CCB4C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v3[11] = v1;
  v3[12] = v5;
  v3[13] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  v3[37] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681CCC54()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_28_7();

  v1 = OUTLINED_FUNCTION_37_0();

  return v2(v1);
}

uint64_t sub_2681CCCD4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v3[14] = v1;
  v3[15] = v5;
  v3[16] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  v3[41] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681CCDDC()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_28_7();

  v1 = OUTLINED_FUNCTION_37_0();

  return v2(v1);
}

uint64_t sub_2681CCE5C()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_28_7();

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2681CCEDC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_9();
  v0 = OUTLINED_FUNCTION_20_12();
  v1(v0);
  OUTLINED_FUNCTION_28_7();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2681CCF68()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_9();
  v0 = OUTLINED_FUNCTION_20_12();
  v1(v0);
  OUTLINED_FUNCTION_28_7();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2681CCFF4()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 272);

  OUTLINED_FUNCTION_28_7();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2681CD078()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 304);

  OUTLINED_FUNCTION_28_7();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2681CD0FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2681CD124()
{
  OUTLINED_FUNCTION_14();
  sub_2683CC188();
  sub_2683CC178();
  OUTLINED_FUNCTION_7_4();

  return v0();
}

uint64_t sub_2681CD190()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_2681C98C0();
}

uint64_t sub_2681CD240()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_2681CA510();
}

uint64_t sub_2681CD2F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2681342AC;

  return sub_2681CD0FC(a1);
}

unint64_t sub_2681CD38C()
{
  result = qword_28024EB50;
  if (!qword_28024EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EB50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_25()
{
  result = v0[38];
  v3 = v0[34];
  *(v1 - 104) = v0[35];
  *(v1 - 96) = v3;
  v4 = v0[32];
  *(v1 - 88) = v0[33];
  *(v1 - 80) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_13()
{
}

uint64_t OUTLINED_FUNCTION_16_16()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_26_9()
{
  v2 = *(v0 + 232);
}

uint64_t OUTLINED_FUNCTION_28_7()
{
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return sub_2683CC758();
}

uint64_t OUTLINED_FUNCTION_59_1(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_2681CD5B0()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v1[10] = OUTLINED_FUNCTION_15_1();
  v4 = sub_2683CC598();
  v1[11] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[12] = v5;
  v1[13] = OUTLINED_FUNCTION_15_1();
  sub_2683CC138();
  v1[14] = OUTLINED_FUNCTION_15_1();
  v6 = sub_2683CC9A8();
  v1[15] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[16] = v7;
  v1[17] = OUTLINED_FUNCTION_15_1();
  v8 = sub_2683CC748();
  v1[18] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[19] = v9;
  v1[20] = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2681CD748()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[9];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  if ((*(v3 + 16))(v2, v3))
  {
    v4 = swift_task_alloc();
    v0[21] = v4;
    *v4 = v0;
    v4[1] = sub_2681CD888;

    return sub_2681CE15C();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    v0[25] = v6;
    *v6 = v7;
    v6[1] = sub_2681CDDA4;

    return sub_2681CFEBC();
  }
}

uint64_t sub_2681CD888()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_20_9();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681CD9E8()
{
  OUTLINED_FUNCTION_15();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v4 = sub_2683CC738();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  v7 = sub_2681E290C(v4, v6);
  if (v7 == 8)
  {
    v8 = v0[22];
    v9 = sub_26812C6B8();
    v10 = OUTLINED_FUNCTION_59_1(&type metadata for CommonErrors, v9);
    *v11 = v4;
    v11[1] = v6;
    OUTLINED_FUNCTION_16_1(v10, v11);

    OUTLINED_FUNCTION_19_14();

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_20_9();

    __asm { BRAA            X1, X16 }
  }

  v14 = v7;
  v15 = v0[9];

  sub_2683CC128();
  *(swift_task_alloc() + 16) = v14;
  sub_2683CC8E8();

  __swift_project_boxed_opaque_existential_1((v15 + 88), *(v15 + 112));
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[23] = v16;
  *v16 = v17;
  v16[1] = sub_2681CDBFC;
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2821BB480](v18, v19, v20, v21, v22);
}

uint64_t sub_2681CDBFC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681CDCF4()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_19_14();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CDDA4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

void sub_2681CDE9C()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 8), *(*(v0 + 72) + 32));
  sub_2683CC0A8();
  v6 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  v7 = sub_2683CCC98();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v7;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_0(v5);
  sub_2683CC328();
  sub_26812C310(v0 + 16, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v4, &qword_28024D400, &qword_2683D2460);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_19_14();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_77();

  __asm { BRAA            X1, X16 }
}

void sub_2681CE02C()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_25_10();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  __asm { BRAA            X1, X16 }
}

void sub_2681CE0D8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_25_10();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2681CE15C()
{
  OUTLINED_FUNCTION_14();
  v1[35] = v2;
  v1[36] = v0;
  v3 = sub_2683CC748();
  v1[37] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[38] = v4;
  v1[39] = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v5);
}

void sub_2681CE204()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v4 = sub_2683CC738();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  if (sub_2681E290C(v4, v6) == 8)
  {
    v7 = sub_26812C6B8();
    v8 = OUTLINED_FUNCTION_59_1(&type metadata for CommonErrors, v7);
    *v9 = v4;
    v9[1] = v6;
    OUTLINED_FUNCTION_16_1(v8, v9);
  }

  else
  {

    v12 = swift_allocObject();
    v0[40] = v12;
    *(v12 + 16) = 1;
    v13 = sub_2681E27F8(1);
    v15 = v14;
    v16 = sub_26816E7C0();
    OUTLINED_FUNCTION_59_1(&type metadata for AddTasks.Errors, v16);
    *v17 = v13;
    *(v17 + 8) = v15;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16_17();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2681CEA24()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  OUTLINED_FUNCTION_36_6();
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v7 + 336) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681CEB20()
{
  OUTLINED_FUNCTION_14();

  v0 = OUTLINED_FUNCTION_37_0();

  return v1(v0);
}

uint64_t sub_2681CEB84()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681CEBE8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_36_6();
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v7 + 352) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681CECE4()
{
  OUTLINED_FUNCTION_14();

  v0 = OUTLINED_FUNCTION_37_0();

  return v1(v0);
}

uint64_t sub_2681CED48()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681CEDAC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  OUTLINED_FUNCTION_36_6();
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v7 + 376) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681CEEC4()
{
  OUTLINED_FUNCTION_14();

  v0 = OUTLINED_FUNCTION_37_0();

  return v1(v0);
}

uint64_t sub_2681CEF28()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681CEF8C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  OUTLINED_FUNCTION_36_6();
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v7 + 400) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681CF0A4()
{
  OUTLINED_FUNCTION_14();

  v0 = OUTLINED_FUNCTION_37_0();

  return v1(v0);
}

uint64_t sub_2681CF108()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681CF16C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[14] = v1;
  v2[15] = v4;
  v2[16] = v0;
  OUTLINED_FUNCTION_36_6();
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v7 + 424) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681CF284()
{
  OUTLINED_FUNCTION_14();

  v0 = OUTLINED_FUNCTION_37_0();

  return v1(v0);
}

uint64_t sub_2681CF2E8()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681CF34C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  OUTLINED_FUNCTION_36_6();
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v7 + 448) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681CF464()
{
  OUTLINED_FUNCTION_14();

  v0 = OUTLINED_FUNCTION_37_0();

  return v1(v0);
}

uint64_t sub_2681CF4C8()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681CF52C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[20] = v1;
  v2[21] = v4;
  v2[22] = v0;
  OUTLINED_FUNCTION_36_6();
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v7 + 472) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681CF644()
{
  OUTLINED_FUNCTION_14();

  v0 = OUTLINED_FUNCTION_37_0();

  return v1(v0);
}

uint64_t sub_2681CF6A8()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681CF70C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[23] = v1;
  v2[24] = v4;
  v2[25] = v0;
  OUTLINED_FUNCTION_36_6();
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v7 + 488) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681CF824()
{
  OUTLINED_FUNCTION_14();

  v0 = OUTLINED_FUNCTION_37_0();

  return v1(v0);
}

uint64_t sub_2681CF888()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681CF8EC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[26] = v1;
  v2[27] = v4;
  v2[28] = v0;
  OUTLINED_FUNCTION_36_6();
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v7 + 504) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681CFA04()
{
  OUTLINED_FUNCTION_14();

  v0 = OUTLINED_FUNCTION_37_0();

  return v1(v0);
}

uint64_t sub_2681CFA68()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681CFACC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[29] = v1;
  v2[30] = v4;
  v2[31] = v0;
  OUTLINED_FUNCTION_36_6();
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v7 + 528) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681CFBE4()
{
  OUTLINED_FUNCTION_14();

  v0 = OUTLINED_FUNCTION_37_0();

  return v1(v0);
}

uint64_t sub_2681CFC48()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681CFCAC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[32] = v1;
  v2[33] = v4;
  v2[34] = v0;
  OUTLINED_FUNCTION_36_6();
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v7 + 552) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681CFDC4()
{
  OUTLINED_FUNCTION_14();

  v0 = OUTLINED_FUNCTION_37_0();

  return v1(v0);
}

uint64_t sub_2681CFE28()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681CFEBC()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_2683CB668();
  v1[5] = OUTLINED_FUNCTION_15_1();
  v4 = sub_2683CC748();
  v1[6] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6);
}

void sub_2681CFFA0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v4 = sub_2683CC738();
  v6 = v5;
  (*(v3 + 8))(v1, v2);

  if (sub_2681E290C(v4, v6) == 8)
  {
    v7 = sub_26812C6B8();
    v8 = OUTLINED_FUNCTION_59_1(&type metadata for CommonErrors, v7);
    *v9 = v4;
    v9[1] = v6;
    OUTLINED_FUNCTION_16_1(v8, v9);
  }

  else
  {

    v12 = swift_allocObject();
    v0[10] = v12;
    *(v12 + 16) = 1;
    v13 = sub_2681E27F8(1);
    v15 = v14;
    v16 = sub_26816E7C0();
    OUTLINED_FUNCTION_59_1(&type metadata for AddTasks.Errors, v16);
    *v17 = v13;
    *(v17 + 8) = v15;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10_5();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2681D07DC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681D08D4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681D09CC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681D0AC4()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681D0B48()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681D0C48()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681D0D48()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681D0DC0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681D0EB8()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 192);

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2681D0F40()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681D1040()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681D1140()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 272) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681D1240()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681D1340()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 320) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681D1440()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681D14B8()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681D1530()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681D15B4()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681D1638()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681D16BC()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 192);

  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2681D1744()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681D17C8()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681D184C()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681D18D0()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681D1954()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

id sub_2681D19D8(unint64_t a1, char a2, unint64_t a3)
{
  if (a2)
  {
    return 0;
  }

  if (!(a3 >> 62))
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  v5 = sub_2683D00A8();
  if ((v5 & 0x8000000000000000) == 0)
  {
LABEL_4:
    if (v5 > a1)
    {
      sub_2683ABE60();
      if ((a3 & 0xC000000000000001) == 0)
      {
        return *(a3 + 8 * a1 + 32);
      }

      return MEMORY[0x26D616C90](a1, a3);
    }

    return 0;
  }

  __break(1u);
  return MEMORY[0x26D616C90](a1, a3);
}

uint64_t sub_2681D1A74(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  v3 = v1;
  if (v1 == 1)
  {
    sub_2683CF138();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
    v4 = sub_2683CC9B8();
    v3 = sub_26818F730(v4);
    swift_beginAccess();
    v5 = *v2;
    *v2 = v3;

    sub_268137FB0(v5);
  }

  sub_268137FC0(v1);
  return v3;
}

uint64_t sub_2681D1B2C(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = sub_2683CB668();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2683CEF98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  v6 = sub_2683CC9C8();
  v7 = [v6 contactEventTrigger];

  v8 = [v7 triggerContact];
  __swift_project_boxed_opaque_existential_1(a3 + 1, a3[4]);
  sub_2683CC088();
  v9 = sub_2683CEF78();

  *a1 = v9;
  return result;
}

uint64_t sub_2681D1C60(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = sub_2683CB668();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2683CC748();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  v10 = sub_2683CC9C8();
  v11 = sub_2681D23D0(v10);
  if (v11)
  {
    v12 = v11;
    sub_2683CC9E8();
    v13 = sub_2683CC728();
    v15 = v14;
    (*(v7 + 8))(v9, v6);
    sub_2681D19D8(v13, v15 & 1, v12);
  }

  sub_2683CEF98();
  __swift_project_boxed_opaque_existential_1(a3 + 1, a3[4]);
  sub_2683CC088();
  v16 = sub_2683CEF78();

  *a1 = v16;
  return result;
}

BOOL sub_2681D1E3C()
{
  v0 = sub_2683CC748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v4 = sub_2683CC738();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return sub_2681E290C(v4, v6) != 0;
}

uint64_t sub_2681D1F40()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v1;
  v2 = sub_2683CC748();
  v0[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v0[4] = v3;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v4);
}

void sub_2681D1FFC()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v4 = sub_2683CC738();
  v6 = v5;
  v7 = *(v3 + 8);
  v7(v1, v2);

  v8 = sub_2681E290C(v4, v6);
  v9 = v0[5];
  if (v8 == 8)
  {
    v10 = sub_26812C6B8();
    v11 = OUTLINED_FUNCTION_59_1(&type metadata for CommonErrors, v10);
    *v12 = v4;
    v12[1] = v6;
    OUTLINED_FUNCTION_16_1(v11, v12);

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_77();

    __asm { BRAA            X1, X16 }
  }

  v15 = v8;
  v16 = v0[3];

  v17 = sub_2683CC9C8();
  sub_2683CC9E8();
  v18 = sub_2683CC728();
  v20 = v19;
  v7(v9, v16);
  sub_2682D3594(v15, v18, v20 & 1);

  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_77();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2681D21B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_2681CD5B0();
}

uint64_t sub_2681D225C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268137D60;

  return sub_2681D1F40();
}

uint64_t sub_2681D22F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2681D2338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2681D23D0(void *a1)
{
  v2 = [a1 targetTaskListMembers];

  if (!v2)
  {
    return 0;
  }

  sub_2681D2438();
  v3 = sub_2683CFCA8();

  return v3;
}

unint64_t sub_2681D2438()
{
  result = qword_28024EB60;
  if (!qword_28024EB60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024EB60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_18()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 288) + 48), *(*(v0 + 288) + 72));

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_17_10()
{

  return sub_2681D1A74(v0);
}

uint64_t OUTLINED_FUNCTION_18_14()
{
}

uint64_t OUTLINED_FUNCTION_23_11(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_10()
{
}

id sub_2681D2560(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v70 = a4;
  v73 = a3;
  v74 = a2;
  v7 = *(a5 + 8);
  v6 = *(a5 + 16);
  v75 = a1;
  v76 = v7;
  v69 = v6;
  v77 = *(a5 + 24);
  LODWORD(v57) = *(a5 + 32);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_2_1();
  v72 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB68, &unk_2683D98E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBB8, &unk_2683D4310);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v54 - v17;
  v19 = sub_2683CB0D8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_1();
  v71 = v21;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v54 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v54 - v26;
  v28 = [v78 dateComponentsRange];
  v29 = [v28 startDateComponents];

  if (v29)
  {
    sub_2683CAFE8();

    v66 = v20;
    v67 = v19;
    (*(v20 + 32))(v27, v25, v19);
    sub_2683CB0B8();
    sub_2683CB0C8();
    v63 = sub_2683CB008();
    v64 = v18;
    v62 = v30;
    v65 = v15;
    if (v70)
    {
      v75 = sub_2683CB038();
      v61 = v31;
      v74 = sub_2683CB048();
      v70 = v32;
      v73 = sub_2683CAFF8();
      v59 = v33;
    }

    else
    {
      v59 = 0;
      v70 = 0;
      v61 = 0;
    }

    v36 = *(a5 + 33);
    v68 = v12;
    if (v36)
    {
      v60 = sub_2683CB028();
      LODWORD(v69) = v37;
    }

    else
    {
      v60 = *a5;
      if ((v69 & 1) == 0)
      {
        v58 = 0;
        LODWORD(v69) = 0;
        v39 = 0;
        v40 = v77;
        if ((v57 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      LODWORD(v69) = 0;
    }

    v76 = sub_2683CB068();
    v58 = v38;
    if ((v36 & 1) == 0 && (*(a5 + 32) & 1) == 0)
    {
      v39 = 0;
      v40 = *(a5 + 24);
LABEL_17:
      v54[1] = v39;
      v77 = v40;
      v57 = sub_2683CAF88();
      v54[0] = v41;
      v56 = sub_2683CB098();
      v55 = sub_2683CAFB8();
      sub_2683CB088();
      sub_2683CAFA8();
      sub_2683CAF98();
      sub_2683CAFC8();
      v42 = v71;
      sub_2683CB0A8();
      v44 = v66;
      v43 = v67;
      v45 = v68;
      (*(v66 + 16))(v68, v42, v67);
      v46 = 1;
      __swift_storeEnumTagSinglePayload(v45, 0, 1, v43);
      v47 = [v78 dateComponentsRange];
      v48 = [v47 endDateComponents];

      v49 = v72;
      if (v48)
      {
        sub_2683CAFE8();

        v46 = 0;
      }

      __swift_storeEnumTagSinglePayload(v49, v46, 1, v43);
      v50 = objc_allocWithZone(MEMORY[0x277CD3B68]);
      v51 = sub_2681D2B74(v45, v49);
      v52 = [objc_allocWithZone(MEMORY[0x277CD4240]) initWithDateComponentsRange_];

      v53 = *(v44 + 8);
      v53(v42, v43);
      v53(v27, v43);
      return v52;
    }

LABEL_16:
    v40 = sub_2683CB078();
    goto LABEL_17;
  }

  v34 = v78;

  return v34;
}

id sub_2681D2B74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2683CB0D8();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) != 1)
  {
    v7 = sub_2683CAFD8();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v6) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_2683CAFD8();
    (*(*(v6 - 8) + 8))(a2, v6);
  }

  v9 = [v3 initWithStartDateComponents:v7 endDateComponents:v8];

  return v9;
}

uint64_t sub_2681D2C94(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_2683CFA78();
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_2681D2D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268129504(0, &qword_28024D340, 0x277CD4058);

  v5 = sub_268175270(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, a1, a2);
  v6 = [v5 _metadata];
  if (v6)
  {
    v7 = v6;
    [v6 setBackgroundLaunch_];
  }

  v8 = [v5 _metadata];

  if (v8)
  {
    sub_2683CF258();
    if (v9)
    {
      v10 = sub_2683CFA68();
    }

    else
    {
      v10 = 0;
    }

    [v8 setLaunchId_];
  }

  sub_268129504(0, &unk_28024F9B0, 0x277D473F0);
  v11 = sub_2683CFF28();

  return v11;
}

id sub_2681D2E90()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return DirectInvocationCodable.serializeToStartLocalRequest(context:)(v0[5], v1, v2);
}

uint64_t sub_2681D2F00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2681D2F40(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ContinueReadingPromptResponseTask(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2681D3080(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, void, void), uint64_t a3)
{
  v6 = sub_2683CCC18();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = sub_2681D346C(a1, a2, a3);
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v14 = sub_2683CF7E8();
  __swift_project_value_buffer(v14, qword_28027C958);
  v15 = *(v7 + 16);
  v15(v12, a1, v6);
  v16 = sub_2683CF7C8();
  v17 = sub_2683CFE98();
  if (os_log_type_enabled(v16, v17))
  {
    v29 = v10;
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v18 = 136315394;
    v19 = 0xE600000000000000;
    v20 = 0x6C65636E6163;
    v30 = v13;
    switch(v13)
    {
      case 1:
        v19 = 0xE400000000000000;
        v20 = 1886352499;
        break;
      case 2:
        v19 = 0xE800000000000000;
        v20 = 0x65756E69746E6F63;
        break;
      case 3:
        v19 = 0xE300000000000000;
        v20 = 7104878;
        break;
      default:
        break;
    }

    v21 = sub_2681610A0(v20, v19, &v31);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v15(v29, v12, v6);
    v22 = sub_2683CFAD8();
    v24 = v23;
    (*(v7 + 8))(v12, v6);
    v25 = sub_2681610A0(v22, v24, &v31);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_2680EB000, v16, v17, "[ContinueReadingPromptResponseTask] Parsed [%s] from: %s", v18, 0x16u);
    v26 = v28;
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v26, -1, -1);
    MEMORY[0x26D617A40](v18, -1, -1);

    return v30;
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  return v13;
}

uint64_t sub_2681D33C0(char a1)
{
  if (!a1)
  {
    return 0x6C65636E6163;
  }

  if (a1 == 1)
  {
    return 1886352499;
  }

  return 0x65756E69746E6F63;
}

unint64_t sub_2681D3418()
{
  result = qword_28024EB70;
  if (!qword_28024EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EB70);
  }

  return result;
}

uint64_t sub_2681D346C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, void, void), uint64_t a3)
{
  v6 = sub_2683CCC68();
  v44 = *(v6 - 1);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2683CCBD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2683CCC18();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v43 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v46 = &v40 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - v19;
  a2(__src, a1, 0, 0);
  if (LOBYTE(__src[0]) == 3)
  {
    v42 = a2;
    sub_26812C310(__src, &qword_28024D458, &unk_2683D2C60);
    v41 = *(v14 + 16);
    v41(v20, a1, v13);
    v21 = (*(v14 + 88))(v20, v13);
    if (v21 == *MEMORY[0x277D5C150])
    {
      (*(v14 + 96))(v20, v13);
      (*(v10 + 32))(v12, v20, v9);
      v22 = sub_2681D3A0C(v12);
      (*(v10 + 8))(v12, v9);
    }

    else if (v21 == *MEMORY[0x277D5C160])
    {
      (*(v14 + 96))(v20, v13);
      v23 = v44;
      v24 = v20;
      v25 = v45;
      (*(v44 + 32))(v8, v24, v45);
      v22 = sub_2681D3B14(v8, v42, a3);
      (*(v23 + 8))(v8, v25);
    }

    else
    {
      if (qword_28024C8E0 != -1)
      {
        swift_once();
      }

      v26 = sub_2683CF7E8();
      __swift_project_value_buffer(v26, qword_28027C958);
      v27 = v46;
      v28 = v41;
      v41(v46, a1, v13);
      v29 = sub_2683CF7C8();
      v30 = sub_2683CFE98();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        __src[0] = v45;
        *v31 = 136315138;
        v28(v43, v27, v13);
        v32 = sub_2683CFAD8();
        v33 = v27;
        v35 = v34;
        v36 = *(v14 + 8);
        v36(v33, v13);
        v37 = sub_2681610A0(v32, v35, __src);

        *(v31 + 4) = v37;
        _os_log_impl(&dword_2680EB000, v29, v30, "[ContinueReadingPromptResponseTask] got unsupported parse type %s", v31, 0xCu);
        v38 = v45;
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x26D617A40](v38, -1, -1);
        MEMORY[0x26D617A40](v31, -1, -1);
      }

      else
      {

        v36 = *(v14 + 8);
        v36(v27, v13);
      }

      v36(v20, v13);
      return 3;
    }
  }

  else
  {
    memcpy(__dst, __src, 0x41uLL);
    if (__dst[0] == 2)
    {
      return 0;
    }

    else
    {
      if (__dst[0])
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      sub_26812C310(&__dst[8], &qword_28024D460, &qword_2683D5050);
    }
  }

  return v22;
}

uint64_t sub_2681D3A0C(uint64_t a1)
{
  v1 = sub_2683CCBB8();
  v3 = v2;
  if (qword_28024CC80 != -1)
  {
    swift_once();
  }

  v4 = qword_280254878;
  v5 = unk_280254880;
  v9 = qword_280254868;
  v10 = unk_280254870;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  MEMORY[0x26D616690](v4, v5);
  if (v1 == v9 && v3 == v10)
  {

    return 2;
  }

  else
  {
    v7 = sub_2683D0598();

    if (v7)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2681D3B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2683CCDD8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CCC58();
  v7 = sub_2683CCF78();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
      return 2;
    }

    sub_2681D3CA8(&v11);
    swift_unknownObjectRelease();
    v10[0] = v11;
    v10[1] = v12;
    if (*(&v12 + 1))
    {
      sub_2683CDDA8();
      if (swift_dynamicCast())
      {

        return 2;
      }
    }

    else
    {
      sub_26812C310(v10, &qword_28024E370, &unk_2683D9AA0);
    }
  }

  return 3;
}

double sub_2681D3CA8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2683CD558();
  if (sub_2683ABE58())
  {
    sub_2683ABE60();
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D616C90](0, v2);
    }

    else
    {
    }

    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E370, &unk_2683D9AA0);
    *a1 = swift_allocObject();

    sub_2683CD718();
  }

  else
  {

    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t type metadata accessor for NotebookBaseCATsSimple(uint64_t a1)
{
  result = qword_28024EB78;
  if (!qword_28024EB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681D4004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2683CF238();
  OUTLINED_FUNCTION_19();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v11 - 8);
  sub_268163198(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_2683CF178();
  (*(v7 + 8))(a2, v3);
  sub_268163208(a1);
  return v13;
}

uint64_t sub_2681D4160(uint64_t a1, uint64_t a2)
{
  sub_2683CF238();
  OUTLINED_FUNCTION_19();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_2683CF188();
  (*(v5 + 8))(a2, v2);
  return v9;
}

BOOL sub_2681D4268(uint64_t a1)
{
  sub_26813A144(a1, v3);
  v1 = v3[56] == 1;
  sub_26813A1A0(v3);
  return v1;
}

uint64_t sub_2681D42B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_2681D42E0);
}

void sub_2681D42E0()
{
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  sub_2683CC9B8();
  sub_2683CF258();
  v3 = v2;

  v0[10] = v3;
  v5 = *(*(v1 + 24) + 24) + **(*(v1 + 24) + 24);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_26813A870;

  __asm { BRAA            X8, X16 }
}

void *sub_2681D4464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v4 = sub_2683CC748();
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  v10 = sub_2683CC9C8();
  v11 = *v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(type metadata accessor for SimpleDisambiguationItem(0, AssociatedTypeWitness, v13, v14) + 28);
  v23[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, v22 + v15, AssociatedTypeWitness);
  sub_2683CC9E8();
  v17 = sub_2683CC728();
  LOBYTE(v15) = v18;
  (*(v6 + 8))(v9, v4);
  v19 = sub_2682DD960(v11, v23, v17, v15 & 1);

  __swift_destroy_boxed_opaque_existential_0(v23);
  return v19;
}

uint64_t sub_2681D4628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 40);
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  v14 = (*(v8 + 16) + **(v8 + 16));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_6_3(v10);
  *v11 = v12;
  v11[1] = sub_268133EC8;

  return v14(a1, a2, v4 + v7, v9, v8);
}

uint64_t sub_2681D476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2681342AC;

  return sub_2681D42B4(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2681D4864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681342AC;

  return sub_2681D4628(a1, a2, v8, a4);
}

uint64_t sub_2681D4930(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB88, &unk_2683D9BB0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  v48 = (&v45 - v4);
  v5 = sub_2683CC748();
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  v14 = a2;
  sub_2683CC9E8();
  v15 = sub_2683CC738();
  v17 = v16;
  v18 = *(v7 + 8);
  v18(v13, v5);
  v19 = sub_268201068(v15, v17);
  if (v19 == 2)
  {
    sub_2683CC9E8();
    v20 = sub_2683CC738();
    v22 = v21;
    v18(v11, v5);
    sub_26812C6B8();
    v23 = swift_allocError();
    *v24 = v20;
    *(v24 + 8) = v22;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = 1;
    v25 = v48;
    *v48 = v23;
    *(v25 + 8) = 0;
    v26 = *MEMORY[0x277D5BC30];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB90, &unk_2683D9BC0);
    OUTLINED_FUNCTION_1();
    (*(v27 + 104))(v25, v26);
    v28 = v23;
    sub_2681D52B0();
LABEL_6:
    v39 = sub_2683CBF38();
    sub_26812D9E0(v25, &qword_28024EB88, &unk_2683D9BB0);

    return v39;
  }

  v29 = v48;
  if ((v19 & 1) == 0)
  {
    sub_26812C6B8();
    v23 = swift_allocError();
    *v40 = xmmword_2683D9BA0;
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    *(v40 + 32) = 2;
    v25 = v29;
    *v29 = v23;
    *(v29 + 8) = 0;
    v41 = *MEMORY[0x277D5BC30];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB90, &unk_2683D9BC0);
    OUTLINED_FUNCTION_1();
    (*(v42 + 104))(v25, v41);
    v43 = v23;
    sub_2681D52B0();
    goto LABEL_6;
  }

  v30 = v46;
  sub_2681D4D50(v56);
  sub_26813CA00(v30 + 80, v53);
  sub_26813C7E0(v30 + 144, &v54);
  sub_26813CA00(v30 + 192, v55);
  v55[5] = sub_2683CC9B8();
  memcpy(v52, v56, sizeof(v52));
  LOBYTE(v51) = 1;
  __swift_project_boxed_opaque_existential_1((v30 + 232), *(v30 + 256));
  sub_2681D5314(v56, v50);
  sub_26818A030(&v51, v31, v32, v33, v34, v35, v36, v37, v45, v46, v47, v48, v49, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v51, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12], v52[13], v52[14], v52[15], v52[16], v52[17], v52[18], v52[19], v52[20], v52[21], v53[0], v53[1], v53[2], v53[3]);
  v39 = v38(v47, v14);

  sub_26812D9E0(v56, &qword_28024E060, &qword_2683D6110);
  sub_26812D9E0(&v51, &qword_28024E170, &unk_2683D9BD0);
  return v39;
}

uint64_t sub_2681D4D50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v25 = v5;
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBE0 != -1)
  {
    swift_once();
  }

  *(v8 + 32) = sub_2683CD158();
  *(v8 + 40) = v9;
  v10 = *__swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  v28[3] = type metadata accessor for SnoozeTasksCATPatternsExecutor(0);
  v28[4] = &off_287902B08;
  v28[0] = v10;
  sub_26813CA00(v28, v27);
  v11 = swift_allocObject();
  sub_268128148(v27, v11 + 16);

  __swift_destroy_boxed_opaque_existential_0(v28);
  v12 = *(v2 + 120);
  v13 = qword_28024C8C0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = *algn_28027C8D8;
  v15 = unk_28027C8E8;
  v23 = qword_28027C8E0;
  v24 = qword_28027C8D0;
  v16 = *(v2 + 128);

  sub_2683CB588();
  v17 = sub_2683CB548();
  v19 = v18;
  result = (*(v25 + 8))(v7, v26);
  *a1 = v8;
  *(a1 + 8) = &unk_2683D9BE0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_2683D9BF0;
  *(a1 + 32) = v11;
  *(a1 + 40) = &unk_2683D9C00;
  *(a1 + 48) = v12;
  *(a1 + 56) = sub_2681D518C;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v21 = v23;
  v22 = v24;
  *(a1 + 80) = 0;
  *(a1 + 88) = v22;
  *(a1 + 96) = v14;
  *(a1 + 104) = v21;
  *(a1 + 112) = v15;
  *(a1 + 120) = &unk_2683D9C10;
  *(a1 + 128) = v16;
  *(a1 + 136) = 1;
  LODWORD(v21) = v28[0];
  *(a1 + 140) = *(v28 + 3);
  *(a1 + 137) = v21;
  *(a1 + 144) = sub_268377A04;
  *(a1 + 152) = 0;
  *(a1 + 160) = v17;
  *(a1 + 168) = v19;
  return result;
}

uint64_t sub_2681D5020(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2681D5040);
}

uint64_t sub_2681D5040()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_26813C350;
  v2 = *(v0 + 16);

  return sub_2681C19B4(v2);
}

uint64_t sub_2681D50E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_2683C8A00(a1, a2);
}

uint64_t sub_2681D518C()
{
  sub_2683CE098();
  swift_allocObject();
  v0 = sub_2683CE088();
  sub_2683CDD18();
  swift_allocObject();
  sub_2683CDD08();
  sub_2683CDCF8();
  sub_2683CE178();

  return v0;
}

uint64_t sub_2681D5218(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268137D60;

  return sub_268183768(a1);
}

unint64_t sub_2681D52B0()
{
  result = qword_28024EB98[0];
  if (!qword_28024EB98[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024EB88, &unk_2683D9BB0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28024EB98);
  }

  return result;
}

uint64_t sub_2681D5314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E060, &qword_2683D6110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681D5384()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_3(v3);
  *v4 = v5;
  v4[1] = sub_26813D6E0;

  return sub_2681D5020(v2, v0 + 16);
}

uint64_t sub_2681D5414(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_3(v4);
  *v5 = v6;
  v5[1] = sub_268133EC8;

  return sub_2681D50E0(a1, a2);
}

uint64_t sub_2681D54BC()
{
  OUTLINED_FUNCTION_14();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_3(v2);
  *v3 = v4;
  v3[1] = sub_26813D0C0;

  return sub_2681D5218(v1);
}

uint64_t sub_2681D554C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2681D55D4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 1) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((v9 + v18) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((v9 + ((v7 + 1) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 136;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2681D572C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = &a1[v10 + 1] & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = (v11 + v19) & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v20 + 104) = 0u;
              *(v20 + 88) = 0u;
              *(v20 + 72) = 0u;
              *(v20 + 56) = 0u;
              *(v20 + 40) = 0u;
              *(v20 + 24) = 0u;
              *(v20 + 8) = 0u;
              *(v20 + 120) = 0u;
              *v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v20 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFF78)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2681D59CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x61507473614C7369 && a2 == 0xEA00000000006567)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2683D0598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2681D5A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681D59CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2681D5A98(uint64_t a1)
{
  v2 = sub_2681D5C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681D5AD4(uint64_t a1)
{
  v2 = sub_2681D5C38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.PageInfo.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC20, &qword_2683D9D88);
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681D5C38();
  sub_2683D0718();
  sub_2683D0528();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_2681D5C38()
{
  result = qword_28024EC28;
  if (!qword_28024EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EC28);
  }

  return result;
}

uint64_t Snippet.PageInfo.hashValue.getter()
{
  sub_2683D0698();
  sub_2683D06B8();
  return sub_2683D06D8();
}

uint64_t Snippet.PageInfo.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC30, &qword_2683D9D90);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681D5C38();
  sub_2683D06F8();
  if (!v2)
  {
    v11 = sub_2683D0488();
    (*(v7 + 8))(v10, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2681D5E80(uint64_t a1)
{
  sub_2683D0698();
  sub_2683D06B8();
  return sub_2683D06D8();
}

uint64_t sub_2681D5ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681D5F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Snippet.SearchResult3p.notes.getter()
{
  type metadata accessor for Snippet.SearchResult3p(0);
}

uint64_t type metadata accessor for Snippet.SearchResult3p(uint64_t a1)
{
  result = qword_28024ECD8;
  if (!qword_28024ECD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippet.SearchResult3p.notes.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = *(type metadata accessor for Snippet.SearchResult3p(v2) + 20);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Snippet.SearchResult3p.notes.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  type metadata accessor for Snippet.SearchResult3p(v0);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.SearchResult3p.reminderSections.getter()
{
  type metadata accessor for Snippet.SearchResult3p(0);
}

uint64_t Snippet.SearchResult3p.reminderSections.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = *(type metadata accessor for Snippet.SearchResult3p(v2) + 24);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Snippet.SearchResult3p.reminderSections.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  type metadata accessor for Snippet.SearchResult3p(v0);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.SearchResult3p.pageInfo.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Snippet.SearchResult3p(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t Snippet.SearchResult3p.pageInfo.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Snippet.SearchResult3p(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t Snippet.SearchResult3p.pageInfo.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  type metadata accessor for Snippet.SearchResult3p(v0);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.SearchResult3p.interaction.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = v1 + *(type metadata accessor for Snippet.SearchResult3p(v2) + 32);

  return sub_2681D62B8(v0, v3);
}

uint64_t sub_2681D62B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Interaction(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Snippet.SearchResult3p.interaction.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  type metadata accessor for Snippet.SearchResult3p(v0);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.SearchResult3p.init(primaryHeading:notes:reminderSections:pageInfo:interaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a4;
  v12 = type metadata accessor for Snippet.SectionHeading(0);
  __swift_storeEnumTagSinglePayload(a6, 1, 1, v12);
  v13 = type metadata accessor for Snippet.SearchResult3p(0);
  v14 = v13[7];
  *(a6 + v14) = 2;
  sub_2681D5F4C(a1, a6);
  *(a6 + v13[5]) = a2;
  *(a6 + v13[6]) = a3;
  *(a6 + v14) = v11;
  OUTLINED_FUNCTION_9_16();
  return sub_2681D8CEC(a5, a6 + v15, v16);
}

uint64_t sub_2681D6410(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x487972616D697270 && a2 == 0xEE00676E69646165;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365746F6ELL && a2 == 0xE500000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000002683FE7F0 == a2;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F666E4965676170 && a2 == 0xE800000000000000;
        if (v8 || (sub_2683D0598() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69)
        {

          return 4;
        }

        else
        {
          v10 = sub_2683D0598();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_2681D65C0(char a1)
{
  result = 0x487972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x7365746F6ELL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6F666E4965676170;
      break;
    case 4:
      result = 0x7463617265746E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2681D6678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681D6410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2681D66A0(uint64_t a1)
{
  v2 = sub_2681D6A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681D66DC(uint64_t a1)
{
  v2 = sub_2681D6A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.SearchResult3p.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC38, &qword_2683D9D98);
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_28_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681D6A10();
  sub_2683D0718();
  type metadata accessor for Snippet.SectionHeading(0);
  OUTLINED_FUNCTION_8_16();
  sub_2681D72EC(v8, v9, &protocol conformance descriptor for Snippet.SectionHeading);
  OUTLINED_FUNCTION_5_16();
  sub_2683D0508();
  if (!v1)
  {
    type metadata accessor for Snippet.SearchResult3p(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC50, &qword_2683D9DA0);
    sub_2681D70E4(&qword_28024EC58, sub_2681D6A64, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_5_16();
    sub_2683D0548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC68, &unk_2683E3470);
    sub_2681D6AB8(&qword_28024EC70, &qword_28024EC78, &protocol conformance descriptor for Snippet.ReminderSearchResult.Section, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_5_16();
    sub_2683D0548();
    sub_2681D6B54();
    sub_2683D0508();
    type metadata accessor for Snippet.Interaction(0);
    OUTLINED_FUNCTION_10_6();
    sub_2681D72EC(v10, v11, &protocol conformance descriptor for Snippet.Interaction);
    OUTLINED_FUNCTION_5_16();
    sub_2683D0548();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_2681D6A10()
{
  result = qword_28024EC40;
  if (!qword_28024EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EC40);
  }

  return result;
}

unint64_t sub_2681D6A64()
{
  result = qword_28024EC60;
  if (!qword_28024EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EC60);
  }

  return result;
}

uint64_t sub_2681D6AB8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024EC68, &unk_2683E3470);
    sub_2681D72EC(a2, type metadata accessor for Snippet.ReminderSearchResult.Section, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2681D6B54()
{
  result = qword_28024EC80;
  if (!qword_28024EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EC80);
  }

  return result;
}

uint64_t Snippet.SearchResult3p.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = type metadata accessor for Snippet.Interaction(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  v35 = &v30 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC88, &qword_2683D9DA8);
  OUTLINED_FUNCTION_0_3();
  v33 = v10;
  v34 = v9;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_28_2();
  v12 = type metadata accessor for Snippet.SearchResult3p(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_3();
  v16 = v15 - v14;
  v17 = type metadata accessor for Snippet.SectionHeading(0);
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  v37 = v12;
  v38 = a1;
  v18 = *(v12 + 28);
  *(v16 + v18) = 2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681D6A10();
  v19 = v36;
  sub_2683D06F8();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_0(v38);
    return sub_26812D9E0(v16, &qword_28024DAF8, &qword_2683E3440);
  }

  else
  {
    LOBYTE(v40) = 0;
    OUTLINED_FUNCTION_8_16();
    sub_2681D72EC(v20, v21, &protocol conformance descriptor for Snippet.SectionHeading);
    sub_2683D0468();
    sub_2681D5F4C(v35, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC50, &qword_2683D9DA0);
    v39 = 1;
    sub_2681D70E4(&qword_28024EC98, sub_2681D715C, MEMORY[0x277D83978]);
    sub_2683D04A8();
    v22 = v37;
    *(v16 + *(v37 + 20)) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC68, &unk_2683E3470);
    v39 = 2;
    sub_2681D6AB8(&qword_28024ECA8, &qword_28024ECB0, &protocol conformance descriptor for Snippet.ReminderSearchResult.Section, MEMORY[0x277D83978]);
    sub_2683D04A8();
    *(v16 + *(v22 + 24)) = v40;
    v39 = 3;
    sub_2681D71B0();
    sub_2683D0468();
    *(v16 + v18) = v40;
    LOBYTE(v40) = 4;
    OUTLINED_FUNCTION_10_6();
    sub_2681D72EC(v23, v24, &protocol conformance descriptor for Snippet.Interaction);
    sub_2683D04A8();
    v25 = OUTLINED_FUNCTION_6_18();
    v26(v25);
    OUTLINED_FUNCTION_9_16();
    sub_2681D8CEC(v6, v16 + v27, v28);
    sub_2681D8C24(v16, v31, type metadata accessor for Snippet.SearchResult3p);
    __swift_destroy_boxed_opaque_existential_0(v38);
    return sub_2681D8C84();
  }
}

uint64_t sub_2681D70E4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024EC50, &qword_2683D9DA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2681D715C()
{
  result = qword_28024ECA0;
  if (!qword_28024ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ECA0);
  }

  return result;
}

unint64_t sub_2681D71B0()
{
  result = qword_28024ECB8;
  if (!qword_28024ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ECB8);
  }

  return result;
}

unint64_t sub_2681D7208()
{
  result = qword_28024ECC0;
  if (!qword_28024ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ECC0);
  }

  return result;
}

uint64_t sub_2681D72EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s14descr2878F8F29V8PageInfoVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr2878F8F29V8PageInfoVwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_2681D7500(uint64_t a1)
{
  sub_2681D7674(319, &qword_28024ECE8, type metadata accessor for Snippet.SectionHeading, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2681D76D8(319, &qword_28024ECF0, &type metadata for Snippet.Note, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2681D7674(319, &qword_28024ECF8, type metadata accessor for Snippet.ReminderSearchResult.Section, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_2681D76D8(319, &qword_28024ED00, &type metadata for Snippet.PageInfo, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Snippet.Interaction(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2681D7674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2681D76D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *_s14descr2878F8F29V14SearchResult3pV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s14descr2878F8F29V8PageInfoV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2681D78B4()
{
  result = qword_28024ED08;
  if (!qword_28024ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED08);
  }

  return result;
}

unint64_t sub_2681D790C()
{
  result = qword_28024ED10;
  if (!qword_28024ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED10);
  }

  return result;
}

unint64_t sub_2681D7964()
{
  result = qword_28024ED18;
  if (!qword_28024ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED18);
  }

  return result;
}

unint64_t sub_2681D79BC()
{
  result = qword_28024ED20;
  if (!qword_28024ED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED20);
  }

  return result;
}

unint64_t sub_2681D7A14()
{
  result = qword_28024ED28;
  if (!qword_28024ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED28);
  }

  return result;
}

unint64_t sub_2681D7A6C()
{
  result = qword_28024ED30;
  if (!qword_28024ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED30);
  }

  return result;
}

uint64_t sub_2681D7AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v120 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  OUTLINED_FUNCTION_0_3();
  v10 = v9;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_28_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  v14 = (&v112 - v13);
  v124 = type metadata accessor for Snippet.SectionHeading(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_1();
  v117 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = (&v112 - v18);
  v130 = sub_2683CAEA8();
  OUTLINED_FUNCTION_0_3();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_3();
  v129 = v24 - v23;
  v116 = type metadata accessor for Snippet.ReminderSearchResult(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_1();
  v114 = v26;
  MEMORY[0x28223BE20](v27);
  v122 = (&v112 - v28);
  v123 = *a3;
  v125 = v8;
  v29 = sub_2683CC818();
  v30 = sub_2682DEB58(v29);
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v33 = sub_268229348();
  v119 = v4;
  v118 = v10;
  v121 = v19;
  if (!v33)
  {

    v135 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v136 = v31;
  v131 = v33;
  result = sub_268390A50(0, v33 & ~(v33 >> 63), 0);
  if ((v131 & 0x8000000000000000) == 0)
  {
    v112 = v14;
    v113 = a1;
    v115 = a4;
    v35 = 0;
    v36 = v136;
    v126 = (v21 + 8);
    v127 = v32 & 0xC000000000000001;
    v37 = &unk_279C3A000;
    v128 = v32;
    do
    {
      v135 = v36;
      if (v127)
      {
        v38 = MEMORY[0x26D616C90](v35, v32);
      }

      else
      {
        v38 = *(v32 + 8 * v35 + 32);
      }

      v39 = v38;
      v40 = sub_2683BA54C(v38);
      v133 = v41;
      v134 = v40;
      v42 = [v39 title];
      v43 = [v42 v37[264]];

      v132 = sub_2683CFA78();
      v45 = v44;

      v46 = [v39 groupName];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 v37[264]];

        v49 = sub_2683CFA78();
        v51 = v50;
      }

      else
      {
        v49 = 0;
        v51 = 0;
      }

      sub_2683B9E1C();
      *&v137[0] = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
      sub_2681D8BC0();
      v53 = sub_2683CFA38();
      v55 = v54;

      *&v137[0] = v53;
      *(&v137[0] + 1) = v55;
      v56 = v129;
      sub_2683CAE78();
      sub_26812A1AC();
      v57 = sub_2683CFFE8();
      v59 = v58;

      (*v126)(v56, v130);

      v36 = v135;
      v136 = v135;
      v61 = *(v135 + 16);
      v60 = *(v135 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_268390A50((v60 > 1), v61 + 1, 1);
        v36 = v136;
      }

      ++v35;
      *(v36 + 16) = v61 + 1;
      v62 = (v36 + (v61 << 6));
      v63 = v133;
      v62[4] = v134;
      v62[5] = v63;
      v62[6] = v132;
      v62[7] = v45;
      v62[8] = v49;
      v62[9] = v51;
      v62[10] = v57;
      v62[11] = v59;
      v32 = v128;
      v37 = &unk_279C3A000;
    }

    while (v131 != v35);
    v135 = v36;

    a4 = v115;
    a1 = v113;
    v14 = v112;
LABEL_18:
    v64 = v120;
    sub_2681D85CC(a1);
    v66 = v65;
    v67 = sub_2683CC848();
    v68 = sub_268175DF4(v64);
    v70 = v69;

    v71 = *(v66 + 16);
    v138 = 0;
    memset(v137, 0, sizeof(v137));
    v133 = v71;
    v134 = v68;
    switch(v70)
    {
      case 0uLL:
        OUTLINED_FUNCTION_13_13();
        sub_2682B80C8();
        OUTLINED_FUNCTION_19_15(v90);
        OUTLINED_FUNCTION_3_17();
        goto LABEL_26;
      case 1uLL:
        OUTLINED_FUNCTION_13_13();
        sub_2682B96A4();
        OUTLINED_FUNCTION_19_15(v91);
        OUTLINED_FUNCTION_3_17();
        goto LABEL_26;
      case 2uLL:
        v82 = OUTLINED_FUNCTION_13_13();
        v84 = sub_2682B9E98(v82, v83);
        OUTLINED_FUNCTION_19_15(v84);
        OUTLINED_FUNCTION_3_17();
        goto LABEL_26;
      case 3uLL:
      case 6uLL:
        OUTLINED_FUNCTION_13_13();
        sub_2682BA0C0();
        OUTLINED_FUNCTION_19_15(v72);
        v73 = v121;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_26();
        v74 = v117;
        sub_2681D8C24(v73, v117, v75);
        v76 = v70;
        v77 = a1;
        v78 = v14;
        v79 = v116;
        OUTLINED_FUNCTION_18_15();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
        v115 = a4;
        v80 = v114;
        sub_2683CB838();
        LOBYTE(v136) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
        sub_2683CB838();
        *v80 = v132;
        v81 = *(v79 + 20);
        v14 = v78;
        a1 = v77;
        v70 = v76;
        sub_2681D8C24(v74, v80 + v81, v66);
        OUTLINED_FUNCTION_17_11();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_14_14();
        sub_2683CB868();
        LOBYTE(v136) = v123;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_14_14();
        sub_2683CB868();
        OUTLINED_FUNCTION_0_30();
        sub_2681D8C84();
        sub_2681D8C84();
        Snippet.ReminderSearchResult.promotingFirstHeadingIfSingleSectionWithHeading()();
        OUTLINED_FUNCTION_7_14();
        a4 = v115;
        break;
      case 4uLL:
        v92 = OUTLINED_FUNCTION_13_13();
        v94 = sub_2682B9EA0(v92, v93);
        OUTLINED_FUNCTION_19_15(v94);
        OUTLINED_FUNCTION_3_17();
        goto LABEL_26;
      case 5uLL:
        v95 = OUTLINED_FUNCTION_13_13();
        v97 = sub_2682BA560(v95, v96);
        OUTLINED_FUNCTION_19_15(v97);
        OUTLINED_FUNCTION_3_17();
LABEL_26:
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_26();
        v98 = v117;
        sub_2681D8C24(v67, v117, v99);
        OUTLINED_FUNCTION_18_15();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
        sub_2683CB838();
        LOBYTE(v136) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
        sub_2683CB838();
        OUTLINED_FUNCTION_21_10();
        sub_2681D8C24(v98, v100, v66);
        OUTLINED_FUNCTION_17_11();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_14_14();
        sub_2683CB868();
        LOBYTE(v136) = v123;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_14_14();
        sub_2683CB868();
        OUTLINED_FUNCTION_0_30();
        sub_2681D8C84();
        break;
      default:

        OUTLINED_FUNCTION_13_13();
        sub_2682BA0C0();
        OUTLINED_FUNCTION_19_15(v85);
        v86 = v121;
        *v121 = v68;
        *(v86 + 8) = v70;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_26();
        v87 = v117;
        sub_2681D8C24(v86, v117, v88);
        v131 = *(v116 + 24);
        OUTLINED_FUNCTION_18_15();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
        sub_2683CB838();
        LOBYTE(v136) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
        sub_2683CB838();
        OUTLINED_FUNCTION_21_10();
        sub_2681D8C24(v87, v89, v66);
        OUTLINED_FUNCTION_17_11();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_14_14();
        sub_2683CB868();
        LOBYTE(v136) = v123;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_14_14();
        sub_2683CB868();
        OUTLINED_FUNCTION_0_30();
        sub_2681D8C84();
        break;
    }

    sub_2681D8C84();
    sub_26812D9E0(v137, &qword_28024ED48, &qword_2683E3D20);
    v101 = sub_2683CC818();
    if (sub_2682DEB58(v101))
    {
      v102 = sub_2683ABE58();

      v103 = v102 != 0;
    }

    else
    {
      v103 = 0;
    }

    if (v70 > 6)
    {
      *v14 = v134;
      v14[1] = v70;
    }

    else
    {
      if (v70 != 2)
      {
        sub_2681D8CD8(v134, v70);
LABEL_33:
        v104 = 1;
LABEL_34:
        v105 = v119;
        v106 = v118;
        v107 = v124;
        __swift_storeEnumTagSinglePayload(v14, v104, 1, v124);
        v108 = *v122;
        (*(v106 + 16))(v105, a1, v125);
        v109 = type metadata accessor for Snippet.SearchResult3p(0);
        v110 = v109[8];

        sub_268363B3C(v105, (a4 + v110));
        OUTLINED_FUNCTION_7_14();
        sub_2681D8C84();
        __swift_storeEnumTagSinglePayload(a4, 1, 1, v107);
        v111 = v109[7];
        *(a4 + v111) = 2;
        result = sub_2681D5F4C(v14, a4);
        *(a4 + v109[5]) = v135;
        *(a4 + v109[6]) = v108;
        *(a4 + v111) = v123;
        return result;
      }

      if (v103)
      {
        goto LABEL_33;
      }
    }

    swift_storeEnumTagMultiPayload();
    v104 = 0;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

void sub_2681D85CC(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.Reminder(0);
  v3 = *(v2 - 8);
  v56 = v2;
  v57 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v48 = a1;
  v8 = sub_2683CC818();
  v9 = sub_2681D8B48(v8);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v63 = MEMORY[0x277D84F90];
  v11 = sub_2683ABE58();
  v12 = 0;
  v52 = v10 & 0xC000000000000001;
  v53 = v11;
  v49 = v10;
  v50 = v10 + 32;
  v51 = v10 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v12 == v53)
    {

      v33 = v63;
      v34 = sub_2683CC818();
      sub_268185D44();
      v36 = v35;

      v37 = sub_268229348();
      if (v37)
      {
        v38 = v37;
        __src[0] = MEMORY[0x277D84F90];
        sub_268390728(0, v37 & ~(v37 >> 63), 0);
        if (v38 < 0)
        {
          goto LABEL_41;
        }

        v39 = 0;
        v40 = __src[0];
        v41 = v46;
        do
        {
          if ((v36 & 0xC000000000000001) != 0)
          {
            v42 = MEMORY[0x26D616C90](v39, v36);
          }

          else
          {
            v42 = *(v36 + 8 * v39 + 32);
          }

          sub_26834A288(v42, v41);
          __src[0] = v40;
          v44 = *(v40 + 16);
          v43 = *(v40 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_268390728(v43 > 1, v44 + 1, 1);
            v41 = v46;
            v40 = __src[0];
          }

          ++v39;
          *(v40 + 16) = v44 + 1;
          sub_2681D8CEC(v41, v40 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v44, type metadata accessor for Snippet.Reminder);
        }

        while (v38 != v39);
      }

      else
      {

        v40 = MEMORY[0x277D84F90];
      }

      __src[0] = v33;
      sub_2682C061C(v40);
      return;
    }

    if (v52)
    {
      v13 = MEMORY[0x26D616C90](v12, v49);
    }

    else
    {
      if (v12 >= *(v51 + 16))
      {
        goto LABEL_39;
      }

      v13 = *(v50 + 8 * v12);
    }

    if (__OFADD__(v12++, 1))
    {
      break;
    }

    v15 = v13;
    v16 = sub_26837D6CC(v15);
    v18 = v17;
    v19 = [v15 title];
    v20 = [v19 spokenPhrase];

    v21 = sub_2683CFA78();
    v23 = v22;

    sub_268151B3C(0, 0, 255);
    __src[0] = v16;
    __src[1] = v18;
    __src[2] = v21;
    __src[3] = v23;
    memset(&__src[4], 0, 40);
    LOBYTE(__src[9]) = 3;
    __src[10] = 0;
    __src[11] = 0;
    LOBYTE(__src[12]) = -1;
    v24 = [v15 tasks];
    sub_268129504(0, &qword_280253310, 0x277CD4220);
    v25 = sub_2683CFCA8();

    if (v25 >> 62)
    {
      v26 = sub_2683D00A8();
      if (!v26)
      {
LABEL_24:

        sub_26814F740(__src);

        v27 = MEMORY[0x277D84F90];
        goto LABEL_25;
      }
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_24;
      }
    }

    v61 = MEMORY[0x277D84F90];
    sub_268390728(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      goto LABEL_40;
    }

    v54 = v15;
    v55 = v12;
    v27 = v61;
    memcpy(v60, __src, sizeof(v60));
    v28 = 0;
    if ((v25 & 0xC000000000000001) != 0)
    {
LABEL_14:
      v29 = MEMORY[0x26D616C90](v28, v25);
      goto LABEL_16;
    }

    while (1)
    {
      v29 = *(v25 + 8 * v28 + 32);
LABEL_16:
      sub_26834A288(v29, v7);
      v30 = *(v56 + 32);
      memcpy(v59, &v7[v30], 0x61uLL);
      sub_26814FB60(__src, &v58);
      sub_26812D9E0(v59, &qword_28024D5C0, &unk_2683D2C80);
      memcpy(&v7[v30], v60, 0x61uLL);
      v61 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_268390728(v31 > 1, v32 + 1, 1);
        v27 = v61;
      }

      *(v27 + 16) = v32 + 1;
      sub_2681D8CEC(v7, v27 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v32, type metadata accessor for Snippet.Reminder);
      if (v26 - 1 == v28)
      {
        break;
      }

      ++v28;
      if ((v25 & 0xC000000000000001) != 0)
      {
        goto LABEL_14;
      }
    }

    sub_26814F740(__src);

    v12 = v55;
LABEL_25:
    sub_2682C061C(v27);
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_2681D8B48(void *a1)
{
  v2 = [a1 taskLists];

  if (!v2)
  {
    return 0;
  }

  sub_268129504(0, &qword_280253320, 0x277CD4228);
  v3 = sub_2683CFCA8();

  return v3;
}

unint64_t sub_2681D8BC0()
{
  result = qword_28024F9C0;
  if (!qword_28024F9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280253390, &qword_2683E2550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F9C0);
  }

  return result;
}

uint64_t sub_2681D8C24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2681D8C84()
{
  v1 = OUTLINED_FUNCTION_24_4();
  v2(v1);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2681D8CD8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

uint64_t sub_2681D8CEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_19_15(uint64_t a1)
{
  *(v1 - 176) = a1;
}

uint64_t sub_2681D8E78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2681D8E9C);
}

uint64_t sub_2681D8E9C()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2681D8F34;

  return sub_26837E8B8();
}

uint64_t sub_2681D8F34(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *v4;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;

  if (v3)
  {

    v11 = sub_2681D9128;
  }

  else
  {
    *(v8 + 64) = a3;
    *(v8 + 48) = a2;
    *(v8 + 56) = a1;
    v11 = sub_2681D906C;
  }

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2681D906C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v5[3] = &type metadata for AddTriggerExecutionParameters;
  v5[4] = &off_287908A68;
  v6 = swift_allocObject();
  *v5 = v6;
  sub_2681D91D4(v4, v2, v1, v3 & 1, v6 + 16);
  OUTLINED_FUNCTION_40();

  return v7();
}

uint64_t sub_2681D9128()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v2[3] = &type metadata for AddTriggerExecutionParameters;
  v2[4] = &off_287908A68;
  v3 = swift_allocObject();
  *v2 = v3;
  sub_2681D91D4(v1, 0, 0, 1, v3 + 16);
  OUTLINED_FUNCTION_40();

  return v4();
}

void sub_2681D91D4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = a1;
  v10 = [a1 targetTaskList];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 title];
    v13 = sub_2681BAC30();

    v8 = v12;
  }

  else
  {
    v13 = 0;
  }

  *a5 = v13 & 1;
  v14 = a4 & 1;
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2;
  }

  *(a5 + 8) = v15;
  if (a4)
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  *(a5 + 16) = v14;
  *(a5 + 24) = v16;
  *(a5 + 32) = v14;
}

uint64_t sub_2681D9298(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1_3(v4);
  *v5 = v6;
  v5[1] = sub_2681D933C;

  return sub_2681D8E78(a1, a2);
}

uint64_t sub_2681D933C()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2681D9420@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  if (sub_26818598C() == 1)
  {
    v9 = sub_2682E5FA4(v1);
    if (v9)
    {
      v10 = v9;
      if (sub_2683ABE58())
      {
        sub_2683ABE60();
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x26D616C90](0, v10);
        }

        else
        {
          v11 = *(v10 + 32);
        }

        v12 = v11;

        if ([v12 status] == 1 && objc_msgSend(v12, sel_taskType) == 2)
        {
          v13 = [v12 temporalEventTrigger];
          if (v13 && (v14 = v13, v15 = [v13 dateComponentsRange], v14, v16 = objc_msgSend(v15, sel_recurrenceRule), v15, v16))
          {
          }

          else
          {
            v21 = [v12 temporalEventTrigger];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 dateComponentsRange];

              v24 = [v23 startDateComponents];
              if (v24)
              {
                sub_2683CAFE8();

                v25 = sub_2683CB0D8();
                v26 = 0;
              }

              else
              {

                v25 = sub_2683CB0D8();
                v26 = 1;
              }

              __swift_storeEnumTagSinglePayload(v6, v26, 1, v25);
              sub_268176BC8(v6, v8);
              sub_2683CB0D8();
              if (__swift_getEnumTagSinglePayload(v8, 1, v25) != 1)
              {
                (*(*(v25 - 8) + 32))(a1, v8, v25);
                v18 = a1;
                v19 = 0;
                v17 = v25;
                return __swift_storeEnumTagSinglePayload(v18, v19, 1, v17);
              }
            }

            else
            {

              v27 = sub_2683CB0D8();
              __swift_storeEnumTagSinglePayload(v8, 1, 1, v27);
            }

            sub_2681D9984(v8);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  v17 = sub_2683CB0D8();
  v18 = a1;
  v19 = 1;
  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v17);
}

uint64_t sub_2681D973C()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681D97E0);
}

uint64_t sub_2681D97E0()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_2681D9420(v1);
  sub_268176BC8(v1, v2);
  v3 = sub_2683CB0D8();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    v4 = v0[2];
    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  else
  {
    v5 = v0[4];
    v6 = v0[2];
    v6[3] = type metadata accessor for UpdateReminderExecutionParameters(0);
    v6[4] = &off_287908A78;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
    (*(*(v3 - 8) + 32))(boxed_opaque_existential_0, v5, v3);
  }

  OUTLINED_FUNCTION_40();

  return v8();
}

uint64_t sub_2681D98F4()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681D99FC;

  return sub_2681D973C();
}

uint64_t sub_2681D9984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2681D9A00()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2681DA93C(0xD00000000000001BLL, 0x80000002683FE900);
  if (!v1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v2 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v2, qword_28027C958);
    v3 = sub_2683CF7C8();
    v4 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_2681610A0(0xD00000000000001BLL, 0x80000002683FE900, &v8);
      _os_log_impl(&dword_2680EB000, v3, v4, "AnnouncementEventStore init | Unable to get an instance of UserDefaults with suite %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }
  }

  return v1;
}

void sub_2681D9B5C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a1;
  v7 = sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2681DA4F0(v6, a3);
  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
LABEL_12:
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    goto LABEL_8;
  }

  v43 = v12;
  v45 = v7;
  v15 = sub_2681D9F80(v6);
  v3 = v16;
  v46 = v15;
  v47 = v16;

  v17 = OUTLINED_FUNCTION_1_27();
  MEMORY[0x26D616690](v17);

  v18 = sub_2683CFA68();

  v44 = v14;
  [a3 setInteger:v14 forKey:v18];

  v19 = sub_2683CB4A8();
  v42 = v15;
  v46 = v15;
  v47 = v3;

  v20 = OUTLINED_FUNCTION_2_19();
  MEMORY[0x26D616690](v20);

  v21 = sub_2683CFA68();

  [a3 setObject:v19 forKey:v21];

  if (v6 < 0)
  {
    if ((v6 & 1) == 0)
    {
      v24 = sub_2681DA4F0(129, a3);
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        return;
      }

      v26 = sub_2683CFA68();
      [a3 setInteger:v25 forKey:v26];

      v27 = sub_2683CB4A8();
      v28 = sub_2683CFA68();
      OUTLINED_FUNCTION_4_19(v28);
    }
  }

  else
  {
    v22 = sub_2683CB4A8();
    OUTLINED_FUNCTION_7_15();
    v23 = sub_2683CFA68();
    OUTLINED_FUNCTION_4_19(v23);

    sub_2681DA62C(129, a3);
  }

  if (qword_28024C8E0 != -1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v29 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v29, qword_28027C958);
  v30 = v43;
  v31 = v45;
  (*(v9 + 16))(v43, a2, v45);
  v32 = sub_2683CF7C8();
  v33 = sub_2683CFE98();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v44;
  if (v34)
  {
    v36 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v36 = 136315650;
    v37 = sub_2681610A0(v42, v3, &v46);

    *(v36 + 4) = v37;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v35;
    *(v36 + 22) = 2080;
    sub_2681DA9A0();
    v38 = sub_2683D0568();
    v40 = v39;
    (*(v9 + 8))(v30, v31);
    v41 = sub_2681610A0(v38, v40, &v46);

    *(v36 + 24) = v41;
    _os_log_impl(&dword_2680EB000, v32, v33, "AnnouncementEventStore storeUsage | Storing Event '%s' in the store with usageCount '%ld', lastUsageDate: %s", v36, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    (*(v9 + 8))(v30, v31);
  }
}

unint64_t sub_2681D9F80(char a1)
{
  v1 = 0x746E69486B636F4DLL;
  if ((a1 & 1) == 0)
  {
    v1 = 0xD00000000000001ELL;
  }

  v2 = 0xD00000000000001CLL;
  if (a1)
  {
    v2 = 0xD00000000000002ALL;
  }

  if (a1 < 0)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2681DA004@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = sub_2683CFA68();
  v17 = [a1 objectForKey_];

  if (v17)
  {
    sub_2683D0038();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43[0] = v41;
  v43[1] = v42;
  if (*(&v42 + 1))
  {
    v18 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v6, v18 ^ 1u, 1, v7);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      v40 = *(v9 + 32);
      v40(v15, v6, v7);
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v19 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v19, qword_28027C958);
      (*(v9 + 16))(v13, v15, v7);
      v20 = sub_2683CF7C8();
      v21 = sub_2683CFE98();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v39 = a2;
        v23 = v22;
        v38 = swift_slowAlloc();
        *&v43[0] = v38;
        *v23 = 136315394;
        OUTLINED_FUNCTION_7_15();
        *(v23 + 4) = sub_2681610A0(v24, v25, v26);
        *(v23 + 12) = 2080;
        sub_2681DA9A0();
        v27 = sub_2683D0568();
        v29 = v28;
        (*(v9 + 8))(v13, v7);
        v30 = sub_2681610A0(v27, v29, v43);

        *(v23 + 14) = v30;
        _os_log_impl(&dword_2680EB000, v20, v21, "AnnouncementEventStore getDateOfLastHint | Read lastUsageTimestamp for %s: %s", v23, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_38();
        a2 = v39;
        OUTLINED_FUNCTION_38();
      }

      else
      {

        (*(v9 + 8))(v13, v7);
      }

      v40(a2, v15, v7);
      v35 = 0;
      return __swift_storeEnumTagSinglePayload(a2, v35, 1, v7);
    }
  }

  else
  {
    sub_26812C310(v43, &qword_28024E370, &unk_2683D9AA0);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  }

  sub_26812C310(v6, &qword_28024DB08, qword_2683D5760);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v31 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v31, qword_28027C958);
  v32 = sub_2683CF7C8();
  v33 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v33))
  {
    swift_slowAlloc();
    v34 = OUTLINED_FUNCTION_27_3();
    *&v43[0] = v34;
    *v15 = 136315138;
    *(v15 + 4) = sub_2681610A0(0x614C664F65746144, 0xEE00746E69487473, v43);
    _os_log_impl(&dword_2680EB000, v32, v33, "AnnouncementEventStore getDateOfLastHint | No lastUsageTimestamp for event %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v35 = 1;
  return __swift_storeEnumTagSinglePayload(a2, v35, 1, v7);
}

id sub_2681DA4F0(char a1, void *a2)
{
  v4 = sub_2681D9F80(a1);
  OUTLINED_FUNCTION_9_17(v4, v5);
  v6 = OUTLINED_FUNCTION_1_27();
  MEMORY[0x26D616690](v6);

  sub_2683CFA68();
  OUTLINED_FUNCTION_12_11();
  v7 = [a2 integerForKey_];

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v8 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v8, qword_28027C958);
  v9 = sub_2683CF7C8();
  v10 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v10))
  {
    swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_10_7(4.8151e-34, v11, v12, v13, v14, v15, v16, v17, v18, v11);

    OUTLINED_FUNCTION_6_19();
    OUTLINED_FUNCTION_11_19(&dword_2680EB000, v19, v20, "AnnouncementEventStore getUsageCount | Read usageCount for event %s: %ld");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  return v7;
}

void sub_2681DA62C(char a1, void *a2)
{
  v4 = sub_2681D9F80(a1);
  v6 = v5;

  v7 = OUTLINED_FUNCTION_1_27();
  MEMORY[0x26D616690](v7);

  sub_2683CFA68();
  OUTLINED_FUNCTION_12_11();
  [a2 setInteger:0 forKey:v2];

  v15[0] = v4;
  v15[1] = v6;

  v8 = OUTLINED_FUNCTION_2_19();
  MEMORY[0x26D616690](v8);

  sub_2683CFA68();
  OUTLINED_FUNCTION_12_11();
  [a2 setURL:0 forKey:v2];

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v9 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v9, qword_28027C958);
  oslog = sub_2683CF7C8();
  v10 = sub_2683CFE98();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315138;
    v13 = sub_2681610A0(v4, v6, v15);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_2680EB000, oslog, v10, "AnnouncementEventStore resetUsage | Reset Event '%s' in the store setting date of occurence to nil and the usage count to 0", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }
}

BOOL sub_2681DA7FC(char a1, void *a2)
{
  v4 = sub_2681D9F80(a1);
  OUTLINED_FUNCTION_9_17(v4, v5);
  v6 = OUTLINED_FUNCTION_1_27();
  MEMORY[0x26D616690](v6);

  sub_2683CFA68();
  OUTLINED_FUNCTION_12_11();
  v7 = [a2 integerForKey_];

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v8 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v8, qword_28027C958);
  v9 = sub_2683CF7C8();
  v10 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v10))
  {
    swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_10_7(4.8151e-34, v11, v12, v13, v14, v15, v16, v17, v18, v11);

    OUTLINED_FUNCTION_6_19();
    OUTLINED_FUNCTION_11_19(&dword_2680EB000, v19, v20, "AnnouncementEventStore getEventHasOccurred | Read usageCount for event %s: %ld");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  return v7 != 0;
}

id sub_2681DA93C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_2683CFA68();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_2681DA9A0()
{
  result = qword_28024ED50;
  if (!qword_28024ED50)
  {
    sub_2683CB528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED50);
  }

  return result;
}

uint64_t sub_2681DA9F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2681DAA38(uint64_t result, int a2, int a3)
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

id OUTLINED_FUNCTION_4_19(uint64_t a1)
{

  return [v3 (v1 + 2168)];
}

void OUTLINED_FUNCTION_6_19()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2048;
  *(v2 + 14) = v0;
}

uint64_t OUTLINED_FUNCTION_9_17(uint64_t a1, uint64_t a2)
{
}

unint64_t OUTLINED_FUNCTION_10_7(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_2681610A0(v11, v10, &a10);
}

void OUTLINED_FUNCTION_11_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_12_11()
{
}

uint64_t sub_2681DAB90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 120) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = sub_2683CEBD8();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B8, &qword_2683D2330);
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681DAC9C);
}

uint64_t sub_2681DAC9C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v5 = *(v3 + 16);
  *(v0 + 80) = v5;
  *(v0 + 88) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_2681DADAC;

  return sub_268131CEC();
}

uint64_t sub_2681DADAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  sub_2681DB91C(v4);
  if (v1)
  {
    v5 = sub_2681DB1A4;
  }

  else
  {
    v5 = sub_2681DAEE0;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2681DAEE0()
{
  v32 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = sub_2683CF7E8();
  __swift_project_value_buffer(v5, qword_28027C958);
  v1(v2, v4, v3);
  v6 = sub_2683CF7C8();
  v7 = sub_2683CFE58();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 80);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315138;
    v8(v10, v9, v11);
    v15 = sub_2683CFAD8();
    v17 = v16;
    (*(v12 + 8))(v9, v11);
    v18 = sub_2681610A0(v15, v17, &v31);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2680EB000, v6, v7, "[IntentHelpers] Looking up location: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
    v19 = *(v0 + 64);
    v20 = *(v0 + 40);
    v21 = *(v0 + 48);

    (*(v21 + 8))(v19, v20);
  }

  if (sub_2683ABE58())
  {
    v22 = *(v0 + 104) & 0xC000000000000001;
    sub_2683ABE60();
    if (v22)
    {
      v23 = MEMORY[0x26D616C90](0, *(v0 + 104));
    }

    else
    {
      v23 = *(*(v0 + 104) + 32);
    }

    v24 = *(v0 + 120);
    v25 = *(v0 + 32);

    if (v24)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    v27 = objc_allocWithZone(MEMORY[0x277CD4178]);
    v28 = sub_26836D8DC(v23, v26, MEMORY[0x277D84F90], 0);
  }

  else
  {

    v28 = 0;
  }

  v29 = *(v0 + 8);

  return v29(v28);
}

uint64_t sub_2681DB1A4()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_2681DB21C(void *a1, id a2)
{
  sub_2683CB0D8();
  OUTLINED_FUNCTION_2_20();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_28();
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  if (a1 && a2)
  {
    v12 = a2;
    v13 = a1;
    v14 = [v13 dateComponentsRange];
    v15 = [v14 startDateComponents];

    if (v15)
    {
      sub_2683CAFE8();

      (*(v7 + 32))(v11, v2, v3);
      v16 = sub_2683CB038();
      if ((v17 & 1) == 0)
      {
        v18 = v16;
        v19 = sub_2683CB048();
        if ((v20 & 1) == 0)
        {
          v21 = v19;
          v22 = sub_2683CAFF8();
          if ((v23 & 1) == 0)
          {
            memset(v26, 0, sizeof(v26));
            v27 = 256;
            a2 = sub_2681D2560(v18, v21, v22, 0, v26);

            (*(v7 + 8))(v11, v3);
            return a2;
          }
        }
      }

      (*(v7 + 8))(v11, v3);
    }
  }

  v24 = a2;
  return a2;
}

id sub_2681DB404(void *a1, id a2)
{
  sub_2683CB0D8();
  OUTLINED_FUNCTION_2_20();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_28();
  MEMORY[0x28223BE20](v9);
  v11 = &v27[-1] - v10;
  if (a1 && a2)
  {
    v12 = a2;
    v13 = a1;
    v14 = [v13 dateComponentsRange];
    v15 = [v14 startDateComponents];

    if (v15)
    {
      sub_2683CAFE8();

      (*(v7 + 32))(v11, v2, v3);
      v16 = sub_2683CB028();
      if ((v17 & 1) == 0)
      {
        v20 = v16;
        v21 = sub_2683CB068();
        v23 = v22;
        v24 = sub_2683CB078();
        v27[0] = v20;
        v27[1] = v21;
        v27[2] = v23 & 1;
        v27[3] = v24;
        v28 = v25 & 1;
        v29 = 0;
        a2 = sub_2681D2560(0, 0, 0, 1, v27);

        (*(v7 + 8))(v11, v3);
        return a2;
      }

      (*(v7 + 8))(v11, v3);
    }
  }

  v18 = a2;
  return a2;
}

id sub_2681DB5EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = a2;
  if (a5 & 1) != 0 && a3 != 2 && (a3)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v8 = sub_2683CF7E8();
    __swift_project_value_buffer(v8, qword_28027C958);
    v9 = sub_2683CF7C8();
    v10 = sub_2683CFE58();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2681610A0(0xD000000000000011, 0x80000002683FE920, &v21);
      _os_log_impl(&dword_2680EB000, v9, v10, "[IntentHelpers] Constructing list title with vocabulary identifier %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    if (v6)
    {
      v6 = sub_268129D44(a4, a1, v6);
      v14 = v13;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v20 = objc_allocWithZone(MEMORY[0x277CD4188]);
    return sub_2681DB858(0xD000000000000011, 0x80000002683FE920, v6, v14, 0, 0);
  }

  else if (a2)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v15 = sub_2683CF7E8();
    __swift_project_value_buffer(v15, qword_28027C958);
    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE58();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2680EB000, v16, v17, "[IntentHelpers] Constructing regular list title", v18, 2u);
      OUTLINED_FUNCTION_38();
    }

    sub_268133FA8();
    sub_268129D44(a4, a1, v6);
    return sub_26835E5F8();
  }

  else
  {
    return 0;
  }
}

id sub_2681DB858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_2683CFA68();

  v9 = sub_2683CFA68();

  if (a6)
  {
    v10 = sub_2683CFA68();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithVocabularyIdentifier:v8 spokenPhrase:v9 pronunciationHint:v10];

  return v11;
}

uint64_t sub_2681DB91C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B8, &qword_2683D2330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static Snippet.ReminderPunchoutLocation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_35;
      }

      if (v3)
      {
        if (v6)
        {
          if (v2 == v5 && v3 == v6)
          {
            v44 = 1;
            v113 = OUTLINED_FUNCTION_61_0();
            v115 = OUTLINED_FUNCTION_1_29(v113, v114, 1u);
            v117 = OUTLINED_FUNCTION_1_29(v115, v116, 1u);
            sub_2681DBDA8(v117, v118, 1u);
            v119 = OUTLINED_FUNCTION_61_0();
            sub_2681DBDA8(v119, v120, 1u);
          }

          else
          {
            v41 = OUTLINED_FUNCTION_61_0();
            v43 = OUTLINED_FUNCTION_11_20(v41, v42);
            v44 = 1;
            v45 = OUTLINED_FUNCTION_60();
            v47 = OUTLINED_FUNCTION_1_29(v45, v46, 1u);
            v49 = OUTLINED_FUNCTION_1_29(v47, v48, 1u);
            sub_2681DBDA8(v49, v50, 1u);
            v51 = OUTLINED_FUNCTION_60();
            sub_2681DBDA8(v51, v52, 1u);
            if ((v43 & 1) == 0)
            {
              return 0;
            }
          }

          return v44;
        }

        v101 = OUTLINED_FUNCTION_10_8();
        sub_2681DBD90(v101, v102, 1u);
        v103 = OUTLINED_FUNCTION_10_8();
        v105 = OUTLINED_FUNCTION_1_29(v103, v104, 1u);
        v107 = OUTLINED_FUNCTION_1_29(v105, v106, 1u);
        sub_2681DBDA8(v107, v108, 1u);
      }

      else
      {

        v44 = 1;
        v77 = OUTLINED_FUNCTION_60();
        v79 = OUTLINED_FUNCTION_9_18(v77, v78, 1u);
        v81 = OUTLINED_FUNCTION_9_18(v79, v80, 1u);
        sub_2681DBDA8(v81, v82, 1u);
        v83 = OUTLINED_FUNCTION_60();
        sub_2681DBDA8(v83, v84, 1u);
        if (!v6)
        {
          return v44;
        }
      }

      v59 = OUTLINED_FUNCTION_60();
      v61 = 1;
      goto LABEL_36;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_35;
      }

      if (v3)
      {
        if (v6)
        {
          v20 = *a1;
          if (v2 != v5 || v3 != v6)
          {
            v10 = OUTLINED_FUNCTION_11_20(v20, v3);
            v22 = OUTLINED_FUNCTION_60();
            v24 = OUTLINED_FUNCTION_1_29(v22, v23, 2u);
            v26 = OUTLINED_FUNCTION_1_29(v24, v25, 2u);
            sub_2681DBDA8(v26, v27, 2u);
            v17 = OUTLINED_FUNCTION_60();
            v19 = 2;
            goto LABEL_18;
          }

          v109 = OUTLINED_FUNCTION_1_29(v20, v3, 2u);
          v111 = OUTLINED_FUNCTION_1_29(v109, v110, 2u);
          sub_2681DBDA8(v111, v112, 2u);
          v66 = OUTLINED_FUNCTION_61_0();
          v68 = 2;
          goto LABEL_55;
        }

        v93 = OUTLINED_FUNCTION_10_8();
        sub_2681DBD90(v93, v94, 2u);
        v95 = OUTLINED_FUNCTION_10_8();
        v97 = OUTLINED_FUNCTION_1_29(v95, v96, 2u);
        v99 = OUTLINED_FUNCTION_1_29(v97, v98, 2u);
        sub_2681DBDA8(v99, v100, 2u);
      }

      else
      {

        v69 = OUTLINED_FUNCTION_60();
        v71 = OUTLINED_FUNCTION_9_18(v69, v70, 2u);
        v73 = OUTLINED_FUNCTION_9_18(v71, v72, 2u);
        sub_2681DBDA8(v73, v74, 2u);
        v75 = OUTLINED_FUNCTION_60();
        sub_2681DBDA8(v75, v76, 2u);
        if (!v6)
        {
          return 1;
        }
      }

      v59 = OUTLINED_FUNCTION_60();
      v61 = 2;
      goto LABEL_36;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_35;
      }

      v28 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v30 = OUTLINED_FUNCTION_11_20(v28, v3);
        v31 = OUTLINED_FUNCTION_60();
        v33 = OUTLINED_FUNCTION_1_29(v31, v32, 3u);
        v35 = OUTLINED_FUNCTION_1_29(v33, v34, 3u);
        sub_2681DBDA8(v35, v36, 3u);
        v37 = OUTLINED_FUNCTION_60();
        sub_2681DBDA8(v37, v38, 3u);
        return v30 & 1;
      }

      v62 = OUTLINED_FUNCTION_1_29(v28, v3, 3u);
      v64 = OUTLINED_FUNCTION_1_29(v62, v63, 3u);
      sub_2681DBDA8(v64, v65, 3u);
      v66 = OUTLINED_FUNCTION_61_0();
      v68 = 3;
      goto LABEL_55;
    default:
      if (*(a2 + 16))
      {
LABEL_35:
        v53 = OUTLINED_FUNCTION_60();
        v55 = OUTLINED_FUNCTION_1_29(v53, v54, v7);
        v57 = OUTLINED_FUNCTION_1_29(v55, v56, v4);
        sub_2681DBDA8(v57, v58, v4);
        v59 = OUTLINED_FUNCTION_60();
        v61 = v7;
LABEL_36:
        sub_2681DBDA8(v59, v60, v61);
        return 0;
      }

      if (!v3)
      {

        v85 = OUTLINED_FUNCTION_60();
        v87 = OUTLINED_FUNCTION_9_18(v85, v86, 0);
        v89 = OUTLINED_FUNCTION_9_18(v87, v88, 0);
        sub_2681DBDA8(v89, v90, 0);
        v91 = OUTLINED_FUNCTION_60();
        sub_2681DBDA8(v91, v92, 0);
        if (!v6)
        {
          return 1;
        }

        goto LABEL_53;
      }

      if (!v6)
      {
        v121 = OUTLINED_FUNCTION_10_8();
        sub_2681DBD90(v121, v122, 0);
        v123 = OUTLINED_FUNCTION_10_8();
        v125 = OUTLINED_FUNCTION_1_29(v123, v124, 0);
        v127 = OUTLINED_FUNCTION_1_29(v125, v126, 0);
        sub_2681DBDA8(v127, v128, 0);
LABEL_53:
        v59 = OUTLINED_FUNCTION_60();
        v61 = 0;
        goto LABEL_36;
      }

      v8 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v10 = OUTLINED_FUNCTION_11_20(v8, v3);
        v11 = OUTLINED_FUNCTION_60();
        v13 = OUTLINED_FUNCTION_1_29(v11, v12, 0);
        v15 = OUTLINED_FUNCTION_1_29(v13, v14, 0);
        sub_2681DBDA8(v15, v16, 0);
        v17 = OUTLINED_FUNCTION_60();
        v19 = 0;
LABEL_18:
        sub_2681DBDA8(v17, v18, v19);
        return (v10 & 1) != 0;
      }

      v129 = OUTLINED_FUNCTION_1_29(v8, v3, 0);
      v131 = OUTLINED_FUNCTION_1_29(v129, v130, 0);
      sub_2681DBDA8(v131, v132, 0);
      v66 = OUTLINED_FUNCTION_61_0();
      v68 = 0;
LABEL_55:
      sub_2681DBDA8(v66, v67, v68);
      return 1;
  }
}

uint64_t sub_2681DBD90(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_2681DBDA8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_2681DBDC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7265646E696D6572 && a2 == 0xE800000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265646E696D6572 && a2 == 0xEE006C6961746544;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7265646E696D6572 && a2 == 0xEC0000007473694CLL;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x686372616573 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2683D0598();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2681DBF14(char a1)
{
  result = 0x7265646E696D6572;
  switch(a1)
  {
    case 3:
      result = 0x686372616573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2681DBF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681DBDC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2681DBFB8(uint64_t a1)
{
  v2 = sub_2681DC62C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681DBFF4(uint64_t a1)
{
  v2 = sub_2681DC62C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681DC030(uint64_t a1)
{
  v2 = sub_2681DC77C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681DC06C(uint64_t a1)
{
  v2 = sub_2681DC77C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681DC0A8(uint64_t a1)
{
  v2 = sub_2681DC728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681DC0E4(uint64_t a1)
{
  v2 = sub_2681DC728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681DC120(uint64_t a1)
{
  v2 = sub_2681DC6D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681DC15C(uint64_t a1)
{
  v2 = sub_2681DC6D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681DC198(uint64_t a1)
{
  v2 = sub_2681DC680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681DC1D4(uint64_t a1)
{
  v2 = sub_2681DC680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.ReminderPunchoutLocation.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED58, &qword_2683DA2D0);
  OUTLINED_FUNCTION_0_3();
  v38 = v4;
  v39 = v3;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v37 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED60, &qword_2683DA2D8);
  OUTLINED_FUNCTION_0_3();
  v35 = v8;
  v36 = v7;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v34 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED68, &qword_2683DA2E0);
  OUTLINED_FUNCTION_0_3();
  v32 = v12;
  v33 = v11;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED70, &qword_2683DA2E8);
  OUTLINED_FUNCTION_0_3();
  v31 = v17;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED78, &qword_2683DA2F0);
  OUTLINED_FUNCTION_0_3();
  v42 = v22;
  v43 = v21;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - v24;
  v26 = v1[1];
  v40 = *v1;
  v41 = v26;
  v27 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681DC62C();
  sub_2683D0718();
  switch(v27)
  {
    case 1:
      v45 = 1;
      sub_2681DC728();
      OUTLINED_FUNCTION_6_20(&_s14descr2878F8F29V24ReminderPunchoutLocationO24ReminderDetailCodingKeysON);
      v28 = v33;
      OUTLINED_FUNCTION_12_12();
      sub_2683D04D8();
      v29 = v32;
      goto LABEL_6;
    case 2:
      v46 = 2;
      sub_2681DC6D4();
      v15 = v34;
      OUTLINED_FUNCTION_6_20(&_s14descr2878F8F29V24ReminderPunchoutLocationO22ReminderListCodingKeysON);
      v28 = v36;
      OUTLINED_FUNCTION_12_12();
      sub_2683D04D8();
      v29 = v35;
      goto LABEL_6;
    case 3:
      v47 = 3;
      sub_2681DC680();
      v15 = v37;
      OUTLINED_FUNCTION_6_20(&_s14descr2878F8F29V24ReminderPunchoutLocationO16SearchCodingKeysON);
      v28 = v39;
      OUTLINED_FUNCTION_12_12();
      sub_2683D0518();
      v29 = v38;
LABEL_6:
      (*(v29 + 8))(v15, v28);
      break;
    default:
      v44 = 0;
      sub_2681DC77C();
      OUTLINED_FUNCTION_6_20(&_s14descr2878F8F29V24ReminderPunchoutLocationO18ReminderCodingKeysON);
      sub_2683D04D8();
      (*(v31 + 8))(v20, v16);
      break;
  }

  return (*(v42 + 8))(v25, v27);
}

unint64_t sub_2681DC62C()
{
  result = qword_28024ED80;
  if (!qword_28024ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED80);
  }

  return result;
}

unint64_t sub_2681DC680()
{
  result = qword_28024ED88;
  if (!qword_28024ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED88);
  }

  return result;
}

unint64_t sub_2681DC6D4()
{
  result = qword_28024ED90;
  if (!qword_28024ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED90);
  }

  return result;
}

unint64_t sub_2681DC728()
{
  result = qword_28024ED98;
  if (!qword_28024ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED98);
  }

  return result;
}

unint64_t sub_2681DC77C()
{
  result = qword_28024EDA0;
  if (!qword_28024EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EDA0);
  }

  return result;
}

uint64_t Snippet.ReminderPunchoutLocation.hash(into:)()
{
  v1 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 1:
      v2 = 1;
      goto LABEL_6;
    case 2:
      v2 = 2;
      goto LABEL_6;
    case 3:
      MEMORY[0x26D617190](3);
      goto LABEL_8;
    default:
      v2 = 0;
LABEL_6:
      MEMORY[0x26D617190](v2);
      if (!v1)
      {
        return sub_2683D06B8();
      }

      sub_2683D06B8();
LABEL_8:
      OUTLINED_FUNCTION_61_0();

      return sub_2683CFB48();
  }
}

uint64_t Snippet.ReminderPunchoutLocation.hashValue.getter()
{
  sub_2683D0698();
  Snippet.ReminderPunchoutLocation.hash(into:)();
  return sub_2683D06D8();
}

uint64_t Snippet.ReminderPunchoutLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EDA8, &qword_2683DA2F8);
  OUTLINED_FUNCTION_0_3();
  v73 = v3;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v76 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EDB0, &qword_2683DA300);
  OUTLINED_FUNCTION_0_3();
  v71 = v6;
  v72 = v7;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v75 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EDB8, &qword_2683DA308);
  OUTLINED_FUNCTION_0_3();
  v69 = v11;
  v70 = v10;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EDC0, &qword_2683DA310);
  OUTLINED_FUNCTION_0_3();
  v68 = v16;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EDC8, &unk_2683DA318);
  OUTLINED_FUNCTION_0_3();
  v22 = v21;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v60 - v24;
  v26 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_2681DC62C();
  v27 = v79;
  sub_2683D06F8();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_0(v78);
  }

  v65 = v15;
  v66 = v19;
  v67 = v14;
  v29 = v75;
  v28 = v76;
  v30 = v77;
  v79 = v22;
  v31 = v25;
  sub_2683D04B8();
  result = sub_268151B7C();
  if (v34 == v35 >> 1)
  {
LABEL_8:
    v43 = sub_2683D01D8();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0);
    *v45 = &type metadata for Snippet.ReminderPunchoutLocation;
    sub_2683D0428();
    sub_2683D01C8();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v79 + 8))(v31, v20);
    return __swift_destroy_boxed_opaque_existential_0(v78);
  }

  if (v34 >= (v35 >> 1))
  {
    __break(1u);
    return result;
  }

  v63 = *(v33 + v34);
  v36 = sub_268151B68();
  v38 = v37;
  v40 = v39;
  swift_unknownObjectRelease();
  v64 = v36;
  if (v38 != v40 >> 1)
  {
    v31 = v25;
    goto LABEL_8;
  }

  v41 = v74;
  switch(v63)
  {
    case 1:
      v81 = 1;
      sub_2681DC728();
      OUTLINED_FUNCTION_8_17(&_s14descr2878F8F29V24ReminderPunchoutLocationO24ReminderDetailCodingKeysON);
      v61 = sub_2683D0438();
      v62 = 0;
      OUTLINED_FUNCTION_16_18();
      v56 = OUTLINED_FUNCTION_15_14();
      v57(v56);
      v58 = OUTLINED_FUNCTION_5_17();
      v59(v58);
      v42 = v78;
      break;
    case 2:
      v82 = 2;
      sub_2681DC6D4();
      v46 = v29;
      OUTLINED_FUNCTION_8_17(&_s14descr2878F8F29V24ReminderPunchoutLocationO22ReminderListCodingKeysON);
      v42 = v78;
      v47 = v71;
      v61 = sub_2683D0438();
      v62 = 0;
      OUTLINED_FUNCTION_16_18();
      (*(v72 + 8))(v46, v47);
      v48 = OUTLINED_FUNCTION_5_17();
      v49(v48);
      v41 = v74;
      break;
    case 3:
      v83 = 3;
      sub_2681DC680();
      OUTLINED_FUNCTION_8_17(&_s14descr2878F8F29V24ReminderPunchoutLocationO16SearchCodingKeysON);
      v42 = v78;
      v61 = sub_2683D0478();
      v62 = 0;
      OUTLINED_FUNCTION_16_18();
      (*(v73 + 8))(v28, v30);
      v50 = OUTLINED_FUNCTION_5_17();
      v51(v50);
      break;
    default:
      v80 = 0;
      sub_2681DC77C();
      OUTLINED_FUNCTION_8_17(&_s14descr2878F8F29V24ReminderPunchoutLocationO18ReminderCodingKeysON);
      v42 = v78;
      v61 = sub_2683D0438();
      v62 = 0;
      OUTLINED_FUNCTION_16_18();
      v52 = OUTLINED_FUNCTION_13_14();
      v53(v52);
      v54 = OUTLINED_FUNCTION_2_21();
      v55(v54);
      break;
  }

  *v41 = v61;
  *(v41 + 8) = v30;
  *(v41 + 16) = v63;
  return __swift_destroy_boxed_opaque_existential_0(v42);
}

uint64_t sub_2681DD0AC(uint64_t a1)
{
  sub_2683D0698();
  Snippet.ReminderPunchoutLocation.hash(into:)();
  return sub_2683D06D8();
}

unint64_t sub_2681DD104()
{
  result = qword_28024EDD0;
  if (!qword_28024EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EDD0);
  }

  return result;
}

uint64_t sub_2681DD164(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2681DD1A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

_BYTE *_s14descr2878F8F29V24ReminderPunchoutLocationO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2681DD30C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2681DD3BC()
{
  result = qword_28024EDD8;
  if (!qword_28024EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EDD8);
  }

  return result;
}

unint64_t sub_2681DD414()
{
  result = qword_28024EDE0;
  if (!qword_28024EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EDE0);
  }

  return result;
}

unint64_t sub_2681DD46C()
{
  result = qword_28024EDE8;
  if (!qword_28024EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EDE8);
  }

  return result;
}

unint64_t sub_2681DD4C4()
{
  result = qword_28024EDF0;
  if (!qword_28024EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EDF0);
  }

  return result;
}

unint64_t sub_2681DD51C()
{
  result = qword_28024EDF8;
  if (!qword_28024EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EDF8);
  }

  return result;
}

unint64_t sub_2681DD574()
{
  result = qword_28024EE00;
  if (!qword_28024EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE00);
  }

  return result;
}

unint64_t sub_2681DD5CC()
{
  result = qword_28024EE08;
  if (!qword_28024EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE08);
  }

  return result;
}

unint64_t sub_2681DD624()
{
  result = qword_28024EE10;
  if (!qword_28024EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE10);
  }

  return result;
}

unint64_t sub_2681DD67C()
{
  result = qword_28024EE18;
  if (!qword_28024EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE18);
  }

  return result;
}

unint64_t sub_2681DD6D4()
{
  result = qword_28024EE20;
  if (!qword_28024EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE20);
  }

  return result;
}

unint64_t sub_2681DD72C()
{
  result = qword_28024EE28;
  if (!qword_28024EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE28);
  }

  return result;
}

unint64_t sub_2681DD784()
{
  result = qword_28024EE30;
  if (!qword_28024EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE30);
  }

  return result;
}

unint64_t sub_2681DD7DC()
{
  result = qword_28024EE38;
  if (!qword_28024EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE38);
  }

  return result;
}

unint64_t sub_2681DD834()
{
  result = qword_28024EE40;
  if (!qword_28024EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE40);
  }

  return result;
}

unint64_t sub_2681DD88C()
{
  result = qword_28024EE48;
  if (!qword_28024EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_20(uint64_t a1)
{

  return sub_2683D04C8();
}

uint64_t OUTLINED_FUNCTION_8_17(uint64_t a1)
{

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_11_20(uint64_t a1, uint64_t a2)
{

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_16_18()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_2681DD9F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681DDBCC;

  return sub_2681DDAA0(0, a1, a2);
}

uint64_t sub_2681DDAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_268129B00;

  return v9(a1, 0, a2, a3);
}

uint64_t sub_2681DDBD0()
{
  OUTLINED_FUNCTION_14();
  v1[16] = v2;
  v1[17] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  v1[18] = OUTLINED_FUNCTION_15_1();
  v1[19] = sub_2683CB598();
  OUTLINED_FUNCTION_3_18();
  v1[20] = v3;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2681DDCEC()
{
  v120 = v0;
  v119[1] = *MEMORY[0x277D85DE8];
  if (qword_28024C8E0 != -1)
  {
LABEL_79:
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);
  sub_268191E3C(v1, (v0 + 2));
  v3 = sub_2683CF7C8();
  v4 = sub_2683CFE98();
  v115 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v119[0] = v6;
    *v5 = 136315138;
    v112 = v0[2];
    v7 = sub_268229348();
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = v7;
      v116 = MEMORY[0x277D84F90];
      sub_268390600(0, v7 & ~(v7 >> 63), 0);
      if (v9 < 0)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
      }

      v105 = v5;
      v107 = v4;
      v110 = v3;
      v10 = 0;
      v8 = v116;
      do
      {
        if ((v112 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x26D616C90](v10, v112);
        }

        else
        {
          v11 = *(v112 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = [v12 title];
        v14 = [v13 spokenPhrase];
        v15 = sub_2683CFA78();
        v17 = v16;

        v116 = v8;
        v19 = *(v8 + 16);
        v18 = *(v8 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_268390600((v18 > 1), v19 + 1, 1);
          v8 = v116;
        }

        ++v10;
        *(v8 + 16) = v19 + 1;
        v20 = v8 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
        v0 = v115;
      }

      while (v9 != v10);
      v3 = v110;
      v4 = v107;
      v5 = v105;
    }

    v21 = MEMORY[0x26D6167A0](v8, MEMORY[0x277D837D0]);
    v23 = v22;

    sub_268191EE8((v0 + 2));
    v24 = sub_2681610A0(v21, v23, v119);

    *(v5 + 4) = v24;
    _os_log_impl(&dword_2680EB000, v3, v4, "[UndoTasks] Tasks to undo: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    sub_268191EE8((v0 + 2));
  }

  v25 = sub_268229348();
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v27 = v25;
    v116 = MEMORY[0x277D84F90];
    sub_2683D0228();
    if (v27 < 0)
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v28 = 0;
    v29 = v0[16];
    v30 = v29 & 0xC000000000000001;
    v111 = v29 + 32;
    v113 = (v29 & 0xFFFFFFFFFFFFFF8);
    v31 = v0[20];
    v106 = (v31 + 16);
    v108 = (v31 + 32);
    v104 = (v31 + 8);
    do
    {
      if (v30)
      {
        v32 = MEMORY[0x26D616C90](v28, v0[16]);
      }

      else
      {
        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_77;
        }

        if (v28 >= v113[2])
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        v32 = *(v111 + 8 * v28);
      }

      v33 = v32;
      sub_26834AFCC(v32);
      if (v34)
      {
        v36 = v0[18];
        v35 = v0[19];
        sub_2683CB538();

        if (__swift_getEnumTagSinglePayload(v36, 1, v35) == 1)
        {
          sub_26812C310(v0[18], &qword_28024DB50, &qword_2683D4250);
        }

        else
        {
          v38 = v0[21];
          v37 = v0[22];
          v39 = v0[19];
          (*v108)(v37, v0[18], v39);
          (*v106)(v38, v37, v39);
          v40 = [objc_opt_self() cdEntityName];
          sub_2683CFA78();

          v41 = objc_allocWithZone(MEMORY[0x277D44700]);
          v0 = v115;
          sub_2681DEEC0(v38);
          (*v104)(v37, v39);
        }
      }

      ++v28;
      sub_2683D01F8();
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
    }

    while (v27 != v28);
    v42 = v116;
    v26 = MEMORY[0x277D84F90];
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  v43 = 0;
  v109 = v0 + 10;
  v116 = v26;
  v44 = *(v42 + 16);
  v45 = v26;
  while (v44 != v43)
  {
    if (v43 >= *(v42 + 16))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v46 = *(v42 + 8 * v43++ + 32);
    if (v46)
    {
      v47 = v46;
      MEMORY[0x26D616770]();
      if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      sub_2683CFD08();
      v26 = v116;
    }
  }

  v48 = sub_2683CF7C8();
  v49 = sub_2683CFE98();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v116 = v51;
    *v50 = 136315138;
    v52 = sub_268129504(0, &qword_28024DB40, 0x277D44700);
    v53 = MEMORY[0x26D6167A0](v26, v52);
    v55 = sub_2681610A0(v53, v54, &v116);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_2680EB000, v48, v49, "reminderIds %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v0 = v115;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v56 = *(v0[17] + 56);
  v114 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  sub_268129504(0, &qword_28024DB40, 0x277D44700);
  v57 = sub_2683CFC98();

  v0[14] = 0;
  v58 = [v56 fetchRemindersWithObjectIDs:v57 error:v0 + 14];

  v59 = v0[14];
  if (!v58)
  {
    goto LABEL_69;
  }

  sub_268129504(0, &qword_28024DB60, 0x277D44750);
  sub_26815E368();
  v60 = sub_2683CF9C8();
  v61 = v59;

  v62 = sub_2683CF7C8();
  v63 = sub_2683CFE98();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_2680EB000, v62, v63, "Fetching reminders", v64, 2u);
    OUTLINED_FUNCTION_38();
  }

  v66 = sub_2681DF144(v65);
  if (!v66)
  {
    swift_bridgeObjectRelease_n();
    v91 = MEMORY[0x277D84F90];
    goto LABEL_57;
  }

  v67 = v66;
  v119[0] = v45;
  sub_2683D0228();
  v116 = sub_2681DF0E4(v60);
  v117 = v68;
  v118 = v69 & 1;
  if (v67 < 0)
  {
    goto LABEL_81;
  }

  v0 = 0;
  do
  {
    v70 = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      goto LABEL_76;
    }

    v71 = v118;
    v72 = OUTLINED_FUNCTION_5_18();
    sub_2681DF164(v72, v73, v74, v60);
    v76 = v75;
    v77 = [v114 updateReminder_];

    sub_2683D01F8();
    sub_2683D0238();
    sub_2683D0248();
    sub_2683D0208();
    if ((v60 & 0xC000000000000001) != 0)
    {
      if (!v71)
      {
        goto LABEL_83;
      }

      if (sub_2683D02F8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EE50, &qword_2683DAAE0);
      v90 = sub_2683CF9E8();
      sub_2683D0378();
      v90(v109, 0);
    }

    else
    {
      v78 = OUTLINED_FUNCTION_5_18();
      sub_2681DEF7C(v78, v79, v80, v60);
      v82 = v81;
      v84 = v83;
      v86 = v85;
      v87 = OUTLINED_FUNCTION_5_18();
      sub_2681DF2FC(v87, v88, v89);
      v116 = v82;
      v117 = v84;
      v118 = v86 & 1;
    }

    v0 = (v0 + 1);
  }

  while (v70 != v67);
  swift_bridgeObjectRelease_n();
  sub_2681DF2FC(v116, v117, v118);
  v91 = v119[0];
LABEL_57:
  v92 = sub_2683ABE58();
  v93 = 0;
  v0 = (v91 & 0xC000000000000001);
  while (v92 != v93)
  {
    if (v0)
    {
      v94 = MEMORY[0x26D616C90](v93, v91);
    }

    else
    {
      if (v93 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_75;
      }

      v94 = *(v91 + 8 * v93 + 32);
    }

    v95 = v94;
    if (__OFADD__(v93, 1))
    {
      goto LABEL_74;
    }

    [v94 removeFromList];

    ++v93;
  }

  v115[15] = 0;
  v96 = [v114 saveSynchronouslyWithError_];
  v59 = v115[15];
  if (!v96)
  {
LABEL_69:
    v102 = v59;
    sub_2683CB388();

    swift_willThrow();

    OUTLINED_FUNCTION_40();
    goto LABEL_70;
  }

  v97 = v59;
  v98 = sub_2683CF7C8();
  v99 = sub_2683CFE98();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_2680EB000, v98, v99, "Reminder successfully removed", v100, 2u);
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_40();
LABEL_70:

  return v101();
}

uint64_t sub_2681DE84C()
{
  OUTLINED_FUNCTION_14();
  v1[7] = v2;
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v1[9] = OUTLINED_FUNCTION_15_1();
  v1[10] = sub_2683CC598();
  OUTLINED_FUNCTION_3_18();
  v1[11] = v3;
  v1[12] = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2681DE928()
{
  OUTLINED_FUNCTION_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 104) = v1;
  *v1 = v2;
  v1[1] = sub_2681DE9BC;
  v3 = *(v0 + 96);

  return sub_26821AA80(v3);
}

uint64_t sub_2681DE9BC()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2681DEAC0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 8), *(*(v0 + 64) + 32));
  sub_2683CC0A8();
  v6 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  v7 = sub_2683CCC98();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v7;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_0(v5);
  sub_2683CC328();
  sub_26812C310(v0 + 16, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v3, &qword_28024D400, &qword_2683D2460);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_40();

  return v9();
}

uint64_t sub_2681DEC3C()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681DECA4()
{
  OUTLINED_FUNCTION_14();
  v1[7] = v2;
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v1[9] = OUTLINED_FUNCTION_15_1();
  v1[10] = sub_2683CC598();
  OUTLINED_FUNCTION_3_18();
  v1[11] = v3;
  v4 = OUTLINED_FUNCTION_15_1();
  v1[12] = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v1[13] = v5;
  *v5 = v6;
  v5[1] = sub_2681DEDBC;

  return MEMORY[0x2821BAED8](v4);
}

uint64_t sub_2681DEDBC()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v5);
}

id sub_2681DEEC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2683CB558();
  v5 = sub_2683CFA68();

  v6 = [v2 initWithUUID:v4 entityName:v5];

  v7 = sub_2683CB598();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

void sub_2681DEF7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_2683D0308() == *(a4 + 36))
    {
      sub_2683D0318();
      sub_268129504(0, &qword_28024DB40, 0x277D44700);
      swift_dynamicCast();
      sub_2682E186C();
      v5 = v4;

      if (v5)
      {
        sub_2683D02E8();
        sub_2683D0338();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(a4 + 36) == a2)
  {
    sub_2683D0078();
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_2681DF0E4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_2683D02C8();
  }

  else
  {
    return sub_2683D0068();
  }
}

uint64_t sub_2681DF144(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_2683D00A8();
  }

  else
  {
    return *(a1 + 16);
  }
}

void sub_2681DF164(unint64_t a1, void *a2, char a3, uint64_t a4)
{
  v5 = a2;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_2683D0348();
      sub_268129504(0, &qword_28024DB60, 0x277D44750);
      swift_dynamicCast();
      return;
    }

    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
LABEL_8:
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == v5)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (sub_2683D0308() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_2683D0318();
  sub_268129504(0, &qword_28024DB40, 0x277D44700);
  swift_dynamicCast();
  v5 = v11;
  a1 = sub_2682E186C();
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v9 = *(*(a4 + 56) + 8 * a1);

  v10 = v9;
}

uint64_t sub_2681DF2FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2681DF308(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2681DF348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_2681DF3CC(char a1)
{
  switch(a1)
  {
    case 1:
      v1 = OUTLINED_FUNCTION_4_20();
      v2 = 1;
      goto LABEL_10;
    case 2:
      v1 = OUTLINED_FUNCTION_4_20();
      v2 = 0;
      v3 = 1;
      goto LABEL_11;
    case 3:
      v1 = OUTLINED_FUNCTION_0_31();
      v5 = 1;
      goto LABEL_12;
    case 4:
      OUTLINED_FUNCTION_0_31();
      OUTLINED_FUNCTION_9_19();
      v7 = 1;
      goto LABEL_13;
    case 5:
      OUTLINED_FUNCTION_0_31();
      OUTLINED_FUNCTION_9_19();
      v7 = 0;
      v8 = 1;
      return sub_2681E0038(v1, v2, v3, v4, v5, v6, v7, v8, v10);
    case 6:
      v10 = 1;
      v1 = 0;
      goto LABEL_9;
    default:
      v10 = 0;
      v1 = 1;
LABEL_9:
      v2 = 0;
LABEL_10:
      v3 = 0;
LABEL_11:
      v4 = 1;
      v5 = 0;
LABEL_12:
      v6 = 1;
      v7 = 0;
LABEL_13:
      v8 = 0;
      return sub_2681E0038(v1, v2, v3, v4, v5, v6, v7, v8, v10);
  }
}

uint64_t sub_2681DF500(void *a1, unint64_t *a2, void *a3)
{
  v20[1] = OUTLINED_FUNCTION_6_21(a1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E700, &qword_2683D7EE0);
  OUTLINED_FUNCTION_10_9(v5, v6, v7);
  OUTLINED_FUNCTION_11_21();
  sub_268129504(0, a2, a3);
  v8 = OUTLINED_FUNCTION_8_18();
  v11 = OUTLINED_FUNCTION_10_9(v8, v9, v10);
  OUTLINED_FUNCTION_7_16(v11, v12, v13, v14);
  if (OUTLINED_FUNCTION_3_19(v20, v15))
  {

    return v20[0];
  }

  else
  {
    v17 = sub_26812C6B8();
    v18 = OUTLINED_FUNCTION_59_1(&type metadata for CommonErrors, v17);
    return OUTLINED_FUNCTION_5_19(v18, v19);
  }
}

uint64_t sub_2681DF800(void *a1)
{
  OUTLINED_FUNCTION_6_21(a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E700, &qword_2683D7EE0);
  OUTLINED_FUNCTION_10_9(v4, v5, v6);
  OUTLINED_FUNCTION_11_21();
  v18[0] = MEMORY[0x277D837D0];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EEF0, &qword_2683DABD0);
  v10 = OUTLINED_FUNCTION_10_9(v7, v8, v9);
  v12 = v11;
  sub_26813CC6C(a1, v18);
  if (OUTLINED_FUNCTION_3_19(&v17, v13))
  {

    return v17;
  }

  else
  {
    v15 = sub_26812C6B8();
    OUTLINED_FUNCTION_59_1(&type metadata for CommonErrors, v15);
    *v16 = v2;
    *(v16 + 8) = v1;
    *(v16 + 16) = v10;
    *(v16 + 24) = v12;
    *(v16 + 32) = 0;
    return swift_willThrow();
  }
}