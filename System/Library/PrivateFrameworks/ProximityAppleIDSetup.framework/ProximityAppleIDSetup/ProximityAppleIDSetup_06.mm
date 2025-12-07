uint64_t sub_261034084(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 176) = v1;

  v5 = *(v3 + 144);
  v6 = *(v3 + 136);
  if (v1)
  {
    v7 = sub_2610344D0;
  }

  else
  {
    v7 = sub_2610341CC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2610341CC()
{
  swift_unknownObjectRelease();
  v1 = sub_2610BC794();
  v2 = sub_2610BCD84();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 208);
    v4 = swift_slowAlloc();
    *v4 = 67240192;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_260F97000, v1, v2, "PASTargetFlowController stepDidRequestCancel got response from sendCancelFlow %{BOOL,public}d", v4, 8u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_261020668(v0 + 16);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  (*(v6 + 40))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 184) = Strong;
  if (!Strong)
  {
    v8 = sub_2610BC794();
    v9 = sub_2610BCD74();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_260F97000, v8, v9, "PASTargetFlowController presenter is nil in stepDidRequestCancel", v10, 2u);
      MEMORY[0x2666F8720](v10, -1, -1);
    }
  }

  *(*(v0 + 120) + 33) = 1;
  v11 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 192) = v11;
  if (v11)
  {
    v12 = *(*(v0 + 120) + 24);
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 8);
    v20 = (*(v14 + 24) + **(v14 + 24));
    v15 = swift_task_alloc();
    *(v0 + 200) = v15;
    *v15 = v0;
    v15[1] = sub_261026C0C;
    v17 = *(v0 + 104);
    v16 = *(v0 + 112);

    return v20(v17, v16, ObjectType, v14);
  }

  else
  {
    swift_unknownObjectRelease();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_2610344D0()
{
  v30 = v0;
  v1 = v0[22];
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136446210;
    v0[12] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v29);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v3, v4, "PASTargetFlowController stepDidRequestCancel got error sending flowCancel. %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
    v12 = v0[22];
  }

  sub_261020668((v0 + 2));
  v13 = v0[5];
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
  (*(v14 + 40))(v13, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {
    v16 = sub_2610BC794();
    v17 = sub_2610BCD74();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_260F97000, v16, v17, "PASTargetFlowController presenter is nil in stepDidRequestCancel", v18, 2u);
      MEMORY[0x2666F8720](v18, -1, -1);
    }
  }

  *(v0[15] + 33) = 1;
  v19 = swift_unknownObjectWeakLoadStrong();
  v0[24] = v19;
  if (v19)
  {
    v20 = *(v0[15] + 24);
    ObjectType = swift_getObjectType();
    v22 = *(v20 + 8);
    v28 = (*(v22 + 24) + **(v22 + 24));
    v23 = swift_task_alloc();
    v0[25] = v23;
    *v23 = v0;
    v23[1] = sub_261026C0C;
    v25 = v0[13];
    v24 = v0[14];

    return v28(v25, v24, ObjectType, v22);
  }

  else
  {
    swift_unknownObjectRelease();

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_261034884(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FBF874;

  return PASTargetFlowController.performAIDASignIn(with:)(a1);
}

uint64_t sub_261034918(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB6DB4;

  return PASTargetFlowController.stepDidEndFlow(with:)(a1);
}

uint64_t sub_2610349B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return PASTargetFlowController.stepDidRequestReset(_:)(a1, a2);
}

uint64_t sub_261034A54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return PASTargetFlowController.stepDidRequestCancel(_:)(a1, a2);
}

uint64_t PASTargetFlowController.handleReset()()
{
  v1[5] = v0;
  sub_2610BCC74();
  v1[6] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_261034B90, v3, v2);
}

uint64_t sub_261034B90()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController handleReset", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v6 = swift_unknownObjectWeakLoadStrong();
    v0[10] = v6;
    if (v6)
    {
      v7 = *(v0[5] + 24);
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 8);
      v17 = (*(v9 + 32) + **(v9 + 32));
      v10 = swift_task_alloc();
      v0[11] = v10;
      *v10 = v0;
      v10[1] = sub_261034E80;

      return v17(ObjectType, v9);
    }

    swift_unknownObjectRelease();
  }

  else
  {

    v12 = sub_2610BC794();
    v13 = sub_2610BCD74();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_260F97000, v12, v13, "PASTargetFlowController presenter is nil in handleReset", v14, 2u);
      MEMORY[0x2666F8720](v14, -1, -1);
    }
  }

  v15 = v0[1];
  v16 = v0[9] != 0;

  return v15(v16);
}

uint64_t sub_261034E80()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_261034FC4, v3, v2);
}

uint64_t sub_261034FC4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72) != 0;

  return v1(v2);
}

uint64_t PASTargetFlowController.handleCancel()()
{
  v1[9] = v0;
  sub_2610BCC74();
  v1[10] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_2610350D4, v3, v2);
}

uint64_t sub_2610350D4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController handleCancel", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_260FBE4B4();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 5;
  *(v0 + 16) = v5;
  *(v0 + 64) = 1;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_261035260;

  return sub_26103540C(v0 + 16);
}

uint64_t sub_261035260(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 65) = a1;

  sub_260FA9980(v3 + 16, &qword_27FE65690, qword_2610C7520);
  v4 = *(v2 + 96);
  v5 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_2610353A8, v5, v4);
}

uint64_t sub_2610353A8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 65);

  return v1(v2);
}

uint64_t sub_26103540C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_2610BCC74();
  v2[7] = sub_2610BCC64();
  v4 = sub_2610BCBF4();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_2610354A4, v4, v3);
}

uint64_t sub_2610354A4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController shutDown", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v6 = *(v0[6] + 24);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 40);
    swift_unknownObjectRetain();
    v17 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_261035778;
    v10 = v0[5];

    return v17(v10, ObjectType, v6);
  }

  else
  {

    v12 = sub_2610BC794();
    v13 = sub_2610BCD74();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_260F97000, v12, v13, "PASTargetFlowController presenter is nil", v14, 2u);
      MEMORY[0x2666F8720](v14, -1, -1);
    }

    v15 = v0[1];
    v16 = v0[10] != 0;

    return v15(v16);
  }
}

uint64_t sub_261035778()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2610358BC, v3, v2);
}

uint64_t sub_2610358BC()
{
  v1 = v0[6];
  swift_unknownObjectRelease();

  *(v1 + 33) = 1;
  v2 = v0[1];
  v3 = v0[10] != 0;

  return v2(v3);
}

uint64_t PASTargetFlowController.handleEndFlow()()
{
  v1[9] = v0;
  sub_2610BCC74();
  v1[10] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_2610359D4, v3, v2);
}

uint64_t sub_2610359D4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController handleEndFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 72);

  if (*(v5 + 40) && (type metadata accessor for PASFlowStepTargetStart(0), swift_dynamicCastClass()))
  {
    sub_260FBE4B4();
    v6 = swift_allocError();
    *v7 = 0xD000000000000033;
    *(v7 + 8) = 0x80000002610D4710;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 4;
    *(v0 + 16) = v6;
    *(v0 + 64) = 1;
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = sub_261035BDC;

    return sub_26103540C(v0 + 16);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10(1);
  }
}

uint64_t sub_261035BDC(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 65) = a1;

  sub_260FA9980(v3 + 16, &qword_27FE65690, qword_2610C7520);
  v4 = *(v2 + 96);
  v5 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_261035D24, v5, v4);
}

uint64_t sub_261035D24()
{

  v1 = *(v0 + 65);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_261035D88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF874;

  return PASTargetFlowController.handleReset()();
}

uint64_t sub_261035E14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF874;

  return PASTargetFlowController.handleCancel()();
}

uint64_t sub_261035EA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBCD00;

  return PASTargetFlowController.handleEndFlow()();
}

unint64_t sub_261035F2C()
{
  sub_2610367C4(v0, v15);
  v13[0] = v15[0];
  v13[1] = v15[1];
  v13[2] = v15[2];
  v14 = v16;
  sub_260FA9918(v13, v11, &qword_27FE65690, qword_2610C7520);
  if (v12 == 1)
  {
    v1 = *&v11[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2610BF400;
    *(inited + 32) = 0x726F727245;
    *(inited + 40) = 0xE500000000000000;
    swift_getErrorValue();
    v3 = sub_2610BD4A4();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = &protocol witness table for String;
    *(inited + 48) = v3;
    *(inited + 56) = v4;
    v5 = sub_260FA8F34(inited);
    swift_setDeallocating();
    sub_260FA9980(inited + 32, &qword_27FE63BA0, &qword_2610BED60);
  }

  else
  {
    v10[0] = v11[0];
    v10[1] = v11[1];
    v10[2] = v11[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_2610BF400;
    *(v6 + 32) = 0x746C75736552;
    *(v6 + 40) = 0xE600000000000000;
    v7 = PASTargetFlowResultSuccess.description.getter();
    *(v6 + 72) = MEMORY[0x277D837D0];
    *(v6 + 80) = &protocol witness table for String;
    *(v6 + 48) = v7;
    *(v6 + 56) = v8;
    v5 = sub_260FA8F34(v6);
    swift_setDeallocating();
    sub_260FA9980(v6 + 32, &qword_27FE63BA0, &qword_2610BED60);
    sub_26103731C(v10);
  }

  sub_260FA9980(v13, &qword_27FE65690, qword_2610C7520);
  return v5;
}

unint64_t sub_261036130()
{
  sub_2610367C4(v0, v2);
  sub_260FA9980(v2, &qword_27FE65690, qword_2610C7520);
  return 0xD000000000000027;
}

uint64_t sub_261036194(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_261036288;

  return sub_261031114(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_261036288(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_26103639C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_260FBDE14;

  return sub_26102E240(a1, a2, v2);
}

uint64_t sub_261036444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_26102E600(a1, a2, a3, v3);
}

uint64_t sub_2610364F8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2610378A8;

  return sub_26102EB34(a1, a2, v2);
}

uint64_t sub_2610365A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_26102F70C(a1, v4, v5, v6);
}

uint64_t sub_26103665C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FB6DB4;

  return sub_26102C140(a1, a2, a3, v3);
}

uint64_t sub_261036710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_26102CAF8(a1, a2, a3, v3);
}

uint64_t sub_26103682C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_261023250(a1, v4, v5, v6);
}

unint64_t sub_2610368EC()
{
  result = qword_27FE65850;
  if (!qword_27FE65850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65850);
  }

  return result;
}

uint64_t sub_261036940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_261025284(a1, v4, v5, v6);
}

uint64_t sub_261036A00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_2610334D0(a1, v4, v5, v6);
}

uint64_t dispatch thunk of PASTargetFlowControllerProtocol.prepareFlow()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASTargetFlowControllerProtocol.prepareStepForPresentation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBF860;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASTargetFlowController.prepareFlow()()
{
  v4 = (*(*v0 + 416) + **(*v0 + 416));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FBF860;

  return v4();
}

uint64_t dispatch thunk of PASTargetFlowController.prepareStepForPresentation(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 424) + **(*v2 + 424));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_260FBF860;

  return v8(a1, a2);
}

unint64_t sub_261037190(void *a1)
{
  a1[1] = sub_2610371C8();
  a1[2] = sub_26103721C();
  result = sub_261037270();
  a1[3] = result;
  return result;
}

unint64_t sub_2610371C8()
{
  result = qword_27FE65880;
  if (!qword_27FE65880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65880);
  }

  return result;
}

unint64_t sub_26103721C()
{
  result = qword_27FE65888;
  if (!qword_27FE65888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65888);
  }

  return result;
}

unint64_t sub_261037270()
{
  result = qword_27FE65890;
  if (!qword_27FE65890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65890);
  }

  return result;
}

unint64_t sub_2610372C8()
{
  result = qword_27FE65898;
  if (!qword_27FE65898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65898);
  }

  return result;
}

unint64_t sub_261037370(uint64_t a1, uint64_t a2)
{
  v2 = sub_2610BD154();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2610373BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_26102F538(v0);
}

char *sub_26103744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn__anisetteDataProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65440, &unk_2610C5640);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(a4 + v7) = v8;
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65030, &qword_2610C4080);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(a4 + v9) = v10;
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v12 = swift_allocObject();
  *(a4 + v11) = v12;
  v13 = a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_result;
  *(v13 + 8) = -1;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *v13 = 0;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_account) = a2;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_companionDevice) = a3;
  *(v12 + 48) = 0;
  v14 = a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v14 + 8) = &protocol witness table for PASTargetFlowController;
  swift_unknownObjectWeakAssign();
  return PASFlowStepBase.init()();
}

void sub_2610375B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF860;

  JUMPOUT(0x261036194);
}

uint64_t sub_2610376D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260FBF860;

  return sub_261031B40(v2, v3, v4);
}

uint64_t sub_261037794(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_26106C760(a1, v4, v5, v6);
}

uint64_t sub_261037860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of PASExtensionCacheProtocol.designatedExtension()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF860;

  return v9(a1, a2, a3);
}

uint64_t sub_2610379FC()
{
  type metadata accessor for PASExtensionLocator();
  inited = swift_initStackObject();
  v0[13] = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658E0, &unk_2610C8358);
  v2 = swift_initStackObject();
  v0[14] = v2;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(inited + 16) = v2;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_261037AD8;
  v4 = v0[12];

  return sub_261051B7C(v4);
}

uint64_t sub_261037AD8()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (!v0)
  {
    swift_setDeallocating();

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_261037C24, 0, 0);
}

uint64_t sub_261037C24()
{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261037C94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v10 - v3;
  if (*(v0 + 136))
  {
    v5 = *(v0 + 136);
  }

  else
  {
    v6 = sub_2610BCC94();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = sub_261038850();
    v8 = swift_allocObject();
    v8[2] = v0;
    v8[3] = v7;
    v8[4] = v0;
    swift_retain_n();
    v5 = sub_261042A48(0, 0, v4, &unk_2610C8340, v8);
    *(v0 + 136) = v5;
  }

  return v5;
}

uint64_t sub_261037DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a1;
  *(v4 + 80) = a4;
  return MEMORY[0x2822009F8](sub_261037DF4, a4, 0);
}

uint64_t sub_261037DF4()
{
  v24 = v0;

  sub_2610902EC((v0 + 2));

  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v22 = 3;
  v3 = (*(v2 + 8))(&v22, v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v3)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v4 = sub_2610BC7B4();
    v0[11] = __swift_project_value_buffer(v4, qword_27FE65900);
    v5 = sub_2610BC794();
    v6 = sub_2610BCD44();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_260F97000, v5, v6, "PASExtensionCache task is locating extensions", v7, 2u);
      MEMORY[0x2666F8720](v7, -1, -1);
    }

    v8 = v0[10];

    v21 = (*(v8 + 112) + **(v8 + 112));
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_261038174;

    return v21(v0 + 7);
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v11 = sub_2610BC7B4();
    __swift_project_value_buffer(v11, qword_27FE65900);
    v12 = sub_2610BC794();
    v13 = sub_2610BCD44();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136446210;
      v16 = sub_2610BCFA4();
      v18 = sub_260FA5970(v16, v17, &v23);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_260F97000, v12, v13, "PASExtensionCache task %{public}s feature flag is disabled", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x2666F8720](v15, -1, -1);
      MEMORY[0x2666F8720](v14, -1, -1);
    }

    v19 = v0[9];
    *v19 = 0;
    v19[1] = 0;
    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_261038174()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_261038498;
  }

  else
  {
    v4 = sub_2610382A0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2610382A0(uint64_t a1)
{
  v19 = v1;
  v2 = v1[7];
  v3 = v1[8];
  if (v2)
  {

    v4 = v3;
    v5 = sub_2610BC794();
    v6 = sub_2610BCD44();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
      v9 = sub_2610BC764();
      v11 = sub_260FA5970(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_260F97000, v5, v6, "PASExtensionCache task found an extension: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x2666F8720](v8, -1, -1);
      MEMORY[0x2666F8720](v7, -1, -1);
      sub_2610389C0(v2, v3);
    }

    else
    {

      sub_2610389C0(v2, v3);
    }
  }

  else
  {
    v12 = sub_2610BC794();
    v13 = sub_2610BCD44();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_260F97000, v12, v13, "PASExtensionCache task found no extensions", v14, 2u);
      MEMORY[0x2666F8720](v14, -1, -1);
    }
  }

  v15 = v1[9];
  *v15 = v2;
  v15[1] = v3;
  v16 = v1[1];

  return v16();
}

