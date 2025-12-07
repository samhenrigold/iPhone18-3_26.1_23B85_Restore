uint64_t sub_24DC93E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[2] = a5;
  v9[3] = a6;
  v9[4] = a7;
  v11 = swift_task_alloc();
  v9[5] = v11;
  v13 = type metadata accessor for RPCRequestPart(255, v21, v23, v12);
  v16 = type metadata accessor for RPCWriter.Closable(0, v13, v14, v15);
  swift_getWitnessTable();
  *v11 = v9;
  v11[1] = sub_24DC93FC0;

  return sub_24DC942BC(a4 + 72, (v9 + 2), a8, v20, v21, v16, v22, v23);
}

uint64_t sub_24DC93FC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC940B4()
{
  v1 = *(v0 + 7);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 232) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_24DC941A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = (*(*(v9[7] - 8) + 80) + 232) & ~*(*(v9[7] - 8) + 80);
  v12 = v9[26];
  v13 = v9[27];
  v14 = v9[28];
  v15 = swift_task_alloc();
  *(v10 + 16) = v15;
  *v15 = v10;
  v15[1] = sub_24DC2FD00;

  return sub_24DC93E8C(v15, v16, v17, (v9 + 12), v12, v13, v14, v9 + v11, a9);
}

uint64_t sub_24DC942BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v10;
  *(v8 + 160) = v11;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 104) = a3;
  *(v8 + 112) = a4;
  *(v8 + 96) = a1;
  *(v8 + 168) = *a2;
  *(v8 + 184) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_24DC94304, 0, 0);
}

uint64_t sub_24DC94304()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  v6 = *(v0 + 128);
  v7 = *(v0 + 144);
  v8 = *(v0 + 168);
  *(v5 + 16) = *(v0 + 112);
  *(v5 + 32) = v6;
  *(v5 + 48) = v7;
  *(v5 + 64) = v2;
  *(v5 + 72) = v4;
  *(v5 + 80) = v8;
  *(v5 + 96) = v1;
  *(v5 + 104) = v3;
  v9 = swift_task_alloc();
  *(v0 + 200) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  *v9 = v0;
  v9[1] = sub_24DC9442C;
  v11 = MEMORY[0x277D84950];
  v12 = MEMORY[0x277D84F78] + 8;

  return sub_24DC8C5F4(v0 + 64, dword_24DCBCC30, v5, v12, v10, v11);
}

uint64_t sub_24DC9442C()
{

  return MEMORY[0x2822009F8](sub_24DC94544, 0, 0);
}

uint64_t sub_24DC94544()
{
  v1 = *(v0 + 64);
  *(v0 + 80) = v1;
  v2 = *(v0 + 72);
  *(v0 + 88) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A0, &qword_24DCBA488);
  v4 = sub_24DC2E0D8();
  sub_24DC8CA70(&type metadata for RPCError, sub_24DC959F8, 0, v3, &type metadata for RPCError, v4, v0 + 16);
  sub_24DC57738(v1, v2);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v0 + 208) = v5;
  *(v0 + 216) = v6;
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  *(v0 + 224) = v8;
  *(v0 + 232) = v7;
  v9 = *(v0 + 48);
  *(v0 + 240) = v9;
  if (*(v0 + 56) == 1)
  {
    v22 = *(v0 + 152);
    v10 = swift_allocError();
    *(v0 + 248) = v10;
    *v11 = v5;
    *(v11 + 8) = v6;
    *(v11 + 16) = v8;
    *(v11 + 24) = v7;
    *(v11 + 32) = v9;
    v12 = *(v22 + 24);
    sub_24DC95A74(v5, v6, v8, v7, v9, 1);

    MEMORY[0x2530363C0](v9);
    v20 = (v12 + *v12);
    v13 = swift_task_alloc();
    *(v0 + 256) = v13;
    *v13 = v0;
    v13[1] = sub_24DC94870;
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);

    return v20(v10, v15, v14);
  }

  else
  {
    v21 = (*(*(v0 + 152) + 16) + **(*(v0 + 152) + 16));
    v17 = swift_task_alloc();
    *(v0 + 264) = v17;
    *v17 = v0;
    v17[1] = sub_24DC94A34;
    v18 = *(v0 + 152);
    v19 = *(v0 + 128);

    return v21(v19, v18);
  }
}

uint64_t sub_24DC94870()
{
  v1 = *(*v0 + 248);

  MEMORY[0x2530363B0](v1);

  return MEMORY[0x2822009F8](sub_24DC94988, 0, 0);
}

uint64_t sub_24DC94988()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  sub_24DC95AC4(v5, v4, v3, v1, v2, 1);
  sub_24DC95AC4(v5, v4, v3, v1, v2, 1);
  v6 = v0[1];

  return v6();
}

uint64_t sub_24DC94A34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC94B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  return MEMORY[0x2822009F8](sub_24DC94B4C, 0, 0);
}

uint64_t sub_24DC94B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[23];
  v5 = v4[24];
  v7 = type metadata accessor for RPCResponsePart(255, v6, v5, a4);
  v4[25] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v4[26] = v8;
  v9 = MEMORY[0x277D84950];
  type metadata accessor for RPCAsyncSequence(0, v7, v8, MEMORY[0x277D84950]);
  RPCAsyncSequence.makeAsyncIterator()(v4 + 16);
  v10 = swift_task_alloc();
  v4[27] = v10;
  v10[2] = v6;
  v10[3] = v5;
  v10[4] = v4 + 16;
  v11 = swift_task_alloc();
  v4[28] = v11;
  ResponsePart = type metadata accessor for ClientStreamExecutor.OnFirstResponsePart(0, v6, v5, v12);
  v4[29] = ResponsePart;
  *v11 = v4;
  v11[1] = sub_24DC94CB0;

  return sub_24DC8C5F4((v4 + 9), dword_24DCBCC48, v10, ResponsePart, v8, v9);
}

uint64_t sub_24DC94CB0()
{

  return MEMORY[0x2822009F8](sub_24DC94DC8, 0, 0);
}

uint64_t sub_24DC94DC8()
{
  v1 = sub_24DCB5904();
  v2 = sub_24DC2E0D8();
  sub_24DC8CA70(&type metadata for RPCError, sub_24DC96148, 0, v1, &type metadata for RPCError, v2, v0 + 16);
  (*(*(v1 - 8) + 8))(v0 + 72, v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  v7 = *(v0 + 168);
  if (*(v0 + 65))
  {
    *(v7 + 48) = 2;
  }

  else
  {
    v8 = *(v0 + 17);
    *(v7 + 4) = *(v0 + 20);
    *(v7 + 1) = v8;
    v9 = *(v0 + 56);
    *(v7 + 48) = *(v0 + 64);
    *(v7 + 40) = v9;
  }

  v10 = *(v0 + 200);
  v11 = *(v0 + 208);
  v12 = *(v0 + 168);
  *v12 = v3;
  *(v12 + 8) = v4;
  *(v12 + 16) = v5;
  *(v12 + 32) = v6;
  v13 = type metadata accessor for RPCAsyncSequence.AsyncIterator(0, v10, v11, MEMORY[0x277D84950]);
  (*(*(v13 - 8) + 8))(v0 + 128, v13);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_24DC94F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a3 - 8) + 32))(a9, a1);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = a7;
  v21[5] = a8;
  v21[6] = a10;
  v21[7] = a11;
  v19 = type metadata accessor for ClientStreamExecutor.RawBodyPartToMessageSequence(0, v21);
  return (*(*(a6 - 8) + 32))(a9 + *(v19 + 84), a2, a6);
}

uint64_t sub_24DC9504C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v19;
  *(v8 + 136) = v18;
  *(v8 + 120) = v16;
  *(v8 + 128) = v17;
  *(v8 + 104) = a8;
  *(v8 + 112) = v15;
  *(v8 + 88) = a6;
  *(v8 + 96) = a7;
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  v10 = *(v16 - 8);
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 + 64);
  *(v8 + 176) = swift_task_alloc();
  v12 = type metadata accessor for RPCRequestPart(0, a8, v17, v11);
  *(v8 + 184) = v12;
  *(v8 + 192) = *(v12 - 8);
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC95198, 0, 0);
}

uint64_t sub_24DC95198()
{
  v1 = *(v0 + 136);
  **(v0 + 200) = *(v0 + 64);
  swift_storeEnumTagMultiPayload();
  v2 = *(v1 + 8);
  *(v0 + 208) = v2;
  v3 = *(v2 + 16);

  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *v4 = v0;
  v4[1] = sub_24DC952E4;
  v5 = *(v0 + 200);
  v6 = *(v0 + 112);

  return v8(v5, v6, v2);
}

uint64_t sub_24DC952E4()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  *(*v1 + 224) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24DC95804;
  }

  else
  {
    v5 = sub_24DC95454;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24DC95454()
{
  v14 = *(v0 + 208);
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 112);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v15 = *(v0 + 96);
  v12 = *(v0 + 120);
  v7 = *(v0 + 120);
  v13 = *(v0 + 136);
  (*(v3 + 16))(v2, *(v0 + 88), v7);
  v8 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v15;
  *(v9 + 32) = v4;
  *(v9 + 40) = v12;
  *(v9 + 56) = v13;
  (*(v3 + 32))(v9 + v8, v2, v7);
  sub_24DC73F80(v6, sub_24DC98224, v9, v15, v1, v4, v14, (v0 + 16));

  v16 = (v5 + *v5);
  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  *v10 = v0;
  v10[1] = sub_24DC95654;

  return v16(v0 + 16);
}

uint64_t sub_24DC95654()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(v2 + 240) = v0;

  v7 = type metadata accessor for RPCWriter(0, v3, v5, v6);
  (*(*(v7 - 8) + 8))(v2 + 16, v7);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC95880, 0, 0);
  }

  else
  {

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_24DC95804()
{
  **(v0 + 152) = *(v0 + 224);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC95880()
{
  **(v0 + 152) = *(v0 + 240);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC958FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v8 = v0[12];
  v7 = v0[13];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_24DC2FD00;

  return sub_24DC9504C(v9, v4, v5, v6, v8, v7, v2, v3);
}

uint64_t sub_24DC959F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *sub_24DC412F4();
  sub_24DC31044();
  MEMORY[0x2530363C0](a1);
  return RPCError.init(code:message:metadata:cause:)(&v6, 0x6166206574697257, 0xED00002E64656C69, &v5, a1, a2);
}

void sub_24DC95A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    JUMPOUT(0x2530363C0);
  }
}

void sub_24DC95AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    JUMPOUT(0x2530363B0);
  }
}

uint64_t sub_24DC95B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a2;
  v5[9] = a5;
  v5[7] = a1;
  v6 = type metadata accessor for RPCResponsePart(255, a3, a4, a4);
  v5[10] = v6;
  sub_24DCB5414();
  v7 = swift_task_alloc();
  v5[11] = v7;
  v8 = swift_task_alloc();
  v5[12] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v10 = type metadata accessor for RPCAsyncSequence.AsyncIterator(0, v6, v9, MEMORY[0x277D84950]);
  v5[13] = v10;
  *v8 = v5;
  v8[1] = sub_24DC95C40;

  return RPCAsyncSequence.AsyncIterator.next()(v7, v10);
}

uint64_t sub_24DC95C40()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24DC96014;
  }

  else
  {
    v2 = sub_24DC95D54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC95D54()
{
  v26 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v1 - 8);
  if ((*(v3 + 48))(v2, 1, v1) == 1)
  {
    if (sub_24DCB5224())
    {
      sub_24DCB5114();
      sub_24DC46150();
      v4 = swift_allocError();
      sub_24DCB4CA4();
      swift_willThrow();
      **(v0 + 72) = v4;

      v5 = *(v0 + 8);
      goto LABEL_11;
    }

    v11 = *(v0 + 56);
    v24 = *sub_24DC41378();
    sub_24DC31044();
    RPCError.init(code:message:metadata:cause:)(&v24, 0xD000000000000066, 0x800000024DCC5E70, v25, 0, v20);
    v12 = v21;
    v13 = v23;
    v14 = v22;
    *v11 = v20[0];
    *(v11 + 8) = v12;
    *(v11 + 16) = v14;
    *(v11 + 32) = v13;
    *(v11 + 48) = 2;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v7 = *(v0 + 56);
        v24 = *sub_24DC41378();
        sub_24DC31044();
        RPCError.init(code:message:metadata:cause:)(&v24, 0xD000000000000096, 0x800000024DCC5EE0, v25, 0, v20);
        v8 = v21;
        v9 = v23;
        v10 = v22;
        *v7 = v20[0];
        *(v7 + 8) = v8;
        *(v7 + 16) = v10;
        *(v7 + 32) = v9;
        *(v7 + 48) = 2;
        (*(v3 + 8))(v2, v1);
      }

      else
      {
        v18 = *(v0 + 56);
        *v18 = *v2;
        *(v18 + 48) = 1;
      }
    }

    else
    {
      v15 = *(v0 + 104);
      v17 = *(v0 + 56);
      v16 = *(v0 + 64);
      *v17 = *v2;
      (*(*(v15 - 8) + 16))(v0 + 16, v16, v15);
      sub_24DC72ABC(v0 + 16, v15, v17 + 8);
      *(v17 + 48) = 0;
    }
  }

  v5 = *(v0 + 8);
LABEL_11:

  return v5();
}

uint64_t sub_24DC96014()
{
  **(v0 + 72) = *(v0 + 112);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC96084(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24DC334F4;

  return sub_24DC95B14(a1, v8, v6, v7, a2);
}

uint64_t sub_24DC96148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *sub_24DC412F4();
  sub_24DC31044();
  MEMORY[0x2530363C0](a1);
  return RPCError.init(code:message:metadata:cause:)(&v6, 0xD000000000000028, 0x800000024DCC5E40, &v5, a1, a2);
}

uint64_t sub_24DC961C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21 = a2;
  v5 = *(a1 + 40);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v18 = &v20 - v17;
  (*(v11 + 16))(v14, v3, v10);
  sub_24DCB5254();
  (*(v6 + 16))(v9, v3 + *(a1 + 84), v5);
  return sub_24DC963D0(v18, v9, v10, *(a1 + 24), *(a1 + 32), v5, *(a1 + 48), v15, v21, *(a1 + 64), *(a1 + 72));
}

uint64_t sub_24DC963D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a9, a1, AssociatedTypeWitness);
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a7;
  v23[5] = a8;
  v23[6] = a10;
  v23[7] = a11;
  v20 = type metadata accessor for ClientStreamExecutor.RawBodyPartToMessageSequence.AsyncIterator(0, v23);
  return (*(*(a6 - 8) + 32))(a9 + *(v20 + 84), a2, a6);
}

uint64_t sub_24DC964F8@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t sub_24DC96578(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);

  return v5(v2, a1, AssociatedTypeWitness);
}

