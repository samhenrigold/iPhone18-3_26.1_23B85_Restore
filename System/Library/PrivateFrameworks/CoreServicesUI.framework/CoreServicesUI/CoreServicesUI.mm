uint64_t sub_2478B46C0()
{
  type metadata accessor for CSUIBindableIO();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27EE57188 = v0;
  return result;
}

uint64_t sub_2478B46FC()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t *sub_2478B4734()
{
  if (qword_27EE55260 != -1)
  {
    swift_once();
  }

  return &qword_27EE57188;
}

uint64_t sub_2478B4784()
{
  if (qword_27EE55260 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2478B47E0@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AD0, &qword_2478DA8E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_2478D878C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AD8, &unk_2478DA8E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2478DA8C0;
  v10 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v11 = v10;
  sub_2478BC41C(inited);
  swift_setDeallocating();
  sub_2478BC610(inited + 32);
  sub_2478D885C();

  if (!v1)
  {
    v13 = v17;
    sub_2478D876C();
    (*(v6 + 8))(v8, v5);
    v14 = sub_2478D88FC();
    v15 = *(v14 - 8);
    result = (*(v15 + 48))(v4, 1, v14);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v15 + 32))(v13, v4, v14);
    }
  }

  return result;
}

uint64_t sub_2478B4A1C(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE0, &qword_2478DA8F8);
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  sub_2478D889C();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478B4B18, v2, 0);
}

uint64_t sub_2478B4B18()
{
  v1 = *(v0 + 208);
  v2 = [*(v0 + 168) bundleURL];
  sub_2478D887C();

  v3 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v4 = sub_2478BB7B4(v1, 0);
  *(v0 + 216) = v4;
  v15 = v4;
  v7 = sub_2478D88DC();
  v8 = [v7 _typeRecord];
  *(v0 + 224) = v8;

  if (v8)
  {
    v9 = [objc_opt_self() defaultWorkspace];
    *(v0 + 232) = v9;
    if (v9)
    {
      v10 = v9;
      v12 = *(v0 + 192);
      v11 = *(v0 + 200);
      v13 = *(v0 + 184);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 248;
      *(v0 + 24) = sub_2478B4E74;
      swift_continuation_init();
      *(v0 + 136) = v13;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 112));
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
      sub_2478D8B0C();
      (*(v12 + 32))(boxed_opaque_existential_0Tm, v11, v13);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_2478B50C4;
      *(v0 + 104) = &block_descriptor;
      [v10 setDefaultHandlerForTypeRecord:v8 toApplicationRecord:v16 completionHandler:?];
      (*(v12 + 8))(boxed_opaque_existential_0Tm, v13);
      v9 = (v0 + 16);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v9);
  }

  else
  {
    type metadata accessor for CSUIError(0);
    *(v0 + 152) = 6;
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);
    sub_2478D87FC();
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2478B4E74()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 176);
  if (v2)
  {
    v4 = sub_2478B502C;
  }

  else
  {
    v4 = sub_2478B4F94;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2478B4F94()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2478B502C(uint64_t a1)
{
  v2 = v1[29];
  v4 = v1[27];
  v3 = v1[28];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

void sub_2478B50C4(uint64_t a1, char a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE0, &qword_2478DA8F8);
    sub_2478D8B1C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE0, &qword_2478DA8F8);
    sub_2478D8B2C();
  }
}

uint64_t sub_2478B5168(uint64_t a1, uint64_t a2)
{
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;

  return MEMORY[0x2822009F8](sub_2478B51F8, v2, 0);
}

uint64_t sub_2478B51F8()
{
  v1 = *(v0 + 96);
  v2 = sub_2478D886C();
  if (v1)
  {
    v3 = [*(v0 + 96) bundleURL];
    *(v0 + 72) = sub_2478D889C();
    __swift_allocate_boxed_opaque_existential_0Tm((v0 + 48));
    sub_2478D887C();

    sub_2478BC84C((v0 + 48), (v0 + 16));
    v4 = *(v0 + 40);
    if (v4)
    {
      v5 = __swift_project_boxed_opaque_existential_0Tm((v0 + 16), *(v0 + 40));
      v6 = *(v4 - 8);
      v7 = swift_task_alloc();
      (*(v6 + 16))(v7, v5, v4);
      v1 = sub_2478D8E4C();
      (*(v6 + 8))(v7, v4);

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    }

    else
    {
      v1 = 0;
    }
  }

  sub_2478BCD34(0, &unk_27EE54CD0, 0x277CCACA8);
  v8 = sub_2478D8C0C();
  sub_2478D89EC();
  v9 = sub_2478D89BC();

  *(v0 + 80) = 0;
  v10 = [v2 setResourceValue:v1 forKey:v9 error:v0 + 80];

  swift_unknownObjectRelease();
  v11 = *(v0 + 80);
  if (v10)
  {
    v16 = *(v0 + 8);
    v12 = v11;
    v13 = v16;
  }

  else
  {
    v14 = v11;
    sub_2478D881C();

    swift_willThrow();
    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_2478B54B0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2478B5554(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CSUIBindableIO();

  return MEMORY[0x2822005F8](v3, a2);
}

unint64_t sub_2478B558C(void *a1)
{
  sub_2478D8CEC();

  v2 = [a1 description];
  v3 = sub_2478D89EC();
  v5 = v4;

  MEMORY[0x24C1AD190](v3, v5);

  MEMORY[0x24C1AD190](41, 0xE100000000000000);
  return 0xD000000000000016;
}

id sub_2478B564C(uint64_t a1)
{
  v1 = [objc_opt_self() bindableWithDocumentProxy_];

  return v1;
}

id sub_2478B569C(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = sub_2478D889C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = a5;
  v18 = [v17 URL];
  if (v18)
  {
    v29 = a4;
    v19 = a3;
    v20 = a2;
    v21 = v18;
    sub_2478D887C();

    (*(v11 + 32))(v16, v14, v10);
    sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
    LODWORD(v21) = [v17 isContentManaged];
    v22 = [v17 sourceAuditToken];
    v23 = v17;
    v24 = v22[1];
    v30[0] = *v22;
    v30[1] = v24;
    v31 = 0;
    v25 = sub_2478BF830(v16, a1, v21, v30, v20, v19, v29);
    (*(v11 + 8))(v16, v10);
  }

  else
  {

    sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    *(v26 + 24) = a4;

    v25 = sub_2478C0C5C(a2, sub_2478BC894, v26);
  }

  return v25;
}

BOOL sub_2478B58FC(void *a1)
{
  v2 = sub_2478D889C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AF8, &qword_2478DA910);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  v9 = [a1 URL];
  if (v9)
  {
    sub_2478D887C();

    (*(v3 + 32))(v8, v5, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v8, 1, 1, v2);
  }

  sub_2478BC950(v8, &qword_27EE54AF8, &qword_2478DA910);
  return v9 != 0;
}

void *sub_2478B5A98(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AF8, &qword_2478DA910);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = [a1 URL];
  if (v5)
  {
    v6 = v5;
    sub_2478D887C();

    v7 = sub_2478D889C();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    v8 = &unk_285981208;
  }

  else
  {
    v9 = sub_2478D889C();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v8 = &unk_285981238;
  }

  sub_2478BC950(v4, &qword_27EE54AF8, &qword_2478DA910);
  return v8;
}

char *sub_2478B5BE0(void *a1)
{
  v3 = sub_2478D889C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2478D878C();
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AF8, &qword_2478DA910);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = [a1 URL];
  if (v13)
  {
    v27 = v7;
    v14 = v13;
    sub_2478D887C();

    (*(v4 + 56))(v12, 0, 1, v3);
    sub_2478BC950(v12, &qword_27EE54AF8, &qword_2478DA910);
    result = [a1 URL];
    if (!result)
    {
      __break(1u);
      goto LABEL_16;
    }

    v16 = result;
    sub_2478D887C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AD8, &unk_2478DA8E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2478DA8C0;
    v18 = *MEMORY[0x277CBE8D8];
    *(inited + 32) = *MEMORY[0x277CBE8D8];
    v19 = v18;
    sub_2478BC41C(inited);
    swift_setDeallocating();
    sub_2478BC610(inited + 32);
    sub_2478D885C();
    if (v1)
    {

      (*(v4 + 8))(v6, v3);
      return v6;
    }

    (*(v4 + 8))(v6, v3);
    v6 = sub_2478D877C();
    v26 = v25;
    (*(v28 + 8))(v9, v27);
    if (v26)
    {
      return v6;
    }
  }

  else
  {
    (*(v4 + 56))(v12, 1, 1, v3);
    sub_2478BC950(v12, &qword_27EE54AF8, &qword_2478DA910);
  }

  v20 = [a1 typeIdentifier];
  if (!v20)
  {
    goto LABEL_11;
  }

  result = [a1 typeIdentifier];
  if (result)
  {
    v21 = result;
    v22 = [objc_opt_self() typeRecordWithIdentifier_];

    if (v22)
    {
      v23 = [v22 localizedDescription];

      if (v23)
      {
        v6 = sub_2478D89EC();

        return v6;
      }
    }

LABEL_11:
    type metadata accessor for CSUIError(0);
    v6 = v24;
    v29 = 5;
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);
    sub_2478D87FC();
    swift_willThrow();
    return v6;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2478B6058(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2478D88FC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_2478D889C();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AF8, &qword_2478DA910);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AD0, &qword_2478DA8E0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478B6244, 0, 0);
}

uint64_t sub_2478B6244()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = *(v3 + 56);
  *(v0 + 176) = v5;
  *(v0 + 184) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v2);
  v6 = [v4 typeIdentifier];
  if (v6)
  {
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    v9 = v6;
    sub_2478D89EC();

    sub_2478D890C();
    sub_2478BC950(v8, &qword_27EE54AD0, &qword_2478DA8E0);
    sub_2478BC9B0(v7, v8, &qword_27EE54AD0, &qword_2478DA8E0);
  }

  v10 = [*(v0 + 40) URL];
  if (v10)
  {
    v11 = v10;
    sub_2478D887C();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(v0 + 168);
  v14 = *(v0 + 152);
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v17 = *(v0 + 48);
  v18 = *(v0 + 56);
  (*(*(v0 + 80) + 56))(v16, v12, 1, *(v0 + 72));
  sub_2478BC9B0(v16, v15, &qword_27EE54AF8, &qword_2478DA910);
  sub_2478BDAA4(v13, v14, &qword_27EE54AD0, &qword_2478DA8E0);
  v19 = *(v18 + 48);
  *(v0 + 192) = v19;
  *(v0 + 200) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v13) = v19(v14, 1, v17);
  sub_2478BC950(v14, &qword_27EE54AD0, &qword_2478DA8E0);
  if (v13 != 1)
  {
    goto LABEL_9;
  }

  v20 = *(v0 + 112);
  v21 = *(v0 + 72);
  v22 = *(v0 + 80);
  sub_2478BDAA4(*(v0 + 128), v20, &qword_27EE54AF8, &qword_2478DA910);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_2478BC950(*(v0 + 112), &qword_27EE54AF8, &qword_2478DA910);
LABEL_9:
    v23 = *(v0 + 192);
    v24 = *(v0 + 136);
    v25 = *(v0 + 48);
    sub_2478BDAA4(*(v0 + 168), v24, &qword_27EE54AD0, &qword_2478DA8E0);
    if (v23(v24, 1, v25) == 1)
    {
      v26 = *(v0 + 168);
      v27 = *(v0 + 128);
      sub_2478BC950(*(v0 + 136), &qword_27EE54AD0, &qword_2478DA8E0);
      type metadata accessor for CSUIError(0);
      *(v0 + 24) = 6;
      sub_2478BC694(MEMORY[0x277D84F90]);
      sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);
      sub_2478D87FC();
      swift_willThrow();
      sub_2478BC950(v27, &qword_27EE54AF8, &qword_2478DA910);
      sub_2478BC950(v26, &qword_27EE54AD0, &qword_2478DA8E0);

      v28 = *(v0 + 8);

      return v28();
    }

    else
    {
      v30 = *(v0 + 128);
      v31 = *(v0 + 104);
      v32 = *(v0 + 72);
      v33 = *(v0 + 80);
      (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 136), *(v0 + 48));
      sub_2478BDAA4(v30, v31, &qword_27EE54AF8, &qword_2478DA910);
      if ((*(v33 + 48))(v31, 1, v32) == 1)
      {
        sub_2478BC950(*(v0 + 104), &qword_27EE54AF8, &qword_2478DA910);
        if (qword_27EE55260 != -1)
        {
          swift_once();
        }

        v41 = (*(*qword_27EE57188 + 96) + **(*qword_27EE57188 + 96));
        v34 = swift_task_alloc();
        *(v0 + 256) = v34;
        *v34 = v0;
        v34[1] = sub_2478B7298;
        v35 = *(v0 + 32);
        v36 = *(v0 + 64);
        v37 = v41;
      }

      else
      {
        (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 104), *(v0 + 72));
        if (qword_27EE55260 != -1)
        {
          swift_once();
        }

        v42 = (*(*qword_27EE57188 + 104) + **(*qword_27EE57188 + 104));
        v40 = swift_task_alloc();
        *(v0 + 240) = v40;
        *v40 = v0;
        v40[1] = sub_2478B7018;
        v36 = *(v0 + 88);
        v35 = 0;
        v37 = v42;
      }

      return v37(v36, v35);
    }
  }

  (*(*(v0 + 80) + 32))(*(v0 + 96), *(v0 + 112), *(v0 + 72));
  if (qword_27EE55260 != -1)
  {
    swift_once();
  }

  v38 = qword_27EE57188;
  *(v0 + 208) = qword_27EE57188;
  v39 = (*v38 + 88) & 0xFFFFFFFFFFFFLL | 0x8EB4000000000000;
  *(v0 + 216) = *(*v38 + 88);
  *(v0 + 224) = v39;

  return MEMORY[0x2822009F8](sub_2478B6A0C, v38, 0);
}

uint64_t sub_2478B6A0C()
{
  (*(v0 + 216))(*(v0 + 96));
  *(v0 + 232) = 0;

  return MEMORY[0x2822009F8](sub_2478B6AA4, 0, 0);
}

uint64_t sub_2478B6AA4()
{
  v1 = v0[22];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[6];
  (*(v0[10] + 8))(v0[12], v0[9]);
  sub_2478BC950(v2, &qword_27EE54AD0, &qword_2478DA8E0);
  v1(v3, 0, 1, v4);
  sub_2478BC9B0(v3, v2, &qword_27EE54AD0, &qword_2478DA8E0);
  v5 = v0[24];
  v6 = v0[17];
  v7 = v0[6];
  sub_2478BDAA4(v0[21], v6, &qword_27EE54AD0, &qword_2478DA8E0);
  if (v5(v6, 1, v7) == 1)
  {
    v8 = v0[21];
    v9 = v0[16];
    sub_2478BC950(v0[17], &qword_27EE54AD0, &qword_2478DA8E0);
    type metadata accessor for CSUIError(0);
    v0[3] = 6;
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);
    sub_2478D87FC();
    swift_willThrow();
    sub_2478BC950(v9, &qword_27EE54AF8, &qword_2478DA910);
    sub_2478BC950(v8, &qword_27EE54AD0, &qword_2478DA8E0);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[16];
    v13 = v0[13];
    v14 = v0[9];
    v15 = v0[10];
    (*(v0[7] + 32))(v0[8], v0[17], v0[6]);
    sub_2478BDAA4(v12, v13, &qword_27EE54AF8, &qword_2478DA910);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_2478BC950(v0[13], &qword_27EE54AF8, &qword_2478DA910);
      if (qword_27EE55260 != -1)
      {
        swift_once();
      }

      v21 = (*(*qword_27EE57188 + 96) + **(*qword_27EE57188 + 96));
      v16 = swift_task_alloc();
      v0[32] = v16;
      *v16 = v0;
      v16[1] = sub_2478B7298;
      v17 = v0[4];
      v18 = v0[8];
      v19 = v21;
    }

    else
    {
      (*(v0[10] + 32))(v0[11], v0[13], v0[9]);
      if (qword_27EE55260 != -1)
      {
        swift_once();
      }

      v22 = (*(*qword_27EE57188 + 104) + **(*qword_27EE57188 + 104));
      v20 = swift_task_alloc();
      v0[30] = v20;
      *v20 = v0;
      v20[1] = sub_2478B7018;
      v18 = v0[11];
      v17 = 0;
      v19 = v22;
    }

    return v19(v18, v17);
  }
}

uint64_t sub_2478B7018()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2478B7644;
  }

  else
  {
    v2 = sub_2478B712C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2478B712C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  if (qword_27EE55260 != -1)
  {
    swift_once();
  }

  v5 = (*(*qword_27EE57188 + 96) + **(*qword_27EE57188 + 96));
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_2478B7298;
  v2 = v0[8];
  v3 = v0[4];

  return v5(v2, v3);
}