uint64_t sub_261038498()
{
  v1 = v0[13];
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_260F97000, v3, v4, "PASExtensionCache task failed to fetch designated picker extension: %{public}@", v7, 0xCu);
    sub_261038958(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[9];
  *v11 = 0;
  v11[1] = 0;
  v12 = v0[1];

  return v12();
}

uint64_t sub_2610385F0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26103865C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_26103867C);
}

uint64_t sub_26103867C()
{
  v1 = sub_261037C94();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
  *v2 = v0;
  v2[1] = sub_261038740;
  v4 = v0[2];

  return MEMORY[0x282200460](v4, v1, v3);
}

uint64_t sub_261038740()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_261038850()
{
  result = qword_27FE658D8;
  if (!qword_27FE658D8)
  {
    type metadata accessor for PASExtensionCache();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE658D8);
  }

  return result;
}

uint64_t sub_2610388A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return sub_261037DD4(a1, v4, v5, v6);
}

uint64_t sub_261038958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FF0, &unk_2610BFDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2610389C0(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_261038A08()
{
  sub_260FA9918(v0, &v3, &unk_27FE656B0, &unk_2610BFCE0);
  if (v4)
  {
    sub_260FA9F80(&v3, v5);
    sub_260FA99E0(v5, &v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
    type metadata accessor for PASFamilyMember();
    if (swift_dynamicCast())
    {

      v1 = 0x6E65646E65706564;
    }

    else
    {
      v1 = 0x6C616E6F73726570;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
    sub_260FA9980(&v3, &unk_27FE656B0, &unk_2610BFCE0);
    return 1701736302;
  }

  return v1;
}

uint64_t PASFlowResultAccountTypeObjc.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E65646E65706564;
    case 2:
      return 1701736302;
    case 1:
      return 0x6C616E6F73726570;
  }

  result = sub_2610BD424();
  __break(1u);
  return result;
}

unint64_t PASFlowResultAccountTypeObjc.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_261038BB0@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_261038BCC(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    return 0x6E65646E65706564;
  }

  if (v2 == 2)
  {
    return 1701736302;
  }

  if (v2 == 1)
  {
    return 0x6C616E6F73726570;
  }

  result = sub_2610BD424();
  __break(1u);
  return result;
}

uint64_t PASFlowResultAccountTypeObjc.toParsable()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[3] = MEMORY[0x277D83B88];
  *a2 = result;
  return result;
}

unint64_t sub_261038C8C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_261039DD4(a2);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

void sub_261038CC4(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = MEMORY[0x277D83B88];
  *a1 = v2;
}