uint64_t sub_24DC96634(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v9 = a4[4];
  v5[8] = v9;
  v5[9] = *(v9 - 8);
  v5[10] = swift_task_alloc();
  v10 = a4[3];
  v5[11] = v10;
  v5[12] = *(v10 - 8);
  v5[13] = swift_task_alloc();
  v11 = a4[6];
  v5[14] = v11;
  v5[15] = *(v11 - 8);
  v12 = swift_task_alloc();
  v5[16] = v12;
  v13 = a4[8];
  v5[17] = v13;
  v15 = type metadata accessor for RPCResponsePart(255, v10, v13, v14);
  v5[18] = v15;
  v16 = sub_24DCB5414();
  v5[19] = v16;
  v5[20] = *(v16 - 8);
  v17 = swift_task_alloc();
  v5[21] = v17;
  v5[22] = *(v15 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[25] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[26] = AssociatedConformanceWitness;
  v20 = swift_task_alloc();
  v5[27] = v20;
  *v20 = v5;
  v20[1] = sub_24DC9695C;

  return MEMORY[0x282200310](v17, a2, a3, v12, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_24DC9695C()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_24DCB50D4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_24DC97088;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_24DCB50D4();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_24DC96AF4;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_24DC96AF4()
{
  v68 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[18];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[8];
    v5 = v0[3];
    (*(v0[20] + 8))(v1, v0[19]);
    v8 = type metadata accessor for StreamingClientResponse.Contents.BodyPart(0, v4, v6, v7);
    v9 = *(*(v8 - 8) + 56);
    v10 = v5;
    v11 = 1;
LABEL_3:
    v9(v10, v11, 1, v8);

    v12 = v0[1];
    goto LABEL_12;
  }

  v14 = v0[23];
  v13 = v0[24];
  (*(v2 + 32))(v13, v1, v3);
  (*(v2 + 16))(v14, v13, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v28 = v0[24];
    v29 = v0[22];
    v30 = v0[18];
    v31 = *v0[23];
    LOBYTE(v62) = *sub_24DC41378();
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_24DCB54D4();
    MEMORY[0x253035590](0xD00000000000007ALL, 0x800000024DCC5DC0);
    v0[2] = v31;
    sub_24DC9718C();
    v32 = sub_24DCB5744();
    v34 = v33;

    MEMORY[0x253035590](v32, v34);

    MEMORY[0x253035590](11815, 0xE200000000000000);
    sub_24DC31044();
    RPCError.init(code:message:metadata:cause:)(&v62, v63, v64, v67, 0, &v63);
    LOBYTE(v31) = v63;
    v35 = v64;
    v36 = v66;
    sub_24DC2E0D8();
    v60 = v65;
    swift_allocError();
    *v37 = v31;
    *(v37 + 8) = v35;
    *(v37 + 16) = v60;
    *(v37 + 32) = v36;
    swift_willThrow();
    (*(v29 + 8))(v28, v30);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v38 = v0[23];
    v39 = v38[1];
    v62 = *v38;
    v67[0] = v39;

    RPCError.init(status:metadata:)(&v62, v67, &v63);
    v40 = v65;
    v41 = v0[24];
    v42 = v0[22];
    v43 = v0[18];
    if (v65)
    {
      v44 = *(&v65 + 1);
      v61 = v66;
      v45 = v63;
      v46 = v64;

      sub_24DC2E0D8();
      swift_allocError();
      *v47 = v45;
      *(v47 + 8) = v46;
      *(v47 + 16) = v40;
      *(v47 + 24) = v44;
      *(v47 + 32) = v61;
      swift_willThrow();

      (*(v42 + 8))(v41, v43);
      goto LABEL_11;
    }

    v56 = v0[8];
    v57 = v0[3];
    (*(v42 + 8))(v41, v43);

    *v57 = v39;
    v55 = type metadata accessor for StreamingClientResponse.Contents.BodyPart(0, v56, v58, v59);
    swift_storeEnumTagMultiPayload();
    v9 = *(*(v55 - 8) + 56);
    v10 = v57;
LABEL_17:
    v11 = 0;
    v8 = v55;
    goto LABEL_3;
  }

  v16 = v0[28];
  v17 = v0[17];
  v18 = v0[13];
  v19 = v0[11];
  v20 = v0[6];
  (*(v0[12] + 32))(v18, v0[23], v19);
  (*(*(v20 + 72) + 16))(v18, v19, v17, *(v20 + 40));
  v21 = v16;
  v22 = v0[24];
  v23 = v0[22];
  v24 = v0[18];
  v26 = v0[12];
  v25 = v0[13];
  v27 = v0[11];
  if (!v21)
  {
    v50 = v0[9];
    v49 = v0[10];
    v51 = v0[8];
    v52 = v0[3];
    (*(v26 + 8))(v25, v27);
    (*(v23 + 8))(v22, v24);
    (*(v50 + 32))(v52, v49, v51);
    v55 = type metadata accessor for StreamingClientResponse.Contents.BodyPart(0, v51, v53, v54);
    swift_storeEnumTagMultiPayload();
    v9 = *(*(v55 - 8) + 56);
    v10 = v52;
    goto LABEL_17;
  }

  (*(v26 + 8))(v25, v27);
  (*(v23 + 8))(v22, v24);
LABEL_11:

  v12 = v0[1];
LABEL_12:

  return v12();
}

uint64_t sub_24DC97088()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  swift_getAssociatedConformanceWitness();
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

unint64_t sub_24DC9718C()
{
  result = qword_27F19F280;
  if (!qword_27F19F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F280);
  }

  return result;
}

uint64_t sub_24DC971E0(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC2FD00;

  return sub_24DC96634(a1, 0, 0, a2);
}

uint64_t sub_24DC97290(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return sub_24DC971E0(a1, a2);
}

uint64_t sub_24DC97338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_24DC973FC;

  return sub_24DC96634(a1, a2, a3, a5);
}

uint64_t sub_24DC973FC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_24DC97538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24DC961C8(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_24DC975A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC975F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DC9762C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_24DC9767C(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_24DC976A4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC97730(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_24DC9790C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_24DC97BC8(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC97C68(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(a3[5] - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_24DC97EC0(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(a4[5] - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_24DC981A4()
{
  (*(*(*(v0 + 40) - 8) + 8))(v0 + ((*(*(*(v0 + 40) - 8) + 80) + 72) & ~*(*(*(v0 + 40) - 8) + 80)));

  return swift_deallocObject();
}

void *sub_24DC98224@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[6];
  result = (*(v2[8] + 16))(a2, a1, v4, v5);
  if (!v3)
  {
    type metadata accessor for RPCRequestPart(0, v4, v5, v7);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_24DC982D8()
{

  return swift_deallocObject();
}

uint64_t *GRPCClient.__allocating_init(transport:interceptors:)(char *a1, uint64_t a2)
{
  v4 = a1;
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v4, v5);
  v9 = *(a2 + 16);
  if (v9)
  {
    v21[1] = v2;
    v22 = v4;
    v23 = v5;
    v31 = MEMORY[0x277D84F90];
    sub_24DC9C338(0, v9, 0);
    v10 = v31;
    v21[0] = a2;
    v11 = a2 + 32;
    do
    {
      sub_24DC5B208(v11, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F020, &qword_24DCBCE70);
      static ConditionalInterceptor.Subject.all.getter(&v26);
      v24 = v26;
      v25 = v27;
      static ConditionalInterceptor<>.apply(_:to:)(v29, v28, &v24);

      __swift_destroy_boxed_opaque_existential_1(v28);
      v31 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_24DC9C338((v12 > 1), v13 + 1, 1);
        v10 = v31;
      }

      *(v10 + 16) = v13 + 1;
      v14 = v10 + 56 * v13;
      v15 = v29[0];
      v16 = v29[1];
      v17 = v29[2];
      *(v14 + 80) = v30;
      *(v14 + 48) = v16;
      *(v14 + 64) = v17;
      *(v14 + 32) = v15;
      v11 += 40;
      --v9;
    }

    while (v9);

    v4 = v22;
    v5 = v23;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  swift_allocObject();
  v18 = sub_24DC9C710(v8, v10);
  v19 = *(v6 + 8);
  v19(v8, v5);
  v19(v4, v5);
  return v18;
}

uint64_t *GRPCClient.__allocating_init(transport:interceptorPipeline:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DC9C840(a1, a2);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t *GRPCClient.init(transport:interceptorPipeline:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_24DC9C710(a1, a2);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t GRPCClient.runConnections()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_24DC986A0, 0, 0);
}

uint64_t sub_24DC986A0()
{
  v18 = v0;
  v1 = v0[3];
  v2 = v0[2] + *(*v0[2] + 104);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  if (*(v2 + 8) - 2 >= 2)
  {
    if (!*(v2 + 8))
    {
      *(v2 + 8) = 1;
      goto LABEL_10;
    }

    static RuntimeError.Code.clientIsAlreadyRunning.getter(v17);
    sub_24DC3C254();
    v5 = swift_allocError();
    v8 = v17;
    v10 = 0x800000024DCC60E0;
    v7 = v11;
    v9 = 0xD00000000000003BLL;
  }

  else
  {
    static RuntimeError.Code.clientIsStopped.getter(&v16);
    sub_24DC3C254();
    v5 = swift_allocError();
    v7 = v6;
    v8 = &v16;
    v9 = 0xD0000000000000CELL;
    v10 = 0x800000024DCC6010;
  }

  RuntimeError.init(code:message:cause:)(v8, v9, v10, 0, v7);
  swift_willThrow();
  if (v5)
  {
    os_unfair_lock_unlock(v2);
    v12 = v0[1];

    return v12();
  }

LABEL_10:
  os_unfair_lock_unlock(v2);
  v15 = (*(v4 + 32) + **(v4 + 32));
  v14 = swift_task_alloc();
  v0[4] = v14;
  *v14 = v0;
  v14[1] = sub_24DC98914;

  return v15(v3, v4);
}

uint64_t sub_24DC98914()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_24DC98AB8;
  }

  else
  {
    v2 = sub_24DC98A28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC98A28()
{
  v1 = *(v0 + 16) + *(**(v0 + 16) + 104);
  os_unfair_lock_lock(v1);
  *(v1 + 8) = 3;
  os_unfair_lock_unlock(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24DC98AB8()
{
  v9 = v0;
  v1 = v0[5];
  v2 = v0[2];
  static RuntimeError.Code.transportError.getter(v8);
  sub_24DC3C254();
  swift_allocError();
  v4 = v3;
  MEMORY[0x2530363C0](v1);
  RuntimeError.init(code:message:cause:)(v8, 0xD00000000000002DLL, 0x800000024DCC5F80, v1, v4);
  swift_willThrow();
  MEMORY[0x2530363B0](v1);
  v5 = v2 + *(*v2 + 104);
  os_unfair_lock_lock(v5);
  *(v5 + 8) = 3;
  os_unfair_lock_unlock(v5);
  v6 = v0[1];

  return v6();
}

Swift::Void __swiftcall GRPCClient.beginGracefulShutdown()()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 104);
  os_unfair_lock_lock(v2);
  if (*(v2 + 8) - 2 >= 2)
  {
    if (*(v2 + 8))
    {
      v5 = v1 + 80;
      v3 = *(v1 + 80);
      v4 = *(v5 + 8);
      *(v2 + 8) = 2;
      os_unfair_lock_unlock(v2);
      (*(v4 + 40))(v3, v4);
      return;
    }

    *(v2 + 8) = 3;
  }

  os_unfair_lock_unlock(v2);
}

uint64_t GRPCClient.unary<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  *(v9 + 432) = v25;
  *(v9 + 440) = v10;
  *(v9 + 424) = v24;
  *(v9 + 408) = v23;
  *(v9 + 392) = v22;
  *(v9 + 376) = a8;
  *(v9 + 384) = v21;
  *(v9 + 360) = a5;
  *(v9 + 368) = a7;
  *(v9 + 344) = a2;
  *(v9 + 352) = a4;
  *(v9 + 336) = a1;
  *(v9 + 448) = *v10;
  v13 = type metadata accessor for ClientRequest(0, v21, a3, a4);
  *(v9 + 456) = v13;
  *(v9 + 464) = *(v13 - 8);
  v14 = swift_task_alloc();
  v15 = *a3;
  *(v9 + 472) = v14;
  *(v9 + 480) = v15;
  *(v9 + 488) = *(a3 + 1);
  *(v9 + 504) = a3[3];
  v16 = *(a6 + 80);
  *(v9 + 80) = *(a6 + 64);
  *(v9 + 96) = v16;
  *(v9 + 112) = *(a6 + 96);
  *(v9 + 128) = *(a6 + 112);
  v17 = *(a6 + 16);
  *(v9 + 16) = *a6;
  *(v9 + 32) = v17;
  v18 = *(a6 + 48);
  *(v9 + 48) = *(a6 + 32);
  *(v9 + 64) = v18;

  return MEMORY[0x2822009F8](sub_24DC98E2C, 0, 0);
}

uint64_t sub_24DC98E2C()
{
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 472);
  v4 = *(v0 + 448);
  v5 = *(v0 + 416);
  v7 = *(v0 + 368);
  v6 = *(v0 + 376);
  v21 = *(v0 + 480);
  v22 = *(v0 + 384);
  v8 = *(v0 + 384);
  v23 = *(v0 + 400);
  v24 = *(v0 + 424);
  (*(*(v0 + 464) + 16))(v3, *(v0 + 344), *(v0 + 456));
  sub_24DC7D078(v3, v8, v0 + 288, v9, v10);
  v11 = *(v0 + 304);
  *(v0 + 312) = *(v0 + 288);
  *(v0 + 328) = v11;
  *(v0 + 256) = v21;
  *(v0 + 272) = v2;
  *(v0 + 280) = v1;
  v12 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v12;
  *(v0 + 232) = *(v0 + 112);
  *(v0 + 248) = *(v0 + 128);
  v13 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v13;
  v14 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 184) = v14;
  v15 = swift_allocObject();
  *(v0 + 512) = v15;
  *(v15 + 16) = *(v4 + 80);
  *(v15 + 24) = v22;
  *(v15 + 40) = v23;
  *(v15 + 56) = v5;
  *(v15 + 64) = *(v4 + 88);
  *(v15 + 72) = v24;
  *(v15 + 88) = v7;
  *(v15 + 96) = v6;

  v16 = swift_task_alloc();
  *(v0 + 520) = v16;
  *v16 = v0;
  v16[1] = sub_24DC99024;
  v17 = *(v0 + 352);
  v18 = *(v0 + 360);
  v19 = *(v0 + 336);

  return GRPCClient.bidirectionalStreaming<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(v19, v0 + 312, (v0 + 256), v17, v18, v0 + 136, &unk_24DCBCE90, v15);
}

uint64_t sub_24DC99024()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC991BC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DC991BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC99220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a4;
  v7[13] = a7;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  v8 = type metadata accessor for ClientResponse(0, a7, a3, a4);
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC992F0, 0, 0);
}

uint64_t sub_24DC992F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[10];
  v6 = type metadata accessor for StreamingClientResponse(0, v4[13], a3, a4);
  (*(*(v6 - 8) + 16))(v4 + 2, v5, v6);
  v8 = swift_task_alloc();
  v4[17] = v8;
  *v8 = v4;
  v8[1] = sub_24DC993D4;
  v9 = v4[16];
  v10 = v4[13];

  return sub_24DC8E010(v9, (v4 + 2), v10, v7);
}

uint64_t sub_24DC993D4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *v0;

  v8 = (v2 + *v2);
  v4 = swift_task_alloc();
  v1[18] = v4;
  *v4 = v3;
  v4[1] = sub_24DC995B0;
  v5 = v1[16];
  v6 = v1[9];

  return v8(v6, v5);
}

uint64_t sub_24DC995B0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24DC9CE7C;
  }

  else
  {
    v2 = sub_24DC9CE78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t GRPCClient.bidirectionalStreaming<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1048) = v19;
  *(v9 + 1032) = v18;
  *(v9 + 1016) = v17;
  *(v9 + 1000) = v16;
  *(v9 + 1056) = v8;
  *(v9 + 992) = a8;
  *(v9 + 984) = a7;
  *(v9 + 976) = a5;
  *(v9 + 968) = a4;
  *(v9 + 960) = a1;
  *(v9 + 1064) = *v8;
  *(v9 + 1072) = *a2;
  *(v9 + 1088) = *(a2 + 16);
  v10 = a3[1];
  *(v9 + 1096) = *a3;
  *(v9 + 1104) = v10;
  v11 = a3[3];
  *(v9 + 1112) = a3[2];
  *(v9 + 1120) = v11;
  v12 = *(a6 + 80);
  *(v9 + 216) = *(a6 + 64);
  *(v9 + 232) = v12;
  *(v9 + 248) = *(a6 + 96);
  *(v9 + 264) = *(a6 + 112);
  v13 = *(a6 + 16);
  *(v9 + 152) = *a6;
  *(v9 + 168) = v13;
  v14 = *(a6 + 48);
  *(v9 + 184) = *(a6 + 32);
  *(v9 + 200) = v14;
  return MEMORY[0x2822009F8](sub_24DC997A8, 0, 0);
}

