uint64_t sub_24B85F044()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void *_s12FlowFrameKit17IllegalStateErrorVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *_s12FlowFrameKit17IllegalStateErrorVwta_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_24B85F110()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B85F148()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24B85F188()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24B85F25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B86D954();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B85F2C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B86D954();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24B85F338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B86D904();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B85F3E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24B86D904();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B85F488()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B85F4C0()
{
  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_24B86C2E8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_24B85F510()
{
  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    if (v1)
    {
      MEMORY[0x24C24CCF0](*(v0 + 16));
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    }
  }

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_24B85F564()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_24B85F5E4(*(v0 + 16), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

void *sub_24B85F5B4(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void sub_24B85F5E4(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x24C24CCF0);
  }
}

uint64_t Understandable.hashValue.getter()
{
  v1 = *v0;
  sub_24B86DE34();
  MEMORY[0x24C24CAA0](v1);
  return sub_24B86DE54();
}

uint64_t sub_24B85F6A8()
{
  v1 = *v0;
  sub_24B86DE34();
  MEMORY[0x24C24CAA0](v1);
  return sub_24B86DE54();
}

uint64_t sub_24B85F71C(uint64_t a1)
{
  v2 = *v1;
  sub_24B86DE34();
  MEMORY[0x24C24CAA0](v2);
  return sub_24B86DE54();
}

uint64_t sub_24B85F790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = a4(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

void sub_24B85F7FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25[1] = a5;
  v26 = a3;
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_24B86DCB4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v25 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v15);
  v20 = v25 - v19;
  sub_24B860C6C(a1, &v28);
  v21 = swift_dynamicCast();
  v22 = *(v18 + 56);
  if (v21)
  {
    v22(v17, 0, 1, AssociatedTypeWitness);
    (*(v18 + 32))(v20, v17, AssociatedTypeWitness);
    (*(a8 + 56))(v20, a2, v26, v27, a7, a8);
    (*(v18 + 8))(v20, AssociatedTypeWitness);
  }

  else
  {
    v22(v17, 1, 1, AssociatedTypeWitness);
    (*(v14 + 8))(v17, v13);
    sub_24B861378();
    v23 = swift_allocError();
    *v24 = 0xD00000000000001BLL;
    v24[1] = 0x800000024B86ED60;
    v28 = v23;
    v29 = 1;
    v26(&v28);
    sub_24B85F5E4(v28, v29);
  }
}

uint64_t sub_24B85FAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v20[-v15];
  sub_24B860C6C(a1, v20);
  swift_dynamicCast();
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = a2;
  v17[6] = a3;
  v18 = *(a7 + 64);

  v18(v16, sub_24B8612C0, v17, a6, a7);

  return (*(v14 + 8))(v16, AssociatedTypeWitness);
}

uint64_t sub_24B85FC48(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v20[-1] - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0617E8, &qword_24B86E4E0);
  v12 = sub_24B86DE64();
  MEMORY[0x28223BE20](v12);
  v14 = (&v20[-1] - v13);
  (*(v15 + 16))(&v20[-1] - v13, a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20[0] = *v14;
    v16 = v20[0];
    v21 = 1;
    MEMORY[0x24C24CD00](v20[0]);
    a2(v20);
    MEMORY[0x24C24CCF0](v16);
  }

  else
  {
    (*(v9 + 32))(v11, v14, AssociatedTypeWitness);
    v20[3] = AssociatedTypeWitness;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
    (*(v9 + 16))(boxed_opaque_existential_0, v11, AssociatedTypeWitness);
    v21 = 0;
    a2(v20);
    (*(v9 + 8))(v11, AssociatedTypeWitness);
  }

  return sub_24B861318(v20, &qword_27F0617F0, &qword_24B86E4E8);
}

uint64_t sub_24B85FEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a4;
  v24 = a5;
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v21 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v21 - v18;
  sub_24B860C6C(a1, v26);
  swift_dynamicCast();
  sub_24B860C6C(a2, v25);
  swift_dynamicCast();
  (*(a8 + 72))(v19, v15, v22, v23, a7, a8);
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_24B8600C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v14[-v10];
  sub_24B860C6C(a1, v14);
  swift_dynamicCast();
  v12 = *(a3 + 80);
  a4[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(a4);
  v12(v11, a2, a3);
  return (*(v9 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_24B860238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 32);
  v14[3] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  v11(v14, a2, a3, a4);
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

uint64_t sub_24B8602E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v12[3] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v9(v12, a2, a3);
  return __swift_destroy_boxed_opaque_existential_0Tm(v12);
}

uint64_t sub_24B860388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 64);
  v14[3] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  v11(v14, a2, a3, a4);
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

uint64_t sub_24B860438(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v8[3] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  v5(v8);
  return __swift_destroy_boxed_opaque_existential_0Tm(v8);
}

unint64_t sub_24B8604D0()
{
  v1 = v0;
  sub_24B86DD14();

  MEMORY[0x24C24C6C0](v1[12], v1[13]);
  MEMORY[0x24C24C6C0](0x7073656D616E202CLL, 0xED0000203A656361);
  MEMORY[0x24C24C6C0](v1[2], v1[3]);
  MEMORY[0x24C24C6C0](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_24B860584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24B86DCB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  sub_24B860C6C(v2 + 112, v14);
  v9 = swift_dynamicCast();
  v10 = *(*(a1 - 8) + 56);
  if (v9)
  {
    v11 = *(a1 - 8);
    v10(v8, 0, 1, a1);
    (*(v11 + 32))(a2, v8, a1);
    v12 = 0;
  }

  else
  {
    v12 = 1;
    v10(v8, 1, 1, a1);
    (*(v6 + 8))(v8, v5);
  }

  return v10(a2, v12, 1, a1);
}

void *AnyFrame.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));
  return v0;
}

uint64_t AnyFrame.__deallocating_deinit()
{
  AnyFrame.deinit();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

void *sub_24B8607E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = *v3;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v10;
  MEMORY[0x28223BE20](v9);
  v14 = &v32 - v13;
  v4[17] = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4 + 14);
  v17 = *(v8 + 16);
  v17(boxed_opaque_existential_0, a1, a2);
  v39 = v17;
  v17(v14, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0617D8, &qword_24B86E4D0);
  if (swift_dynamicCast())
  {
    sub_24B861218(v40, v42);
    v34 = v42[4];
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    v4[12] = sub_24B86DDC4();
    v4[13] = v18;
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  else
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    sub_24B861318(v40, &qword_27F0617E0, &qword_24B86E4D8);
    v42[0] = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v4[12] = sub_24B86DA44();
    v4[13] = v19;
  }

  v4[2] = (*(a3 + 48))(a2, a3);
  v4[3] = v20;
  v39(v11, a1, a2);
  v35 = v8 + 16;
  v33 = *(v8 + 80);
  v21 = (v33 + 40) & ~v33;
  v22 = swift_allocObject();
  v37 = a1;
  v38 = a3;
  v34 = *(v36 + 80);
  v22[2] = v34;
  v22[3] = a2;
  v22[4] = a3;
  v23 = v12;
  v36 = *(v8 + 32);
  (v36)(v22 + v21, v11, a2);
  v4[4] = sub_24B861098;
  v4[5] = v22;
  v24 = v39;
  v39(v11, a1, a2);
  v32 = v23;
  v25 = swift_allocObject();
  v25[2] = v34;
  v25[3] = a2;
  v25[4] = v38;
  (v36)(v25 + v21, v11, a2);
  v4[6] = sub_24B8610D8;
  v4[7] = v25;
  v24(v11, v37, a2);
  v26 = swift_allocObject();
  v27 = v34;
  v26[2] = v34;
  v26[3] = a2;
  v28 = v38;
  v26[4] = v38;
  v29 = v36;
  (v36)(v26 + v21, v11, a2);
  v4[8] = sub_24B861118;
  v4[9] = v26;
  v39(v11, v37, a2);
  v30 = swift_allocObject();
  *(v30 + 2) = v27;
  *(v30 + 3) = a2;
  *(v30 + 4) = v28;
  v29(&v30[v21], v11, a2);
  v4[10] = sub_24B8611D8;
  v4[11] = v30;
  return v4;
}

void *sub_24B860C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnyFrame(0, *(v4 + 80), a3, a4);
  swift_allocObject();
  return sub_24B8607E0(a1, a2, a3);
}