uint64_t sub_2478B7298()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_2478B77B0;
  }

  else
  {
    v2 = sub_2478B73AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2478B73AC()
{
  v1 = v0[21];
  v2 = v0[16];
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_2478BC950(v2, &qword_27EE54AF8, &qword_2478DA910);
  sub_2478BC950(v1, &qword_27EE54AD0, &qword_2478DA8E0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2478B74F4()
{
  v1 = v0[21];
  v2 = v0[16];
  (*(v0[10] + 8))(v0[12], v0[9]);
  sub_2478BC950(v2, &qword_27EE54AF8, &qword_2478DA910);
  sub_2478BC950(v1, &qword_27EE54AD0, &qword_2478DA8E0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2478B7644()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v5 + 8))(v3, v4);
  sub_2478BC950(v2, &qword_27EE54AF8, &qword_2478DA910);
  sub_2478BC950(v1, &qword_27EE54AD0, &qword_2478DA8E0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2478B77B0()
{
  v1 = v0[21];
  v2 = v0[16];
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_2478BC950(v2, &qword_27EE54AF8, &qword_2478DA910);
  sub_2478BC950(v1, &qword_27EE54AD0, &qword_2478DA8E0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2478B7900(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2478D889C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478B79CC, 0, 0);
}

uint64_t sub_2478B79CC()
{
  v1 = [*(v0 + 40) URL];
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
    v6 = v1;
    sub_2478D887C();

    (*(v5 + 32))(v3, v2, v4);
    if (qword_27EE55260 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 32);
    v12 = (*(*qword_27EE57188 + 104) + **(*qword_27EE57188 + 104));
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    v8[1] = sub_2478B7C4C;
    v9 = *(v0 + 72);

    return v12(v9, v7);
  }

  else
  {
    type metadata accessor for CSUIError(0);
    *(v0 + 24) = 3;
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);
    sub_2478D87FC();
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2478B7C4C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2478B7DE8;
  }

  else
  {
    v2 = sub_2478B7D60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2478B7D60()
{
  (*(v0[7] + 8))(v0[9], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2478B7DE8()
{
  (*(v0[7] + 8))(v0[9], v0[6]);

  v1 = v0[1];

  return v1();
}

id sub_2478B7E6C()
{
  v1 = [objc_opt_self() bindableWithDocumentProxy_];

  return v1;
}

BOOL sub_2478B7EBC()
{
  v1 = sub_2478D889C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AF8, &qword_2478DA910);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  v8 = [*v0 URL];
  if (v8)
  {
    sub_2478D887C();

    (*(v2 + 32))(v7, v4, v1);
    (*(v2 + 56))(v7, 0, 1, v1);
  }

  else
  {
    (*(v2 + 56))(v7, 1, 1, v1);
  }

  sub_2478BC950(v7, &qword_27EE54AF8, &qword_2478DA910);
  return v8 != 0;
}

void *sub_2478B805C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AF8, &qword_2478DA910);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = [*v0 URL];
  if (v4)
  {
    v5 = v4;
    sub_2478D887C();

    v6 = sub_2478D889C();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    v7 = &unk_285981208;
  }

  else
  {
    v8 = sub_2478D889C();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    v7 = &unk_285981238;
  }

  sub_2478BC950(v3, &qword_27EE54AF8, &qword_2478DA910);
  return v7;
}

uint64_t sub_2478B81BC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2478BDB0C;

  return sub_2478B6058(a1, v4);
}

uint64_t sub_2478B8258(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2478BDB0C;

  return sub_2478B7900(a1, v4);
}

unint64_t sub_2478B82F4()
{
  v1 = *v0;
  sub_2478D8CEC();

  v2 = [v1 description];
  v3 = sub_2478D89EC();
  v5 = v4;

  MEMORY[0x24C1AD190](v3, v5);

  MEMORY[0x24C1AD190](41, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_2478B83E8(uint64_t a1, uint64_t a2)
{
  sub_2478D8CEC();

  MEMORY[0x24C1AD190](a1, a2);
  MEMORY[0x24C1AD190](41, 0xE100000000000000);
  return 0xD000000000000017;
}

id sub_2478B8478(uint64_t a1)
{
  v1 = sub_2478D89BC();
  v2 = [objc_opt_self() bindableWithTypeIdentifier_];

  return v2;
}

id sub_2478B84CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  v8 = sub_2478C0C5C(a2, sub_2478BCA18, v7);

  return v8;
}

void sub_2478B8578(void (*a1)())
{
  type metadata accessor for CSUIError(0);
  sub_2478BC694(MEMORY[0x277D84F90]);
  sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);
  sub_2478D87FC();
  a1();
}

uint64_t sub_2478B864C(uint64_t a1)
{
  v1 = sub_2478D89BC();
  v2 = [objc_opt_self() typeRecordWithIdentifier_];

  if (v2 && (v3 = [v2 localizedDescription], v2, v3))
  {
    v4 = sub_2478D89EC();

    return v4;
  }

  else
  {
    type metadata accessor for CSUIError(0);
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);
    sub_2478D87FC();
    return swift_willThrow();
  }
}

uint64_t sub_2478B877C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AD0, &qword_2478DA8E0);
  v3[7] = swift_task_alloc();
  v4 = sub_2478D88FC();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478B8878, 0, 0);
}

uint64_t sub_2478B8878()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  sub_2478D890C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2478BC950(v0[7], &qword_27EE54AD0, &qword_2478DA8E0);
    type metadata accessor for CSUIError(0);
    v0[3] = 6;
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);
    sub_2478D87FC();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    if (qword_27EE55260 != -1)
    {
      swift_once();
    }

    v9 = (*(*qword_27EE57188 + 96) + **(*qword_27EE57188 + 96));
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = sub_2478B8B24;
    v7 = v0[10];
    v8 = v0[4];

    return v9(v7, v8);
  }
}

uint64_t sub_2478B8B24()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_2478B8CC0;
  }

  else
  {
    v2 = sub_2478B8C38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2478B8C38()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2478B8CC0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2478B8D64()
{
  type metadata accessor for CSUIError(0);
  *(v0 + 24) = 3;
  sub_2478BC694(MEMORY[0x277D84F90]);
  sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);
  sub_2478D87FC();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

id sub_2478B8E48()
{
  v0 = sub_2478D89BC();
  v1 = [objc_opt_self() bindableWithTypeIdentifier_];

  return v1;
}

id sub_2478B8EA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  v8 = sub_2478C0C5C(a2, sub_2478BDB28, v7);

  return v8;
}

uint64_t sub_2478B8F74(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2478BDB0C;

  return sub_2478B877C(a1, v5, v4);
}

unint64_t sub_2478B901C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2478D8CEC();

  MEMORY[0x24C1AD190](v1, v2);
  MEMORY[0x24C1AD190](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_2478B90A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2478D889C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2478B9110()
{
  strcpy(v2, "URLBindable(");
  sub_2478D889C();
  sub_2478BCA20(&qword_27EE54DE0, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v0 = sub_2478D8E1C();
  MEMORY[0x24C1AD190](v0);

  MEMORY[0x24C1AD190](41, 0xE100000000000000);
  return v2[0];
}

id sub_2478B91CC()
{
  v0 = sub_2478D886C();
  v1 = [objc_opt_self() bindableWithURL_];

  return v1;
}

id sub_2478B9220(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = type metadata accessor for URLBindable(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = sub_2478D884C();
  sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
  if (v12)
  {
    memset(v18, 0, sizeof(v18));
    v19 = 1;
    return sub_2478BF830(v4, a1, 0, v18, a2, a3, a4);
  }

  else
  {
    sub_2478BCAB4(v4, v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v15 = swift_allocObject();
    sub_2478BCB1C(v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    v16 = (v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v16 = a3;
    v16[1] = a4;

    v17 = sub_2478C0C5C(a2, sub_2478BCB80, v15);

    return v17;
  }
}

void sub_2478B93D0(uint64_t a1, void (*a2)(void *))
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_self() defaultWorkspace];
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v5 = sub_2478D886C();
  v11[0] = 0;
  v6 = [v4 openURL:v5 configuration:0 error:v11];

  if (v6)
  {
    v7 = v11[0];

    a2(0);
  }

  else
  {
    v8 = v11[0];
    v9 = sub_2478D881C();

    swift_willThrow();
    v10 = v9;
    a2(v9);
  }
}

void *sub_2478B9518(uint64_t a1)
{
  if (sub_2478D884C())
  {
    return &unk_2859812B0;
  }

  else
  {
    return &unk_2859812E0;
  }
}

uint64_t sub_2478B9548()
{
  v2 = sub_2478D878C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AD8, &unk_2478DA8E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2478DA8C0;
  v7 = *MEMORY[0x277CBE8D8];
  *(inited + 32) = *MEMORY[0x277CBE8D8];
  v8 = v7;
  sub_2478BC41C(inited);
  swift_setDeallocating();
  sub_2478BC610(inited + 32);
  sub_2478D885C();

  if (!v1)
  {
    v0 = sub_2478D877C();
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    if (!v10)
    {
      type metadata accessor for CSUIError(0);
      v0 = v12;
      v13[1] = 5;
      sub_2478BC694(MEMORY[0x277D84F90]);
      sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);
      sub_2478D87FC();
      swift_willThrow();
    }
  }

  return v0;
}

uint64_t sub_2478B9740(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2478D88FC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478B9800, 0, 0);
}

uint64_t sub_2478B9800()
{
  if (qword_27EE55260 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE57188;
  v0[7] = qword_27EE57188;
  v2 = (*v1 + 88) & 0xFFFFFFFFFFFFLL | 0x8EB4000000000000;
  v0[8] = *(*v1 + 88);
  v0[9] = v2;

  return MEMORY[0x2822009F8](sub_2478B98B4, v1, 0);
}

uint64_t sub_2478B98B4()
{
  (*(v0 + 64))(*(v0 + 24));
  *(v0 + 80) = 0;
  v5 = (*(**(v0 + 56) + 96) + **(**(v0 + 56) + 96));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_2478B9A34;
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);

  return v5(v2, v3);
}

uint64_t sub_2478B9A34()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2478B9E38, 0, 0);
  }

  else
  {
    v6 = (*(**(v2 + 56) + 104) + **(**(v2 + 56) + 104));
    v3 = swift_task_alloc();
    *(v2 + 104) = v3;
    *v3 = v2;
    v3[1] = sub_2478B9C40;
    v4 = *(v2 + 24);

    return v6(v4, 0);
  }
}

uint64_t sub_2478B9C40()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2478B9EB4;
  }

  else
  {
    v2 = sub_2478B9D54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2478B9D54()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2478B9DD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2478B9E38()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2478B9EB4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2478B9F30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2478B9F50, 0, 0);
}

uint64_t sub_2478B9F50()
{
  if (qword_27EE55260 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v5 = (*(*qword_27EE57188 + 104) + **(*qword_27EE57188 + 104));
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_2478BA0B0;
  v3 = v0[3];

  return v5(v3, v1);
}

uint64_t sub_2478BA0B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2478BA1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2478D889C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

id sub_2478BA210(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = sub_2478D884C();
  sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
  if (v12)
  {
    memset(v18, 0, sizeof(v18));
    v19 = 1;
    return sub_2478BF830(v5, a1, 0, v18, a2, a3, a4);
  }

  else
  {
    sub_2478BCAB4(v5, v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v15 = swift_allocObject();
    sub_2478BCB1C(v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    v16 = (v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v16 = a3;
    v16[1] = a4;

    v17 = sub_2478C0C5C(a2, sub_2478BDB20, v15);

    return v17;
  }
}

void *sub_2478BA3B8(uint64_t a1)
{
  if (sub_2478D884C())
  {
    return &unk_285981308;
  }

  else
  {
    return &unk_285981338;
  }
}

uint64_t sub_2478BA400(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2478BA494;

  return sub_2478B9740(a1);
}

uint64_t sub_2478BA494()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2478BA588(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2478BA5A8, 0, 0);
}

uint64_t sub_2478BA5A8()
{
  if (qword_27EE55260 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v5 = (*(*qword_27EE57188 + 104) + **(*qword_27EE57188 + 104));
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_2478BDB10;
  v3 = v0[3];

  return v5(v3, v1);
}

id sub_2478BA708(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDocumentProxy_];

  return v2;
}

id sub_2478BA750(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___CSUIBindable_rawBindable];
  *&v1[OBJC_IVAR___CSUIBindable_rawBindable + 24] = &type metadata for DocumentProxyBindable;
  *(v3 + 4) = sub_2478BCB84();
  *v3 = a1;
  v5.receiver = v1;
  v5.super_class = CSUIBindable;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_2478BA870(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2478D88CC();
  v6 = v5;
  v7 = &v2[OBJC_IVAR___CSUIBindable_rawBindable];
  *&v2[OBJC_IVAR___CSUIBindable_rawBindable + 24] = &type metadata for TypeIdentifierBindable;
  v7[4] = sub_2478BCBD8();
  *v7 = v4;
  v7[1] = v6;
  v11.receiver = v2;
  v11.super_class = CSUIBindable;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = sub_2478D88FC();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

id sub_2478BAA7C@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  a1[3] = type metadata accessor for CSUIBindable(a2);
  *a1 = v4;

  return v4;
}

id sub_2478BAB00(uint64_t a1, uint64_t (*a2)(void), SEL *a3, uint64_t (*a4)(void))
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = a2();
  v10 = [v8 *a3];

  v11 = a4(0);
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

id sub_2478BABB4(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___CSUIBindable_rawBindable];
  v3[3] = type metadata accessor for URLBindable(0);
  v3[4] = sub_2478BCA20(&qword_27EE54B18, 255, type metadata accessor for URLBindable, &unk_2478DAA80);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v3);
  v5 = sub_2478D889C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(boxed_opaque_existential_0Tm, a1, v5);
  v9.receiver = v1;
  v9.super_class = CSUIBindable;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

uint64_t CSUIBindable.description.getter()
{
  sub_2478D8CEC();
  MEMORY[0x24C1AD190](0x6E6942495553433CLL, 0xEF203A656C626164);
  __swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR___CSUIBindable_rawBindable), *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 24));
  sub_2478D8E3C();
  MEMORY[0x24C1AD190](62, 0xE100000000000000);
  return 0;
}

void __swiftcall CSUIBindable.init()(CSUIBindable *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_2478BB094()
{
  v1 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 24);
  v2 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 32);
  __swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR___CSUIBindable_rawBindable), v1);
  return (*(v2 + 16))(v1, v2);
}

void *sub_2478BB0F0(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v24[0] = 0;
  v2 = [objc_opt_self() claimBindingsWithConfiguration:a1 error:v24];
  v3 = v24[0];
  if (!v2)
  {
    v20 = v24[0];
    sub_2478D881C();

    swift_willThrow();
    return v3;
  }

  v4 = v2;
  sub_2478BCD34(0, &qword_27EE54B20, 0x277CC1E98);
  v5 = sub_2478D8ABC();
  v6 = v3;

  if (v5 >> 62)
  {
    v7 = sub_2478D8DAC();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_15:

    return MEMORY[0x277D84F90];
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v24[0] = MEMORY[0x277D84F90];
  sub_2478BC2DC(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
  }

  v8 = 0;
  v9 = v5;
  v22 = v1;
  v23 = v5 & 0xC000000000000001;
  v3 = v24[0];
  v10 = v5;
  v11 = v7;
  do
  {
    if (v23)
    {
      v12 = MEMORY[0x24C1AD450](v8, v9);
    }

    else
    {
      v12 = *(v9 + 8 * v8 + 32);
    }

    v13 = v12;
    v14 = [v12 bundleRecord];
    v15 = [v13 provenance];
    v16 = [v13 claimRecord];

    v24[0] = v3;
    v18 = v3[2];
    v17 = v3[3];
    if (v18 >= v17 >> 1)
    {
      sub_2478BC2DC((v17 > 1), v18 + 1, 1);
      v3 = v24[0];
    }

    ++v8;
    v3[2] = v18 + 1;
    v19 = &v3[3 * v18];
    v19[4] = v14;
    v19[5] = v15;
    v19[6] = v16;
    v9 = v10;
  }

  while (v11 != v8);

  return v3;
}

uint64_t sub_2478BB358()
{
  v1 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 24);
  v2 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 32);
  __swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR___CSUIBindable_rawBindable), v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

uint64_t sub_2478BB3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___CSUIBindable_rawBindable + 24);
  v10 = *(v4 + OBJC_IVAR___CSUIBindable_rawBindable + 32);
  __swift_project_boxed_opaque_existential_0Tm((v4 + OBJC_IVAR___CSUIBindable_rawBindable), v9);
  return (*(v10 + 32))(a1, a2, a3, a4, v9, v10);
}

uint64_t sub_2478BB444()
{
  v1 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 24);
  v2 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 32);
  __swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR___CSUIBindable_rawBindable), v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_2478BB4A0()
{
  v1 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 24);
  v2 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 32);
  __swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR___CSUIBindable_rawBindable), v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_2478BB504(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2478BB524, 0, 0);
}

uint64_t sub_2478BB524()
{
  v1 = (v0[3] + OBJC_IVAR___CSUIBindable_rawBindable);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v7 = (*(v3 + 56) + **(v3 + 56));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_2478BDB10;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_2478BB65C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2478BB67C, 0, 0);
}