void sub_24DC997A8()
{
  v77 = v0;
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056) + *(**(v0 + 1056) + 104);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  if (*(v2 + 8) >= 2u)
  {
    static RuntimeError.Code.clientIsStopped.getter(&v68);
    sub_24DC3C254();
    v5 = swift_allocError();
    RuntimeError.init(code:message:cause:)(&v68, 0xD000000000000032, 0x800000024DCC5FD0, 0, v6);
    swift_willThrow();
    if (v5)
    {
      os_unfair_lock_unlock(v2);
      v7 = *(v0 + 8);

      v7();
      return;
    }
  }

  v8 = *(v2 + 24);
  v57 = v4;
  v58 = v3;
  if (*(v8 + 16))
  {
    v9 = sub_24DC9BBB4(*(v0 + 1096), *(v0 + 1104), *(v0 + 1112), *(v0 + 1120));
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

LABEL_28:
      v87 = (v0 + 1016);
      *(v0 + 1128) = v11;
      v35 = *(v0 + 1120);
      v36 = *(v0 + 1112);
      v37 = *(v0 + 1104);
      v38 = *(v0 + 1096);
      v54 = *(v0 + 1088);
      v39 = *(v0 + 1056);
      v53 = *(v0 + 1072);
      os_unfair_lock_unlock(v2);
      v56 = *(*v39 + 96);
      *&v68 = v38;
      *(&v68 + 1) = v37;
      *&v69 = v36;
      *(&v69 + 1) = v35;
      (*(v57 + 56))(&v68, v58, v57);
      v64 = *(v0 + 216);
      v65 = *(v0 + 232);
      v66 = *(v0 + 248);
      v67 = *(v0 + 264);
      v60 = *(v0 + 152);
      v61 = *(v0 + 168);
      v62 = *(v0 + 184);
      v63 = *(v0 + 200);
      v40 = *(v0 + 128);
      v74 = *(v0 + 112);
      v75 = v40;
      v76 = *(v0 + 144);
      v41 = *(v0 + 64);
      v70 = *(v0 + 48);
      v71 = v41;
      v42 = *(v0 + 96);
      v72 = *(v0 + 80);
      v73 = v42;
      v43 = *(v0 + 32);
      v68 = *(v0 + 16);
      v69 = v43;
      sub_24DC568C0(v0 + 152, v0 + 272);
      CallOptions.formUnion(with:)(&v68);
      sub_24DC3DFD4(v0 + 16, &qword_27F19EFD0, &qword_24DCB9AF0);
      *(v0 + 936) = v53;
      *(v0 + 952) = v54;
      *(v0 + 904) = v38;
      *(v0 + 912) = v37;
      *(v0 + 920) = v36;
      *(v0 + 928) = v35;
      *(v0 + 456) = v64;
      *(v0 + 472) = v65;
      *(v0 + 488) = v66;
      *(v0 + 504) = v67;
      *(v0 + 392) = v60;
      *(v0 + 408) = v61;
      *(v0 + 424) = v62;
      *(v0 + 440) = v63;
      v44 = swift_task_alloc();
      *(v0 + 1136) = v44;
      *v44 = v0;
      v44[1] = sub_24DC99E18;
      v45 = *(v0 + 1040);
      v46 = *(v0 + 1032);
      v47 = *v87;
      v48 = *(v0 + 1000);
      v49 = *(v0 + 984);
      v50 = *(v0 + 976);
      v51 = *(v0 + 968);
      v52 = *(v0 + 960);
      v85 = *(v0 + 1048);
      v86 = v57;
      v84 = v45;
      v83 = v58;
      v82 = v46;
      v80 = v48;
      v81 = v47;
      v79 = v49;

      sub_24DC80818(v52, v0 + 936, v0 + 904, v0 + 392, v51, v50, v39 + v56, v11);
      return;
    }
  }

  v55 = v2;
  v12 = *(v2 + 16);
  v13 = MEMORY[0x277D84F90];
  v87 = *(v12 + 16);
  if (!v87)
  {
LABEL_20:
    v26 = *(v13 + 16);
    if (v26)
    {
      *&v68 = MEMORY[0x277D84F90];
      sub_24DC9C318(0, v26, 0);
      v11 = v68;
      v27 = v13 + 32;
      do
      {
        sub_24DC4982C(v27, v0 + 808, &qword_27F19F288, &qword_24DCBCFB0);
        sub_24DC5B208(v0 + 808, v0 + 864);
        sub_24DC3DFD4(v0 + 808, &qword_27F19F288, &qword_24DCBCFB0);
        *&v68 = v11;
        v29 = *(v11 + 16);
        v28 = *(v11 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_24DC9C318((v28 > 1), v29 + 1, 1);
          v11 = v68;
        }

        *(v11 + 16) = v29 + 1;
        sub_24DC5B2AC((v0 + 864), v11 + 40 * v29 + 32);
        v27 += 56;
        --v26;
      }

      while (v26);
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    v30 = *(v0 + 1120);
    v31 = *(v0 + 1112);
    v32 = *(v0 + 1104);
    v33 = *(v0 + 1096);

    v2 = v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v68 = *(v55 + 24);
    sub_24DC9BFE4(v11, v33, v32, v31, v30, isUniquelyReferenced_nonNull_native);

    *(v55 + 24) = v68;
    goto LABEL_28;
  }

  v14 = 0;
  v15 = v12 + 32;
  while (v14 < *(v12 + 16))
  {
    v16 = *(v0 + 1120);
    v17 = *(v0 + 1112);
    v59 = *(v0 + 1096);
    sub_24DC4982C(v15, v0 + 752, &qword_27F19F288, &qword_24DCBCFB0);
    v68 = v59;
    *&v69 = v17;
    *(&v69 + 1) = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F288, &qword_24DCBCFB0);
    if (sub_24DCA0190(&v68, v18))
    {
      v19 = *(v0 + 768);
      v68 = *(v0 + 752);
      v69 = v19;
      v70 = *(v0 + 784);
      LOBYTE(v71) = *(v0 + 800);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DC9C338(0, *(v13 + 16) + 1, 1);
      }

      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24DC9C338((v20 > 1), v21 + 1, 1);
      }

      *(v13 + 16) = v21 + 1;
      v22 = v13 + 56 * v21;
      v23 = v68;
      v24 = v69;
      v25 = v70;
      *(v22 + 80) = v71;
      *(v22 + 48) = v24;
      *(v22 + 64) = v25;
      *(v22 + 32) = v23;
    }

    else
    {
      sub_24DC3DFD4(v0 + 752, &qword_27F19F288, &qword_24DCBCFB0);
    }

    v14 = (v14 + 1);
    v15 += 56;
    if (v87 == v14)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t sub_24DC99E18()
{
  v2 = *v1;
  v3 = *v1 + 392;
  *(*v1 + 1144) = v0;

  v4 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 48);
  if (v0)
  {
    *(v2 + 544) = *(v3 + 32);
    *(v2 + 560) = v6;
    *(v2 + 512) = v4;
    *(v2 + 528) = v5;
    v7 = *(v3 + 64);
    v8 = *(v3 + 80);
    v9 = *(v3 + 96);
    *(v2 + 624) = *(v3 + 112);
    *(v2 + 592) = v8;
    *(v2 + 608) = v9;
    *(v2 + 576) = v7;
    sub_24DC9C9A4(v2 + 512);

    v10 = sub_24DC99FDC;
  }

  else
  {
    *(v2 + 664) = *(v3 + 32);
    *(v2 + 680) = v6;
    *(v2 + 632) = v4;
    *(v2 + 648) = v5;
    v11 = *(v3 + 64);
    v12 = *(v3 + 80);
    v13 = *(v3 + 96);
    *(v2 + 744) = *(v3 + 112);
    *(v2 + 712) = v12;
    *(v2 + 728) = v13;
    *(v2 + 696) = v11;
    sub_24DC9C9A4(v2 + 632);

    v10 = sub_24DC99FC4;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t GRPCClient.clientStreaming<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 280) = v21;
  *(v9 + 288) = v8;
  *(v9 + 264) = v20;
  *(v9 + 248) = v19;
  *(v9 + 232) = v18;
  *(v9 + 216) = a7;
  *(v9 + 224) = a8;
  *(v9 + 200) = a4;
  *(v9 + 208) = a5;
  *(v9 + 192) = a1;
  *(v9 + 296) = *v8;
  *(v9 + 304) = *a2;
  v10 = *a3;
  v11 = a3[1];
  *(v9 + 320) = *(a2 + 16);
  *(v9 + 328) = v10;
  v12 = a3[2];
  v13 = a3[3];
  *(v9 + 336) = v11;
  *(v9 + 344) = v12;
  *(v9 + 352) = v13;
  v14 = *(a6 + 80);
  *(v9 + 80) = *(a6 + 64);
  *(v9 + 96) = v14;
  *(v9 + 112) = *(a6 + 96);
  *(v9 + 128) = *(a6 + 112);
  v15 = *(a6 + 16);
  *(v9 + 16) = *a6;
  *(v9 + 32) = v15;
  v16 = *(a6 + 48);
  *(v9 + 48) = *(a6 + 32);
  *(v9 + 64) = v16;
  return MEMORY[0x2822009F8](sub_24DC9A0B0, 0, 0);
}

uint64_t sub_24DC9A0B0()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  v6 = *(v0 + 264);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  *(v0 + 168) = *(v0 + 304);
  *(v0 + 184) = v4;
  *(v0 + 136) = v3;
  *(v0 + 152) = v2;
  *(v0 + 160) = v1;
  v9 = swift_allocObject();
  *(v0 + 360) = v9;
  *(v9 + 16) = *(v5 + 80);
  *(v9 + 24) = *(v0 + 232);
  *(v9 + 40) = *(v0 + 248);
  *(v9 + 56) = v6;
  *(v9 + 64) = *(v5 + 88);
  *(v9 + 72) = *(v0 + 272);
  *(v9 + 88) = v8;
  *(v9 + 96) = v7;

  v10 = swift_task_alloc();
  *(v0 + 368) = v10;
  *v10 = v0;
  v10[1] = sub_24DC9A238;
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  v13 = *(v0 + 192);

  return GRPCClient.bidirectionalStreaming<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(v13, v0 + 168, (v0 + 136), v11, v12, v0 + 16, &unk_24DCBCEB8, v9);
}

uint64_t sub_24DC9A238()
{
  v2 = *v1;
  *(v2 + 376) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC9A374, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DC9A374()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC9A3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a4;
  v7[13] = a7;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  v8 = type metadata accessor for ClientResponse(0, a7, a3, a4);
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC9A4A8, 0, 0);
}

uint64_t sub_24DC9A4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[10];
  v6 = type metadata accessor for StreamingClientResponse(0, v4[13], a3, a4);
  (*(*(v6 - 8) + 16))(v4 + 2, v5, v6);
  v8 = swift_task_alloc();
  v4[17] = v8;
  *v8 = v4;
  v8[1] = sub_24DC9A58C;
  v9 = v4[16];
  v10 = v4[13];

  return sub_24DC8E010(v9, (v4 + 2), v10, v7);
}

uint64_t sub_24DC9A58C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *v0;

  v8 = (v2 + *v2);
  v4 = swift_task_alloc();
  v1[18] = v4;
  *v4 = v3;
  v4[1] = sub_24DC9A768;
  v5 = v1[16];
  v6 = v1[9];

  return v8(v6, v5);
}

uint64_t sub_24DC9A768()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24DC9A8FC;
  }

  else
  {
    v2 = sub_24DC9A87C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC9A87C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24DC9A8FC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t GRPCClient.serverStreaming<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 432) = v24;
  *(v9 + 440) = v8;
  *(v9 + 424) = v23;
  *(v9 + 408) = v22;
  *(v9 + 392) = v21;
  *(v9 + 376) = a8;
  *(v9 + 384) = v20;
  *(v9 + 360) = a5;
  *(v9 + 368) = a7;
  *(v9 + 344) = a2;
  *(v9 + 352) = a4;
  *(v9 + 336) = a1;
  v12 = type metadata accessor for ClientRequest(0, v20, a3, a4);
  *(v9 + 448) = v12;
  *(v9 + 456) = *(v12 - 8);
  v13 = swift_task_alloc();
  v14 = *a3;
  *(v9 + 464) = v13;
  *(v9 + 472) = v14;
  *(v9 + 480) = *(a3 + 1);
  *(v9 + 496) = a3[3];
  v15 = *(a6 + 80);
  *(v9 + 80) = *(a6 + 64);
  *(v9 + 96) = v15;
  *(v9 + 112) = *(a6 + 96);
  *(v9 + 128) = *(a6 + 112);
  v16 = *(a6 + 16);
  *(v9 + 16) = *a6;
  *(v9 + 32) = v16;
  v17 = *(a6 + 48);
  *(v9 + 48) = *(a6 + 32);
  *(v9 + 64) = v17;

  return MEMORY[0x2822009F8](sub_24DC9AAC4, 0, 0);
}

uint64_t sub_24DC9AAC4()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v18 = *(v0 + 472);
  v3 = *(v0 + 464);
  v4 = *(v0 + 384);
  (*(*(v0 + 456) + 16))(v3, *(v0 + 344), *(v0 + 448));
  sub_24DC7D078(v3, v4, v0 + 288, v5, v6);
  v7 = *(v0 + 304);
  *(v0 + 312) = *(v0 + 288);
  *(v0 + 328) = v7;
  *(v0 + 256) = v18;
  *(v0 + 272) = v2;
  *(v0 + 280) = v1;
  v8 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v8;
  *(v0 + 232) = *(v0 + 112);
  *(v0 + 248) = *(v0 + 128);
  v9 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v9;
  v10 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 184) = v10;
  v11 = swift_task_alloc();
  *(v0 + 504) = v11;
  *v11 = v0;
  v11[1] = sub_24DC9AC30;
  v12 = *(v0 + 368);
  v13 = *(v0 + 376);
  v14 = *(v0 + 352);
  v15 = *(v0 + 360);
  v16 = *(v0 + 336);

  return GRPCClient.bidirectionalStreaming<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(v16, v0 + 312, (v0 + 256), v14, v15, v0 + 136, v12, v13);
}

uint64_t sub_24DC9AC30()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC9ADA0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DC9ADA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t *GRPCClient.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 96), v2);
  type metadata accessor for GRPCClient.StateMachine(255, v2, *(v1 + 88), v3);
  sub_24DCB4C14();
  sub_24DCB5404();
  return v0;
}