id sub_261038E6C(uint64_t (*a1)(void))
{
  sub_260FA9918(v1 + OBJC_IVAR___PASSourceFlowResult_result, &v8, &unk_27FE656D0, &unk_2610C0550);
  if (v11 == 1)
  {
    v3 = &unk_27FE656D0;
    v4 = &unk_2610C0550;
LABEL_7:
    sub_260FA9980(&v8, v3, v4);
    return 0;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  sub_260FA9918(v12, &v8, &unk_27FE656B0, &unk_2610BFCE0);
  sub_261029488(v12);
  if (!*(&v9 + 1))
  {
    v3 = &unk_27FE656B0;
    v4 = &unk_2610BFCE0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  a1(0);
  if (swift_dynamicCast())
  {
    v5 = *(v7 + 16);

    return v5;
  }

  return 0;
}

unint64_t PASSourceFlowResultObjc.description.getter()
{
  v1 = 0xD00000000000001BLL;
  sub_260FA9918(v0 + OBJC_IVAR___PASSourceFlowResult_result, v4, &unk_27FE656D0, &unk_2610C0550);
  if (v5 == 1)
  {
    v2 = v4[0];
    sub_2610BCF84();
    MEMORY[0x2666F7380](0xD00000000000001CLL, 0x80000002610D48A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    sub_2610BD0A4();

    return 0;
  }

  else
  {
    sub_260FA9980(v4, &unk_27FE656D0, &unk_2610C0550);
  }

  return v1;
}

uint64_t sub_261039310(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(_OWORD *))
{
  sub_260FA9918(v4 + *a1, &v9, a2, a3);
  if (v12)
  {
    sub_260FA9980(&v9, a2, a3);
    return 2;
  }

  v13[0] = v9;
  v13[1] = v10;
  v13[2] = v11;
  sub_260FA9918(v13, &v9, &unk_27FE656B0, &unk_2610BFCE0);
  a4(v13);
  if (*(&v10 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
    type metadata accessor for PASFamilyMember();
    if (swift_dynamicCast())
    {

      return 0;
    }
  }

  else
  {
    sub_260FA9980(&v9, &unk_27FE656B0, &unk_2610BFCE0);
  }

  return 1;
}

id sub_2610394E4(uint64_t (*a1)(void))
{
  sub_260FA9918(v1 + OBJC_IVAR___PASTargetFlowResult_result, &v8, &qword_27FE65690, qword_2610C7520);
  if (v11 == 1)
  {
    v3 = &qword_27FE65690;
    v4 = qword_2610C7520;
LABEL_7:
    sub_260FA9980(&v8, v3, v4);
    return 0;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  sub_260FA9918(v12, &v8, &unk_27FE656B0, &unk_2610BFCE0);
  sub_26103731C(v12);
  if (!*(&v9 + 1))
  {
    v3 = &unk_27FE656B0;
    v4 = &unk_2610BFCE0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  a1(0);
  if (swift_dynamicCast())
  {
    v5 = *(v7 + 16);

    return v5;
  }

  return 0;
}

id sub_261039680(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(_OWORD *))
{
  sub_260FA9918(v4 + *a1, v13, a2, a3);
  if (v15)
  {
    sub_260FA9980(v13, a2, a3);
  }

  else
  {
    v16[0] = v13[0];
    v16[1] = v13[1];
    v16[2] = v14;
    if (*(&v14 + 1))
    {

      sub_260FDF8D0(v8);
      v9 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
      v10 = sub_2610BC8F4();

      v11 = [v9 initWithDictionary_];

      a4(v16);

      return v11;
    }

    a4(v16);
  }

  return 0;
}

id sub_2610397C4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  sub_260FA9918(a1 + *a3, v11, a4, a5);
  if (v12 == 1)
  {
    v7 = v11[0];
    v8 = sub_2610BC4E4();

    v9 = v8;
  }

  else
  {
    sub_260FA9980(v11, a4, a5);
    v9 = 0;
  }

  return v9;
}

uint64_t sub_261039874(void *a1, uint64_t *a2, uint64_t *a3)
{
  sub_260FA9918(v3 + *a1, v7, a2, a3);
  if (v8 == 1)
  {
    return v7[0];
  }

  sub_260FA9980(v7, a2, a3);
  return 0;
}

id sub_261039904(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = objc_allocWithZone(v4);
  sub_260FA9918(a1, v9 + *a2, a3, a4);
  v12.receiver = v9;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_260FA9980(a1, a3, a4);
  return v10;
}

id sub_2610399B4(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  ObjectType = swift_getObjectType();
  sub_260FA9918(a1, v4 + *a2, a3, a4);
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_260FA9980(a1, a3, a4);
  return v10;
}

id sub_261039A60(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2610BC9D4();

  return v5;
}

unint64_t PASTargetFlowResultObjc.description.getter()
{
  v1 = 0xD00000000000001BLL;
  sub_260FA9918(v0 + OBJC_IVAR___PASTargetFlowResult_result, v4, &qword_27FE65690, qword_2610C7520);
  if (v5 == 1)
  {
    v2 = v4[0];
    sub_2610BCF84();
    MEMORY[0x2666F7380](0xD00000000000001CLL, 0x80000002610D4910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    sub_2610BD0A4();

    return 0;
  }

  else
  {
    sub_260FA9980(v4, &qword_27FE65690, qword_2610C7520);
  }

  return v1;
}

id _s21ProximityAppleIDSetup23PASSourceFlowResultObjcCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PASFlowResultObjc.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASFlowResultObjc.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASFlowResultObjc();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PASFlowResultObjc.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PASFlowResultObjc();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_261039DD4(uint64_t a1)
{
  sub_260FA3F5C(a1, v3);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  if (v2 <= 2)
  {
    return v2;
  }

  return 0;
}

unint64_t sub_261039E64()
{
  result = qword_27FE658F8;
  if (!qword_27FE658F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE658F8);
  }

  return result;
}

uint64_t sub_261039ED8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_261039F34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_26103A218(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2610BC7B4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2610BC7A4();
}

uint64_t sub_26103A2B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void Logger.pas_ifError(_:message:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE640D0, &qword_2610C8610);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2610BF400;
    swift_getErrorValue();
    v5 = a1;
    v6 = sub_2610BD4A4();
    v8 = v7;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_260FC4240();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    v9 = sub_2610BCA14();
    v11 = v10;
    v12 = sub_2610BC794();
    v13 = sub_2610BCD64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      v16 = sub_260FA5970(v9, v11, &v17);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_260F97000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x2666F8720](v15, -1, -1);
      MEMORY[0x2666F8720](v14, -1, -1);
    }

    else
    {
    }
  }
}

void Logger.pas_ifErrorElse(_:message:debug:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {

    Logger.pas_ifError(_:message:)(a1, a2, a3);
  }

  else
  {

    oslog = sub_2610BC794();
    v7 = sub_2610BCD54();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_260FA5970(a4, a5, &v11);
      _os_log_impl(&dword_260F97000, oslog, v7, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x2666F8720](v9, -1, -1);
      MEMORY[0x2666F8720](v8, -1, -1);
    }
  }
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

void *sub_26103A6C4(uint64_t a1, void *a2)
{
  if (!a1 || !*(a1 + 16))
  {

    return a2;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (!v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v8;
LABEL_16:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = v13 | (v10 << 6);
    sub_260FA9708(*(a1 + 48) + 40 * v14, v30);
    sub_260FA3F5C(*(a1 + 56) + 32 * v14, v29);
    v32 = v30[0];
    v33 = v30[1];
    *&v34 = v31;
    sub_260FA6A84(v29, (&v34 + 8));
    v12 = v10;
LABEL_17:
    v39[0] = v34;
    v39[1] = v35;
    v40 = v36;
    v37 = v32;
    v38 = v33;
    if (!*(&v33 + 1))
    {

      return a2;
    }

    v32 = v37;
    v33 = v38;
    *&v34 = *&v39[0];
    sub_260FA6A84((v39 + 8), v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v29[0] = a2;
    v16 = sub_260FA60B4(&v32);
    v18 = a2[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (a2[3] >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v27 = v16;
      sub_261098DA4();
      v16 = v27;
      a2 = *&v29[0];
      if ((v22 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_7:
      v9 = (a2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      sub_260FA6A84(v30, v9);
      sub_260FA9764(&v32);
      v8 = v12;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_261097330(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_260FA60B4(&v32);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_36;
      }

LABEL_23:
      a2 = *&v29[0];
      if (v22)
      {
        goto LABEL_7;
      }

LABEL_24:
      a2[(v16 >> 6) + 8] |= 1 << v16;
      v24 = v16;
      sub_260FA9708(&v32, a2[6] + 40 * v16);
      sub_260FA6A84(v30, (a2[7] + 32 * v24));
      sub_260FA9764(&v32);
      v25 = a2[2];
      v20 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v20)
      {
        goto LABEL_35;
      }

      a2[2] = v26;
      v8 = v12;
      if (!v6)
      {
LABEL_9:
        if (v7 <= v8 + 1)
        {
          v11 = v8 + 1;
        }

        else
        {
          v11 = v7;
        }

        v12 = v11 - 1;
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= v7)
          {
            v6 = 0;
            v36 = 0;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            goto LABEL_17;
          }

          v6 = *(a1 + 64 + 8 * v10);
          ++v8;
          if (v6)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_2610BD444();
  __break(1u);
  return result;
}

void *sub_26103A9B0(uint64_t a1, void *a2)
{
  if (a1 && (v3 = a1, *(a1 + 16)))
  {
    v4 = a1 + 64;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    v35 = v3;
    while (v7)
    {
      v13 = v9;
LABEL_13:
      v14 = __clz(__rbit64(v7)) | (v13 << 6);
      v15 = *(v3 + 56);
      v16 = (*(v3 + 48) + 16 * v14);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v15 + 8 * v14);

      v20 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = sub_260FA5FBC(v18, v17);
      v24 = a2[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_26;
      }

      v28 = v23;
      if (a2[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v22;
          sub_2610990C4();
          v22 = v33;
        }
      }

      else
      {
        sub_261097A0C(v27, isUniquelyReferenced_nonNull_native);
        v22 = sub_260FA5FBC(v18, v17);
        if ((v28 & 1) != (v29 & 1))
        {
          goto LABEL_28;
        }
      }

      v7 &= v7 - 1;
      if (v28)
      {
        v10 = v22;

        v11 = a2[7];
        v12 = *(v11 + 8 * v10);
        *(v11 + 8 * v10) = v20;
      }

      else
      {
        a2[(v22 >> 6) + 8] |= 1 << v22;
        v30 = (a2[6] + 16 * v22);
        *v30 = v18;
        v30[1] = v17;
        *(a2[7] + 8 * v22) = v20;
        v31 = a2[2];
        v26 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v26)
        {
          goto LABEL_27;
        }

        a2[2] = v32;
      }

      v9 = v13;
      v3 = v35;
    }

    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 >= v8)
      {

        return a2;
      }

      v7 = *(v4 + 8 * v13);
      ++v9;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_2610BD444();
    __break(1u);
  }

  else
  {

    return a2;
  }

  return result;
}

void *sub_26103ABE4(uint64_t a1, void *a2)
{
  if (!a1 || !*(a1 + 16))
  {

    return a2;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (!v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v11 = v8;
LABEL_16:
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_260FA99E0(*(a1 + 56) + 40 * v15, v35);
    *&v36 = v18;
    *(&v36 + 1) = v17;
    sub_260F98E14(v35, &v37);

    v13 = v11;
LABEL_17:
    v40 = v36;
    v41[0] = v37;
    v41[1] = v38;
    v42 = v39;
    v19 = *(&v36 + 1);
    if (!*(&v36 + 1))
    {

      return a2;
    }

    v20 = v40;
    sub_260F98E14(v41, &v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v35[0] = a2;
    v22 = sub_260FA5FBC(v20, v19);
    v24 = a2[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (a2[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v33 = v22;
      sub_261099230();
      v22 = v33;
      if ((v28 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_7:
      v9 = v22;

      a2 = *&v35[0];
      v10 = (*(*&v35[0] + 56) + 40 * v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      sub_260F98E14(&v36, v10);
      v8 = v13;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_261097CB0(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_260FA5FBC(v20, v19);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_36;
      }

LABEL_23:
      if (v28)
      {
        goto LABEL_7;
      }

LABEL_24:
      a2 = *&v35[0];
      *(*&v35[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v30 = (a2[6] + 16 * v22);
      *v30 = v20;
      v30[1] = v19;
      sub_260F98E14(&v36, a2[7] + 40 * v22);
      v31 = a2[2];
      v26 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v26)
      {
        goto LABEL_35;
      }

      a2[2] = v32;
      v8 = v13;
      if (!v6)
      {
LABEL_9:
        if (v7 <= v8 + 1)
        {
          v12 = v8 + 1;
        }

        else
        {
          v12 = v7;
        }

        v13 = v12 - 1;
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v7)
          {
            v6 = 0;
            v39 = 0;
            v37 = 0u;
            v38 = 0u;
            v36 = 0u;
            goto LABEL_17;
          }

          v6 = *(a1 + 64 + 8 * v11);
          ++v8;
          if (v6)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_2610BD444();
  __break(1u);
  return result;
}

uint64_t Dictionary.pas_and(_:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2610BCE64();
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v72 = v60 - v13;
  v62 = *(a4 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(a3 - 8);
  MEMORY[0x28223BE20](v15, v18);
  v76 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v75 = sub_2610BCE64();
  v21 = *(v75 - 8);
  v23 = MEMORY[0x28223BE20](v75, v22);
  v25 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v74 = v60 - v27;
  if (a1)
  {

    if (MEMORY[0x2666F7240](v28, a3, a4, a5))
    {

      goto LABEL_4;
    }

    v80 = a2;
    v78 = a4;
    v64 = v17;
    v68 = a5;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v29 = sub_2610BD0B4();
      v71 = 0;
      v30 = 0;
      v73 = 0;
      a1 = v29 | 0x8000000000000000;
    }

    else
    {
      v31 = -1 << *(a1 + 32);
      v32 = *(a1 + 64);
      v71 = a1 + 64;
      v30 = ~v31;
      v33 = -v31;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v73 = v34 & v32;
    }

    v35 = v76;
    v77 = (v61 + 32);
    v36 = (v62 + 32);
    v70 = TupleTypeMetadata2 - 8;
    v60[0] = v30;
    v37 = (v30 + 64) >> 6;
    v60[2] = v61 + 16;
    v60[1] = v62 + 16;
    v69 = (v21 + 32);
    v66 = (v62 + 56);

    v39 = 0;
    v67 = a3;
    v65 = a1;
    v63 = v25;
    for (i = v73; ; i = v79)
    {
      v73 = i;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_2610BD0C4())
      {
        sub_2610BD354();
        swift_unknownObjectRelease();
        v47 = v64;
        v48 = v78;
        sub_2610BD354();
        swift_unknownObjectRelease();
        v42 = v39;
        v79 = i;
LABEL_24:
        v49 = *(TupleTypeMetadata2 + 48);
        v25 = v63;
        (*v77)();
        (*v36)(&v25[v49], v47, v48);
        v50 = 0;
        v44 = v42;
        a1 = v65;
        goto LABEL_25;
      }

      v50 = 1;
      v59 = i;
      v44 = v39;
      v79 = v59;
LABEL_25:
      v51 = *(TupleTypeMetadata2 - 8);
      (*(v51 + 56))(v25, v50, 1, TupleTypeMetadata2);
      v52 = v74;
      (*v69)(v74, v25, v75);
      if ((*(v51 + 48))(v52, 1, TupleTypeMetadata2) == 1)
      {
        sub_26103B514(a1);
        return v80;
      }

      v53 = *(TupleTypeMetadata2 + 48);
      v35 = v76;
      v54 = v52;
      v55 = v52;
      a3 = v67;
      (*v77)(v76, v54, v67);
      v56 = &v55[v53];
      v57 = v72;
      v58 = v78;
      (*v36)(v72, v56, v78);
      (*v66)(v57, 0, 1, v58);
      sub_2610BC934();
      result = sub_2610BC974();
      v39 = v44;
    }

    v41 = i;
    v42 = v39;
    if (!i)
    {
      if (v37 <= v39 + 1)
      {
        v43 = v39 + 1;
      }

      else
      {
        v43 = v37;
      }

      v44 = v43 - 1;
      v45 = v39;
      while (1)
      {
        v42 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        if (v42 >= v37)
        {
          v79 = 0;
          v50 = 1;
          goto LABEL_25;
        }

        v41 = *(v71 + 8 * v42);
        ++v45;
        if (v41)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      return result;
    }

LABEL_21:
    v79 = (v41 - 1) & v41;
    v46 = __clz(__rbit64(v41)) | (v42 << 6);
    (*(v61 + 16))(v35, *(a1 + 48) + *(v61 + 72) * v46, a3);
    v47 = v64;
    v48 = v78;
    (*(v62 + 16))(v64, *(a1 + 56) + *(v62 + 72) * v46, v78);
    goto LABEL_24;
  }

LABEL_4:

  return a2;
}

void sub_26103B51C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66740, &qword_2610BECD0);
    v2 = sub_2610BD114();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_260FA99E0(*(a1 + 56) + 40 * v12, v28);
    *&v27 = v14;
    *(&v27 + 1) = v15;
    v24 = v27;
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v16 = v27;
    sub_260F98E14(v25, v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65950, &qword_2610C8660);
    sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v17 = sub_260FA5FBC(v16, *(&v16 + 1));
    if (v18)
    {
      *(v2[6] + 16 * v17) = v16;
      v8 = v17;

      v9 = v2[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v22;

      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      *(v2[6] + 16 * v17) = v16;
      *(v2[7] + 8 * v17) = v22;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v11 = v7;
  }
}

unint64_t sub_26103B7A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C28, &unk_2610C2CD0);
    v2 = sub_2610BD114();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_260FA9708(*(a1 + 48) + 40 * v12, v27);
        sub_260FA3F5C(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_260FA9708(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_260FA3F5C(v25 + 8, v20);
        sub_260FA9980(v24, &qword_27FE659F8, &qword_2610C89E8);
        v21 = v18;
        sub_260FA6A84(v20, v22);
        v13 = v21;
        sub_260FA6A84(v22, v23);
        sub_260FA6A84(v23, &v21);
        result = sub_260FA5FBC(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          result = sub_260FA6A84(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_260FA6A84(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_260FA9980(v24, &qword_27FE659F8, &qword_2610C89E8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_26103BA7C()
{
  v0 = sub_2610BC7B4();
  __swift_allocate_value_buffer(v0, qword_27FE65930);
  __swift_project_value_buffer(v0, qword_27FE65930);
  return sub_2610BC7A4();
}

uint64_t PASAnalyticsEventProtocol<>.name.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v5);
  v7 = v9 - v6;
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_2610BCA94();
  sub_2610BD344();
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  return v9[0];
}

uint64_t Dictionary.pas_and(_:forKey:withDefault:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55 = a5;
  v56 = a7;
  v57 = a4;
  v52 = a3;
  v54 = a2;
  v9 = sub_2610BCE64();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v51 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v50 - v16;
  v18 = *(a6 - 8);
  v20 = MEMORY[0x28223BE20](v15, v19);
  v50 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v53 = &v50 - v23;
  v24 = *(v10 + 16);
  v24(v17, a1, v9);
  v25 = v18;
  v26 = *(v18 + 6);
  if (v26(v17, 1, a6) == 1)
  {
    v53 = v25;
    v27 = *(v10 + 8);
    v27(v17, v9);
    v28 = v51;
    v24(v51, v52, v9);
    if (v26(v28, 1, a6) == 1)
    {
      v27(v28, v9);
      v29 = v57;
    }

    else
    {
      v39 = v53;
      v40 = v50;
      (*(v53 + 4))(v50, v28, a6);
      v41 = v55;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_2610BD314();
      swift_allocObject();
      v43 = sub_2610BCB54();
      v45 = v44;
      v46 = *(TupleTypeMetadata2 + 48);
      (*(*(v41 - 8) + 16))(v44, v54, v41);
      (*(v39 + 2))(v45 + v46, v40, a6);
      sub_2610BCBD4();
      v47 = v56;
      v48 = sub_261040F14(v43, v41, a6, v56);

      v29 = Dictionary.pas_and(_:)(v48, v57, v41, a6, v47);

      (*(v39 + 1))(v40, a6);
    }
  }

  else
  {
    v30 = v53;
    (*(v25 + 4))(v53, v17, a6);
    v31 = v55;
    v32 = swift_getTupleTypeMetadata2();
    sub_2610BD314();
    swift_allocObject();
    v33 = sub_2610BCB54();
    v35 = v34;
    v36 = *(v32 + 48);
    (*(*(v31 - 8) + 16))(v34, v54, v31);
    (*(v25 + 2))(v35 + v36, v30, a6);
    sub_2610BCBD4();
    v37 = v56;
    v38 = sub_261040F14(v33, v31, a6, v56);

    v29 = Dictionary.pas_and(_:)(v38, v57, v31, a6, v37);

    (*(v25 + 1))(v30, a6);
  }

  return v29;
}

void sub_26103C1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_260FAC380(a1, v11);
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5, v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_2610BD364();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_2610BC9D4();
  [v3 setObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

double sub_26103C304@<D0>(_OWORD *a3@<X8>)
{
  v5 = *v3;
  v6 = sub_2610BC9D4();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_2610BCEA4();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t PASAnalyticsActor.PASAnalyticsActorType.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26103C3F4()
{
  type metadata accessor for PASAnalyticsActor.PASAnalyticsActorType();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27FE65948 = v0;
  return result;
}

uint64_t static PASAnalyticsActor.shared.getter()
{
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26103C48C()
{
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26103C4F0@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  result = sub_260FA9AB4(0, &qword_27FE65A08, 0x277CBEBD0);
  a1[3] = result;
  a1[4] = &off_287388368;
  *a1 = v2;
  return result;
}

void *sub_26103C564(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = 0x6C7070612E6D6F63;
  v10[3] = 0xE900000000000065;
  v10[4] = 0xD000000000000015;
  v10[5] = 0x80000002610C87E0;
  v10[6] = a2;
  v10[7] = a3;
  v10[8] = a4;
  v10[9] = a5;
  sub_260F98E14(a1, (v10 + 10));
  return v10;
}

unint64_t sub_26103C640()
{
  sub_260FA99E0(v0 + 80, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 24))(v9, 0xD000000000000017, 0x80000002610D4C10, v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  sub_260FAC380(v9, v6);
  if (!v7)
  {
    sub_260FA9980(v6, &qword_27FE63830, &qword_2610BE8E0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65A00, &unk_2610C8A18);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = sub_260FA8E30(MEMORY[0x277D84F90]);
    goto LABEL_6;
  }

  v3 = v5;
LABEL_6:
  sub_260FA9980(v9, &qword_27FE63830, &qword_2610BE8E0);
  return v3;
}

uint64_t sub_26103C764(uint64_t a1)
{
  sub_260FA99E0(v1 + 80, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65A00, &unk_2610C8A18);
  v6[0] = a1;
  (*(v4 + 8))(v6, 0xD000000000000017, 0x80000002610D4C10, v3, v4);
  sub_260FA9980(v6, &qword_27FE63830, &qword_2610BE8E0);
  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

uint64_t sub_26103C828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2610BC9D4();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_26103C8E8;
  v10[3] = &block_descriptor_5;
  v7 = _Block_copy(v10);

  v8 = AnalyticsSendEventLazy();

  _Block_release(v7);

  return v8;
}

id sub_26103C8E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);
    v4 = sub_2610BC8F4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *sub_26103C984(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = 0x6C7070612E6D6F63;
  v5[3] = 0xE900000000000065;
  v5[4] = 0xD000000000000015;
  v5[5] = 0x80000002610C87E0;
  v5[6] = a2;
  v5[7] = a3;
  v5[8] = a4;
  v5[9] = a5;
  sub_260F98E14(a1, (v5 + 10));
  return v5;
}

uint64_t sub_26103C9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v20 - v10;
  v12 = sub_2610BCC94();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_260FA99E0(a1, v21);
  v13 = qword_27FE63820;

  if (v13 != -1)
  {
    v14 = swift_once();
  }

  v16 = qword_27FE65948;
  v17 = sub_2610412C4(v14, v15);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v4;
  sub_260F98E14(v21, (v18 + 5));
  v18[10] = a2;
  v18[11] = a3;

  sub_261042434(0, 0, v11, &unk_2610C8650, v18);
}

uint64_t sub_26103CB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_260FB6DB4;

  return sub_26103CC60(a5, a6, a7);
}

uint64_t sub_26103CC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v5 = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26103CCFC, v5, 0);
}

uint64_t sub_26103CCFC()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  v7 = sub_26103C640();
  sub_260FA99E0(v3, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65950, &qword_2610C8660);
  sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);
  if (swift_dynamicCast())
  {
    v4 = v0[7];
  }

  else
  {
    v4 = 0;
  }

  sub_260FAD71C(v4, v2, v1);
  sub_26103C764(v7);
  v5 = v0[1];

  return v5();
}

uint64_t sub_26103CE00(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = sub_2610BCC94();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = qword_27FE63820;

  if (v10 != -1)
  {
    v11 = swift_once();
  }

  v13 = qword_27FE65948;
  v14 = sub_2610412C4(v11, v12);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v2;
  v15[5] = a1;
  v15[6] = a2;

  sub_261042434(0, 0, v8, &unk_2610C8670, v15);
}

uint64_t sub_26103CF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_260FBF860;

  return sub_26103D050(a5, a6);
}

uint64_t sub_26103D050(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4 = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26103D0EC, v4, 0);
}

uint64_t sub_26103D0EC()
{
  v1 = v0[3];
  v2 = v0[2];
  v5 = sub_26103C640();

  sub_26103C764(v5);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26103D188(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v22 - v11;
  v13 = sub_2610BCC94();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v6 + 16))(v8, a1, v5);
  v14 = qword_27FE63820;

  if (v14 != -1)
  {
    v15 = swift_once();
  }

  v17 = qword_27FE65948;
  v18 = sub_2610412C4(v15, v16);
  v19 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v17;
  *(v20 + 3) = v18;
  *(v20 + 4) = v5;
  *(v20 + 5) = *(v4 + 88);
  *(v20 + 6) = v2;
  (*(v6 + 32))(&v20[v19], v8, v5);

  sub_261042434(0, 0, v12, &unk_2610C8688, v20);
}

uint64_t sub_26103D3F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = *a4;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v6 = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26103D4B0, v6, 0);
}

uint64_t sub_26103D4B0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(v1 + 80);
  v0[5] = v3;
  v0[6] = *(v1 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_260FDC73C;

  return sub_26103FD58((v0 + 2), 0, 0);
}

uint64_t sub_26103D59C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return MEMORY[0x2822009F8](sub_26103D5E4, 0, 0);
}

uint64_t sub_26103D5E4()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = *(v1 + 80);
  v0[5] = v3;
  v0[6] = *(v1 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_26104242C;

  return sub_26103FD58((v0 + 2), 0, 0);
}

uint64_t sub_26103D6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = *v3;
  v30 = a2;
  v7 = *(v29 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v28 - v14;
  v16 = sub_2610BCC94();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = qword_27FE63820;

  v31 = a3;

  if (v17 != -1)
  {
    v18 = swift_once();
  }

  v20 = qword_27FE65948;
  v21 = sub_2610412C4(v18, v19);
  v22 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = v20;
  *(v24 + 3) = v21;
  *(v24 + 4) = v7;
  *(v24 + 5) = *(v29 + 88);
  *(v24 + 6) = v4;
  (*(v8 + 32))(&v24[v22], v11, v7);
  v25 = &v24[v23];
  v26 = v31;
  *v25 = v30;
  v25[1] = v26;

  sub_261042434(0, 0, v15, &unk_2610C86A8, v24);
}

uint64_t sub_26103D970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v8 = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26103DA0C, v8, 0);
}

uint64_t sub_26103DA0C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_26103DAF0;
  v5 = v0[3];

  return sub_26103DDCC(v5, &unk_2610C8A10, v3);
}

uint64_t sub_26103DAF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26103DC00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26103DC20, 0, 0);
}

uint64_t sub_26103DC20()
{
  v1 = (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26103DCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26103DCC4, 0, 0);
}

uint64_t sub_26103DCC4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_261042428;
  v5 = v0[2];

  return sub_26103DDCC(v5, &unk_2610C86C0, v3);
}

uint64_t sub_26103DDAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_261042430, 0, 0);
}