uint64_t sub_2478BB67C()
{
  v1 = (v0[3] + OBJC_IVAR___CSUIBindable_rawBindable);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v7 = (*(v3 + 64) + **(v3 + 64));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_2478BDB10;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

id sub_2478BB7B4(uint64_t a1, char a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2478D886C();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_2478D889C();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_2478D881C();

    swift_willThrow();
    v13 = sub_2478D889C();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t sub_2478BB908(uint64_t a1, id *a2)
{
  result = sub_2478D89CC();
  *a2 = 0;
  return result;
}

uint64_t sub_2478BB980(uint64_t a1, id *a2)
{
  v3 = sub_2478D89DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2478BBA00@<X0>(uint64_t *a2@<X8>)
{
  sub_2478D89EC();
  v3 = sub_2478D89BC();

  *a2 = v3;
  return result;
}

uint64_t sub_2478BBA44()
{
  v0 = sub_2478D89EC();
  v1 = MEMORY[0x24C1AD1B0](v0);

  return v1;
}

uint64_t sub_2478BBA80(uint64_t a1)
{
  sub_2478D89EC();
  sub_2478D8A3C();
}

uint64_t sub_2478BBAD4(uint64_t a1)
{
  sub_2478D89EC();
  sub_2478D8ECC();
  sub_2478D8A3C();
  v1 = sub_2478D8EDC();

  return v1;
}

uint64_t sub_2478BBB48(uint64_t a1)
{
  v2 = sub_2478BCA20(&unk_27EE54D30, 255, type metadata accessor for CSUIError, &unk_2478DADF0);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2478BBBB8(uint64_t a1)
{
  v2 = sub_2478BCA20(&unk_27EE54D30, 255, type metadata accessor for CSUIError, &unk_2478DADF0);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2478BBC2C(uint64_t a1)
{
  v2 = sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2478BBCAC(void *a1, uint64_t *a2)
{
  v2 = sub_2478D89EC();
  v4 = v3;
  if (v2 == sub_2478D89EC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2478D8E5C();
  }

  return v7 & 1;
}

uint64_t sub_2478BBD44(uint64_t a1)
{
  v2 = sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2478BBDB4(uint64_t a1)
{
  v2 = sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2478BBE24(void *a1, uint64_t a2)
{
  v4 = sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2478BBEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2478BBF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2478D8ECC();
  sub_2478D897C();
  return sub_2478D8EDC();
}

void *sub_2478BBFBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2478BBFD8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2478D89BC();

  *a2 = v3;
  return result;
}

uint64_t sub_2478BC020@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2478D89EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2478BC04C(uint64_t a1)
{
  v2 = sub_2478BCA20(&qword_27EE54BD0, 255, type metadata accessor for URLResourceKey, &unk_2478DAD58);
  v3 = sub_2478BCA20(&qword_27EE54BD8, 255, type metadata accessor for URLResourceKey, &unk_2478DACF8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2478BC110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

unint64_t sub_2478BC1AC(uint64_t a1, uint64_t a2)
{
  sub_2478D8ECC();
  sub_2478D8A3C();
  v4 = sub_2478D8EDC();

  return sub_2478BC224(a1, a2, v4);
}

unint64_t sub_2478BC224(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2478D8E5C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_2478BC2DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2478BC2FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2478BC2FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54BE0, &qword_2478DBBB0);
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

uint64_t sub_2478BC41C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54BE8, &unk_2478DAE90);
    v3 = sub_2478D8CCC();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_2478D89EC();
      sub_2478D8ECC();
      v27 = v7;
      sub_2478D8A3C();
      v8 = sub_2478D8EDC();

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
        v16 = sub_2478D89EC();
        v18 = v17;
        if (v16 == sub_2478D89EC() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_2478D8E5C();

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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2478BC610(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2478BC694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE55130, &unk_2478DAE80);
    v3 = sub_2478D8DEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2478BDAA4(v4, &v13, &unk_27EE54FA0, &qword_2478DB1C0);
      v5 = v13;
      v6 = v14;
      result = sub_2478BC1AC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2478BC84C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_2478BC7D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2478BC84C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2478BC85C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2478BC894()
{
  v1 = *(v0 + 16);
  type metadata accessor for CSUIError(0);
  sub_2478BC694(MEMORY[0x277D84F90]);
  sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError, &unk_2478DB750);
  sub_2478D87FC();
  v1();
}

uint64_t sub_2478BC950(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2478BC9B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2478BCA20(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t type metadata accessor for URLBindable(uint64_t a1)
{
  result = qword_27EE55670;
  if (!qword_27EE55670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2478BCAB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLBindable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2478BCB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLBindable(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2478BCB84()
{
  result = qword_27EE54B08;
  if (!qword_27EE54B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54B08);
  }

  return result;
}

unint64_t sub_2478BCBD8()
{
  result = qword_27EE54B10;
  if (!qword_27EE54B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54B10);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t sub_2478BCD34(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2478BCDE8(uint64_t a1)
{
  result = sub_2478BCE10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2478BCE10()
{
  result = qword_27EE54B30;
  if (!qword_27EE54B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54B30);
  }

  return result;
}

unint64_t sub_2478BCE64(uint64_t a1)
{
  result = sub_2478BCE8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2478BCE8C()
{
  result = qword_27EE54B38;
  if (!qword_27EE54B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54B38);
  }

  return result;
}

uint64_t sub_2478BCEE0(uint64_t a1)
{
  result = sub_2478BCA20(&qword_27EE54B40, 255, type metadata accessor for URLBindable, &unk_2478DAA9C);
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2478BCF50(uint64_t *a1, int a2)
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

uint64_t sub_2478BCF98(uint64_t result, int a2, int a3)
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

uint64_t sub_2478BD060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2478BA494;

  return v9(a1, a2, a3);
}

uint64_t sub_2478BD188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2478BDB0C;

  return v9(a1, a2, a3);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2478BD2CC(uint64_t a1, int a2)
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

uint64_t sub_2478BD314(uint64_t result, int a2, int a3)
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

uint64_t sub_2478BD374(uint64_t a1, uint64_t a2)
{
  v4 = sub_2478D889C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2478BD3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2478D889C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2478BD464(uint64_t a1)
{
  result = sub_2478D889C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2478BD7A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_2478BD840()
{
  result = qword_27EE550B0;
  if (!qword_27EE550B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE550B0);
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(type metadata accessor for URLBindable(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_2478D889C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

void sub_2478BDA10()
{
  v1 = *(type metadata accessor for URLBindable(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2478B93D0(v0 + v2, v3);
}

uint64_t sub_2478BDAA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_2478BDBA0(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_2478BDBB8(result, a2, a3 & 1);
  }

  return result;
}

id sub_2478BDBB8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_2478BDBC8(uint64_t a1, uint64_t a2, char a3)
{
  sub_2478BDC0C(*v3, *(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
}

void sub_2478BDC0C(void *result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    sub_2478BDC24(result, a2, a3 & 1);
  }
}

void sub_2478BDC24(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2478BDC54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54C00, &unk_2478DAF00);
  result = swift_allocObject();
  *(result + 36) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = -1;
  return result;
}

void *sub_2478BDC98()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState);
  os_unfair_lock_lock((v1 + 36));
  v2 = *(v1 + 32);
  if (v2 <= 0xFD)
  {
    v3 = *(v1 + 16);
    sub_2478BDBB8(v3, *(v1 + 24), v2 & 1);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock((v1 + 36));
  return v3;
}

BOOL sub_2478BDD7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState);
  os_unfair_lock_lock((v1 + 36));
  v2 = *(v1 + 32) == 254;
  os_unfair_lock_unlock((v1 + 36));
  return v2;
}

BOOL sub_2478BDE20()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState);
  os_unfair_lock_lock((v1 + 36));
  v2 = *(v1 + 32) < 0xFEu;
  os_unfair_lock_unlock((v1 + 36));
  return v2;
}

void sub_2478BDE68()
{
  v1 = v0;
  v2 = sub_2478D893C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = v0;
  swift_getKeyPath();
  sub_2478D882C();
  v6 = *(v0 + OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState);
  os_unfair_lock_lock((v6 + 36));
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v9 = *(v6 + 32);
  *(v6 + 32) = -2;
  sub_2478BDC0C(v7, v8, v9);
  os_unfair_lock_unlock((v6 + 36));
  aBlock[0] = v1;
  swift_getKeyPath();
  sub_2478D883C();
  v10 = sub_2478C3DA4();
  (*(v3 + 16))(v5, v10, v2);
  v11 = v1;
  v12 = sub_2478D891C();
  v13 = sub_2478D8B9C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315394;
    sub_2478D889C();
    sub_2478C25B4(&qword_27EE54DE0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v16 = sub_2478D8E1C();
    v18 = sub_2478C0DB0(v16, v17, aBlock);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2478C0DB0(*&v11[OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_targetBundleID], *&v11[OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_targetBundleID + 8], aBlock);
    _os_log_impl(&dword_2478B3000, v12, v13, "#GetFPStringForOpen Get FP string for %s, target %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1ADC70](v15, -1, -1);
    MEMORY[0x24C1ADC70](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v19 = sub_2478D886C();
  v20 = sub_2478D89BC();
  v21 = swift_allocObject();
  *(v21 + 16) = v11;
  aBlock[4] = sub_2478C25AC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2478BE60C;
  aBlock[3] = &block_descriptor_56;
  v22 = _Block_copy(aBlock);
  v23 = v11;

  FPExtendBookmarkForDocumentURL();
  _Block_release(v22);
}

id sub_2478BE20C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExecuting];
  *a2 = result;
  return result;
}

void sub_2478BE240(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_2478D893C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2478C3DA4();
  (*(v7 + 16))(v9, v10, v6);
  v11 = a2;
  v12 = a1;
  v13 = sub_2478D891C();
  v14 = sub_2478D8BBC();

  if (os_log_type_enabled(v13, v14))
  {
    v34 = a3;
    v35 = v11;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    *(v15 + 4) = v12;
    *v16 = a1;
    *(v15 + 12) = 2112;
    if (a2)
    {
      type metadata accessor for CFError(0);
      v33 = a1;
      sub_2478C25B4(&qword_27EE54D00, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      v32 = swift_allocError();
      v17 = v6;
      v18 = a2;
      v19 = v35;
      *v20 = v35;
      v21 = v12;
      v22 = v19;
      a2 = v18;
      v6 = v17;
      a1 = v33;
      v23 = _swift_stdlib_bridgeErrorToNSError();
    }

    else
    {
      v24 = v12;
      v23 = 0;
    }

    *(v15 + 14) = v23;
    v16[1] = v23;
    _os_log_impl(&dword_2478B3000, v13, v14, "#GetFPStringForOpen FP string get complete %@ %@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54C30, &qword_2478DAF10);
    swift_arrayDestroy();
    MEMORY[0x24C1ADC70](v16, -1, -1);
    MEMORY[0x24C1ADC70](v15, -1, -1);
    v11 = v35;
  }

  (*(v7 + 8))(v9, v6);
  if (a2)
  {
    type metadata accessor for CFError(0);
    sub_2478C25B4(&qword_27EE54D00, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
    v25 = swift_allocError();
    *v26 = v11;
    v27 = v25;
    a1 = 0;
  }

  else
  {
    if (a1)
    {
      v25 = sub_2478D89EC();
      a1 = v29;

      v28 = 0;
      goto LABEL_11;
    }

    type metadata accessor for CSUIError(0);
    v36 = 7;
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478C25B4(&qword_27EE54EC0, type metadata accessor for CSUIError, &unk_2478DB750);
    sub_2478D87FC();
    v25 = v37;
    v31 = v37;
  }

  v28 = 1;
LABEL_11:
  v30 = v11;
  sub_2478BE900(v25, a1, v28);
  sub_2478BDC24(v25, a1, v28);
  sub_2478BDC24(v25, a1, v28);
}

void sub_2478BE60C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2478BE698()
{
  v1 = v0;
  v2 = sub_2478D893C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2478C3DA4();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2478D891C();
  v8 = sub_2478D8BBC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2478B3000, v7, v8, "#GetFPStringForOpen noting cancellation", v9, 2u);
    MEMORY[0x24C1ADC70](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = v1;
  swift_getKeyPath();
  sub_2478D882C();
  v13 = v1;
  swift_getKeyPath();
  sub_2478D882C();
  v10 = *(v1 + OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState);
  os_unfair_lock_lock((v10 + 36));
  sub_2478BDC0C(*(v10 + 16), *(v10 + 24), *(v10 + 32));
  *(v10 + 16) = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA5B8] code:89 userInfo:0];
  *(v10 + 24) = 0;
  *(v10 + 32) = 1;
  os_unfair_lock_unlock((v10 + 36));
  v13 = v1;
  swift_getKeyPath();
  sub_2478D883C();
  v13 = v1;
  swift_getKeyPath();
  return sub_2478D883C();
}

id sub_2478BE8CC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

uint64_t sub_2478BE900(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v8 = sub_2478D893C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2478C3DA4();
  (*(v9 + 16))(v11, v12, v8);
  v13 = v5 & 1;
  sub_2478BDBB8(a1, a2, v5 & 1);
  v14 = sub_2478D891C();
  v15 = sub_2478D8B8C();
  sub_2478BDC24(a1, a2, v5 & 1);
  v16 = os_log_type_enabled(v14, v15);
  v32 = a2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v31 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30 = v5;
    v5 = v19;
    v36 = v19;
    *v18 = 136315138;
    v33 = a1;
    v34 = a2;
    v35 = v13;
    sub_2478BDBB8(a1, a2, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54CA8, &qword_2478DB1A8);
    v20 = sub_2478D8A1C();
    v22 = sub_2478C0DB0(v20, v21, &v36);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_2478B3000, v14, v15, "#GetFPStringForOpen finishing with result %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    v23 = v5;
    LOBYTE(v5) = v30;
    MEMORY[0x24C1ADC70](v23, -1, -1);
    v24 = v18;
    v4 = v31;
    MEMORY[0x24C1ADC70](v24, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if ([v4 isCancelled])
  {
    return sub_2478BE698();
  }

  v33 = v4;
  swift_getKeyPath();
  sub_2478D882C();
  v33 = v4;
  swift_getKeyPath();
  v26 = sub_2478D882C();
  v27 = *&v4[OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState];
  MEMORY[0x28223BE20](v26);
  v28 = v32;
  *&v29[-32] = a1;
  *&v29[-24] = v28;
  v29[-16] = v5 & 1;
  os_unfair_lock_lock(v27 + 9);
  sub_2478C225C(&v27[4]);
  os_unfair_lock_unlock(v27 + 9);
  v33 = v4;
  swift_getKeyPath();
  sub_2478D883C();
  v33 = v4;
  swift_getKeyPath();
  return sub_2478D883C();
}

void sub_2478BEC24()
{
  v1 = v0;
  v2 = sub_2478D893C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2478C3DA4();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2478D891C();
  v8 = sub_2478D8B8C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2478B3000, v7, v8, "#GetFPStringForOpen begin", v9, 2u);
    MEMORY[0x24C1ADC70](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if ([v1 isCancelled])
  {
    sub_2478BE698();
  }

  else
  {
    sub_2478BDE68();
  }
}

id sub_2478BEDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54C00, &unk_2478DAF00);
  v9 = swift_allocObject();
  *(v9 + 36) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = -1;
  *&v7[v8] = v9;
  v10 = OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_url;
  v11 = sub_2478D889C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v7[v10], a1, v11);
  v13 = &v7[OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_targetBundleID];
  *v13 = a2;
  *(v13 + 1) = a3;
  v16.receiver = v7;
  v16.super_class = v3;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v12 + 8))(a1, v11);
  return v14;
}

id sub_2478BEF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54C00, &unk_2478DAF00);
  v8 = swift_allocObject();
  *(v8 + 36) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = -1;
  *&v3[v7] = v8;
  v9 = OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_url;
  v10 = sub_2478D889C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v3[v9], a1, v10);
  v12 = &v3[OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_targetBundleID];
  *v12 = a2;
  *(v12 + 1) = a3;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for GetFileProviderStringOperation(0);
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v11 + 8))(a1, v10);
  return v13;
}

id sub_2478BF048()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2478BF0DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetFileProviderStringOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2478BF1A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completion);

  return v1;
}

id sub_2478BF1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completion];
  *v8 = a2;
  *(v8 + 1) = a3;
  *&v7[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completionQueue] = a1;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_2478BF260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completion];
  *v8 = a2;
  *(v8 + 1) = a3;
  *&v3[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completionQueue] = a1;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_2478BF2D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_2478BF450()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2478BF4D8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v9);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v17);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    (*(v8 + 8))(v11, a3);
    return a1(0);
  }

  else
  {
    v19 = (*(v14 + 32))(v16, v11, v13);
    MEMORY[0x28223BE20](v19);
    v21[-4] = v13;
    v21[-3] = a4;
    v21[-2] = a1;
    v21[-1] = a2;
    sub_2478BF754(v16, sub_2478C1934, &v21[-6], v13, MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], v20);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_2478BF754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

id sub_2478BF830(uint64_t a1, void *a2, int a3, void *a4, id a5, uint64_t a6, void *a7)
{
  v103 = a7;
  v101 = a4;
  LODWORD(v102) = a3;
  v100 = sub_2478D893C();
  v11 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2478D889C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v94 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v91 - v17;
  v99 = v11;
  v97 = a2;
  v104 = a5;
  v106 = a6;
  v96 = a1;
  if (!a2)
  {
    v24 = &v91 - v17;
    v25 = 0;
    v105 = 0;
    v26 = 0;
    goto LABEL_17;
  }

  v19 = a2;
  v20 = [v19 bundleIdentifier];
  if (v20)
  {
    v21 = a1;
    v22 = v20;
    v95 = sub_2478D89EC();
    v105 = v23;

    a1 = v21;
  }

  else
  {

    v95 = 0;
    v105 = 0;
  }

  if (![v19 supportsOpenInPlace])
  {
    v24 = v18;
LABEL_15:
    v26 = 0;
LABEL_16:
    v25 = v95;
    goto LABEL_17;
  }

  v27 = [v19 bundleIdentifier];
  if (!v27)
  {
    v24 = v18;
    sub_2478BC950(&unk_285981730, &unk_27EE54CF0, &qword_2478DB1D8);
    goto LABEL_15;
  }

  v28 = v27;
  v29 = sub_2478D89EC();
  v31 = v30;

  v32 = [v19 SDKVersion];
  if (!v32)
  {
    v24 = v18;

    sub_2478BC950(&unk_285981730, &unk_27EE54CF0, &qword_2478DB1D8);
    v26 = 0;
    a1 = v96;
    a5 = v104;
    goto LABEL_16;
  }

  v33 = v32;
  MEMORY[0x24C1AD6A0](&aBlock);

  v34 = [v19 platform];
  v35 = v34;
  if (v29 == 0xD000000000000019 && v31 == 0x80000002478D9DE0)
  {
    a1 = v96;
    v36 = v95;
    if (v34 != 2)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v82 = sub_2478D8E5C();
    a1 = v96;
    v36 = v95;
    if ((v82 & 1) == 0 || v35 != 2)
    {
      goto LABEL_28;
    }
  }

  _LSVersionNumberMakeWithDYLDVersion();
  v112 = aBlock;
  v113 = v109;
  if (_LSVersionNumberCompare() == -1)
  {
    v24 = v18;
    sub_2478BC950(&unk_285981730, &unk_27EE54CF0, &qword_2478DB1D8);

    goto LABEL_32;
  }

LABEL_28:
  sub_2478BC950(&unk_285981730, &unk_27EE54CF0, &qword_2478DB1D8);

  if (!v105)
  {
    v24 = v18;
    v105 = 0;
LABEL_32:
    v26 = 0;
    goto LABEL_33;
  }

  v95 = *(v14 + 16);
  v83 = v105;
  (v95)(v18, a1, v13);
  FileProviderStringOperation = type metadata accessor for GetFileProviderStringOperation(0);
  v85 = objc_allocWithZone(FileProviderStringOperation);
  v86 = OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54C00, &unk_2478DAF00);
  v87 = swift_allocObject();
  *(v87 + 36) = 0;
  *(v87 + 16) = 0;
  *(v87 + 24) = 0;
  *(v87 + 32) = -1;
  *&v85[v86] = v87;
  (v95)(&v85[OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_url], v18, v13);
  v88 = &v85[OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_targetBundleID];
  *v88 = v36;
  v88[1] = v83;
  v107.receiver = v85;
  v107.super_class = FileProviderStringOperation;
  a1 = v96;
  v105 = v83;

  v89 = objc_msgSendSuper2(&v107, sel_init);
  v24 = v18;
  (*(v14 + 8))(v18, v13);
  v26 = v89;
  v90 = v89;
LABEL_33:
  a5 = v104;
  v25 = v36;
LABEL_17:
  v37 = *(v14 + 16);
  v38 = v24;
  v93 = v14 + 16;
  v92 = v37;
  v37(v24, a1, v13);
  v39 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v40 = swift_allocObject();
  v41 = v106;
  *(v40 + 2) = a5;
  *(v40 + 3) = v41;
  *(v40 + 4) = v103;
  *(v40 + 5) = v26;
  v95 = v14;
  v42 = *(v14 + 32);
  v106 = v13;
  v42(&v40[v39], v38, v13);
  v43 = &v40[(v39 + v15 + 3) & 0xFFFFFFFFFFFFFFFCLL];
  v44 = v101;
  v45 = *(v101 + 1);
  *v43 = *v101;
  *(v43 + 1) = v45;
  v43[32] = *(v44 + 32);
  v46 = &v40[(v39 + v15 + 43) & 0xFFFFFFFFFFFFFFF8];
  v47 = v105;
  *v46 = v25;
  *(v46 + 1) = v47;
  v46[16] = v102 & 1;
  v110 = sub_2478C1A50;
  v111 = v40;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v109 = sub_2478BF2D4;
  *(&v109 + 1) = &block_descriptor_0;
  v48 = _Block_copy(&aBlock);
  v49 = objc_opt_self();
  v50 = v26;
  v51 = v104;

  v52 = [v49 blockOperationWithBlock_];
  _Block_release(v48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54C20, &qword_2478DB850);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_2478DAEE0;
  *(v53 + 32) = v52;
  *&v112 = v53;
  v54 = v52;
  v55 = v54;
  if (v26)
  {
    v103 = v54;
    v104 = v49;
    v105 = &v109;
    v56 = sub_2478C3DA4();
    v57 = v99;
    v58 = v98;
    v59 = v100;
    (*(v99 + 16))(v98, v56, v100);
    v60 = v94;
    v92(v94, v96, v106);
    v61 = v97;
    v62 = sub_2478D891C();
    v63 = sub_2478D8B9C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v102 = v50;
      v65 = v64;
      v66 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *&aBlock = v101;
      *v65 = 136315394;
      sub_2478C25B4(&qword_27EE54DE0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v67 = v106;
      v68 = sub_2478D8E1C();
      v69 = v51;
      v71 = v70;
      (*(v95 + 8))(v60, v67);
      v72 = sub_2478C0DB0(v68, v71, &aBlock);
      v51 = v69;

      *(v65 + 4) = v72;
      *(v65 + 12) = 2112;
      *(v65 + 14) = v61;
      *v66 = v97;
      v73 = v61;
      _os_log_impl(&dword_2478B3000, v62, v63, "have FP string operation for open of %s with %@", v65, 0x16u);
      sub_2478BC950(v66, &qword_27EE54C30, &qword_2478DAF10);
      MEMORY[0x24C1ADC70](v66, -1, -1);
      v74 = v101;
      __swift_destroy_boxed_opaque_existential_0Tm(v101);
      MEMORY[0x24C1ADC70](v74, -1, -1);
      v75 = v65;
      v50 = v102;
      MEMORY[0x24C1ADC70](v75, -1, -1);

      (*(v99 + 8))(v98, v100);
    }

    else
    {

      (*(v95 + 8))(v60, v106);
      (*(v57 + 8))(v58, v59);
    }

    v76 = v50;
    v55 = v103;
    [v103 addDependency_];
    sub_2478C1CD0(0, 0, v76);

    v53 = v112;
    v49 = v104;
  }

  v77 = swift_allocObject();
  *(v77 + 16) = v51;
  *(v77 + 24) = v53;
  v110 = sub_2478C1B28;
  v111 = v77;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v109 = sub_2478BF2D4;
  *(&v109 + 1) = &block_descriptor_7;
  v78 = _Block_copy(&aBlock);
  v79 = v51;
  v80 = [v49 blockOperationWithBlock_];

  _Block_release(v78);

  return v80;
}