uint64_t GRPCClient.__deallocating_deinit()
{
  GRPCClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t withGRPCClient<A, B>(transport:interceptors:isolation:handleClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v14;
  v8[16] = v15;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  if (a4)
  {
    swift_getObjectType();
    v9 = sub_24DCB50D4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v8[17] = v9;
  v8[18] = v11;

  return MEMORY[0x2822009F8](sub_24DC9AFE0, v9, v11);
}

uint64_t sub_24DC9AFE0()
{
  v28 = v0;
  v1 = v0[9];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_24DC9C338(0, v2, 0);
    v3 = v21;
    v4 = v1 + 32;
    do
    {
      sub_24DC5B208(v4, (v0 + 2));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F020, &qword_24DCBCE70);
      static ConditionalInterceptor.Subject.all.getter(&v24);
      v26 = v24;
      v27 = v25;
      static ConditionalInterceptor<>.apply(_:to:)(v22, (v0 + 2), &v26);

      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      v6 = *(v21 + 16);
      v5 = *(v21 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24DC9C338((v5 > 1), v6 + 1, 1);
      }

      *(v21 + 16) = v6 + 1;
      v7 = v21 + 56 * v6;
      v8 = v22[0];
      v9 = v22[1];
      v10 = v22[2];
      *(v7 + 80) = v23;
      *(v7 + 48) = v9;
      *(v7 + 64) = v10;
      *(v7 + 32) = v8;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v0[19] = v3;
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_24DC9B1B4;
  v12 = v0[16];
  v13 = v0[13];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[12];
  v17 = v0[10];
  v18 = v0[7];
  v19 = v0[8];
  v30 = v0[15];
  v31 = v12;

  return withGRPCClient<A, B>(transport:interceptorPipeline:isolation:handleClient:)(v18, v19, v3, v17, v15, v16, v13, v14);
}

uint64_t sub_24DC9B1B4()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[18];

    return MEMORY[0x2822009F8](sub_24DC9B2EC, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24DC9B2EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t withGRPCClient<A, B>(transport:interceptorPipeline:isolation:handleClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v14;
  v8[11] = v15;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  if (a4)
  {
    swift_getObjectType();
    v9 = sub_24DCB50D4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v8[12] = v9;
  v8[13] = v11;

  return MEMORY[0x2822009F8](sub_24DC9B3FC, v9, v11);
}

uint64_t sub_24DC9B3FC()
{
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = *(v0 + 24);
  v4 = *(v0 + 56);
  *(v2 + 16) = *(v0 + 72);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 56) = v4;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_24DC9B4E8;
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A8](v6);
}

uint64_t sub_24DC9B4E8()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {
    v3 = v2[12];
    v4 = v2[13];

    return MEMORY[0x2822009F8](sub_24DC9B620, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24DC9B620()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC9B684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v11;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC9B738, 0, 0);
}

uint64_t sub_24DC9B738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[11];
  v6 = v4[9];
  v8 = v4[5];
  v7 = v4[6];
  v9 = v4[4];
  type metadata accessor for GRPCClient(0, v4[8], v4[10], a4);
  swift_allocObject();

  v10 = sub_24DC9C710(v9, v8);
  v4[12] = v10;
  v11 = sub_24DCB51C4();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v6;
  v12[5] = v10;

  sub_24DC925A4(v5, &unk_24DCBCFA8, v12);
  sub_24DC3DFD4(v5, &qword_27F19F050, &qword_24DCB9EB0);
  v16 = (v7 + *v7);
  v13 = swift_task_alloc();
  v4[13] = v13;
  *v13 = v4;
  v13[1] = sub_24DC9B930;
  v14 = v4[2];

  return v16(v14, v10);
}

uint64_t sub_24DC9B930()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24DC9BAB8;
  }

  else
  {
    v2 = sub_24DC9BA44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC9BA44()
{
  GRPCClient.beginGracefulShutdown()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC9BAB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC9BB24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24DC2FD00;

  return GRPCClient.runConnections()();
}

unint64_t sub_24DC9BBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24DC9CDEC();
  v4 = sub_24DCB4D24();
  return sub_24DC9BC24(a1, a2, a3, a4, v4);
}

unint64_t sub_24DC9BC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_24DC8814C();
    do
    {

      v9 = sub_24DCB4DA4();

      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_24DC9BD28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F290, &qword_24DCBCFB8);
  v31 = v4;
  result = sub_24DCB5604();
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
      v21 = *(v5 + 48) + 32 * v20;
      v32 = *v21;
      v33 = *(v21 + 16);
      v34 = *(v21 + 24);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
      }

      sub_24DC9CDEC();
      result = sub_24DCB4D24();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v32;
      *(v16 + 16) = v33;
      *(v16 + 24) = v34;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24DC9BFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_24DC9BBB4(a2, a3, a4, a5);
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
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_24DC9BD28(v20, a6 & 1);
      v15 = sub_24DC9BBB4(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_24DCB5824();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_24DC9C190();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 32 * v15);
  *v27 = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

void *sub_24DC9C190()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F290, &qword_24DCBCFB8);
  v2 = *v0;
  v3 = sub_24DCB55F4();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
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

void *sub_24DC9C318(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24DC9C358(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24DC9C338(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24DC9C4A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24DC9C358(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2A0, &qword_24DCBCFC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F020, &qword_24DCBCE70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24DC9C4A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2A8, &qword_24DCBCFC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F288, &qword_24DCBCFB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_24DC9C5EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F290, &qword_24DCBCFB8);
    v3 = sub_24DCB5614();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_24DC9BBB4(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t *sub_24DC9C710(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  (*(*(v5 - 8) + 16))(v2 + *(*v2 + 96), a1, v5);
  v6 = *(v4 + 88);
  v12[0] = 0;
  v13 = a2;
  v14 = sub_24DC9C5EC(MEMORY[0x277D84F90]);
  LODWORD(v15) = 0;
  v16 = 0uLL;
  *(&v15 + 1) = 0;
  v8 = type metadata accessor for GRPCClient.StateMachine(0, v5, v6, v7);
  (*(*(v8 - 8) + 32))(&v15 + 8, v12, v8);
  v9 = (v2 + *(*v2 + 104));
  v10 = v16;
  *v9 = v15;
  v9[1] = v10;
  return v2;
}

uint64_t sub_24DC9C8A4()
{

  return swift_deallocObject();
}

uint64_t sub_24DC9C8DC(uint64_t a1, uint64_t a2)
{
  v6 = v2[4];
  v8 = v2[11];
  v7 = v2[12];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24DC334F4;

  return sub_24DC99220(a1, a2, v8, v7, v9, v10, v6);
}

uint64_t sub_24DC9C9F8(uint64_t a1, uint64_t a2)
{
  v6 = v2[4];
  v8 = v2[11];
  v7 = v2[12];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24DC2FD00;

  return sub_24DC9A3D8(a1, a2, v8, v7, v9, v10, v6);
}

uint64_t sub_24DC9CAC0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24DC334F4;

  return sub_24DC9B684(a1, a2, v8, v9, v10, v11, v6, v7);
}

uint64_t sub_24DC9CBB0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC9CC90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  type metadata accessor for GRPCClient.StateMachine(255, *a1, a1[1], a4);
  return sub_24DCB4C04();
}

uint64_t sub_24DC9CCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC9CD18()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24DC9CD58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24DC334F4;

  return sub_24DC9BB24();
}

unint64_t sub_24DC9CDEC()
{
  result = qword_27F19F298;
  if (!qword_27F19F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F298);
  }

  return result;
}

uint64_t sub_24DC9CE8C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    goto LABEL_48;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v43 = a3;
    v44 = a4 & 0xFFFFFFFFFFFFFFLL;
    if ((a2 & 0x1000000000000000) == 0)
    {
      v14 = HIBYTE(a4) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        if ((result & 0x1000000000000000) != 0)
        {
          v15 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if (v14 != (result & 0xFFFFFFFFFFFFLL))
          {
            goto LABEL_46;
          }
        }

        else
        {
          v35 = HIBYTE(a4) & 0xF;
          v33 = sub_24DCB5504();
          v14 = v35;
          v15 = v33;
          if (v35 != v34)
          {
            goto LABEL_46;
          }
        }

        if (v14)
        {
          v16 = &v43;
          while (1)
          {
            v18 = *v16;
            v16 = (v16 + 1);
            v17 = v18;
            v20 = *v15++;
            v19 = v20;
            if ((v17 & 0x80000000) == 0 && ((v19 ^ v17) & 0xDF) != 0)
            {
              goto LABEL_46;
            }

            if (!--v14)
            {
              goto LABEL_47;
            }
          }
        }

        goto LABEL_47;
      }

      v42[0] = result;
      v42[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (v14 == (HIBYTE(a2) & 0xF))
      {
        if (v14)
        {
          v24 = &v43;
          v25 = v42;
          while (1)
          {
            v27 = *v24;
            v24 = (v24 + 1);
            v26 = v27;
            v29 = *v25++;
            v28 = v29;
            if ((v26 & 0x80000000) == 0 && ((v28 ^ v26) & 0xDF) != 0)
            {
              goto LABEL_46;
            }

            if (!--v14)
            {
              goto LABEL_47;
            }
          }
        }

        goto LABEL_47;
      }

LABEL_46:
      LOBYTE(v11) = 0;
      return v11;
    }

    goto LABEL_48;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v4 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a3 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_48:

    return sub_24DC9D0E4(result, a2, a3, a4);
  }

  v38 = result;
  v40 = a2;
  v36 = a3;
  v37 = a4;
  v30 = sub_24DCB5504();
  a3 = v36;
  a4 = v37;
  v4 = v30;
  v5 = v31;
  result = v38;
  a2 = v40;
  if ((v40 & 0x1000000000000000) != 0)
  {
    goto LABEL_48;
  }

LABEL_5:
  if ((a2 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a2) & 0xF;
    v43 = result;
    v44 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (v5 == v21)
    {
      if (v21)
      {
        v22 = &v43;
        do
        {
          v23 = *v4;
          if ((v23 & 0x80000000) == 0 && ((*v22 ^ v23) & 0xDF) != 0)
          {
            goto LABEL_46;
          }

          ++v4;
          v22 = (v22 + 1);
        }

        while (--v21);
      }

LABEL_47:
      LOBYTE(v11) = 1;
      return v11;
    }

    goto LABEL_46;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    v39 = v5;
    v41 = v4;
    result = sub_24DCB5504();
    v5 = v39;
    v4 = v41;
    v6 = result;
    if (v39 == v32)
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

  v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  if (v5 != (result & 0xFFFFFFFFFFFFLL))
  {
LABEL_56:
    LOBYTE(v11) = 0;
    return v11;
  }

LABEL_8:
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      v7 = v5 - 1;
      do
      {
        v9 = *v4++;
        v8 = v9;
        LOBYTE(v9) = *v6++;
        v11 = ((v9 ^ v8) & 0xDF) == 0 || v8 < 0;
        v13 = v7-- != 0;
      }

      while (v11 && v13);
    }

    else
    {
      LOBYTE(v11) = 1;
    }

    return v11;
  }

  __break(1u);
  return result;
}

unint64_t sub_24DC9D114(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v38 = v6;
  v7 = 4 * v6;
  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v35 = a4 & 0xFFFFFFFFFFFFFFLL;
  v34 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v41 = v9;
  v42 = v10;
  v40 = 4 * v10;
  v45 = a1;
  v11 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v36 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v14 = 15;
  while (1)
  {
    v15 = v14 >> 14;
    v16 = v14 >> 14 == v7;
    if (v14 >> 14 == v7)
    {
      v17 = 0;
      goto LABEL_28;
    }

    v18 = v14;
    if ((v14 & 0xC) == v41)
    {
      v21 = result;
      v18 = sub_24DC3312C(v14, a3, a4);
      result = v21;
    }

    v19 = v18 >> 16;
    if (v18 >> 16 >= v38)
    {
      goto LABEL_51;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v31 = result;
      v17 = sub_24DCB4EB4();
      result = v31;
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v43 = a3;
        v44 = v35;
        v20 = &v43;
      }

      else
      {
        v20 = v34;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v30 = result;
          v20 = sub_24DCB5504();
          result = v30;
        }
      }

      v17 = *(v20 + v19);
    }

    if ((v14 & 0xC) == v41)
    {
      v22 = result;
      v14 = sub_24DC3312C(v14, a3, a4);
      result = v22;
      if ((a4 & 0x1000000000000000) == 0)
      {
LABEL_23:
        v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_28;
      }
    }

    else if ((a4 & 0x1000000000000000) == 0)
    {
      goto LABEL_23;
    }

    if (v38 <= v14 >> 16)
    {
      goto LABEL_53;
    }

    v23 = result;
    v14 = sub_24DCB4E74();
    result = v23;
LABEL_28:
    if (v40 == result >> 14)
    {
      return v16;
    }

    v24 = result & 0xC;
    v25 = result;
    if (v24 == v12)
    {
      v29 = result;
      v25 = sub_24DC3312C(result, v45, a2);
      result = v29;
    }

    v26 = v25 >> 16;
    if (v25 >> 16 >= v42)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v33 = result;
      v28 = sub_24DCB4EB4();
      result = v33;
      if (v24 != v12)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v43 = v45;
        v44 = v37;
        v27 = &v43;
      }

      else
      {
        v27 = v36;
        if ((v45 & 0x1000000000000000) == 0)
        {
          v32 = result;
          v27 = sub_24DCB5504();
          result = v32;
        }
      }

      v28 = *(v27 + v26);
      if (v24 != v12)
      {
LABEL_38:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_43;
      }
    }

    result = sub_24DC3312C(result, v45, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_39:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v15 == v7)
      {
        return 0;
      }

      goto LABEL_45;
    }

LABEL_43:
    if (v42 <= result >> 16)
    {
      goto LABEL_52;
    }

    result = sub_24DCB4E74();
    if (v15 == v7)
    {
      return 0;
    }

LABEL_45:
    v16 = 0;
    if ((v17 & 0x80) != 0 || ((v28 ^ v17) & 0xDF) != 0)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t ClientRequest.metadata.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t ClientRequest.init(message:metadata:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  *a4 = *a2;
  v8 = type metadata accessor for ClientRequest(0, a3, a3, a5);
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 28);

  return v9(v10, a1, a3);
}

uint64_t StreamingClientRequest.metadata.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t sub_24DC9D640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  *a4 = &unk_24DCBD108;
  a4[1] = v8;
}

uint64_t sub_24DC9D6B8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24DC2FD00;

  return v7(a2);
}

uint64_t sub_24DC9D7AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;

  *(a2 + 8) = &unk_24DCBD0F8;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_24DC9D830(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_24DC334F4;

  return v5();
}

uint64_t StreamingClientRequest.producer.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StreamingClientRequest.producer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void StreamingClientRequest.init(of:metadata:producer:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = *a1;
  a4[1] = a2;
  a4[2] = a3;
}

uint64_t sub_24DC9D9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC9DA10(uint64_t *a1, int a2)
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

uint64_t sub_24DC9DA58(uint64_t result, int a2, int a3)
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

uint64_t sub_24DC9DAB0()
{

  return swift_deallocObject();
}

uint64_t sub_24DC9DAE8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return sub_24DC9D830(a1, v4);
}

uint64_t sub_24DC9DBAC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24DC2FD00;

  return sub_24DC9D6B8(a1, a2, v6);
}

uint64_t sub_24DC9DC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *(a3 - 8);
  v5[8] = swift_task_alloc();
  sub_24DCB5414();
  v5[9] = swift_task_alloc();
  v5[10] = *(a4 - 8);
  v5[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[12] = AssociatedTypeWitness;
  v5[13] = *(AssociatedTypeWitness - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC9DE4C, 0, 0);
}

uint64_t sub_24DC9DE4C()
{
  (*(v0[10] + 16))(v0[11], v0[2], v0[5]);
  sub_24DCB4F04();
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];
  swift_getAssociatedConformanceWitness();
  sub_24DCB5444();
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[9], v0[4]);
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_24DC9E02C;
    v7 = v0[8];

    return sub_24DC5D9C0(v7);
  }
}

uint64_t sub_24DC9E02C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24DC9E2FC;
  }

  else
  {
    v2 = sub_24DC9E140;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC9E140()
{
  (*(v0[7] + 8))(v0[8], v0[4]);
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];
  swift_getAssociatedConformanceWitness();
  sub_24DCB5444();
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[9], v0[4]);
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_24DC9E02C;
    v7 = v0[8];

    return sub_24DC5D9C0(v7);
  }
}