uint64_t sub_26103DDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *v3;
  v4[11] = *v3;
  v6 = *(v5 + 80);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26103DEC8, 0, 0);
}

uint64_t sub_26103DEC8()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v0[5] = v1;
  v7 = *(v3 + 88);
  v0[15] = v7;
  v0[6] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v9 = *(v2 + 16);
  v0[16] = v9;
  v0[17] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(boxed_opaque_existential_1, v6, v1);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_26103DFC4;

  return sub_26103FD58((v0 + 2), v5, v4);
}

uint64_t sub_26103DFC4()
{
  v2 = *v1;
  v2[19] = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);

    v3 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_26103E108, 0, 0);
}

uint64_t sub_26103E108()
{
  v31 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[7];
  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65930);
  v2(v3, v5, v4);
  v7 = v1;
  v8 = sub_2610BC794();
  v9 = sub_2610BCD64();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[19];
  if (v10)
  {
    v12 = v0[14];
    v13 = v0[15];
    v15 = v0[12];
    v14 = v0[13];
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v16 = 136446466;
    v17 = (*(v13 + 8))(v15, v13);
    v19 = v18;
    (*(v14 + 8))(v12, v15);
    v20 = sub_260FA5970(v17, v19, &v30);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2114;
    v21 = v11;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v28 = v22;
    _os_log_impl(&dword_260F97000, v8, v9, "PASAnalytics failed to send event %{public}s.\n%{public}@", v16, 0x16u);
    sub_260FA9980(v28, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x2666F8720](v29, -1, -1);
    MEMORY[0x2666F8720](v16, -1, -1);
  }

  else
  {
    v24 = v0[13];
    v23 = v0[14];
    v25 = v0[12];

    (*(v24 + 8))(v23, v25);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_26103E3AC(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v26 = sub_2610BC5D4();
  v5 = *(v26 - 8);
  v7 = MEMORY[0x28223BE20](v26, v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 80);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v7, v12);
  v14 = &v25 - v13;
  v15 = *(v4 + 88);
  v16 = (*(v15 + 8))(v10, v15);
  v25 = v17;
  (*(v11 + 16))(v14, a1, v10);
  v18 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v10;
  *(v19 + 3) = v15;
  *(v19 + 4) = v2;
  (*(v11 + 32))(&v19[v18], v14, v10);

  sub_2610BC5B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65958, &qword_2610C8BB0);
  v20 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v20 + 136) = 0;
  *(v20 + 144) = 1;
  *(v20 + 168) = 0;
  sub_2610BC574();
  v22 = v21;
  (*(v5 + 8))(v9, v26);
  *(v20 + 112) = v22;
  v23 = v25;
  *(v20 + 120) = v16;
  *(v20 + 128) = v23;
  *(v20 + 152) = &unk_2610C86E0;
  *(v20 + 160) = v19;
  return v20;
}

uint64_t sub_26103E62C(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 56) = a4;
  v6 = *a2;
  *(v4 + 80) = *a2;
  v7 = *(v6 + 80);
  *(v4 + 88) = v7;
  v8 = *(v7 - 8);
  *(v4 + 96) = v8;
  *(v4 + 104) = *(v8 + 64);
  *(v4 + 112) = swift_task_alloc();
  v10 = *a1;
  v9 = a1[1];
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;
    v12 = &unk_2610C8A00;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *(v4 + 120) = v12;
  *(v4 + 128) = v11;
  sub_260F9C55C(v10, v9);

  return MEMORY[0x2822009F8](sub_26103E77C, 0, 0);
}

uint64_t sub_26103E77C()
{
  v1 = v0[15];
  v16 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v0[5] = v4;
  v9 = *(v6 + 88);
  v0[6] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v11 = *(v5 + 16);
  v11(boxed_opaque_existential_1, v7, v4);
  v11(v2, v7, v4);
  v12 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v0[17] = v13;
  *(v13 + 2) = v4;
  *(v13 + 3) = v9;
  *(v13 + 4) = v1;
  *(v13 + 5) = v16;
  (*(v5 + 32))(&v13[v12], v2, v4);
  *&v13[(v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = v8;
  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_26103E914;

  return sub_26103FD58((v0 + 2), &unk_2610C89F8, v13);
}

void sub_26103E914()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));

    v4 = *(v3 + 8);

    v4();
  }
}

uint64_t sub_26103EA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 136) = a4;
  *(v6 + 144) = a5;
  *(v6 + 128) = a6;
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  *(v6 + 104) = a1;
  *(v6 + 152) = *(a4 - 8);
  *(v6 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26103EB1C, 0, 0);
}

uint64_t sub_26103EB1C()
{
  v1 = v0[13];
  if (v1)
  {
    v12 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_26103ED38;

    return v12();
  }

  else
  {
    v4 = sub_260FA8F34(MEMORY[0x277D84F90]);
    v5 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2610BF400;
    *(inited + 32) = 0xD00000000000001ALL;
    v7 = inited + 32;
    v8 = MEMORY[0x277D839F8];
    *(inited + 40) = 0x80000002610D4BF0;
    *(inited + 72) = v8;
    *(inited + 80) = &protocol witness table for Double;
    *(inited + 48) = v5;
    v9 = sub_260FA8F34(inited);
    swift_setDeallocating();
    sub_260FA9980(v7, &qword_27FE63BA0, &qword_2610BED60);
    v10 = sub_26103ABE4(v4, v9);

    v11 = v0[1];

    return v11(v10);
  }
}

uint64_t sub_26103ED38(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_26103EF94;
  }

  else
  {
    *(v4 + 184) = a1;
    v5 = sub_26103EE60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26103EE60()
{
  v1 = v0[23];
  v2 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 0xD00000000000001ALL;
  v4 = inited + 32;
  v5 = MEMORY[0x277D839F8];
  *(inited + 40) = 0x80000002610D4BF0;
  *(inited + 72) = v5;
  *(inited + 80) = &protocol witness table for Double;
  *(inited + 48) = v2;
  v6 = sub_260FA8F34(inited);
  swift_setDeallocating();
  sub_260FA9980(v4, &qword_27FE63BA0, &qword_2610BED60);
  v7 = sub_26103ABE4(v1, v6);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_26103EF94()
{
  v38 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[15];
  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65930);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_2610BC794();
  v9 = sub_2610BCD64();

  if (os_log_type_enabled(v8, v9))
  {
    v35 = v0[22];
    v11 = v0[19];
    v10 = v0[20];
    v13 = v0[17];
    v12 = v0[18];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v14 = 136446466;
    v16 = (*(v12 + 8))(v13, v12);
    v18 = v17;
    (*(v11 + 8))(v10, v13);
    v19 = sub_260FA5970(v16, v18, &v37);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2114;
    v20 = v35;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_260F97000, v8, v9, "PASAnalytics timer failed to gather timer context for event %{public}s\n%{public}@", v14, 0x16u);
    sub_260FA9980(v15, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x2666F8720](v36, -1, -1);
    MEMORY[0x2666F8720](v14, -1, -1);
  }

  else
  {
    v23 = v0[19];
    v22 = v0[20];
    v24 = v0[17];

    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[22];
  v26 = sub_260FA8F34(MEMORY[0x277D84F90]);

  v27 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 0xD00000000000001ALL;
  v29 = inited + 32;
  v30 = MEMORY[0x277D839F8];
  *(inited + 40) = 0x80000002610D4BF0;
  *(inited + 72) = v30;
  *(inited + 80) = &protocol witness table for Double;
  *(inited + 48) = v27;
  v31 = sub_260FA8F34(inited);
  swift_setDeallocating();
  sub_260FA9980(v29, &qword_27FE63BA0, &qword_2610BED60);
  v32 = sub_26103ABE4(v26, v31);

  v33 = v0[1];

  return v33(v32);
}

uint64_t sub_26103F310()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v13 - v3;
  v5 = sub_2610BCC94();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = qword_27FE63820;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  v9 = qword_27FE65948;
  v10 = sub_2610412C4(v7, v8);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = v0;

  sub_261042434(0, 0, v4, &unk_2610C86F8, v11);
}

uint64_t sub_26103F468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_2610BC5D4();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v6 = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26103F55C, v6, 0);
}

uint64_t sub_26103F55C(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  sub_2610BC5C4();
  v5 = sub_26103F78C(v2);
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v1[5] = MEMORY[0x277D837D0];
  v1[6] = &protocol witness table for String;
  v1[2] = v5;
  v1[3] = v7;
  v8 = swift_task_alloc();
  v1[11] = v8;
  *v8 = v1;
  v8[1] = sub_26103F670;

  return sub_26103CC60((v1 + 2), 0xD000000000000018, 0x80000002610D4BD0);
}

uint64_t sub_26103F670()
{
  v1 = *v0;
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26103F78C(uint64_t a1)
{
  v47 = a1;
  v2 = sub_2610BC614();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE659F0, &qword_2610C89E0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v43 - v8;
  v10 = sub_2610BC5D4();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v43 - v21;
  v46 = v1;
  sub_260FA99E0(v1 + 80, v49);
  v23 = v50;
  v24 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v25 = *(v24 + 24);
  v43 = "AdditionalDataError";
  v25(v52, 0xD000000000000017, 0x80000002610D4B90, v23, v24);
  if (!v53)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    sub_260FA9980(v52, &qword_27FE63830, &qword_2610BE8E0);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_8;
  }

  v26 = swift_dynamicCast();
  (*(v11 + 56))(v9, v26 ^ 1u, 1, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_8:
    sub_260FA9980(v9, &qword_27FE659F0, &qword_2610C89E0);
LABEL_9:
    v29 = v46;
LABEL_10:
    v33 = MEMORY[0x277D837D0];
    sub_2610BC604();
    v32 = sub_2610BC5E4();
    v35 = v34;
    (*(v44 + 8))(v5, v45);
    sub_260FA99E0(v29 + 80, v49);
    v36 = v50;
    v37 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v53 = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
    (*(v11 + 16))(boxed_opaque_existential_1, v47, v10);
    (*(v37 + 8))(v52, 0xD000000000000017, v43 | 0x8000000000000000, v36, v37);
    sub_260FA9980(v52, &qword_27FE63830, &qword_2610BE8E0);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    sub_260FA99E0(v29 + 80, v49);
    v39 = v50;
    v40 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v53 = v33;
    v52[0] = v32;
    v52[1] = v35;
    v41 = *(v40 + 8);

    v41(v52, 0xD000000000000018, 0x80000002610D4BB0, v39, v40);
    sub_260FA9980(v52, &qword_27FE63830, &qword_2610BE8E0);
    goto LABEL_11;
  }

  (*(v11 + 32))(v22, v9, v10);
  sub_2610583C0(v19);
  sub_2610583C0(v15);
  v27 = sub_2610BC5A4();
  v28 = *(v11 + 8);
  v28(v15, v10);
  v28(v19, v10);
  if ((v27 & 1) == 0)
  {
    v28(v22, v10);
    goto LABEL_9;
  }

  v29 = v46;
  sub_260FA99E0(v46 + 80, v49);
  v31 = v50;
  v30 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  (*(v30 + 24))(v52, 0xD000000000000018, 0x80000002610D4BB0, v31, v30);
  v28(v22, v10);
  if (!v53)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    sub_260FA9980(v52, &qword_27FE63830, &qword_2610BE8E0);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    goto LABEL_10;
  }

  v32 = v48;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  return v32;
}

uint64_t sub_26103FD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[11] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26103FDF8);
}

uint64_t sub_26103FDF8()
{
  v28 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65930);
  sub_260FA99E0(v1, (v0 + 2));
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136446210;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v12 = sub_260FA5970(v9, v11, &v26);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_260F97000, v3, v4, "PASAnalytics send event %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  v13 = v0[10];
  v14 = v0[7];
  v15 = *(v13 + 24);
  v26 = *(v13 + 16);
  v27 = v15;

  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](*(v13 + 32), *(v13 + 40));
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  v16 = v14[3];
  v17 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v16);
  v18 = (*(v17 + 8))(v16, v17);
  MEMORY[0x2666F7380](v18);

  v19 = v27;
  v0[12] = v26;
  v0[13] = v19;
  if ((*(v13 + 64))())
  {
    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_2610400F8;
    v21 = v0[9];
    v23 = v0[7];
    v22 = v0[8];

    return sub_2610402E4(v23, v22, v21);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_2610400F8(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_261040210, v2, 0);
}

uint64_t sub_261040210()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *(v0[10] + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v4(v2, v3, sub_261042408, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2610402E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[21] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_261040384);
}

uint64_t sub_261040384()
{
  v1 = v0[17];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  sub_26103B51C(v4);
  v6 = v5;

  if (!v6)
  {
    v6 = sub_260FA8E30(MEMORY[0x277D84F90]);
  }

  v0[22] = v6;
  v7 = v0[18];
  if (v7)
  {
    v16 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[23] = v8;
    *v8 = v0;
    v8[1] = sub_261040580;

    return v16();
  }

  else
  {
    v10 = sub_260FA8E30(MEMORY[0x277D84F90]);

    v11 = v0[22];
    v12 = sub_26103C640();
    v13 = sub_26103A9B0(v11, v12);

    v14 = sub_26103A9B0(v10, v13);

    v15 = v0[1];

    return v15(v14);
  }
}