void sub_2478C0338(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8, char a9)
{
  v80 = a8;
  v72 = a7;
  v81 = a5;
  v87 = *MEMORY[0x277D85DE8];
  v13 = *a6;
  v71 = a6[1];
  v78 = a6;
  v70 = v13;
  v14 = sub_2478D889C();
  v77 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2478D893C();
  v82 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OpenResourceOperationCompletionAdapter();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completion];
  *v21 = a2;
  *(v21 + 1) = a3;
  *&v20[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completionQueue] = a1;
  v83.receiver = v20;
  v83.super_class = v19;

  v22 = a1;
  v76 = objc_msgSendSuper2(&v83, sel_init);
  if (a4)
  {
    v23 = (*((*MEMORY[0x277D85000] & *a4) + 0x68))();
    v25 = v24;
    v27 = v26;
  }

  else
  {
    v23 = 0;
    v25 = 0;
    v27 = 255;
  }

  v28 = sub_2478C3DA4();
  v29 = v18;
  v30 = v79;
  (*(v82 + 16))(v18, v28, v79);
  v31 = v77;
  (*(v77 + 16))(v16, v81, v14);
  sub_2478C22D4(v23, v25, v27);
  v32 = sub_2478D891C();
  v33 = sub_2478D8B8C();
  sub_2478C22EC(v23, v25, v27);
  v69 = v33;
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v68 = v29;
    v66 = v32;
    v35 = v34;
    v67 = swift_slowAlloc();
    v84 = v67;
    *v35 = 136315394;
    sub_2478C25B4(&qword_27EE54DE0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v36 = sub_2478D8E1C();
    v38 = v37;
    (*(v31 + 8))(v16, v14);
    v39 = sub_2478C0DB0(v36, v38, &v84);
    v40 = v27;

    *(v35 + 4) = v39;
    *(v35 + 12) = 2082;
    *&v85 = v23;
    *(&v85 + 1) = v25;
    LOBYTE(v86) = v27;
    sub_2478C22D4(v23, v25, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54CE0, &unk_2478DB1C8);
    v41 = sub_2478D8A1C();
    v43 = sub_2478C0DB0(v41, v42, &v84);

    *(v35 + 14) = v43;
    v44 = v66;
    _os_log_impl(&dword_2478B3000, v66, v69, "initiating open of %s fpString result %{public}s", v35, 0x16u);
    v45 = v67;
    swift_arrayDestroy();
    MEMORY[0x24C1ADC70](v45, -1, -1);
    MEMORY[0x24C1ADC70](v35, -1, -1);

    (*(v82 + 8))(v68, v79);
  }

  else
  {

    (*(v31 + 8))(v16, v14);
    (*(v82 + 8))(v29, v30);
    v40 = v27;
  }

  if (v40 == 0xFF || (v40 & 1) != 0)
  {
    sub_2478C2304(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54CC0, &qword_2478DB1B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2478DAEF0;
    *(inited + 32) = sub_2478D89EC();
    *(inited + 40) = v47;
    v48 = sub_2478BCD34(0, &qword_27EE54CC8, 0x277CCABB0);
    sub_2478BDBB8(v23, v25, 0);
    v49 = sub_2478D8BDC();
    *(inited + 72) = v48;
    *(inited + 48) = v49;
    *(inited + 80) = sub_2478D89EC();
    *(inited + 88) = v50;
    v51 = sub_2478D89BC();
    sub_2478C22EC(v23, v25, v40);
    *(inited + 120) = sub_2478BCD34(0, &unk_27EE54CD0, 0x277CCACA8);
    *(inited + 96) = v51;
    sub_2478C2304(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54FA0, &qword_2478DB1C0);
    swift_arrayDestroy();
  }

  v52 = *(v78 + 32);
  v75 = v23;
  v74 = v25;
  v73 = v40;
  if (v52)
  {
    v53 = [objc_opt_self() defaultWorkspace];
    if (v53)
    {
      v54 = v53;
      v55 = sub_2478D886C();
      if (v80)
      {
        v56 = sub_2478D89BC();
      }

      else
      {
        v56 = 0;
      }

      sub_2478C2304(MEMORY[0x277D84F90]);
      v59 = sub_2478D894C();

      v60 = sub_2478D894C();
      v61 = v76;
      v62 = [v54 operationToOpenResource:v55 usingApplication:v56 uniqueDocumentIdentifier:0 isContentManaged:a9 & 1 sourceAuditToken:0 userInfo:v59 options:v60 delegate:v76];

      if (v62)
      {
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v85 = v70;
  v86 = v71;
  v57 = [objc_opt_self() defaultWorkspace];
  if (!v57)
  {
    goto LABEL_25;
  }

  v54 = v57;
  v55 = sub_2478D886C();
  if (v80)
  {
    v58 = sub_2478D89BC();
    goto LABEL_22;
  }

LABEL_21:
  v58 = 0;
LABEL_22:
  sub_2478C2304(MEMORY[0x277D84F90]);
  v63 = sub_2478D894C();

  v64 = sub_2478D894C();
  v61 = v76;
  v62 = [v54 operationToOpenResource:v55 usingApplication:v58 uniqueDocumentIdentifier:0 isContentManaged:a9 & 1 sourceAuditToken:&v85 userInfo:v63 options:v64 delegate:v76];

  if (v62)
  {
LABEL_23:

    v65 = v75;
    [v62 start];
    sub_2478C22EC(v65, v74, v73);

    return;
  }

LABEL_26:
  __break(1u);
}

id sub_2478C0C5C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v12[4] = sub_2478C1DFC;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2478BF2D4;
  v12[3] = &block_descriptor_13;
  v7 = _Block_copy(v12);
  v8 = objc_opt_self();
  v9 = a1;

  v10 = [v8 blockOperationWithBlock_];
  _Block_release(v7);

  return v10;
}

uint64_t type metadata accessor for GetFileProviderStringOperation(uint64_t a1)
{
  result = qword_27EE55E20;
  if (!qword_27EE55E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2478C0DB0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2478C0E7C(v11, 0, 0, 1, a1, a2);
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
    sub_2478BC7D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_2478C0E7C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2478C0F88(a5, a6);
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
    result = sub_2478D8D2C();
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

void *sub_2478C0F88(uint64_t a1, unint64_t a2)
{
  v3 = sub_2478C0FD4(a1, a2);
  sub_2478C1104(&unk_2859816E8);
  return v3;
}

void *sub_2478C0FD4(uint64_t a1, unint64_t a2)
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

  v6 = sub_2478C11F0(v5, 0);
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

  result = sub_2478D8D2C();
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
        v10 = sub_2478D8A5C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2478C11F0(v10, 0);
        result = sub_2478D8CDC();
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

uint64_t sub_2478C1104(uint64_t result)
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

  result = sub_2478C1264(result, v11, 1, v3);
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

void *sub_2478C11F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54CB0, &qword_2478DB1B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2478C1264(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54CB0, &qword_2478DB1B0);
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

uint64_t sub_2478C1358(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2478D8DAC();
LABEL_9:
  result = sub_2478D8D1C();
  *v2 = result;
  return result;
}

uint64_t sub_2478C13F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_2478D8ECC();
  sub_2478D8A3C();
  v5 = sub_2478D8EDC();

  return a3(a1, a2, v5);
}

void sub_2478C147C()
{
  v1 = v0;
  v2 = sub_2478D893C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2478C3DA4();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2478D891C();
  v8 = sub_2478D8B9C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2478B3000, v7, v8, "open resource operation completed", v9, 2u);
    MEMORY[0x24C1ADC70](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *&v1[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completionQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_2478C2570;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2478BF2D4;
  aBlock[3] = &block_descriptor_50;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  [v10 addOperationWithBlock_];
  _Block_release(v12);
}

void sub_2478C1690(void *a1)
{
  v2 = v1;
  v4 = sub_2478D893C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2478C3DA4();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_2478D891C();
  v11 = sub_2478D8B9C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    if (a1)
    {
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v12 + 4) = v15;
    *v13 = v16;
    _os_log_impl(&dword_2478B3000, v10, v11, "open resource operation failed: %@", v12, 0xCu);
    sub_2478BC950(v13, &qword_27EE54C30, &qword_2478DAF10);
    MEMORY[0x24C1ADC70](v13, -1, -1);
    MEMORY[0x24C1ADC70](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v17 = *&v2[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completionQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = a1;
  aBlock[4] = sub_2478C2500;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2478BF2D4;
  aBlock[3] = &block_descriptor_44;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = v2;

  [v17 addOperationWithBlock_];
  _Block_release(v19);
}

uint64_t sub_2478C1964()
{
  v1 = sub_2478D889C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 43) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 17, v3 | 7);
}

void sub_2478C1A50()
{
  v1 = *(sub_2478D889C() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  sub_2478C0338(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, (v0 + ((v3 + 3) & 0xFFFFFFFFFFFFFFFCLL)), *(v0 + ((v3 + 43) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 43) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 43) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2478C1B28()
{
  v1 = *(v0 + 16);
  sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
  v2 = sub_2478D8AAC();
  [v1 addOperations:v2 waitUntilFinished:0];
}

char *sub_2478C1BA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_2478D8DAC();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_2478D8DAC();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_2478C1CD0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2478D8DAC();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_2478D8DAC();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_2478C1358(result, 1);

  return sub_2478C1BA4(v7, v6, 1, v4);
}

uint64_t sub_2478C1DBC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2478C1DFC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v7[4] = v1;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2478BF2D4;
  v7[3] = &block_descriptor_38;
  v4 = _Block_copy(v7);
  v5 = objc_opt_self();

  v6 = [v5 blockOperationWithBlock_];
  _Block_release(v4);

  [v2 addOperation_];
}

uint64_t sub_2478C1EEC(uint64_t a1)
{
  result = sub_2478D889C();
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

uint64_t get_enum_tag_for_layout_string_14CoreServicesUI30GetFileProviderStringOperationC12MutableStateV0hJ0O(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2478C1FC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFE)
  {
    v4 = 254;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = (v4 ^ 0xFF) - 2;
  if (v3 <= 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_2478C2020(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -2 - a2;
    }
  }

  return result;
}

uint64_t sub_2478C2078(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2478C20C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
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
      *(result + 16) = -2 - a2;
    }
  }

  return result;
}

uint64_t sub_2478C210C(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2478C217C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2478C219C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2478C21E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2478C2208(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_2478C225C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  sub_2478BDBB8(v3, v4, v5);
  sub_2478BDC0C(v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
}

id sub_2478C22D4(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2478BDBB8(result, a2, a3 & 1);
  }

  return result;
}

void sub_2478C22EC(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_2478BDC24(a1, a2, a3 & 1);
  }
}

unint64_t sub_2478C2304(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE55130, &unk_2478DAE80);
    v3 = sub_2478D8DEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2478C2428(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2478C13F8(v13, v14, sub_2478BC224);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2478BC84C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_2478C2428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54FA0, &qword_2478DB1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_2478C2538()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2478C25B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2478C261C(uint64_t a1, int a2)
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

uint64_t sub_2478C263C(uint64_t result, int a2, int a3)
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

uint64_t sub_2478C2970@<X0>(uint64_t a1@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = sub_2478BBFBC;
  *(result + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = sub_2478C38E0;
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  return result;
}

BOOL sub_2478C2A2C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2478C2A5C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2478C2A88@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2478C2B74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2478C3CEC(a1);

  *a2 = v3;
  return result;
}

void *sub_2478C2BB4()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *sub_2478C2BE4()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_2478C2C14()
{
  v1 = [*v0 URL];
  sub_2478D887C();
}

uint64_t sub_2478C2C74()
{
  v1 = [*v0 localizedName];
  v2 = sub_2478D89EC();

  return v2;
}

uint64_t sub_2478C2CE4(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2478D89EC();

  return v4;
}

double sub_2478C2D4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54DD0, &qword_2478DB358);
  v0 = swift_allocObject();
  *&result = 5;
  *(v0 + 16) = xmmword_2478DB330;
  *(v0 + 32) = sel_localizedName;
  *(v0 + 40) = sel_bundleIdentifier;
  *(v0 + 48) = sel_URL;
  *(v0 + 56) = sel_bundleVersion;
  *(v0 + 64) = sel_localizedShortName;
  return result;
}

id sub_2478C2DC0(void *a1)
{
  v2 = sub_2478D889C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() imageDescriptorNamed_];
  v7 = [a1 bundleIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithBundleIdentifier_];
  }

  else
  {
    v10 = [a1 URL];
    sub_2478D887C();

    v11 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v12 = sub_2478D886C();
    v9 = [v11 initWithURL_];

    (*(v3 + 8))(v5, v2);
  }

  v13 = [v9 imageForDescriptor_];
  v14 = v13;
  if (v13)
  {
    if ([v13 placeholder])
    {
      v15 = [v9 prepareImageForDescriptor_];
      if (v15)
      {
        v16 = v15;

        v14 = v16;
      }
    }

    v14 = v14;
  }

  v17 = [v14 CGImage];

  return v17;
}

uint64_t sub_2478C3004@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

id sub_2478C3014@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo;
  v3 = *(v1 + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo);
  *a1 = v3;
  v4 = *(v2 + 8);
  *(a1 + 8) = v4;
  v5 = v4;
  v6 = *(v2 + 24);
  *(a1 + 24) = v6;
  v10 = v6;
  v7 = v3;
  v8 = v5;

  return v10;
}

id sub_2478C3084(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 4) = *(a1 + 32);
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_2478C30E4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 4) = *(a1 + 32);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_2478C3268()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo) URL];
  sub_2478D887C();
}

id sub_2478C32F4(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo];
  v5 = a1;
  v6 = [v4 *a3];
  if (v6)
  {
    v7 = v6;
    sub_2478D89EC();

    v8 = sub_2478D89BC();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

uint64_t sub_2478C33A4(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2478D89EC();

  return v4;
}

uint64_t sub_2478C34A4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo) localizedName];
  v2 = sub_2478D89EC();

  return v2;
}