uint64_t sub_24B860C6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24B860CCC()
{
  result = qword_27F061750[0];
  if (!qword_27F061750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F061750);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Understandable(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Understandable(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
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

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B861218(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
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

uint64_t sub_24B861318(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_24B861378()
{
  result = qword_27F0617F8[0];
  if (!qword_27F0617F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F0617F8);
  }

  return result;
}

uint64_t NonUnderstanding.localizedDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24B861464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for NonUnderstanding(0, a4, a3, a4);
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 28);

  return v9(v10, a3, a4);
}

uint64_t TimedOutError.message.getter()
{
  v1 = *v0;

  return v1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24B86153C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_24B8615D8(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-17 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = a2 + v6 + 16;
    v12 = *(v5 + 16);

    v12((a1 + v6 + 16) & ~v6, v11 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t sub_24B8616E4(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 16) & ~*(v4 + 80);

  return v5(v6);
}

void *sub_24B861758(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = a2 + v7 + 16;

  v6((a1 + v7 + 16) & ~v7, v8 & ~v7, v5);
  return a1;
}

void *sub_24B8617E8(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((a1 + *(v6 + 80) + 16) & ~*(v6 + 80), (a2 + *(v6 + 80) + 16) & ~*(v6 + 80));
  return a1;
}

_OWORD *sub_24B861880(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

void *sub_24B8618F0(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((a1 + *(v7 + 80) + 16) & ~*(v7 + 80), (a2 + *(v7 + 80) + 16) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_24B861978(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
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

void sub_24B861AFC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void *sub_24B861D74(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t sub_24B861DB8(uint64_t a1, int a2)
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

uint64_t sub_24B861E00(uint64_t result, int a2, int a3)
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

uint64_t AnyFlowFrameFactory.namespace.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AnyFlowFrameFactory.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AnyFlowFrameFactory.init<A>(_:)(a1, a2, a3);
  return v6;
}

uint64_t *AnyFlowFrameFactory.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a1;
  v26 = *v4;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = (*(v11 + 32))(v12, v11);
  v4[3] = v13;
  v25 = *(v8 + 16);
  v25(v10, a1, a2);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v22[1] = v9;
  v15 = swift_allocObject();
  v26 = *(v26 + 80);
  *(v15 + 2) = v26;
  *(v15 + 3) = a2;
  *(v15 + 4) = a3;
  v24 = *(v8 + 32);
  v24(&v15[v14], v10, a2);
  v4[8] = sub_24B8622BC;
  v4[9] = v15;
  v16 = v23;
  v25(v10, v23, a2);
  v17 = swift_allocObject();
  *(v17 + 2) = v26;
  *(v17 + 3) = a2;
  *(v17 + 4) = a3;
  v24(&v17[v14], v10, a2);
  v4[10] = sub_24B862358;
  v4[11] = v17;
  v25(v10, v16, a2);
  v18 = swift_allocObject();
  *(v18 + 2) = v26;
  *(v18 + 3) = a2;
  *(v18 + 4) = a3;
  v19 = v24;
  v24(&v18[v14], v10, a2);
  v4[4] = sub_24B8623B8;
  v4[5] = v18;
  v19(v10, v23, a2);
  v20 = swift_allocObject();
  *(v20 + 2) = v26;
  *(v20 + 3) = a2;
  *(v20 + 4) = a3;
  v19(&v20[v14], v10, a2);
  v4[6] = sub_24B862424;
  v4[7] = v20;
  return v4;
}

uint64_t sub_24B862238@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 40);
  a3[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(a3);
  return v6(a1, a2);
}

uint64_t sub_24B8622D4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 48);
  a3[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(a3);
  return v6(a1, a2);
}

void *AnyFlowFrameFactory.deinit()
{

  return v0;
}

uint64_t AnyFlowFrameFactory.__deallocating_deinit()
{
  AnyFlowFrameFactory.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_24B86270C()
{
  v0 = sub_24B86D934();
  __swift_allocate_value_buffer(v0, qword_28151B890);
  __swift_project_value_buffer(v0, qword_28151B890);
  if (qword_28151B420 != -1)
  {
    swift_once();
  }

  v1 = qword_28151B8A8;
  return sub_24B86D944();
}

uint64_t sub_24B862798()
{
  sub_24B862800();
  result = sub_24B86DCA4();
  qword_28151B8A8 = result;
  return result;
}

unint64_t sub_24B862800()
{
  result = qword_28151B390;
  if (!qword_28151B390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28151B390);
  }

  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t FrameOperationType.hashValue.getter()
{
  v1 = *v0;
  sub_24B86DE34();
  MEMORY[0x24C24CAA0](v1);
  return sub_24B86DE54();
}

_BYTE *FrameOperation.init(type:next:onChildFrameCompletion:requireInput:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 24) = a3;
  *(a5 + 16) = a4;
  return result;
}

uint64_t static FrameOperation.ongoing(requireInput:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = result;
  return result;
}

uint64_t AnyChildCompletion.__allocating_init<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  *(v8 + 16) = sub_24B863310;
  *(v8 + 24) = v9;
  return v8;
}

uint64_t static FrameOperation.ongoing(next:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

void static FrameOperation.complete()(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t static FrameOperation.complete(next:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 8) = a1;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

uint64_t static FrameOperation.replan(requireInput:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 2;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = result;
  return result;
}

void *sub_24B862ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for AnyFrame(0, a2, a3, a4);
  result = sub_24B860C10(a1, a3, a4, v11);
  *a6 = a5;
  *(a6 + 8) = result;
  *(a6 + 24) = 0;
  *(a6 + 16) = 0;
  return result;
}

uint64_t sub_24B862B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v17 = type metadata accessor for AnyFrame(0, a4, a3, a4);
  v18 = sub_24B860C10(a1, a5, a7, v17);
  type metadata accessor for AnyChildCompletion();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  v21[2] = a6;
  v21[3] = AssociatedTypeWitness;
  v21[4] = a2;
  v21[5] = a3;
  *(v20 + 16) = sub_24B863310;
  *(v20 + 24) = v21;
  *a9 = a8;
  *(a9 + 8) = v18;
  *(a9 + 24) = v20;
  *(a9 + 16) = 0;
}

uint64_t static FrameOperation.replan(next:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 2;
  *(a2 + 8) = a1;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

uint64_t AnyChildCompletion.init<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  *(v4 + 16) = sub_24B863310;
  *(v4 + 24) = v9;
  return v4;
}

uint64_t sub_24B862CF4(uint64_t a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a4;
  v34 = a3;
  v35 = a2;
  v9 = sub_24B86DCB4();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24B86DCB4();
  v29 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v28 - v18;
  v20 = *(a5 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  sub_24B860C6C(a1, v36);
  v23 = swift_dynamicCast();
  v24 = *(v20 + 56);
  if (v23)
  {
    v24(v19, 0, 1, a5);
    (*(v20 + 32))(v22, v19, a5);
    sub_24B860C6C(v35, v36);
    if (swift_dynamicCast())
    {
      (*(v13 + 56))(v12, 0, 1, a6);
      (*(v13 + 32))(v15, v12, a6);
      v34(v22, v15);
      (*(v13 + 8))(v15, a6);
      return (*(v20 + 8))(v22, a5);
    }

    (*(v20 + 8))(v22, a5);
    (*(v13 + 56))(v12, 1, 1, a6);
    (*(v30 + 8))(v12, v31);
  }

  else
  {
    v24(v19, 1, 1, a5);
    (*(v29 + 8))(v19, v16);
  }

  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_24B86DD14();
  MEMORY[0x24C24C6C0](0xD00000000000001CLL, 0x800000024B86EE90);
  v26 = sub_24B86DE74();
  MEMORY[0x24C24C6C0](v26);

  MEMORY[0x24C24C6C0](0xD000000000000017, 0x800000024B86EEB0);
  v27 = sub_24B86DE74();
  MEMORY[0x24C24C6C0](v27);

  MEMORY[0x24C24C6C0](0xD000000000000011, 0x800000024B86EED0);
  sub_24B86DD94();
  MEMORY[0x24C24C6C0](0x20646E6120, 0xE500000000000000);
  sub_24B86DD94();
  result = sub_24B86DDA4();
  __break(1u);
  return result;
}

uint64_t sub_24B8631FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v10[3] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  v7(v10, a2);
  return __swift_destroy_boxed_opaque_existential_0Tm(v10);
}

uint64_t AnyChildCompletion.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_24B863320()
{
  result = qword_27F061880[0];
  if (!qword_27F061880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F061880);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FrameOperationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FrameOperationType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24B8634D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_24B863504(uint64_t a1)
{
}

uint64_t sub_24B863540(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t sub_24B863590(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24B86360C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t sub_24B863664(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24B8636C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24B86377C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_24B8637D4(a1, a2, a3);
  return v6;
}

uint64_t sub_24B8637D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = qword_28151B8C0;
  *(v3 + v7) = dispatch_semaphore_create(0);
  v8 = qword_28151B8B8;
  *(v3 + v8) = dispatch_semaphore_create(0);
  v9 = qword_28151B8C8;
  *(v3 + v9) = dispatch_semaphore_create(0);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v10 = qword_28151B8B0;
  v11 = sub_24B86D954();
  (*(*(v11 - 8) + 32))(v3 + v10, a3, v11);
  *(v3 + qword_28151B8D0) = 0;
  return v3;
}

uint64_t sub_24B8638A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v67 = a1;
  v68 = a2;
  v71 = a4;
  v7 = sub_24B86D9C4();
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v65 - v11;
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v13 = sub_24B86D934();
  __swift_project_value_buffer(v13, qword_28151B890);

  v14 = sub_24B86D924();
  v15 = sub_24B86DBF4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v66 = v10;
    v17 = a3;
    v18 = v16;
    v19 = swift_slowAlloc();
    v72 = v19;
    *v18 = 136315138;
    v20 = sub_24B8604D0();
    v22 = sub_24B86A3F4(v20, v21, &v72);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_24B85E000, v14, v15, "FlowFrameRuntime MegaFrame.onInput. %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x24C24CEA0](v19, -1, -1);
    v23 = v18;
    a3 = v17;
    v10 = v66;
    MEMORY[0x24C24CEA0](v23, -1, -1);
  }

  v24 = qword_28151B8D0;
  if (*(v4 + qword_28151B8D0) == 1)
  {
    v25 = sub_24B86D924();
    v26 = sub_24B86DBF4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_24B85E000, v25, v26, "MegaFrame.onInput Cancelled before.", v27, 2u);
      MEMORY[0x24C24CEA0](v27, -1, -1);
    }

    v72 = 0;
    v73 = 0xE000000000000000;
    sub_24B86DD14();
    v28 = *(v5 + 16);
    v30 = *(v28 + 96);
    v29 = *(v28 + 104);

    v72 = v30;
    v73 = v29;
    MEMORY[0x24C24C6C0](0xD000000000000024, 0x800000024B86F220);
    v31 = v72;
    v32 = v73;
    sub_24B86C394();
    result = swift_allocError();
    v34 = result;
    *v35 = v31;
    v35[1] = v32;
    goto LABEL_21;
  }

  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = -1;
  v37 = *(v4 + 16);
  v38 = swift_allocObject();
  v38[2] = a3;
  v38[3] = v5;
  v38[4] = v36;

  v39 = v68;
  v68 = v37;
  sub_24B860238(v67, v39, sub_24B86C564, v38, a3);

  v40 = sub_24B86D924();
  v41 = sub_24B86DBF4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_24B85E000, v40, v41, "FlowFrameRuntime MegaFrame.onInput wait.", v42, 2u);
    MEMORY[0x24C24CEA0](v42, -1, -1);
  }

  sub_24B86D9B4();
  MEMORY[0x24C24C630](v10, v5 + qword_28151B8B0);
  v43 = *(v69 + 8);
  v44 = v10;
  v45 = v70;
  v43(v44, v70);
  sub_24B86DC74();
  v43(v12, v45);
  if (sub_24B86D964())
  {
    v46 = sub_24B86D924();
    v47 = sub_24B86DBF4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_24B85E000, v46, v47, "FlowFrameRuntime MegaFrame.onInput wait timeout.", v48, 2u);
      MEMORY[0x24C24CEA0](v48, -1, -1);
    }

    v72 = 0;
    v73 = 0xE000000000000000;
    sub_24B86DD14();
    v50 = *(v68 + 96);
    v49 = *(v68 + 104);

    v72 = v50;
    v73 = v49;
    MEMORY[0x24C24C6C0](0xD000000000000015, 0x800000024B86F200);
    v51 = v72;
    v52 = v73;
    sub_24B86B240();
  }

  else
  {
    if (*(v5 + v24) != 1)
    {
      swift_beginAccess();
      v59 = *(v36 + 24);
      if (v59 != 255)
      {
        v34 = *(v36 + 16);
        sub_24B86C570(v34, v59 & 1);

        goto LABEL_22;
      }

      v61 = sub_24B86D924();
      v62 = sub_24B86DBF4();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_24B85E000, v61, v62, "MegaFrame.onInput result not set.", v63, 2u);
        MEMORY[0x24C24CEA0](v63, -1, -1);
      }

      sub_24B861378();
      v34 = swift_allocError();
      *v64 = 0xD000000000000020;
      v64[1] = 0x800000024B86F1A0;
      goto LABEL_20;
    }

    v53 = sub_24B86D924();
    v54 = sub_24B86DBF4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_24B85E000, v53, v54, "FlowFrameRuntime MegaFrame.onInput Cancelled after.", v55, 2u);
      MEMORY[0x24C24CEA0](v55, -1, -1);
    }

    v72 = 0;
    v73 = 0xE000000000000000;
    sub_24B86DD14();
    v57 = *(v68 + 96);
    v56 = *(v68 + 104);

    v72 = v57;
    v73 = v56;
    MEMORY[0x24C24C6C0](0xD000000000000023, 0x800000024B86F1D0);
    v51 = v72;
    v52 = v73;
    sub_24B86C394();
  }

  v34 = swift_allocError();
  *v58 = v51;
  v58[1] = v52;