uint64_t sub_261040580(uint64_t a1)
{
  v4 = *v2;
  v4[24] = v1;

  v5 = v4[21];
  if (v1)
  {
    v6 = sub_2610407A4;
  }

  else
  {
    v4[25] = a1;
    v6 = sub_2610406BC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2610406BC()
{
  sub_26103B51C(v0[25]);
  v2 = v1;

  if (!v2)
  {
    v2 = sub_260FA8E30(MEMORY[0x277D84F90]);
  }

  v3 = v0[22];
  v4 = sub_26103C640();
  v5 = sub_26103A9B0(v3, v4);

  v6 = sub_26103A9B0(v2, v5);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_2610407A4()
{
  v32 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[17];
  v3 = sub_2610BC7B4();
  __swift_project_value_buffer(v3, qword_27FE65930);
  sub_260FA99E0(v2, (v0 + 9));
  v4 = v1;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v8 = 136446466;
    v11 = v0[12];
    v12 = v0[13];
    __swift_project_boxed_opaque_existential_1(v0 + 9, v11);
    v13 = (*(v12 + 8))(v11, v12);
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
    v16 = sub_260FA5970(v13, v15, &v31);

    *(v8 + 4) = v16;
    *(v8 + 12) = 2114;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v18;
    *v9 = v18;
    _os_log_impl(&dword_260F97000, v5, v6, "PASAnalytics failed to gather additional data for event %{public}s.\n%{public}@", v8, 0x16u);
    sub_260FA9980(v9, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2666F8720](v10, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  }

  v19 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE659E0, &unk_2610C89C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000002610D4B70;
  v0[14] = 0;
  v0[15] = 0xE000000000000000;
  v0[16] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  sub_2610BD0A4();
  v21 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v22 = sub_2610BC9D4();

  v23 = [v21 initWithString_];

  *(inited + 48) = v23;
  v24 = sub_260FA8E30(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &qword_27FE659E8, &unk_2610C89D0);

  v25 = v0[22];
  v26 = sub_26103C640();
  v27 = sub_26103A9B0(v25, v26);

  v28 = sub_26103A9B0(v24, v27);

  v29 = v0[1];

  return v29(v28);
}

void *PASAnalytics.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));
  return v0;
}

uint64_t PASAnalytics.__deallocating_deinit()
{
  PASAnalytics.deinit();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_261040BE4()
{
  sub_2610BD0A4();

  return 0;
}

unint64_t sub_261040C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2610BC984();

  return sub_261040CF4(a1, v6, a2, a3);
}

unint64_t sub_261040CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1, a2);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_2610BC9A4();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_261040E7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_260FA5FBC(a1, a2);
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
    sub_2610990C4();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_2610988A4(v6, v8);
  *v3 = v8;
  return v9;
}

unint64_t sub_261040F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (sub_2610BCBB4())
  {
    sub_2610BD124();
    v14 = sub_2610BD114();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  result = sub_2610BCBB4();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_2610BCB94())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2610BCFB4();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_261040C98(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

void *sub_261041200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PASAnalytics(0, a1, a2, a4);
  sub_26103C4F0(v6);
  v4 = swift_allocObject();
  v4[2] = 0x6C7070612E6D6F63;
  v4[3] = 0xE900000000000065;
  v4[4] = 0xD000000000000015;
  v4[5] = 0x80000002610C87E0;
  v4[6] = sub_26103C828;
  v4[7] = 0;
  v4[8] = sub_260FBF8A0;
  v4[9] = 0;
  sub_260F98E14(v6, (v4 + 10));
  return v4;
}

unint64_t sub_2610412C4(uint64_t a1, uint64_t a2)
{
  result = qword_27FE646F8;
  if (!qword_27FE646F8)
  {
    type metadata accessor for PASAnalyticsActor.PASAnalyticsActorType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE646F8);
  }

  return result;
}

uint64_t sub_26104133C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260FBF860;

  return sub_26103CB7C(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_261041410(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260FBF860;

  return sub_26103CF74(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2610414D8(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 56) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FBF860;

  return sub_26103D3F0(a1, v6, v4, v7, v1 + v5);
}

uint64_t sub_2610415C8(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 56) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[6];
  v8 = (v1 + ((*(*(v1[4] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_260FBF860;

  return sub_26103D970(a1, v6, v4, v7, v1 + v5, v9, v10);
}

uint64_t sub_2610416FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FBF864;

  return sub_26103DDAC(v2, v3);
}

uint64_t sub_261041794(uint64_t *a1, double a2)
{
  v6 = (*(*(*(v2 + 16) - 8) + 80) + 40) & ~*(*(*(v2 + 16) - 8) + 80);
  v7 = *(v2 + 32);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260FBF860;

  return sub_26103E62C(a1, v7, v2 + v6, a2);
}

uint64_t sub_26104187C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return sub_26103F468(a1, v4, v5, v6);
}

uint64_t dispatch thunk of PASAnalytics.addPersistentValue(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 200) + **(*v3 + 200));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of PASAnalytics.removePersistentValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 216) + **(*v2 + 216));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_260FBF860;

  return v8(a1, a2);
}

uint64_t dispatch thunk of PASAnalytics.send(event:)(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_260FBF860;

  return v6(a1);
}

uint64_t dispatch thunk of PASAnalytics.send(event:withAdditionalData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 248) + **(*v3 + 248));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return v10(a1, a2, a3);
}

{
  v10 = (*(*v3 + 256) + **(*v3 + 256));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return v10(a1, a2, a3);
}

uint64_t sub_2610421A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + ((*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_260FBF864;

  return sub_26103EA5C(v5, v6, v0 + v4, v2, v3, v7);
}

uint64_t sub_2610422C4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FBF864;

  return sub_261046704(v2);
}

uint64_t sub_261042370()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FBD298;

  return sub_26103DC00(v2, v3);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261042434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_260FA9918(a3, v26 - v11, &unk_27FE65800, &qword_2610BF910);
  v13 = sub_2610BCC94();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_260FA9980(v12, &unk_27FE65800, &qword_2610BF910);
  }

  else
  {
    sub_2610BCC84();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2610BCBF4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2610BCA44() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_261042734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_260FA9918(a3, v26 - v11, &unk_27FE65800, &qword_2610BF910);
  v13 = sub_2610BCC94();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_260FA9980(v12, &unk_27FE65800, &qword_2610BF910);
  }

  else
  {
    sub_2610BCC84();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2610BCBF4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2610BCA44() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65AB8, &qword_2610C91D8);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65AB8, &qword_2610C91D8);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_261042A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_260FA9918(a3, v26 - v11, &unk_27FE65800, &qword_2610BF910);
  v13 = sub_2610BCC94();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_260FA9980(v12, &unk_27FE65800, &qword_2610BF910);
  }

  else
  {
    sub_2610BCC84();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2610BCBF4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2610BCA44() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_261042D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_260FA9918(a3, v23 - v10, &unk_27FE65800, &qword_2610BF910);
  v12 = sub_2610BCC94();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_260FA9980(v11, &unk_27FE65800, &qword_2610BF910);
  }

  else
  {
    sub_2610BCC84();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2610BCBF4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2610BCA44() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);

      return v21;
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

  sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_261043008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_260FA9918(a3, v23 - v10, &unk_27FE65800, &qword_2610BF910);
  v12 = sub_2610BCC94();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_260FA9980(v11, &unk_27FE65800, &qword_2610BF910);
  }

  else
  {
    sub_2610BCC84();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2610BCBF4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2610BCA44() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65AB0, &qword_2610C91A0);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);

      return v21;
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

  sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65AB0, &qword_2610C91A0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t PASSourceFlowStepBase.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t PASSourceFlowStepBase.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate);
  v3(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentSheet, v2);
  v3(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentResetAlert, v2);
  v3(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentCancelAlert, v2);
  return v0;
}

void (*sub_261043444(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2610BC834();
  return sub_2610434E8;
}

void (*sub_261043504(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  swift_endAccess();
  return sub_261015184;
}

uint64_t sub_261043674@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__baseStepAnalyticsProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (v7)
  {
    return sub_260FA9F80(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9EB74(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260FA9F80(&v6, v5);
  swift_beginAccess();
  sub_261050010(v5, v3 + 16);
  swift_endAccess();
}

uint64_t sub_2610437A0()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics;
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics);
  }

  else
  {
    sub_261043674(v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v2 = (*(v4 + 8))(&type metadata for PASFlowStepAnalyticsEvent, &off_287388880, v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_261043898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v14 - v9;
  v11 = sub_2610BCC94();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  return sub_261042D5C(0, 0, v10, &unk_2610CD880, v12);
}

void sub_2610439BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v27 - v4;
  v6 = sub_2610BC5D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v11 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v27 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  if (v28)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v15 = sub_2610BC7B4();
    __swift_project_value_buffer(v15, qword_27FE65900);

    v16 = sub_2610BC794();
    v17 = sub_2610BCD64();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v1;
      v28 = v19;
      *v18 = 136446210;
      type metadata accessor for PASFlowStepBase(0);

      v20 = sub_2610BCA34();
      v22 = sub_260FA5970(v20, v21, &v28);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_260F97000, v16, v17, "%{public}s finished again", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x2666F8720](v19, -1, -1);
      MEMORY[0x2666F8720](v18, -1, -1);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v28) = 1;

    sub_2610BC854();
    v23 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer);
    if (v23)
    {

      sub_2610BC5B4();
      v24 = sub_2610BCC94();
      (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
      (*(v7 + 16))(v11, v14, v6);
      v25 = (*(v7 + 80) + 56) & ~*(v7 + 80);
      v26 = swift_allocObject();
      *(v26 + 2) = 0;
      *(v26 + 3) = 0;
      *(v26 + 5) = 0;
      *(v26 + 6) = 0;
      *(v26 + 4) = v23;
      (*(v7 + 32))(&v26[v25], v11, v6);

      sub_261042434(0, 0, v5, &unk_2610C8A88, v26);

      (*(v7 + 8))(v14, v6);
    }

    if (swift_conformsToProtocol2())
    {
      swift_getObjectType();

      PASFlowStepIntermediate.stepDidFinish()();
    }
  }
}

uint64_t (*sub_261043E68(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_261043F08;
}

void (*sub_261043F34(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2610BC834();
  return sub_261050278;
}

void (*sub_261043FF0(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentSheet;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  swift_endAccess();
  return sub_26105027C;
}

void (*sub_261044188(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2610BC834();
  return sub_261050278;
}

void (*sub_261044244(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentResetAlert;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  swift_endAccess();
  return sub_26105027C;
}

uint64_t sub_2610443C8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v3;
}

uint64_t sub_261044448(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

void (*sub_2610444B4(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2610BC834();
  return sub_261050278;
}

uint64_t sub_261044564(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t sub_2610445E0(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  (*(v4 + 16))(&v8 - v6, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC824();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void (*sub_261044718(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentCancelAlert;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  swift_endAccess();
  return sub_26105027C;
}

uint64_t sub_2610448D0()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceFlowStepBase resetFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 80);

  v6 = v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = sub_2610BC794();
    v8 = sub_2610BCD74();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_260F97000, v7, v8, "PASSourceFlowStepBase delegate is nil in resetFlow", v9, 2u);
      MEMORY[0x2666F8720](v9, -1, -1);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v11 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v13 = sub_26104E388(&qword_27FE65A48, type metadata accessor for PASSourceFlowStepBase, &protocol conformance descriptor for PASSourceFlowStepBase);
    v14 = *(v11 + 8);
    v20 = (*(v14 + 16) + **(v14 + 16));
    v15 = swift_task_alloc();
    *(v0 + 96) = v15;
    *v15 = v0;
    v15[1] = sub_261044C8C;
    v16 = *(v0 + 80);

    return v20(v16, v13, ObjectType, v14);
  }

  else
  {
    *(v0 + 104) = sub_2610437A0();
    *(v0 + 16) = sub_2610BD634();
    *(v0 + 40) = &type metadata for PASFlowStepAnalyticsEvent;
    *(v0 + 48) = &off_287388880;
    *(v0 + 24) = v18;
    *(v0 + 32) = 4;
    v19 = swift_task_alloc();
    *(v0 + 112) = v19;
    *v19 = v0;
    v19[1] = sub_261044EA8;

    return sub_261047124(v0 + 16, 0, 0);
  }
}

uint64_t sub_261044C8C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_261044DA4, 0, 0);
}

uint64_t sub_261044DA4()
{
  *(v0 + 104) = sub_2610437A0();
  *(v0 + 16) = sub_2610BD634();
  *(v0 + 40) = &type metadata for PASFlowStepAnalyticsEvent;
  *(v0 + 48) = &off_287388880;
  *(v0 + 24) = v1;
  *(v0 + 32) = 4;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_261044EA8;

  return sub_261047124(v0 + 16, 0, 0);
}

void sub_261044EA8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v4 = *(v3 + 8);

    v4();
  }
}

uint64_t sub_261045000(const char *a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);
  v5 = sub_2610BC794();
  v6 = sub_2610BCD54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_260F97000, v5, v6, a1, v7, 2u);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

void sub_261045144(const char *a1)
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  oslog = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, oslog, v3, a1, v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }
}

uint64_t sub_261045254()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceFlowStepBase cancelFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 80);

  v6 = v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = sub_2610BC794();
    v8 = sub_2610BCD74();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_260F97000, v7, v8, "PASSourceFlowStepBase delegate is nil in cancelFlow", v9, 2u);
      MEMORY[0x2666F8720](v9, -1, -1);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v11 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v13 = sub_26104E388(&qword_27FE65A48, type metadata accessor for PASSourceFlowStepBase, &protocol conformance descriptor for PASSourceFlowStepBase);
    v14 = *(v11 + 8);
    v20 = (*(v14 + 24) + **(v14 + 24));
    v15 = swift_task_alloc();
    *(v0 + 96) = v15;
    *v15 = v0;
    v15[1] = sub_261045610;
    v16 = *(v0 + 80);

    return v20(v16, v13, ObjectType, v14);
  }

  else
  {
    *(v0 + 104) = sub_2610437A0();
    *(v0 + 16) = sub_2610BD634();
    *(v0 + 40) = &type metadata for PASFlowStepAnalyticsEvent;
    *(v0 + 48) = &off_287388880;
    *(v0 + 24) = v18;
    *(v0 + 32) = 3;
    v19 = swift_task_alloc();
    *(v0 + 112) = v19;
    *v19 = v0;
    v19[1] = sub_261050270;

    return sub_261047124(v0 + 16, 0, 0);
  }
}

uint64_t sub_261045610()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_261045728, 0, 0);
}

uint64_t sub_261045728()
{
  *(v0 + 104) = sub_2610437A0();
  *(v0 + 16) = sub_2610BD634();
  *(v0 + 40) = &type metadata for PASFlowStepAnalyticsEvent;
  *(v0 + 48) = &off_287388880;
  *(v0 + 24) = v1;
  *(v0 + 32) = 3;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_261050270;

  return sub_261047124(v0 + 16, 0, 0);
}

uint64_t sub_26104582C()
{
  v1[8] = v0;
  sub_2610BCC74();
  v1[9] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](sub_2610458C4, v3, v2);
}

uint64_t sub_2610458C4()
{
  v17 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);

  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136446466;
    v0[7] = v5;
    type metadata accessor for PASFlowStepBase(0);

    v8 = sub_2610BCA34();
    v10 = sub_260FA5970(v8, v9, v16);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = sub_2610BD634();
    v13 = sub_260FA5970(v11, v12, v16);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_260F97000, v2, v3, "%{public}s prepareForPresentation %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v0[12] = sub_2610437A0();
  v0[13] = sub_2610BD634();
  v0[14] = v14;

  return MEMORY[0x2822009F8](sub_261045B20, 0, 0);
}

uint64_t sub_261045B20()
{
  v1 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 40) = &type metadata for PASFlowStepAnalyticsEvent;
  *(v0 + 48) = &off_287388880;
  *(v0 + 24) = v1;
  *(v0 + 32) = 1;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_261045BE8;

  return sub_261047124(v0 + 16, 0, 0);
}

void sub_261045BE8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
    v3 = v2[10];
    v4 = v2[11];

    MEMORY[0x2822009F8](sub_261045D28, v3, v4);
  }
}