id sub_2478C3568()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo + 24);
  if (v1)
  {
    return [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2478C3624()
{
  v1 = sub_2478D889C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = 60;
  v14[1] = 0xE100000000000000;
  swift_getObjectType();
  v5 = sub_2478D8EFC();
  MEMORY[0x24C1AD190](v5);

  MEMORY[0x24C1AD190](8250, 0xE200000000000000);
  v6 = *(v0 + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo);
  v7 = [v6 localizedName];
  v8 = sub_2478D89EC();
  v10 = v9;

  MEMORY[0x24C1AD190](v8, v10);

  MEMORY[0x24C1AD190](2113568, 0xE300000000000000);
  v11 = [v6 URL];
  sub_2478D887C();

  sub_2478C3974();
  v12 = sub_2478D8E1C();
  MEMORY[0x24C1AD190](v12);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x24C1AD190](62, 0xE100000000000000);
  return v14[0];
}

uint64_t sub_2478C38A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_2478C38E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v5 = *result;
  v6 = *(result + 8);
  if (*(result + 9) == 1)
  {
    *(result + 9) = 0;
  }

  else if (result[1])
  {
    v6 = 1;
  }

  else
  {
    v13 = v3;
    v14 = v4;
    v7 = *(v2 + 16);
    v10 = v5;
    v8 = a2;
    v9 = result;
    result = v7(&v11, &v10);
    a2 = v8;
    v5 = v11;
    v6 = v12;
    *v9 = v11;
    *(v9 + 8) = v6;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

unint64_t sub_2478C3974()
{
  result = qword_27EE54DE0;
  if (!qword_27EE54DE0)
  {
    sub_2478D889C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54DE0);
  }

  return result;
}

unint64_t sub_2478C39D0()
{
  result = qword_27EE55160;
  if (!qword_27EE55160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE55160);
  }

  return result;
}

unint64_t sub_2478C3A28()
{
  result = qword_27EE54DF0;
  if (!qword_27EE54DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54DF0);
  }

  return result;
}

unint64_t sub_2478C3A80()
{
  result = qword_27EE54DF8;
  if (!qword_27EE54DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54DF8);
  }

  return result;
}

unint64_t sub_2478C3AD8()
{
  result = qword_27EE54E00;
  if (!qword_27EE54E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54E00);
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

uint64_t sub_2478C3B40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2478C3B88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2478C3C18()
{
  result = qword_27EE54E70;
  if (!qword_27EE54E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE54E78, qword_2478DB578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54E70);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2478C3CEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_2478C3D28()
{
  v0 = sub_2478D893C();
  __swift_allocate_value_buffer(v0, qword_27EE57190);
  __swift_project_value_buffer(v0, qword_27EE57190);
  return sub_2478D892C();
}

uint64_t sub_2478C3DA4()
{
  if (qword_27EE56540 != -1)
  {
    swift_once();
  }

  v0 = sub_2478D893C();

  return __swift_project_value_buffer(v0, qword_27EE57190);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2478C3E40@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE56540 != -1)
  {
    swift_once();
  }

  v2 = sub_2478D893C();
  v3 = __swift_project_value_buffer(v2, qword_27EE57190);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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

id sub_2478C3F4C()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_2478C3FA8(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*sub_2478C3FE8(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_2478C4034;
}

uint64_t sub_2478C4034(void *a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_2478C4084@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  *a3 = a1;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t sub_2478C40C4()
{
  v2[0] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54EA0, &qword_2478DB610);
  v0 = swift_allocObject();
  *(v0 + 32) = 0;
  sub_2478C413C(v2, v0 + 16);
  sub_2478C4174(v2);
  return v0;
}

id sub_2478C41A4(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBindable_];

  return v2;
}

char *sub_2478C41EC(void *a1)
{
  v3 = OBJC_IVAR___CSUIOpenWithFlow_mutableState;
  v14[0] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54EA0, &qword_2478DB610);
  v4 = swift_allocObject();
  *(v4 + 32) = 0;
  sub_2478C413C(v14, v4 + 16);
  sub_2478C4174(v14);
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR___CSUIOpenWithFlow_bindable] = a1;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 defaultConfigurationForContextualApplicationSelection];
  v8 = [objc_allocWithZone(CSUIOpenWithMenuConstructor) initWithConfiguration_];

  *&v1[OBJC_IVAR___CSUIOpenWithFlow_constructor] = v8;
  v13.receiver = v1;
  v13.super_class = CSUIOpenWithFlow;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  v10 = *&v9[OBJC_IVAR___CSUIOpenWithFlow_constructor];
  v11 = v9;
  [v10 setDelegate_];

  return v11;
}

uint64_t sub_2478C43C8()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  os_unfair_lock_lock(v1 + 8);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v1 + 8);
  return Strong;
}

uint64_t sub_2478C448C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  os_unfair_lock_lock(v2 + 8);
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v2 + 8);

  return swift_unknownObjectRelease();
}

void sub_2478C44E8()
{
  v2 = v0;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(v0 + OBJC_IVAR___CSUIOpenWithFlow_bindable);
  if ((sub_2478BB358() & 1) == 0)
  {
    type metadata accessor for CSUIError(0);
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478C6144(&qword_27EE54EC0, type metadata accessor for CSUIError, &unk_2478DB750);
    sub_2478D87FC();
LABEL_7:
    swift_willThrow();
    return;
  }

  v4 = *(v2 + OBJC_IVAR___CSUIOpenWithFlow_constructor);
  v11[0] = 0;
  v5 = [v4 prepareMenuForBindable:v3 error:v11];
  v6 = v11[0];
  if (!v5)
  {
    v10 = v11[0];
    sub_2478D881C();

    goto LABEL_7;
  }

  v7 = v5;
  v8 = *(v2 + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  MEMORY[0x28223BE20](v5);
  v9 = v6;
  os_unfair_lock_lock((v8 + 32));
  sub_2478C5A10((v8 + 16));
  os_unfair_lock_unlock((v8 + 32));
  if (v1)
  {
    __break(1u);
  }

  else
  {
  }
}

BOOL sub_2478C4784()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16) != 0;
  os_unfair_lock_unlock((v1 + 32));
  return v2;
}

id sub_2478C4848()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  os_unfair_lock_lock((v1 + 32));
  v2 = [*(v1 + 16) representativeBundle];
  os_unfair_lock_unlock((v1 + 32));
  return v2;
}

void sub_2478C48A0()
{
  v1 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2478D893C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([v1 isPrepared] & 1) == 0)
  {
    v6 = sub_2478C3DA4();
    (*(v3 + 16))(v5, v6, v2);
    v7 = sub_2478D891C();
    v8 = sub_2478D8BAC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2478B3000, v7, v8, "#CSUIOpenWithFlow Open-with flow building menu without being prepared!", v9, 2u);
      MEMORY[0x24C1ADC70](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v20[0] = 0;
    v10 = [v1 prepareAndReturnError_];
    v11 = v20[0];
    if (!v10)
    {
LABEL_9:
      v19 = v11;
      sub_2478D881C();

      swift_willThrow();
      return;
    }

    v12 = v20[0];
  }

  v13 = *&v1[OBJC_IVAR___CSUIOpenWithFlow_constructor];
  v14 = *&v1[OBJC_IVAR___CSUIOpenWithFlow_mutableState];
  os_unfair_lock_lock((v14 + 32));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v15;
    os_unfair_lock_unlock((v14 + 32));
    v20[0] = 0;
    v17 = [v13 buildUIMenuForPreparedMenu:v16 withError:v20];

    v11 = v20[0];
    if (v17)
    {
      v18 = v20[0];
      return;
    }

    goto LABEL_9;
  }

  __break(1u);
}

void __swiftcall CSUIOpenWithFlow.init()(CSUIOpenWithFlow *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_2478C4D10()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v0 setMaxConcurrentOperationCount_];
  v1 = sub_2478D89BC();
  [v0 setName_];

  qword_27EE571A8 = v0;
}

uint64_t *sub_2478C4D98()
{
  if (qword_27EE56550 != -1)
  {
    swift_once();
  }

  return &qword_27EE571A8;
}

id sub_2478C4DE8()
{
  if (qword_27EE56550 != -1)
  {
    swift_once();
  }

  v0 = qword_27EE571A8;

  return v0;
}

void sub_2478C4E4C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_2478D893C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2478C3DA4();
  (*(v7 + 16))(v9, v10, v6);
  v11 = a1;
  v12 = sub_2478D891C();
  v13 = sub_2478D8BBC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = a2;
    v17 = v16;
    v30 = a1;
    v31 = v16;
    *v15 = 136315138;
    v18 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54F90, qword_2478DB7D0);
    v19 = sub_2478D8A1C();
    v21 = sub_2478C0DB0(v19, v20, &v31);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2478B3000, v12, v13, "#CSUIOpenWithFlow open complete, error: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    v22 = v17;
    a2 = v28;
    MEMORY[0x24C1ADC70](v22, -1, -1);
    v23 = v15;
    a3 = v29;
    MEMORY[0x24C1ADC70](v23, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v24 = [a2 delegate];
  if (v24)
  {
    v25 = v24;
    if (a1)
    {
      if ([v24 respondsToSelector_])
      {
        v26 = a1;
        swift_unknownObjectRetain();
        v27 = sub_2478D880C();
        [v25 openWithFlow:a2 didFailToOpenUsingBoundBundle:a3 withError:v27];
        swift_unknownObjectRelease_n();

        return;
      }
    }

    else if ([v24 respondsToSelector_])
    {
      [v25 openWithFlow:a2 didOpenUsingBoundBundle:a3];
    }

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall CSUIOpenWithFlow.openWithMenuDidSelectAppStoreItem(from:)(CSUIOpenWithMenuConstructor *from)
{
  if (qword_27EE56550 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE571A8;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v6[4] = sub_2478C5FD4;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2478BF2D4;
  v6[3] = &block_descriptor_1;
  v4 = _Block_copy(v6);
  v5 = v1;

  [v2 addOperationWithBlock_];
  _Block_release(v4);
}

void sub_2478C530C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AF8, &qword_2478DA910);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = aBlock - v3;
  v5 = [objc_opt_self() defaultWorkspace];
  if (v5)
  {
    v6 = v5;
    sub_2478D888C();
    v7 = sub_2478D889C();
    v8 = *(v7 - 8);
    v9 = 0;
    if ((*(v8 + 48))(v4, 1, v7) != 1)
    {
      v9 = sub_2478D886C();
      (*(v8 + 8))(v4, v7);
    }

    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    aBlock[4] = sub_2478C63CC;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2478C57DC;
    aBlock[3] = &block_descriptor_18;
    v11 = _Block_copy(aBlock);
    v12 = a1;

    [v6 openURL:v9 configuration:0 completionHandler:v11];
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_2478C551C(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_2478D893C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2478C3DA4();
  (*(v7 + 16))(v9, v10, v6);

  v11 = a2;
  v12 = sub_2478D891C();
  v13 = sub_2478D8BBC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 67109378;
    *(v14 + 4) = a1 != 0;

    *(v14 + 8) = 2112;
    if (a2)
    {
      v16 = a2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v17;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    *(v14 + 10) = v17;
    *v15 = v18;
    _os_log_impl(&dword_2478B3000, v12, v13, "#CSUIOpenWithFlow opened app store: %{BOOL}d, %@", v14, 0x12u);
    sub_2478C63D4(v15);
    MEMORY[0x24C1ADC70](v15, -1, -1);
    MEMORY[0x24C1ADC70](v14, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v9, v6);
  v19 = [a3 delegate];
  if (v19)
  {
    v20 = v19;
    if (a1)
    {
      if ([v19 respondsToSelector_])
      {
        [v20 openWithFlowDidOpenAppStore_];
      }

      goto LABEL_14;
    }

    if (([v19 respondsToSelector_] & 1) == 0)
    {
LABEL_14:
      swift_unknownObjectRelease();
      return;
    }

    if (a2)
    {
      swift_unknownObjectRetain();
      v21 = sub_2478D880C();
      [v20 openWithFlow:a3 didFailToOpenAppStoreWithError:v21];
      swift_unknownObjectRelease_n();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2478C57DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_2478D895C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_2478C5A10(void **a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = v3;

  *a1 = v3;
}

void sub_2478C5A54(void *a1)
{
  v3 = sub_2478D889C();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2478D893C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  v12 = sub_2478C3DA4();
  v13 = *(v7 + 16);
  v52 = v12;
  v53 = v7 + 16;
  v51 = v13;
  v13(v11);
  v14 = v1;
  swift_unknownObjectRetain();
  v15 = sub_2478D891C();
  v16 = sub_2478D8BBC();
  swift_unknownObjectRelease();

  v17 = os_log_type_enabled(v15, v16);
  v50 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v49 = v6;
    v19 = v18;
    v20 = swift_slowAlloc();
    v48 = v7;
    v21 = v20;
    v47 = swift_slowAlloc();
    v55 = v47;
    *v19 = 138412546;
    v22 = *&v14[OBJC_IVAR___CSUIOpenWithFlow_bindable];
    *(v19 + 4) = v22;
    *v21 = v22;
    *(v19 + 12) = 2080;
    v23 = v22;
    v24 = [a1 description];
    v25 = v5;
    v26 = a1;
    v27 = sub_2478D89EC();
    v29 = v28;

    v30 = sub_2478C0DB0(v27, v29, &v55);

    *(v19 + 14) = v30;
    a1 = v26;
    v5 = v25;
    _os_log_impl(&dword_2478B3000, v15, v16, "#CSUIOpenWithFlow begin open of %@ with %s", v19, 0x16u);
    sub_2478C63D4(v21);
    v31 = v21;
    v7 = v48;
    MEMORY[0x24C1ADC70](v31, -1, -1);
    v32 = v47;
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    MEMORY[0x24C1ADC70](v32, -1, -1);
    v33 = v19;
    v6 = v49;
    MEMORY[0x24C1ADC70](v33, -1, -1);
  }

  (*(v7 + 8))(v11, v6);
  v34 = a1;
  v35 = [a1 bundleURL];
  sub_2478D887C();

  v36 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v37 = sub_2478BB7B4(v5, 0);
  v38 = v34;
  v39 = v50;
  v40 = qword_27EE56550;
  v41 = v37;
  v42 = v37;
  if (v40 != -1)
  {
    swift_once();
  }

  v43 = qword_27EE571A8;
  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  *(v44 + 24) = v38;
  v45 = v39;
  swift_unknownObjectRetain();
  v46 = sub_2478BB3B8(v41, v43, sub_2478C647C, v44);

  [v42 detach];

  [v43 addOperation_];
}

uint64_t sub_2478C5F9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2478C5FF4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2478C6050(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t type metadata accessor for CSUIOpenWithFlow()
{
  result = qword_27EE56558[0];
  if (!qword_27EE56558[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27EE56558);
  }

  return result;
}

uint64_t sub_2478C6144(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2478C63D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54C30, &qword_2478DAF10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2478C643C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_2478C64A4(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  return a1;
}

uint64_t sub_2478C65FC(char a1, char a2, char a3, char a4)
{
  if (a2)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFFE | a1 & 1;
  if (a3)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if (a4)
  {
    v7 = 0x1000000;
  }

  else
  {
    v7 = 0;
  }

  return v5 | v6 | v7;
}

uint64_t sub_2478C669C()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 40));

  return v2;
}

uint64_t sub_2478C675C(char a1)
{
  v3 = *(v1 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v3 + 40));
  *(v3 + 16) = a1;
  os_unfair_lock_unlock((v3 + 40));
}

uint64_t sub_2478C681C()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 17);
  os_unfair_lock_unlock((v1 + 40));

  return v2;
}

uint64_t sub_2478C68DC(char a1)
{
  v3 = *(v1 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v3 + 40));
  *(v3 + 17) = a1;
  os_unfair_lock_unlock((v3 + 40));
}

uint64_t sub_2478C699C()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 19);
  os_unfair_lock_unlock((v1 + 40));

  return v2;
}

uint64_t sub_2478C6A5C(char a1)
{
  v3 = *(v1 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v3 + 40));
  *(v3 + 19) = a1;
  os_unfair_lock_unlock((v3 + 40));
}

uint64_t sub_2478C6B1C()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 24);
  os_unfair_lock_unlock((v1 + 40));

  return v2;
}

uint64_t sub_2478C6BDC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v3 + 40));
  *(v3 + 24) = a1;
  os_unfair_lock_unlock((v3 + 40));
}

uint64_t sub_2478C6C9C()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 32);
  os_unfair_lock_unlock((v1 + 40));

  return v2;
}

uint64_t sub_2478C6D5C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v3 + 40));
  *(v3 + 32) = a1;
  os_unfair_lock_unlock((v3 + 40));
}

char *sub_2478C6E40()
{
  v0 = [objc_allocWithZone(CSUIOpenWithMenuConfiguration) init];
  v1 = *&v0[OBJC_IVAR___CSUIOpenWithMenuConfiguration_state];

  os_unfair_lock_lock((v1 + 40));
  *(v1 + 16) = 16843008;
  *(v1 + 24) = xmmword_2478DB800;
  os_unfair_lock_unlock((v1 + 40));

  return v0;
}

char *sub_2478C6EC4()
{
  v0 = [objc_allocWithZone(CSUIOpenWithMenuConfiguration) init];
  v1 = *&v0[OBJC_IVAR___CSUIOpenWithMenuConfiguration_state];

  os_unfair_lock_lock((v1 + 40));
  *(v1 + 16) = 16843008;
  *(v1 + 24) = xmmword_2478DB800;
  os_unfair_lock_unlock((v1 + 40));

  return v0;
}