LABEL_20:

LABEL_21:
  LOBYTE(v59) = 1;
LABEL_22:
  v60 = v71;
  *v71 = v34;
  *(v60 + 8) = v59 & 1;
  return result;
}

uint64_t sub_24B86402C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  swift_beginAccess();
  if (*(a3 + 24) != 255)
  {
    sub_24B86AA54(0x7475706E496E6FuLL, 0xE700000000000000);
  }

  swift_beginAccess();
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (v7 == 255)
  {
    sub_24B86C570(v4, v5);
  }

  else
  {
    v4 = *(a3 + 16);
    v5 = *(a3 + 24);
  }

  v8 = v5 & 1;
  swift_beginAccess();
  v9 = *(a3 + 16);
  *(a3 + 16) = v4;
  v10 = *(a3 + 24);
  *(a3 + 24) = v8;
  sub_24B86C57C(v6, v7);
  sub_24B86C594(v9, v10);
  return sub_24B86DC94();
}

uint64_t sub_24B864168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v66 = a1;
  v67 = a2;
  v70 = a3;
  v5 = sub_24B86D9C4();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v65 - v9;
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v11 = sub_24B86D934();
  __swift_project_value_buffer(v11, qword_28151B890);

  v12 = sub_24B86D924();
  v13 = sub_24B86DBF4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v74[0] = v15;
    *v14 = 136315138;
    v16 = sub_24B8604D0();
    v18 = sub_24B86A3F4(v16, v17, v74);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_24B85E000, v12, v13, "FlowFrameRuntime MegaFrame.execute. %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x24C24CEA0](v15, -1, -1);
    MEMORY[0x24C24CEA0](v14, -1, -1);
  }

  v19 = qword_28151B8D0;
  if (*(v3 + qword_28151B8D0) != 1)
  {
    v30 = swift_allocObject();
    *(v30 + 16) = 0u;
    v31 = v30 + 16;
    *(v30 + 32) = 0u;
    *(v30 + 48) = -1;
    v32 = *(v3 + 16);
    v33 = swift_allocObject();
    v34 = v67;
    v33[2] = v67;
    v33[3] = v4;
    v33[4] = v30;

    v65 = v30;

    v67 = v32;
    sub_24B8602E8(v66, sub_24B86C440, v33, v34);

    v35 = sub_24B86D924();
    v36 = sub_24B86DBF4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_24B85E000, v35, v36, "FlowFrameRuntime MegaFrame.execute wait.", v37, 2u);
      MEMORY[0x24C24CEA0](v37, -1, -1);
    }

    sub_24B86D9B4();
    MEMORY[0x24C24C630](v8, v4 + qword_28151B8B0);
    v38 = *(v68 + 8);
    v39 = v8;
    v40 = v69;
    v38(v39, v69);
    sub_24B86DC74();
    v38(v10, v40);
    if (sub_24B86D964())
    {
      v41 = sub_24B86D924();
      v42 = sub_24B86DBF4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_24B85E000, v41, v42, "FlowFrameRuntime MegaFrame.execute wait timeout.", v43, 2u);
        MEMORY[0x24C24CEA0](v43, -1, -1);
      }

      *&v74[0] = 0;
      *(&v74[0] + 1) = 0xE000000000000000;
      sub_24B86DD14();
      v45 = *(v67 + 96);
      v44 = *(v67 + 104);

      *&v74[0] = v45;
      *(&v74[0] + 1) = v44;
      MEMORY[0x24C24C6C0](0xD000000000000015, 0x800000024B86F150);
      v47 = *(&v74[0] + 1);
      v46 = *&v74[0];
      sub_24B86B240();
    }

    else
    {
      v48 = *(v4 + v19);
      v49 = sub_24B86D924();
      v50 = sub_24B86DBF4();
      v51 = os_log_type_enabled(v49, v50);
      if (v48 != 1)
      {
        if (v51)
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_24B85E000, v49, v50, "FlowFrameRuntime MegaFrame.execute wait complete.", v59, 2u);
          MEMORY[0x24C24CEA0](v59, -1, -1);
        }

        swift_beginAccess();
        sub_24B86C44C(v31, &v71, &qword_27F061958, &unk_24B86EB68);
        if (v73 != 255)
        {
          v60 = v72;
          v74[0] = v71;
          v74[1] = v72;
          v58 = v73;
          v75 = v73;
          v57 = v70;
          *v70 = v71;
          v57[1] = v60;
          goto LABEL_21;
        }

        sub_24B861318(&v71, &qword_27F061958, &unk_24B86EB68);
        v61 = sub_24B86D924();
        v62 = sub_24B86DBF4();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_24B85E000, v61, v62, "MegaFrame.execute result not set.", v63, 2u);
          MEMORY[0x24C24CEA0](v63, -1, -1);
        }

        sub_24B861378();
        v55 = swift_allocError();
        *v64 = 0xD000000000000020;
        v64[1] = 0x800000024B86F120;
LABEL_20:
        v57 = v70;
        *v70 = v55;
        v58 = 1;
LABEL_21:
        *(v57 + 32) = v58;
      }

      if (v51)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_24B85E000, v49, v50, "FlowFrameRuntime MegaFrame.execute Cancelled after.", v52, 2u);
        MEMORY[0x24C24CEA0](v52, -1, -1);
      }

      *&v74[0] = 0;
      *(&v74[0] + 1) = 0xE000000000000000;
      sub_24B86DD14();
      v54 = *(v67 + 96);
      v53 = *(v67 + 104);

      *&v74[0] = v54;
      *(&v74[0] + 1) = v53;
      MEMORY[0x24C24C6C0](0xD000000000000023, 0x800000024B86F0C0);
      v47 = *(&v74[0] + 1);
      v46 = *&v74[0];
      sub_24B86C394();
    }

    v55 = swift_allocError();
    *v56 = v46;
    v56[1] = v47;
    goto LABEL_20;
  }

  v20 = sub_24B86D924();
  v21 = sub_24B86DBF4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_24B85E000, v20, v21, "MegaFrame.execute Cancelled before.", v22, 2u);
    MEMORY[0x24C24CEA0](v22, -1, -1);
  }

  *&v74[0] = 0;
  *(&v74[0] + 1) = 0xE000000000000000;
  sub_24B86DD14();
  v23 = *(v4 + 16);
  v25 = *(v23 + 96);
  v24 = *(v23 + 104);

  *&v74[0] = v25;
  *(&v74[0] + 1) = v24;
  MEMORY[0x24C24C6C0](0xD000000000000024, 0x800000024B86F170);
  v26 = v74[0];
  sub_24B86C394();
  result = swift_allocError();
  *v28 = v26;
  v29 = v70;
  *v70 = result;
  *(v29 + 32) = 1;
  return result;
}

uint64_t sub_24B864964(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  sub_24B86C44C(a3 + 16, v8, &qword_27F061958, &unk_24B86EB68);
  if (v9 == 255)
  {
    sub_24B861318(v8, &qword_27F061958, &unk_24B86EB68);
  }

  else
  {
    sub_24B861318(v8, &qword_27F061958, &unk_24B86EB68);
    sub_24B86AA54(0x65747563657865uLL, 0xE700000000000000);
  }

  swift_beginAccess();
  sub_24B86C44C(a3 + 16, v6, &qword_27F061958, &unk_24B86EB68);
  if (v7 == 255)
  {
    sub_24B86C44C(a1, v8, &qword_27F0617F0, &qword_24B86E4E8);
    if (v7 != 255)
    {
      sub_24B861318(v6, &qword_27F061958, &unk_24B86EB68);
    }
  }

  else
  {
    v8[0] = v6[0];
    v8[1] = v6[1];
    v9 = v7;
  }

  swift_beginAccess();
  sub_24B86C4B4(v8, a3 + 16);
  return sub_24B86DC94();
}

uint64_t sub_24B864AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v8 = sub_24B86D934();
  __swift_project_value_buffer(v8, qword_28151B890);

  v9 = sub_24B86D924();
  v10 = sub_24B86DBF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v54 = v12;
    *v11 = 136315138;
    v13 = sub_24B8604D0();
    v15 = sub_24B86A3F4(v13, v14, &v54);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24B85E000, v9, v10, "FlowFrameRuntime MegaFrame.action. %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x24C24CEA0](v12, -1, -1);
    MEMORY[0x24C24CEA0](v11, -1, -1);
  }

  v16 = qword_28151B8D0;
  if (*(v4 + qword_28151B8D0) == 1)
  {
    v17 = sub_24B86D924();
    v18 = sub_24B86DBF4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24B85E000, v17, v18, "MegaFrame.action Cancelled before.", v19, 2u);
      MEMORY[0x24C24CEA0](v19, -1, -1);
    }

    v54 = 0;
    v55 = 0xE000000000000000;
    sub_24B86DD14();
    v20 = *(v5 + 16);
    v22 = *(v20 + 96);
    v21 = *(v20 + 104);

    v54 = v22;
    v55 = v21;
    MEMORY[0x24C24C6C0](0xD000000000000023, 0x800000024B86F0F0);
    v23 = v54;
    v24 = v55;
    sub_24B86C394();
    result = swift_allocError();
    *v26 = v23;
    v26[1] = v24;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *a4 = result;
    *(a4 + 8) = 0;
  }

  else
  {
    v27 = swift_allocObject();
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
    *(v27 + 48) = -1;
    v28 = *(v4 + 16);
    v29 = swift_allocObject();
    v29[2] = a3;
    v29[3] = v4;
    v29[4] = v27;

    sub_24B860388(a1, a2, sub_24B86C338, v29, a3);

    v30 = sub_24B86D924();
    v31 = sub_24B86DBF4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_24B85E000, v30, v31, "FlowFrameRuntime MegaFrame.action wait.", v32, 2u);
      MEMORY[0x24C24CEA0](v32, -1, -1);
    }

    sub_24B86DC84();
    if (*(v5 + v16) == 1)
    {
      v33 = sub_24B86D924();
      v34 = sub_24B86DBF4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_24B85E000, v33, v34, "MegaFrame.action Cancelled after.", v35, 2u);
        MEMORY[0x24C24CEA0](v35, -1, -1);
      }

      v54 = 0;
      v55 = 0xE000000000000000;
      sub_24B86DD14();
      v37 = *(v28 + 96);
      v36 = *(v28 + 104);

      v54 = v37;
      v55 = v36;
      MEMORY[0x24C24C6C0](0xD000000000000023, 0x800000024B86F0C0);
      v38 = v54;
      v39 = v55;
      sub_24B86C394();
      v40 = swift_allocError();
      *v41 = v38;
      v41[1] = v39;
    }

    else
    {
      swift_beginAccess();
      v42 = *(v27 + 48);
      if (v42 != 255)
      {
        v44 = *(v27 + 32);
        v43 = *(v27 + 40);
        v46 = *(v27 + 16);
        v45 = *(v27 + 24);
        v47 = v42 & 1;
        sub_24B86C344(v46, v45, v44, v43, v42 & 1);

        *a4 = v46;
        *(a4 + 8) = v45;
        *(a4 + 16) = v44;
        *(a4 + 24) = v43;
        *(a4 + 32) = v47;
        return result;
      }

      v48 = sub_24B86D924();
      v49 = sub_24B86DBF4();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_24B85E000, v48, v49, "MegaFrame.action result not set.", v50, 2u);
        MEMORY[0x24C24CEA0](v50, -1, -1);
      }

      sub_24B861378();
      v40 = swift_allocError();
      *v51 = 0xD00000000000001FLL;
      v51[1] = 0x800000024B86F0A0;
    }

    *a4 = v40;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
  }

  *(a4 + 32) = 1;
  return result;
}