uint64_t sub_261045D28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261045D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_261045DB0, v3, 0);
}

uint64_t sub_261045DB0(uint64_t a1)
{
  v18 = v1;
  v2 = v1[5];
  sub_2610BC574();
  if (*(v2 + 144) == 1)
  {
    v4 = v1[5];
    v5 = v3 - *(v4 + 112);
    *(v4 + 136) = v5;
    *(v2 + 144) = 0;
    v16 = (*(v4 + 152) + **(v4 + 152));
    v6 = swift_task_alloc();
    v1[6] = v6;
    *v6 = v1;
    v6[1] = sub_261046030;
    v7.n128_f64[0] = v5;

    return v16(v1 + 2, v7);
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v9 = sub_2610BC7B4();
    __swift_project_value_buffer(v9, qword_27FE65900);

    v10 = sub_2610BC794();
    v11 = sub_2610BCD64();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v1[5];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_260FA5970(*(v12 + 120), *(v12 + 128), &v17);
      _os_log_impl(&dword_260F97000, v10, v11, "PASTimer %{public}s already stopped", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x2666F8720](v14, -1, -1);
      MEMORY[0x2666F8720](v13, -1, -1);
    }

    v15 = v1[1];

    return v15();
  }
}

uint64_t sub_261046030()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_26102F524, v1, 0);
}

uint64_t PASTargetFlowStepBase.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_26104E0E4(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t PASTargetFlowStepBase.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);
  return v0;
}

uint64_t sub_2610462C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_26104632C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_261050280;
}

unint64_t sub_2610463CC()
{
  sub_260FA99E0(v0 + 80, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 24))(v9, 0xD000000000000017, 0x80000002610D4C10, v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  sub_260FA9918(v9, v6, &qword_27FE63830, &qword_2610BE8E0);
  if (!v7)
  {
    sub_260FA9980(v6, &qword_27FE63830, &qword_2610BE8E0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65A00, &unk_2610C8A18);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = sub_260FA8E30(MEMORY[0x277D84F90]);
    goto LABEL_6;
  }

  v3 = v5;
LABEL_6:
  sub_260FA9980(v9, &qword_27FE63830, &qword_2610BE8E0);
  return v3;
}

uint64_t sub_261046500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  *(v7 + 120) = a6;
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  *(v7 + 64) = a3;
  *(v7 + 56) = a7;
  if (a1)
  {
    v8 = a1;
    v9 = a2;
    v10 = swift_allocObject();
    a2 = v9;
    v11 = v10;
    a1 = v8;
    *(v11 + 16) = v8;
    *(v11 + 24) = v9;
    v12 = &unk_2610C8A00;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *(v7 + 88) = v12;
  *(v7 + 96) = v11;
  sub_260F9C55C(a1, a2);

  return MEMORY[0x2822009F8](sub_2610465C8, 0, 0);
}

uint64_t sub_2610465C8()
{
  v1 = *(v0 + 56);
  *(v0 + 40) = &type metadata for PASFlowStepAnalyticsEvent;
  *(v0 + 48) = &off_287388880;
  v2 = *(v0 + 120);
  *(v0 + 32) = v2;
  v3 = swift_allocObject();
  *(v0 + 104) = v3;
  v4 = *(v0 + 72);
  *(v0 + 16) = v4;
  v5 = *(&v4 + 1);
  v6 = v4;
  *(v3 + 16) = *(v0 + 88);
  *(v3 + 32) = v4;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;
  sub_26104FE88(v4, *(&v4 + 1), v2);
  sub_26104FE88(v6, v5, v2);
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_261044EA8;

  return sub_261047124(v0 + 16, &unk_2610C9220, v3);
}

uint64_t sub_261046704(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2610467F4;

  return v4(v1 + 16);
}

uint64_t sub_2610467F4()
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
    v6 = *(v2 + 16);
    v7 = *(v3 + 8);

    return v7(v6);
  }
}

uint64_t sub_261046934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  *(v6 + 136) = a6;
  *(v6 + 168) = a5;
  *(v6 + 120) = a3;
  *(v6 + 128) = a4;
  *(v6 + 104) = a1;
  *(v6 + 112) = a2;
  return MEMORY[0x2822009F8](sub_261046960, 0, 0);
}

uint64_t sub_261046960()
{
  v1 = v0[13];
  if (v1)
  {
    v12 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_261046B60;

    return v12();
  }

  else
  {
    v4 = sub_260FA8F34(MEMORY[0x277D84F90]);
    v5 = v0[17];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2610BF400;
    *(inited + 32) = 0xD00000000000001ALL;
    v7 = inited + 32;
    v8 = MEMORY[0x277D839F8];
    *(inited + 40) = 0x80000002610D4BF0;
    *(inited + 72) = v8;
    *(inited + 80) = &protocol witness table for Double;
    *(inited + 48) = v5;
    v9 = sub_260FA8F34(inited);
    swift_setDeallocating();
    sub_260FA9980(v7, &qword_27FE63BA0, &qword_2610BED60);
    v10 = sub_26103ABE4(v4, v9);

    v11 = v0[1];

    return v11(v10);
  }
}

uint64_t sub_261046B60(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_261046DB0;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_261046C88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261046C88()
{
  v1 = v0[20];
  v2 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 0xD00000000000001ALL;
  v4 = inited + 32;
  v5 = MEMORY[0x277D839F8];
  *(inited + 40) = 0x80000002610D4BF0;
  *(inited + 72) = v5;
  *(inited + 80) = &protocol witness table for Double;
  *(inited + 48) = v2;
  v6 = sub_260FA8F34(inited);
  swift_setDeallocating();
  sub_260FA9980(v4, &qword_27FE63BA0, &qword_2610BED60);
  v7 = sub_26103ABE4(v1, v6);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_261046DB0()
{
  v36 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 168);
  v5 = sub_2610BC7B4();
  __swift_project_value_buffer(v5, qword_27FE65930);
  sub_26104FE88(v3, v2, v4);
  v6 = v1;
  v7 = sub_2610BC794();
  v8 = sub_2610BCD64();
  sub_26104E3D0(v3, v2, v4);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 168);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    v13 = 0xD000000000000012;
    *v10 = 136446466;
    v14 = "PASFlowStepPresented";
    v15 = ".invalidContinuation - ";
    v16 = 0xD000000000000013;
    v17 = "PASFlowStepReset";
    v18 = 0xD000000000000010;
    if (v9 == 3)
    {
      v18 = 0xD000000000000014;
    }

    else
    {
      v17 = "PASAnalyticsStepNameKey";
    }

    if (v9 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    if (v9)
    {
      v13 = 0xD000000000000014;
      v14 = "PASFlowStepCancelled";
    }

    if (v9 <= 1)
    {
      v19 = v13;
    }

    else
    {
      v19 = v16;
    }

    if (v9 <= 1)
    {
      v20 = v14;
    }

    else
    {
      v20 = v15;
    }

    v21 = *(v0 + 152);
    v22 = sub_260FA5970(v19, v20 | 0x8000000000000000, &v35);

    *(v10 + 4) = v22;
    *(v10 + 12) = 2114;
    v23 = v21;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v24;
    *v11 = v24;
    _os_log_impl(&dword_260F97000, v7, v8, "PASAnalytics timer failed to gather timer context for event %{public}s\n%{public}@", v10, 0x16u);
    sub_260FA9980(v11, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x2666F8720](v12, -1, -1);
    MEMORY[0x2666F8720](v10, -1, -1);
  }

  v25 = *(v0 + 152);
  v26 = sub_260FA8F34(MEMORY[0x277D84F90]);

  v27 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 0xD00000000000001ALL;
  v29 = inited + 32;
  v30 = MEMORY[0x277D839F8];
  *(inited + 40) = 0x80000002610D4BF0;
  *(inited + 72) = v30;
  *(inited + 80) = &protocol witness table for Double;
  *(inited + 48) = v27;
  v31 = sub_260FA8F34(inited);
  swift_setDeallocating();
  sub_260FA9980(v29, &qword_27FE63BA0, &qword_2610BED60);
  v32 = sub_26103ABE4(v26, v31);

  v33 = *(v0 + 8);

  return v33(v32);
}

uint64_t sub_261047124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[11] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_2610471C4);
}

uint64_t sub_2610471C4()
{
  v28 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65930);
  sub_260FA99E0(v1, (v0 + 2));
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136446210;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v12 = sub_260FA5970(v9, v11, &v26);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_260F97000, v3, v4, "PASAnalytics send event %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  v13 = v0[10];
  v14 = v0[7];
  v15 = *(v13 + 24);
  v26 = *(v13 + 16);
  v27 = v15;

  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](*(v13 + 32), *(v13 + 40));
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  v16 = v14[3];
  v17 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v16);
  v18 = (*(v17 + 8))(v16, v17);
  MEMORY[0x2666F7380](v18);

  v19 = v27;
  v0[12] = v26;
  v0[13] = v19;
  if ((*(v13 + 64))())
  {
    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_2610474C4;
    v21 = v0[9];
    v23 = v0[7];
    v22 = v0[8];

    return sub_261048CCC(v23, v22, v21);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_2610474C4(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_2610475DC, v2, 0);
}

uint64_t sub_2610475DC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *(v0[10] + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v4(v2, v3, sub_261050274, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2610476AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[11] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26104774C);
}

uint64_t sub_26104774C()
{
  v28 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65930);
  sub_260FA99E0(v1, (v0 + 2));
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136446210;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v12 = sub_260FA5970(v9, v11, &v26);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_260F97000, v3, v4, "PASAnalytics send event %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  v13 = v0[10];
  v14 = v0[7];
  v15 = *(v13 + 24);
  v26 = *(v13 + 16);
  v27 = v15;

  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](*(v13 + 32), *(v13 + 40));
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  v16 = v14[3];
  v17 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v16);
  v18 = (*(v17 + 8))(v16, v17);
  MEMORY[0x2666F7380](v18);

  v19 = v27;
  v0[12] = v26;
  v0[13] = v19;
  if ((*(v13 + 64))())
  {
    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_261047A4C;
    v21 = v0[9];
    v23 = v0[7];
    v22 = v0[8];

    return sub_261048CCC(v23, v22, v21);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_261047A4C(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_261047B64, v2, 0);
}

uint64_t sub_261047B64()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *(v0[10] + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v4(v2, v3, sub_261050274, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_261047C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[11] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_261047CD4);
}

uint64_t sub_261047CD4()
{
  v28 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65930);
  sub_260FA99E0(v1, (v0 + 2));
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136446210;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v12 = sub_260FA5970(v9, v11, &v26);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_260F97000, v3, v4, "PASAnalytics send event %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  v13 = v0[10];
  v14 = v0[7];
  v15 = *(v13 + 24);
  v26 = *(v13 + 16);
  v27 = v15;

  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](*(v13 + 32), *(v13 + 40));
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  v16 = v14[3];
  v17 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v16);
  v18 = (*(v17 + 8))(v16, v17);
  MEMORY[0x2666F7380](v18);

  v19 = v27;
  v0[12] = v26;
  v0[13] = v19;
  if ((*(v13 + 64))())
  {
    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_261047FD4;
    v21 = v0[9];
    v23 = v0[7];
    v22 = v0[8];

    return sub_2610490A4(v23, v22, v21);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_261047FD4(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_2610480EC, v2, 0);
}

uint64_t sub_2610480EC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *(v0[10] + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v4(v2, v3, sub_261050274, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2610481BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[11] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26104825C);
}

uint64_t sub_26104825C()
{
  v28 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65930);
  sub_260FA99E0(v1, (v0 + 2));
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136446210;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v12 = sub_260FA5970(v9, v11, &v26);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_260F97000, v3, v4, "PASAnalytics send event %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  v13 = v0[10];
  v14 = v0[7];
  v15 = *(v13 + 24);
  v26 = *(v13 + 16);
  v27 = v15;

  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](*(v13 + 32), *(v13 + 40));
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  v16 = v14[3];
  v17 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v16);
  v18 = (*(v17 + 8))(v16, v17);
  MEMORY[0x2666F7380](v18);

  v19 = v27;
  v0[12] = v26;
  v0[13] = v19;
  if ((*(v13 + 64))())
  {
    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_26104855C;
    v21 = v0[9];
    v23 = v0[7];
    v22 = v0[8];

    return sub_261048CCC(v23, v22, v21);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_26104855C(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_261048674, v2, 0);
}

uint64_t sub_261048674()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *(v0[10] + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v4(v2, v3, sub_261050274, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_261048744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[11] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_2610487E4);
}

uint64_t sub_2610487E4()
{
  v28 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65930);
  sub_260FA99E0(v1, (v0 + 2));
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136446210;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v12 = sub_260FA5970(v9, v11, &v26);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_260F97000, v3, v4, "PASAnalytics send event %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  v13 = v0[10];
  v14 = v0[7];
  v15 = *(v13 + 24);
  v26 = *(v13 + 16);
  v27 = v15;

  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](*(v13 + 32), *(v13 + 40));
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  v16 = v14[3];
  v17 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v16);
  v18 = (*(v17 + 8))(v16, v17);
  MEMORY[0x2666F7380](v18);

  v19 = v27;
  v0[12] = v26;
  v0[13] = v19;
  if ((*(v13 + 64))())
  {
    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_261048AE4;
    v21 = v0[9];
    v23 = v0[7];
    v22 = v0[8];

    return sub_261048CCC(v23, v22, v21);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_261048AE4(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_261048BFC, v2, 0);
}

uint64_t sub_261048BFC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *(v0[10] + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v4(v2, v3, sub_2610500C8, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_261048CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[21] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_261048D6C);
}

uint64_t sub_261048D6C()
{
  v1 = v0[17];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  sub_26103B51C(v4);
  v6 = v5;

  if (!v6)
  {
    v6 = sub_260FA8E30(MEMORY[0x277D84F90]);
  }

  v0[22] = v6;
  v7 = v0[18];
  if (v7)
  {
    v16 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[23] = v8;
    *v8 = v0;
    v8[1] = sub_261048F68;

    return v16();
  }

  else
  {
    v10 = sub_260FA8E30(MEMORY[0x277D84F90]);

    v11 = v0[22];
    v12 = sub_2610463CC();
    v13 = sub_26103A9B0(v11, v12);

    v14 = sub_26103A9B0(v10, v13);

    v15 = v0[1];

    return v15(v14);
  }
}

uint64_t sub_261048F68(uint64_t a1)
{
  v4 = *v2;
  v4[24] = v1;

  v5 = v4[21];
  if (v1)
  {
    v6 = sub_261050294;
  }

  else
  {
    v4[25] = a1;
    v6 = sub_261050290;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2610490A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[21] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_261049144);
}

uint64_t sub_261049144()
{
  v1 = v0[17];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  sub_26103B51C(v4);
  v6 = v5;

  if (!v6)
  {
    v6 = sub_260FA8E30(MEMORY[0x277D84F90]);
  }

  v0[22] = v6;
  v7 = v0[18];
  if (v7)
  {
    v16 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[23] = v8;
    *v8 = v0;
    v8[1] = sub_261049340;

    return v16();
  }

  else
  {
    v10 = sub_260FA8E30(MEMORY[0x277D84F90]);

    v11 = v0[22];
    v12 = sub_2610463CC();
    v13 = sub_26103A9B0(v11, v12);

    v14 = sub_26103A9B0(v10, v13);

    v15 = v0[1];

    return v15(v14);
  }
}