uint64_t sub_24DC9E2FC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[7] + 8))(v0[8], v0[4]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24DC9E3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24DC5E3E8(*v4, *(a1 + 16), a3, a4);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_24DC9E430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24DC5E414(a1, *v4, *(a2 + 16), a4);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_24DC9E498(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24DC9E4D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DC334F4;

  return sub_24DC5D9C0(a1);
}

uint64_t sub_24DC9E584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = *(a4 + 16);
  *v11 = v5;
  v11[1] = sub_24DC2FD00;

  return sub_24DC9DC80(a1, v10, v12, a2, a3);
}

uint64_t sub_24DC9E648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for RPCResponsePart(255, *(a1 + 24), *(a1 + 40), a2);
  v8 = type metadata accessor for RPCWriter(0, v5, v6, v7);
  v9 = *(*(v8 - 8) + 16);

  return v9(a3, v3, v8);
}

uint64_t sub_24DC9E6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>)
{
  v27 = a7;
  v15 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = v18;
  v28[1] = v19;
  v28[2] = v20;
  v28[3] = v21;
  v22 = *(type metadata accessor for MessageToRPCResponsePartWriter(0, v28) + 52);
  v23 = *(a3 - 8);
  (*(v23 + 16))(&a8[v22], a1, a3);
  (*(v15 + 16))(v17, a2, a5);
  type metadata accessor for RPCResponsePart(0, a4, a6, v24);
  RPCWriter.init<A>(wrapping:)(v17, a5, v27, a8);
  (*(v15 + 8))(a2, a5);
  return (*(v23 + 8))(a1, a3);
}

uint64_t sub_24DC9E8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a2;
  v5[9] = v4;
  v5[7] = a1;
  v6 = *(a2 + 24);
  v5[10] = v6;
  v7 = *(a2 + 40);
  v5[11] = v7;
  v8 = type metadata accessor for RPCResponsePart(0, v6, v7, a4);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC9E994, 0, 0);
}

uint64_t sub_24DC9E994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[11];
  v6 = v4[9];
  v7 = v4[10];
  v8 = v4[7];
  v9 = v4[8];
  v10 = type metadata accessor for RPCWriter(0, v4[12], a3, a4);
  v4[15] = v10;
  v11 = *(v10 - 8);
  v4[16] = v11;
  (*(v11 + 16))(v4 + 2, v6, v10);
  (*(*(v9 + 32) + 16))(v8, v7, v5, *(v9 + 16));
  swift_storeEnumTagMultiPayload();
  v12 = swift_task_alloc();
  v4[17] = v12;
  *v12 = v4;
  v12[1] = sub_24DC9EB70;
  v13 = v4[14];

  return RPCWriter.write(_:)(v13);
}

uint64_t sub_24DC9EB70()
{
  v2 = *v1;
  v3 = *v1;
  v2[18] = v0;

  v4 = v2[16];
  v5 = v2[15];
  (*(v2[13] + 8))(v2[14], v2[12]);
  (*(v4 + 8))(v2 + 2, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC9ED64, 0, 0);
  }

  else
  {

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_24DC9ED64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC9EDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_24DC9EDF0, 0, 0);
}

uint64_t sub_24DC9EDF0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  v18 = *(v0 + 56);
  *(v3 + 16) = v2[2];
  v4 = v2[3];
  *(v3 + 24) = v4;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2[4];
  v5 = v2[5];
  *(v3 + 48) = v5;
  *(v3 + 56) = v18;
  v7 = type metadata accessor for RPCResponsePart(0, v4, v5, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = sub_24DC59F28(sub_24DC9EFE4, v3, v1, v7, v8, v18, MEMORY[0x277D84950], v0 + 16);
  *(v0 + 72) = v9;
  v10 = v9;

  *(v0 + 24) = v10;
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  v14 = type metadata accessor for RPCWriter(0, v7, v12, v13);
  v15 = sub_24DCB50A4();
  WitnessTable = swift_getWitnessTable();
  *v11 = v0;
  v11[1] = sub_24DC59CC4;

  return RPCWriter.write<A>(contentsOf:)(v0 + 24, v14, v15, WitnessTable);
}

uint64_t sub_24DC9EFE4(uint64_t a1, void *a2)
{
  v9 = *(v3 + 40);
  v11[0] = *(v3 + 16);
  v10 = v11[0];
  v11[1] = v9;
  type metadata accessor for MessageToRPCResponsePartWriter(0, v11);
  result = (*(v9 + 16))(a1, *(&v10 + 1), *(&v9 + 1), v10);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    type metadata accessor for RPCResponsePart(0, *(&v10 + 1), *(&v9 + 1), v8);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_24DC9F0CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return sub_24DC9E8BC(a1, a2, v6, v7);
}

uint64_t sub_24DC9F170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24DC2FD00;

  return sub_24DC9EDC8(a1, a4, a2, a3);
}

uint64_t sub_24DC9F22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v31 = a1;
  v32 = a8;
  v29 = a7;
  v30 = a2;
  v33 = a9;
  v34 = a3;
  v13 = *(a5 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v14);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = v22;
  v35[1] = v21;
  v35[2] = a10;
  v35[3] = v23;
  v24 = type metadata accessor for MessageToRPCResponsePartWriter(0, v35);
  MEMORY[0x28223BE20](v24);
  v26 = &v29 - v25;
  (*(v18 + 16))(v20, v30, a6);
  (*(v13 + 16))(v16, v31, a5);
  sub_24DC9E6FC(v20, v16, a6, a4, a5, v29, v32, v26);
  WitnessTable = swift_getWitnessTable();
  return RPCWriter.init<A>(wrapping:)(v26, v24, WitnessTable, v33);
}

uint64_t sub_24DC9F448(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for RPCResponsePart(255, a1[3], a1[5], a4);
  result = type metadata accessor for RPCWriter(319, v4, v5, v6);
  if (v8 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC9F4E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 40) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24DC9F668(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 40] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

uint64_t CallOptions.timeout.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

uint64_t CallOptions.maxRequestMessageBytes.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t CallOptions.maxResponseMessageBytes.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t CallOptions.executionPolicy.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 72);
  v7[0] = *(v1 + 56);
  v7[1] = v2;
  v8[0] = *(v1 + 88);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 97);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_24DC33DDC(v7, &v6);
}

__n128 CallOptions.executionPolicy.setter(uint64_t a1)
{
  v3 = *(v1 + 72);
  v6[0] = *(v1 + 56);
  v6[1] = v3;
  v7[0] = *(v1 + 88);
  *(v7 + 9) = *(v1 + 97);
  sub_24DC9FA60(v6);
  v4 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v4;
  *(v1 + 88) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 97) = result;
  return result;
}

uint64_t sub_24DC9FA60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EDB0, &qword_24DCB80B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_24DC9FB20@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char *a11)
{
  v12 = *a11;
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0u;
  *(a9 + 88) = 0u;
  *(a9 + 104) = 0;
  *(a9 + 112) = -1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 17) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6 & 1;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  v13 = *(a9 + 56);
  v14 = *(a9 + 72);
  v15 = *(a9 + 88);
  *&v19[9] = *(a9 + 97);
  v18[1] = v14;
  *v19 = v15;
  v18[0] = v13;
  sub_24DC9FA60(v18);
  v16 = *(a10 + 16);
  *(a9 + 56) = *a10;
  *(a9 + 72) = v16;
  *(a9 + 88) = *(a10 + 32);
  result = *(a10 + 41);
  *(a9 + 97) = result;
  *(a9 + 113) = v12;
  return result;
}

double static CallOptions.defaults.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 513;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v2 = *(a1 + 72);
  v4[0] = *(a1 + 56);
  v4[1] = v2;
  v5[0] = *(a1 + 88);
  *(v5 + 9) = *(a1 + 97);
  sub_24DC9FA60(v4);
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1023;
  return result;
}

double CallOptions.formUnion(with:)(__int128 *a1)
{
  v2 = a1[7];
  *&v18[32] = a1[6];
  *&v18[48] = v2;
  v18[64] = *(a1 + 128);
  v3 = a1[3];
  v16 = a1[2];
  v17 = v3;
  v4 = a1[5];
  *v18 = a1[4];
  *&v18[16] = v4;
  v5 = a1[1];
  v14 = *a1;
  v15 = v5;
  if (sub_24DC49638(&v14) != 1)
  {
    if (*(v1 + 16) == 1)
    {
      v7 = v16;
      result = *&v15;
      *v1 = v15;
      *(v1 + 16) = v7;
    }

    if (*(v1 + 17) == 2)
    {
      *(v1 + 17) = BYTE8(v14);
    }

    if (*(v1 + 32) == 1)
    {
      v8 = v17;
      *(v1 + 24) = *(&v16 + 1);
      *(v1 + 32) = v8;
    }

    if (*(v1 + 48) == 1)
    {
      v9 = v18[0];
      *(v1 + 40) = *(&v17 + 1);
      *(v1 + 48) = v9;
    }

    if (*(v1 + 112) == 255)
    {
      v10 = *(v1 + 72);
      v12[0] = *(v1 + 56);
      v12[1] = v10;
      v13[0] = *(v1 + 88);
      *(v13 + 9) = *(v1 + 97);
      sub_24DC33DDC(&v18[8], &v11);
      sub_24DC9FA60(v12);
      *(v1 + 56) = *&v18[8];
      *(v1 + 72) = *&v18[24];
      *(v1 + 88) = *&v18[40];
      result = *&v18[49];
      *(v1 + 97) = *&v18[49];
    }
  }

  return result;
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24DC9FDD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 114))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 17);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24DC9FE38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 2;
    }
  }

  return result;
}

uint64_t static ConditionalInterceptor.Subject.services(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
}

uint64_t static ConditionalInterceptor.Subject.methods(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
}

Swift::Bool __swiftcall ConditionalInterceptor.Subject.applies(to:)(GRPCCoreInternal::MethodDescriptor to)
{
  countAndFlagsBits = to.service.fullyQualifiedService._countAndFlagsBits;
  v3 = *to.service.fullyQualifiedService._countAndFlagsBits;
  v4 = countAndFlagsBits[1];
  if (!*(v1 + 8))
  {
    return sub_24DC9FF10(v3, v4, *v1);
  }

  if (*(v1 + 8) == 1)
  {
    return sub_24DCA0018(v3, v4, countAndFlagsBits[2], countAndFlagsBits[3], *v1);
  }

  return 1;
}

uint64_t sub_24DC9FF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_24DC880F4(), v4 = sub_24DCB4D24(), v5 = -1 << *(a3 + 32), v6 = v4 & ~v5, ((*(a3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    sub_24DC881B0();
    do
    {

      v8 = sub_24DCB4DA4();

      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_24DCA0018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 16) && (sub_24DC9CDEC(), v6 = sub_24DCB4D24(), v7 = -1 << *(a5 + 32), v8 = v6 & ~v7, ((*(a5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    sub_24DC8814C();
    do
    {

      v10 = sub_24DCB4DA4();

      if (v10)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_24DCA0174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 28));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a2 = v4;
  *(a2 + 8) = v3;
}

BOOL sub_24DCA0190(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = (v2 + *(a2 + 28));
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  v11 = *(a1 + 3);
  v12 = v6;
  v13 = v5;
  v9 = v3;
  v10 = v4;

  v14.service.fullyQualifiedService._countAndFlagsBits = &v9;
  v7 = ConditionalInterceptor.Subject.applies(to:)(v14);

  return v7;
}

uint64_t sub_24DCA021C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_24DC5B208(a1, a3);
  *(a3 + 40) = v4;
  *(a3 + 48) = v5;
}

uint64_t sub_24DCA0270(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for ConditionalInterceptor.Subject(319, result, v2, v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DCA02FC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFD)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 > 2)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_24DCA0448(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFD)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFD)
        {
          *(v18 + 8) = 0;
          *v18 = a2 - 254;
        }

        else
        {
          *(v18 + 8) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_24DCA0648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_16GRPCCoreInternal22ConditionalInterceptorV7SubjectV7WrappedOyx__G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_24DCA06A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DCA06E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24DCA072C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_24DCA0770(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t dispatch thunk of ServerInterceptor.intercept<A, B>(request:context:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 8) + **(a9 + 8));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_24DC2FD00;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t ServerContext.descriptor.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 ServerContext.descriptor.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t ServerContext.remotePeer.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ServerContext.remotePeer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ServerContext.localPeer.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ServerContext.localPeer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

double sub_24DCA0AE4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24DCA0B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2B0, &qword_24DCBD4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DCA0B78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2B0, &qword_24DCBD4C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ServerContext.cancellation.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 104) = v2;
  return result;
}

__n128 ServerContext.init(descriptor:remotePeer:localPeer:cancellation:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  result = *a1;
  v8 = a1[1].n128_u64[0];
  v9 = a1[1].n128_u64[1];
  v10 = *a6;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *a7 = result;
  *(a7 + 16) = v8;
  *(a7 + 24) = v9;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  *(a7 + 56) = a5;
  *(a7 + 96) = 0;
  *(a7 + 104) = v10;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16GRPCCoreInternal13ServerContextV17TransportSpecific_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_24DCA0CC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_24DCA0D10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static GRPCAsyncThrowingStream.makeStream(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v4 = sub_24DCB52A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v22 = sub_24DCB5314();
  v8 = sub_24DCB52D4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  sub_24DCA10F0(v7);
  sub_24DCB5284();
  (*(v5 + 8))(v7, v4);
  (*(v10 + 16))(v13, v15, TupleTypeMetadata2);
  v16 = *(TupleTypeMetadata2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v17 = sub_24DCB5314();
  (*(*(v17 - 8) + 32))(v23, v13, v17);
  (*(*(v8 - 8) + 8))(&v13[v16], v8);
  (*(v10 + 32))(v13, v15, TupleTypeMetadata2);
  v18 = *(TupleTypeMetadata2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v19 = sub_24DCB52D4();
  (*(*(v19 - 8) + 32))(v24, &v13[v18], v19);
  return (*(*(v22 - 8) + 8))(v13);
}

uint64_t sub_24DCA10F0@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v4 = sub_24DCB52A4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_24DCA1194(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v7 = sub_24DCB5294();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  (*(v4 + 16))(v6, a1, v3);
  sub_24DCB52D4();
  sub_24DCB52B4();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24DCA1340(uint64_t a1, uint64_t a2)
{
  MEMORY[0x2530363C0]();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB52D4();
  return sub_24DCB52C4();
}

uint64_t GRPCAsyncThrowingStream.makeAsyncIterator()@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v3 = sub_24DCB5304();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_24DCB5314();
  sub_24DCB5204();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v6 = sub_24DCB5304();
  return (*(*(v6 - 8) + 32))(a2, v5, v6);
}

uint64_t GRPCAsyncThrowingStream.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return GRPCAsyncThrowingStream.AsyncIterator.next(isolation:)(a1, 0, 0, a2);
}

uint64_t GRPCAsyncThrowingStream.AsyncIterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a3;
  v8 = swift_task_alloc();
  v4[5] = v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = sub_24DCB5304();
  *v8 = v4;
  v8[1] = sub_24DCA167C;

  return MEMORY[0x2822005A8](a1, a2, a3, v9, v4 + 2);
}

uint64_t sub_24DCA167C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    if (*(v2 + 24))
    {
      swift_getObjectType();
      v4 = sub_24DCB50D4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    return MEMORY[0x2822009F8](sub_24DCA17E8, v4, v6);
  }

  else
  {
    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_24DCA1800(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return GRPCAsyncThrowingStream.AsyncIterator.next()(a1, a2);
}

uint64_t sub_24DCA18A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_24DC973FC;

  return GRPCAsyncThrowingStream.AsyncIterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t sub_24DCA196C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  GRPCAsyncThrowingStream.makeAsyncIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t GRPCAsyncThrowingStream.Continuation.write(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24DCA19F0, 0, 0);
}

uint64_t sub_24DCA19F0()
{
  sub_24DCA1194(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t GRPCAsyncThrowingStream.Continuation.write<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = *(a2 + 16);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  sub_24DCB5414();
  v5[10] = swift_task_alloc();
  v5[11] = *(a3 - 8);
  v5[12] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[13] = AssociatedTypeWitness;
  v5[14] = *(AssociatedTypeWitness - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCA1C28, 0, 0);
}

uint64_t sub_24DCA1C28()
{
  v1 = v0[8];
  (*(v0[11] + 16))(v0[12], v0[2], v0[4]);
  sub_24DCB4F04();
  v2 = (v1 + 48);
  v3 = (v1 + 32);
  for (i = (v1 + 8); ; (*i)(v7, v8))
  {
    v5 = v0[10];
    v6 = v0[7];
    swift_getAssociatedConformanceWitness();
    sub_24DCB5444();
    if ((*v2)(v5, 1, v6) == 1)
    {
      break;
    }

    v7 = v0[9];
    v8 = v0[7];
    v9 = v0[3];
    (*v3)(v7, v0[10], v8);
    sub_24DCA1194(v7, v9);
  }

  (*(v0[14] + 8))(v0[15], v0[13]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24DCA1DE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return GRPCAsyncThrowingStream.Continuation.write(_:)(a1, a2);
}

uint64_t sub_24DCA1E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24DC2FD00;

  return GRPCAsyncThrowingStream.Continuation.write<A>(contentsOf:)(a1, a4, a2, a3);
}

uint64_t GRPCAsyncThrowingStream.Continuation.finish()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24DCA1F64, 0, 0);
}

uint64_t sub_24DCA1F64()
{
  sub_24DCA1340(0, *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t GRPCAsyncThrowingStream.Continuation.finish(throwing:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24DCA1FEC, 0, 0);
}

uint64_t sub_24DCA1FEC()
{
  sub_24DCA1340(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24DCA206C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DC334F4;

  return GRPCAsyncThrowingStream.Continuation.finish()(a1);
}

uint64_t sub_24DCA2100(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC2FD00;

  return GRPCAsyncThrowingStream.Continuation.finish(throwing:)(a1, a2);
}

uint64_t sub_24DCA21A4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24DCA2308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  v5 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  result = a4(319, v5, v6, MEMORY[0x277D84950]);
  if (v8 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = a4(0, v7, v8, MEMORY[0x277D84950]);
  v10 = *(*(v9 - 8) + 48);

  return v10(a1, a2, v9);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, void))
{
  v8 = *(a4 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v10 = a5(0, v8, v9, MEMORY[0x277D84950]);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, a2, a2, v10);
}

uint64_t sub_24DCA2568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a2;
  v30 = a3;
  v31 = a1;
  v33 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2B8, &qword_24DCBD748);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C0, &qword_24DCBD750);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - v17;
  (*(v8 + 104))(v10, *MEMORY[0x277D85778], v7);
  sub_24DCB51D4();
  (*(v8 + 8))(v10, v7);
  v19 = sub_24DCB51C4();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_24DC4982C(v18, v16, &qword_27F19F2C0, &qword_24DCBD750);
  v20 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  v21[4] = *(v30 + 16);
  v21[5] = v23;
  v21[6] = v24;
  sub_24DCA2B7C(v16, v21 + v20);

  sub_24DC4B67C(v6, &unk_24DCBD770, v21, v22);
  sub_24DC92FCC(v6);
  sub_24DCA2B7C(v18, v16);
  v25 = *(v12 + 56);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  (*(*(v26 - 8) + 32))(v33, &v16[v25], v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C8, &qword_24DCBD760);
  return (*(*(v27 - 8) + 8))(v16, v27);
}