uint64_t sub_24B8650A8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  swift_beginAccess();
  if (*(a3 + 48) != 255)
  {
    sub_24B86AA54(0x6E6F69746361uLL, 0xE600000000000000);
  }

  swift_beginAccess();
  v9 = *(a3 + 48);
  v22 = *(a3 + 24);
  v23 = *(a3 + 16);
  v20 = *(a3 + 40);
  v21 = *(a3 + 32);
  if (v9 == 255)
  {
    sub_24B86C344(v5, v4, v6, v7, v8);
    v19 = v7;
    v10 = v4;
    v11 = v6;
  }

  else
  {
    v5 = *(a3 + 16);
    v10 = *(a3 + 24);
    v11 = *(a3 + 32);
    v19 = *(a3 + 40);
    v8 = *(a3 + 48);
  }

  v12 = v8 & 1;
  swift_beginAccess();
  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v16 = *(a3 + 32);
  v15 = *(a3 + 40);
  *(a3 + 16) = v5;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v19;
  v17 = *(a3 + 48);
  *(a3 + 48) = v12;
  sub_24B86C3E8(v23, v22, v21, v20, v9);
  sub_24B86C414(v13, v14, v16, v15, v17);
  return sub_24B86DC94();
}

uint64_t sub_24B86523C(uint64_t a1, uint64_t a2)
{
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v4 = sub_24B86D934();
  __swift_project_value_buffer(v4, qword_28151B890);

  v5 = sub_24B86D924();
  v6 = sub_24B86DBF4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_24B8604D0();
    v11 = sub_24B86A3F4(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24B85E000, v5, v6, "FlowFrameRuntime MegaFrame.exit. %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x24C24CEA0](v8, -1, -1);
    MEMORY[0x24C24CEA0](v7, -1, -1);
  }

  return sub_24B860438(a1, a2);
}

uint64_t sub_24B8653C0()
{
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v1 = sub_24B86D934();
  __swift_project_value_buffer(v1, qword_28151B890);

  v2 = sub_24B86D924();
  v3 = sub_24B86DBF4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = sub_24B8604D0();
    v8 = sub_24B86A3F4(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24B85E000, v2, v3, "FlowFrameRuntime MegaFrame.cancel. %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x24C24CEA0](v5, -1, -1);
    MEMORY[0x24C24CEA0](v4, -1, -1);
  }

  *(v0 + qword_28151B8D0) = 1;
  sub_24B86DC94();
  sub_24B86DC94();
  return sub_24B86DC94();
}

uint64_t sub_24B86555C()
{
  v1 = *v0;
  sub_24B86DD14();
  MEMORY[0x24C24C6C0](0xD000000000000015, 0x800000024B86F280);
  v2 = v0[2];
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  MEMORY[0x24C24C6C0](v3, v4);

  MEMORY[0x24C24C6C0](0x756F656D6974202CLL, 0xEB00000000203A74);
  sub_24B86D954();
  sub_24B86DD94();
  MEMORY[0x24C24C6C0](0x3A656D617266202CLL, 0xE900000000000020);
  type metadata accessor for AnyFrame(0, *(v1 + 80), v5, v6);
  sub_24B86DDB4();
  MEMORY[0x24C24C6C0](0x636E61437369202CLL, 0xEF203A64656C6C65);
  if (*(v0 + qword_28151B8D0))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + qword_28151B8D0))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x24C24C6C0](v7, v8);

  return 0;
}

uint64_t sub_24B865718()
{

  v1 = qword_28151B8B0;
  v2 = sub_24B86D954();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_24B8657FC()
{
  v0 = sub_24B86C6DC();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_24B86582C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(*a1 + 80) + 80);
  sub_24B865918(a1);
  *a2 = v5;
  a2[1] = v6;
  Strong = swift_weakLoadStrong();
  sub_24B865918(Strong);
  v9 = v8;
  v11 = v10;

  a2[2] = v9;
  a2[3] = v11;
  v12 = *(a1[2] + 16);
  v13 = v12[3];
  a2[4] = v12[2];
  a2[5] = v13;
  v14 = v12[13];
  a2[6] = v12[12];
  a2[7] = v14;

  a2[8] = sub_24B8659E4(a1);
  type metadata accessor for InstrumentedCancellableStack.TrackedFrame(0, v4, v15, v16);
  sub_24B86D914();
}

uint64_t sub_24B865918(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_24B86DA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061940, &qword_24B86EB60);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84D38];
  *(v2 + 16) = xmmword_24B86E8C0;
  v4 = MEMORY[0x277D84D90];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = v1;
  sub_24B86DA34();

  return v1;
}

uint64_t sub_24B8659E4(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = sub_24B8659E4(result);

    result = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }
  }

  return result;
}

BOOL sub_24B865A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InstrumentedCancellableStack.TrackedFrame(0, a3, a3, a4);
  v4 = sub_24B865A84();
  return v4 == sub_24B865A84();
}

uint64_t sub_24B865A84()
{
  sub_24B86DE34();
  sub_24B86DA54();
  return sub_24B86DE54();
}

uint64_t sub_24B865AD0(uint64_t a1)
{
  v2 = v1;
  v5 = v1[4];
  v4 = v1[5];

  MEMORY[0x24C24C6C0](58, 0xE100000000000000);
  v7 = v1[6];
  v6 = v1[7];
  MEMORY[0x24C24C6C0](v2[6], v2[7]);
  v8 = sub_24B865CCC(0, v5, v4);

  v24 = sub_24B86DC54();
  if (qword_28151B420 != -1)
  {
    swift_once();
  }

  v9 = -v8;
  v10 = qword_28151B8A8;
  v11 = *(a1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061940, &qword_24B86EB60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24B86E8D0;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v14 = sub_24B86C25C();
  *(v12 + 32) = v5;
  *(v12 + 40) = v4;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = v7;
  *(v12 + 80) = v6;
  v15 = v2[8];
  v16 = MEMORY[0x277D83C10];
  *(v12 + 136) = MEMORY[0x277D83B88];
  *(v12 + 144) = v16;
  *(v12 + 112) = v15;
  v17 = *v2;
  v18 = v2[1];
  *(v12 + 176) = v13;
  *(v12 + 184) = v14;
  *(v12 + 152) = v17;
  *(v12 + 160) = v18;
  v19 = v2[2];
  v20 = v2[3];
  *(v12 + 216) = v13;
  *(v12 + 224) = v14;
  v21 = MEMORY[0x277D84B78];
  *(v12 + 192) = v19;
  *(v12 + 200) = v20;
  v22 = MEMORY[0x277D84BC0];
  *(v12 + 256) = v21;
  *(v12 + 264) = v22;
  *(v12 + 232) = v9;

  sub_24B86D8D4(v24, &dword_24B85E000, v10, "Frame", 5, 2, v2 + v11, "START ns=%{public}s name=%{public}s depth=%llu id=%{public}s parentId=%{public}s frameTypeId=%llu", 97, 2, v12);
}

unint64_t sub_24B865CCC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return a1;
  }

  v7 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v20 = a3 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v11 = result & 0xC;
    v12 = result;
    if (v11 == v8)
    {
      v16 = result;
      v12 = sub_24B86A99C(result, a2, a3);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v4)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v18 = result;
      v15 = sub_24B86DAA4();
      result = v18;
      if (v11 != v8)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v19[0] = a2;
        v19[1] = v20;
        v14 = v19;
      }

      else
      {
        v14 = v9;
        if ((a2 & 0x1000000000000000) == 0)
        {
          v17 = result;
          v14 = sub_24B86DD34();
          result = v17;
        }
      }

      v15 = *(v14 + v13);
      if (v11 != v8)
      {
LABEL_19:
        if ((a3 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

    result = sub_24B86A99C(result, a2, a3);
    if ((a3 & 0x1000000000000000) == 0)
    {
LABEL_8:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_9;
    }

LABEL_20:
    if (v4 <= result >> 16)
    {
      goto LABEL_27;
    }

    result = sub_24B86DA84();
LABEL_9:
    a1 = (v15 + a1);
    if (4 * v4 == result >> 14)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24B865E60(uint64_t a1)
{
  v3 = sub_24B86DC44();
  if (qword_28151B420 != -1)
  {
    swift_once();
  }

  v4 = qword_28151B8A8;
  v5 = *(a1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061940, &qword_24B86EB60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24B86E8C0;
  v8 = *v1;
  v7 = v1[1];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_24B86C25C();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;

  sub_24B86D8D4(v3, &dword_24B85E000, v4, "Frame", 5, 2, v1 + v5, "END id=%{public}s", 17, 2, v6);
}

uint64_t sub_24B865F98(uint64_t a1)
{
  sub_24B86DE34();
  sub_24B865AC8(v2);
  return sub_24B86DE54();
}

uint64_t sub_24B865FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for InstrumentedCancellableStack.TrackedFrame(0, *(*v4 + 376), a3, a4);
  v6 = sub_24B86DB34();
  if (sub_24B86DB54())
  {
    WitnessTable = swift_getWitnessTable();
    v8 = sub_24B86AD48(v6, v5, WitnessTable);
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  sub_24B86691C(v8, v9, v10, v11);

  v12 = sub_24B86C6DC();

  return v12;
}

uint64_t sub_24B8660B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24B865FEC(a1, a2, a3, a4);

  return MEMORY[0x2821FE8D8](v4, 56, 7);
}

uint64_t sub_24B8660E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *(*v4 + 376);
  v5 = type metadata accessor for InstrumentedCancellableStack(0, v17, a3, a4);
  v8 = type metadata accessor for InstrumentedCancellableStack.TrackedFrame(0, v17, v6, v7);
  WitnessTable = swift_getWitnessTable();
  v18 = sub_24B866228(sub_24B86C2B0, &v16, v5, v8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);
  sub_24B86DB94();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = sub_24B86DBC4();
  sub_24B86691C(v11, v12, v13, v14);
}

uint64_t sub_24B866228(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_24B86DCB4();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_24B86DAD4();
  v63 = sub_24B86DD74();
  v58 = sub_24B86DD84();
  sub_24B86DD54();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_24B86DAC4();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_24B86DCC4();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_24B86DD64();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_24B86DCC4();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_24B86DD64();
      sub_24B86DCC4();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_24B86691C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InstrumentedCancellableStack.TrackedFrame(0, *(*v4 + 376), a3, a4);

  swift_getWitnessTable();
  sub_24B86DBA4();

  sub_24B86DBB4();
  swift_getWitnessTable();
  sub_24B86DB04();

  sub_24B86DBA4();
  sub_24B86DB04();

  v4[6] = a1;
}

uint64_t sub_24B866AC4()
{
  v0 = sub_24B86C71C();

  return sub_24B8660E4(v0, v1, v2, v3);
}

uint64_t *sub_24B866AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v4 = sub_24B86C74C(&v9, a2, a3, a4);
  sub_24B8660E4(v4, v5, v6, v7);
  return v4;
}

uint64_t *sub_24B866B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24B86C844(a1, a2, a3, a4);
  sub_24B8660E4(v4, v5, v6, v7);
  return v4;
}