uint64_t sub_2478C6F54@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v3 + 40));
  v4 = *(v3 + 16);
  v5 = *(v3 + 17);
  v6 = *(v3 + 18);
  v7 = *(v3 + 19);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  os_unfair_lock_unlock((v3 + 40));

  v10 = [objc_allocWithZone(CSUIOpenWithMenuConfiguration) init];
  v11 = *&v10[OBJC_IVAR___CSUIOpenWithMenuConfiguration_state];

  os_unfair_lock_lock((v11 + 40));
  *(v11 + 16) = v4;
  *(v11 + 17) = v5;
  *(v11 + 18) = v6;
  *(v11 + 19) = v7;
  *(v11 + 24) = v8;
  *(v11 + 32) = v9;
  os_unfair_lock_unlock((v11 + 40));

  result = type metadata accessor for CSUIOpenWithMenuConfiguration(v12);
  a1[3] = result;
  *a1 = v10;
  return result;
}

id sub_2478C70EC()
{
  v2.receiver = v0;
  v2.super_class = _s23BoundBundlesObjcWrapperCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2478C71F8()
{
  if (*(v0 + OBJC_IVAR___CSUIOpenWithPreparedMenu_representativeBundleIndex + 8))
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR___CSUIOpenWithPreparedMenu_representativeBundleIndex);
  result = type metadata accessor for CSUIBoundBundle();
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *(v0 + OBJC_IVAR___CSUIOpenWithPreparedMenu_boundBundles);
  if (v2 >= *(v3 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v4 = v3 + 40 * v2;
  v9 = *(v4 + 32);
  v5 = *(v4 + 56);
  v10 = *(v4 + 40);
  v11 = v5;
  v6 = v5;
  v7 = v9;
  v8 = v10;
  return sub_2478C3084(&v9);
}

void sub_2478C73D8(void *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v7 = a3(v3);
  [v7 setRequireOpenInPlace_];
  if ((a2 & 1) == 0)
  {
    [v7 setIgnoreStrongBindingPreferences_];
  }

  type metadata accessor for CSUIBindable(0);
  sub_2478BB0F0(v7);
  if (!v4)
  {

    return;
  }

  v8 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
  sub_2478BCD34(0, &qword_27EE54FD0, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v9 = [v15 domain];
  v10 = sub_2478D89EC();
  v12 = v11;

  if (v10 == sub_2478D89EC() && v12 == v13)
  {

    goto LABEL_10;
  }

  v14 = sub_2478D8E5C();

  if (v14)
  {
LABEL_10:
    if ([v15 code] == -10814)
    {

      return;
    }
  }

  swift_willThrow();
LABEL_13:
}

id sub_2478C75E4(void *a1)
{
  v2 = [a1 requireOpenInPlace];

  return [v1 setRequireOpenInPlace_];
}

uint64_t sub_2478C7634(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2478C7674(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

unint64_t sub_2478C7738(unint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = result;
  result = sub_2478D8ADC();
  *(result + 16) = a2;
  v4 = (result + 32);
  if (a2 <= 3)
  {
    v5 = 0;
LABEL_9:
    v9 = a2 - v5;
    do
    {
      *v4++ = v3;
      --v9;
    }

    while (v9);
    return result;
  }

  v5 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v4 += a2 & 0x7FFFFFFFFFFFFFFCLL;
  v6 = vdupq_n_s64(v3);
  v7 = (result + 48);
  v8 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 += 2;
    v8 -= 4;
  }

  while (v8);
  if (v5 != a2)
  {
    goto LABEL_9;
  }

  return result;
}

void *sub_2478C77D8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54FD8, &qword_2478DB818);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[2];
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  if (a1[5] != 2)
  {
    return (*(*v1 + 112))(a1);
  }

  if (v11 == 1 || a1[8] != 3)
  {
    result = (*(*v1 + 104))(v8);
    if (!v2)
    {
      v15 = sub_2478D152C(a1, result);

      return v15;
    }
  }

  else
  {
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54FE0, &qword_2478DB820);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2478DAEF0;
    *(v13 + 32) = *sub_2478C2950();
    *(v13 + 40) = *sub_2478C295C();
    sub_2478C2970(v10);
    *&v10[*(v12 + 36)] = v11 - 2;
    v17 = v13;
    sub_2478D18A4(v10, v7);
    sub_2478CB940(v7);
    sub_2478BC950(v10, &qword_27EE54FD8, &qword_2478DB818);
    return v17;
  }

  return result;
}

uint64_t sub_2478C7A14()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_2478C7A54()
{
  v2 = *(v0 + 16);
  v3 = sub_2478BB094();
  v4 = [objc_allocWithZone(MEMORY[0x277CC1EA8]) initWithBindable_];

  [v4 setRequireOpenInPlace_];
  [v4 setIgnoreStrongBindingPreferences_];
  type metadata accessor for CSUIBindable(0);
  sub_2478BB0F0(v4);
  if (!v1)
  {

    return;
  }

  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
  sub_2478BCD34(0, &qword_27EE54FD0, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v6 = [v12 domain];
  v7 = sub_2478D89EC();
  v9 = v8;

  if (v7 == sub_2478D89EC() && v9 == v10)
  {

    goto LABEL_8;
  }

  v11 = sub_2478D8E5C();

  if (v11)
  {
LABEL_8:
    if ([v12 code] == -10814)
    {

      return;
    }
  }

  swift_willThrow();
LABEL_11:
}

uint64_t sub_2478C7C74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54FD8, &qword_2478DB818);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54FE0, &qword_2478DB820);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2478DA8C0;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2478DAEF0;
  *(v9 + 32) = *sub_2478C295C();
  *(v9 + 40) = *sub_2478C2950();
  v12 = v9;
  sub_2478C3A28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54FF0, &qword_2478DB828);
  sub_2478D1914();
  sub_2478D8C8C();
  *(v8 + 32) = v13;
  result = sub_2478C2970(v7);
  v11 = *(a1 + 16);
  if (v11)
  {
    *&v7[*(v2 + 36)] = v11 - 1;
    v13 = v8;
    sub_2478D18A4(v7, v5);
    sub_2478CB940(v5);
    sub_2478BC950(v7, &qword_27EE54FD8, &qword_2478DB818);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2478C7E4C()
{
  v2 = *(v0 + 16);
  v3 = objc_opt_self();
  v4 = sub_2478BB094();
  v5 = [v3 oneTapOpenClaimBindingConfigurationForBindable_];

  [v5 setRequireOpenInPlace_];
  [v5 setIgnoreStrongBindingPreferences_];
  type metadata accessor for CSUIBindable(0);
  sub_2478BB0F0(v5);
  if (!v1)
  {

    return;
  }

  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
  sub_2478BCD34(0, &qword_27EE54FD0, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = [v13 domain];
  v8 = sub_2478D89EC();
  v10 = v9;

  if (v8 == sub_2478D89EC() && v10 == v11)
  {

    goto LABEL_8;
  }

  v12 = sub_2478D8E5C();

  if (v12)
  {
LABEL_8:
    if ([v13 code] == -10814)
    {

      return;
    }
  }

  swift_willThrow();
LABEL_11:
}

void sub_2478C807C(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v5 = (*(*v1 + 104))();
  v6 = v5;
  if (v2)
  {
    return;
  }

  v7 = 0;
  v8 = *(v5 + 16);
  v9 = (a1 + 48);
  do
  {
    if (v8)
    {
      if (!*(v6 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      v10 = *(v9 - 2);
      v11 = *v9;
      v12 = *(v6 + 32);
      sub_2478BCD34(0, &qword_27EE55000, 0x277CC1E90);
      v13 = v11;
      v14 = v12;
      v15 = v10;
      v16 = sub_2478D8BEC();

      if (v16)
      {

        v17 = 0;
        goto LABEL_11;
      }
    }

    v9 += 3;
    ++v7;
  }

  while (v3 != v7);

  v7 = 0;
  v17 = 1;
LABEL_11:
  v18 = *sub_2478C293C();
  v19 = sub_2478D8ADC();
  *(v19 + 16) = v3;
  v20 = v19 + 32;
  if (v3 > 3)
  {
    v21 = v3 & 0x7FFFFFFFFFFFFFFCLL;
    v22 = (v20 + 8 * (v3 & 0x7FFFFFFFFFFFFFFCLL));
    v23 = vdupq_n_s64(v18);
    v24 = (v19 + 48);
    v25 = v3 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v24[-1] = v23;
      *v24 = v23;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v3 == v21)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v21 = 0;
    v22 = (v19 + 32);
  }

  v26 = v3 - v21;
  do
  {
    *v22++ = v18;
    --v26;
  }

  while (v26);
LABEL_18:
  if (v17)
  {
    return;
  }

  v27 = v19;
  v28 = sub_2478C295C();
  if (v7 < *(v27 + 16))
  {
    *(v20 + 8 * v7) = *v28;
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_2478C8254(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*sub_2478C8294(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_2478C82E0;
}

uint64_t sub_2478C82E0(void *a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_2478C832C()
{
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

id sub_2478C836C(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration_];

  return v2;
}

id sub_2478C83B4(void *a1)
{
  v2 = sub_2478D1978(a1);

  return v2;
}

uint64_t sub_2478C8488()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithMenuConstructor_mutableState);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  return Strong;
}

uint64_t sub_2478C854C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CSUIOpenWithMenuConstructor_mutableState);
  os_unfair_lock_lock(v2 + 6);
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v2 + 6);

  return swift_unknownObjectRelease();
}

uint64_t sub_2478C85A8(unint64_t a1)
{
  v3 = v2;
  v5 = sub_2478D889C();
  v214 = *(v5 - 8);
  v215 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v192 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = (&v192 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55010, &qword_2478DB830);
  v209 = *(v14 - 8);
  v210 = v14;
  MEMORY[0x28223BE20](v14);
  v211 = &v192 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE55018, &qword_2478DB838);
  v212 = *(v16 - 1);
  v213 = v16;
  MEMORY[0x28223BE20](v16);
  v204 = &v192 - v17;
  v18 = a1 >> 62;
  if (a1 >> 62)
  {
    v188 = sub_2478D8DAC();
    if (v188 >= 1)
    {
      v208 = v2;
      v3 = (a1 >> 62);
      v18 = v188;
      v189 = sub_2478D8DAC();
      if (v189)
      {
        goto LABEL_235;
      }

      __break(1u);
    }

    goto LABEL_218;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v20 = v19;
  if (!v19)
  {
LABEL_218:
    type metadata accessor for CSUIError(0);
    v122 = 1;
    goto LABEL_219;
  }

  while (1)
  {
    v198 = a1 & 0xC000000000000001;
    v208 = v8;
    v201 = v11;
    v196 = v20;
    v199 = v18;
    v197 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = v3;
      v21 = MEMORY[0x24C1AD450](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_223:
        __break(1u);
        goto LABEL_224;
      }

      v8 = v3;
      v21 = *(a1 + 32);
    }

    v3 = v21;
    v194 = v1;
    v22 = *(v1 + OBJC_IVAR___CSUIOpenWithMenuConstructor_configuration);
    v23 = sub_2478BB094();
    v24 = [objc_allocWithZone(MEMORY[0x277CC1EA8]) initWithBindable_];

    v205 = v22;
    [v24 setRequireOpenInPlace_];
    v11 = type metadata accessor for CSUIBindable(0);
    v1 = v11;
    v25 = sub_2478BB0F0(v24);
    if (v8)
    {
      v207 = v3;
      v218 = v8;
      v26 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
      sub_2478BCD34(0, &qword_27EE54FD0, 0x277CCA9B8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_24;
      }

      v27 = v217;
      v28 = [v217 domain];
      v29 = sub_2478D89EC();
      v31 = v30;

      v32 = sub_2478D89EC();
      v1 = v33;
      if (v29 == v32 && v31 == v33)
      {
      }

      else
      {
        v34 = sub_2478D8E5C();

        if ((v34 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if ([v27 code] != -10814)
      {
LABEL_23:
        swift_willThrow();
LABEL_24:
        v46 = v207;

        return v46;
      }

      v8 = 0;
      v200 = MEMORY[0x277D84F90];
    }

    else
    {
      v200 = v25;
    }

    v35 = v200;
    v13 = v200[2];
    v18 = MEMORY[0x277D84F90];
    v195 = a1;
    v206 = v11;
    v203 = v19;
    v193 = v13;
    if (v13)
    {
      v207 = 0;
      v218 = MEMORY[0x277D84F90];
      sub_2478D09C0(0, v13, 0);
      v18 = v218;
      v36 = (v35 + 6);
      v3 = v204;
      do
      {
        v37 = *(v36 - 2);
        v38 = *(v36 - 1);
        v39 = *v36;
        v40 = &v3[*(v213 + 12)];
        v41 = *v36;
        v1 = v37;
        v42 = [v1 URL];
        sub_2478D887C();

        *v40 = v1;
        v40[1] = v38;
        v40[2] = v39;
        v218 = v18;
        v44 = *(v18 + 16);
        v43 = *(v18 + 24);
        if (v44 >= v43 >> 1)
        {
          v1 = &v218;
          sub_2478D09C0((v43 > 1), v44 + 1, 1);
          v18 = v218;
        }

        v36 += 3;
        *(v18 + 16) = v44 + 1;
        sub_2478BC9B0(v3, v18 + ((v212[80] + 32) & ~v212[80]) + *(v212 + 9) * v44, &unk_27EE55018, &qword_2478DB838);
        v13 = (v13 - 1);
      }

      while (v13);
      v11 = v206;
      v8 = v207;
    }

    if (*(v18 + 16))
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55030, &qword_2478DB840);
      v45 = sub_2478D8DEC();
    }

    else
    {
      v45 = MEMORY[0x277D84F98];
    }

    v218 = v45;

    sub_2478CC330(v47, 1, &v218);
    a1 = v8;
    if (v8)
    {
      goto LABEL_231;
    }

    v212 = v218;
    v48 = v200;
    v13 = v200[2];
    v49 = MEMORY[0x277D84F90];
    if (!v13)
    {
      goto LABEL_34;
    }

    v207 = 0;
    v218 = MEMORY[0x277D84F90];

    v1 = &v218;
    v50 = sub_2478D0980(0, v13, 0);
    v51 = 0;
    v49 = v218;
    v213 = *(v48 + 16);
    v11 = v48 + 48;
    do
    {
      v52 = v213;
      if (v213 == v51)
      {
        __break(1u);
        goto LABEL_159;
      }

      v53 = *(v11 - 16);
      v8 = *(v210 + 12);
      v1 = *v11;
      v54 = v53;
      v55 = [v54 URL];
      v3 = v211;
      sub_2478D887C();

      *&v3[v8] = v51;
      v218 = v49;
      v48 = *(v49 + 2);
      v56 = *(v49 + 3);
      v18 = v48 + 1;
      if (v48 >= v56 >> 1)
      {
        v1 = &v218;
        sub_2478D0980((v56 > 1), v48 + 1, 1);
        v3 = v211;
        v49 = v218;
      }

      ++v51;
      *(v49 + 2) = v18;
      v50 = sub_2478BC9B0(v3, &v49[((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v48], &qword_27EE55010, &qword_2478DB830);
      v11 += 24;
    }

    while (v13 != v51);

    v11 = v206;
    a1 = v207;
LABEL_34:
    if (*(v49 + 2))
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55038, &qword_2478DB848);
      v57 = sub_2478D8DEC();
    }

    else
    {
      v57 = MEMORY[0x277D84F98];
    }

    v218 = v57;

    sub_2478CBDE4(v58, 1, &v218);
    v8 = a1;
    if (a1)
    {
      goto LABEL_231;
    }

    v202 = v218;
    a1 = MEMORY[0x277D84F90];
    if (v193)
    {
      v207 = 0;
      v218 = MEMORY[0x277D84F90];
      v59 = v193;
      sub_2478D0960(0, v193, 0);
      v60 = v218;
      v61 = (v200 + 6);
      v3 = v197;
      do
      {
        v62 = *(v61 - 2);
        v63 = *v61;
        v64 = v62;
        v65 = [v64 URL];
        sub_2478D887C();

        v218 = v60;
        v67 = *(v60 + 2);
        v66 = *(v60 + 3);
        v18 = v67 + 1;
        if (v67 >= v66 >> 1)
        {
          sub_2478D0960((v66 > 1), v67 + 1, 1);
          v60 = v218;
        }

        v61 += 3;
        *(v60 + 2) = v18;
        (*(v214 + 4))(&v60[((v214[80] + 32) & ~v214[80]) + *(v214 + 9) * v67], v3, v215);
        --v59;
      }

      while (v59);
      v11 = v206;
      v8 = v207;
      a1 = MEMORY[0x277D84F90];
    }

    else
    {
      v60 = MEMORY[0x277D84F90];
    }

    v209 = sub_2478D1A60(v60);

    v1 = v195;
    v68 = v203;
    if (v203 < 0)
    {
      goto LABEL_230;
    }

    v18 = v199;
    v3 = v202;
    if (v199)
    {
      if (sub_2478D8DAC() < 1)
      {
        goto LABEL_224;
      }

      v69 = sub_2478D8DAC();
    }

    else
    {
      v69 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v69)
      {
LABEL_224:
        __break(1u);
        goto LABEL_225;
      }
    }

    if (v69 >= v68)
    {
      break;
    }

LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    swift_unexpectedError();
    __break(1u);
LABEL_232:

    v191 = v207;
LABEL_234:

    __break(1u);
LABEL_235:
    v19 = v189;
    v20 = v18;
    v18 = v3;
    v3 = v208;
  }

  if (!v198)
  {

    if (!v18)
    {
      goto LABEL_57;
    }

LABEL_60:

    v197 = sub_2478D8DBC();
    v204 = v72;
    v46 = v73;
    v68 = v74 >> 1;
    if (v73 != v74 >> 1)
    {
      goto LABEL_70;
    }

LABEL_61:
    swift_unknownObjectRelease();

    v218 = sub_2478CCDA0(v209);
    sub_2478D33E0(&v218, v3);
    v207 = v8;
    if (v8)
    {
      goto LABEL_232;
    }

    v18 = v218;
    v8 = *(v218 + 2);
    v46 = v212;
    v13 = v208;
    if (v8)
    {
      goto LABEL_63;
    }

    if (([v205 allowMenuWithNoApplications] & 1) == 0)
    {

      type metadata accessor for CSUIError(0);
      v122 = 2;
LABEL_219:
      v217 = v122;
      v46 = sub_2478BC694(MEMORY[0x277D84F90]);
      sub_2478D3868(&qword_27EE54EC0, type metadata accessor for CSUIError, &unk_2478DB750);
      sub_2478D87FC();
      swift_willThrow();
      return v46;
    }

    v8 = *(v18 + 16);
    if (v8)
    {
LABEL_63:
      v218 = a1;
      sub_2478BC2DC(0, v8, 0);
      v1 = v218;
      v213 = *(v214 + 2);
      v214 += 16;
      v75 = (v214[64] + 32) & ~v214[64];
      v204 = v18;
      v18 += v75;
      v76 = *(v214 + 7);
      v210 = v214 - 8;
      v211 = v76;
      v68 = 24;
      v3 = v214 - 8;
      while (1)
      {
        v77 = (v213)(v13, v18, v215);
        if (!*(v46 + 16))
        {
          break;
        }

        v78 = v1;
        v77 = sub_2478CF9E8(v13);
        if ((v79 & 1) == 0)
        {
          goto LABEL_194;
        }

        v80 = *(v46 + 56) + 24 * v77;
        v81 = *(v80 + 8);
        v82 = *(v80 + 16);
        v83 = *v3;
        v84 = *v80;
        v85 = v82;
        v83(v13, v215);
        v1 = v78;
        v218 = v78;
        v86 = *(v78 + 2);
        v87 = *(v1 + 24);
        if (v86 >= v87 >> 1)
        {
          sub_2478BC2DC((v87 > 1), v86 + 1, 1);
          v1 = v218;
        }

        *(v1 + 16) = v86 + 1;
        v88 = (v1 + 24 * v86);
        v88[4] = v84;
        v88[5] = v81;
        v88[6] = v82;
        v46 = v212;
        v18 += v211;
        --v8;
        v13 = v208;
        v68 = 24;
        if (!v8)
        {

          goto LABEL_88;
        }
      }

      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      v1 = v77;

      v178 = v1;
LABEL_201:
      v11 = 0;
      v214 = *(v178 + 16);
      a1 = (v3 + 48);
      v180 = v213;
      v212 = v178;
      while (1)
      {
        if (v180 == v11)
        {
          goto LABEL_226;
        }

        if (v214)
        {
          if (!*(v178 + 16))
          {
            goto LABEL_227;
          }

          v13 = v8;
          v181 = *(a1 - 16);
          v182 = *a1;
          v183 = *(v178 + 32);
          sub_2478BCD34(0, &qword_27EE55000, 0x277CC1E90);
          v184 = v182;
          v185 = v183;
          v186 = v181;
          v1 = sub_2478D8BEC();

          v178 = v212;
          v180 = v213;
          v8 = v13;
          v3 = v200;
          if (v1)
          {
            break;
          }
        }

        ++v11;
        a1 += 24;
        if (v180 == v11)
        {

          goto LABEL_210;
        }
      }

      v187 = sub_2478C295C();
      if (v11 >= *(v46 + 16))
      {
        goto LABEL_229;
      }

      *(v46 + 8 * v11 + 32) = *v187;
LABEL_210:
      v121 = v215;
      a1 = v211;
      if (v8)
      {
        goto LABEL_168;
      }

      goto LABEL_167;
    }

    v1 = MEMORY[0x277D84F90];
LABEL_88:
    sub_2478C2D4C();
    v213 = v107;
    a1 = *(v1 + 16);
    v215 = v1;
    if (a1)
    {
      v8 = 0;
      v11 = v1 + 32;
      v46 = *(v213 + 2);
      v214 = v213 + 32;
      while (v8 < *(v1 + 16))
      {
        v108 = (v11 + 24 * v8);
        v109 = *v108;
        v110 = v108[2];
        v18 = v109;
        if (v46)
        {
          v13 = v214;
          v68 = v46;
          do
          {
            v111 = *v13++;
            [v18 performSelector_];
            --v68;
          }

          while (v68);
        }

        ++v8;
        [v18 detach];

        v1 = v215;
        if (v8 == a1)
        {
          goto LABEL_96;
        }
      }

      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      v179 = sub_2478D8E5C();

      if (v179)
      {
        goto LABEL_199;
      }

      goto LABEL_212;
    }

LABEL_96:

    v112 = *(v1 + 16);
    v18 = MEMORY[0x277D84F90];
    if (v112)
    {
      v218 = MEMORY[0x277D84F90];
      sub_2478D8D5C();
      v113 = (v1 + 48);
      v114 = v112;
      v3 = v200;
      do
      {
        v115 = *(v113 - 2);
        v116 = *v113;
        v113 += 3;
        v117 = v116;
        v118 = v115;
        sub_2478C2DC0(v118);

        sub_2478D8D3C();
        sub_2478D8D6C();
        sub_2478D8D7C();
        sub_2478D8D4C();
        --v114;
      }

      while (v114);
      v18 = v218;
    }

    else
    {
      v3 = v200;
    }

    v11 = v206;
    v8 = v207;
    if (v196 != 1)
    {

      v120 = sub_2478C293C();
      v46 = sub_2478C7738(*v120, v112);
      v121 = v215;
LABEL_170:
      v1 = sub_2478CA0B8(v121, v46);

      sub_2478CA2DC(v1, v18);
      v163 = v162;
      a1 = v8;

      v218 = v163;

      sub_2478CCD34(&v218);
      if (!v8)
      {

        v18 = v218;
        if (!*(v218 + 2))
        {
          goto LABEL_188;
        }

        if ([v205 representativeBundlePolicy] == 1)
        {
          v214 = *(v18 + 16);
          if (v214)
          {
            v3 = 0;
            v13 = *MEMORY[0x277CC1F20];
            v164 = (v18 + 56);
            v207 = 0;
            v213 = v18;
            while (v3 < *(v18 + 16))
            {
              a1 = *(v164 - 2);
              if (a1)
              {
                v215 = *(v164 - 1);
                v165 = *v164;
                v166 = sub_2478D89EC();
                v1 = v167;
                if (v166 == sub_2478D89EC() && v1 == v168)
                {
                  v170 = 1;
                }

                else
                {
                  v170 = sub_2478D8E5C();
                }

                v11 = v165;
                v171 = v13;
                v172 = v13;
                a1 = a1;

                if (v170)
                {
                  v173 = 0;
                  v18 = v213;
                  goto LABEL_191;
                }

                v8 = v207;
                v18 = v213;
                v13 = v171;
                if ((v215 & 0xFFFFFFFFFFFFFFFELL) == 2)
                {
                  goto LABEL_190;
                }
              }

              else if ((*(v164 - 1) & 0xFFFFFFFFFFFFFFFELL) == 2)
              {
                goto LABEL_190;
              }

              ++v3;
              v164 += 5;
              if (v214 == v3)
              {
                goto LABEL_188;
              }
            }

            goto LABEL_223;
          }

LABEL_188:
          v3 = 0;
          v173 = 1;
        }

        else
        {
          v3 = 0;
LABEL_190:
          v173 = 0;
        }

LABEL_191:
        v174 = _s23BoundBundlesObjcWrapperCMa();
        v175 = objc_allocWithZone(v174);
        *&v175[OBJC_IVAR____TtCE14CoreServicesUICSo24CSUIOpenWithPreparedMenuP33_66079D085FF6FB5157D5A6D61FF9E78423BoundBundlesObjcWrapper_boundBundles] = v18;
        v176 = &v175[OBJC_IVAR____TtCE14CoreServicesUICSo24CSUIOpenWithPreparedMenuP33_66079D085FF6FB5157D5A6D61FF9E78423BoundBundlesObjcWrapper_representativeBundleIndex];
        *v176 = v3;
        v176[8] = v173;
        v216.receiver = v175;
        v216.super_class = v174;
        v177 = objc_msgSendSuper2(&v216, sel_init);
        v46 = [objc_allocWithZone(CSUIOpenWithPreparedMenu) initWithBoundBundlesWrapper_];

        return v46;
      }

      v191 = v8;
      goto LABEL_234;
    }

    if (v198)
    {
      v119 = MEMORY[0x24C1AD450](0, v195);
    }

    else
    {
      v119 = *(v195 + 32);
    }

    a1 = v119;
    v123 = *(v194 + OBJC_IVAR___CSUIOpenWithMenuConstructor_configuration);
    v124 = [v123 bindingPreferenceDisplayStyle];
    if (v124 <= 2)
    {
      if (v124 != 1)
      {
        if (v124 == 2)
        {
          type metadata accessor for ClassicSeparateBindingAnnotationHelper();
          goto LABEL_120;
        }

LABEL_122:
        v128 = sub_2478C293C();
        v129 = *(v3 + 2);
        if (v129)
        {
          v11 = a1;
          v130 = *v128;
          v131 = sub_2478D8ADC();
          v46 = v131;
          *(v131 + 16) = v129;
          v132 = (v131 + 32);
          if (v129 < 4)
          {
            v133 = 0;
            goto LABEL_138;
          }

          v133 = v129 & 0x7FFFFFFFFFFFFFFCLL;
          v132 += v129 & 0x7FFFFFFFFFFFFFFCLL;
          v140 = vdupq_n_s64(v130);
          v141 = (v131 + 48);
          v142 = v129 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v141[-1] = v140;
            *v141 = v140;
            v141 += 2;
            v142 -= 4;
          }

          while (v142);
          if (v129 != v133)
          {
LABEL_138:
            v143 = v129 - v133;
            do
            {
              *v132++ = v130;
              --v143;
            }

            while (v143);
          }

LABEL_140:
          v121 = v215;
          a1 = v11;
LABEL_167:
          if (v8)
          {
            goto LABEL_168;
          }

LABEL_169:

          goto LABEL_170;
        }

        v46 = MEMORY[0x277D84F90];
LABEL_166:
        v121 = v215;
        goto LABEL_167;
      }

      v11 = a1;
      v51 = *(v3 + 2);
      if (!v51)
      {
        v46 = MEMORY[0x277D84F90];
        goto LABEL_140;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54FE0, &qword_2478DB820);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_2478DA8C0;
      *(v48 + 32) = *sub_2478C295C();
      v134 = sub_2478C293C();
      v1 = (v51 - 1);
      if (v51 == 1)
      {
        v50 = MEMORY[0x277D84F90];
LABEL_165:
        a1 = v11;
        v218 = v48;
        sub_2478CBCF8(v50);
        v46 = v218;
        goto LABEL_166;
      }

      v8 = *v134;
      v50 = sub_2478D8ADC();
      *(v50 + 16) = v1;
      v52 = (v50 + 32);
      if (v51 <= 4)
      {
        v144 = 0;
        goto LABEL_162;
      }

LABEL_159:
      v144 = v1 & 0xFFFFFFFFFFFFFFFCLL;
      v52 += v1 & 0xFFFFFFFFFFFFFFFCLL;
      v158 = vdupq_n_s64(v8);
      v159 = (v50 + 48);
      v160 = v1 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v159[-1] = v158;
        *v159 = v158;
        v159 += 2;
        v160 -= 4;
      }

      while (v160);
      if (v1 != v144)
      {
LABEL_162:
        v161 = &v51[~v144];
        do
        {
          *v52++ = v8;
          --v161;
        }

        while (v161);
      }

      v8 = v207;
      goto LABEL_165;
    }

    if (v124 != 3)
    {
      if (v124 != 4)
      {
        goto LABEL_122;
      }

      type metadata accessor for OneTapSeparateBindingAnnotationHelper();
LABEL_120:
      v125 = swift_allocObject();
      *(v125 + 16) = v123;
      *(v125 + 24) = a1;
      v126 = v123;
      v127 = a1;
      v46 = sub_2478C77D8(v3);

      if (v8)
      {
        goto LABEL_168;
      }

      v121 = v215;
      goto LABEL_169;
    }

    v135 = *(v3 + 2);
    if (!v135)
    {
      v46 = MEMORY[0x277D84F90];
      goto LABEL_151;
    }

    v211 = a1;
    v136 = *sub_2478C293C();
    v137 = sub_2478D8ADC();
    v46 = v137;
    *(v137 + 16) = v135;
    v1 = v137 + 32;
    if (v135 > 3)
    {
      v138 = v135 & 0x7FFFFFFFFFFFFFFCLL;
      v139 = (v1 + 8 * (v135 & 0x7FFFFFFFFFFFFFFCLL));
      v145 = vdupq_n_s64(v136);
      v146 = (v137 + 48);
      v147 = v135 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v146[-1] = v145;
        *v146 = v145;
        v146 += 2;
        v147 -= 4;
      }

      while (v147);
      if (v135 == v138)
      {
LABEL_148:
        if (*(v3 + 5) != 2)
        {
          v213 = v135;
          v13 = *(v194 + OBJC_IVAR___CSUIOpenWithMenuConstructor_configuration);
          v150 = objc_opt_self();
          a1 = v211;
          v151 = sub_2478BB094();
          v68 = [v150 oneTapOpenClaimBindingConfigurationForBindable_];

          [v68 setRequireOpenInPlace_];
          [v68 setIgnoreStrongBindingPreferences_];
          v77 = sub_2478BB0F0(v68);
          if (!v8)
          {
            goto LABEL_195;
          }

          v218 = v8;
          v152 = v8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
          sub_2478BCD34(0, &qword_27EE54FD0, 0x277CCA9B8);
          if (swift_dynamicCast())
          {

            v8 = v217;
            v153 = [v217 domain];
            v154 = sub_2478D89EC();
            v1 = v155;

            v156 = sub_2478D89EC();
            v13 = v157;
            if (v154 != v156 || v1 != v157)
            {
              goto LABEL_198;
            }

LABEL_199:
            if ([v8 code] == -10814)
            {

              v8 = 0;
              v178 = MEMORY[0x277D84F90];
              v3 = v200;
              goto LABEL_201;
            }

LABEL_212:
            swift_willThrow();
            v3 = v200;
          }

          v121 = v215;

          if (v8)
          {
LABEL_168:

            return v46;
          }

          goto LABEL_167;
        }

        v149 = sub_2478C2950();
        a1 = v211;
        if (*(v46 + 16))
        {
          *v1 = *v149;
LABEL_151:
          v121 = v215;
          if (v8)
          {
            goto LABEL_168;
          }

          goto LABEL_167;
        }

        goto LABEL_228;
      }
    }

    else
    {
      v138 = 0;
      v139 = (v137 + 32);
    }

    v148 = v135 - v138;
    do
    {
      *v139++ = v136;
      --v148;
    }

    while (v148);
    goto LABEL_148;
  }

  if (v68 != 1)
  {
    v70 = 1;
    do
    {
      v71 = v70 + 1;
      sub_2478D8CFC();
      v70 = v71;
    }

    while (v68 != v71);
  }

  if (v18)
  {
    goto LABEL_60;
  }