uint64_t sub_261049340(uint64_t a1)
{
  v4 = *v2;
  v4[24] = v1;

  v5 = v4[21];
  if (v1)
  {
    v6 = sub_261049564;
  }

  else
  {
    v4[25] = a1;
    v6 = sub_26104947C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26104947C()
{
  sub_26103B51C(v0[25]);
  v2 = v1;

  if (!v2)
  {
    v2 = sub_260FA8E30(MEMORY[0x277D84F90]);
  }

  v3 = v0[22];
  v4 = sub_2610463CC();
  v5 = sub_26103A9B0(v3, v4);

  v6 = sub_26103A9B0(v2, v5);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_261049564()
{
  v32 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[17];
  v3 = sub_2610BC7B4();
  __swift_project_value_buffer(v3, qword_27FE65930);
  sub_260FA99E0(v2, (v0 + 9));
  v4 = v1;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v8 = 136446466;
    v11 = v0[12];
    v12 = v0[13];
    __swift_project_boxed_opaque_existential_1(v0 + 9, v11);
    v13 = (*(v12 + 8))(v11, v12);
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
    v16 = sub_260FA5970(v13, v15, &v31);

    *(v8 + 4) = v16;
    *(v8 + 12) = 2114;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v18;
    *v9 = v18;
    _os_log_impl(&dword_260F97000, v5, v6, "PASAnalytics failed to gather additional data for event %{public}s.\n%{public}@", v8, 0x16u);
    sub_260FA9980(v9, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2666F8720](v10, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  }

  v19 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE659E0, &unk_2610C89C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000002610D4B70;
  v0[14] = 0;
  v0[15] = 0xE000000000000000;
  v0[16] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  sub_2610BD0A4();
  v21 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v22 = sub_2610BC9D4();

  v23 = [v21 initWithString_];

  *(inited + 48) = v23;
  v24 = sub_260FA8E30(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &qword_27FE659E8, &unk_2610C89D0);

  v25 = v0[22];
  v26 = sub_2610463CC();
  v27 = sub_26103A9B0(v25, v26);

  v28 = sub_26103A9B0(v24, v27);

  v29 = v0[1];

  return v29(v28);
}

unint64_t PASFlowStepError.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 32);
  if (v3 <= 1)
  {
    if (*(v0 + 32))
    {
      sub_2610BCF84();

      v4 = 0xD000000000000027;
    }

    else
    {
      sub_2610BCF84();

      v4 = 0xD000000000000024;
    }
  }

  else if (v3 == 2)
  {
    sub_2610BCF84();

    v4 = 0xD00000000000002ELL;
  }

  else
  {
    if (v3 != 3)
    {
      return 0xD000000000000018;
    }

    sub_2610BCF84();

    v4 = 0xD000000000000021;
  }

  v6 = v4;
  MEMORY[0x2666F7380](v2, v1);
  return v6;
}

unint64_t sub_261049AB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v1;
  v2 = PASFlowStepError.description.getter();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v4;
}

uint64_t sub_261049BC4(uint64_t a1)
{
  v2 = sub_26104E5B0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261049C00(uint64_t a1)
{
  v2 = sub_26104E5B0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASSourceFlowStep._delegate.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26104E230(a1, a2, a3, a4);

  return swift_unknownObjectRelease();
}

void (*PASSourceFlowStep._delegate.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = (*(a3 + 16))(a2, a3);
  if (v9)
  {
    v11 = *(v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  *v8 = v9;
  v8[1] = v11;
  return sub_261049D64;
}

uint64_t sub_261049DB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v8 = a1[1];
  v9 = swift_unknownObjectRetain();
  a5(v9, v8, v7, v6);

  return swift_unknownObjectRelease();
}

uint64_t PASTargetFlowStep._delegate.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26104E2DC(a1, a2, a3, a4);

  return swift_unknownObjectRelease();
}

void (*PASTargetFlowStep._delegate.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = (*(a3 + 16))(a2, a3);
  if (v9)
  {
    v11 = *(v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  *v8 = v9;
  v8[1] = v11;
  return sub_261049F14;
}

void sub_261049F2C(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[1];
  v6 = (*a1)[3];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    v9 = swift_unknownObjectRetain();
    a3(v9, v5, v7, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    a3(v8, v5, v7, v6);
  }

  swift_unknownObjectRelease();

  free(v4);
}

Swift::Void __swiftcall PASFlowStepIntermediate.stepDidFinish()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = *(v1 + 8);
  v7 = *(v6 + 16);
  if (v7())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v8 = sub_2610BC7B4();
    __swift_project_value_buffer(v8, qword_27FE65900);
    swift_unknownObjectRetain();
    v9 = sub_2610BC794();
    v10 = sub_2610BCD74();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v19 = v10;
      v11 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v11 = 136446210;
      swift_unknownObjectRetain();
      v12 = sub_2610BCA34();
      v14 = sub_260FA5970(v12, v13, &v20);

      *(v11 + 4) = v14;
      _os_log_impl(&dword_260F97000, v9, v19, "%{public}s delegate is nil in setFinished", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x2666F8720](v18, -1, -1);
      MEMORY[0x2666F8720](v11, -1, -1);
    }
  }

  if ((v7)(v5, v6))
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(v3, v4, ObjectType, v16);
    swift_unknownObjectRelease();
  }
}

unint64_t sub_26104A1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000017;
  v7 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 72) = v7;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0x80000002610D4EF0;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_26104FE88(a1, a2, v3);
  v8 = sub_260FA8F34(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &qword_27FE63BA0, &qword_2610BED60);
  return v8;
}

unint64_t sub_26104A2F8()
{
  v1 = 0xD000000000000014;
  v2 = *(v0 + 16);
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000010;
  if (v2 == 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (!*(v0 + 16))
  {
    v1 = 0xD000000000000012;
  }

  if (*(v0 + 16) <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t PASFlowStepBase.__allocating_init()()
{
  v0 = swift_allocObject();
  PASFlowStepBase.init()();
  return v0;
}

char *PASFlowStepBase.init()()
{
  v1 = v0;
  v2 = sub_2610BC5D4();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v38 - v12;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v43 = 0;
  sub_2610BC804();
  (*(v10 + 32))(v1 + v14, v13, v9);
  if (MEMORY[0x277D84F90] >> 62 && sub_2610BD0E4())
  {
    v15 = sub_26100978C(MEMORY[0x277D84F90]);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_cancellables) = v15;
  v39 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer;
  *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer) = 0;
  v16 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__baseStepAnalyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65450, &unk_2610C7CC0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *(v1 + v16) = v17;
  v18 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics;
  *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics) = 0;
  v19 = sub_2610437A0();
  v20 = sub_2610BD634();
  v22 = v21;
  v23 = sub_2610BCC94();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  v24 = qword_27FE63820;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_27FE65948;
  v26 = sub_26104E388(&qword_27FE646F8, type metadata accessor for PASAnalyticsActor.PASAnalyticsActorType, &protocol conformance descriptor for PASAnalyticsActor.PASAnalyticsActorType);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;
  *(v27 + 32) = v19;
  *(v27 + 40) = v20;
  *(v27 + 48) = v22;
  *(v27 + 56) = 0;

  sub_261042434(0, 0, v8, &unk_2610C8B98, v27);

  v28 = *(v1 + v18);

  v29 = sub_2610BD634();
  v31 = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  *(v32 + 24) = v29;
  *(v32 + 32) = v31;
  *(v32 + 40) = 2;

  v33 = v40;
  sub_2610BC5B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65958, &qword_2610C8BB0);
  v34 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v34 + 136) = 0;
  *(v34 + 144) = 1;
  *(v34 + 168) = 0;
  sub_2610BC574();
  v36 = v35;

  (*(v41 + 8))(v33, v42);
  *(v34 + 112) = v36;
  *(v34 + 120) = 0xD000000000000013;
  *(v34 + 128) = 0x80000002610D4D60;
  *(v34 + 152) = &unk_2610C8BA8;
  *(v34 + 160) = v32;
  *(v1 + v39) = v34;

  return v1;
}

uint64_t sub_26104A8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v8 = sub_2610BCC34();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26104A994, 0, 0);
}

uint64_t sub_26104A994()
{
  v17 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[21] = __swift_project_value_buffer(v1, qword_27FE65900);

  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[14];
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446466;
    v0[13] = v4;
    type metadata accessor for PASFlowStepBase(0);

    v8 = sub_2610BCA34();
    v10 = sub_260FA5970(v8, v9, &v16);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2050;
    *(v6 + 14) = v5;
    _os_log_impl(&dword_260F97000, v2, v3, "%{public}s will timeout after %{public}llu seconds", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v12 = v0[15];
  if (is_mul_ok(v12, 0x3B9ACA00uLL))
  {
    v13 = 1000000000 * v12;
    v14 = swift_task_alloc();
    v0[22] = v14;
    *v14 = v0;
    v14[1] = sub_26104ABB0;
    v11 = v13;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](v11);
}

uint64_t sub_26104ABB0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_26104AD00, 0, 0);
}

uint64_t sub_26104AD00()
{
  v47 = v0;
  v1 = *(v0 + 184);
  sub_2610BCCD4();
  if (v1)
  {
    *(v0 + 200) = v1;
    *(v0 + 56) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    if (swift_dynamicCast())
    {

      v3 = sub_2610BC794();
      v4 = sub_2610BCD84();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 112);
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v46[0] = v7;
        *v6 = 136446210;
        *(v0 + 88) = v5;
        type metadata accessor for PASFlowStepBase(0);

        v8 = sub_2610BCA34();
        v10 = sub_260FA5970(v8, v9, v46);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_260F97000, v3, v4, "%{public}s timeout cancelled", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v7);
        MEMORY[0x2666F8720](v7, -1, -1);
        MEMORY[0x2666F8720](v6, -1, -1);
      }

      (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

      v11 = *(v0 + 8);

      __asm { BRAA            X1, X16 }
    }

    *(v0 + 64) = v1;
    v14 = v1;
    if (swift_dynamicCast())
    {
      v15 = *(v0 + 16);
      v16 = *(v0 + 24);
      v17 = *(v0 + 32);
      v18 = *(v0 + 40);
      v19 = *(v0 + 48);
      if (v19 == 4 && !(v16 | v15 | v17 | v18))
      {

        v33 = sub_2610BC794();
        v34 = sub_2610BCD64();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = *(v0 + 112);
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v46[0] = v37;
          *v36 = 136446210;
          *(v0 + 80) = v35;
          type metadata accessor for PASFlowStepBase(0);

          v38 = sub_2610BCA34();
          v40 = sub_260FA5970(v38, v39, v46);

          *(v36 + 4) = v40;
          _os_log_impl(&dword_260F97000, v33, v34, "%{public}s timed out.", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v37);
          MEMORY[0x2666F8720](v37, -1, -1);
          MEMORY[0x2666F8720](v36, -1, -1);
        }

        v41 = *(v0 + 128);
        sub_260FC3450();
        *(v0 + 208) = swift_allocError();
        *v42 = 0u;
        *(v42 + 16) = 0u;
        *(v42 + 32) = 4;
        v45 = v41 + *v41;
        v43 = swift_task_alloc();
        *(v0 + 216) = v43;
        *v43 = v0;
        v43[1] = sub_26104BC5C;
LABEL_18:

        __asm { BRAA            X1, X16 }
      }

      sub_26102880C(v15, v16, v17, v18, v19);
    }

    v20 = v1;
    v21 = sub_2610BC794();
    v22 = sub_2610BCD64();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 112);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46[0] = v26;
      *v24 = 136446466;
      *(v0 + 72) = v23;
      type metadata accessor for PASFlowStepBase(0);

      v27 = sub_2610BCA34();
      v29 = sub_260FA5970(v27, v28, v46);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2114;
      v30 = v1;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v31;
      *v25 = v31;
      _os_log_impl(&dword_260F97000, v21, v22, "%{public}s timeout error: %{public}@", v24, 0x16u);
      sub_260FA9980(v25, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x2666F8720](v26, -1, -1);
      MEMORY[0x2666F8720](v24, -1, -1);
    }

    v45 = (*(v0 + 128) + **(v0 + 128));
    v32 = swift_task_alloc();
    *(v0 + 224) = v32;
    *v32 = v0;
    v32[1] = sub_26104BDE0;
    goto LABEL_18;
  }

  sub_2610BCC74();
  *(v0 + 192) = sub_2610BCC64();
  v13 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26104B3F8, v13, v12);
}

uint64_t sub_26104B3F8()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *(v0 + 50) = *(v0 + 49);

  return MEMORY[0x2822009F8](sub_26104B4B8, 0, 0);
}

uint64_t sub_26104B4B8()
{
  v54 = v0;
  if (*(v0 + 50) == 1)
  {

    v1 = sub_2610BC794();
    v2 = sub_2610BCD84();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 112);
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v53[0] = v5;
      *v4 = 136446210;
      *(v0 + 96) = v3;
      type metadata accessor for PASFlowStepBase(0);

      v6 = sub_2610BCA34();
      v8 = sub_260FA5970(v6, v7, v53);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_260F97000, v1, v2, "%{public}s timeout was not cancelled when the step was finished", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
      MEMORY[0x2666F8720](v5, -1, -1);
      MEMORY[0x2666F8720](v4, -1, -1);
    }

LABEL_9:

    v20 = *(v0 + 8);

    return v20();
  }

  sub_260FC3450();
  v9 = swift_allocError();
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 4;
  swift_willThrow();
  *(v0 + 200) = v9;
  *(v0 + 56) = v9;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (swift_dynamicCast())
  {

    v12 = sub_2610BC794();
    v13 = sub_2610BCD84();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 112);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v53[0] = v16;
      *v15 = 136446210;
      *(v0 + 88) = v14;
      type metadata accessor for PASFlowStepBase(0);

      v17 = sub_2610BCA34();
      v19 = sub_260FA5970(v17, v18, v53);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_260F97000, v12, v13, "%{public}s timeout cancelled", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x2666F8720](v16, -1, -1);
      MEMORY[0x2666F8720](v15, -1, -1);
    }

    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    goto LABEL_9;
  }

  *(v0 + 64) = v9;
  v22 = v9;
  if (swift_dynamicCast())
  {
    v23 = *(v0 + 16);
    v24 = *(v0 + 24);
    v25 = *(v0 + 32);
    v26 = *(v0 + 40);
    v27 = *(v0 + 48);
    if (v27 == 4 && !(v24 | v23 | v25 | v26))
    {

      v42 = sub_2610BC794();
      v43 = sub_2610BCD64();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = *(v0 + 112);
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v53[0] = v46;
        *v45 = 136446210;
        *(v0 + 80) = v44;
        type metadata accessor for PASFlowStepBase(0);

        v47 = sub_2610BCA34();
        v49 = sub_260FA5970(v47, v48, v53);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_260F97000, v42, v43, "%{public}s timed out.", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v46);
        MEMORY[0x2666F8720](v46, -1, -1);
        MEMORY[0x2666F8720](v45, -1, -1);
      }

      v50 = *(v0 + 128);
      v9 = swift_allocError();
      *(v0 + 208) = v9;
      *v51 = 0u;
      *(v51 + 16) = 0u;
      *(v51 + 32) = 4;
      v52 = (v50 + *v50);
      v40 = swift_task_alloc();
      *(v0 + 216) = v40;
      *v40 = v0;
      v41 = sub_26104BC5C;
      goto LABEL_19;
    }

    sub_26102880C(v23, v24, v25, v26, v27);
  }

  v28 = v9;
  v29 = sub_2610BC794();
  v30 = sub_2610BCD64();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v0 + 112);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v53[0] = v34;
    *v32 = 136446466;
    *(v0 + 72) = v31;
    type metadata accessor for PASFlowStepBase(0);

    v35 = sub_2610BCA34();
    v37 = sub_260FA5970(v35, v36, v53);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2114;
    v38 = v9;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 14) = v39;
    *v33 = v39;
    _os_log_impl(&dword_260F97000, v29, v30, "%{public}s timeout error: %{public}@", v32, 0x16u);
    sub_260FA9980(v33, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x2666F8720](v34, -1, -1);
    MEMORY[0x2666F8720](v32, -1, -1);
  }

  v52 = (*(v0 + 128) + **(v0 + 128));
  v40 = swift_task_alloc();
  *(v0 + 224) = v40;
  *v40 = v0;
  v41 = sub_26104BDE0;