uint64_t *sub_24B866B54(uint64_t *a1)
{
  v1 = sub_24B86D728(a1);

  sub_24B8660E4(v2, v3, v4, v5);
  return v1;
}

void *sub_24B866BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InstrumentedCancellableStack.TrackedFrame(0, *(*v4 + 376), a3, a4);
  swift_getWitnessTable();
  *(v4 + 48) = sub_24B86D9E4();
  *(v4 + 40) = 0;

  return sub_24B86D0F0();
}

uint64_t RuntimeConfiguration.perFrameOperationTimeout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B86D954();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RuntimeConfiguration.init()@<X0>(void *a1@<X8>)
{
  *a1 = 300;
  v2 = *MEMORY[0x277D85188];
  v3 = sub_24B86D954();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t RuntimeConfiguration.init(perFrameOperationTimeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B86D954();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_24B866DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v19 = *(v4 + *(*v4 + 120));
  v16 = *(v6 + 80);
  v17 = *(v5 + 96);
  v7 = type metadata accessor for CancellableStack(0, v16, a3, a4);

  WitnessTable = swift_getWitnessTable();
  v10 = sub_24B866228(sub_24B86AA18, &v15, v7, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  v19 = 0x203A73656D617246;
  v20 = 0xE90000000000005BLL;
  v18 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061908, &qword_24B86E8E0);
  sub_24B86B41C(&qword_27F061910, &qword_27F061908, &qword_24B86E8E0, MEMORY[0x277D83958]);
  v11 = sub_24B86DA04();
  v13 = v12;

  MEMORY[0x24C24C6C0](v11, v13);

  MEMORY[0x24C24C6C0](93, 0xE100000000000000);
  return v19;
}

uint64_t sub_24B866F84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(*a1 + 16) + 16);
  v5 = v4[2];
  v6 = v4[3];
  v8 = v4[12];
  v7 = v4[13];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(*(Strong + 16) + 16);
    v17[3] = v2;
    v11 = v10[2];
    v12 = v10[3];
    v13 = v10[13];
    v16 = v10[12];
    v17[0] = 0;
    v17[1] = 0xE000000000000000;

    sub_24B86DD14();
    MEMORY[0x24C24C6C0](0x617073656D616E7BLL, 0xEC000000203A6563);
    MEMORY[0x24C24C6C0](v5, v6);

    MEMORY[0x24C24C6C0](0x203A656D616E202CLL, 0xE800000000000000);
    MEMORY[0x24C24C6C0](v8, v7);

    MEMORY[0x24C24C6C0](0xD000000000000016, 0x800000024B86F2A0);
    MEMORY[0x24C24C6C0](v11, v12);

    MEMORY[0x24C24C6C0](0x203A656D616E202CLL, 0xE800000000000000);
    MEMORY[0x24C24C6C0](v16, v13);

    MEMORY[0x24C24C6C0](32125, 0xE200000000000000);
  }

  else
  {

    sub_24B86DD14();

    strcpy(v17, "{namespace: ");
    BYTE5(v17[1]) = 0;
    HIWORD(v17[1]) = -5120;
    MEMORY[0x24C24C6C0](v5, v6);

    MEMORY[0x24C24C6C0](0x203A656D616E202CLL, 0xE800000000000000);
    MEMORY[0x24C24C6C0](v8, v7);

    result = MEMORY[0x24C24C6C0](0x746E65726170202CLL, 0xEE007D6C696E203ALL);
  }

  v15 = v17[1];
  *a2 = v17[0];
  a2[1] = v15;
  return result;
}

uint64_t **FlowFrameRuntime.__allocating_init(frameFactoryLoader:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = sub_24B86B104(a1, a2);
  (*(*(*(v3 + 88) - 8) + 8))(a1);
  return v6;
}

uint64_t **FlowFrameRuntime.init(frameFactoryLoader:configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_24B86B104(a1, a2);
  (*(*(*(v4 + 88) - 8) + 8))(a1);
  return v5;
}

void *sub_24B86730C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InstrumentedCancellableStack(0, *(v4 + 80), a3, a4);
  v5 = swift_allocObject();
  return sub_24B866BB8(v5, v6, v7, v8);
}

uint64_t sub_24B867348()
{
  v0 = sub_24B86D954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_24B86D9C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  sub_24B86D9B4();
  *v3 = 250;
  (*(v1 + 104))(v3, *MEMORY[0x277D85178], v0);
  MEMORY[0x24C24C630](v8, v3);
  (*(v1 + 8))(v3, v0);
  v11 = *(v5 + 8);
  v11(v8, v4);
  LOBYTE(v3) = sub_24B86DC74();
  v11(v10, v4);
  if ((v3 & 1) == 0)
  {
    return sub_24B86DC94();
  }

  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v12 = sub_24B86D934();
  __swift_project_value_buffer(v12, qword_28151B890);
  v13 = sub_24B86D924();
  v14 = sub_24B86DC04();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24B85E000, v13, v14, "FlowFrameRuntime is blocked: attempting to reset it.", v15, 2u);
    MEMORY[0x24C24CEA0](v15, -1, -1);
  }

  return sub_24B867620();
}

uint64_t sub_24B867620()
{
  v1 = v0;
  v2 = sub_24B86D904();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v50 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24B86D954();
  v4 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v6 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_24B86D9C4();
  v7 = *(v60 - 8);
  v8 = MEMORY[0x28223BE20](v60);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v13 = sub_24B86D934();
  v62 = __swift_project_value_buffer(v13, qword_28151B890);
  v14 = sub_24B86D924();
  v15 = sub_24B86DBF4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24B85E000, v14, v15, "FlowFrameRuntime reset, cancel stack.", v16, 2u);
    MEMORY[0x24C24CEA0](v16, -1, -1);
  }

  *(*(v1 + *(*v1 + 120)) + 40) = 1;
  v17 = *(*v1 + 112);
  v59 = v1;
  v18 = *(v1 + v17);
  sub_24B86D9B4();
  *v6 = 250;
  v19 = *(v4 + 104);
  v55 = *MEMORY[0x277D85178];
  v20 = v61;
  v54 = v19;
  v19(v6);
  MEMORY[0x24C24C630](v10, v6);
  v21 = *(v4 + 8);
  v58 = v4 + 8;
  v53 = v21;
  v21(v6, v20);
  v22 = *(v7 + 8);
  v23 = v60;
  v22(v10, v60);
  v56 = v18;
  sub_24B86DC74();
  v57 = v7 + 8;
  v22(v12, v23);
  if ((sub_24B86D964() & 1) == 0)
  {
    goto LABEL_14;
  }

  v24 = sub_24B86D924();
  v25 = sub_24B86DBF4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_24B85E000, v24, v25, "FlowFrameRuntime reset semaphone locked. Attempting cancel.", v26, 2u);
    MEMORY[0x24C24CEA0](v26, -1, -1);
  }

  if (*(v59 + *(*v59 + 136)))
  {

    sub_24B8653C0();
  }

  sub_24B86D9B4();
  *v6 = 250;
  v27 = v61;
  v54(v6, v55, v61);
  MEMORY[0x24C24C630](v10, v6);
  v53(v6, v27);
  v28 = v60;
  v22(v10, v60);
  sub_24B86DC74();
  v22(v12, v28);
  if (sub_24B86D964())
  {
    if (*(v59 + *(*v59 + 136)))
    {

      v29 = sub_24B86D924();
      v30 = sub_24B86DC04();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v63 = v32;
        *v31 = 136315138;
        v33 = sub_24B86555C();
        v35 = sub_24B86A3F4(v33, v34, &v63);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_24B85E000, v29, v30, "'%s' is stuck on the stack! This flow may not have exited properly by calling its completion handler", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        MEMORY[0x24C24CEA0](v32, -1, -1);
        MEMORY[0x24C24CEA0](v31, -1, -1);
      }

      else
      {
      }
    }

    v45 = sub_24B86D924();
    v46 = sub_24B86DBF4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_24B85E000, v45, v46, "FlowFrameRuntime reset semaphone locked. Unable to continue.", v47, 2u);
      MEMORY[0x24C24CEA0](v47, -1, -1);
    }

    sub_24B86DC64();
    if (qword_28151B420 != -1)
    {
      swift_once();
    }

    v48 = v50;
    sub_24B86D8F4();
    sub_24B86D8E4();
    (*(v51 + 8))(v48, v52);
    sub_24B86B240();
    swift_allocError();
    *v49 = 0xD000000000000029;
    v49[1] = 0x800000024B86EF10;
    swift_willThrow();
    return sub_24B86DC94();
  }

  else
  {
LABEL_14:
    v36 = sub_24B86D924();
    v37 = sub_24B86DBF4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_24B85E000, v36, v37, "FlowFrameRuntime reset, clear stack.", v38, 2u);
      MEMORY[0x24C24CEA0](v38, -1, -1);
    }

    v39 = *(**(v59 + *(*v59 + 120)) + 200);

    v39(v40);

    v41 = sub_24B86D924();
    v42 = sub_24B86DBF4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_24B85E000, v41, v42, "FlowFrameRuntime reset finished.", v43, 2u);
      MEMORY[0x24C24CEA0](v43, -1, -1);
    }

    return sub_24B86DC94();
  }
}