LABEL_57:
  v197 = v1 & 0xFFFFFFFFFFFFFF8;
  v204 = ((v1 & 0xFFFFFFFFFFFFFF8) + 32);
  v46 = 1;
  if (v68 == 1)
  {
    goto LABEL_61;
  }

LABEL_70:
  v199 = *MEMORY[0x277CCA590];
  v11 = (v214 + 32);
  v203 = v68;
  while (2)
  {
    if (v46 >= v68)
    {
      goto LABEL_197;
    }

    v211 = v46;
    v213 = *&v204[8 * v46];
    v89 = sub_2478BB094();
    v46 = [objc_allocWithZone(MEMORY[0x277CC1EA8]) initWithBindable_];

    [v46 setRequireOpenInPlace_];
    v90 = sub_2478BB0F0(v46);
    if (!v8)
    {
      v18 = v90;

      v98 = *(v18 + 16);
      if (v98)
      {
        goto LABEL_83;
      }

      goto LABEL_79;
    }

    v218 = v8;
    v91 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
    sub_2478BCD34(0, &qword_27EE54FD0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {

      v92 = v217;
      v93 = [v217 domain];
      v94 = sub_2478D89EC();
      v96 = v95;

      if (v94 == sub_2478D89EC() && v96 == v97)
      {
      }

      else
      {
        v99 = sub_2478D8E5C();

        if ((v99 & 1) == 0)
        {
          goto LABEL_108;
        }
      }

      if ([v92 code] != -10814)
      {
LABEL_108:

        swift_willThrow();

        goto LABEL_111;
      }

      v8 = 0;
      a1 = MEMORY[0x277D84F90];
      v18 = MEMORY[0x277D84F90];
      v98 = *(MEMORY[0x277D84F90] + 16);
      if (v98)
      {
LABEL_83:
        v207 = 0;
        v218 = a1;
        sub_2478D0960(0, v98, 0);
        v1 = v218;
        v210 = v18;
        v100 = (v18 + 48);
        v101 = v201;
        do
        {
          v102 = *(v100 - 2);
          v103 = *v100;
          v13 = v102;
          v104 = [v13 URL];
          sub_2478D887C();

          v218 = v1;
          v106 = *(v1 + 16);
          v105 = *(v1 + 24);
          v18 = v106 + 1;
          if (v106 >= v105 >> 1)
          {
            sub_2478D0960((v105 > 1), v106 + 1, 1);
            v1 = v218;
          }

          v100 += 3;
          *(v1 + 16) = v18;
          (*(v214 + 4))(v1 + ((v214[80] + 32) & ~v214[80]) + *(v214 + 9) * v106, v101, v215);
          --v98;
        }

        while (v98);

        v8 = v207;
        v3 = v202;
        v68 = v203;
        a1 = MEMORY[0x277D84F90];
LABEL_71:
        v46 = v211 + 1;
        v209 = sub_2478CCB94(v1, v209);

        if (v46 == v68)
        {
          goto LABEL_61;
        }

        continue;
      }

LABEL_79:

      v1 = a1;
      goto LABEL_71;
    }

    break;
  }

LABEL_111:
  swift_unknownObjectRelease();

  return v46;
}