uint64_t sub_24DCA2900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_24DCA2928, 0, 0);
}

uint64_t sub_24DCA2928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 40);
  v5 = *(v4 + 48);
  v7 = _s18_ResultOrCancelledOMa(0, v5, a3, a4);
  v8 = swift_task_alloc();
  *(v4 + 56) = v8;
  v9 = *(v4 + 24);
  *(v8 + 16) = v5;
  *(v8 + 24) = v9;
  *(v8 + 40) = v6;
  v10 = swift_task_alloc();
  *(v4 + 64) = v10;
  *v10 = v4;
  v10[1] = sub_24DC895C8;
  v11 = *(v4 + 16);

  return MEMORY[0x282200600](v11, v7);
}

uint64_t sub_24DCA2A30()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C0, &qword_24DCBD750) - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C8, &qword_24DCBD760);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v1[14];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_24DCA2B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C0, &qword_24DCBD750);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DCA2BEC(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C0, &qword_24DCBD750) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[5];
  v8 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24DC2FD00;

  return sub_24DCA2900(a1, v9, v10, v7, v8, v1 + v6, v4);
}

uint64_t sub_24DCA2CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = _s18_ResultOrCancelledOMa(255, a6, a3, a4);
  v6[8] = v7;
  v6[9] = swift_getTupleTypeMetadata2();
  v6[10] = swift_task_alloc();
  sub_24DCB5414();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C0, &qword_24DCBD750) - 8);
  v6[17] = v8;
  v6[18] = *(v8 + 64);
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCA2EF8, 0, 0);
}

uint64_t sub_24DCA2EF8()
{
  v1 = v0[20];
  v16 = v0[19];
  v17 = v0[17];
  v2 = v0[7];
  v3 = v0[5];
  v14 = v2;
  v15 = v0[6];
  v4 = v0[4];
  v5 = sub_24DCB51C4();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v4;
  v7[6] = v3;
  v8 = sub_24DCB5174();
  v0[21] = v8;

  sub_24DC4B67C(v1, &unk_24DCBD810, v7, v8);
  sub_24DC92FCC(v1);
  v6(v1, 1, 1, v5);
  sub_24DC4982C(v15, v16, &qword_27F19F2C0, &qword_24DCBD750);
  v9 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v14;
  sub_24DCA2B7C(v16, v10 + v9);
  sub_24DC4B67C(v1, &unk_24DCBD820, v10, v8);
  sub_24DC92FCC(v1);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_24DCA3140;
  v12 = v0[12];

  return MEMORY[0x2822002D0](v12, 0, 0, v8);
}

uint64_t sub_24DCA3140()
{

  return MEMORY[0x2822009F8](sub_24DCA323C, 0, 0);
}

uint64_t sub_24DCA323C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];
  v4 = *(v2 + 48);
  v0[23] = v4;
  v0[24] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v3);
  if (v5 == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[16];
    v10 = *(v2 + 32);
    v0[25] = v10;
    v0[26] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v10(v9, v1, v3);
    sub_24DCB5164();
    v11 = swift_task_alloc();
    v0[27] = v11;
    *v11 = v0;
    v11[1] = sub_24DCA3364;
    v8 = v0[21];
    v5 = v0[11];
    v6 = 0;
    v7 = 0;
  }

  return MEMORY[0x2822002D0](v5, v6, v7, v8);
}

uint64_t sub_24DCA3364()
{

  return MEMORY[0x2822009F8](sub_24DCA3460, 0, 0);
}

uint64_t sub_24DCA3460()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  result = (*(v0 + 184))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 56);
  (*(v0 + 200))(v5, v1, v2);
  v10 = v7 + *(v8 + 48);
  v11 = *(v6 + 16);
  v11(v7, v4, v2);
  v11(v10, v5, v2);
  v12 = *(v9 - 8);
  v13 = *(v12 + 48);
  if (v13(v7, 1, v9) == 1)
  {
    v14 = *(v0 + 56);
    if (v13(v10, 1, v14) != 1)
    {
      goto LABEL_6;
    }

    return sub_24DCB55E4();
  }

  v15 = *(v0 + 56);
  v11(*(v0 + 112), *(v0 + 80), *(v0 + 64));
  v16 = v13(v10, 1, v15);
  v10 = *(v0 + 112);
  v14 = *(v0 + 56);
  if (v16 != 1)
  {
    (*(v12 + 8))(*(v0 + 112), *(v0 + 56));
    return sub_24DCB55E4();
  }

LABEL_6:
  v17 = *(v0 + 128);
  v22 = *(v0 + 80);
  v18 = *(v0 + 64);
  v19 = *(v0 + 16);
  v20 = *(*(v0 + 104) + 8);
  v20(*(v0 + 120), v18);
  v20(v17, v18);
  (*(v12 + 32))(v19, v10, v14);
  v20(v22, v18);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24DCA3768(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_24DCA3864;

  return v10(a1);
}

uint64_t sub_24DCA3864()
{

  return MEMORY[0x2822009F8](sub_24DCA3960, 0, 0);
}

uint64_t sub_24DCA3960()
{
  (*(*(v0[3] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24DCA39EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2E0, qword_24DCBD828);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCA3ABC, 0, 0);
}

uint64_t sub_24DCA3ABC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C8, &qword_24DCBD760);
  sub_24DCB5204();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_24DCA3B88;
  v2 = *(v0 + 40);

  return MEMORY[0x2822003E8](v0 + 72, 0, 0, v2);
}

uint64_t sub_24DCA3B88()
{

  return MEMORY[0x2822009F8](sub_24DCA3C84, 0, 0);
}

uint64_t sub_24DCA3C84()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 16);
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
    (*(*(v1 - 8) + 56))(v2, 1, 1, v1);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_24DCA3B88;
    v6 = *(v0 + 40);

    return MEMORY[0x2822003E8](v0 + 72, 0, 0, v6);
  }
}

uint64_t sub_24DCA3DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_24DCA3E48@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24DCA3EBC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_24DCA3F30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);

  return MEMORY[0x2822003D0](v0);
}

uint64_t sub_24DCA3F68(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_24DCA3FC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_24DCA4144(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_24DCA439C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24DCA4428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CancellableTaskHandle(uint64_t a1)
{
  result = qword_27F1A7AC0;
  if (!qword_27F1A7AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24DCA44F0(uint64_t a1)
{
  sub_24DCA455C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24DCA455C()
{
  if (!qword_27F19F2D8)
  {
    v0 = sub_24DCB51F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F19F2D8);
    }
  }
}

uint64_t sub_24DCA45B0()
{

  return swift_deallocObject();
}

uint64_t sub_24DCA45E8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC2FD00;

  return sub_24DC53800(a1, v4);
}

uint64_t sub_24DCA46B0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24DC334F4;

  return sub_24DCA2CF0(a1, a2, v7, v9, v8, v6);
}

uint64_t sub_24DCA4778()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24DCA47B8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DC334F4;

  return sub_24DCA3768(a1, v7, v8, v5, v6, v4);
}

uint64_t sub_24DCA486C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C0, &qword_24DCBD750) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C8, &qword_24DCBD760);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v1[14];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_24DCA49B0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C0, &qword_24DCBD750) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DC334F4;

  return sub_24DCA39EC(a1, v7, v8, v1 + v6, v4);
}

uint64_t sub_24DCA4AA0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_24DCA4B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{

  v13 = *(a9 - 8);
  v14 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v15 = *(a10 - 8);
  v16 = (v14 + *(v13 + 64) + *(v15 + 80)) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a6;
  *(v18 + 24) = a7;
  *(v18 + 32) = a8;
  *(v18 + 40) = a9;
  *(v18 + 48) = a10;
  *(v18 + 56) = a11;
  *(v18 + 72) = a12;
  (*(v13 + 32))(v18 + v14, a2, a9);
  (*(v15 + 32))(v18 + v16, a3, a10);
  v19 = (v18 + v17);
  *v19 = a4;
  v19[1] = a5;
  return &unk_24DCBD868;
}

uint64_t sub_24DCA4D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *v15 = v14;
  v15[1] = sub_24DC334F4;

  return sub_24DC76ED8(a2, a1, a4, a5, a3, a6, a7, a9);
}