uint64_t sub_24B867EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a3;
  v38 = a1;
  v35 = a2;
  v39 = *v3;
  v5 = v39;
  v6 = sub_24B86D974();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_24B86D9A4();
  v41 = *(v43 - 8);
  v8 = MEMORY[0x28223BE20](v43);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v5 + 80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v36 = &v35 - v13;
  v14 = sub_24B86D984();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v18 = sub_24B86D934();
  __swift_project_value_buffer(v18, qword_28151B890);
  v19 = sub_24B86D924();
  v20 = sub_24B86DBF4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_24B85E000, v19, v20, "FlowFrameRuntime handle.", v21, 2u);
    MEMORY[0x24C24CEA0](v21, -1, -1);
  }

  v22 = swift_allocObject();
  v23 = v35;
  *(v22 + 2) = v4;
  *(v22 + 3) = v23;
  *(v22 + 4) = v37;
  *(*(v4 + *(*v4 + 120)) + 40) = 1;
  sub_24B86B2F0();
  (*(v15 + 104))(v17, *MEMORY[0x277D851B8], v14);

  v24 = sub_24B86DC34();
  (*(v15 + 8))(v17, v14);
  v25 = v36;
  (*(v11 + 16))(v36, v38, v10);
  v26 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = v10;
  v28 = v39;
  *(v27 + 3) = *(v39 + 88);
  *(v27 + 4) = *(v28 + 96);
  *(v27 + 5) = v4;
  (*(v11 + 32))(&v27[v26], v25, v10);
  v29 = &v27[(v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v29 = sub_24B86B294;
  v29[1] = v22;
  aBlock[4] = sub_24B86B33C;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B868858;
  aBlock[3] = &block_descriptor;
  v30 = _Block_copy(aBlock);

  v31 = v40;
  sub_24B86D994();
  v46 = MEMORY[0x277D84F90];
  sub_24B86B3C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061930, &qword_24B86E8E8);
  sub_24B86B41C(&qword_27F061938, &qword_27F061930, &qword_24B86E8E8, MEMORY[0x277D83970]);
  v32 = v42;
  v33 = v45;
  sub_24B86DCD4();
  MEMORY[0x24C24C880](0, v31, v32, v30);
  _Block_release(v30);

  (*(v44 + 8))(v32, v33);
  (*(v41 + 8))(v31, v43);
}

uint64_t sub_24B8684A4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v8 = *(*a1 + 80);
  v36 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v35 = &v33 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0617E8, &qword_24B86E4E0);
  v10 = sub_24B86DE64();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v33 - v12);
  sub_24B86DC84();
  *(*(a1 + *(*a1 + 120)) + 40) = 0;
  v37 = a2;
  v14 = sub_24B86889C(a2);
  v17 = v14;
  v19 = v18;
  if (v18)
  {
    *v13 = v14;
    swift_storeEnumTagMultiPayload();
    MEMORY[0x24C24CD00](v17);
    v20 = v13;
  }

  else
  {
    v33 = a4;
    v34 = a3;
    v38 = v14;
    v21 = type metadata accessor for MegaFrame(255, v8, v15, v16);
    type metadata accessor for Node(255, v21, v22, v23);
    sub_24B86DB94();
    swift_getWitnessTable();
    if (sub_24B86DBE4())
    {
      v24 = v35;
      (*(v36 + 16))(v35, v37, v8);
      type metadata accessor for NonUnderstanding(0, v8, v25, v26);
      swift_getWitnessTable();
      v27 = swift_allocError();
      sub_24B861464(0xD000000000000024, 0x800000024B86F250, v24, v8, v28);
      *v13 = v27;
      swift_storeEnumTagMultiPayload();
      v34(v13);
      goto LABEL_8;
    }

    v29 = sub_24B869544(v17);
    a3 = v34;
    if (v30)
    {
      *v13 = v29;
      v31 = v29;
      swift_storeEnumTagMultiPayload();
      MEMORY[0x24C24CD00](v31);
      a3(v13);
      sub_24B85F5E4(v31, 1);
      goto LABEL_8;
    }

    (*(v36 + 16))(v13, v37, v8);
    swift_storeEnumTagMultiPayload();
    v20 = v13;
  }

  a3(v20);
LABEL_8:
  sub_24B86C5AC(v17, v19 & 1);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24B868858(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_24B86889C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v92 = v4;
  v84 = sub_24B86D954();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v85 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RuntimeConfiguration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v82 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MegaFrame(255, *(v4 + 80), v8, v9);
  v13 = type metadata accessor for Node(0, v10, v11, v12);
  v98 = sub_24B86DB34();
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v14 = sub_24B86D934();
  v15 = __swift_project_value_buffer(v14, qword_28151B890);

  v88 = v15;
  v16 = sub_24B86D924();
  v17 = sub_24B86DBF4();
  v18 = os_log_type_enabled(v16, v17);
  v93 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = *(*(v2 + *(*v2 + 120)) + 32);

    _os_log_impl(&dword_24B85E000, v16, v17, "FlowFrameRuntime onInput. Stack size %ld", v19, 0xCu);
    MEMORY[0x24C24CEA0](v19, -1, -1);
  }

  else
  {
  }

  v97 = sub_24B86C714();
  v91 = *(*v2 + 104);
  v86 = v10;
  v22 = type metadata accessor for NodeIterator(0, v10, v20, v21);
  v23 = sub_24B86CDFC();
  if (v23)
  {
    v25 = v23;
    *&v24 = 136315138;
    v87 = v24;
    v89 = v22;
    v90 = v13;
    do
    {
      if ((*(*(v2 + *(*v2 + 120)) + 40) & 1) != 0 || (v94[0] = v98, sub_24B86DB94(), swift_getWitnessTable(), (sub_24B86DBE4() & 1) == 0))
      {
      }

      else
      {
        v26 = *(*(v25 + 16) + 16);
        v27 = *(v26 + 16);
        v28 = *(v26 + 24);
        v29 = v92;
        v30 = *(v92 + 96);
        v31 = *(v30 + 16);

        v31(v27, v28, *(v29 + 88), v30);

        sub_24B861EB0();
        *(v2 + *(*v2 + 136)) = *(v25 + 16);

        sub_24B8638A0(v94, v93, MEMORY[0x277D84F70] + 8, &v95);

        v32 = v95;
        LOBYTE(v29) = v96;
        *(v2 + *(*v2 + 136)) = 0;

        if (v29)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v94);

          goto LABEL_45;
        }

        if (v32)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v94);
        }

        else
        {

          v33 = sub_24B86D924();
          v34 = sub_24B86DBF4();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v95 = v36;
            *v35 = v87;
            v37 = sub_24B86555C();
            v39 = sub_24B86A3F4(v37, v38, &v95);

            *(v35 + 4) = v39;
            _os_log_impl(&dword_24B85E000, v33, v34, "FlowFrameRuntime found Understandable frame. %s", v35, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v36);
            MEMORY[0x24C24CEA0](v36, -1, -1);
            MEMORY[0x24C24CEA0](v35, -1, -1);
          }

          v95 = v25;

          sub_24B86DB64();

          __swift_destroy_boxed_opaque_existential_0Tm(v94);
        }
      }

      v25 = sub_24B86CDFC();
    }

    while (v25);
  }

  v40 = v98;
  v94[0] = v98;
  sub_24B86DB94();
  swift_getWitnessTable();
  v41 = sub_24B86DBE4();
  v42 = v93;
  if (v41 & 1) == 0 || (*(*(v2 + *(*v2 + 120)) + 40))
  {
    return v98;
  }

  if (!sub_24B86C704())
  {
    v44 = sub_24B86D924();
    v45 = sub_24B86DBF4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_24B85E000, v44, v45, "FlowFrameRuntime found no frames supporting input. Clearing existing stack frames.", v46, 2u);
      MEMORY[0x24C24CEA0](v46, -1, -1);
    }

    v47 = *(**(v2 + *(*v2 + 120)) + 200);

    v47(v48);
  }

  if (!(*(*(v92 + 96) + 24))(v42, *(v92 + 88)))
  {
    v68 = sub_24B86D924();
    v69 = sub_24B86DC04();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_24B85E000, v68, v69, "FlowFrameRuntime frameFactoryLoader.loadFactory failed.", v70, 2u);
      MEMORY[0x24C24CEA0](v70, -1, -1);
    }

    goto LABEL_39;
  }

  v49 = sub_24B8624B8();
  if (!v49)
  {
    v68 = sub_24B86D924();
    v71 = sub_24B86DC04();
    if (os_log_type_enabled(v68, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_24B85E000, v68, v71, "FlowFrameRuntime factory.makeFrameAbleToHandle failed.", v72, 2u);
      MEMORY[0x24C24CEA0](v72, -1, -1);
    }

LABEL_39:

    return v40;
  }

  v50 = v49;
  v51 = sub_24B86D924();
  v52 = sub_24B86DBF4();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = v50;
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_24B85E000, v51, v52, "FlowFrameRuntime created frame to handle input.", v54, 2u);
    v55 = v54;
    v50 = v53;
    MEMORY[0x24C24CEA0](v55, -1, -1);
  }

  v56 = v82;
  sub_24B86C170(v2 + *(*v2 + 128), v82);
  v57 = v85;
  (*(v83 + 32))(v85, v56, v84);
  v58 = swift_allocObject();

  sub_24B8637D4(v59, 0, v57);
  *(v2 + *(*v2 + 136)) = v58;

  sub_24B861EB0();
  sub_24B8638A0(v94, v42, MEMORY[0x277D84F70] + 8, &v95);
  __swift_destroy_boxed_opaque_existential_0Tm(v94);
  v32 = v95;
  LODWORD(v57) = v96;
  *(v2 + *(*v2 + 136)) = 0;

  if (v57 != 1)
  {
    v73 = sub_24B86D924();
    if (v32)
    {
      v79 = sub_24B86DC04();
      if (!os_log_type_enabled(v73, v79))
      {

        goto LABEL_50;
      }

      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_24B85E000, v73, v79, "FlowFrameRuntime frame created handle input does not understand input.", v80, 2u);
      MEMORY[0x24C24CEA0](v80, -1, -1);
    }

    else
    {
      v74 = sub_24B86DBF4();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_24B85E000, v73, v74, "FlowFrameRuntime frame created handle input understands input.", v75, 2u);
        MEMORY[0x24C24CEA0](v75, -1, -1);
      }

      v76 = *(v2 + *(*v2 + 120));
      v94[0] = v58;
      v77 = *(*v76 + 208);

      v78 = v77(v94, 0);

      v94[0] = v78;

      sub_24B86DB64();
    }

    sub_24B85F5E4(v32, 0);

LABEL_50:

    return v98;
  }

  MEMORY[0x24C24CD00](v32);
  v60 = sub_24B86D924();
  v61 = sub_24B86DC04();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v93 = v50;
    v64 = v63;
    v94[0] = v63;
    *v62 = 136315138;
    swift_getErrorValue();
    v65 = sub_24B86DDE4();
    v67 = sub_24B86A3F4(v65, v66, v94);

    *(v62 + 4) = v67;
    _os_log_impl(&dword_24B85E000, v60, v61, "FlowFrameRuntime error calling onInput for new frame. %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    MEMORY[0x24C24CEA0](v64, -1, -1);
    MEMORY[0x24C24CEA0](v62, -1, -1);
  }

  sub_24B85F5E4(v32, 1);

LABEL_45:

  return v32;
}