LABEL_19:
  v40[1] = v41;

  return v52(v9);
}

uint64_t sub_26104BC5C()
{
  v1 = *(*v0 + 208);

  return MEMORY[0x2822009F8](sub_26104BD74, 0, 0);
}

uint64_t sub_26104BD74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26104BDE0()
{

  return MEMORY[0x2822009F8](sub_26104BEDC, 0, 0);
}

uint64_t sub_26104BEDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PASFlowStepBase.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PASFlowStepBase.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_26104C0DC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PASFlowStepBase(0);
  result = sub_2610BC7F4();
  *a1 = result;
  return result;
}

uint64_t PASTargetFlowStepBase.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t (*sub_26104C254(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_261050280;
}

uint64_t sub_26104C2F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PASTargetFlowStep._delegate.getter(a1, WitnessTable);
}

uint64_t (*sub_26104C374(uint64_t ***a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  WitnessTable = swift_getWitnessTable();
  v5[4] = PASTargetFlowStep._delegate.modify(v5, a2, WitnessTable);
  return sub_261050284;
}

void (*sub_26104C410(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2610BC834();
  return sub_261050278;
}

uint64_t sub_26104C4B4()
{
  v4 = (*(*v0 + 256) + **(*v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FBF860;

  return v4();
}

uint64_t sub_26104C5EC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PASTargetFlowStepBase(0);
  result = sub_2610BCF94();
  *a2 = result;
  return result;
}

uint64_t sub_26104C694@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *a4 = v6;
  return result;
}

uint64_t sub_26104C724(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t sub_26104C794(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t sub_26104C808(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v17 - v13;
  v15 = *(v7 + 16);
  v15(&v17 - v13, a1, v6);
  v15(v11, v14, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC824();
  swift_endAccess();
  return (*(v7 + 8))(v14, v6);
}

uint64_t sub_26104C9AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  swift_allocObject();
  v6 = a3(a1, a2);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_26104CA10()
{
  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate);
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentSheet;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v5(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentResetAlert, v2);
  v3 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentCancelAlert;

  return (v5)(v3, v2);
}

uint64_t PASSourceFlowStepBase.__deallocating_deinit()
{
  PASSourceFlowStepBase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26104CBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = v5 + *a5;
  swift_beginAccess();
  *(v7 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_26104CC14(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_261050280;
}

void sub_26104CCB4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_26104CD3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PASSourceFlowStep._delegate.getter(a1, WitnessTable);
}

uint64_t sub_26104CDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  WitnessTable = swift_getWitnessTable();
  a6(a1, a2, a3, WitnessTable);

  return swift_unknownObjectRelease();
}

uint64_t (*sub_26104CE30(uint64_t ***a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  WitnessTable = swift_getWitnessTable();
  v5[4] = PASSourceFlowStep._delegate.modify(v5, a2, WitnessTable);
  return sub_26104CECC;
}

void sub_26104CED0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_26104CF18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v1;
}

uint64_t sub_26104CF8C(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

void (*sub_26104CFFC(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2610BC834();
  return sub_261050278;
}

uint64_t sub_26104D0A0()
{
  v4 = (*(*v0 + 256) + **(*v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return v4();
}

uint64_t sub_26104D1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v20 - v15;
  v17 = sub_2610BCC94();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v9;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a3;

  return sub_261042D5C(0, 0, v16, a7, v18);
}

uint64_t sub_26104D2FC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PASSourceFlowStepBase(0);
  result = sub_2610BCF94();
  *a2 = result;
  return result;
}

uint64_t sub_26104D340(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26105026C;

  return v6(a1);
}

uint64_t sub_26104D438(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26104D530;

  return v6(a1);
}

uint64_t sub_26104D530()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26104D628(uint64_t (*a1)(void))
{
  a1();

  return sub_2610BD634();
}

uint64_t sub_26104D664(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_260FB6DB4;

  return sub_261046500(v7, v8, a2, v9, v10, v11, a4);
}

uint64_t sub_26104D738(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_260FB6F34;

  return sub_261046934(a1, a2, v8, v9, v10, a4);
}

uint64_t sub_26104D800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = *a5;
  *(v5 + 88) = *(a5 + 16);
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v6 = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26104D8A8, v6, 0);
}

uint64_t sub_26104D8A8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  *(v0 + 40) = &type metadata for PASFlowStepAnalyticsEvent;
  *(v0 + 48) = &off_287388880;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  v3 = *(v0 + 88);
  *(v0 + 32) = v3;
  sub_26104FE88(v1, v2, v3);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_260FDC73C;

  return sub_261047124(v0 + 16, 0, 0);
}

uint64_t sub_26104D974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v8 = *a5;
  v9 = a5[1];
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_260FBF860;

  return sub_261045D8C(v8, v9, a6);
}

uint64_t sub_26104DA3C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_26104DB30;

  return v5(v2 + 32);
}

uint64_t sub_26104DB30()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_26104DC44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v21 - v9;
  v11 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentSheet;
  v22 = 0;
  sub_2610BC804();
  v13 = *(v7 + 32);
  v13(v3 + v12, v10, v6);
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentResetAlert;
  v22 = 0;
  sub_2610BC804();
  v13(v3 + v14, v10, v6);
  v15 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentCancelAlert;
  v22 = 0;
  sub_2610BC804();
  v13(v3 + v15, v10, v6);
  if (!a1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v16 = sub_2610BC7B4();
    __swift_project_value_buffer(v16, qword_27FE65900);
    v17 = sub_2610BC794();
    v18 = sub_2610BCD74();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_260F97000, v17, v18, "PASSourceFlowStepBase delegate is nil in init", v19, 2u);
      MEMORY[0x2666F8720](v19, -1, -1);
    }
  }

  swift_beginAccess();
  *(v11 + 8) = a2;
  swift_unknownObjectWeakAssign();
  PASFlowStepBase.init()();
  return v3;
}

uint64_t sub_26104DEC0(uint64_t a1)
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
  v10[1] = sub_260FBF860;

  return sub_26104A8D0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_26104DF94(uint64_t a1)
{
  v4 = *(sub_2610BC5D4() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260FBF860;

  return sub_26104D974(a1, v6, v7, v8, v1 + 5, v1 + v5);
}

uint64_t sub_26104E0E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  *(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (!a1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v7 = sub_2610BC7B4();
    __swift_project_value_buffer(v7, qword_27FE65900);
    v8 = sub_2610BC794();
    v9 = sub_2610BCD74();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_260F97000, v8, v9, "PASTargetFlowStepBase delegate is nil in init", v10, 2u);
      MEMORY[0x2666F8720](v10, -1, -1);
    }
  }

  swift_beginAccess();
  *(v6 + 8) = a2;
  swift_unknownObjectWeakAssign();
  PASFlowStepBase.init()();
  return v3;
}

uint64_t sub_26104E230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a4;
    swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v4 = 0;
    }

    a4 = v6;
    a3 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a4 + 24);

  return v8(v4, v7, a3);
}

uint64_t sub_26104E2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a4;
    swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v4 = 0;
    }

    a4 = v6;
    a3 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a4 + 24);

  return v8(v4, v7, a3);
}

uint64_t sub_26104E388(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26104E3D0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_26104E3E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return sub_26104D800(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_26104E4B4(uint64_t *a1, double a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF860;

  return sub_26104D664(a1, v6, v2 + 24, a2);
}

unint64_t sub_26104E578(void *a1)
{
  a1[1] = sub_26104E5B0();
  a1[2] = sub_26104E604();
  result = sub_26104E658();
  a1[3] = result;
  return result;
}

unint64_t sub_26104E5B0()
{
  result = qword_27FE65A50;
  if (!qword_27FE65A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65A50);
  }

  return result;
}

unint64_t sub_26104E604()
{
  result = qword_27FE65A58;
  if (!qword_27FE65A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65A58);
  }

  return result;
}

unint64_t sub_26104E658()
{
  result = qword_27FE65A60;
  if (!qword_27FE65A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65A60);
  }

  return result;
}

uint64_t sub_26104E6AC(uint64_t a1)
{
  result = sub_26104E388(&qword_27FE65A68, type metadata accessor for PASTargetFlowStepBase, &protocol conformance descriptor for PASTargetFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26104E724(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26104E75C(uint64_t a1)
{
  result = sub_26104E388(&qword_27FE65A70, type metadata accessor for PASTargetFlowStepBase, &protocol conformance descriptor for PASTargetFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26104E7B4(uint64_t a1)
{
  result = sub_26104E388(&qword_27FE65A48, type metadata accessor for PASSourceFlowStepBase, &protocol conformance descriptor for PASSourceFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26104E80C(uint64_t a1)
{
  result = sub_26104E388(&qword_27FE65A78, type metadata accessor for PASSourceFlowStepBase, &protocol conformance descriptor for PASSourceFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t keypath_get_45Tm@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X3>, uint64_t *a4@<X8>)
{
  result = a3(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t keypath_get_53Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_set_54Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a1[1];
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup16PASFlowStepErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t sub_26104E974(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26104E9BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_26104EA04(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t dispatch thunk of PASFlowStepDelegate.stepDidRequestReset(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBF860;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASFlowStepDelegate.stepDidRequestCancel(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBF860;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASSourceFlowStepDelegate.stepDidEndFlow(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF860;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASTargetFlowStepDelegate.performAIDASignIn(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBCD00;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASTargetFlowStepDelegate.stepDidEndFlow(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF860;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASFlowStep.prepareForPresentation()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6DB4;

  return v7(a1, a2);
}

void sub_26104F268(uint64_t a1)
{
  sub_260FDD7E4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PASFlowStepBase.prepareForPresentation()()
{
  v4 = (*(*v0 + 256) + **(*v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FBF860;

  return v4();
}

void sub_26104F698(uint64_t a1)
{
  sub_260FDD7E4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PASSourceFlowStepBase.resetFlow()()
{
  v4 = (*(*v0 + 504) + **(*v0 + 504));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FBF860;

  return v4();
}

uint64_t dispatch thunk of PASSourceFlowStepBase.cancelFlow()()
{
  v4 = (*(*v0 + 528) + **(*v0 + 528));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FBF860;

  return v4();
}

uint64_t sub_26104FDEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26104FE34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_26104FE88(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_26104FEA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return sub_26104D438(a1, v4);
}

uint64_t sub_26104FF58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return sub_26104DA3C(a1, v4);
}

uint64_t sub_261050010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63AD0, qword_2610C7BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2610500D0()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260FBD298;

  return sub_26104D738(v2, v3, (v0 + 4), v4);
}

uint64_t sub_261050190(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return sub_26104D340(a1, v4);
}

id PASExtensionAuthenticateExtrasProtocolXPCInterface.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 interfaceWithProtocol_];
  v2 = [v0 interfaceWithProtocol_];
  [v1 setInterface:v2 forSelector:sel_fetchExtrasWithCompletion_ argumentIndex:0 ofReply:1];

  return v1;
}

id PASExtensionInfoProviderXPCInterface.getter()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

uint64_t PASExtensionInfoProviderError.hashValue.getter()
{
  sub_2610BD514();
  MEMORY[0x2666F7E40](0);
  return sub_2610BD574();
}

unint64_t sub_261050424()
{
  result = qword_27FE65AC0;
  if (!qword_27FE65AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65AC0);
  }

  return result;
}

unint64_t sub_261050478(void *a1)
{
  a1[1] = sub_2610504B0();
  a1[2] = sub_261050504();
  result = sub_261050558();
  a1[3] = result;
  return result;
}

unint64_t sub_2610504B0()
{
  result = qword_27FE65AC8;
  if (!qword_27FE65AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65AC8);
  }

  return result;
}

unint64_t sub_261050504()
{
  result = qword_27FE65AD0;
  if (!qword_27FE65AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65AD0);
  }

  return result;
}

unint64_t sub_261050558()
{
  result = qword_27FE65AD8;
  if (!qword_27FE65AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65AD8);
  }

  return result;
}

unint64_t sub_2610505AC()
{
  result = qword_27FE65AE0;
  if (!qword_27FE65AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65AE0);
  }

  return result;
}

unint64_t sub_261050600()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000036;
  *(inited + 56) = 0x80000002610D4F90;
  v2 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v2;
}

uint64_t sub_2610506D8(uint64_t a1)
{
  v2 = sub_2610504B0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261050714(uint64_t a1)
{
  v2 = sub_2610504B0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_261050774(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2610507BC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_261050808@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &unk_27FE63AB0, qword_2610C95B0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE63AB0, qword_2610C95B0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260FA1D7C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_261053F84(v5, v3 + 16);
  swift_endAccess();
}

uint64_t sub_26105094C()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASExtensionLocator allIdentities querying for extensions", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_261050808(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_261050AD0;

  return sub_2610AF8B4(0xD00000000000002ELL, 0x80000002610D5010);
}

uint64_t sub_261050AD0(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_261050BD0, 0, 0);
}

uint64_t sub_261050BD0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_261050C38()
{
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_261050CC4;

  return sub_26105092C();
}

uint64_t sub_261050CC4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_261050DF8, 0, 0);
}

uint64_t sub_261050DF8()
{
  v1 = v0[23];
  v2 = *(v1 + 16);
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2610BD044();
    v3 = v1 + 32;
    do
    {
      sub_260FA99E0(v3, (v0 + 2));
      sub_260FA99E0((v0 + 2), (v0 + 7));
      v4 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
      type metadata accessor for PASExtensionHandle();
      v5 = swift_allocObject();
      v6 = sub_2610BC774();
      v0[15] = v6;
      v0[16] = &off_28738BA98;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
      v8 = *(*(v6 - 8) + 16);
      v8(boxed_opaque_existential_1, v4, v6);
      sub_260FA99E0((v0 + 12), v5 + 16);
      v0[20] = v6;
      v0[21] = &off_28738BA98;
      v9 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      v8(v9, boxed_opaque_existential_1, v6);
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
      v10 = swift_allocObject();
      sub_260F98E14((v0 + 17), v10 + 16);
      type metadata accessor for PASExtensionProxy();
      v11 = swift_allocObject();
      *(v11 + 16) = &unk_2610C9598;
      *(v11 + 24) = v10;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
      *(v5 + 56) = v11;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      sub_2610BD024();
      sub_2610BD054();
      sub_2610BD064();
      sub_2610BD034();
      v3 += 40;
      --v2;
    }

    while (v2);

    v12 = v15;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v13 = v0[1];

  return v13(v12);
}