uint64_t sub_24DCA4E68()
{
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 40) - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_24DCA4F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = v13[2];
  v15 = v13[5];
  v16 = v13[6];
  v17 = (*(*(v15 - 8) + 80) + 80) & ~*(*(v15 - 8) + 80);
  v18 = (v17 + *(*(v15 - 8) + 64) + *(*(v16 - 8) + 80)) & ~*(*(v16 - 8) + 80);
  v19 = (v13 + ((*(*(v16 - 8) + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = *v19;
  v21 = v19[1];
  v22 = swift_task_alloc();
  *(v14 + 16) = v22;
  *v22 = v14;
  v22[1] = sub_24DC2FD00;

  return sub_24DCA4D18(a1, a2, a3, v13 + v17, v13 + v18, v20, v21, v26, a9, a10, a11, a12, a13);
}

uint64_t sub_24DCA5138(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24DC2FD00;

  return v10(a1, a2, a3);
}

uint64_t RPCRouter.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for RPCRouter.RPCHandler(255, a1, a2, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v6 = sub_24DCB4FF4();
  v7 = sub_24DC9CDEC();
  v8 = sub_24DCA68F8(v6, &type metadata for MethodDescriptor, TupleTypeMetadata2, v7);

  *a3 = v8;
  return result;
}

uint64_t RPCRouter.methods.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RPCRouter.RPCHandler(255, *(a1 + 16), *(a1 + 24), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  swift_getTupleTypeMetadata2();
  sub_24DC9CDEC();
  sub_24DCB4CC4();

  swift_getWitnessTable();
  return sub_24DCB50B4();
}

uint64_t RPCRouter.count.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  type metadata accessor for RPCRouter.RPCHandler(255, *(a1 + 16), *(a1 + 24), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_24DC9CDEC();

  return MEMORY[0x2821FB858](v5, &type metadata for MethodDescriptor, TupleTypeMetadata2, v7);
}

Swift::Bool __swiftcall RPCRouter.hasHandler(forMethod:)(GRPCCoreInternal::MethodDescriptor forMethod)
{
  type metadata accessor for RPCRouter.RPCHandler(255, *(forMethod.service.fullyQualifiedService._object + 2), *(forMethod.service.fullyQualifiedService._object + 3), forMethod.method._object);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  swift_getTupleTypeMetadata2();
  sub_24DC9CDEC();
  sub_24DCB4CC4();
  swift_getWitnessTable();
  sub_24DC8814C();
  return sub_24DCB4F74() & 1;
}

uint64_t RPCRouter.registerHandler<A, B, C, D>(forMethod:deserializer:serializer:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v38 = a8;
  v36 = a4;
  v37 = a7;
  v32 = a3;
  v14 = *(a10 - 8);
  v34 = a12;
  v35 = a11;
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v18;
  v22 = v18[1];
  v23 = v18[3];
  v33 = v18[2];
  v42 = v21;
  v43 = v22;
  v44 = v33;
  v45 = v23;
  (*(v24 + 16))(v20);
  (*(v14 + 16))(v17, v32, a10);
  v25 = *(a6 + 16);
  v26 = *(a6 + 24);

  *&v30 = v26;
  *(&v30 + 1) = v35;
  sub_24DCA4B5C(&v42, v20, v17, v36, a5, v25, v37, v38, a9, a10, v30, v34);
  v39 = &unk_24DCBD868;
  v40 = v27;
  v41 = MEMORY[0x277D84F90];
  v42 = v21;
  v43 = v22;
  v44 = v33;
  v45 = v23;
  type metadata accessor for RPCRouter.RPCHandler(255, v25, v26, v28);

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  swift_getTupleTypeMetadata2();
  sub_24DC9CDEC();
  sub_24DCB4CE4();
  return sub_24DCB4D14();
}

Swift::Bool __swiftcall RPCRouter.removeHandler(forMethod:)(GRPCCoreInternal::MethodDescriptor forMethod)
{
  type metadata accessor for RPCRouter.RPCHandler(255, *(forMethod.service.fullyQualifiedService._object + 2), *(forMethod.service.fullyQualifiedService._object + 3), forMethod.method._object);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  swift_getTupleTypeMetadata2();
  sub_24DC9CDEC();
  sub_24DCB4CE4();
  sub_24DCB4CB4();
  if (v2)
  {
    sub_24DCA6BE4(v2, v3, v4);
  }

  return v2 != 0;
}

Swift::Void __swiftcall RPCRouter.registerInterceptors(pipeline:)(Swift::OpaquePointer pipeline)
{
  v5 = *v3;
  type metadata accessor for RPCRouter.RPCHandler(255, *(v1 + 16), *(v1 + 24), v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  swift_getTupleTypeMetadata2();
  sub_24DC9CDEC();
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = (v7 + 63) >> 6;
  rawValue = pipeline._rawValue;
  v42 = v5;
  v10 = pipeline._rawValue + 32;
  v11 = v8 & *(v5 + 64);
  v38 = v10;

  v12 = 0;
  v39 = v9;
  v40 = v5 + 64;
  while (v11)
  {
LABEL_11:
    v43 = v11;
    v14 = (*(v42 + 48) + ((v12 << 11) | (32 * __clz(__rbit64(v11)))));
    v15 = *v14;
    v16 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    v19 = rawValue[2];

    if (v19)
    {
      v20 = v38;
      v21 = MEMORY[0x277D84F90];
      v44 = v15;
      do
      {
        sub_24DCA6C28(v20, v55);
        *&v51 = v15;
        *(&v51 + 1) = v16;
        *&v52 = v18;
        *(&v52 + 1) = v17;
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F270, &qword_24DCBD880);
        if (sub_24DCA0190(&v51, v22))
        {
          v51 = v55[0];
          v52 = v55[1];
          v53 = v55[2];
          v54 = v56;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24DC92774(0, *(v21 + 16) + 1, 1);
            v21 = v47;
          }

          v25 = *(v21 + 16);
          v24 = *(v21 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_24DC92774((v24 > 1), v25 + 1, 1);
            v21 = v47;
          }

          *(v21 + 16) = v25 + 1;
          v26 = v21 + 56 * v25;
          v27 = v51;
          v28 = v52;
          v29 = v53;
          *(v26 + 80) = v54;
          *(v26 + 48) = v28;
          *(v26 + 64) = v29;
          *(v26 + 32) = v27;
          v15 = v44;
        }

        else
        {
          sub_24DCA6C98(v55);
        }

        v20 += 56;
        --v19;
      }

      while (v19);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v11 = (v43 - 1) & v43;
    if (*(v21 + 16))
    {
      v47 = v15;
      v48 = v16;
      v49 = v18;
      v50 = v17;
      sub_24DCB4CE4();
      v31 = sub_24DCB4CF4();
      if (*v30)
      {
        v32 = v30;
        v33 = *(v21 + 16);
        if (v33)
        {
          v45 = MEMORY[0x277D84F90];
          sub_24DCA6790(0, v33, 0);
          v34 = v45;
          v35 = v21 + 32;
          do
          {
            sub_24DCA6C28(v35, v55);
            sub_24DC5B208(v55, &v51);
            sub_24DCA6C98(v55);
            v37 = *(v45 + 16);
            v36 = *(v45 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_24DCA6790((v36 > 1), v37 + 1, 1);
            }

            *(v45 + 16) = v37 + 1;
            sub_24DC5B2AC(&v51, v45 + 40 * v37 + 32);
            v35 += 56;
            --v33;
          }

          while (v33);

          v11 = (v43 - 1) & v43;
        }

        else
        {

          v34 = MEMORY[0x277D84F90];
        }

        v32[2] = v34;
      }

      else
      {
      }

      v31(v46, 0);
    }

    else
    {
    }

    v9 = v39;
    v6 = v40;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return;
    }

    v11 = *(v6 + 8 * v13);
    ++v12;
    if (v11)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_24DCA5CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = *(a3 + 24);
  v4[13] = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for RPCResponsePart(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *v3;
  v4[16] = v9;
  v4[17] = v10;

  return MEMORY[0x2822009F8](sub_24DCA5DE0, 0, 0);
}

uint64_t sub_24DCA5DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[10];
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[3];
  v4[2] = *v5;
  v10 = v4[12];
  v9 = v4[13];
  v4[3] = v6;
  v4[4] = v7;
  v4[5] = v8;
  type metadata accessor for RPCRouter.RPCHandler(255, v9, v10, a4);

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  swift_getTupleTypeMetadata2();
  sub_24DC9CDEC();
  sub_24DCB4D04();

  v11 = v4[6];
  if (v11)
  {
    v13 = v4[7];
    v12 = v4[8];
    v4[18] = v12;
    v4[19] = v13;
    v14 = swift_task_alloc();
    v4[20] = v14;
    *v14 = v4;
    v14[1] = sub_24DCA6050;
    v16 = v4[10];
    v15 = v4[11];

    return sub_24DCA5138(v16, v15, v12, v11);
  }

  else
  {
    if (qword_27F1A7B50 != -1)
    {
      swift_once();
    }

    v18 = v4[16];
    v19 = v4[14];
    v20 = qword_27F1A7B58;

    Metadata.init(dictionaryLiteral:)();
    v21 = v4[9];
    *v18 = v20;
    v18[1] = v21;
    swift_storeEnumTagMultiPayload();
    v22 = swift_task_alloc();
    v4[21] = v22;
    v4[22] = type metadata accessor for RPCWriter.Closable(0, v19, v23, v24);
    *v22 = v4;
    v22[1] = sub_24DCA61D0;
    v25 = v4[16];

    return RPCWriter.Closable.write(_:)(v25);
  }
}

uint64_t sub_24DCA6050()
{

  return MEMORY[0x2822009F8](sub_24DCA6168, 0, 0);
}

uint64_t sub_24DCA6168()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DCA61D0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v5 = v2[15];
    v4 = v2[16];
    v6 = v2[14];
    MEMORY[0x2530363B0](v0);
    (*(v5 + 8))(v4, v6);

    return MEMORY[0x2822009F8](sub_24DCA64A4, 0, 0);
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v7 = swift_task_alloc();
    v2[23] = v7;
    *v7 = v3;
    v7[1] = sub_24DCA6394;

    return RPCWriter.Closable.finish()();
  }
}

uint64_t sub_24DCA6394()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DCA64A4()
{
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_24DCA6394;

  return RPCWriter.Closable.finish()();
}

unint64_t sub_24DCA65AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24DCB4D24();

  return sub_24DCA6608(a1, v6, a2, a3);
}

unint64_t sub_24DCA6608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
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
      v19 = sub_24DCB4DA4();
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

void *sub_24DCA6790(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24DCA67B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24DCA67B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2F0, &qword_24DCBD948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F260, &qword_24DCBCA50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_24DCA68F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24DCB5034())
  {
    sub_24DCB5624();
    v13 = sub_24DCB5614();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24DCB5034();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24DCB5024())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24DCB54F4();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24DCA65AC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
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

    return v13;
  }

  return result;
}

uint64_t sub_24DCA6BE4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24DCA6C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F270, &qword_24DCBD880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DCA6C98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F270, &qword_24DCBD880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24DCA6D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DCA6D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ServiceConfig.methodConfig.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ServiceConfig.loadBalancingConfig.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void sub_24DCA6E38(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

__n128 ServiceConfig.retryThrottling.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ServiceConfig.retryThrottling.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

void __swiftcall ServiceConfig.init(methodConfig:loadBalancingConfig:retryThrottling:)(GRPCCoreInternal::ServiceConfig *__return_ptr retstr, Swift::OpaquePointer methodConfig, Swift::OpaquePointer loadBalancingConfig, GRPCCoreInternal::ServiceConfig::RetryThrottling_optional retryThrottling)
{
  v4 = *(retryThrottling.value.maxTokens + 16);
  retstr->methodConfig = methodConfig;
  retstr->loadBalancingConfig = loadBalancingConfig;
  retstr->retryThrottling.value = *retryThrottling.value.maxTokens;
  retstr->retryThrottling.is_nil = v4;
}

uint64_t sub_24DCA6EAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v65 = v2;
  v66 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v9 = *(v5 + 112);
    v50 = *(v5 + 96);
    v51 = v9;
    v10 = *(v5 + 16);
    v11 = *(v5 + 48);
    v46 = *(v5 + 32);
    v47 = v11;
    v12 = *(v5 + 48);
    v13 = *(v5 + 80);
    v48 = *(v5 + 64);
    v49 = v13;
    v14 = *(v5 + 16);
    v45[0] = *v5;
    v45[1] = v14;
    v15 = *(v5 + 112);
    v42 = v50;
    v43 = v15;
    v38 = v46;
    v39 = v12;
    v40 = v48;
    v41 = v8;
    v36 = v45[0];
    v37 = v10;
    v16 = *(v6 + 80);
    v17 = *(v6 + 112);
    v58 = *(v6 + 96);
    v59 = v17;
    v18 = *(v6 + 16);
    v19 = *(v6 + 48);
    v54 = *(v6 + 32);
    v55 = v19;
    v20 = *(v6 + 48);
    v21 = *(v6 + 80);
    v56 = *(v6 + 64);
    v57 = v21;
    v22 = *(v6 + 16);
    v53[0] = *v6;
    v53[1] = v22;
    v23 = *(v6 + 112);
    v33 = v58;
    v34 = v23;
    v29 = v54;
    v30 = v20;
    v31 = v56;
    v32 = v16;
    v52 = *(v5 + 128);
    v44 = *(v5 + 128);
    v60 = *(v6 + 128);
    v35 = *(v6 + 128);
    v27 = v53[0];
    v28 = v18;
    sub_24DC3C4DC(v45, v26);
    sub_24DC3C4DC(v53, v26);
    sub_24DC3CE60();
    v24 = sub_24DCB4DA4();
    v61[6] = v33;
    v61[7] = v34;
    v62 = v35;
    v61[2] = v29;
    v61[3] = v30;
    v61[4] = v31;
    v61[5] = v32;
    v61[0] = v27;
    v61[1] = v28;
    sub_24DC3C514(v61);
    v63[6] = v42;
    v63[7] = v43;
    v64 = v44;
    v63[2] = v38;
    v63[3] = v39;
    v63[4] = v40;
    v63[5] = v41;
    v63[0] = v36;
    v63[1] = v37;
    sub_24DC3C514(v63);
    if ((v24 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 136;
    v5 += 136;
  }

  return 1;
}

uint64_t sub_24DCA7090(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 3)
      {
        if (v7 != 3)
        {
          return 0;
        }
      }

      else
      {
        if (v7 == 3)
        {
          return 0;
        }

        if (v5 == 2)
        {
          if (v7 != 2)
          {
            return 0;
          }
        }

        else if (v7 == 2 || ((v7 ^ v5) & 1) != 0)
        {
          return 0;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t ServiceConfig.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 32);
  MEMORY[0x253035FF0](*(*v1 + 16));
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = (v4 + 32);
    do
    {
      v18[0] = *v9;
      v10 = v9[1];
      v11 = v9[2];
      v12 = v9[4];
      v18[3] = v9[3];
      v18[4] = v12;
      v18[1] = v10;
      v18[2] = v11;
      v13 = v9[5];
      v14 = v9[6];
      v15 = v9[7];
      v19 = *(v9 + 128);
      v18[6] = v14;
      v18[7] = v15;
      v18[5] = v13;
      memmove(__dst, v9, 0x81uLL);
      sub_24DC3C4DC(v18, v20);
      sub_24DC4979C();
      sub_24DCB4D34();
      v20[6] = __dst[6];
      v20[7] = __dst[7];
      v21 = v23;
      v20[2] = __dst[2];
      v20[3] = __dst[3];
      v20[4] = __dst[4];
      v20[5] = __dst[5];
      v20[0] = __dst[0];
      v20[1] = __dst[1];
      sub_24DC3C514(v20);
      v9 = (v9 + 136);
      --v8;
    }

    while (v8);
  }

  sub_24DCAA144(a1, v3);
  if (v7)
  {
    return sub_24DCB58C4();
  }

  sub_24DCB58C4();
  MEMORY[0x253035FF0](v5);
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  return MEMORY[0x253036020](v17);
}

uint64_t ServiceConfig.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_24DCB58A4();
  MEMORY[0x253035FF0](*(v2 + 16));
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = (v2 + 32);
    do
    {
      v16[0] = *v7;
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[4];
      v16[3] = v7[3];
      v16[4] = v10;
      v16[1] = v8;
      v16[2] = v9;
      v11 = v7[5];
      v12 = v7[6];
      v13 = v7[7];
      v17 = *(v7 + 128);
      v16[6] = v12;
      v16[7] = v13;
      v16[5] = v11;
      memmove(__dst, v7, 0x81uLL);
      sub_24DC3C4DC(v16, v18);
      sub_24DC4979C();
      sub_24DCB4D34();
      v18[6] = __dst[6];
      v18[7] = __dst[7];
      v19 = v21;
      v18[2] = __dst[2];
      v18[3] = __dst[3];
      v18[4] = __dst[4];
      v18[5] = __dst[5];
      v18[0] = __dst[0];
      v18[1] = __dst[1];
      sub_24DC3C514(v18);
      v7 = (v7 + 136);
      --v6;
    }

    while (v6);
  }

  sub_24DCAA144(v22, v1);
  if (v5)
  {
    sub_24DCB58C4();
  }

  else
  {
    sub_24DCB58C4();
    MEMORY[0x253035FF0](v3);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v4;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x253036020](v14);
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DCA73D8(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 32);
  MEMORY[0x253035FF0](*(*v1 + 16));
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = (v4 + 32);
    do
    {
      v18[0] = *v9;
      v10 = v9[1];
      v11 = v9[2];
      v12 = v9[4];
      v18[3] = v9[3];
      v18[4] = v12;
      v18[1] = v10;
      v18[2] = v11;
      v13 = v9[5];
      v14 = v9[6];
      v15 = v9[7];
      v19 = *(v9 + 128);
      v18[6] = v14;
      v18[7] = v15;
      v18[5] = v13;
      memmove(__dst, v9, 0x81uLL);
      sub_24DC3C4DC(v18, v20);
      sub_24DC4979C();
      sub_24DCB4D34();
      v20[6] = __dst[6];
      v20[7] = __dst[7];
      v21 = v23;
      v20[2] = __dst[2];
      v20[3] = __dst[3];
      v20[4] = __dst[4];
      v20[5] = __dst[5];
      v20[0] = __dst[0];
      v20[1] = __dst[1];
      sub_24DC3C514(v20);
      v9 = (v9 + 136);
      --v8;
    }

    while (v8);
  }

  sub_24DCAA144(a1, v3);
  if (v7)
  {
    return sub_24DCB58C4();
  }

  sub_24DCB58C4();
  MEMORY[0x253035FF0](v5);
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  return MEMORY[0x253036020](v17);
}