uint64_t sub_24B869544(uint64_t a1)
{
  v2 = v1;
  v90 = *v1;
  v85 = sub_24B86D954();
  v4 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RuntimeConfiguration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28151B398 != -1)
  {
    swift_once();
  }

  v8 = sub_24B86D934();
  v9 = __swift_project_value_buffer(v8, qword_28151B890);

  v92 = v9;
  v10 = sub_24B86D924();
  v11 = sub_24B86DBF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v15 = type metadata accessor for MegaFrame(255, *(v90 + 80), v13, v14);
    type metadata accessor for Node(0, v15, v16, v17);
    *(v12 + 4) = sub_24B86DB54();

    _os_log_impl(&dword_24B85E000, v10, v11, "FlowFrameRuntime action with understandableFrames count %ld.", v12, 0xCu);
    MEMORY[0x24C24CEA0](v12, -1, -1);

    v20 = v15;
  }

  else
  {

    v20 = type metadata accessor for MegaFrame(255, *(v90 + 80), v21, v22);
  }

  *&v103 = a1;
  v82 = v20;
  type metadata accessor for Node(255, v20, v18, v19);
  sub_24B86DB94();
  swift_getWitnessTable();
  sub_24B86DBD4();
  v23 = *v2;
  v89 = *(*v2 + 104);
  v81 = *(v23 + 128);
  if (!sub_24B86C704())
  {
    v80 = (v4 + 32);
    *&v24 = 136315138;
    v86 = v24;
    do
    {
      if (*(*(v2 + *(*v2 + 120)) + 40))
      {
        break;
      }

      v29 = v106;
      if (!v106)
      {
        if (!sub_24B86D450())
        {
          break;
        }
      }

      v106 = 0;
      v93 = v29;
      v30 = *(v29 + 16);
      swift_retain_n();
      v31 = sub_24B86D924();
      v32 = sub_24B86DBF4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v103 = v34;
        *v33 = v86;
        v35 = sub_24B86555C();
        v37 = sub_24B86A3F4(v35, v36, &v103);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_24B85E000, v31, v32, "FlowFrameRuntime action active frame. %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x24C24CEA0](v34, -1, -1);
        MEMORY[0x24C24CEA0](v33, -1, -1);
      }

      v38 = *(v30 + 16);
      v39 = *(v38 + 16);
      v40 = *(v38 + 24);
      v41 = v90;
      v42 = *(v90 + 96);
      v43 = *(v42 + 16);

      v44 = *(v41 + 88);
      v45 = v43(v39, v40, v44, v42);

      sub_24B861EB0();
      sub_24B861ED8();
      *(v2 + *(*v2 + 136)) = v30;
      swift_retain_n();

      v46 = MEMORY[0x277D84F70];
      sub_24B864168(&v105, MEMORY[0x277D84F70] + 8, &v103);
      *(v2 + *(*v2 + 136)) = 0;

      sub_24B86C44C(&v103, &v98, &qword_27F0617F0, &qword_24B86E4E8);
      if (v101 == 1)
      {

        sub_24B861318(&v103, &qword_27F0617F0, &qword_24B86E4E8);
        __swift_destroy_boxed_opaque_existential_0Tm(&v104);
        __swift_destroy_boxed_opaque_existential_0Tm(&v105);
        return v98;
      }

      v87 = v44;
      v91 = v45;
      sub_24B86C160(&v98, &v102);
      *(v2 + *(*v2 + 136)) = v30;

      v47 = v30;
      sub_24B864AFC(&v104, &v102, v46 + 8, &v98);
      v48 = v98;
      v49 = v99;
      v95 = v100;
      v50 = v101;
      *(v2 + *(*v2 + 136)) = 0;

      if (v50 == 1)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v102);
        sub_24B861318(&v103, &qword_27F0617F0, &qword_24B86E4E8);
        __swift_destroy_boxed_opaque_existential_0Tm(&v104);
        __swift_destroy_boxed_opaque_existential_0Tm(&v105);
        return v48;
      }

      v94 = v48;
      if (v48)
      {
        if (v48 == 1)
        {
          sub_24B86C344(v48, *(&v48 + 1), v49, v95, 0);

          sub_24B86523C(&v105, v46 + 8);
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v52 = *(Strong + 16);

            v53 = *(v47 + 24);
            if (v53)
            {
              v54 = *(v52 + 16);
              v79 = *(v54 + 16);
              v88 = v49;
              v55 = *(v54 + 24);

              v43(v79, v55, v87, v42);
              v56 = MEMORY[0x277D84F70];

              sub_24B861EB0();
              v57 = *(v53 + 16);
              v58 = v56 + 8;
              v49 = v88;
              v96[3] = v58;
              v96[0] = swift_allocObject();
              sub_24B860C6C(v97, v96[0] + 16);
              v57(v96, &v98);

              __swift_destroy_boxed_opaque_existential_0Tm(v97);

              __swift_destroy_boxed_opaque_existential_0Tm(v96);
            }

            else
            {
            }
          }

          v63 = *(**(v2 + *(*v2 + 120)) + 240);

          v59 = v93;
          v63(v93);

          __swift_destroy_boxed_opaque_existential_0Tm(&v98);
          if (*(&v48 + 1))
          {
LABEL_30:
            v88 = v49;

            v64 = sub_24B86D924();
            v65 = sub_24B86DBF4();

            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              *&v98 = v67;
              *v66 = v86;
              v68 = sub_24B8604D0();
              v70 = sub_24B86A3F4(v68, v69, &v98);

              *(v66 + 4) = v70;
              _os_log_impl(&dword_24B85E000, v64, v65, "FlowFrameRuntime action activeFrame.action pushing next frame. %s", v66, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v67);
              MEMORY[0x24C24CEA0](v67, -1, -1);
              MEMORY[0x24C24CEA0](v66, -1, -1);
            }

            if (v94 == 1)
            {
              v71 = 0;
            }

            else
            {

              v71 = v59;
            }

            v72 = *(v2 + *(*v2 + 120));
            v73 = v83;
            sub_24B86C170(v2 + v81, v83);
            v74 = v84;
            (*v80)(v84, v73, v85);
            v75 = swift_allocObject();

            v76 = v95;

            sub_24B8637D4(*(&v48 + 1), v76, v74);
            *&v98 = v75;
            (*(*v72 + 208))(&v98, v71);

            v77 = v94;
            v49 = v88;
            sub_24B86C2E8(v94, *(&v48 + 1), v88, v76, 0);
            sub_24B86C2E8(v77, *(&v48 + 1), v49, v76, 0);

            goto LABEL_36;
          }
        }

        else
        {
          v60 = *(**(v2 + *(*v2 + 120)) + 232);
          sub_24B86C344(v48, *(&v48 + 1), v49, v95, 0);

          v59 = v93;
          v60(v93);

          if (*(&v48 + 1))
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_24B86C344(v48, *(&v48 + 1), v49, v95, 0);

        v59 = v93;
        if (*(&v48 + 1))
        {
          goto LABEL_30;
        }
      }

      v61 = v94;
      v62 = v95;
      sub_24B86C2E8(v94, 0, v49, v95, 0);
      sub_24B86C2E8(v61, 0, v49, v62, 0);
LABEL_36:

      __swift_destroy_boxed_opaque_existential_0Tm(&v102);
      sub_24B861318(&v103, &qword_27F0617F0, &qword_24B86E4E8);
      __swift_destroy_boxed_opaque_existential_0Tm(&v104);
      __swift_destroy_boxed_opaque_existential_0Tm(&v105);
    }

    while ((v49 & 1) == 0 && !sub_24B86C704());
  }

  v25 = sub_24B86D924();
  v26 = sub_24B86DBF4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_24B85E000, v25, v26, "FlowFrameRuntime action complete.", v27, 2u);
    MEMORY[0x24C24CEA0](v27, -1, -1);
  }

  return 0;
}

uint64_t FlowFrameRuntime.deinit()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 104));

  sub_24B86B464(v0 + *(*v0 + 128));

  return v0;
}

uint64_t sub_24B86A354(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

unint64_t sub_24B86A3F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24B86A4C0(v11, 0, 0, 1, a1, a2);
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
    sub_24B860C6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_24B86A4C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24B86A5CC(a5, a6);
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
    result = sub_24B86DD34();
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

void *sub_24B86A5CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_24B86A618(a1, a2);
  sub_24B86A748(&unk_285EAEC90);
  return v3;
}

void *sub_24B86A618(uint64_t a1, unint64_t a2)
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

  v6 = sub_24B86A834(v5, 0);
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

  result = sub_24B86DD34();
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
        v10 = sub_24B86DA74();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24B86A834(v10, 0);
        result = sub_24B86DD04();
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

uint64_t sub_24B86A748(uint64_t result)
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

  result = sub_24B86A8A8(result, v11, 1, v3);
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

void *sub_24B86A834(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F061960, &qword_24B86EB78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24B86A8A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F061960, &qword_24B86EB78);
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