uint64_t sub_2478CA0B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v39 = MEMORY[0x277D84F90];
  sub_2478D0940(0, v6, 0);
  result = v39;
  v31 = v5;
  v32 = v4;
  v29 = a1;
  v30 = v6;
  v28 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 48);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v33 = v6;
      v10 = *v9;
      v35 = *(v9 - 1);
      v37 = *v8;
      v40 = result;
      v12 = *(result + 16);
      v11 = *(result + 24);
      v13 = result;
      v34 = *(v9 - 2);
      v14 = v10;
      result = v13;
      if (v12 >= v11 >> 1)
      {
        sub_2478D0940((v11 > 1), v12 + 1, 1);
        result = v40;
      }

      *(result + 16) = v12 + 1;
      v15 = (result + 32 * v12);
      v15[4] = v34;
      v15[5] = v35;
      --v5;
      v15[6] = v10;
      v15[7] = v37;
      --v4;
      ++v8;
      v9 += 3;
      v6 = v33 - 1;
      if (v33 == 1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v17 = v31;
    v16 = v32;
    if (v32 <= v31)
    {
      return result;
    }

    v18 = v30;
    v19 = (v29 + 24 * v30 + 48);
    while (v18 < v16)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_24;
      }

      if (v17 != v18)
      {
        if (v18 >= v17)
        {
          goto LABEL_25;
        }

        v21 = *v19;
        v36 = *(v28 + 32 + 8 * v18);
        v38 = *(v19 - 1);
        v41 = result;
        v22 = *(result + 16);
        v23 = *(result + 24);
        v24 = result;
        v25 = *(v19 - 2);
        v26 = v21;
        result = v24;
        if (v22 >= v23 >> 1)
        {
          sub_2478D0940((v23 > 1), v22 + 1, 1);
          result = v41;
        }

        *(result + 16) = v22 + 1;
        v27 = (result + 32 * v22);
        v27[4] = v25;
        v27[5] = v38;
        v27[6] = v21;
        v27[7] = v36;
        ++v18;
        v19 += 3;
        v17 = v31;
        v16 = v32;
        if (v20 != v32)
        {
          continue;
        }
      }

      return result;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_2478CA2DC(uint64_t a1, uint64_t a2)
{
  v28 = MEMORY[0x277D84F90];
  sub_2478D0920(0, 0, 0);
  v4 = v28;
  v23 = *(a1 + 16);
  if (v23)
  {
    v5 = 0;
    v21 = a2 + 32;
    v22 = a2;
    v6 = (a1 + 56);
    do
    {
      v7 = *(a2 + 16);
      if (v5 == v7)
      {
        break;
      }

      if (v5 >= v7)
      {
        __break(1u);
        return;
      }

      v8 = *(v6 - 3);
      v9 = *(v6 - 1);
      v24 = *v6;
      v25 = *(v6 - 2);
      v10 = *(v21 + 8 * v5);
      v11 = v10;
      v12 = v8;
      v13 = v9;
      [v12 detach];
      if (v9)
      {
        v14 = [v13 handlerRank];
      }

      else
      {
        v14 = 0;
      }

      v15 = v11;
      sub_2478C3004(v12, v14, v25, v10, v24, v26);

      v28 = v4;
      v17 = *(v4 + 16);
      v16 = *(v4 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2478D0920((v16 > 1), v17 + 1, 1);
        v4 = v28;
      }

      ++v5;
      v6 += 4;
      *(v4 + 16) = v17 + 1;
      v18 = v4 + 40 * v17;
      v19 = v26[0];
      v20 = v26[1];
      *(v18 + 64) = v27;
      *(v18 + 32) = v19;
      *(v18 + 48) = v20;
      a2 = v22;
    }

    while (v23 != v5);
  }
}

BOOL sub_2478CA48C(__int128 *a1, __int128 *a2)
{
  sub_2478C2950();
  sub_2478C3A28();
  if (sub_2478D8C5C())
  {
    return 1;
  }

  if (sub_2478D8C5C())
  {
    return 0;
  }

  sub_2478C295C();
  if ((sub_2478D8C5C() & 1) != 0 && (sub_2478D8C5C() & 1) == 0)
  {
    return 1;
  }

  if ((sub_2478D8C5C() & 1) != 0 && (sub_2478D8C5C() & 1) == 0)
  {
    return 0;
  }

  sub_2478C2C74();
  sub_2478C2C74();
  sub_2478D3E64();
  v3 = sub_2478D8C3C();

  return v3 == -1;
}

id sub_2478CA730(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54C20, &qword_2478DB850);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2478DAEE0;
  *(v3 + 32) = a1;
  type metadata accessor for CSUIBindable(0);
  v4 = a1;
  v5 = sub_2478D8AAC();

  v10[0] = 0;
  v6 = [v1 prepareMenuForBindables:v5 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2478D881C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2478CA914(uint64_t a1, uint64_t a2)
{
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_2478CAA44(uint64_t a1)
{
  v3 = v1;
  v5 = sub_2478D88BC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2478D89AC();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = *(a1 + OBJC_IVAR___CSUIOpenWithPreparedMenu_boundBundles);
  v11 = *(v10 + 2);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_7:
    v10 = "";
    if (v12 >> 62)
    {
LABEL_16:
      if (sub_2478D8DAC())
      {
        goto LABEL_10;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      sub_2478BCD34(0, &qword_27EE55058, 0x277D75710);
      v22 = sub_2478D8BCC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54C20, &qword_2478DB850);
      v23 = swift_allocObject();
      v37 = *(v10 + 238);
      *(v23 + 16) = v37;
      *(v23 + 32) = v22;
      v38 = v23;
      v24 = *&v3[OBJC_IVAR___CSUIOpenWithMenuConstructor_configuration];
      v25 = v22;
      if ([v24 showAppStoreMenuItem])
      {
        v36 = v25;
        v26 = sub_2478D89BC();
        v27 = [objc_opt_self() _systemImageNamed_];

        sub_2478BCD34(0, &unk_27EE55060, 0x277D750C8);
        sub_2478D899C();
        sub_2478BCD34(0, &qword_27EE551C0, 0x277CCA8D8);
        sub_2478D86F8();
        sub_2478D88AC();
        sub_2478D8A0C();
        *(swift_allocObject() + 16) = v3;
        v35 = v27;
        v28 = v3;
        v29 = sub_2478D8C1C();
        v30 = swift_allocObject();
        *(v30 + 16) = v37;
        *(v30 + 32) = v29;
        v31 = v29;
        v32 = sub_2478D8BCC();
        MEMORY[0x24C1AD1E0]();
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2478D8ACC();
        }

        sub_2478D8AEC();

        v25 = v36;
      }

      v33 = sub_2478D8BCC();

      return v33;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54C20, &qword_2478DB850);
    v21 = swift_allocObject();
    *(v21 + 16) = *(v10 + 238);
    *(v21 + 32) = [v3 noApplicationsMenuItem];
    goto LABEL_10;
  }

  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = v7;
  v42 = MEMORY[0x277D84F90];
  sub_2478D8D5C();
  v13 = 0;
  v14 = v10 + 56;
  while (1)
  {
    if (v13 >= *(v10 + 2))
    {
      __break(1u);
      goto LABEL_16;
    }

    v38 = *(v14 - 3);
    v15 = v38;
    v16 = *v14;
    v39 = *(v14 - 1);
    v40 = v16;
    v17 = v39;
    v18 = v16;
    v19 = v15;
    v20 = v17;
    sub_2478CAFA0(&v38, v3, &v41);
    if (v2)
    {
      break;
    }

    ++v13;

    sub_2478D8D3C();
    sub_2478D8D6C();
    sub_2478D8D7C();
    sub_2478D8D4C();
    v14 = (v14 + 40);
    if (v11 == v13)
    {
      v12 = v42;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_2478CAFA0(__int128 *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_2478D88BC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2478D89AC();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = a1[1];
  v23 = *a1;
  v24 = v7;
  v25 = *(a1 + 4);
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    v8 = *(&v24 + 1);
    sub_2478D8B3C();
    sub_2478D8AFC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v9 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  }

  else
  {
    v9 = 0;
  }

  v26 = *sub_2478C295C();
  v22 = v25;
  sub_2478C3A28();
  if (sub_2478D8C5C())
  {
    sub_2478D899C();
    sub_2478BCD34(0, &qword_27EE551C0, 0x277CCA8D8);
    sub_2478D86F8();
    sub_2478D88AC();
    sub_2478D8A0C();
  }

  sub_2478BCD34(0, &unk_27EE55060, 0x277D750C8);
  sub_2478C2C74();
  v26 = *(&v23 + 1);
  v10 = v23;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = v24;
  *(v11 + 24) = v23;
  *(v11 + 40) = v12;
  *(v11 + 56) = v25;
  v13 = v9;
  v14 = a2;
  v15 = v13;
  v16 = v14;
  v17 = v10;
  v18 = v20;
  sub_2478BDAA4(&v26, &v22, &qword_27EE550C8, &qword_2478DBB88);
  v19 = sub_2478D8C1C();
  v22 = *sub_2478C2950();
  if (sub_2478D8C5C())
  {
    [v19 setState_];
  }

  *a3 = v19;
}

void __swiftcall CSUIOpenWithMenuConstructor.init()(CSUIOpenWithMenuConstructor *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_2478CB580(uint64_t a1)
{
  v2 = sub_2478D3868(&qword_27EE55188, type metadata accessor for _LSHandlerRank, &unk_2478DBD60);
  v3 = sub_2478D3868(&unk_27EE55190, type metadata accessor for _LSHandlerRank, &unk_2478DBD08);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

char *sub_2478CB63C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54FE0, &qword_2478DB820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2478CB740(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE550E0, &qword_2478DBB98);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_2478CB844(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55110, &qword_2478DBBB8);
  v4 = *(sub_2478D889C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2478CB940(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54FD8, &qword_2478DB818);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55148, &qword_2478DBBE0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = *v2;
  v11 = *(*v2 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v13 = *(v10 + 3) >> 1, v13 < v11))
  {
    v10 = sub_2478CB63C(isUniquelyReferenced_nonNull_native, v11, 1, v10);
    v13 = *(v10 + 3) >> 1;
  }

  v14 = *(v10 + 2);
  v15 = v13 - v14;
  v16 = &v10[8 * v14];
  sub_2478D18A4(a1, v6);
  v17 = sub_2478D0FEC(v9, (v16 + 32), v15);
  sub_2478BC950(a1, &qword_27EE54FD8, &qword_2478DB818);
  if (v17 < 0)
  {
    __break(1u);
LABEL_11:
    if (v4 == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54FF0, &qword_2478DB828))
    {
      goto LABEL_9;
    }

    v7 = *(v7 + 36);
    v22 = *&v9[v7];
    if (!v22)
    {
      goto LABEL_9;
    }

    v15 = *(v10 + 2);
    a1 = v22 - 1;
    *&v9[v7] = v22 - 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55150, &qword_2478DBBE8);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE55158, qword_2478DBBF0);
    swift_getAssociatedConformanceWitness();
    sub_2478D8C2C();
    if (v31)
    {
      goto LABEL_9;
    }

    v17 = v30;
    while (1)
    {
LABEL_17:
      v23 = *(v10 + 3);
      v24 = v23 >> 1;
      if ((v23 >> 1) < v15 + 1)
      {
        v10 = sub_2478CB63C((v23 > 1), v15 + 1, 1, v10);
        v24 = *(v10 + 3) >> 1;
        v25 = v15 - v24;
        if (v15 < v24)
        {
LABEL_19:
          v28 = v24;
          v29 = v15;
          v26 = 0;
          v27 = 8 * v15 + 32;
          while (1)
          {
            *&v10[v27] = v17;
            if (!(a1 + v26))
            {
              break;
            }

            *&v9[v7] = a1 + v26 - 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55150, &qword_2478DBBE8);
            swift_getOpaqueTypeConformance2();
            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE55158, qword_2478DBBF0);
            swift_getAssociatedConformanceWitness();
            sub_2478D8C2C();
            if (v31)
            {
              break;
            }

            v17 = v30;
            --v26;
            v27 += 8;
            if (v25 == v26)
            {
              a1 += v26;
              v15 = v28;
              *(v10 + 2) = v28;
              goto LABEL_17;
            }
          }

          *(v10 + 2) = v29 - v26 + 1;
          goto LABEL_9;
        }
      }

      else
      {
        v25 = v15 - v24;
        if (v15 < v24)
        {
          goto LABEL_19;
        }
      }

LABEL_16:
      *(v10 + 2) = v15;
    }
  }

  if (v17)
  {
    v18 = *(v10 + 2);
    v19 = __OFADD__(v18, v17);
    v20 = v18 + v17;
    if (v19)
    {
      __break(1u);
      goto LABEL_16;
    }

    *(v10 + 2) = v20;
  }

  if (v17 == v15)
  {
    goto LABEL_11;
  }

LABEL_9:
  result = sub_2478BC950(v9, &qword_27EE55148, &qword_2478DBBE0);
  *v2 = v10;
  return result;
}

char *sub_2478CBCF8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_2478CB63C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_2478CBDE4(void *a1, char a2, void *a3)
{
  v7 = sub_2478D889C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55010, &qword_2478DB830);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = v54 - v14;
  v59 = a1[2];
  if (!v59)
  {
    goto LABEL_22;
  }

  v54[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v58 = *(v13 + 72);
  v60 = a1;
  sub_2478BDAA4(a1 + v17, v54 - v14, &qword_27EE55010, &qword_2478DB830);
  v55 = v8;
  v61 = *(v8 + 32);
  v62 = v7;
  v61(v10, v15, v7);
  v57 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_2478CF9E8(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_2478CFF90(v25, a2 & 1);
    v20 = sub_2478CF9E8(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_2478D8E7C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v18;
  v31 = v20;
  sub_2478CFA80();
  v20 = v31;
  v18 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v65 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v55 + 8))(v10, v62);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = v18;
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v56 = *(v55 + 72);
  v35 = v20;
  v61((v34 + v56 * v20), v10, v62);
  *(v33[7] + 8 * v35) = v32;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v60;
    if (v59 == 1)
    {
LABEL_22:

      return;
    }

    v39 = v60 + v58 + v17;
    v40 = 1;
    while (v40 < v38[2])
    {
      sub_2478BDAA4(v39, v15, &qword_27EE55010, &qword_2478DB830);
      v61(v10, v15, v62);
      v41 = *&v15[v57];
      v42 = *a3;
      v43 = sub_2478CF9E8(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_2478CFF90(v47, 1);
        v43 = sub_2478CF9E8(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v61((v50[6] + v56 * v43), v10, v62);
      *(v50[7] + 8 * v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v58;
      v38 = v60;
      if (v59 == v40)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_2478D8CEC();
  MEMORY[0x24C1AD190](0xD00000000000001BLL, 0x80000002478DA680);
  sub_2478D8D8C();
  MEMORY[0x24C1AD190](39, 0xE100000000000000);
  sub_2478D8D9C();
  __break(1u);
}

void sub_2478CC330(uint64_t a1, char a2, void *a3)
{
  v65 = a3;
  v6 = sub_2478D889C();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE55018, &qword_2478DB838);
  v62 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v61 = v56 - v10;
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_24;
  }

  v56[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v61;
  v12 = v61 + *(v9 + 48);
  v13 = *(v62 + 80);
  v60 = a1;
  v14 = (v63 + 32);
  v58 = a1 + ((v13 + 32) & ~v13);
  sub_2478BDAA4(v58, v61, &unk_27EE55018, &qword_2478DB838);
  v15 = *v14;
  v16 = v66;
  (*v14)(v66, v11, v64);
  v17 = *v12;
  v57 = *(v12 + 8);
  v18 = *(v12 + 16);
  v19 = *v65;
  v21 = sub_2478CF9E8(v16);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = v20;
  if (v19[3] >= v24)
  {
    if (a2)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2478CFCF0();
      if ((v25 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_2478D0350(v24, a2 & 1);
  v26 = sub_2478CF9E8(v66);
  if ((v25 & 1) == (v27 & 1))
  {
    v21 = v26;
    if ((v25 & 1) == 0)
    {
LABEL_14:
      v30 = v66;
      v31 = *v65;
      *(*v65 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v15(v31[6] + *(v63 + 72) * v21, v30, v64);
      v32 = (v31[7] + 24 * v21);
      v33 = v57;
      *v32 = v17;
      v32[1] = v33;
      v32[2] = v18;
      v34 = v31[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v36;
      if (v59 != 1)
      {
        v37 = 1;
        while (v37 < *(v60 + 16))
        {
          v38 = v61;
          sub_2478BDAA4(v58 + *(v62 + 72) * v37, v61, &unk_27EE55018, &qword_2478DB838);
          v39 = *v14;
          v40 = v66;
          (*v14)(v66, v38, v64);
          v17 = *v12;
          v41 = *(v12 + 8);
          v18 = *(v12 + 16);
          v42 = *v65;
          v43 = sub_2478CF9E8(v40);
          v45 = v42[2];
          v46 = (v44 & 1) == 0;
          v35 = __OFADD__(v45, v46);
          v47 = v45 + v46;
          if (v35)
          {
            goto LABEL_26;
          }

          v48 = v44;
          if (v42[3] < v47)
          {
            sub_2478D0350(v47, 1);
            v43 = sub_2478CF9E8(v66);
            if ((v48 & 1) != (v49 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v48)
          {
            goto LABEL_11;
          }

          v50 = v66;
          v51 = *v65;
          *(*v65 + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v52 = v43;
          v39(v51[6] + *(v63 + 72) * v43, v50, v64);
          v53 = (v51[7] + 24 * v52);
          *v53 = v17;
          v53[1] = v41;
          v53[2] = v18;
          v54 = v51[2];
          v35 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v35)
          {
            goto LABEL_27;
          }

          ++v37;
          v51[2] = v55;
          if (v59 == v37)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v28 = swift_allocError();
    swift_willThrow();
    v69 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v63 + 8))(v66, v64);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_2478D8E7C();
  __break(1u);
LABEL_29:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_2478D8CEC();
  MEMORY[0x24C1AD190](0xD00000000000001BLL, 0x80000002478DA680);
  sub_2478D8D8C();
  MEMORY[0x24C1AD190](39, 0xE100000000000000);
  sub_2478D8D9C();
  __break(1u);
}

uint64_t sub_2478CC8B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2478D889C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2478D3868(&qword_27EE550F8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v33 = a2;
  v11 = sub_2478D896C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2478D3868(&unk_27EE55100, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v21 = sub_2478D898C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2478CF1F0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}