uint64_t sub_24DCA7530(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  sub_24DCB58A4();
  MEMORY[0x253035FF0](*(v3 + 16));
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = (v3 + 32);
    do
    {
      v17[0] = *v8;
      v9 = v8[1];
      v10 = v8[2];
      v11 = v8[4];
      v17[3] = v8[3];
      v17[4] = v11;
      v17[1] = v9;
      v17[2] = v10;
      v12 = v8[5];
      v13 = v8[6];
      v14 = v8[7];
      v18 = *(v8 + 128);
      v17[6] = v13;
      v17[7] = v14;
      v17[5] = v12;
      memmove(__dst, v8, 0x81uLL);
      sub_24DC3C4DC(v17, v19);
      sub_24DC4979C();
      sub_24DCB4D34();
      v19[6] = __dst[6];
      v19[7] = __dst[7];
      v20 = v22;
      v19[2] = __dst[2];
      v19[3] = __dst[3];
      v19[4] = __dst[4];
      v19[5] = __dst[5];
      v19[0] = __dst[0];
      v19[1] = __dst[1];
      sub_24DC3C514(v19);
      v8 = (v8 + 136);
      --v7;
    }

    while (v7);
  }

  sub_24DCAA144(v23, v2);
  if (v6)
  {
    sub_24DCB58C4();
  }

  else
  {
    sub_24DCB58C4();
    MEMORY[0x253035FF0](v4);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v5;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x253036020](v15);
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DCA768C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000013;
  v4 = 0x800000024DCC61E0;
  if (v2 == 1)
  {
    v5 = 0x800000024DCC61E0;
  }

  else
  {
    v3 = 0x7268547972746572;
    v5 = 0xEF676E696C74746FLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F43646F6874656DLL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEC0000006769666ELL;
  }

  v8 = 0xD000000000000013;
  if (*a2 != 1)
  {
    v8 = 0x7268547972746572;
    v4 = 0xEF676E696C74746FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F43646F6874656DLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC0000006769666ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24DCB57A4();
  }

  return v11 & 1;
}

uint64_t sub_24DCA77A4()
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DCA7860(uint64_t a1)
{
  sub_24DCB4D44();
}

uint64_t sub_24DCA7908(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

unint64_t sub_24DCA79C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24DCAB49C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24DCA79F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006769666ELL;
  v4 = 0x800000024DCC61E0;
  v5 = 0xD000000000000013;
  if (v2 != 1)
  {
    v5 = 0x7268547972746572;
    v4 = 0xEF676E696C74746FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F43646F6874656DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24DCA7A68()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x7268547972746572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F43646F6874656DLL;
  }
}

unint64_t sub_24DCA7ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24DCAB49C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24DCA7B04(uint64_t a1)
{
  v2 = sub_24DCAA2D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DCA7B40(uint64_t a1)
{
  v2 = sub_24DCAA2D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServiceConfig.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2F8, &qword_24DCBD950);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA2D8();
  sub_24DCB5924();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F300, &qword_24DCBD958);
  v19 = 0;
  sub_24DCAA4A0(&qword_27F19F308, sub_24DCAA32C, MEMORY[0x277D83978]);
  sub_24DCB5674();
  v16 = a2;
  v10 = MEMORY[0x277D84F90];
  if (v17)
  {
    v11 = v17;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F318, &qword_24DCBD960);
  v19 = 1;
  sub_24DCAA380(&qword_27F19F320, sub_24DCAA3F8, MEMORY[0x277D83978]);
  sub_24DCB5674();
  if (v17)
  {
    v10 = v17;
  }

  v19 = 2;
  sub_24DCAA44C();
  sub_24DCB5674();
  (*(v6 + 8))(v8, v5);
  v12 = v18;
  v13 = v17;
  v14 = v16;
  *v16 = v11;
  v14[1] = v10;
  *(v14 + 1) = v13;
  *(v14 + 32) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ServiceConfig.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F338, &qword_24DCBD968);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v16 = v1[2];
  v17 = v8;
  v15 = v10;
  v21 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA2D8();

  sub_24DCB5944();
  v18 = v9;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F300, &qword_24DCBD958);
  sub_24DCAA4A0(&qword_27F19F340, sub_24DCAA518, MEMORY[0x277D83948]);
  sub_24DCB5724();

  if (!v2)
  {
    v11 = v21;
    v13 = v15;
    v12 = v16;
    v18 = v17;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F318, &qword_24DCBD960);
    sub_24DCAA380(&qword_27F19F350, sub_24DCAA56C, MEMORY[0x277D83948]);
    sub_24DCB5724();
    v18 = v12;
    v19 = v13;
    v20 = v11;
    v22 = 2;
    sub_24DCAA5C0();
    sub_24DCB56D4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24DCA8168()
{
  v1 = *v0;
  sub_24DCB58A4();
  if (v1 == 2)
  {
    MEMORY[0x253035FF0](1);
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB58C4();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DCA81D0()
{
  if (*v0 == 2)
  {
    return MEMORY[0x253035FF0](1);
  }

  MEMORY[0x253035FF0](0);
  return sub_24DCB58C4();
}

uint64_t sub_24DCA821C(uint64_t a1)
{
  v2 = *v1;
  sub_24DCB58A4();
  if (v2 == 2)
  {
    MEMORY[0x253035FF0](1);
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB58C4();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DCA8280(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

void ServiceConfig.LoadBalancingConfig.pickFirst.getter(char *a1@<X8>)
{
  v2 = *v1 & 1;
  if ((*v1 & 0xFE) == 2)
  {
    v2 = 2;
  }

  *a1 = v2;
}

_BYTE *sub_24DCA8300@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  v2 = *result & 1;
  if ((*result & 0xFE) == 2)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

unsigned __int8 *sub_24DCA831C(unsigned __int8 *result, char *a2)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2 & 1;
  }

  *a2 = v3;
  return result;
}

unsigned __int8 *ServiceConfig.LoadBalancingConfig.pickFirst.setter(unsigned __int8 *result)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2 & 1;
  }

  *v1 = v3;
  return result;
}

uint64_t (*ServiceConfig.LoadBalancingConfig.pickFirst.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1 & 1;
  if ((*v1 & 0xFE) == 2)
  {
    v2 = 2;
  }

  *(a1 + 8) = v2;
  return sub_24DCA8390;
}

uint64_t sub_24DCA8390(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1 & 1;
  }

  **result = v2;
  return result;
}

_BYTE *sub_24DCA83D8(_BYTE *result, char *a2)
{
  if (*result)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

_BYTE *ServiceConfig.LoadBalancingConfig.roundRobin.setter(_BYTE *result)
{
  if (*result)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  *v1 = v2;
  return result;
}

uint64_t (*ServiceConfig.LoadBalancingConfig.roundRobin.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1 != 2;
  return sub_24DCA843C;
}

uint64_t sub_24DCA843C(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  **result = v1;
  return result;
}

uint64_t ServiceConfig.LoadBalancingConfig.hash(into:)()
{
  v1 = *v0;
  if (v1 != 3)
  {
    sub_24DCB58C4();
    if (v1 == 2)
    {
      return MEMORY[0x253035FF0](1);
    }

    MEMORY[0x253035FF0](0);
  }

  return sub_24DCB58C4();
}

uint64_t ServiceConfig.LoadBalancingConfig.hashValue.getter()
{
  v1 = *v0;
  sub_24DCB58A4();
  if (v1 == 3)
  {
    goto LABEL_5;
  }

  sub_24DCB58C4();
  if (v1 != 2)
  {
    MEMORY[0x253035FF0](0);
LABEL_5:
    sub_24DCB58C4();
    return sub_24DCB58F4();
  }

  MEMORY[0x253035FF0](1);
  return sub_24DCB58F4();
}

uint64_t sub_24DCA8548()
{
  v1 = *v0;
  if (v1 != 3)
  {
    sub_24DCB58C4();
    if (v1 == 2)
    {
      return MEMORY[0x253035FF0](1);
    }

    MEMORY[0x253035FF0](0);
  }

  return sub_24DCB58C4();
}

uint64_t sub_24DCA85AC(uint64_t a1)
{
  v2 = *v1;
  sub_24DCB58A4();
  if (v2 == 3)
  {
    goto LABEL_5;
  }

  sub_24DCB58C4();
  if (v2 != 2)
  {
    MEMORY[0x253035FF0](0);
LABEL_5:
    sub_24DCB58C4();
    return sub_24DCB58F4();
  }

  MEMORY[0x253035FF0](1);
  return sub_24DCB58F4();
}

uint64_t ServiceConfig.LoadBalancingConfig.PickFirst.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F368, &qword_24DCBD970);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA614();
  sub_24DCB5924();
  if (!v2)
  {
    v9 = sub_24DCB5654();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24DCA87D0()
{
  sub_24DCB58A4();
  MEMORY[0x253035FF0](0);
  return sub_24DCB58F4();
}

uint64_t sub_24DCA883C(uint64_t a1)
{
  sub_24DCB58A4();
  MEMORY[0x253035FF0](0);
  return sub_24DCB58F4();
}

uint64_t sub_24DCA8898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024DCC6280 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24DCB57A4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24DCA892C(uint64_t a1)
{
  v2 = sub_24DCAA614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DCA8968(uint64_t a1)
{
  v2 = sub_24DCAA614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServiceConfig.LoadBalancingConfig.PickFirst.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F370, &qword_24DCBD978);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA614();
  sub_24DCB5944();
  sub_24DCB56F4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ServiceConfig.LoadBalancingConfig.PickFirst.hashValue.getter()
{
  sub_24DCB58A4();
  sub_24DCB58C4();
  return sub_24DCB58F4();
}

uint64_t sub_24DCA8B68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F370, &qword_24DCBD978);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA614();
  sub_24DCB5944();
  sub_24DCB56F4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24DCA8CA8@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24DCA8CE4(uint64_t a1)
{
  v2 = sub_24DCAA668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DCA8D20(uint64_t a1)
{
  v2 = sub_24DCAA668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServiceConfig.LoadBalancingConfig.RoundRobin.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F378, &qword_24DCBD980);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA668();
  sub_24DCB5944();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24DCA8F68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F378, &qword_24DCBD980);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA668();
  sub_24DCB5944();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24DCA907C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7269665F6B636970;
  }

  else
  {
    v3 = 0x6F725F646E756F72;
  }

  if (v2)
  {
    v4 = 0xEB000000006E6962;
  }

  else
  {
    v4 = 0xEA00000000007473;
  }

  if (*a2)
  {
    v5 = 0x7269665F6B636970;
  }

  else
  {
    v5 = 0x6F725F646E756F72;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007473;
  }

  else
  {
    v6 = 0xEB000000006E6962;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DCB57A4();
  }

  return v8 & 1;
}

uint64_t sub_24DCA9130()
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DCA91C0(uint64_t a1)
{
  sub_24DCB4D44();
}

uint64_t sub_24DCA923C(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DCA92C8@<X0>(char *a2@<X8>)
{
  v3 = sub_24DCB5634();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24DCA9328(uint64_t *a1@<X8>)
{
  v2 = 0x6F725F646E756F72;
  if (*v1)
  {
    v2 = 0x7269665F6B636970;
  }

  v3 = 0xEB000000006E6962;
  if (*v1)
  {
    v3 = 0xEA00000000007473;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24DCA9374()
{
  if (*v0)
  {
    return 0x7269665F6B636970;
  }

  else
  {
    return 0x6F725F646E756F72;
  }
}

uint64_t sub_24DCA93BC@<X0>(char *a3@<X8>)
{
  v4 = sub_24DCB5634();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_24DCA9420(uint64_t a1)
{
  v2 = sub_24DCAA6BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DCA945C(uint64_t a1)
{
  v2 = sub_24DCAA6BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServiceConfig.LoadBalancingConfig.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F380, &qword_24DCBD988);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA6BC();
  sub_24DCB5924();
  if (!v2)
  {
    v14 = 0;
    sub_24DCAA710();
    sub_24DCB5674();
    if (v15 == 1)
    {
      v12 = 1;
      sub_24DCAA764();
      sub_24DCB5674();
      (*(v6 + 8))(v8, v5);
      if (v13 == 2)
      {
        v9 = 3;
      }

      else
      {
        v9 = v13 & 1;
      }
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      v9 = 2;
    }

    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ServiceConfig.LoadBalancingConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F398, &qword_24DCBD990);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA6BC();
  sub_24DCB5944();
  if (v7 == 2)
  {
    v12 = 0;
    sub_24DCAA7B8();
    goto LABEL_5;
  }

  if (v7 != 3)
  {
    v11 = v7 & 1;
    v10 = 1;
    sub_24DCAA80C();
LABEL_5:
    sub_24DCB5724();
  }

  return (*(v4 + 8))(v6, v3);
}

GRPCCoreInternal::ServiceConfig::RetryThrottling __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ServiceConfig.RetryThrottling.init(maxTokens:tokenRatio:)(Swift::Int maxTokens, Swift::Double tokenRatio)
{
  if (maxTokens < 1)
  {
    static RuntimeError.Code.invalidArgument.getter(&v11);
    sub_24DC3C254();
    swift_allocError();
    v3 = &v11;
    v4 = 0x800000024DCC6220;
    v6 = v5;
    v7 = 0xD000000000000023;
LABEL_6:
    RuntimeError.init(code:message:cause:)(v3, v7, v4, 0, v6);
    maxTokens = swift_willThrow();
    goto LABEL_7;
  }

  if (tokenRatio <= 0.0)
  {
    static RuntimeError.Code.invalidArgument.getter(&v10);
    sub_24DC3C254();
    swift_allocError();
    v6 = v8;
    v3 = &v10;
    v7 = 0xD000000000000024;
    v4 = 0x800000024DCC6250;
    goto LABEL_6;
  }

  *v2 = maxTokens;
  *(v2 + 8) = tokenRatio;
LABEL_7:
  result.tokenRatio = tokenRatio;
  result.maxTokens = maxTokens;
  return result;
}

uint64_t ServiceConfig.RetryThrottling.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F3B0, &qword_24DCBD998);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA860();
  sub_24DCB5924();
  if (!v2)
  {
    v21[2] = 0;
    v9 = sub_24DCB5694();
    v21[1] = 1;
    sub_24DCB5684();
    if (v9 < 1)
    {
      static RuntimeError.Code.invalidArgument.getter(v21);
      sub_24DC3C254();
      swift_allocError();
      v12 = v21;
      v13 = 0x800000024DCC6220;
      v15 = v14;
      v16 = 0xD000000000000023;
    }

    else
    {
      if (v10 > 0.0)
      {
        v11 = *&v10;
        (*(v6 + 8))(v8, v5);
        *a2 = v9;
        a2[1] = v11;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      static RuntimeError.Code.invalidArgument.getter(&v20);
      sub_24DC3C254();
      swift_allocError();
      v15 = v17;
      v12 = &v20;
      v16 = 0xD000000000000024;
      v13 = 0x800000024DCC6250;
    }

    RuntimeError.init(code:message:cause:)(v12, v16, v13, 0, v15);
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24DCA9C3C()
{
  if (*v0)
  {
    return 0x7461526E656B6F74;
  }

  else
  {
    return 0x6E656B6F5478616DLL;
  }
}

uint64_t sub_24DCA9C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F5478616DLL && a2 == 0xE900000000000073;
  if (v6 || (sub_24DCB57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461526E656B6F74 && a2 == 0xEA00000000006F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24DCB57A4();

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

uint64_t sub_24DCA9D6C(uint64_t a1)
{
  v2 = sub_24DCAA860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DCA9DA8(uint64_t a1)
{
  v2 = sub_24DCAA860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServiceConfig.RetryThrottling.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F3B8, &qword_24DCBD9A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA860();
  sub_24DCB5944();
  v8[15] = 0;
  sub_24DCB5714();
  if (!v1)
  {
    v8[14] = 1;
    sub_24DCB5704();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ServiceConfig.RetryThrottling.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x253035FF0](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x253036020](*&v2);
}

uint64_t ServiceConfig.RetryThrottling.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DCB58A4();
  MEMORY[0x253035FF0](*&v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x253036020](*&v3);
  return sub_24DCB58F4();
}

uint64_t sub_24DCAA034()
{
  v1 = *(v0 + 8);
  MEMORY[0x253035FF0](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x253036020](*&v2);
}

uint64_t sub_24DCAA080(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_24DCB58A4();
  MEMORY[0x253035FF0](*&v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x253036020](*&v4);
  return sub_24DCB58F4();
}