unint64_t sub_24B86A99C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24B86DAB4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C24C6F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_24B86AA54(unint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() callStackSymbols];
  v5 = sub_24B86DB14();

  if (qword_28151B398 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v6 = sub_24B86D934();
    __swift_project_value_buffer(v6, qword_28151B890);

    v7 = sub_24B86D924();
    v8 = sub_24B86DC14();

    if (!os_log_type_enabled(v7, v8))
    {
      break;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24B86A3F4(a1, a2, &v22);
    *(v9 + 12) = 2048;
    *(v9 + 14) = *(v5 + 16);

    _os_log_impl(&dword_24B85E000, v7, v8, "MegaFrame.%s repeated completion invocation. Logging %ld callstack symbols.", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x24C24CEA0](v10, -1, -1);
    MEMORY[0x24C24CEA0](v9, -1, -1);

    a2 = *(v5 + 16);
    if (!a2)
    {
      goto LABEL_11;
    }

LABEL_6:
    a1 = 0;
    v11 = (v5 + 40);
    v21 = a2;
    while (a1 < *(v5 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      v14 = sub_24B86D924();
      v15 = sub_24B86DC14();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = v5;
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_24B86A3F4(v13, v12, &v22);
        _os_log_impl(&dword_24B85E000, v14, v15, "%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x24C24CEA0](v18, -1, -1);
        v19 = v17;
        v5 = v16;
        a2 = v21;
        MEMORY[0x24C24CEA0](v19, -1, -1);
      }

      ++a1;
      v11 += 2;
      if (a2 == a1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

  a2 = *(v5 + 16);
  if (a2)
  {
    goto LABEL_6;
  }

LABEL_11:
}

uint64_t sub_24B86AD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (sub_24B86DB54())
  {
    sub_24B86DCF4();
    v15 = sub_24B86DCE4();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_24B86DB54();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_24B86DB44();
    sub_24B86DB24();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_24B86DD24();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_24B86D9F4();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_24B86DA24();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t **sub_24B86B104(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  *(v3 + v5[17]) = 0;
  v6 = v5[11];
  (*(*(v6 - 8) + 16))(v3 + (*v3)[13], a1, v6);
  v7 = type metadata accessor for FlowFrameRuntime(0, v5[10], v6, v5[12]);
  *(v3 + (*v3)[15]) = sub_24B86730C(v7, v8, v9, v10);
  *(v3 + (*v3)[14]) = dispatch_semaphore_create(1);
  sub_24B86C5BC(a2, v3 + (*v3)[16]);
  return v3;
}

unint64_t sub_24B86B240()
{
  result = qword_27F061918;
  if (!qword_27F061918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F061918);
  }

  return result;
}

uint64_t sub_24B86B294(uint64_t a1)
{
  v3 = *(v1 + 24);
  sub_24B86DC94();
  return v3(a1);
}

unint64_t sub_24B86B2F0()
{
  result = qword_27F061920;
  if (!qword_27F061920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F061920);
  }

  return result;
}

uint64_t sub_24B86B33C()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_24B8684A4(*(v0 + 40), v0 + v1, *v2, *(v2 + 8));
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24B86B3C4()
{
  result = qword_27F061928;
  if (!qword_27F061928)
  {
    sub_24B86D974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F061928);
  }

  return result;
}

uint64_t sub_24B86B41C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_24B86B464(uint64_t a1)
{
  v2 = type metadata accessor for RuntimeConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RuntimeConfiguration(uint64_t a1)
{
  result = qword_28151B600;
  if (!qword_28151B600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B86B50C(uint64_t a1)
{
  result = sub_24B86D954();
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

uint64_t initializeBufferWithCopyOfBuffer for RuntimeConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B86D954();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for RuntimeConfiguration(uint64_t a1)
{
  v2 = sub_24B86D954();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for RuntimeConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B86D954();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for RuntimeConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B86D954();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for RuntimeConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B86D954();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for RuntimeConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B86D954();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_24B86B914(uint64_t a1)
{
  result = sub_24B86D954();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_24B86B9A0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_24B86D954();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24B86BB98(uint64_t a1)
{
  result = sub_24B86D904();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_24B86BC44(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v6;
    v7 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v7;
    v8 = *(a2 + 7);
    *(a1 + 6) = *(a2 + 6);
    *(a1 + 7) = v8;
    *(a1 + 8) = *(a2 + 8);
    v9 = *(a3 + 44);
    v11 = sub_24B86D904();
    v12 = *(*(v11 - 8) + 16);

    v12(&v3[v9], &a2[v9], v11);
  }

  return v3;
}

uint64_t sub_24B86BD64(char *a1, uint64_t a2)
{

  v4 = *(a2 + 44);
  v5 = sub_24B86D904();
  v6 = *(*(v5 - 8) + 8);

  return v6(&a1[v4], v5);
}

char *sub_24B86BDF0(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v6;
  v7 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v7;
  v8 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v8;
  *(a1 + 8) = *(a2 + 8);
  v9 = *(a3 + 44);
  v10 = sub_24B86D904();
  v11 = *(*(v10 - 8) + 16);

  v11(&a1[v9], &a2[v9], v10);
  return a1;
}

char *sub_24B86BEC4(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);

  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);

  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);

  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 44);
  v7 = sub_24B86D904();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t sub_24B86BFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a3 + 44);
  v8 = sub_24B86D904();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

char *sub_24B86C048(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;

  v8 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v8;

  v9 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v9;

  *(a1 + 8) = *(a2 + 8);
  v10 = *(a3 + 44);
  v11 = sub_24B86D904();
  (*(*(v11 - 8) + 40))(&a1[v10], &a2[v10], v11);
  return a1;
}

_OWORD *sub_24B86C160(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24B86C170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RuntimeConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B86C25C()
{
  result = qword_27F061948;
  if (!qword_27F061948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F061948);
  }

  return result;
}

uint64_t sub_24B86C2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    JUMPOUT(0x24C24CCF0);
  }
}

uint64_t sub_24B86C344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    JUMPOUT(0x24C24CD00);
  }
}

unint64_t sub_24B86C394()
{
  result = qword_27F061950;
  if (!qword_27F061950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F061950);
  }

  return result;
}

uint64_t sub_24B86C3E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_24B86C344(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_24B86C414(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_24B86C2E8(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_24B86C44C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B86C4B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061958, &unk_24B86EB68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_17Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24B86C570(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x24C24CD00);
  }
}

void sub_24B86C57C(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    sub_24B86C570(a1, a2 & 1);
  }
}

void sub_24B86C594(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    sub_24B85F5E4(a1, a2 & 1);
  }
}

uint64_t sub_24B86C5AC(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x24C24CCF0);
  }
}

uint64_t sub_24B86C5BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RuntimeConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B86C624(uint64_t a1)
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

uint64_t sub_24B86C6DC()
{

  return v0;
}

uint64_t sub_24B86C71C()
{
  v0[2] = 0;

  v0[3] = 0;

  v0[4] = 0;
  return result;
}

uint64_t *sub_24B86C74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Node(0, *(*v4 + 80), a3, a4);

  v9 = sub_24B86D3FC(a1, a2, v7, v8);
  if (a2)
  {
    swift_beginAccess();
    sub_24B86DB94();

    sub_24B86DB64();
    swift_endAccess();
  }

  sub_24B86CAE8(v9);
  return v9;
}

uint64_t *sub_24B86C844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Node(0, *(*v4 + 80), a3, a4);
  v6 = *(*a1 + 88);
  Strong = swift_weakLoadStrong();
  v10 = sub_24B86D3FC(a1 + v6, Strong, v8, v9);
  sub_24B86D458(a1);
  v11 = *(*a1 + 104);
  swift_beginAccess();
  v12 = *(a1 + v11);
  v13 = *(*v10 + 104);
  swift_beginAccess();
  *(v10 + v13) = v12;

  *(a1 + v11) = sub_24B86DB34();

  sub_24B86CAE8(a1);
  v14 = swift_weakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = *(*v14 + 104);
    swift_beginAccess();
    sub_24B86DB94();
    swift_getWitnessTable();
    if ((sub_24B86DBE4() & 1) == 0)
    {

      swift_getWitnessTable();
      v17 = sub_24B86DD44();
      swift_beginAccess();
      *(v15 + v16) = v17;

      sub_24B86DB64();
      swift_endAccess();
    }
  }

  return v10;
}

uint64_t sub_24B86CAC0(uint64_t *a1)
{
  sub_24B86D728(a1);
}

uint64_t sub_24B86CAE8(uint64_t a1)
{
  if (v1[2] && v1[3])
  {
    swift_weakAssign();
    v3 = v1[3];
    if (v3)
    {
      *(v3 + *(*v3 + 120)) = a1;
    }

    v1[3] = a1;
  }

  else
  {
    v1[3] = a1;
    swift_retain_n();

    v1[2] = a1;
  }

  v5 = v1[4];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v7;
  }

  return result;
}

uint64_t sub_24B86CBD0(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    if (v4 == v3)
    {
      v1[2] = 0;

      v1[3] = 0;
    }

    else
    {
      v1[2] = *(a1 + *(*a1 + 120));
    }

    goto LABEL_20;
  }

  if (v3)
  {
    v6 = v3 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + *(*Strong + 120)) = 0;
    }

    else
    {
    }

    v9 = swift_weakLoadStrong();

    v1[3] = v9;
    goto LABEL_20;
  }

  v7 = swift_weakLoadStrong();
  if (v7)
  {
    *(v7 + *(*v7 + 120)) = *(a1 + *(*a1 + 120));
  }

  if (*(a1 + *(*a1 + 120)))
  {
    swift_weakLoadStrong();
    swift_weakAssign();
LABEL_20:
  }

  swift_weakAssign();
  *(a1 + *(*a1 + 120)) = 0;

  v11 = v1[4];
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v13;
  }

  return result;
}

uint64_t sub_24B86CDFC()
{
  v1 = *v0;
  if (*v0)
  {
    *v0 = swift_weakLoadStrong();
  }

  return v1;
}

uint64_t sub_24B86CE44()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  swift_weakDestroy();

  swift_weakDestroy();
  v1 = *(*v0 + 120);
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  if (v2)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v3 = *(v2 + *(*v2 + 120));
      swift_retain_n();

      v2 = v3;
    }

    while (v3);
  }

  return v0;
}

uint64_t sub_24B86CF90()
{
  sub_24B86CE44();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24B86D054@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B86CDFC();
  *a1 = result;
  return result;
}

uint64_t sub_24B86D07C()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_24B86D0F0()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  return result;
}

uint64_t sub_24B86D100@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24B86C714();

  *a1 = v2;
  return result;
}

uint64_t sub_24B86D150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for OrderedForest(0, *(a1 + 80), a3, a4);
  v7 = sub_24B86D758(v4, v6, a2);

  return v7;
}

void sub_24B86D19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OrderedForest(0, *(a4 + 80), a3, a4);

  JUMPOUT(0x24C24C740);
}

uint64_t *sub_24B86D278(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_weakInit();
  swift_weakInit();
  *(v2 + *(*v2 + 120)) = 0;
  v5 = *(v4 + 80);
  (*(*(v5 - 8) + 16))(v2 + *(*v2 + 88), a1, v5);
  swift_weakAssign();
  type metadata accessor for Node(0, v5, v6, v7);
  v8 = sub_24B86DB34();

  *(v2 + *(*v2 + 104)) = v8;
  swift_weakAssign();
  *(v2 + *(*v2 + 120)) = 0;

  return v2;
}

uint64_t *sub_24B86D3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Node(0, *(v4 + 80), a3, a4);
  swift_allocObject();
  return sub_24B86D278(a1, a2);
}

uint64_t sub_24B86D458(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*a1 + 104);
  swift_beginAccess();
  v5 = *(a1 + v4);
  type metadata accessor for Node(0, *(v3 + 80), v6, v7);

  if (sub_24B86DB54())
  {
    v8 = 4;
    do
    {
      v9 = v8 - 4;
      v10 = sub_24B86DB44();
      sub_24B86DB24();
      if (v10)
      {
        v11 = *(v5 + 8 * v8);

        v12 = __OFADD__(v9, 1);
        v13 = v8 - 3;
        if (v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11 = sub_24B86DD24();
        v12 = __OFADD__(v9, 1);
        v13 = v8 - 3;
        if (v12)
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      sub_24B86D458(v11);

      ++v8;
    }

    while (v13 != sub_24B86DB54());
  }

  sub_24B86CBD0(a1);
  return a1;
}

uint64_t sub_24B86D5A0(uint64_t *a1)
{
  v1 = *a1;
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(*result + 104);
    swift_beginAccess();
    type metadata accessor for Node(255, *(v1 + 80), v5, v6);
    sub_24B86DB94();
    swift_getWitnessTable();
    if (sub_24B86DBE4())
    {
    }

    else
    {

      swift_getWitnessTable();
      *(v3 + v4) = sub_24B86DD44();

      return swift_weakAssign();
    }
  }

  return result;
}

uint64_t *sub_24B86D728(uint64_t *a1)
{
  sub_24B86D458(a1);
  sub_24B86D5A0(a1);
  return a1;
}

uint64_t *sub_24B86D774(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *sub_24B86D7BC(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_24B86D7F0(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24B86D84C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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