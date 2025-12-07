uint64_t sub_20CCEBA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CD626F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20CCEBB10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20CD626F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20CCEBBCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C20, &qword_20CD640C0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20CCEBC44(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C20, &qword_20CD640C0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20CCEBCD0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20CD62764();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_20CD629D4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_20CD62964();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[7] + 24);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[8];
      goto LABEL_7;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CD0, &qword_20CD64168);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[9];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_20CCEBEF0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20CD62764();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_20CD629D4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_20CD62964();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 24) = (a2 - 1);
    return result;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CD0, &qword_20CD64168);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_20CCEC110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF8, &unk_20CD64540);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20CCEC218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF8, &unk_20CD64540);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20CCEC32C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20CCEC400()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CCEC48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CD626F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20CCEC54C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20CD626F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20CCEC60C()
{
  v1 = (type metadata accessor for SnapshotProcessor(0) - 8);
  v2 = *(*v1 + 80);
  v22 = (v2 + 32) & ~v2;
  v3 = *(*v1 + 64);
  v4 = sub_20CD62514();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 80);
  v6 = (v22 + v3 + v5) & ~v5;
  v26 = v6;
  v7 = *(v29 + 64);
  v28 = sub_20CD62C54();
  v25 = *(v28 - 8);
  v8 = *(v25 + 80);
  v9 = (v6 + v7 + v8) & ~v8;
  v23 = v9;
  v10 = *(v25 + 64);
  v27 = sub_20CD62654();
  v11 = *(v27 - 8);
  v12 = *(v11 + 80);
  v13 = (v9 + v10 + v12) & ~v12;
  v14 = *(v11 + 64);
  v24 = sub_20CD62AB4();
  v15 = *(v24 - 8);
  v16 = *(v15 + 80);
  v17 = (v13 + v14 + v16) & ~v16;
  v18 = v2 | v5 | v8 | v12 | v16;
  v19 = (((*(v15 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v20 = sub_20CD626F4();
  (*(*(v20 - 8) + 8))(v0 + v22, v20);
  __swift_destroy_boxed_opaque_existential_0((v0 + v22 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v22 + v1[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v22 + v1[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v22 + v1[10]));

  __swift_destroy_boxed_opaque_existential_0((v0 + v22 + v1[12]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v22 + v1[13]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v22 + v1[14]));
  (*(v29 + 8))(v0 + v26, v30);
  (*(v25 + 8))(v0 + v23, v28);
  (*(v11 + 8))(v0 + v13, v27);
  (*(v15 + 8))(v0 + v17, v24);

  return MEMORY[0x2821FE8E8](v0, v19 + 10, v18 | 7);
}

uint64_t sub_20CCEC9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CD626F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20CCECA70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20CD626F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20CCECBC4()
{
  v1 = sub_20CD62E94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  sub_20CD1CD98(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_20CCECD20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  sub_20CD1CD98(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CCECE90()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CCECED8()
{
  v17 = sub_20CD62E94();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 32) & ~v2;
  v3 = *(v1 + 64);
  v16 = sub_20CD62654();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v15 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_20CD62514();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v14 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v15, v17);
  (*(v4 + 8))(v0 + v6, v16);

  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v14, v12 | 7);
}

uint64_t sub_20CCED0D0()
{
  v1 = sub_20CD62E94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20CD62514();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_20CCED234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8112C8, &qword_20CD651D8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20CCED2AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8112C8, &qword_20CD651D8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20CCED338()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CCED380()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CCED3B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CCED44C(uint64_t a1)
{
  result = sub_20CD626F4();
  if (v2 <= 0x3F)
  {
    result = sub_20CCED538(319, &qword_28110F640, MEMORY[0x277D0A6A8]);
    if (v3 <= 0x3F)
    {
      result = sub_20CCED538(319, qword_28110F2B0, &protocol descriptor for SeymourStoreProtocol);
      if (v4 <= 0x3F)
      {
        result = sub_20CCED538(319, &qword_28110F2A8, &protocol descriptor for SnapshotStoreProtocol);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_20CCED538(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_20CCED5C0()
{
  v9 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = sub_20CD631B4();
  __swift_project_value_buffer(v1, qword_28110F878);
  v2 = sub_20CD63194();
  v3 = sub_20CD633D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_20CD6153C(0xD000000000000010, 0x800000020CD64060, &v8);
    _os_log_impl(&dword_20CCEA000, v2, v3, "[%s] Prewarmed.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F3115B0](v5, -1, -1);
    MEMORY[0x20F3115B0](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20CCED738(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C18, &qword_20CD640B0);
  *v5 = v2;
  v5[1] = sub_20CCEE040;
  v8 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, v6, v7, v8);
}

uint64_t sub_20CCED820(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C18, &qword_20CD640B0);
  *v5 = v2;
  v5[1] = sub_20CCED908;
  v8 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, v6, v7, v8);
}

uint64_t sub_20CCED908()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_20CCEDB14(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CCEDB4C(uint64_t a1)
{
  sub_20CCEDBA4(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_20CCEDBA4(uint64_t a1)
{
  if (!qword_27C810C38[0])
  {
    sub_20CD62AB4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_27C810C38);
    }
  }
}

void sub_20CCEDC14(uint64_t a1)
{
  sub_20CD63464();
  if (v1 <= 0x3F)
  {
    sub_20CCEDFC0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20CCEDC9C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v6 + 255) >> 8;
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
        goto LABEL_21;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 2)
    {
      v17 = (*(v4 + 48))(a1);
      if (v17 >= 2)
      {
        return v17 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v6 + (v15 | v14) + 1;
}

void sub_20CCEDDF0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
    ++v9;
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v12 = (a3 - v10 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
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
      v6 = v14;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v8 >= 2)
        {
          v17 = *(v7 + 56);

          v17();
        }

        return;
      }

      *&a1[v11] = 0;
    }

    else if (v6)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v15 = ~v10 + a2;
  bzero(a1, v11);
  if (v11 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v15;
    if (v6 > 1)
    {
LABEL_21:
      if (v6 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v6 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v6)
  {
    a1[v11] = v16;
  }
}

void sub_20CCEDFC0()
{
  if (!qword_27C810CC0)
  {
    v0 = sub_20CD63464();
    if (!v1)
    {
      atomic_store(v0, &qword_27C810CC0);
    }
  }
}

uint64_t FitnessPlusSessionRepresentable.session.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CD62764();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FitnessPlusSessionRepresentable.trainerIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FitnessPlusSessionRepresentable(0) + 20);
  v4 = sub_20CD629D4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FitnessPlusSessionRepresentable(uint64_t a1)
{
  result = qword_28110F630;
  if (!qword_28110F630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FitnessPlusSessionRepresentable.modalityKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FitnessPlusSessionRepresentable(0) + 24);
  v4 = sub_20CD62964();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FitnessPlusSessionRepresentable.hkWorkout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FitnessPlusSessionRepresentable(0) + 28);

  return sub_20CCEE234(v3, a1);
}

uint64_t sub_20CCEE234(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t FitnessPlusSessionRepresentable.end.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FitnessPlusSessionRepresentable(0) + 32);

  return sub_20CCEE2DC(v3, a1);
}

uint64_t sub_20CCEE2DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FitnessPlusSessionRepresentable.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FitnessPlusSessionRepresentable(0) + 36);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CD0, &qword_20CD64168);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FitnessPlusSessionRepresentable.init(session:workout:modality:hkWorkout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a4;
  v25 = a3;
  v26 = a2;
  v7 = sub_20CD62654();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20CD62764();
  v11 = *(v27 - 8);
  (*(v11 + 16))(a5, a1, v27);
  sub_20CD62794();
  v12 = type metadata accessor for FitnessPlusSessionRepresentable(0);
  sub_20CD629C4();
  v13 = sub_20CD627C4();
  v15 = v14;
  v17 = v16;
  sub_20CCEE6AC(a5 + v12[6]);
  sub_20CCEE750(v13, v15, v17 & 1);
  v18 = v24;
  sub_20CCEE234(v24, a5 + v12[7]);
  v19 = v12[8];
  _s31FitnessIntelligenceSnapshotting0A24PlusSessionRepresentableV5start10Foundation4DateVvg_0();
  sub_20CD62744();
  sub_20CD62554();
  (*(v8 + 8))(v10, v7);
  (*(v8 + 56))(a5 + v19, 0, 1, v7);
  sub_20CD62744();
  v20 = [objc_opt_self() seconds];
  sub_20CCEE760();
  sub_20CD624B4();
  __swift_destroy_boxed_opaque_existential_0(v18);
  v21 = sub_20CD627D4();
  (*(*(v21 - 8) + 8))(v25, v21);
  v22 = sub_20CD627A4();
  (*(*(v22 - 8) + 8))(v26, v22);
  return (*(v11 + 8))(a1, v27);
}

uint64_t sub_20CCEE6AC@<X0>(uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CE8, &unk_20CD64260);
  sub_20CD62714();
  v5 = **(&unk_277DABF08 + v8);
  v6 = sub_20CD62964();
  return (*(*(v6 - 8) + 104))(a4, v5, v6);
}

uint64_t sub_20CCEE750(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_20CCEE760()
{
  result = qword_28110F150;
  if (!qword_28110F150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28110F150);
  }

  return result;
}

uint64_t FitnessPlusSessionRepresentable.hkIdendentifier.getter()
{
  v1 = sub_20CD626A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FitnessPlusSessionRepresentable(0);
  __swift_project_boxed_opaque_existential_1((v0 + *(v5 + 28)), *(v0 + *(v5 + 28) + 24));
  sub_20CD62D64();
  v6 = sub_20CD62664();
  (*(v2 + 8))(v4, v1);
  return v6;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_20CCEE930(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = (v1 + *(type metadata accessor for FitnessPlusSessionRepresentable(0) + 28));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return a1(v4, v5);
}

uint64_t sub_20CCEE9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_20CD629D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20CCEEA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_20CD62964();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20CCEEAB8(uint64_t a1)
{
  v3 = sub_20CD626A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + *(a1 + 28)), *(v1 + *(a1 + 28) + 24));
  sub_20CD62D64();
  v7 = sub_20CD62664();
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_20CCEEBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CD0, &qword_20CD64168);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20CCEEC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = (v3 + *(a1 + 28));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  return a3(v6, v7);
}

uint64_t sub_20CCEECE0(uint64_t a1)
{
  v2 = sub_20CCEEF7C(&qword_27C810CE0, &protocol conformance descriptor for FitnessPlusSessionRepresentable);

  return MEMORY[0x282160950](a1, v2);
}

void sub_20CCEED70(uint64_t a1)
{
  sub_20CD62764();
  if (v1 <= 0x3F)
  {
    sub_20CD629D4();
    if (v2 <= 0x3F)
    {
      sub_20CD62964();
      if (v3 <= 0x3F)
      {
        sub_20CCEEEB4();
        if (v4 <= 0x3F)
        {
          sub_20CCEEF18(319, &qword_28110F7E0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20CCEEF18(319, &unk_28110F800, sub_20CCEE760, MEMORY[0x277CC87D0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_20CCEEEB4()
{
  result = qword_28110F6C0;
  if (!qword_28110F6C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28110F6C0);
  }

  return result;
}

void sub_20CCEEF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CCEEF7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FitnessPlusSessionRepresentable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20CCEEFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v725 = a2;
  v715 = sub_20CD626F4();
  v708 = *(v715 - 1);
  v3 = MEMORY[0x28223BE20](v715);
  v643 = &v613 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v664 = &v613 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v650 = &v613 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v673 = &v613 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v670 = &v613 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v681 = &v613 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v667 = &v613 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v687 = &v613 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v676 = &v613 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v695 = &v613 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v693 = &v613 - v24;
  MEMORY[0x28223BE20](v23);
  v702 = &v613 - v25;
  v711 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v26 = MEMORY[0x28223BE20](v711);
  v712 = &v613 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v710 = &v613 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF8, &unk_20CD64540);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v616 = &v613 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v614 = &v613 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v618 = &v613 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v617 = &v613 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v626 = &v613 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v642 = &v613 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v631 = &v613 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v647 = &v613 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v665 = &v613 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v661 = &v613 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v671 = &v613 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v688 = &v613 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v689 = &v613 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v696 = &v613 - v57;
  MEMORY[0x28223BE20](v56);
  v716 = &v613 - v58;
  v720 = sub_20CD62AB4();
  v723 = *(v720 - 8);
  v59 = MEMORY[0x28223BE20](v720);
  v625 = &v613 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v622 = &v613 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v627 = &v613 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v621 = &v613 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v619 = &v613 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v634 = &v613 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v630 = &v613 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v629 = &v613 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v628 = &v613 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v633 = &v613 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v638 = &v613 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v636 = &v613 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v639 = &v613 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v646 = &v613 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v640 = &v613 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v648 = &v613 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v651 = &v613 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v645 = &v613 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v656 = &v613 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v657 = &v613 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v652 = &v613 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v659 = &v613 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v679 = &v613 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v675 = &v613 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v682 = &v613 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v684 = &v613 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v700 = &v613 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v698 = &v613 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v699 = &v613 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v707 = &v613 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v704 = &v613 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v705 = &v613 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v706 = (&v613 - v124);
  v125 = MEMORY[0x28223BE20](v123);
  v718 = &v613 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v719 = &v613 - v128;
  MEMORY[0x28223BE20](v127);
  v724 = &v613 - v129;
  v130 = sub_20CD62654();
  v131 = *(v130 - 8);
  v726 = v130;
  v727 = v131;
  v132 = MEMORY[0x28223BE20](v130);
  v624 = &v613 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = MEMORY[0x28223BE20](v132);
  v615 = &v613 - v135;
  v136 = MEMORY[0x28223BE20](v134);
  v623 = &v613 - v137;
  v138 = MEMORY[0x28223BE20](v136);
  v635 = &v613 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v620 = &v613 - v141;
  v142 = MEMORY[0x28223BE20](v140);
  v632 = &v613 - v143;
  v144 = MEMORY[0x28223BE20](v142);
  v637 = &v613 - v145;
  v146 = MEMORY[0x28223BE20](v144);
  v644 = &v613 - v147;
  v148 = MEMORY[0x28223BE20](v146);
  v653 = &v613 - v149;
  v150 = MEMORY[0x28223BE20](v148);
  v655 = &v613 - v151;
  v152 = MEMORY[0x28223BE20](v150);
  v641 = &v613 - v153;
  v154 = MEMORY[0x28223BE20](v152);
  v662 = &v613 - v155;
  v156 = MEMORY[0x28223BE20](v154);
  v654 = &v613 - v157;
  v158 = MEMORY[0x28223BE20](v156);
  v663 = &v613 - v159;
  v160 = MEMORY[0x28223BE20](v158);
  v649 = &v613 - v161;
  v162 = MEMORY[0x28223BE20](v160);
  v672 = &v613 - v163;
  v164 = MEMORY[0x28223BE20](v162);
  v660 = &v613 - v165;
  v166 = MEMORY[0x28223BE20](v164);
  v677 = &v613 - v167;
  v168 = MEMORY[0x28223BE20](v166);
  v669 = &v613 - v169;
  v170 = MEMORY[0x28223BE20](v168);
  v680 = &v613 - v171;
  v172 = MEMORY[0x28223BE20](v170);
  v668 = &v613 - v173;
  v174 = MEMORY[0x28223BE20](v172);
  v685 = &v613 - v175;
  v176 = MEMORY[0x28223BE20](v174);
  v666 = &v613 - v177;
  v178 = MEMORY[0x28223BE20](v176);
  v686 = &v613 - v179;
  v180 = MEMORY[0x28223BE20](v178);
  v678 = &v613 - v181;
  v182 = MEMORY[0x28223BE20](v180);
  v690 = &v613 - v183;
  v184 = MEMORY[0x28223BE20](v182);
  v674 = &v613 - v185;
  v186 = MEMORY[0x28223BE20](v184);
  v694 = &v613 - v187;
  v188 = MEMORY[0x28223BE20](v186);
  v683 = &v613 - v189;
  v190 = MEMORY[0x28223BE20](v188);
  v697 = &v613 - v191;
  v192 = MEMORY[0x28223BE20](v190);
  v692 = &v613 - v193;
  v194 = MEMORY[0x28223BE20](v192);
  v701 = &v613 - v195;
  v196 = MEMORY[0x28223BE20](v194);
  v691 = &v613 - v197;
  v198 = MEMORY[0x28223BE20](v196);
  v703 = &v613 - v199;
  v200 = MEMORY[0x28223BE20](v198);
  v709 = &v613 - v201;
  v202 = MEMORY[0x28223BE20](v200);
  v714 = &v613 - v203;
  v204 = MEMORY[0x28223BE20](v202);
  v206 = &v613 - v205;
  v207 = MEMORY[0x28223BE20](v204);
  v717 = (&v613 - v208);
  v209 = MEMORY[0x28223BE20](v207);
  v721 = &v613 - v210;
  MEMORY[0x28223BE20](v209);
  v212 = &v613 - v211;
  v213 = sub_20CD62CE4();
  v214 = *(v213 - 8);
  v215 = MEMORY[0x28223BE20](v213);
  v217 = &v613 - ((v216 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v215);
  v219 = &v613 - v218;
  v220 = *(v214 + 16);
  v220(&v613 - v218, a1, v213);
  v221 = (*(v214 + 88))(v219, v213);
  if (v221 == *MEMORY[0x277D0A290])
  {
    (*(v214 + 8))(a1, v213);
    (*(v214 + 96))(v219, v213);
    v222 = v726;
    v223 = v727;
    v224 = *(v727 + 32);
    v224(v212, v219, v726);
    v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
    v226 = v725;
    (*(*(v225 - 8) + 56))(v725, 1, 1, v225);
    v227 = *(type metadata accessor for SnapshotQueryRange(0) + 20);
    v224((v226 + v227), v212, v222);
    return (*(v223 + 56))(v226 + v227, 0, 1, v222);
  }

  v722 = v213;
  v713 = v214;
  v658 = a1;
  if (v221 == *MEMORY[0x277D0A2B0])
  {
    v229 = v713;
    (*(v713 + 96))(v219, v722);
    v231 = v726;
    v230 = v727;
    v232 = (v727 + 32);
    v233 = v721;
    v715 = *(v727 + 32);
    v715(v721, v219, v726);
    sub_20CD625B4();
    sub_20CD62564();
    v717 = *(v230 + 8);
    v717(v212, v231);
    v234 = v718;
    sub_20CD62564();
    v235 = v719;
    v236 = v728;
    sub_20CD62A34();
    v728 = v236;
    if (v236)
    {
      (*(v229 + 8))(v658, v722);
      v237 = *(v723 + 8);
      v238 = v234;
      v239 = v720;
      v237(v238, v720);
      v237(v724, v239);
      return (v717)(v233, v231);
    }

    v257 = v722;
    v717 = v232;
    v258 = *(v723 + 8);
    v259 = v720;
    (v258)(v234, v720);
    sub_20CCF3C58();
    v260 = v724;
    if ((sub_20CD63214() & 1) == 0)
    {
      (*(v229 + 8))(v658, v257);
      (v258)(v235, v259);
      (v258)(v260, v259);
      v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v269 = v716;
      (*(*(v292 - 8) + 56))(v716, 1, 1, v292);
      v275 = v721;
      v274 = v727;
      goto LABEL_21;
    }

    v718 = v258;
    v261 = sub_20CD63224();
    (*(v229 + 8))(v658, v257);
    if (v261)
    {
      v262 = v259;
      v263 = v235;
      v264 = *(v723 + 32);
      v265 = v710;
      v264(v710, v260, v262);
      v266 = v711;
      v264((v265 + *(v711 + 48)), v263, v262);
      v267 = v712;
      sub_20CCF3CB0(v265, v712);
      v268 = *(v266 + 48);
      v269 = v716;
      v264(v716, v267, v262);
      v270 = v267 + v268;
      v271 = v718;
      (v718)(v270, v262);
      sub_20CCF3D20(v265, v267, &qword_27C810CF0, &unk_20CD64270);
      v272 = *(v266 + 48);
      v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v264(&v269[*(v273 + 36)], (v267 + v272), v262);
      v271(v267, v262);
      (*(*(v273 - 8) + 56))(v269, 0, 1, v273);
      v274 = v727;
      v275 = v721;
LABEL_21:
      v293 = v269;
      v294 = v725;
      sub_20CCF3D20(v293, v725, &qword_27C810CF8, &unk_20CD64540);
      v295 = *(type metadata accessor for SnapshotQueryRange(0) + 20);
      v296 = v275;
      v297 = v726;
      v715((v294 + v295), v296, v726);
      return (*(v274 + 56))(v294 + v295, 0, 1, v297);
    }

    __break(1u);
LABEL_106:
    v724 = *(v723 + 8);
    (v724)(v257, v720);
    v569 = v620;
    sub_20CD625B4();
    sub_20CD62564();
    (v235)(v569, v258);
    sub_20CD62A34();
    v728 = v261;
    if (v261)
    {
      (*(v713 + 8))(v658, v722);
      v570 = v720;
      v571 = v724;
      (v724)(v629, v720);
      v571(v638, v570);
      return (v235)(v637, v726);
    }

    (v724)(v629, v720);
    sub_20CCF3C58();
    v582 = sub_20CD63224();
    (*(v713 + 8))(v658, v722);
    result = (v235)(v637, v726);
    if (v582)
    {
      v583 = *(v723 + 32);
      v584 = v710;
      v585 = v720;
      v583(v710, v638, v720);
      v586 = v711;
      v583((v584 + *(v711 + 48)), v628, v585);
      v587 = v712;
      sub_20CCF3CB0(v584, v712);
      v588 = *(v586 + 48);
      v583(v618, v587, v585);
      v285 = v724;
      (v724)(v587 + v588, v585);
      sub_20CCF3D20(v584, v587, &qword_27C810CF0, &unk_20CD64270);
      v589 = *(v586 + 48);
      v590 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v591 = *(v590 + 36);
      v592 = &v650;
LABEL_120:
      v612 = *(v592 - 32);
      v583((v612 + v591), (v587 + v589), v585);
      v285(v587, v585);
      (*(*(v590 - 8) + 56))(v612, 0, 1, v590);
      v465 = v612;
      goto LABEL_67;
    }

    goto LABEL_131;
  }

  if (v221 == *MEMORY[0x277D0A2D0])
  {
    v240 = v713;
    v241 = v722;
    (*(v713 + 96))(v219, v722);
    v242 = v726;
    v243 = v727;
    v245 = (v727 + 32);
    v244 = *(v727 + 32);
    v246 = v717;
    v244(v717, v219, v726);
    v247 = v728;
    sub_20CD625F4();
    v728 = v247;
    if (v247)
    {
      (*(v240 + 8))(v658, v241);
      return (*(v243 + 8))(v246, v242);
    }

    v719 = v245;
    v721 = v244;
    v285 = v706;
    sub_20CD62564();
    v724 = *(v243 + 8);
    (v724)(v206, v242);
    v286 = v246;
    v287 = v704;
    sub_20CD62564();
    v288 = v705;
    v289 = v728;
    sub_20CD62A34();
    v728 = v289;
    if (v289)
    {
      (*(v713 + 8))(v658, v722);
      v290 = *(v723 + 8);
      v291 = v720;
      v290(v287, v720);
      v290(v285, v291);
      return (v724)(v286, v242);
    }

    v317 = v243;
    v318 = *(v723 + 8);
    v319 = v720;
    v318(v287, v720);
    sub_20CCF3C58();
    v320 = sub_20CD63214();
    v321 = v713;
    v322 = v288;
    v323 = v722;
    if ((v320 & 1) == 0)
    {
      v362 = v322;
      (*(v713 + 8))(v658, v722);
      v318(v362, v319);
      v318(v285, v319);
      v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v338 = v696;
      (*(*(v363 - 8) + 56))(v696, 1, 1, v363);
      v341 = v717;
      goto LABEL_38;
    }

    v724 = v318;
    v324 = v322;
    v325 = sub_20CD63224();
    v326 = *(v321 + 8);
    v235 = (v321 + 8);
    v326(v658, v323);
    if (v325)
    {
      v327 = v319;
      v328 = *(v723 + 32);
      v329 = v710;
      v328(v710, v285, v327);
      v330 = v711;
      v328((v329 + *(v711 + 48)), v324, v327);
      v331 = v328;
      v332 = v712;
      sub_20CCF3CB0(v329, v712);
      v333 = *(v330 + 48);
      v334 = v696;
      v331(v696, v332, v327);
      v335 = v332 + v333;
      v336 = v724;
      (v724)(v335, v327);
      v337 = v329;
      v338 = v334;
      sub_20CCF3D20(v337, v332, &qword_27C810CF0, &unk_20CD64270);
      v339 = *(v330 + 48);
      v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v331(&v338[*(v340 + 36)], v332 + v339, v327);
      v336(v332, v327);
      (*(*(v340 - 8) + 56))(v338, 0, 1, v340);
      v317 = v727;
      v341 = v717;
LABEL_38:
      v364 = v338;
      v365 = v725;
      sub_20CCF3D20(v364, v725, &qword_27C810CF8, &unk_20CD64540);
      v366 = *(type metadata accessor for SnapshotQueryRange(0) + 20);
      v367 = v341;
      v368 = v726;
      (v721)(v365 + v366, v367, v726);
      return (*(v317 + 56))(v365 + v366, 0, 1, v368);
    }

    __break(1u);
LABEL_118:
    v285(v621, v720);
    sub_20CCF3C58();
    v608 = sub_20CD63224();
    (*(v713 + 8))(v658, v722);
    result = (v235)(v635, v726);
    if (v608)
    {
      v583 = *(v723 + 32);
      v609 = v710;
      v585 = v720;
      v583(v710, v630, v720);
      v610 = v711;
      v583((v609 + *(v711 + 48)), v619, v585);
      v587 = v712;
      sub_20CCF3CB0(v609, v712);
      v611 = *(v610 + 48);
      v583(v614, v587, v585);
      v285(v587 + v611, v585);
      sub_20CCF3D20(v609, v587, &qword_27C810CF0, &unk_20CD64270);
      v589 = *(v610 + 48);
      v590 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v591 = *(v590 + 36);
      v592 = &v646;
      goto LABEL_120;
    }

    goto LABEL_133;
  }

  if (v221 == *MEMORY[0x277D0A2B8])
  {
    v248 = v713;
    v249 = v722;
    (*(v713 + 96))(v219, v722);
    v250 = v726;
    v251 = v727;
    v252 = (v727 + 32);
    v253 = *(v727 + 32);
    v254 = v714;
    v253(v714, v219, v726);
    v255 = v709;
    v256 = v728;
    sub_20CD625C4();
    v728 = v256;
    if (v256)
    {
      (*(v248 + 8))(v658, v249);
      return (*(v251 + 8))(v254, v250);
    }

    v721 = v252;
    v724 = v253;
    sub_20CD62564();
    v308 = v251;
    v309 = v254;
    v310 = *(v308 + 8);
    v310(v255, v250);
    v311 = v698;
    sub_20CD62564();
    v312 = v699;
    v313 = v728;
    sub_20CD62A34();
    v728 = v313;
    if (v313)
    {
      (*(v248 + 8))(v658, v722);
      v314 = *(v723 + 8);
      v315 = v311;
      v316 = v720;
      v314(v315, v720);
      v314(v707, v316);
      return (v310)(v309, v250);
    }

    v348 = *(v723 + 8);
    v349 = v720;
    v348(v311, v720);
    sub_20CCF3C58();
    v350 = v707;
    if ((sub_20CD63214() & 1) == 0)
    {
      (*(v248 + 8))(v658, v722);
      v348(v312, v349);
      v348(v350, v349);
      v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v359 = v689;
      (*(*(v392 - 8) + 56))(v689, 1, 1, v392);
      goto LABEL_45;
    }

    v351 = sub_20CD63224();
    result = (*(v248 + 8))(v658, v722);
    if (v351)
    {
      v352 = *(v723 + 32);
      v353 = v710;
      v352(v710, v350, v349);
      v354 = v711;
      v352((v353 + *(v711 + 48)), v312, v349);
      v355 = v352;
      v356 = v712;
      sub_20CCF3CB0(v353, v712);
      v723 = *(v354 + 48);
      v357 = v689;
      v355(v689, v356, v349);
      v348((v356 + v723), v349);
      v358 = v353;
      v359 = v357;
      sub_20CCF3D20(v358, v356, &qword_27C810CF0, &unk_20CD64270);
      v360 = *(v354 + 48);
      v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v355(&v359[*(v361 + 36)], v356 + v360, v349);
      v348(v356, v349);
      (*(*(v361 - 8) + 56))(v359, 0, 1, v361);
LABEL_45:
      v393 = v359;
      v394 = v725;
      sub_20CCF3D20(v393, v725, &qword_27C810CF8, &unk_20CD64540);
      v395 = *(type metadata accessor for SnapshotQueryRange(0) + 20);
      v396 = v726;
      (v724)(v394 + v395, v714, v726);
      return (*(v727 + 56))(v394 + v395, 0, 1, v396);
    }

    __break(1u);
    goto LABEL_122;
  }

  v276 = v713;
  if (v221 == *MEMORY[0x277D0A2F8])
  {
    v277 = v722;
    (*(v713 + 96))(v219, v722);
    v278 = v727;
    v279 = v703;
    v280 = v276;
    v281 = v726;
    (*(v727 + 32))(v703, v219, v726);
    v282 = v702;
    sub_20CD626C4();
    v283 = v701;
    v284 = v728;
    sub_20CD62574();
    if (v284)
    {
      (*(v280 + 8))(v658, v277);
      (*(v708 + 8))(v282, v715);
      return (*(v278 + 8))(v279, v281);
    }

    v721 = *(v708 + 8);
    (v721)(v282, v715);
    v344 = v691;
    sub_20CD625B4();
    v345 = *(v278 + 8);
    v345(v283, v281);
    sub_20CD62564();
    v724 = v345;
    v345(v344, v281);
    v346 = v693;
    sub_20CD626C4();
    v347 = v692;
    sub_20CD62574();
    v728 = 0;
    (v721)(v346, v715);
    v376 = v684;
    sub_20CD62564();
    v377 = v724;
    (v724)(v347, v281);
    sub_20CCF3C58();
    v378 = v700;
    v379 = v720;
    v380 = sub_20CD63224();
    (*(v713 + 8))(v658, v722);
    result = v377(v703, v281);
    if (v380)
    {
      v381 = v723;
      v382 = *(v723 + 32);
      v383 = v710;
      v382(v710, v378, v379);
      v384 = v711;
      v382((v383 + *(v711 + 48)), v376, v379);
      v385 = v712;
      sub_20CCF3CB0(v383, v712);
      v386 = *(v384 + 48);
      v382(v688, v385, v379);
      v724 = *(v381 + 8);
      (v724)(v385 + v386, v379);
      sub_20CCF3D20(v383, v385, &qword_27C810CF0, &unk_20CD64270);
      v387 = *(v384 + 48);
      v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v389 = v688;
      v382(&v688[*(v388 + 36)], (v385 + v387), v379);
      (v724)(v385, v379);
      (*(*(v388 - 8) + 56))(v389, 0, 1, v388);
      v390 = v725;
      sub_20CCF3D20(v389, v725, &qword_27C810CF8, &unk_20CD64540);
      Range = type metadata accessor for SnapshotQueryRange(0);
      return (*(v727 + 56))(v390 + *(Range + 20), 1, 1, v281);
    }

LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v221 == *MEMORY[0x277D0A308])
  {
    v298 = v722;
    (*(v713 + 96))(v219, v722);
    v300 = v726;
    v299 = v727;
    v301 = v697;
    (*(v727 + 32))(v697, v219, v726);
    v302 = v695;
    sub_20CD626C4();
    v303 = v694;
    v304 = v728;
    sub_20CD625A4();
    if (!v304)
    {
      v305 = *(v708 + 8);
      v306 = v715;
      v305(v302, v715);
      v307 = v683;
      sub_20CD625F4();
      v728 = 0;
      v406 = *(v727 + 8);
      v406(v303, v300);
      sub_20CD62564();
      v724 = v406;
      v406(v307, v300);
      v407 = v676;
      sub_20CD626C4();
      v408 = v674;
      v409 = v697;
      v410 = v728;
      sub_20CD625A4();
      v728 = v410;
      if (v410)
      {
        (*(v713 + 8))(v658, v722);
        v305(v407, v306);
        (*(v723 + 8))(v682, v720);
        return (v724)(v409, v300);
      }

      v305(v407, v306);
      v432 = v684;
      sub_20CD62564();
      v433 = v724;
      (v724)(v408, v300);
      sub_20CCF3C58();
      v434 = v409;
      v435 = v682;
      v436 = v720;
      v437 = sub_20CD63224();
      (*(v713 + 8))(v658, v722);
      result = v433(v434, v300);
      if ((v437 & 1) == 0)
      {
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      v438 = v723;
      v439 = *(v723 + 32);
      v440 = v710;
      v439(v710, v435, v436);
      v441 = v711;
      v439((v440 + *(v711 + 48)), v432, v436);
      v442 = v712;
      sub_20CCF3CB0(v440, v712);
      v443 = *(v441 + 48);
      v439(v671, v442, v436);
      v724 = *(v438 + 8);
      (v724)(v442 + v443, v436);
      sub_20CCF3D20(v440, v442, &qword_27C810CF0, &unk_20CD64270);
      v444 = *(v441 + 48);
      v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v446 = *(v445 + 36);
      v447 = &v703;
LABEL_73:
      v485 = *(v447 - 32);
      v439((v485 + v446), (v442 + v444), v436);
      (v724)(v442, v436);
      (*(*(v445 - 8) + 56))(v485, 0, 1, v445);
      v486 = v485;
      goto LABEL_74;
    }

    goto LABEL_32;
  }

  if (v221 == *MEMORY[0x277D0A300])
  {
    v298 = v722;
    (*(v713 + 96))(v219, v722);
    v300 = v726;
    v299 = v727;
    v301 = v690;
    (*(v727 + 32))(v690, v219, v726);
    v302 = v687;
    sub_20CD626C4();
    v342 = v686;
    v343 = v728;
    sub_20CD62584();
    if (!v343)
    {
      v403 = *(v708 + 8);
      v404 = v715;
      v403(v302, v715);
      v405 = v678;
      sub_20CD625C4();
      v728 = 0;
      v421 = *(v727 + 8);
      v421(v342, v300);
      sub_20CD62564();
      v724 = v421;
      v421(v405, v300);
      v422 = v667;
      sub_20CD626C4();
      v423 = v666;
      v409 = v690;
      v424 = v728;
      sub_20CD62584();
      v728 = v424;
      if (v424)
      {
        (*(v713 + 8))(v658, v722);
        v403(v422, v404);
        (*(v723 + 8))(v675, v720);
        return (v724)(v409, v300);
      }

      v403(v422, v404);
      v476 = v684;
      sub_20CD62564();
      v477 = v724;
      (v724)(v423, v300);
      sub_20CCF3C58();
      v478 = v409;
      v479 = v675;
      v436 = v720;
      v480 = sub_20CD63224();
      (*(v713 + 8))(v658, v722);
      result = v477(v478, v300);
      if ((v480 & 1) == 0)
      {
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      v481 = v723;
      v439 = *(v723 + 32);
      v482 = v710;
      v439(v710, v479, v436);
      v483 = v711;
      v439((v482 + *(v711 + 48)), v476, v436);
      v442 = v712;
      sub_20CCF3CB0(v482, v712);
      v484 = *(v483 + 48);
      v439(v661, v442, v436);
      v724 = *(v481 + 8);
      (v724)(v442 + v484, v436);
      sub_20CCF3D20(v482, v442, &qword_27C810CF0, &unk_20CD64270);
      v444 = *(v483 + 48);
      v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v446 = *(v445 + 36);
      v447 = &v693;
      goto LABEL_73;
    }

LABEL_32:
    (*(v276 + 8))(v658, v298);
    (*(v708 + 8))(v302, v715);
    return (*(v299 + 8))(v301, v300);
  }

  if (v221 == *MEMORY[0x277D0A2D8])
  {
    v369 = v722;
    (*(v713 + 96))(v219, v722);
    v371 = v726;
    v370 = v727;
    v372 = v685;
    (*(v727 + 32))(v685, v219, v726);
    v373 = v681;
    sub_20CD626C4();
    v374 = v680;
    v375 = v728;
    sub_20CD62574();
    if (v375)
    {
      (*(v276 + 8))(v658, v369);
      (*(v708 + 8))(v373, v715);
      return (*(v370 + 8))(v372, v371);
    }

    v413 = v374;
    v414 = v715;
    v724 = *(v708 + 8);
    (v724)(v373, v715);
    v415 = v668;
    sub_20CD625B4();
    v416 = *(v370 + 8);
    v416(v413, v371);
    sub_20CD62564();
    v417 = v371;
    v418 = v416;
    v416(v415, v417);
    v419 = v670;
    sub_20CD626C4();
    v420 = v669;
    sub_20CD625D4();
    v728 = 0;
    (v724)(v419, v414);
    v448 = v684;
    sub_20CD62564();
    v449 = v420;
    v450 = v418;
    v451 = v726;
    v450(v449, v726);
    sub_20CCF3C58();
    v452 = v276;
    v453 = v720;
    v454 = sub_20CD63224();
    (*(v452 + 8))(v658, v722);
    result = (v450)(v685, v451);
    if ((v454 & 1) == 0)
    {
      goto LABEL_124;
    }

    v455 = v723;
    v456 = *(v723 + 32);
    v457 = v710;
    v456(v710, v679, v453);
    v458 = v711;
    v456((v457 + *(v711 + 48)), v448, v453);
    v459 = v712;
    sub_20CCF3CB0(v457, v712);
    v460 = *(v458 + 48);
    v456(v665, v459, v453);
    v461 = *(v455 + 8);
    v461(v459 + v460, v453);
    sub_20CCF3D20(v457, v459, &qword_27C810CF0, &unk_20CD64270);
    v462 = *(v458 + 48);
    v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
    v464 = v665;
    v456(&v665[*(v463 + 36)], (v459 + v462), v453);
    v461(v459, v453);
    goto LABEL_66;
  }

  if (v221 == *MEMORY[0x277D0A2E8])
  {
    v298 = v722;
    (*(v713 + 96))(v219, v722);
    v300 = v726;
    v299 = v727;
    v301 = v677;
    (*(v727 + 32))(v677, v219, v726);
    v302 = v673;
    sub_20CD626C4();
    v397 = v672;
    v398 = v728;
    sub_20CD625A4();
    if (!v398)
    {
      v399 = *(v708 + 8);
      v400 = v302;
      v401 = v715;
      v399(v400, v715);
      v402 = v660;
      sub_20CD625F4();
      v728 = 0;
      v721 = v399;
      v492 = (v727 + 8);
      v491 = *(v727 + 8);
      v491(v397, v300);
      sub_20CD62564();
      v724 = v492;
      v491(v402, v300);
      v493 = v491;
      v494 = v650;
      sub_20CD626C4();
      v495 = v649;
      v496 = v677;
      v497 = v728;
      sub_20CD62604();
      v728 = v497;
      if (v497)
      {
        (*(v276 + 8))(v658, v722);
        (v721)(v494, v401);
        (*(v723 + 8))(v659, v720);
        return v493(v496, v300);
      }

      (v721)(v494, v401);
      v518 = v684;
      sub_20CD62564();
      v493(v495, v300);
      sub_20CCF3C58();
      v519 = v276;
      v520 = v720;
      v521 = v496;
      v522 = sub_20CD63224();
      (*(v519 + 8))(v658, v722);
      result = v493(v521, v300);
      if ((v522 & 1) == 0)
      {
        goto LABEL_126;
      }

      v523 = v723;
      v524 = *(v723 + 32);
      v525 = v710;
      v524(v710, v659, v520);
      v526 = v711;
      v524((v525 + *(v711 + 48)), v518, v520);
      v527 = v712;
      sub_20CCF3CB0(v525, v712);
      v528 = *(v526 + 48);
      v524(v647, v527, v520);
      v724 = *(v523 + 8);
      (v724)(v527 + v528, v520);
      sub_20CCF3D20(v525, v527, &qword_27C810CF0, &unk_20CD64270);
      v529 = *(v526 + 48);
      v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v531 = v647;
      v524(&v647[*(v530 + 36)], (v527 + v529), v520);
      (v724)(v527, v520);
      (*(*(v530 - 8) + 56))(v531, 0, 1, v530);
      v486 = v531;
LABEL_74:
      v487 = v725;
      sub_20CCF3D20(v486, v725, &qword_27C810CF8, &unk_20CD64540);
      v488 = type metadata accessor for SnapshotQueryRange(0);
      return (*(v727 + 56))(v487 + *(v488 + 20), 1, 1, v300);
    }

    goto LABEL_32;
  }

  if (v221 == *MEMORY[0x277D0A2E0])
  {
    v298 = v722;
    (*(v713 + 96))(v219, v722);
    v300 = v726;
    v299 = v727;
    v301 = v663;
    (*(v727 + 32))(v663, v219, v726);
    v302 = v664;
    sub_20CD626C4();
    v411 = v662;
    v412 = v728;
    sub_20CD62584();
    if (v412)
    {
      goto LABEL_32;
    }

    v489 = *(v708 + 8);
    v489(v302, v715);
    v490 = v654;
    sub_20CD625C4();
    v728 = 0;
    v724 = v489;
    v506 = *(v727 + 8);
    v506(v411, v300);
    sub_20CD62564();
    v507 = v506;
    v506(v490, v300);
    v508 = v301;
    v509 = v643;
    sub_20CD626C4();
    v510 = v641;
    v511 = v728;
    sub_20CD625E4();
    if (v511)
    {
      (*(v276 + 8))(v658, v722);
      (v724)(v509, v715);
      (*(v723 + 8))(v652, v720);
      return (v506)(v508, v300);
    }

    v728 = 0;
    (v724)(v509, v715);
    sub_20CD62564();
    v506(v510, v300);
    sub_20CCF3C58();
    v549 = sub_20CD63224();
    (*(v276 + 8))(v658, v722);
    result = v507(v508, v300);
    if ((v549 & 1) == 0)
    {
      goto LABEL_128;
    }

    v550 = v723;
    v551 = *(v723 + 32);
    v552 = v710;
    v553 = v720;
    v551(v710, v652, v720);
    v554 = v711;
    v551((v552 + *(v711 + 48)), v684, v553);
    v555 = v712;
    sub_20CCF3CB0(v552, v712);
    v556 = *(v554 + 48);
    v464 = v631;
    v551(v631, v555, v553);
    v724 = *(v550 + 8);
    (v724)(v555 + v556, v553);
    sub_20CCF3D20(v552, v555, &qword_27C810CF0, &unk_20CD64270);
    v557 = *(v554 + 48);
    v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
    v551(&v464[*(v463 + 36)], (v555 + v557), v553);
    (v724)(v555, v553);
LABEL_66:
    (*(*(v463 - 8) + 56))(v464, 0, 1, v463);
    v465 = v464;
LABEL_67:
    v466 = v725;
    sub_20CCF3D20(v465, v725, &qword_27C810CF8, &unk_20CD64540);
    v467 = type metadata accessor for SnapshotQueryRange(0);
    return (*(v727 + 56))(v466 + *(v467 + 20), 1, 1, v726);
  }

  if (v221 == *MEMORY[0x277D0A2C8])
  {
    v425 = v722;
    (*(v713 + 96))(v219, v722);
    v427 = v726;
    v426 = v727;
    v428 = v655;
    (*(v727 + 32))(v655, v219, v726);
    v429 = v656;
    sub_20CD62564();
    v430 = v657;
    v431 = v728;
    sub_20CD62A34();
    if (v431)
    {
      (*(v276 + 8))(v658, v425);
      (*(v723 + 8))(v429, v720);
      return (*(v426 + 8))(v428, v427);
    }

    v503 = *(v723 + 8);
    v504 = v720;
    v503(v429, v720);
    v505 = v645;
    sub_20CD62A74();
    v728 = 0;
    v724 = v503;
    sub_20CCF3C58();
    v536 = sub_20CD63224();
    (*(v713 + 8))(v658, v722);
    result = (*(v426 + 8))(v428, v726);
    if ((v536 & 1) == 0)
    {
      goto LABEL_127;
    }

    v537 = v505;
    v538 = *(v723 + 32);
    v539 = v710;
    v538(v710, v537, v504);
    v540 = v711;
    v538((v539 + *(v711 + 48)), v430, v504);
    v541 = v712;
    sub_20CCF3CB0(v539, v712);
    v542 = *(v540 + 48);
    v538(v642, v541, v504);
    v543 = v724;
    (v724)(v541 + v542, v504);
    sub_20CCF3D20(v539, v541, &qword_27C810CF0, &unk_20CD64270);
    v544 = *(v540 + 48);
    v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
    v464 = v642;
    v538(&v642[*(v463 + 36)], (v541 + v544), v504);
    v543(v541, v504);
    goto LABEL_66;
  }

  v468 = v658;
  if (v221 == *MEMORY[0x277D0A2A8])
  {
    v469 = v722;
    (*(v713 + 96))(v219, v722);
    v470 = v726;
    v471 = v727;
    v472 = v653;
    (*(v727 + 32))(v653, v219, v726);
    v473 = v648;
    sub_20CD62564();
    v474 = v651;
    v475 = v728;
    sub_20CD62A34();
    v728 = v475;
    if (v475)
    {
      (*(v276 + 8))(v468, v469);
      (*(v723 + 8))(v473, v720);
      return (*(v471 + 8))(v472, v470);
    }

    v532 = *(v723 + 8);
    v533 = v720;
    v532(v473, v720);
    v534 = v728;
    sub_20CD62A74();
    v535 = (v471 + 8);
    if (v534)
    {
      (*(v713 + 8))(v658, v722);
      v532(v474, v533);
      return (*v535)(v653, v726);
    }

    v724 = v532;
    v728 = 0;
    sub_20CCF3C58();
    v558 = sub_20CD63224();
    (*(v713 + 8))(v658, v722);
    result = (*v535)(v653, v726);
    if ((v558 & 1) == 0)
    {
      goto LABEL_129;
    }

    v559 = *(v723 + 32);
    v560 = v710;
    v561 = v720;
    v559(v710, v640, v720);
    v562 = v711;
    v559((v560 + *(v711 + 48)), v651, v561);
    v563 = v712;
    sub_20CCF3CB0(v560, v712);
    v564 = *(v562 + 48);
    v565 = &v658;
    goto LABEL_110;
  }

  if (v221 != *MEMORY[0x277D0A2C0])
  {
    if (v221 == *MEMORY[0x277D0A298])
    {
      (*(v713 + 96))(v219, v722);
      v258 = v726;
      v512 = v727;
      v513 = v637;
      (*(v727 + 32))(v637, v219, v726);
      v514 = v632;
      sub_20CD625B4();
      v257 = v633;
      sub_20CD62564();
      v235 = *(v512 + 8);
      (v235)(v514, v258);
      v515 = v728;
      sub_20CD62A74();
      v261 = v515;
      if (!v515)
      {
        goto LABEL_106;
      }

      (*(v713 + 8))(v658, v722);
      (*(v723 + 8))(v257, v720);
      v516 = v513;
      v517 = v258;
    }

    else
    {
      if (v221 != *MEMORY[0x277D0A2A0])
      {
        if (v221 != *MEMORY[0x277D0A2F0])
        {
          v574 = v658;
          v575 = v722;
          v220(v217, v658, v722);
          v576 = sub_20CD63264();
          v578 = v577;
          sub_20CCF3C04();
          swift_allocError();
          *v579 = v576;
          v579[1] = v578;
          swift_willThrow();
          v580 = *(v713 + 8);
          v580(v574, v575);
          return (v580)(v219, v575);
        }

        (*(v713 + 96))(v219, v722);
        v724 = *(v727 + 32);
        (v724)(v624, v219, v726);
        sub_20CD62A54();
        sub_20CD62564();
        v566 = v728;
        sub_20CD62A34();
        v728 = v566;
        if (v566)
        {
          (*(v713 + 8))(v658, v722);
          v567 = *(v723 + 8);
          v568 = v720;
          v567(v625, v720);
          v567(v627, v568);
          return (*(v727 + 8))(v624, v726);
        }

        v593 = *(v723 + 8);
        v721 = (v723 + 8);
        v719 = v593;
        (v593)(v625, v720);
        sub_20CCF3C58();
        v594 = sub_20CD63224();
        result = (*(v713 + 8))(v658, v722);
        if (v594)
        {
          v595 = *(v723 + 32);
          v596 = v710;
          v597 = v720;
          v595(v710, v627, v720);
          v598 = v711;
          v595((v596 + *(v711 + 48)), v622, v597);
          v599 = v712;
          sub_20CCF3CB0(v596, v712);
          v600 = *(v598 + 48);
          v595(v616, v599, v597);
          v601 = v719;
          (v719)(v599 + v600, v597);
          sub_20CCF3D20(v596, v599, &qword_27C810CF0, &unk_20CD64270);
          v602 = *(v598 + 48);
          v603 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
          v604 = v616;
          v595(&v616[*(v603 + 36)], (v599 + v602), v597);
          v601(v599, v597);
          (*(*(v603 - 8) + 56))(v604, 0, 1, v603);
          v605 = v725;
          sub_20CCF3D20(v604, v725, &qword_27C810CF8, &unk_20CD64540);
          v606 = *(type metadata accessor for SnapshotQueryRange(0) + 20);
          v607 = v726;
          (v724)(v605 + v606, v624, v726);
          return (*(v727 + 56))(v605 + v606, 0, 1, v607);
        }

        goto LABEL_132;
      }

      (*(v713 + 96))(v219, v722);
      v545 = v726;
      v546 = v727;
      (*(v727 + 32))(v635, v219, v726);
      v547 = v623;
      sub_20CD625B4();
      sub_20CD62564();
      v235 = *(v546 + 8);
      (v235)(v547, v545);
      v548 = v728;
      sub_20CD62A74();
      if (!v548)
      {
        v285 = *(v723 + 8);
        v285(v634, v720);
        v581 = v615;
        sub_20CD625B4();
        sub_20CD62564();
        (v235)(v581, v726);
        sub_20CD62A34();
        v728 = 0;
        goto LABEL_118;
      }

      (*(v713 + 8))(v658, v722);
      (*(v723 + 8))(v634, v720);
      v516 = v635;
      v517 = v726;
    }

    return (v235)(v516, v517);
  }

  (*(v713 + 96))(v219, v722);
  v498 = v726;
  v499 = v727;
  v500 = v644;
  (*(v727 + 32))(v644, v219, v726);
  v501 = v639;
  sub_20CD62564();
  v502 = v728;
  sub_20CD62A34();
  if (v502)
  {
    (*(v276 + 8))(v658, v722);
    (*(v723 + 8))(v501, v720);
    return (*(v499 + 8))(v500, v498);
  }

  v724 = *(v723 + 8);
  (v724)(v501, v720);
  sub_20CD62A74();
  v728 = 0;
  sub_20CCF3C58();
  v572 = sub_20CD63224();
  (*(v713 + 8))(v658, v722);
  result = (*(v499 + 8))(v644, v726);
  if (v572)
  {
    v559 = *(v723 + 32);
    v560 = v710;
    v561 = v720;
    v559(v710, v636, v720);
    v562 = v711;
    v559((v560 + *(v711 + 48)), v646, v561);
    v563 = v712;
    sub_20CCF3CB0(v560, v712);
    v564 = *(v562 + 48);
    v565 = &v649;
LABEL_110:
    v464 = *(v565 - 32);
    v559(v464, v563, v561);
    (v724)(v563 + v564, v561);
    sub_20CCF3D20(v560, v563, &qword_27C810CF0, &unk_20CD64270);
    v573 = *(v562 + 48);
    v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
    v559(&v464[*(v463 + 36)], (v563 + v573), v561);
    (v724)(v563, v561);
    goto LABEL_66;
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

unint64_t sub_20CCF3C04()
{
  result = qword_27C810D00;
  if (!qword_27C810D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C810D00);
  }

  return result;
}

unint64_t sub_20CCF3C58()
{
  result = qword_28110F778;
  if (!qword_28110F778)
  {
    sub_20CD62AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110F778);
  }

  return result;
}

uint64_t sub_20CCF3CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCF3D20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for SnapshotQueryRange(uint64_t a1)
{
  result = qword_27C810D10;
  if (!qword_27C810D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20CCF3DE0(uint64_t a1, int a2)
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

uint64_t sub_20CCF3E28(uint64_t result, int a2, int a3)
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

void sub_20CCF3EA4(uint64_t a1)
{
  sub_20CCF3F28(319);
  if (v1 <= 0x3F)
  {
    sub_20CCF3FD4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20CCF3F28(uint64_t a1)
{
  if (!qword_27C810D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C810D08, &qword_20CD64280);
    v1 = sub_20CD63464();
    if (!v2)
    {
      atomic_store(v1, &qword_27C810D20);
    }
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

void sub_20CCF3FD4(uint64_t a1)
{
  if (!qword_28110F7E0)
  {
    sub_20CD62654();
    v1 = sub_20CD63464();
    if (!v2)
    {
      atomic_store(v1, &qword_28110F7E0);
    }
  }
}

uint64_t sub_20CCF402C()
{
  v1 = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting18ThrottledTaskQueue_priority;
  v2 = sub_20CD63374();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ThrottledTaskQueue(uint64_t a1)
{
  result = qword_27C810D40;
  if (!qword_27C810D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CCF4108(uint64_t a1)
{
  result = sub_20CD63374();
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

uint64_t sub_20CCF41CC(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D68, &qword_20CD643E0);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v5 = sub_20CD63144();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = sub_20CD62E94();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  sub_20CD62CE4();
  v3[25] = swift_task_alloc();
  v3[26] = type metadata accessor for SnapshotQueryRange(0);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
  v3[28] = swift_task_alloc();
  v7 = sub_20CD62EA4();
  v3[29] = v7;
  v3[30] = *(v7 - 8);
  v3[31] = swift_task_alloc();
  v8 = sub_20CD626F4();
  v3[32] = v8;
  v3[33] = *(v8 - 8);
  v3[34] = swift_task_alloc();
  v9 = sub_20CD62654();
  v3[35] = v9;
  v3[36] = *(v9 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v10 = sub_20CD63114();
  v3[43] = v10;
  v3[44] = *(v10 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v11 = sub_20CD63134();
  v3[48] = v11;
  v3[49] = *(v11 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCF4620, 0, 0);
}

uint64_t sub_20CCF4620()
{
  v1 = *(v0 + 51);
  v2 = *(v0 + 48);
  v3 = *(v0 + 49);
  sub_20CD63014();
  sub_20CD63014();
  sub_20CD63124();
  sub_20CD630F4();
  v4 = *(v3 + 8);
  *(v0 + 53) = v4;
  *(v0 + 54) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = sub_20CD63124();
  v6 = sub_20CD63414();
  if (sub_20CD63444())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_20CD63104();
    _os_signpost_emit_with_name_impl(&dword_20CCEA000, v5, v6, v8, "retrieveSnapshots", "", v7, 2u);
    MEMORY[0x20F3115B0](v7, -1, -1);
  }

  v9 = *(v0 + 47);
  v73 = *(v0 + 48);
  v75 = *(v0 + 52);
  v10 = *(v0 + 46);
  v11 = *(v0 + 43);
  v12 = *(v0 + 44);
  v78 = *(v0 + 34);
  v80 = v0;
  v13 = *(v0 + 33);
  v76 = *(v0 + 32);
  v14 = *(v0 + 15);

  (*(v12 + 16))(v10, v9, v11);
  sub_20CD63174();
  swift_allocObject();
  *(v0 + 55) = sub_20CD63164();
  v15 = *(v12 + 8);
  *(v0 + 56) = v15;
  *(v0 + 57) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v9, v11);
  v4(v75, v73);
  sub_20CD62644();
  (*(v13 + 16))(v78, v14, v76);
  v16 = type metadata accessor for SnapshotRetriver(0);
  sub_20CCEE234(v14 + *(v16 + 20), (v0 + 16));
  sub_20CCEE234(v14 + *(v16 + 24), (v0 + 56));
  type metadata accessor for SnapshotRetriverRepresentableProvider(0);
  v17 = swift_allocObject();
  *(v0 + 58) = v17;
  swift_defaultActor_initialize();
  *(v17 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_cache) = MEMORY[0x277D84F98];
  (*(v13 + 32))(v17 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_calendar, v78, v76);
  sub_20CCEE234((v0 + 16), v17 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_healthStore);
  sub_20CCEE234((v0 + 56), v17 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_seymourStore);
  sub_20CCEE234((v0 + 16), v17 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_ringsContainerQuery);
  sub_20CCEC32C((v0 + 56), v17 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_fitnessPlusContainerQuery);
  sub_20CCEC32C(v0 + 1, v17 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_workoutContainerQuery);
  if (qword_28110F1A0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v18 = sub_20CD631B4();
  *(v0 + 59) = __swift_project_value_buffer(v18, qword_28110F878);
  v19 = sub_20CD63194();
  v20 = sub_20CD633D4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_20CCEA000, v19, v20, "[SnapshotRetriever] Spawning queries to fetch representables for today", v21, 2u);
    MEMORY[0x20F3115B0](v21, -1, -1);
  }

  v22 = *(v0 + 36);
  v23 = *(v80 + 30);
  v72 = *(v80 + 26);

  v24 = sub_20CD62CD4();
  v25 = v24 + 56;
  v26 = -1;
  v27 = -1 << *(v24 + 32);
  if (-v27 < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & *(v24 + 56);
  v29 = (63 - v27) >> 6;
  v74 = v23;
  v30 = (v23 + 8);
  v31 = v80;
  v77 = v30;
  v79 = v24;
  v71 = (v22 + 48);
  v67 = v22;
  v68 = (v22 + 32);

  v32 = 0;
  v69 = MEMORY[0x277D84F90];
  v70 = v25;
LABEL_9:
  v33 = v32;
  if (!v28)
  {
    goto LABEL_11;
  }

  do
  {
    v32 = v33;
LABEL_14:
    v34 = *(v31 + 31);
    v35 = *(v31 + 29);
    v36 = *(v31 + 27);
    v0 = v31;
    v37 = *(v31 + 25);
    (*(v74 + 16))(v34, *(v79 + 48) + *(v74 + 72) * (__clz(__rbit64(v28)) | (v32 << 6)), v35);
    sub_20CD1DF2C(&qword_28110F688, MEMORY[0x277D0A458], MEMORY[0x277D0A450]);
    sub_20CD62B14();
    sub_20CCEEFC0(v37, v36);
    v28 &= v28 - 1;
    v38 = *(v0 + 35);
    v39 = *(v0 + 28);
    v40 = *(v0 + 27);
    (*v77)(*(v0 + 31), *(v0 + 29));
    sub_20CD1D9A8(v40 + *(v72 + 20), v39, &qword_27C810CC8, &qword_20CD64160);
    sub_20CD1C87C(v40, type metadata accessor for SnapshotQueryRange);
    if ((*v71)(v39, 1, v38) != 1)
    {
      v41 = *(v0 + 41);
      v66 = *(v0 + 40);
      v42 = *(v0 + 35);
      v43 = *(v0 + 28);
      v0 = *v68;
      (*v68)(v41, v43, v42);
      (v0)(v66, v41, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_20CD527F0(0, v69[2] + 1, 1, v69);
      }

      v45 = v69[2];
      v44 = v69[3];
      v31 = v80;
      if (v45 >= v44 >> 1)
      {
        v69 = sub_20CD527F0((v44 > 1), v45 + 1, 1, v69);
      }

      v46 = *(v80 + 40);
      v47 = *(v80 + 35);
      v69[2] = v45 + 1;
      (v0)(v69 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v45, v46, v47);
      v25 = v70;
      goto LABEL_9;
    }

    sub_20CD1DA10(*(v0 + 28), &qword_27C810CC8, &qword_20CD64160);
    v33 = v32;
    v31 = v0;
    v25 = v70;
  }

  while (v28);
  while (1)
  {
LABEL_11:
    v32 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v32 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v32);
    ++v33;
    if (v28)
    {
      goto LABEL_14;
    }
  }

  v48 = sub_20CD485B8(v69);
  *(v31 + 60) = v48;

  v49 = *(v48 + 32);
  v31[552] = v49;
  v50 = -1;
  v51 = -1 << v49;
  if (-(-1 << v49) < 64)
  {
    v50 = ~(-1 << -(-1 << v49));
  }

  v52 = v50 & *(v48 + 56);
  if (v52)
  {
    v53 = 0;
    v54 = *(v31 + 60);
LABEL_29:
    *(v31 + 63) = v52;
    *(v31 + 64) = v53;
    (*(*(v31 + 36) + 16))(*(v31 + 39), *(v54 + 48) + *(*(v31 + 36) + 72) * (__clz(__rbit64(v52)) | (v53 << 6)), *(v31 + 35));
    sub_20CD62BC4();
    sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
    sub_20CD62C94();
    v57 = swift_task_alloc();
    *(v31 + 65) = v57;
    *v57 = v31;
    v57[1] = sub_20CCF5790;
    v58 = *(v31 + 24);
    v59 = *(v31 + 39);

    return sub_20CD57A94(v59, v58);
  }

  else
  {
    v55 = 0;
    v56 = ((63 - v51) >> 6) - 1;
    v54 = *(v31 + 60);
    while (v56 != v55)
    {
      v53 = v55 + 1;
      v52 = *(v54 + 8 * v55++ + 64);
      if (v52)
      {
        goto LABEL_29;
      }
    }

    v61 = *(v31 + 58);
    v81 = *(v31 + 7);

    v62 = swift_task_alloc();
    *(v31 + 61) = v62;
    *(v62 + 16) = v81;
    *(v62 + 32) = v61;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E58, &qword_20CD64680);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E60, &qword_20CD64688);
    v65 = swift_task_alloc();
    *(v31 + 62) = v65;
    *v65 = v31;
    v65[1] = sub_20CCF515C;

    return MEMORY[0x282200600](v31 + 96, v63, v64, 0, 0, &unk_20CD64678, v62, v63);
  }
}

uint64_t sub_20CCF515C()
{

  return MEMORY[0x2822009F8](sub_20CCF5274, 0, 0);
}

uint64_t sub_20CCF5274(uint64_t a1)
{
  sub_20CD63014();
  v2 = sub_20CD63124();
  sub_20CD63154();
  v3 = sub_20CD63404();
  if (sub_20CD63444())
  {
    v4 = v1[20];
    v5 = v1[21];
    v6 = v1[19];

    sub_20CD63184();

    if ((*(v4 + 88))(v5, v6) == *MEMORY[0x277D85B00])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[20] + 8))(v1[21], v1[19]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_20CD63104();
    _os_signpost_emit_with_name_impl(&dword_20CCEA000, v2, v3, v9, "retrieveSnapshots", v7, v8, 2u);
    MEMORY[0x20F3115B0](v8, -1, -1);
  }

  v41 = v1[56];
  v42 = v1[53];
  v10 = v1[50];
  v11 = v1[48];
  v12 = v1[45];
  v13 = v2;
  v14 = v1[43];
  v44 = v1[38];
  v45 = v1[42];
  v15 = v1[36];
  v43 = v1[35];
  v17 = v1[17];
  v16 = v1[18];
  v18 = v1[16];
  v19 = v1[14];

  v41(v12, v14);
  v42(v10, v11);
  (*(v17 + 16))(v16, v19, v18);
  (*(v15 + 16))(v44, v45, v43);
  v20 = sub_20CD63194();
  v21 = sub_20CD633D4();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v1[38];
  if (v22)
  {
    v25 = v1[36];
    v24 = v1[37];
    v46 = v1[35];
    v47 = v21;
    v27 = v1[17];
    v26 = v1[18];
    v28 = v1[16];
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    v30 = v23;
    v31 = *(sub_20CD62CD4() + 16);

    (*(v27 + 8))(v26, v28);
    *(v29 + 4) = v31;
    *(v29 + 12) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v33 = v32;
    v34 = *(v25 + 8);
    v34(v24, v46);
    v34(v30, v46);
    *(v29 + 14) = v33;
    _os_log_impl(&dword_20CCEA000, v20, v47, "[SnapshotRetriever] All %ld queries executed. Total duration: %fs", v29, 0x16u);
    MEMORY[0x20F3115B0](v29, -1, -1);
  }

  else
  {
    v35 = v1[35];
    v36 = v1[36];
    (*(v1[17] + 8))(v1[18], v1[16]);

    v34 = *(v36 + 8);
    v34(v23, v35);
  }

  v37 = v1[42];
  v38 = v1[35];
  sub_20CD62BC4();
  sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
  sub_20CD62D34();

  v34(v37, v38);

  v39 = v1[1];

  return v39();
}

uint64_t sub_20CCF5790(uint64_t a1)
{
  v3 = *v2;
  v3[66] = v1;

  v4 = v3[39];
  v5 = v3[36];
  v6 = v3[35];
  v7 = v3[24];
  v8 = v3[23];
  v9 = v3[22];
  if (v1)
  {
    (*(v8 + 8))(v3[24], v3[22]);
    v10 = *(v5 + 8);
    v3[67] = v10;
    v3[68] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v6);
    v11 = sub_20CD1DFA0;
  }

  else
  {

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    v11 = sub_20CCF59B8;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_20CCF59B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 512);
  v10 = (*(v8 + 504) - 1) & *(v8 + 504);
  if (v10)
  {
    v11 = *(v8 + 480);
LABEL_7:
    *(v8 + 504) = v10;
    *(v8 + 512) = v9;
    (*(*(v8 + 288) + 16))(*(v8 + 312), *(v11 + 48) + *(*(v8 + 288) + 72) * (__clz(__rbit64(v10)) | (v9 << 6)), *(v8 + 280), a4, a5, a6, a7, a8);
    sub_20CD62BC4();
    sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
    sub_20CD62C94();
    v13 = swift_task_alloc();
    *(v8 + 520) = v13;
    *v13 = v8;
    v13[1] = sub_20CCF5790;
    v14 = *(v8 + 312);
    v15 = *(v8 + 192);

    return sub_20CD57A94(v14, v15);
  }

  else
  {
    while (1)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return MEMORY[0x282200600](a1, a2, a3, a4, a5, a6, a7, a8);
      }

      if (v12 >= (((1 << *(v8 + 552)) + 63) >> 6))
      {
        break;
      }

      v11 = *(v8 + 480);
      v10 = *(v11 + 8 * v12 + 56);
      ++v9;
      if (v10)
      {
        v9 = v12;
        goto LABEL_7;
      }
    }

    v17 = *(v8 + 464);
    v22 = *(v8 + 112);

    v18 = swift_task_alloc();
    *(v8 + 488) = v18;
    *(v18 + 16) = v22;
    *(v18 + 32) = v17;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E58, &qword_20CD64680);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E60, &qword_20CD64688);
    v21 = swift_task_alloc();
    *(v8 + 496) = v21;
    *v21 = v8;
    v21[1] = sub_20CCF515C;
    a6 = &unk_20CD64678;
    a1 = v8 + 96;
    a2 = v19;
    a3 = v20;
    a4 = 0;
    a5 = 0;
    a7 = v18;
    a8 = v19;

    return MEMORY[0x282200600](a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_20CCF5C44(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D78, &qword_20CD64400);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v5 = sub_20CD63144();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = sub_20CD62E94();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  sub_20CD62CE4();
  v3[25] = swift_task_alloc();
  v3[26] = type metadata accessor for SnapshotQueryRange(0);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
  v3[28] = swift_task_alloc();
  v7 = sub_20CD62D24();
  v3[29] = v7;
  v3[30] = *(v7 - 8);
  v3[31] = swift_task_alloc();
  v8 = sub_20CD626F4();
  v3[32] = v8;
  v3[33] = *(v8 - 8);
  v3[34] = swift_task_alloc();
  v9 = sub_20CD62654();
  v3[35] = v9;
  v3[36] = *(v9 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v10 = sub_20CD63114();
  v3[43] = v10;
  v3[44] = *(v10 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v11 = sub_20CD63134();
  v3[48] = v11;
  v3[49] = *(v11 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCF6098, 0, 0);
}

uint64_t sub_20CCF6098(uint64_t a1)
{
  v2 = *(v1 + 51);
  v3 = *(v1 + 48);
  v4 = *(v1 + 49);
  sub_20CD63014();
  sub_20CD63014();
  sub_20CD63124();
  sub_20CD630F4();
  v5 = *(v4 + 8);
  *(v1 + 53) = v5;
  *(v1 + 54) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  v6 = sub_20CD63124();
  v7 = sub_20CD63414();
  if (sub_20CD63444())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_20CD63104();
    _os_signpost_emit_with_name_impl(&dword_20CCEA000, v6, v7, v9, "retrieveSnapshots", "", v8, 2u);
    MEMORY[0x20F3115B0](v8, -1, -1);
  }

  v10 = *(v1 + 47);
  v74 = *(v1 + 48);
  v76 = *(v1 + 52);
  v11 = *(v1 + 46);
  v12 = *(v1 + 43);
  v13 = *(v1 + 44);
  v79 = *(v1 + 34);
  v81 = v1;
  v14 = *(v1 + 33);
  v77 = *(v1 + 32);
  v15 = *(v1 + 15);

  (*(v13 + 16))(v11, v10, v12);
  sub_20CD63174();
  swift_allocObject();
  *(v1 + 55) = sub_20CD63164();
  v16 = *(v13 + 8);
  *(v1 + 56) = v16;
  *(v1 + 57) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v12);
  v5(v76, v74);
  sub_20CD62644();
  (*(v14 + 16))(v79, v15, v77);
  v17 = type metadata accessor for SnapshotRetriver(0);
  sub_20CCEE234(v15 + *(v17 + 20), (v1 + 16));
  sub_20CCEE234(v15 + *(v17 + 24), (v1 + 56));
  type metadata accessor for SnapshotRetriverRepresentableProvider(0);
  v18 = swift_allocObject();
  *(v1 + 58) = v18;
  swift_defaultActor_initialize();
  *(v18 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_cache) = MEMORY[0x277D84F98];
  (*(v14 + 32))(v18 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_calendar, v79, v77);
  sub_20CCEE234((v1 + 16), v18 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_healthStore);
  sub_20CCEE234((v1 + 56), v18 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_seymourStore);
  sub_20CCEE234((v1 + 16), v18 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_ringsContainerQuery);
  sub_20CCEC32C((v1 + 56), v18 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_fitnessPlusContainerQuery);
  sub_20CCEC32C(v1 + 1, v18 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_workoutContainerQuery);
  if (qword_28110F1A0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v19 = sub_20CD631B4();
  *(v1 + 59) = __swift_project_value_buffer(v19, qword_28110F878);
  v20 = sub_20CD63194();
  v21 = sub_20CD633D4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_20CCEA000, v20, v21, "[SnapshotRetriever] Spawning queries to fetch representables for today", v22, 2u);
    MEMORY[0x20F3115B0](v22, -1, -1);
  }

  v23 = *(v1 + 36);
  v24 = *(v81 + 30);
  v73 = *(v81 + 26);

  v25 = sub_20CD62CD4();
  v26 = v25 + 56;
  v27 = -1;
  v28 = -1 << *(v25 + 32);
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & *(v25 + 56);
  v30 = (63 - v28) >> 6;
  v75 = v24;
  v31 = (v24 + 8);
  v32 = v81;
  v78 = v31;
  v80 = v25;
  v72 = (v23 + 48);
  v68 = v23;
  v69 = (v23 + 32);

  v33 = 0;
  v70 = MEMORY[0x277D84F90];
  v71 = v26;
LABEL_9:
  v34 = v33;
  if (!v29)
  {
    goto LABEL_11;
  }

  do
  {
    v33 = v34;
LABEL_14:
    v35 = *(v32 + 31);
    v36 = *(v32 + 29);
    v37 = *(v32 + 27);
    v1 = v32;
    v38 = *(v32 + 25);
    (*(v75 + 16))(v35, *(v80 + 48) + *(v75 + 72) * (__clz(__rbit64(v29)) | (v33 << 6)), v36);
    sub_20CD1DF2C(&qword_28110F6E0, MEMORY[0x277D0A388], MEMORY[0x277D0A380]);
    sub_20CD62B14();
    sub_20CCEEFC0(v38, v37);
    v29 &= v29 - 1;
    v39 = *(v1 + 35);
    v40 = *(v1 + 28);
    v41 = *(v1 + 27);
    (*v78)(*(v1 + 31), *(v1 + 29));
    sub_20CD1D9A8(v41 + *(v73 + 20), v40, &qword_27C810CC8, &qword_20CD64160);
    sub_20CD1C87C(v41, type metadata accessor for SnapshotQueryRange);
    if ((*v72)(v40, 1, v39) != 1)
    {
      v42 = *(v1 + 41);
      v67 = *(v1 + 40);
      v43 = *(v1 + 35);
      v44 = *(v1 + 28);
      v1 = *v69;
      (*v69)(v42, v44, v43);
      (v1)(v67, v42, v43);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_20CD527F0(0, v70[2] + 1, 1, v70);
      }

      v46 = v70[2];
      v45 = v70[3];
      v32 = v81;
      if (v46 >= v45 >> 1)
      {
        v70 = sub_20CD527F0((v45 > 1), v46 + 1, 1, v70);
      }

      v47 = *(v81 + 40);
      v48 = *(v81 + 35);
      v70[2] = v46 + 1;
      (v1)(v70 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v46, v47, v48);
      v26 = v71;
      goto LABEL_9;
    }

    sub_20CD1DA10(*(v1 + 28), &qword_27C810CC8, &qword_20CD64160);
    v34 = v33;
    v32 = v1;
    v26 = v71;
  }

  while (v29);
  while (1)
  {
LABEL_11:
    v33 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v33 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v33);
    ++v34;
    if (v29)
    {
      goto LABEL_14;
    }
  }

  v49 = sub_20CD485B8(v70);
  *(v32 + 60) = v49;

  v50 = *(v49 + 32);
  v32[552] = v50;
  v51 = -1;
  v52 = -1 << v50;
  if (-(-1 << v50) < 64)
  {
    v51 = ~(-1 << -(-1 << v50));
  }

  v53 = v51 & *(v49 + 56);
  if (v53)
  {
    v54 = 0;
    v55 = *(v32 + 60);
LABEL_29:
    *(v32 + 63) = v53;
    *(v32 + 64) = v54;
    (*(*(v32 + 36) + 16))(*(v32 + 39), *(v55 + 48) + *(*(v32 + 36) + 72) * (__clz(__rbit64(v53)) | (v54 << 6)), *(v32 + 35));
    sub_20CD62B44();
    sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
    sub_20CD62C94();
    v58 = swift_task_alloc();
    *(v32 + 65) = v58;
    *v58 = v32;
    v58[1] = sub_20CCF7208;
    v59 = *(v32 + 24);
    v60 = *(v32 + 39);

    return sub_20CD57A94(v60, v59);
  }

  else
  {
    v56 = 0;
    v57 = ((63 - v52) >> 6) - 1;
    v55 = *(v32 + 60);
    while (v57 != v56)
    {
      v54 = v56 + 1;
      v53 = *(v55 + 8 * v56++ + 64);
      if (v53)
      {
        goto LABEL_29;
      }
    }

    v62 = *(v32 + 58);
    v82 = *(v32 + 7);

    v63 = swift_task_alloc();
    *(v32 + 61) = v63;
    *(v63 + 16) = v82;
    *(v63 + 32) = v62;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E08, &qword_20CD645C0);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E10, &qword_20CD645C8);
    v66 = swift_task_alloc();
    *(v32 + 62) = v66;
    *v66 = v32;
    v66[1] = sub_20CCF6BD4;

    return MEMORY[0x282200600](v32 + 96, v64, v65, 0, 0, &unk_20CD645B8, v63, v64);
  }
}

uint64_t sub_20CCF6BD4()
{

  return MEMORY[0x2822009F8](sub_20CCF6CEC, 0, 0);
}

uint64_t sub_20CCF6CEC(uint64_t a1)
{
  sub_20CD63014();
  v2 = sub_20CD63124();
  sub_20CD63154();
  v3 = sub_20CD63404();
  if (sub_20CD63444())
  {
    v4 = v1[20];
    v5 = v1[21];
    v6 = v1[19];

    sub_20CD63184();

    if ((*(v4 + 88))(v5, v6) == *MEMORY[0x277D85B00])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[20] + 8))(v1[21], v1[19]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_20CD63104();
    _os_signpost_emit_with_name_impl(&dword_20CCEA000, v2, v3, v9, "retrieveSnapshots", v7, v8, 2u);
    MEMORY[0x20F3115B0](v8, -1, -1);
  }

  v41 = v1[56];
  v42 = v1[53];
  v10 = v1[50];
  v11 = v1[48];
  v12 = v1[45];
  v13 = v2;
  v14 = v1[43];
  v44 = v1[38];
  v45 = v1[42];
  v15 = v1[36];
  v43 = v1[35];
  v17 = v1[17];
  v16 = v1[18];
  v18 = v1[16];
  v19 = v1[14];

  v41(v12, v14);
  v42(v10, v11);
  (*(v17 + 16))(v16, v19, v18);
  (*(v15 + 16))(v44, v45, v43);
  v20 = sub_20CD63194();
  v21 = sub_20CD633D4();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v1[38];
  if (v22)
  {
    v25 = v1[36];
    v24 = v1[37];
    v46 = v1[35];
    v47 = v21;
    v27 = v1[17];
    v26 = v1[18];
    v28 = v1[16];
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    v30 = v23;
    v31 = *(sub_20CD62CD4() + 16);

    (*(v27 + 8))(v26, v28);
    *(v29 + 4) = v31;
    *(v29 + 12) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v33 = v32;
    v34 = *(v25 + 8);
    v34(v24, v46);
    v34(v30, v46);
    *(v29 + 14) = v33;
    _os_log_impl(&dword_20CCEA000, v20, v47, "[SnapshotRetriever] All %ld queries executed. Total duration: %fs", v29, 0x16u);
    MEMORY[0x20F3115B0](v29, -1, -1);
  }

  else
  {
    v35 = v1[35];
    v36 = v1[36];
    (*(v1[17] + 8))(v1[18], v1[16]);

    v34 = *(v36 + 8);
    v34(v23, v35);
  }

  v37 = v1[42];
  v38 = v1[35];
  sub_20CD62B44();
  sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
  sub_20CD62D34();

  v34(v37, v38);

  v39 = v1[1];

  return v39();
}

uint64_t sub_20CCF7208(uint64_t a1)
{
  v3 = *v2;
  v3[66] = v1;

  v4 = v3[39];
  v5 = v3[36];
  v6 = v3[35];
  v7 = v3[24];
  v8 = v3[23];
  v9 = v3[22];
  if (v1)
  {
    (*(v8 + 8))(v3[24], v3[22]);
    v10 = *(v5 + 8);
    v3[67] = v10;
    v3[68] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v6);
    v11 = sub_20CCF76BC;
  }

  else
  {

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    v11 = sub_20CCF7430;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_20CCF7430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 512);
  v10 = (*(v8 + 504) - 1) & *(v8 + 504);
  if (v10)
  {
    v11 = *(v8 + 480);
LABEL_7:
    *(v8 + 504) = v10;
    *(v8 + 512) = v9;
    (*(*(v8 + 288) + 16))(*(v8 + 312), *(v11 + 48) + *(*(v8 + 288) + 72) * (__clz(__rbit64(v10)) | (v9 << 6)), *(v8 + 280), a4, a5, a6, a7, a8);
    sub_20CD62B44();
    sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
    sub_20CD62C94();
    v13 = swift_task_alloc();
    *(v8 + 520) = v13;
    *v13 = v8;
    v13[1] = sub_20CCF7208;
    v14 = *(v8 + 312);
    v15 = *(v8 + 192);

    return sub_20CD57A94(v14, v15);
  }

  else
  {
    while (1)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return MEMORY[0x282200600](a1, a2, a3, a4, a5, a6, a7, a8);
      }

      if (v12 >= (((1 << *(v8 + 552)) + 63) >> 6))
      {
        break;
      }

      v11 = *(v8 + 480);
      v10 = *(v11 + 8 * v12 + 56);
      ++v9;
      if (v10)
      {
        v9 = v12;
        goto LABEL_7;
      }
    }

    v17 = *(v8 + 464);
    v22 = *(v8 + 112);

    v18 = swift_task_alloc();
    *(v8 + 488) = v18;
    *(v18 + 16) = v22;
    *(v18 + 32) = v17;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E08, &qword_20CD645C0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E10, &qword_20CD645C8);
    v21 = swift_task_alloc();
    *(v8 + 496) = v21;
    *v21 = v8;
    v21[1] = sub_20CCF6BD4;
    a6 = &unk_20CD645B8;
    a1 = v8 + 96;
    a2 = v19;
    a3 = v20;
    a4 = 0;
    a5 = 0;
    a7 = v18;
    a8 = v19;

    return MEMORY[0x282200600](a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_20CCF76BC()
{
  v1 = v0[67];
  v2 = v0[42];
  v3 = v0[35];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20CCF7860(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D88, &qword_20CD64420);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v5 = sub_20CD63144();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = sub_20CD62E94();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  sub_20CD62CE4();
  v3[25] = swift_task_alloc();
  v3[26] = type metadata accessor for SnapshotQueryRange(0);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
  v3[28] = swift_task_alloc();
  v7 = sub_20CD62994();
  v3[29] = v7;
  v3[30] = *(v7 - 8);
  v3[31] = swift_task_alloc();
  v8 = sub_20CD626F4();
  v3[32] = v8;
  v3[33] = *(v8 - 8);
  v3[34] = swift_task_alloc();
  v9 = sub_20CD62654();
  v3[35] = v9;
  v3[36] = *(v9 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v10 = sub_20CD63114();
  v3[43] = v10;
  v3[44] = *(v10 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v11 = sub_20CD63134();
  v3[48] = v11;
  v3[49] = *(v11 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCF7CB4, 0, 0);
}

uint64_t sub_20CCF7CB4(uint64_t a1)
{
  v2 = *(v1 + 51);
  v3 = *(v1 + 48);
  v4 = *(v1 + 49);
  sub_20CD63014();
  sub_20CD63014();
  sub_20CD63124();
  sub_20CD630F4();
  v5 = *(v4 + 8);
  *(v1 + 53) = v5;
  *(v1 + 54) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  v6 = sub_20CD63124();
  v7 = sub_20CD63414();
  if (sub_20CD63444())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_20CD63104();
    _os_signpost_emit_with_name_impl(&dword_20CCEA000, v6, v7, v9, "retrieveSnapshots", "", v8, 2u);
    MEMORY[0x20F3115B0](v8, -1, -1);
  }

  v10 = *(v1 + 47);
  v74 = *(v1 + 48);
  v76 = *(v1 + 52);
  v11 = *(v1 + 46);
  v12 = *(v1 + 43);
  v13 = *(v1 + 44);
  v79 = *(v1 + 34);
  v81 = v1;
  v14 = *(v1 + 33);
  v77 = *(v1 + 32);
  v15 = *(v1 + 15);

  (*(v13 + 16))(v11, v10, v12);
  sub_20CD63174();
  swift_allocObject();
  *(v1 + 55) = sub_20CD63164();
  v16 = *(v13 + 8);
  *(v1 + 56) = v16;
  *(v1 + 57) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v12);
  v5(v76, v74);
  sub_20CD62644();
  (*(v14 + 16))(v79, v15, v77);
  v17 = type metadata accessor for SnapshotRetriver(0);
  sub_20CCEE234(v15 + *(v17 + 20), (v1 + 16));
  sub_20CCEE234(v15 + *(v17 + 24), (v1 + 56));
  type metadata accessor for SnapshotRetriverRepresentableProvider(0);
  v18 = swift_allocObject();
  *(v1 + 58) = v18;
  swift_defaultActor_initialize();
  *(v18 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_cache) = MEMORY[0x277D84F98];
  (*(v14 + 32))(v18 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_calendar, v79, v77);
  sub_20CCEE234((v1 + 16), v18 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_healthStore);
  sub_20CCEE234((v1 + 56), v18 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_seymourStore);
  sub_20CCEE234((v1 + 16), v18 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_ringsContainerQuery);
  sub_20CCEC32C((v1 + 56), v18 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_fitnessPlusContainerQuery);
  sub_20CCEC32C(v1 + 1, v18 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_workoutContainerQuery);
  if (qword_28110F1A0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v19 = sub_20CD631B4();
  *(v1 + 59) = __swift_project_value_buffer(v19, qword_28110F878);
  v20 = sub_20CD63194();
  v21 = sub_20CD633D4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_20CCEA000, v20, v21, "[SnapshotRetriever] Spawning queries to fetch representables for today", v22, 2u);
    MEMORY[0x20F3115B0](v22, -1, -1);
  }

  v23 = *(v1 + 36);
  v24 = *(v81 + 30);
  v73 = *(v81 + 26);

  v25 = sub_20CD62CD4();
  v26 = v25 + 56;
  v27 = -1;
  v28 = -1 << *(v25 + 32);
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & *(v25 + 56);
  v30 = (63 - v28) >> 6;
  v75 = v24;
  v31 = (v24 + 8);
  v32 = v81;
  v78 = v31;
  v80 = v25;
  v72 = (v23 + 48);
  v68 = v23;
  v69 = (v23 + 32);

  v33 = 0;
  v70 = MEMORY[0x277D84F90];
  v71 = v26;
LABEL_9:
  v34 = v33;
  if (!v29)
  {
    goto LABEL_11;
  }

  do
  {
    v33 = v34;
LABEL_14:
    v35 = *(v32 + 31);
    v36 = *(v32 + 29);
    v37 = *(v32 + 27);
    v1 = v32;
    v38 = *(v32 + 25);
    (*(v75 + 16))(v35, *(v80 + 48) + *(v75 + 72) * (__clz(__rbit64(v29)) | (v33 << 6)), v36);
    sub_20CD1DF2C(&qword_28110F7A8, MEMORY[0x277D09F18], MEMORY[0x277D09F10]);
    sub_20CD62B14();
    sub_20CCEEFC0(v38, v37);
    v29 &= v29 - 1;
    v39 = *(v1 + 35);
    v40 = *(v1 + 28);
    v41 = *(v1 + 27);
    (*v78)(*(v1 + 31), *(v1 + 29));
    sub_20CD1D9A8(v41 + *(v73 + 20), v40, &qword_27C810CC8, &qword_20CD64160);
    sub_20CD1C87C(v41, type metadata accessor for SnapshotQueryRange);
    if ((*v72)(v40, 1, v39) != 1)
    {
      v42 = *(v1 + 41);
      v67 = *(v1 + 40);
      v43 = *(v1 + 35);
      v44 = *(v1 + 28);
      v1 = *v69;
      (*v69)(v42, v44, v43);
      (v1)(v67, v42, v43);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_20CD527F0(0, v70[2] + 1, 1, v70);
      }

      v46 = v70[2];
      v45 = v70[3];
      v32 = v81;
      if (v46 >= v45 >> 1)
      {
        v70 = sub_20CD527F0((v45 > 1), v46 + 1, 1, v70);
      }

      v47 = *(v81 + 40);
      v48 = *(v81 + 35);
      v70[2] = v46 + 1;
      (v1)(v70 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v46, v47, v48);
      v26 = v71;
      goto LABEL_9;
    }

    sub_20CD1DA10(*(v1 + 28), &qword_27C810CC8, &qword_20CD64160);
    v34 = v33;
    v32 = v1;
    v26 = v71;
  }

  while (v29);
  while (1)
  {
LABEL_11:
    v33 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v33 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v33);
    ++v34;
    if (v29)
    {
      goto LABEL_14;
    }
  }

  v49 = sub_20CD485B8(v70);
  *(v32 + 60) = v49;

  v50 = *(v49 + 32);
  v32[552] = v50;
  v51 = -1;
  v52 = -1 << v50;
  if (-(-1 << v50) < 64)
  {
    v51 = ~(-1 << -(-1 << v50));
  }

  v53 = v51 & *(v49 + 56);
  if (v53)
  {
    v54 = 0;
    v55 = *(v32 + 60);
LABEL_29:
    *(v32 + 63) = v53;
    *(v32 + 64) = v54;
    (*(*(v32 + 36) + 16))(*(v32 + 39), *(v55 + 48) + *(*(v32 + 36) + 72) * (__clz(__rbit64(v53)) | (v54 << 6)), *(v32 + 35));
    sub_20CD62954();
    sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
    sub_20CD62C94();
    v58 = swift_task_alloc();
    *(v32 + 65) = v58;
    *v58 = v32;
    v58[1] = sub_20CCF8E24;
    v59 = *(v32 + 24);
    v60 = *(v32 + 39);

    return sub_20CD57A94(v60, v59);
  }

  else
  {
    v56 = 0;
    v57 = ((63 - v52) >> 6) - 1;
    v55 = *(v32 + 60);
    while (v57 != v56)
    {
      v54 = v56 + 1;
      v53 = *(v55 + 8 * v56++ + 64);
      if (v53)
      {
        goto LABEL_29;
      }
    }

    v62 = *(v32 + 58);
    v82 = *(v32 + 7);

    v63 = swift_task_alloc();
    *(v32 + 61) = v63;
    *(v63 + 16) = v82;
    *(v63 + 32) = v62;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DA0, &unk_20CD64E70);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DA8, &qword_20CD644D0);
    v66 = swift_task_alloc();
    *(v32 + 62) = v66;
    *v66 = v32;
    v66[1] = sub_20CCF87F0;

    return MEMORY[0x282200600](v32 + 96, v64, v65, 0, 0, &unk_20CD644C0, v63, v64);
  }
}

uint64_t sub_20CCF87F0()
{

  return MEMORY[0x2822009F8](sub_20CCF8908, 0, 0);
}

uint64_t sub_20CCF8908(uint64_t a1)
{
  sub_20CD63014();
  v2 = sub_20CD63124();
  sub_20CD63154();
  v3 = sub_20CD63404();
  if (sub_20CD63444())
  {
    v4 = v1[20];
    v5 = v1[21];
    v6 = v1[19];

    sub_20CD63184();

    if ((*(v4 + 88))(v5, v6) == *MEMORY[0x277D85B00])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[20] + 8))(v1[21], v1[19]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_20CD63104();
    _os_signpost_emit_with_name_impl(&dword_20CCEA000, v2, v3, v9, "retrieveSnapshots", v7, v8, 2u);
    MEMORY[0x20F3115B0](v8, -1, -1);
  }

  v41 = v1[56];
  v42 = v1[53];
  v10 = v1[50];
  v11 = v1[48];
  v12 = v1[45];
  v13 = v2;
  v14 = v1[43];
  v44 = v1[38];
  v45 = v1[42];
  v15 = v1[36];
  v43 = v1[35];
  v17 = v1[17];
  v16 = v1[18];
  v18 = v1[16];
  v19 = v1[14];

  v41(v12, v14);
  v42(v10, v11);
  (*(v17 + 16))(v16, v19, v18);
  (*(v15 + 16))(v44, v45, v43);
  v20 = sub_20CD63194();
  v21 = sub_20CD633D4();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v1[38];
  if (v22)
  {
    v25 = v1[36];
    v24 = v1[37];
    v46 = v1[35];
    v47 = v21;
    v27 = v1[17];
    v26 = v1[18];
    v28 = v1[16];
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    v30 = v23;
    v31 = *(sub_20CD62CD4() + 16);

    (*(v27 + 8))(v26, v28);
    *(v29 + 4) = v31;
    *(v29 + 12) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v33 = v32;
    v34 = *(v25 + 8);
    v34(v24, v46);
    v34(v30, v46);
    *(v29 + 14) = v33;
    _os_log_impl(&dword_20CCEA000, v20, v47, "[SnapshotRetriever] All %ld queries executed. Total duration: %fs", v29, 0x16u);
    MEMORY[0x20F3115B0](v29, -1, -1);
  }

  else
  {
    v35 = v1[35];
    v36 = v1[36];
    (*(v1[17] + 8))(v1[18], v1[16]);

    v34 = *(v36 + 8);
    v34(v23, v35);
  }

  v37 = v1[42];
  v38 = v1[35];
  sub_20CD62954();
  sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
  sub_20CD62D34();

  v34(v37, v38);

  v39 = v1[1];

  return v39();
}

uint64_t sub_20CCF8E24(uint64_t a1)
{
  v3 = *v2;
  v3[66] = v1;

  v4 = v3[39];
  v5 = v3[36];
  v6 = v3[35];
  v7 = v3[24];
  v8 = v3[23];
  v9 = v3[22];
  if (v1)
  {
    (*(v8 + 8))(v3[24], v3[22]);
    v10 = *(v5 + 8);
    v3[67] = v10;
    v3[68] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v6);
    v11 = sub_20CD1DFA0;
  }

  else
  {

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    v11 = sub_20CCF904C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_20CCF904C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 512);
  v10 = (*(v8 + 504) - 1) & *(v8 + 504);
  if (v10)
  {
    v11 = *(v8 + 480);
LABEL_7:
    *(v8 + 504) = v10;
    *(v8 + 512) = v9;
    (*(*(v8 + 288) + 16))(*(v8 + 312), *(v11 + 48) + *(*(v8 + 288) + 72) * (__clz(__rbit64(v10)) | (v9 << 6)), *(v8 + 280), a4, a5, a6, a7, a8);
    sub_20CD62954();
    sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
    sub_20CD62C94();
    v13 = swift_task_alloc();
    *(v8 + 520) = v13;
    *v13 = v8;
    v13[1] = sub_20CCF8E24;
    v14 = *(v8 + 312);
    v15 = *(v8 + 192);

    return sub_20CD57A94(v14, v15);
  }

  else
  {
    while (1)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return MEMORY[0x282200600](a1, a2, a3, a4, a5, a6, a7, a8);
      }

      if (v12 >= (((1 << *(v8 + 552)) + 63) >> 6))
      {
        break;
      }

      v11 = *(v8 + 480);
      v10 = *(v11 + 8 * v12 + 56);
      ++v9;
      if (v10)
      {
        v9 = v12;
        goto LABEL_7;
      }
    }

    v17 = *(v8 + 464);
    v22 = *(v8 + 112);

    v18 = swift_task_alloc();
    *(v8 + 488) = v18;
    *(v18 + 16) = v22;
    *(v18 + 32) = v17;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DA0, &unk_20CD64E70);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DA8, &qword_20CD644D0);
    v21 = swift_task_alloc();
    *(v8 + 496) = v21;
    *v21 = v8;
    v21[1] = sub_20CCF87F0;
    a6 = &unk_20CD644C0;
    a1 = v8 + 96;
    a2 = v19;
    a3 = v20;
    a4 = 0;
    a5 = 0;
    a7 = v18;
    a8 = v19;

    return MEMORY[0x282200600](a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_20CCF92D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E68, &qword_20CD64698);
  v4[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E58, &qword_20CD64680);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = *(type metadata accessor for SnapshotRetriver(0) - 8);
  v4[18] = v6;
  v4[19] = *(v6 + 64);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v7 = sub_20CD62EA4();
  v4[23] = v7;
  v8 = *(v7 - 8);
  v4[24] = v8;
  v4[25] = *(v8 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCF9500, 0, 0);
}

uint64_t sub_20CCF9500()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v37 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D68, &qword_20CD643E0);
  v3 = sub_20CD62CD4();
  v7 = 0;
  v8 = v3 + 56;
  v9 = -1;
  v10 = -1 << *(v3 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v3 + 56);
  v12 = (63 - v10) >> 6;
  v34 = v1 + 7;
  v35 = v12;
  v36 = v3 + 56;
  while (v11)
  {
LABEL_10:
    v15 = *(v0 + 208);
    v38 = *(v0 + 216);
    v16 = *(v0 + 176);
    v17 = *(v0 + 184);
    v42 = v16;
    v18 = *(v0 + 160);
    v45 = *(v0 + 168);
    v40 = v18;
    v19 = *(v0 + 88);
    v43 = *(v0 + 152);
    v44 = *(v0 + 96);
    v39 = v17;
    (*(v2 + 16))();
    v20 = sub_20CD63374();
    v41 = *(v20 - 8);
    (*(v41 + 56))(v16, 1, 1, v20);
    sub_20CD1C9AC(v19, v18, type metadata accessor for SnapshotRetriver);
    v21 = *(v2 + 32);
    v21(v15, v38, v17);
    v22 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v23 = (v43 + *(v2 + 80) + v22) & ~*(v2 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    sub_20CD1C0A0(v40, v24 + v22, type metadata accessor for SnapshotRetriver);
    v21(v24 + v23, v15, v39);
    *(v24 + ((v34 + v23) & 0xFFFFFFFFFFFFFFF8)) = v44;
    sub_20CD1D9A8(v42, v45, &qword_27C811360, &qword_20CD653E0);
    LODWORD(v21) = (*(v41 + 48))(v45, 1, v20);

    v25 = *(v0 + 168);
    if (v21 == 1)
    {
      sub_20CD1DA10(*(v0 + 168), &qword_27C811360, &qword_20CD653E0);
    }

    else
    {
      sub_20CD63364();
      (*(v41 + 8))(v25, v20);
    }

    if (*(v24 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = sub_20CD63314();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = **(v0 + 72);
    v30 = swift_allocObject();
    *(v30 + 16) = &unk_20CD646A8;
    *(v30 + 24) = v24;
    v31 = v28 | v26;
    if (v28 | v26)
    {
      v31 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v26;
      *(v0 + 40) = v28;
    }

    v11 &= v11 - 1;
    v13 = *(v0 + 176);
    *(v0 + 48) = 1;
    *(v0 + 56) = v31;
    *(v0 + 64) = v29;
    swift_task_create();

    v3 = sub_20CD1DA10(v13, &qword_27C811360, &qword_20CD653E0);
    v12 = v35;
    v8 = v36;
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return MEMORY[0x2822002D0](v3, v4, v5, v6);
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v7;
    if (v11)
    {
      v7 = v14;
      goto LABEL_10;
    }
  }

  *(v0 + 224) = MEMORY[0x277D84F90];
  v32 = swift_task_alloc();
  *(v0 + 232) = v32;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E70, &qword_20CD646C0);
  *v32 = v0;
  v32[1] = sub_20CCF99E4;
  v3 = *(v0 + 104);
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822002D0](v3, v4, v5, v6);
}

uint64_t sub_20CCF99E4()
{

  return MEMORY[0x2822009F8](sub_20CCF9AE0, 0, 0);
}

uint64_t sub_20CCF9AE0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20CD1DA10(v3, &qword_27C810E68, &qword_20CD64698);

    v4 = v0[1];
    v5 = v0[28];

    return v4(v5);
  }

  else
  {
    v8 = v0[16];
    v7 = v0[17];
    v9 = *(v2 + 32);
    v9(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v0[28];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_20CD527CC(0, v11[2] + 1, 1, v0[28]);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_20CD527CC((v12 > 1), v13 + 1, 1, v11);
    }

    v14 = v0[16];
    v15 = v0[14];
    v16 = v0[15];
    (*(v16 + 8))(v0[17], v15);
    v11[2] = v13 + 1;
    v9(v11 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v13, v14, v15);
    v0[28] = v11;
    v17 = swift_task_alloc();
    v0[29] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E70, &qword_20CD646C0);
    *v17 = v0;
    v17[1] = sub_20CCF99E4;
    v19 = v0[13];

    return MEMORY[0x2822002D0](v19, 0, 0, v18);
  }
}

uint64_t sub_20CCF9D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E18, &qword_20CD645D8);
  v4[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E08, &qword_20CD645C0);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = *(type metadata accessor for SnapshotRetriver(0) - 8);
  v4[18] = v6;
  v4[19] = *(v6 + 64);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v7 = sub_20CD62D24();
  v4[23] = v7;
  v8 = *(v7 - 8);
  v4[24] = v8;
  v4[25] = *(v8 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCF9FA8, 0, 0);
}

uint64_t sub_20CCF9FA8()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v37 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D78, &qword_20CD64400);
  v3 = sub_20CD62CD4();
  v7 = 0;
  v8 = v3 + 56;
  v9 = -1;
  v10 = -1 << *(v3 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v3 + 56);
  v12 = (63 - v10) >> 6;
  v34 = v1 + 7;
  v35 = v12;
  v36 = v3 + 56;
  while (v11)
  {
LABEL_10:
    v15 = *(v0 + 208);
    v38 = *(v0 + 216);
    v16 = *(v0 + 176);
    v17 = *(v0 + 184);
    v42 = v16;
    v18 = *(v0 + 160);
    v45 = *(v0 + 168);
    v40 = v18;
    v19 = *(v0 + 88);
    v43 = *(v0 + 152);
    v44 = *(v0 + 96);
    v39 = v17;
    (*(v2 + 16))();
    v20 = sub_20CD63374();
    v41 = *(v20 - 8);
    (*(v41 + 56))(v16, 1, 1, v20);
    sub_20CD1C9AC(v19, v18, type metadata accessor for SnapshotRetriver);
    v21 = *(v2 + 32);
    v21(v15, v38, v17);
    v22 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v23 = (v43 + *(v2 + 80) + v22) & ~*(v2 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    sub_20CD1C0A0(v40, v24 + v22, type metadata accessor for SnapshotRetriver);
    v21(v24 + v23, v15, v39);
    *(v24 + ((v34 + v23) & 0xFFFFFFFFFFFFFFF8)) = v44;
    sub_20CD1D9A8(v42, v45, &qword_27C811360, &qword_20CD653E0);
    LODWORD(v21) = (*(v41 + 48))(v45, 1, v20);

    v25 = *(v0 + 168);
    if (v21 == 1)
    {
      sub_20CD1DA10(*(v0 + 168), &qword_27C811360, &qword_20CD653E0);
    }

    else
    {
      sub_20CD63364();
      (*(v41 + 8))(v25, v20);
    }

    if (*(v24 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = sub_20CD63314();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = **(v0 + 72);
    v30 = swift_allocObject();
    *(v30 + 16) = &unk_20CD645E8;
    *(v30 + 24) = v24;
    v31 = v28 | v26;
    if (v28 | v26)
    {
      v31 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v26;
      *(v0 + 40) = v28;
    }

    v11 &= v11 - 1;
    v13 = *(v0 + 176);
    *(v0 + 48) = 1;
    *(v0 + 56) = v31;
    *(v0 + 64) = v29;
    swift_task_create();

    v3 = sub_20CD1DA10(v13, &qword_27C811360, &qword_20CD653E0);
    v12 = v35;
    v8 = v36;
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return MEMORY[0x2822002D0](v3, v4, v5, v6);
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v7;
    if (v11)
    {
      v7 = v14;
      goto LABEL_10;
    }
  }

  *(v0 + 224) = MEMORY[0x277D84F90];
  v32 = swift_task_alloc();
  *(v0 + 232) = v32;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E20, &unk_20CD64600);
  *v32 = v0;
  v32[1] = sub_20CCFA48C;
  v3 = *(v0 + 104);
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822002D0](v3, v4, v5, v6);
}

uint64_t sub_20CCFA48C()
{

  return MEMORY[0x2822009F8](sub_20CCFA588, 0, 0);
}

uint64_t sub_20CCFA588()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20CD1DA10(v3, &qword_27C810E18, &qword_20CD645D8);

    v4 = v0[1];
    v5 = v0[28];

    return v4(v5);
  }

  else
  {
    v8 = v0[16];
    v7 = v0[17];
    v9 = *(v2 + 32);
    v9(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v0[28];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_20CD52818(0, v11[2] + 1, 1, v0[28]);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_20CD52818((v12 > 1), v13 + 1, 1, v11);
    }

    v14 = v0[16];
    v15 = v0[14];
    v16 = v0[15];
    (*(v16 + 8))(v0[17], v15);
    v11[2] = v13 + 1;
    v9(v11 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v13, v14, v15);
    v0[28] = v11;
    v17 = swift_task_alloc();
    v0[29] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E20, &unk_20CD64600);
    *v17 = v0;
    v17[1] = sub_20CCFA48C;
    v19 = v0[13];

    return MEMORY[0x2822002D0](v19, 0, 0, v18);
  }
}

uint64_t sub_20CCFA828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DB0, &unk_20CD644E0);
  v4[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DA0, &unk_20CD64E70);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = *(type metadata accessor for SnapshotRetriver(0) - 8);
  v4[18] = v6;
  v4[19] = *(v6 + 64);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v7 = sub_20CD62994();
  v4[23] = v7;
  v8 = *(v7 - 8);
  v4[24] = v8;
  v4[25] = *(v8 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCFAA50, 0, 0);
}

uint64_t sub_20CCFAA50()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v37 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D88, &qword_20CD64420);
  v3 = sub_20CD62CD4();
  v7 = 0;
  v8 = v3 + 56;
  v9 = -1;
  v10 = -1 << *(v3 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v3 + 56);
  v12 = (63 - v10) >> 6;
  v34 = v1 + 7;
  v35 = v12;
  v36 = v3 + 56;
  while (v11)
  {
LABEL_10:
    v15 = *(v0 + 208);
    v38 = *(v0 + 216);
    v16 = *(v0 + 176);
    v17 = *(v0 + 184);
    v42 = v16;
    v18 = *(v0 + 160);
    v45 = *(v0 + 168);
    v40 = v18;
    v19 = *(v0 + 88);
    v43 = *(v0 + 152);
    v44 = *(v0 + 96);
    v39 = v17;
    (*(v2 + 16))();
    v20 = sub_20CD63374();
    v41 = *(v20 - 8);
    (*(v41 + 56))(v16, 1, 1, v20);
    sub_20CD1C9AC(v19, v18, type metadata accessor for SnapshotRetriver);
    v21 = *(v2 + 32);
    v21(v15, v38, v17);
    v22 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v23 = (v43 + *(v2 + 80) + v22) & ~*(v2 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    sub_20CD1C0A0(v40, v24 + v22, type metadata accessor for SnapshotRetriver);
    v21(v24 + v23, v15, v39);
    *(v24 + ((v34 + v23) & 0xFFFFFFFFFFFFFFF8)) = v44;
    sub_20CD1D9A8(v42, v45, &qword_27C811360, &qword_20CD653E0);
    LODWORD(v21) = (*(v41 + 48))(v45, 1, v20);

    v25 = *(v0 + 168);
    if (v21 == 1)
    {
      sub_20CD1DA10(*(v0 + 168), &qword_27C811360, &qword_20CD653E0);
    }

    else
    {
      sub_20CD63364();
      (*(v41 + 8))(v25, v20);
    }

    if (*(v24 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = sub_20CD63314();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = **(v0 + 72);
    v30 = swift_allocObject();
    *(v30 + 16) = &unk_20CD644F8;
    *(v30 + 24) = v24;
    v31 = v28 | v26;
    if (v28 | v26)
    {
      v31 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v26;
      *(v0 + 40) = v28;
    }

    v11 &= v11 - 1;
    v13 = *(v0 + 176);
    *(v0 + 48) = 1;
    *(v0 + 56) = v31;
    *(v0 + 64) = v29;
    swift_task_create();

    v3 = sub_20CD1DA10(v13, &qword_27C811360, &qword_20CD653E0);
    v12 = v35;
    v8 = v36;
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return MEMORY[0x2822002D0](v3, v4, v5, v6);
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v7;
    if (v11)
    {
      v7 = v14;
      goto LABEL_10;
    }
  }

  *(v0 + 224) = MEMORY[0x277D84F90];
  v32 = swift_task_alloc();
  *(v0 + 232) = v32;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DB8, &qword_20CD64510);
  *v32 = v0;
  v32[1] = sub_20CCFAF34;
  v3 = *(v0 + 104);
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822002D0](v3, v4, v5, v6);
}

uint64_t sub_20CCFAF34()
{

  return MEMORY[0x2822009F8](sub_20CCFB030, 0, 0);
}

uint64_t sub_20CCFB030()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20CD1DA10(v3, &qword_27C810DB0, &unk_20CD644E0);

    v4 = v0[1];
    v5 = v0[28];

    return v4(v5);
  }

  else
  {
    v8 = v0[16];
    v7 = v0[17];
    v9 = *(v2 + 32);
    v9(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v0[28];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_20CD5283C(0, v11[2] + 1, 1, v0[28]);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_20CD5283C((v12 > 1), v13 + 1, 1, v11);
    }

    v14 = v0[16];
    v15 = v0[14];
    v16 = v0[15];
    (*(v16 + 8))(v0[17], v15);
    v11[2] = v13 + 1;
    v9(v11 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v13, v14, v15);
    v0[28] = v11;
    v17 = swift_task_alloc();
    v0[29] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DB8, &qword_20CD64510);
    *v17 = v0;
    v17[1] = sub_20CCFAF34;
    v19 = v0[13];

    return MEMORY[0x2822002D0](v19, 0, 0, v18);
  }
}

uint64_t sub_20CCFB2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_20CD62AE4();
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E78, &qword_20CD646C8);
  v6[7] = swift_task_alloc();
  v7 = sub_20CD62EA4();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E80, &qword_20CD646D0);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v8 = sub_20CD62654();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCFB4E0, 0, 0);
}

uint64_t sub_20CCFB4E0(uint64_t a1)
{
  sub_20CD62644();
  v2 = swift_task_alloc();
  v1[22] = v2;
  *v2 = v1;
  v2[1] = sub_20CCFB584;
  v3 = v1[16];
  v4 = v1[4];
  v5 = v1[5];

  return sub_20CCFE684(v3, v4, v5);
}

uint64_t sub_20CCFB584()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_20CCFBC1C;
  }

  else
  {
    v2 = sub_20CCFB698;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCFB698()
{
  v47 = v0;
  sub_20CCF3D20(v0[16], v0[17], &qword_27C810E80, &qword_20CD646D0);
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];
  sub_20CD62644();
  sub_20CD62544();
  v5 = v4;
  v45 = *(v3 + 8);
  v45(v1, v2);
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[4];
  v10 = sub_20CD631B4();
  __swift_project_value_buffer(v10, qword_28110F878);
  v11 = *(v8 + 16);
  v11(v6, v9, v7);
  v12 = sub_20CD63194();
  v13 = sub_20CD633D4();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[12];
  if (v14)
  {
    v44 = v11;
    v16 = v0[11];
    v17 = v0[8];
    v18 = v0[9];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46 = v20;
    *v19 = 136315394;
    v44(v16, v15, v17);
    v21 = sub_20CD63264();
    v23 = v22;
    (*(v18 + 8))(v15, v17);
    v24 = v21;
    v11 = v44;
    v25 = sub_20CD6153C(v24, v23, &v46);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v5;
    _os_log_impl(&dword_20CCEA000, v12, v13, "[SnapshotRetriever] Completed query for %s in %fs", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x20F3115B0](v20, -1, -1);
    MEMORY[0x20F3115B0](v19, -1, -1);
  }

  else
  {
    v26 = v0[8];
    v27 = v0[9];

    (*(v27 + 8))(v15, v26);
  }

  v28 = v0[15];
  sub_20CD1D9A8(v0[17], v28, &qword_27C810E80, &qword_20CD646D0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E88, &qword_20CD646E0);
  v30 = *(*(v29 - 8) + 48);
  v31 = v30(v28, 1, v29);
  v32 = v0[15];
  if (v31 == 1)
  {
    sub_20CD1DA10(v32, &qword_27C810E80, &qword_20CD646D0);
  }

  else
  {
    sub_20CD1DA10(v32, &qword_27C810E88, &qword_20CD646E0);
  }

  v33 = v0[17];
  v34 = v0[14];
  v11(v0[10], v0[4], v0[8]);
  sub_20CD1D9A8(v33, v34, &qword_27C810E80, &qword_20CD646D0);
  v35 = v30(v34, 1, v29);
  v36 = v0[14];
  v37 = v0[7];
  if (v35 == 1)
  {
    sub_20CD1DA10(v0[14], &qword_27C810E80, &qword_20CD646D0);
    v38 = sub_20CD62BC4();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  }

  else
  {
    sub_20CD1D9A8(v0[14], v0[7], &qword_27C810E78, &qword_20CD646C8);
    sub_20CD1DA10(v36, &qword_27C810E88, &qword_20CD646E0);
  }

  v39 = v0[21];
  v40 = v0[17];
  v41 = v0[18];
  sub_20CD62AD4();
  sub_20CD62BC4();
  sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
  sub_20CD62D04();
  sub_20CD1DA10(v40, &qword_27C810E80, &qword_20CD646D0);
  v45(v39, v41);

  v42 = v0[1];

  return v42();
}

uint64_t sub_20CCFBC1C()
{
  v75 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 32);
  v69 = sub_20CD631B4();
  __swift_project_value_buffer(v69, qword_28110F878);
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = v1;
  v8 = sub_20CD63194();
  v9 = sub_20CD633B4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 104);
  if (v10)
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v71 = *(v0 + 184);
    v15 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = v73;
    *v15 = 136315394;
    v6(v12, v11, v13);
    v16 = sub_20CD63264();
    v18 = v17;
    (*(v14 + 8))(v11, v13);
    v19 = sub_20CD6153C(v16, v18, &v74);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    v20 = v71;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v68 = v21;
    _os_log_impl(&dword_20CCEA000, v8, v9, "[SnapshotRetriever] Failed to execute query for %s: %@", v15, 0x16u);
    sub_20CD1DA10(v68, &qword_27C810DD8, &qword_20CD64930);
    MEMORY[0x20F3115B0](v68, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x20F3115B0](v73, -1, -1);
    MEMORY[0x20F3115B0](v15, -1, -1);
  }

  else
  {
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);

    (*(v22 + 8))(v11, v23);
  }

  v24 = *(v0 + 136);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E88, &qword_20CD646E0);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = *(v0 + 160);
  v27 = *(v0 + 144);
  v28 = *(v0 + 152);
  sub_20CD62644();
  sub_20CD62544();
  v30 = v29;
  v72 = *(v28 + 8);
  v72(v26, v27);
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 96);
  v32 = *(v0 + 64);
  v33 = *(v0 + 72);
  v34 = *(v0 + 32);
  __swift_project_value_buffer(v69, qword_28110F878);
  v35 = *(v33 + 16);
  v35(v31, v34, v32);
  v36 = sub_20CD63194();
  v37 = sub_20CD633D4();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 96);
  if (v38)
  {
    v70 = v35;
    v40 = *(v0 + 88);
    v41 = *(v0 + 64);
    v42 = *(v0 + 72);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v74 = v44;
    *v43 = 136315394;
    v70(v40, v39, v41);
    v45 = sub_20CD63264();
    v47 = v46;
    (*(v42 + 8))(v39, v41);
    v48 = v45;
    v35 = v70;
    v49 = sub_20CD6153C(v48, v47, &v74);

    *(v43 + 4) = v49;
    *(v43 + 12) = 2048;
    *(v43 + 14) = v30;
    _os_log_impl(&dword_20CCEA000, v36, v37, "[SnapshotRetriever] Completed query for %s in %fs", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x20F3115B0](v44, -1, -1);
    MEMORY[0x20F3115B0](v43, -1, -1);
  }

  else
  {
    v50 = *(v0 + 64);
    v51 = *(v0 + 72);

    (*(v51 + 8))(v39, v50);
  }

  v52 = *(v0 + 120);
  sub_20CD1D9A8(*(v0 + 136), v52, &qword_27C810E80, &qword_20CD646D0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E88, &qword_20CD646E0);
  v54 = *(*(v53 - 8) + 48);
  v55 = v54(v52, 1, v53);
  v56 = *(v0 + 120);
  if (v55 == 1)
  {
    sub_20CD1DA10(v56, &qword_27C810E80, &qword_20CD646D0);
  }

  else
  {
    sub_20CD1DA10(v56, &qword_27C810E88, &qword_20CD646E0);
  }

  v57 = *(v0 + 136);
  v58 = *(v0 + 112);
  v35(*(v0 + 80), *(v0 + 32), *(v0 + 64));
  sub_20CD1D9A8(v57, v58, &qword_27C810E80, &qword_20CD646D0);
  v59 = v54(v58, 1, v53);
  v60 = *(v0 + 112);
  v61 = *(v0 + 56);
  if (v59 == 1)
  {
    sub_20CD1DA10(*(v0 + 112), &qword_27C810E80, &qword_20CD646D0);
    v62 = sub_20CD62BC4();
    (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
  }

  else
  {
    sub_20CD1D9A8(*(v0 + 112), *(v0 + 56), &qword_27C810E78, &qword_20CD646C8);
    sub_20CD1DA10(v60, &qword_27C810E88, &qword_20CD646E0);
  }

  v63 = *(v0 + 168);
  v64 = *(v0 + 136);
  v65 = *(v0 + 144);
  sub_20CD62AD4();
  sub_20CD62BC4();
  sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
  sub_20CD62D04();
  sub_20CD1DA10(v64, &qword_27C810E80, &qword_20CD646D0);
  v72(v63, v65);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_20CCFC40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_20CD62AE4();
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E28, &unk_20CD64A10);
  v6[7] = swift_task_alloc();
  v7 = sub_20CD62D24();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E30, &qword_20CD64610);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v8 = sub_20CD62654();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCFC61C, 0, 0);
}

uint64_t sub_20CCFC61C(uint64_t a1)
{
  sub_20CD62644();
  v2 = swift_task_alloc();
  v1[22] = v2;
  *v2 = v1;
  v2[1] = sub_20CCFC6C0;
  v3 = v1[16];
  v4 = v1[4];
  v5 = v1[5];

  return sub_20CD047A0(v3, v4, v5);
}

uint64_t sub_20CCFC6C0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_20CCFCD58;
  }

  else
  {
    v2 = sub_20CCFC7D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCFC7D4()
{
  v47 = v0;
  sub_20CCF3D20(v0[16], v0[17], &qword_27C810E30, &qword_20CD64610);
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];
  sub_20CD62644();
  sub_20CD62544();
  v5 = v4;
  v45 = *(v3 + 8);
  v45(v1, v2);
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[4];
  v10 = sub_20CD631B4();
  __swift_project_value_buffer(v10, qword_28110F878);
  v11 = *(v8 + 16);
  v11(v6, v9, v7);
  v12 = sub_20CD63194();
  v13 = sub_20CD633D4();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[12];
  if (v14)
  {
    v44 = v11;
    v16 = v0[11];
    v17 = v0[8];
    v18 = v0[9];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46 = v20;
    *v19 = 136315394;
    v44(v16, v15, v17);
    v21 = sub_20CD63264();
    v23 = v22;
    (*(v18 + 8))(v15, v17);
    v24 = v21;
    v11 = v44;
    v25 = sub_20CD6153C(v24, v23, &v46);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v5;
    _os_log_impl(&dword_20CCEA000, v12, v13, "[SnapshotRetriever] Completed query for %s in %fs", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x20F3115B0](v20, -1, -1);
    MEMORY[0x20F3115B0](v19, -1, -1);
  }

  else
  {
    v26 = v0[8];
    v27 = v0[9];

    (*(v27 + 8))(v15, v26);
  }

  v28 = v0[15];
  sub_20CD1D9A8(v0[17], v28, &qword_27C810E30, &qword_20CD64610);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E38, &qword_20CD64620);
  v30 = *(*(v29 - 8) + 48);
  v31 = v30(v28, 1, v29);
  v32 = v0[15];
  if (v31 == 1)
  {
    sub_20CD1DA10(v32, &qword_27C810E30, &qword_20CD64610);
  }

  else
  {
    sub_20CD1DA10(v32, &qword_27C810E38, &qword_20CD64620);
  }

  v33 = v0[17];
  v34 = v0[14];
  v11(v0[10], v0[4], v0[8]);
  sub_20CD1D9A8(v33, v34, &qword_27C810E30, &qword_20CD64610);
  v35 = v30(v34, 1, v29);
  v36 = v0[14];
  v37 = v0[7];
  if (v35 == 1)
  {
    sub_20CD1DA10(v0[14], &qword_27C810E30, &qword_20CD64610);
    v38 = sub_20CD62B44();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  }

  else
  {
    sub_20CD1D9A8(v0[14], v0[7], &qword_27C810E28, &unk_20CD64A10);
    sub_20CD1DA10(v36, &qword_27C810E38, &qword_20CD64620);
  }

  v39 = v0[21];
  v40 = v0[17];
  v41 = v0[18];
  sub_20CD62AD4();
  sub_20CD62B44();
  sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
  sub_20CD62D04();
  sub_20CD1DA10(v40, &qword_27C810E30, &qword_20CD64610);
  v45(v39, v41);

  v42 = v0[1];

  return v42();
}

uint64_t sub_20CCFCD58()
{
  v75 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 32);
  v69 = sub_20CD631B4();
  __swift_project_value_buffer(v69, qword_28110F878);
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = v1;
  v8 = sub_20CD63194();
  v9 = sub_20CD633B4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 104);
  if (v10)
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v71 = *(v0 + 184);
    v15 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = v73;
    *v15 = 136315394;
    v6(v12, v11, v13);
    v16 = sub_20CD63264();
    v18 = v17;
    (*(v14 + 8))(v11, v13);
    v19 = sub_20CD6153C(v16, v18, &v74);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    v20 = v71;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v68 = v21;
    _os_log_impl(&dword_20CCEA000, v8, v9, "[SnapshotRetriever] Failed to execute query for %s: %@", v15, 0x16u);
    sub_20CD1DA10(v68, &qword_27C810DD8, &qword_20CD64930);
    MEMORY[0x20F3115B0](v68, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x20F3115B0](v73, -1, -1);
    MEMORY[0x20F3115B0](v15, -1, -1);
  }

  else
  {
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);

    (*(v22 + 8))(v11, v23);
  }

  v24 = *(v0 + 136);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E38, &qword_20CD64620);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = *(v0 + 160);
  v27 = *(v0 + 144);
  v28 = *(v0 + 152);
  sub_20CD62644();
  sub_20CD62544();
  v30 = v29;
  v72 = *(v28 + 8);
  v72(v26, v27);
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 96);
  v32 = *(v0 + 64);
  v33 = *(v0 + 72);
  v34 = *(v0 + 32);
  __swift_project_value_buffer(v69, qword_28110F878);
  v35 = *(v33 + 16);
  v35(v31, v34, v32);
  v36 = sub_20CD63194();
  v37 = sub_20CD633D4();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 96);
  if (v38)
  {
    v70 = v35;
    v40 = *(v0 + 88);
    v41 = *(v0 + 64);
    v42 = *(v0 + 72);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v74 = v44;
    *v43 = 136315394;
    v70(v40, v39, v41);
    v45 = sub_20CD63264();
    v47 = v46;
    (*(v42 + 8))(v39, v41);
    v48 = v45;
    v35 = v70;
    v49 = sub_20CD6153C(v48, v47, &v74);

    *(v43 + 4) = v49;
    *(v43 + 12) = 2048;
    *(v43 + 14) = v30;
    _os_log_impl(&dword_20CCEA000, v36, v37, "[SnapshotRetriever] Completed query for %s in %fs", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x20F3115B0](v44, -1, -1);
    MEMORY[0x20F3115B0](v43, -1, -1);
  }

  else
  {
    v50 = *(v0 + 64);
    v51 = *(v0 + 72);

    (*(v51 + 8))(v39, v50);
  }

  v52 = *(v0 + 120);
  sub_20CD1D9A8(*(v0 + 136), v52, &qword_27C810E30, &qword_20CD64610);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E38, &qword_20CD64620);
  v54 = *(*(v53 - 8) + 48);
  v55 = v54(v52, 1, v53);
  v56 = *(v0 + 120);
  if (v55 == 1)
  {
    sub_20CD1DA10(v56, &qword_27C810E30, &qword_20CD64610);
  }

  else
  {
    sub_20CD1DA10(v56, &qword_27C810E38, &qword_20CD64620);
  }

  v57 = *(v0 + 136);
  v58 = *(v0 + 112);
  v35(*(v0 + 80), *(v0 + 32), *(v0 + 64));
  sub_20CD1D9A8(v57, v58, &qword_27C810E30, &qword_20CD64610);
  v59 = v54(v58, 1, v53);
  v60 = *(v0 + 112);
  v61 = *(v0 + 56);
  if (v59 == 1)
  {
    sub_20CD1DA10(*(v0 + 112), &qword_27C810E30, &qword_20CD64610);
    v62 = sub_20CD62B44();
    (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
  }

  else
  {
    sub_20CD1D9A8(*(v0 + 112), *(v0 + 56), &qword_27C810E28, &unk_20CD64A10);
    sub_20CD1DA10(v60, &qword_27C810E38, &qword_20CD64620);
  }

  v63 = *(v0 + 168);
  v64 = *(v0 + 136);
  v65 = *(v0 + 144);
  sub_20CD62AD4();
  sub_20CD62B44();
  sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
  sub_20CD62D04();
  sub_20CD1DA10(v64, &qword_27C810E30, &qword_20CD64610);
  v72(v63, v65);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_20CCFD548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_20CD62AE4();
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DC0, &qword_20CD64518);
  v6[7] = swift_task_alloc();
  v7 = sub_20CD62994();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DC8, &qword_20CD64520);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v8 = sub_20CD62654();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCFD758, 0, 0);
}

uint64_t sub_20CCFD758(uint64_t a1)
{
  sub_20CD62644();
  v2 = swift_task_alloc();
  v1[22] = v2;
  *v2 = v1;
  v2[1] = sub_20CCFD7FC;
  v3 = v1[16];
  v4 = v1[4];
  v5 = v1[5];

  return sub_20CD0AC18(v3, v4, v5);
}

uint64_t sub_20CCFD7FC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_20CCFDE94;
  }

  else
  {
    v2 = sub_20CCFD910;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCFD910()
{
  v47 = v0;
  sub_20CCF3D20(v0[16], v0[17], &qword_27C810DC8, &qword_20CD64520);
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];
  sub_20CD62644();
  sub_20CD62544();
  v5 = v4;
  v45 = *(v3 + 8);
  v45(v1, v2);
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[4];
  v10 = sub_20CD631B4();
  __swift_project_value_buffer(v10, qword_28110F878);
  v11 = *(v8 + 16);
  v11(v6, v9, v7);
  v12 = sub_20CD63194();
  v13 = sub_20CD633D4();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[12];
  if (v14)
  {
    v44 = v11;
    v16 = v0[11];
    v17 = v0[8];
    v18 = v0[9];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46 = v20;
    *v19 = 136315394;
    v44(v16, v15, v17);
    v21 = sub_20CD63264();
    v23 = v22;
    (*(v18 + 8))(v15, v17);
    v24 = v21;
    v11 = v44;
    v25 = sub_20CD6153C(v24, v23, &v46);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v5;
    _os_log_impl(&dword_20CCEA000, v12, v13, "[SnapshotRetriever] Completed query for %s in %fs", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x20F3115B0](v20, -1, -1);
    MEMORY[0x20F3115B0](v19, -1, -1);
  }

  else
  {
    v26 = v0[8];
    v27 = v0[9];

    (*(v27 + 8))(v15, v26);
  }

  v28 = v0[15];
  sub_20CD1D9A8(v0[17], v28, &qword_27C810DC8, &qword_20CD64520);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DD0, &unk_20CD64530);
  v30 = *(*(v29 - 8) + 48);
  v31 = v30(v28, 1, v29);
  v32 = v0[15];
  if (v31 == 1)
  {
    sub_20CD1DA10(v32, &qword_27C810DC8, &qword_20CD64520);
  }

  else
  {
    sub_20CD1DA10(v32, &qword_27C810DD0, &unk_20CD64530);
  }

  v33 = v0[17];
  v34 = v0[14];
  v11(v0[10], v0[4], v0[8]);
  sub_20CD1D9A8(v33, v34, &qword_27C810DC8, &qword_20CD64520);
  v35 = v30(v34, 1, v29);
  v36 = v0[14];
  v37 = v0[7];
  if (v35 == 1)
  {
    sub_20CD1DA10(v0[14], &qword_27C810DC8, &qword_20CD64520);
    v38 = sub_20CD62954();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  }

  else
  {
    sub_20CD1D9A8(v0[14], v0[7], &qword_27C810DC0, &qword_20CD64518);
    sub_20CD1DA10(v36, &qword_27C810DD0, &unk_20CD64530);
  }

  v39 = v0[21];
  v40 = v0[17];
  v41 = v0[18];
  sub_20CD62AD4();
  sub_20CD62954();
  sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
  sub_20CD62D04();
  sub_20CD1DA10(v40, &qword_27C810DC8, &qword_20CD64520);
  v45(v39, v41);

  v42 = v0[1];

  return v42();
}

uint64_t sub_20CCFDE94()
{
  v75 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 32);
  v69 = sub_20CD631B4();
  __swift_project_value_buffer(v69, qword_28110F878);
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = v1;
  v8 = sub_20CD63194();
  v9 = sub_20CD633B4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 104);
  if (v10)
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v71 = *(v0 + 184);
    v15 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = v73;
    *v15 = 136315394;
    v6(v12, v11, v13);
    v16 = sub_20CD63264();
    v18 = v17;
    (*(v14 + 8))(v11, v13);
    v19 = sub_20CD6153C(v16, v18, &v74);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    v20 = v71;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v68 = v21;
    _os_log_impl(&dword_20CCEA000, v8, v9, "[SnapshotRetriever] Failed to execute query for %s: %@", v15, 0x16u);
    sub_20CD1DA10(v68, &qword_27C810DD8, &qword_20CD64930);
    MEMORY[0x20F3115B0](v68, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x20F3115B0](v73, -1, -1);
    MEMORY[0x20F3115B0](v15, -1, -1);
  }

  else
  {
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);

    (*(v22 + 8))(v11, v23);
  }

  v24 = *(v0 + 136);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DD0, &unk_20CD64530);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = *(v0 + 160);
  v27 = *(v0 + 144);
  v28 = *(v0 + 152);
  sub_20CD62644();
  sub_20CD62544();
  v30 = v29;
  v72 = *(v28 + 8);
  v72(v26, v27);
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 96);
  v32 = *(v0 + 64);
  v33 = *(v0 + 72);
  v34 = *(v0 + 32);
  __swift_project_value_buffer(v69, qword_28110F878);
  v35 = *(v33 + 16);
  v35(v31, v34, v32);
  v36 = sub_20CD63194();
  v37 = sub_20CD633D4();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 96);
  if (v38)
  {
    v70 = v35;
    v40 = *(v0 + 88);
    v41 = *(v0 + 64);
    v42 = *(v0 + 72);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v74 = v44;
    *v43 = 136315394;
    v70(v40, v39, v41);
    v45 = sub_20CD63264();
    v47 = v46;
    (*(v42 + 8))(v39, v41);
    v48 = v45;
    v35 = v70;
    v49 = sub_20CD6153C(v48, v47, &v74);

    *(v43 + 4) = v49;
    *(v43 + 12) = 2048;
    *(v43 + 14) = v30;
    _os_log_impl(&dword_20CCEA000, v36, v37, "[SnapshotRetriever] Completed query for %s in %fs", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x20F3115B0](v44, -1, -1);
    MEMORY[0x20F3115B0](v43, -1, -1);
  }

  else
  {
    v50 = *(v0 + 64);
    v51 = *(v0 + 72);

    (*(v51 + 8))(v39, v50);
  }

  v52 = *(v0 + 120);
  sub_20CD1D9A8(*(v0 + 136), v52, &qword_27C810DC8, &qword_20CD64520);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DD0, &unk_20CD64530);
  v54 = *(*(v53 - 8) + 48);
  v55 = v54(v52, 1, v53);
  v56 = *(v0 + 120);
  if (v55 == 1)
  {
    sub_20CD1DA10(v56, &qword_27C810DC8, &qword_20CD64520);
  }

  else
  {
    sub_20CD1DA10(v56, &qword_27C810DD0, &unk_20CD64530);
  }

  v57 = *(v0 + 136);
  v58 = *(v0 + 112);
  v35(*(v0 + 80), *(v0 + 32), *(v0 + 64));
  sub_20CD1D9A8(v57, v58, &qword_27C810DC8, &qword_20CD64520);
  v59 = v54(v58, 1, v53);
  v60 = *(v0 + 112);
  v61 = *(v0 + 56);
  if (v59 == 1)
  {
    sub_20CD1DA10(*(v0 + 112), &qword_27C810DC8, &qword_20CD64520);
    v62 = sub_20CD62954();
    (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
  }

  else
  {
    sub_20CD1D9A8(*(v0 + 112), *(v0 + 56), &qword_27C810DC0, &qword_20CD64518);
    sub_20CD1DA10(v60, &qword_27C810DD0, &unk_20CD64530);
  }

  v63 = *(v0 + 168);
  v64 = *(v0 + 136);
  v65 = *(v0 + 144);
  sub_20CD62AD4();
  sub_20CD62954();
  sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
  sub_20CD62D04();
  sub_20CD1DA10(v64, &qword_27C810DC8, &qword_20CD64520);
  v72(v63, v65);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_20CCFE684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E88, &qword_20CD646E0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
  v4[11] = swift_task_alloc();
  v6 = sub_20CD63004();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = sub_20CD62E94();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v8 = sub_20CD626F4();
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v9 = sub_20CD62654();
  v4[24] = v9;
  v4[25] = *(v9 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v10 = sub_20CD62514();
  v4[32] = v10;
  v4[33] = *(v10 - 8);
  v4[34] = swift_task_alloc();
  v11 = sub_20CD62BC4();
  v4[35] = v11;
  v4[36] = *(v11 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800);
  v4[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E78, &qword_20CD646C8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v12 = sub_20CD62AB4();
  v4[50] = v12;
  v4[51] = *(v12 - 8);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF8, &unk_20CD64540);
  v4[65] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v4[66] = v13;
  v4[67] = *(v13 - 8);
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E80, &qword_20CD646D0);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  sub_20CD62CE4();
  v4[74] = swift_task_alloc();
  v4[75] = type metadata accessor for SnapshotQueryRange(0);
  v4[76] = swift_task_alloc();
  v14 = sub_20CD62EA4();
  v4[77] = v14;
  v4[78] = *(v14 - 8);
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCFEDD8, 0, 0);
}

uint64_t sub_20CCFEDD8()
{
  v109 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = v0[80];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[5];
  v5 = sub_20CD631B4();
  v0[81] = __swift_project_value_buffer(v5, qword_28110F878);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_20CD63194();
  v8 = sub_20CD633D4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[80];
  if (v9)
  {
    v11 = v0[79];
    v12 = v0[78];
    v13 = v0[77];
    v14 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v108[0] = v105;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = sub_20CD63264();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_20CD6153C(v15, v17, v108);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_20CCEA000, v7, v8, "[SnapshotRetriever] execute query %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x20F3115B0](v105, -1, -1);
    MEMORY[0x20F3115B0](v14, -1, -1);
  }

  else
  {
    v19 = v0[78];
    v20 = v0[77];

    (*(v19 + 8))(v10, v20);
  }

  v21 = v0[76];
  v22 = v0[74];
  v0[82] = sub_20CD1DF2C(&qword_28110F688, MEMORY[0x277D0A458], MEMORY[0x277D0A450]);
  sub_20CD62B14();
  sub_20CCEEFC0(v22, v21);
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[65];
  sub_20CD1D9A8(v0[76], v26, &qword_27C810CF8, &unk_20CD64540);
  v27 = (*(v24 + 48))(v26, 1, v25);
  if (v27 == 1)
  {
    v28 = v0[73];
    v29 = v0[8];
    v30 = v0[9];
    sub_20CD1DA10(v0[65], &qword_27C810CF8, &unk_20CD64540);
    v31 = *(v30 + 56);
    v31(v28, 1, 1, v29);
    v0[96] = v31;
    v32 = v0[24];
    v33 = v0[25];
    v34 = v0[11];
    sub_20CD1D9A8(v0[76] + *(v0[75] + 20), v34, &qword_27C810CC8, &qword_20CD64160);
    if ((*(v33 + 48))(v34, 1, v32) == 1)
    {
      v35 = v0[73];
      v36 = v0[11];
      v37 = v0[4];
      sub_20CD1C87C(v0[76], type metadata accessor for SnapshotQueryRange);
      sub_20CD1DA10(v36, &qword_27C810CC8, &qword_20CD64160);
      sub_20CCF3D20(v35, v37, &qword_27C810E80, &qword_20CD646D0);

      v38 = v0[1];

      return v38();
    }

    v66 = v0[26];
    v65 = v0[27];
    v67 = v0[24];
    v68 = v0[25];
    (*(v68 + 32))(v65, v0[11], v67);
    (*(v68 + 16))(v66, v65, v67);
    v69 = sub_20CD63194();
    v70 = sub_20CD633D4();
    v71 = os_log_type_enabled(v69, v70);
    v73 = v0[25];
    v72 = v0[26];
    v74 = v0[24];
    if (v71)
    {
      v75 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v108[0] = v107;
      *v75 = 136315138;
      sub_20CD1DF2C(&qword_28110F7E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v76 = sub_20CD63574();
      v78 = v77;
      v79 = *(v73 + 8);
      v79(v72, v74);
      v80 = sub_20CD6153C(v76, v78, v108);

      *(v75 + 4) = v80;
      _os_log_impl(&dword_20CCEA000, v69, v70, "[SnapshotRetriever] Apply today's changes: %s)", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v107);
      MEMORY[0x20F3115B0](v107, -1, -1);
      MEMORY[0x20F3115B0](v75, -1, -1);
    }

    else
    {

      v79 = *(v73 + 8);
      v79(v72, v74);
    }

    v0[97] = v79;
    v85 = v0[71];
    v86 = v0[8];
    v87 = v0[9];
    sub_20CD1D9A8(v0[73], v85, &qword_27C810E80, &qword_20CD646D0);
    v88 = *(v87 + 48);
    v0[98] = v88;
    v0[99] = (v87 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v89 = v88(v85, 1, v86);
    v90 = v0[71];
    v91 = v0[45];
    v92 = v0[35];
    v93 = v0[36];
    if (v89 == 1)
    {
      sub_20CD1DA10(v0[71], &qword_27C810E80, &qword_20CD646D0);
      (*(v93 + 56))(v91, 1, 1, v92);
    }

    else
    {
      sub_20CD1D9A8(v0[71], v0[45], &qword_27C810E78, &qword_20CD646C8);
      sub_20CD1DA10(v90, &qword_27C810E88, &qword_20CD646E0);
      if ((*(v93 + 48))(v91, 1, v92) != 1)
      {
        (*(v0[36] + 32))(v0[37], v0[45], v0[35]);
LABEL_28:
        v0[100] = sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
        sub_20CD62C94();
        v100 = swift_task_alloc();
        v0[101] = v100;
        *v100 = v0;
        v100[1] = sub_20CD0343C;
        v101 = v0[27];
        v102 = v0[18];

        return sub_20CD57A94(v101, v102);
      }
    }

    v94 = v0[54];
    v95 = v0[50];
    v96 = v0[51];
    v97 = v0[45];
    v98 = v0[36];
    v99 = v0[35];
    sub_20CD62564();
    sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
    sub_20CD62CB4();
    (*(v96 + 8))(v94, v95);
    if ((*(v98 + 48))(v97, 1, v99) != 1)
    {
      sub_20CD1DA10(v0[45], &qword_27C810E78, &qword_20CD646C8);
    }

    goto LABEL_28;
  }

  v39 = v0[69];
  v40 = v0[66];
  v42 = v0[63];
  v41 = v0[64];
  v44 = v0[61];
  v43 = v0[62];
  v45 = v0[50];
  v46 = v0[51];
  sub_20CCF3D20(v0[65], v39, &qword_27C810D08, &qword_20CD64280);
  v47 = *(v46 + 16);
  v0[83] = v47;
  v0[84] = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v47(v41, v39, v45);
  v47(v42, v39 + *(v40 + 36), v45);
  v47(v43, v41, v45);
  v47(v44, v42, v45);
  v48 = sub_20CD63194();
  v49 = sub_20CD633D4();
  v50 = os_log_type_enabled(v48, v49);
  v52 = v0[61];
  v51 = v0[62];
  v54 = v0[50];
  v53 = v0[51];
  if (v50)
  {
    v104 = v49;
    v55 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v108[0] = v106;
    *v55 = 136315394;
    sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
    v56 = sub_20CD63574();
    v58 = v57;
    v103 = v48;
    v59 = *(v53 + 8);
    v59(v51, v54);
    v60 = sub_20CD6153C(v56, v58, v108);

    *(v55 + 4) = v60;
    *(v55 + 12) = 2080;
    v61 = sub_20CD63574();
    v63 = v62;
    v59(v52, v54);
    v64 = sub_20CD6153C(v61, v63, v108);

    *(v55 + 14) = v64;
    _os_log_impl(&dword_20CCEA000, v103, v104, "[SnapshotRetriever] Fetching closest properties (%s -> %s)", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v106, -1, -1);
    MEMORY[0x20F3115B0](v55, -1, -1);
  }

  else
  {

    v59 = *(v53 + 8);
    v59(v52, v54);
    v59(v51, v54);
  }

  v0[85] = v59;
  v81 = swift_task_alloc();
  v0[86] = v81;
  *v81 = v0;
  v81[1] = sub_20CCFFDEC;
  v82 = v0[69];
  v83 = v0[49];
  v84 = v0[5];

  return sub_20CD10D34(v83, v82, v84);
}

uint64_t sub_20CCFFDEC()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_20CD1DFB4;
  }

  else
  {
    v2 = sub_20CCFFF00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCFFF00()
{
  v184 = v0;
  v1 = v0[48];
  v2 = v0[35];
  v3 = v0[36];
  sub_20CD1D9A8(v0[49], v1, &qword_27C810E78, &qword_20CD646C8);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = v0[87];
    v6 = v0[50];
    v7 = v0[51];
    v8 = v0[42];
    sub_20CD1DA10(v0[48], &qword_27C810E78, &qword_20CD646C8);
    (*(v7 + 56))(v8, 1, 1, v6);
    sub_20CD62A34();
    if (v5)
    {
      v9 = v0[85];
      v10 = v0[76];
      v11 = v0[69];
      v13 = v0[63];
      v12 = v0[64];
      v14 = v0[50];
      v15 = v0[51];
      v16 = v0[42];
      sub_20CD1DA10(v0[49], &qword_27C810E78, &qword_20CD646C8);
      v9(v13, v14);
      v9(v12, v14);
      sub_20CD1DA10(v11, &qword_27C810D08, &qword_20CD64280);
      sub_20CD1C87C(v10, type metadata accessor for SnapshotQueryRange);
      if ((*(v15 + 48))(v16, 1, v14) != 1)
      {
        sub_20CD1DA10(v0[42], &qword_27C810DE0, &unk_20CD64800);
      }

      goto LABEL_9;
    }

    v65 = v0[42];
    if ((*(v0[51] + 48))(v65, 1, v0[50]) != 1)
    {
      sub_20CD1DA10(v65, &qword_27C810DE0, &unk_20CD64800);
    }

    v24 = 0;
  }

  else
  {
    v17 = v0[60];
    v18 = v0[50];
    v19 = v0[51];
    v20 = v0[48];
    v21 = v0[42];
    v22 = v0[35];
    v23 = v0[36];
    sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
    sub_20CD62C64();
    (*(v23 + 8))(v20, v22);
    (*(v19 + 56))(v21, 0, 1, v18);
    (*(v19 + 32))(v17, v21, v18);
    v24 = v0[87];
  }

  v25 = sub_20CD62A94();
  v26 = v0[64];
  if (v24)
  {
    v27 = v0[85];
    v28 = v0[76];
    v29 = v0[69];
    v30 = v0[63];
    v31 = v0[50];
    v32 = v0[49];
    v27(v0[60], v31);
    sub_20CD1DA10(v32, &qword_27C810E78, &qword_20CD646C8);
    v27(v30, v31);
    v27(v26, v31);
    sub_20CD1DA10(v29, &qword_27C810D08, &qword_20CD64280);
    v33 = v28;
LABEL_8:
    sub_20CD1C87C(v33, type metadata accessor for SnapshotQueryRange);
LABEL_9:

    v34 = v0[1];
LABEL_10:

    return v34();
  }

  v179 = v25;
  v36 = v0[83];
  v37 = v0[60];
  v38 = v0[58];
  v39 = v0[50];
  v36(v0[59], v26, v39);
  v36(v38, v37, v39);
  v40 = sub_20CD63194();
  v41 = sub_20CD633D4();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v0[85];
  v45 = v0[58];
  v44 = v0[59];
  v46 = v0[50];
  v175 = v4;
  if (v42)
  {
    v166 = v41;
    v47 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v183[0] = v171;
    *v47 = 136315650;
    sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
    v163 = v40;
    v48 = sub_20CD63574();
    v50 = v49;
    v43(v44, v46);
    v51 = sub_20CD6153C(v48, v50, v183);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    v52 = sub_20CD63574();
    v54 = v53;
    v43(v45, v46);
    v55 = sub_20CD6153C(v52, v54, v183);

    *(v47 + 14) = v55;
    *(v47 + 22) = 2048;
    v56 = v179;
    *(v47 + 24) = v179;
    _os_log_impl(&dword_20CCEA000, v163, v166, "[SnapshotRetriever] Resolved from (%s -> %s), %ld days missing", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v171, -1, -1);
    MEMORY[0x20F3115B0](v47, -1, -1);

    if (v179 > 32)
    {
LABEL_15:
      v57 = v0[85];
      v58 = v0[83];
      v176 = v0[69];
      v177 = v0[76];
      v59 = v0[60];
      v60 = v0[50];
      v161 = v0[63];
      v167 = v0[49];
      v172 = v0[64];
      type metadata accessor for SnapshotRetriver.QueryFailure(0);
      sub_20CD1DF2C(&qword_27C810DE8, type metadata accessor for SnapshotRetriver.QueryFailure, &unk_20CD64110);
      swift_allocError();
      v62 = v61;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C20, &qword_20CD640C0);
      v64 = *(v63 + 48);
      v58(v62, v59, v60);
      v58(v62 + v64, v161, v60);
      (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
      swift_willThrow();
      v57(v59, v60);
      sub_20CD1DA10(v167, &qword_27C810E78, &qword_20CD646C8);
      v57(v161, v60);
      v57(v172, v60);
      sub_20CD1DA10(v176, &qword_27C810D08, &qword_20CD64280);
      v33 = v177;
      goto LABEL_8;
    }
  }

  else
  {

    v43(v45, v46);
    v43(v44, v46);
    v56 = v179;
    if (v179 > 32)
    {
      goto LABEL_15;
    }
  }

  sub_20CD62A24();
  sub_20CD1DF2C(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
  if (sub_20CD63224())
  {
    v66 = v0[83];
    v67 = v0[63];
    v68 = v0[55];
    v69 = v0[50];
    v66(v0[56], v0[57], v69);
    v66(v68, v67, v69);
    v70 = sub_20CD63194();
    v71 = sub_20CD633D4();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[85];
    v75 = v0[55];
    v74 = v0[56];
    v76 = v0[50];
    if (v72)
    {
      v77 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v183[0] = v173;
      *v77 = 134218498;
      *(v77 + 4) = v56;
      *(v77 + 12) = 2080;
      sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
      v168 = v70;
      v78 = sub_20CD63574();
      v164 = v71;
      v80 = v79;
      v73(v74, v76);
      v81 = sub_20CD6153C(v78, v80, v183);

      *(v77 + 14) = v81;
      *(v77 + 22) = 2080;
      v82 = sub_20CD63574();
      v84 = v83;
      v73(v75, v76);
      v85 = sub_20CD6153C(v82, v84, v183);

      *(v77 + 24) = v85;
      _os_log_impl(&dword_20CCEA000, v168, v164, "[SnapshotRetriever] Compute remaining gap [%ld] (%s -> %s", v77, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F3115B0](v173, -1, -1);
      MEMORY[0x20F3115B0](v77, -1, -1);
    }

    else
    {

      v73(v75, v76);
      v73(v74, v76);
    }

    result = sub_20CD63224();
    if (result)
    {
      v102 = v0[83];
      v103 = v0[68];
      v181 = v0[66];
      v104 = v0[63];
      v106 = v0[50];
      v105 = v0[51];
      v160 = v0[85];
      v162 = v0[47];
      v107 = v0[40];
      v108 = v0[41];
      v109 = v0[39];
      v165 = v0[49];
      v169 = v0[35];
      v102(v108, v0[57], v106);
      v102(v108 + *(v109 + 48), v104, v106);
      sub_20CD1D9A8(v108, v107, &qword_27C810CF0, &unk_20CD64270);
      v110 = *(v109 + 48);
      v111 = *(v105 + 32);
      v111(v103, v107, v106);
      v0[88] = (v105 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v160(v107 + v110, v106);
      sub_20CCF3D20(v108, v107, &qword_27C810CF0, &unk_20CD64270);
      v174 = *(v181 + 36);
      v111(v103 + v174, v107 + *(v109 + 48), v106);
      v160(v107, v106);
      sub_20CD1D9A8(v165, v162, &qword_27C810E78, &qword_20CD646C8);
      if (v175(v162, 1, v169) == 1)
      {
        v112 = v0[83];
        v113 = v0[64];
        v114 = v0[53];
        v115 = v0[50];
        v170 = v0[47];
        v116 = v0[35];
        v112(v0[54], v113, v115);
        v112(v114, v113, v115);
        sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
        sub_20CD62C74();
        if (v175(v170, 1, v116) != 1)
        {
          sub_20CD1DA10(v0[47], &qword_27C810E78, &qword_20CD646C8);
        }
      }

      else
      {
        (*(v0[36] + 32))(v0[38], v0[47], v0[35]);
      }

      (v0[83])(v0[52], v103 + v174, v0[50]);
      sub_20CD626C4();
      sub_20CD62A84();
      v133 = v0[30];
      v134 = v0[24];
      v135 = v0[25];
      v136 = *(v0[21] + 8);
      v136(v0[23], v0[20]);
      sub_20CD62594();
      v137 = v134;
      v138 = *(v135 + 8);
      v138(v133, v137);
      sub_20CD626C4();
      sub_20CD62A84();
      v136(v0[22], v0[20]);
      sub_20CD62614();
      v138(v0[29], v0[24]);
      sub_20CD624D4();
      v0[89] = sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
      sub_20CD62C94();
      v157 = swift_task_alloc();
      v0[90] = v157;
      *v157 = v0;
      v157[1] = sub_20CD01A98;
      v158 = v0[34];
      v159 = v0[19];

      return sub_20CD55850(v158, v159);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v86 = v0[85];
  v87 = v0[73];
  v89 = v0[63];
  v88 = v0[64];
  v90 = v0[60];
  v91 = v0[50];
  v178 = v0[69];
  v180 = v0[49];
  v92 = v0[8];
  v93 = v0[9];
  v86(v0[57], v91);
  v86(v90, v91);
  v86(v89, v91);
  v86(v88, v91);
  sub_20CD1DA10(v178, &qword_27C810D08, &qword_20CD64280);
  sub_20CCF3D20(v180, v87, &qword_27C810E78, &qword_20CD646C8);
  v94 = v87 + *(v92 + 36);
  *v94 = 0;
  *(v94 + 8) = 1;
  v95 = *(v93 + 56);
  v95(v87, 0, 1, v92);
  v0[96] = v95;
  v96 = v0[24];
  v97 = v0[25];
  v98 = v0[11];
  sub_20CD1D9A8(v0[76] + *(v0[75] + 20), v98, &qword_27C810CC8, &qword_20CD64160);
  if ((*(v97 + 48))(v98, 1, v96) == 1)
  {
    v99 = v0[73];
    v100 = v0[11];
    v101 = v0[4];
    sub_20CD1C87C(v0[76], type metadata accessor for SnapshotQueryRange);
    sub_20CD1DA10(v100, &qword_27C810CC8, &qword_20CD64160);
    sub_20CCF3D20(v99, v101, &qword_27C810E80, &qword_20CD646D0);

    v34 = v0[1];
    goto LABEL_10;
  }

  v118 = v0[26];
  v117 = v0[27];
  v119 = v0[24];
  v120 = v0[25];
  (*(v120 + 32))(v117, v0[11], v119);
  (*(v120 + 16))(v118, v117, v119);
  v121 = sub_20CD63194();
  v122 = sub_20CD633D4();
  v123 = os_log_type_enabled(v121, v122);
  v125 = v0[25];
  v124 = v0[26];
  v126 = v0[24];
  if (v123)
  {
    v127 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v183[0] = v182;
    *v127 = 136315138;
    sub_20CD1DF2C(&qword_28110F7E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v128 = sub_20CD63574();
    v130 = v129;
    v131 = *(v125 + 8);
    v131(v124, v126);
    v132 = sub_20CD6153C(v128, v130, v183);

    *(v127 + 4) = v132;
    _os_log_impl(&dword_20CCEA000, v121, v122, "[SnapshotRetriever] Apply today's changes: %s)", v127, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v182);
    MEMORY[0x20F3115B0](v182, -1, -1);
    MEMORY[0x20F3115B0](v127, -1, -1);
  }

  else
  {

    v131 = *(v125 + 8);
    v131(v124, v126);
  }

  v0[97] = v131;
  v139 = v0[71];
  v140 = v0[8];
  v141 = v0[9];
  sub_20CD1D9A8(v0[73], v139, &qword_27C810E80, &qword_20CD646D0);
  v142 = *(v141 + 48);
  v0[98] = v142;
  v0[99] = (v141 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v143 = v142(v139, 1, v140);
  v144 = v0[71];
  v145 = v0[45];
  v146 = v0[35];
  v147 = v0[36];
  if (v143 == 1)
  {
    sub_20CD1DA10(v0[71], &qword_27C810E80, &qword_20CD646D0);
    (*(v147 + 56))(v145, 1, 1, v146);
    goto LABEL_38;
  }

  sub_20CD1D9A8(v0[71], v0[45], &qword_27C810E78, &qword_20CD646C8);
  sub_20CD1DA10(v144, &qword_27C810E88, &qword_20CD646E0);
  if ((*(v147 + 48))(v145, 1, v146) == 1)
  {
LABEL_38:
    v148 = v0[54];
    v149 = v0[50];
    v150 = v0[51];
    v151 = v0[45];
    v152 = v0[36];
    v153 = v0[35];
    sub_20CD62564();
    sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
    sub_20CD62CB4();
    (*(v150 + 8))(v148, v149);
    if ((*(v152 + 48))(v151, 1, v153) != 1)
    {
      sub_20CD1DA10(v0[45], &qword_27C810E78, &qword_20CD646C8);
    }

    goto LABEL_41;
  }

  (*(v0[36] + 32))(v0[37], v0[45], v0[35]);
LABEL_41:
  v0[100] = sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
  sub_20CD62C94();
  v154 = swift_task_alloc();
  v0[101] = v154;
  *v154 = v0;
  v154[1] = sub_20CD0343C;
  v155 = v0[27];
  v156 = v0[18];

  return sub_20CD57A94(v155, v156);
}

uint64_t sub_20CD01A98(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[91] = a1;
  v4[92] = v1;

  (*(v3[17] + 8))(v3[19], v3[16]);
  if (v1)
  {
    v5 = sub_20CD01DEC;
  }

  else
  {
    v5 = sub_20CD01C0C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD01C0C()
{
  v1 = swift_task_alloc();
  *(v0 + 744) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
  *v1 = v0;
  v1[1] = sub_20CD01CD4;
  v3 = *(v0 + 728);

  return MEMORY[0x282160B38](v0 + 24, &unk_20CD646F8, v3, v2);
}

uint64_t sub_20CD01CD4(double a1)
{
  v3 = *v2;
  *(v3 + 752) = a1;
  *(v3 + 760) = v1;

  if (v1)
  {
    v4 = sub_20CD03030;
  }

  else
  {
    v4 = sub_20CD021E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD01DEC()
{
  v1 = v0[85];
  v2 = v0[68];
  v3 = v0[52];
  v4 = v0[50];
  v5 = v0[38];
  v6 = v0[35];
  v7 = v0[36];
  (*(v0[33] + 8))(v0[34], v0[32]);
  v1(v3, v4);
  (*(v7 + 8))(v5, v6);
  sub_20CD1DA10(v2, &qword_27C810D08, &qword_20CD64280);
  v8 = v0[85];
  v9 = v0[76];
  v10 = v0[69];
  v12 = v0[63];
  v11 = v0[64];
  v13 = v0[60];
  v15 = v0[49];
  v14 = v0[50];
  v8(v0[57], v14);
  v8(v13, v14);
  sub_20CD1DA10(v15, &qword_27C810E78, &qword_20CD646C8);
  v8(v12, v14);
  v8(v11, v14);
  sub_20CD1DA10(v10, &qword_27C810D08, &qword_20CD64280);
  sub_20CD1C87C(v9, type metadata accessor for SnapshotQueryRange);

  v16 = v0[1];

  return v16();
}

uint64_t sub_20CD021E0()
{
  v94 = v0;
  v90 = v0[95];
  sub_20CD62B24();
  sub_20CD62B34();
  sub_20CD62AF4();
  sub_20CD62CC4();
  if (v90)
  {
    v88 = v0[68];
    v1 = v0[50];
    v83 = v0[85];
    v85 = v0[38];
    v2 = v0[36];
    v79 = v0[52];
    v81 = v0[35];
    v3 = v0[33];
    v4 = v0[34];
    v5 = v0[32];
    v6 = v0[15];
    v8 = v0[12];
    v7 = v0[13];

    (*(v7 + 8))(v6, v8);
    (*(v3 + 8))(v4, v5);
    v83(v79, v1);
    (*(v2 + 8))(v85, v81);
    sub_20CD1DA10(v88, &qword_27C810D08, &qword_20CD64280);
    v9 = v0[85];
    v10 = v0[76];
    v11 = v0[69];
    v13 = v0[63];
    v12 = v0[64];
    v14 = v0[60];
    v16 = v0[49];
    v15 = v0[50];
    v9(v0[57], v15);
    v9(v14, v15);
    sub_20CD1DA10(v16, &qword_27C810E78, &qword_20CD646C8);
    v9(v13, v15);
    v9(v12, v15);
    sub_20CD1DA10(v11, &qword_27C810D08, &qword_20CD64280);
    sub_20CD1C87C(v10, type metadata accessor for SnapshotQueryRange);

    v17 = v0[1];
LABEL_5:

    return v17();
  }

  v18 = v0[94];
  v19 = v0[85];
  v89 = v0[69];
  v91 = v0[73];
  v74 = v0[68];
  v86 = v0[63];
  v87 = v0[64];
  v80 = v0[60];
  v77 = v0[72];
  v78 = v0[57];
  v71 = v0[52];
  v20 = v0[50];
  v82 = v0[49];
  v75 = v0[46];
  v21 = v0[36];
  v72 = v0[35];
  v73 = v0[38];
  v22 = v0[33];
  v69 = v0[32];
  v70 = v0[34];
  v23 = v0[15];
  v25 = v0[12];
  v24 = v0[13];
  v84 = v0[9];
  v76 = v0[8];

  (*(v24 + 8))(v23, v25);
  (*(v22 + 8))(v70, v69);
  v19(v71, v20);
  (*(v21 + 8))(v73, v72);
  sub_20CD1DA10(v74, &qword_27C810D08, &qword_20CD64280);
  (*(v21 + 56))(v75, 0, 1, v72);
  sub_20CCF3D20(v75, v77, &qword_27C810E78, &qword_20CD646C8);
  v26 = v77 + *(v76 + 36);
  *v26 = v18;
  *(v26 + 8) = 0;
  v19(v78, v20);
  v19(v80, v20);
  sub_20CD1DA10(v82, &qword_27C810E78, &qword_20CD646C8);
  v19(v86, v20);
  v19(v87, v20);
  sub_20CD1DA10(v89, &qword_27C810D08, &qword_20CD64280);
  v27 = *(v84 + 56);
  v27(v77, 0, 1, v76);
  sub_20CCF3D20(v77, v91, &qword_27C810E80, &qword_20CD646D0);
  v0[96] = v27;
  v28 = v0[24];
  v29 = v0[25];
  v30 = v0[11];
  sub_20CD1D9A8(v0[76] + *(v0[75] + 20), v30, &qword_27C810CC8, &qword_20CD64160);
  if ((*(v29 + 48))(v30, 1, v28) == 1)
  {
    v31 = v0[73];
    v32 = v0[11];
    v33 = v0[4];
    sub_20CD1C87C(v0[76], type metadata accessor for SnapshotQueryRange);
    sub_20CD1DA10(v32, &qword_27C810CC8, &qword_20CD64160);
    sub_20CCF3D20(v31, v33, &qword_27C810E80, &qword_20CD646D0);

    v17 = v0[1];
    goto LABEL_5;
  }

  v36 = v0[26];
  v35 = v0[27];
  v37 = v0[24];
  v38 = v0[25];
  (*(v38 + 32))(v35, v0[11], v37);
  (*(v38 + 16))(v36, v35, v37);
  v39 = sub_20CD63194();
  v40 = sub_20CD633D4();
  v41 = os_log_type_enabled(v39, v40);
  v43 = v0[25];
  v42 = v0[26];
  v44 = v0[24];
  if (v41)
  {
    v45 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v93[0] = v92;
    *v45 = 136315138;
    sub_20CD1DF2C(&qword_28110F7E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v46 = sub_20CD63574();
    v48 = v47;
    v49 = *(v43 + 8);
    v49(v42, v44);
    v50 = sub_20CD6153C(v46, v48, v93);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_20CCEA000, v39, v40, "[SnapshotRetriever] Apply today's changes: %s)", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v92);
    MEMORY[0x20F3115B0](v92, -1, -1);
    MEMORY[0x20F3115B0](v45, -1, -1);
  }

  else
  {

    v49 = *(v43 + 8);
    v49(v42, v44);
  }

  v0[97] = v49;
  v51 = v0[71];
  v52 = v0[8];
  v53 = v0[9];
  sub_20CD1D9A8(v0[73], v51, &qword_27C810E80, &qword_20CD646D0);
  v54 = *(v53 + 48);
  v0[98] = v54;
  v0[99] = (v53 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v55 = v54(v51, 1, v52);
  v56 = v0[71];
  v57 = v0[45];
  v58 = v0[35];
  v59 = v0[36];
  if (v55 == 1)
  {
    sub_20CD1DA10(v0[71], &qword_27C810E80, &qword_20CD646D0);
    (*(v59 + 56))(v57, 1, 1, v58);
    goto LABEL_14;
  }

  sub_20CD1D9A8(v0[71], v0[45], &qword_27C810E78, &qword_20CD646C8);
  sub_20CD1DA10(v56, &qword_27C810E88, &qword_20CD646E0);
  if ((*(v59 + 48))(v57, 1, v58) == 1)
  {
LABEL_14:
    v60 = v0[54];
    v61 = v0[50];
    v62 = v0[51];
    v63 = v0[45];
    v64 = v0[36];
    v65 = v0[35];
    sub_20CD62564();
    sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
    sub_20CD62CB4();
    (*(v62 + 8))(v60, v61);
    if ((*(v64 + 48))(v63, 1, v65) != 1)
    {
      sub_20CD1DA10(v0[45], &qword_27C810E78, &qword_20CD646C8);
    }

    goto LABEL_17;
  }

  (*(v0[36] + 32))(v0[37], v0[45], v0[35]);
LABEL_17:
  v0[100] = sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
  sub_20CD62C94();
  v66 = swift_task_alloc();
  v0[101] = v66;
  *v66 = v0;
  v66[1] = sub_20CD0343C;
  v67 = v0[27];
  v68 = v0[18];

  return sub_20CD57A94(v67, v68);
}

uint64_t sub_20CD03030()
{
  v1 = v0[85];
  v20 = v0[68];
  v2 = v0[52];
  v3 = v0[50];
  v4 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[32];

  (*(v8 + 8))(v7, v9);
  v1(v2, v3);
  (*(v5 + 8))(v4, v6);
  sub_20CD1DA10(v20, &qword_27C810D08, &qword_20CD64280);
  v10 = v0[85];
  v11 = v0[76];
  v12 = v0[69];
  v14 = v0[63];
  v13 = v0[64];
  v15 = v0[60];
  v17 = v0[49];
  v16 = v0[50];
  v10(v0[57], v16);
  v10(v15, v16);
  sub_20CD1DA10(v17, &qword_27C810E78, &qword_20CD646C8);
  v10(v14, v16);
  v10(v13, v16);
  sub_20CD1DA10(v12, &qword_27C810D08, &qword_20CD64280);
  sub_20CD1C87C(v11, type metadata accessor for SnapshotQueryRange);

  v18 = v0[1];

  return v18();
}

uint64_t sub_20CD0343C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[102] = a1;
  v4[103] = v1;

  (*(v3[17] + 8))(v3[18], v3[16]);
  if (v1)
  {
    v5 = sub_20CD03790;
  }

  else
  {
    v5 = sub_20CD035B0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD035B0()
{
  v1 = swift_task_alloc();
  *(v0 + 832) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
  *v1 = v0;
  v1[1] = sub_20CD03678;
  v3 = *(v0 + 816);

  return MEMORY[0x282160B38](v0 + 16, &unk_20CD646E8, v3, v2);
}

uint64_t sub_20CD03678(double a1)
{
  v3 = *v2;
  *(v3 + 840) = a1;
  *(v3 + 848) = v1;

  if (v1)
  {
    v4 = sub_20CD04434;
  }

  else
  {
    v4 = sub_20CD03AEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD03790()
{
  (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  (*(v0 + 776))(*(v0 + 216), *(v0 + 192));
  sub_20CD1DA10(v2, &qword_27C810E80, &qword_20CD646D0);
  sub_20CD1C87C(v1, type metadata accessor for SnapshotQueryRange);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CD03AEC()
{
  if (*(*(v0 + 16) + 16))
  {
    v44 = *(v0 + 848);
    sub_20CD62B24();
    sub_20CD62B34();
    sub_20CD62AF4();
    sub_20CD62CC4();
    if (v44)
    {
      v2 = *(v0 + 288);
      v1 = *(v0 + 296);
      v3 = *(v0 + 280);
      v5 = *(v0 + 104);
      v4 = *(v0 + 112);
      v6 = *(v0 + 96);

      (*(v5 + 8))(v4, v6);
      (*(v2 + 8))(v1, v3);
      v7 = *(v0 + 608);
      v8 = *(v0 + 584);
      (*(v0 + 776))(*(v0 + 216), *(v0 + 192));
      sub_20CD1DA10(v8, &qword_27C810E80, &qword_20CD646D0);
      sub_20CD1C87C(v7, type metadata accessor for SnapshotQueryRange);

      v9 = *(v0 + 8);
      goto LABEL_11;
    }

    v14 = *(v0 + 352);
    v16 = *(v0 + 288);
    v15 = *(v0 + 296);
    v17 = *(v0 + 280);
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 96);
    v45 = *(v0 + 80);

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
    (*(v16 + 56))(v14, 0, 1, v17);
    sub_20CCF3D20(v14, v45, &qword_27C810E78, &qword_20CD646C8);
  }

  else
  {
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = *(v0 + 280);
    v13 = *(v0 + 80);

    (*(v11 + 32))(v13, v10, v12);
    (*(v11 + 56))(v13, 0, 1, v12);
  }

  v21 = *(v0 + 784);
  v22 = *(v0 + 776);
  v23 = *(v0 + 608);
  v24 = *(v0 + 584);
  v25 = *(v0 + 560);
  v26 = *(v0 + 344);
  v27 = *(v0 + 216);
  v28 = *(v0 + 192);
  v29 = *(v0 + 80);
  v30 = *(v0 + 64);
  v31 = v29 + *(v30 + 36);
  *v31 = *(v0 + 840);
  *(v31 + 8) = 0;
  v22(v27, v28);
  sub_20CD1C87C(v23, type metadata accessor for SnapshotQueryRange);
  sub_20CD1D9A8(v29, v26, &qword_27C810E78, &qword_20CD646C8);
  sub_20CCF3D20(v24, v25, &qword_27C810E80, &qword_20CD646D0);
  v32 = v21(v25, 1, v30);
  v33 = *(v0 + 560);
  if (v32 == 1)
  {
    sub_20CD1DA10(v33, &qword_27C810E80, &qword_20CD646D0);
    v34 = 0.0;
  }

  else
  {
    v35 = v33 + *(*(v0 + 64) + 36);
    v34 = *v35;
    v36 = *(v35 + 8);
    sub_20CD1DA10(v33, &qword_27C810E88, &qword_20CD646E0);
    if (v36)
    {
      v34 = 0.0;
    }
  }

  v37 = *(v0 + 840);
  v38 = *(v0 + 768);
  v39 = *(v0 + 344);
  v40 = *(v0 + 64);
  v41 = *(v0 + 32);
  sub_20CD1DA10(*(v0 + 80), &qword_27C810E88, &qword_20CD646E0);
  sub_20CCF3D20(v39, v41, &qword_27C810E78, &qword_20CD646C8);
  v42 = v41 + *(v40 + 36);
  *v42 = v34 + v37;
  *(v42 + 8) = 0;
  v38(v41, 0, 1, v40);

  v9 = *(v0 + 8);
LABEL_11:

  return v9();
}

uint64_t sub_20CD04434()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 608);
  v5 = *(v0 + 584);
  (*(v0 + 776))(*(v0 + 216), *(v0 + 192));
  sub_20CD1DA10(v5, &qword_27C810E80, &qword_20CD646D0);
  sub_20CD1C87C(v4, type metadata accessor for SnapshotQueryRange);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20CD047A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E38, &qword_20CD64620);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
  v4[11] = swift_task_alloc();
  v6 = sub_20CD62FE4();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = sub_20CD62E94();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v8 = sub_20CD626F4();
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v9 = sub_20CD62654();
  v4[24] = v9;
  v4[25] = *(v9 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v10 = sub_20CD62514();
  v4[32] = v10;
  v4[33] = *(v10 - 8);
  v4[34] = swift_task_alloc();
  v11 = sub_20CD62B44();
  v4[35] = v11;
  v4[36] = *(v11 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800);
  v4[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E28, &unk_20CD64A10);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v12 = sub_20CD62AB4();
  v4[50] = v12;
  v4[51] = *(v12 - 8);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF8, &unk_20CD64540);
  v4[65] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v4[66] = v13;
  v4[67] = *(v13 - 8);
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E30, &qword_20CD64610);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  sub_20CD62CE4();
  v4[74] = swift_task_alloc();
  v4[75] = type metadata accessor for SnapshotQueryRange(0);
  v4[76] = swift_task_alloc();
  v14 = sub_20CD62D24();
  v4[77] = v14;
  v4[78] = *(v14 - 8);
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD04EF4, 0, 0);
}

uint64_t sub_20CD04EF4()
{
  v109 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = v0[80];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[5];
  v5 = sub_20CD631B4();
  v0[81] = __swift_project_value_buffer(v5, qword_28110F878);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_20CD63194();
  v8 = sub_20CD633D4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[80];
  if (v9)
  {
    v11 = v0[79];
    v12 = v0[78];
    v13 = v0[77];
    v14 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v108[0] = v105;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = sub_20CD63264();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_20CD6153C(v15, v17, v108);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_20CCEA000, v7, v8, "[SnapshotRetriever] execute query %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x20F3115B0](v105, -1, -1);
    MEMORY[0x20F3115B0](v14, -1, -1);
  }

  else
  {
    v19 = v0[78];
    v20 = v0[77];

    (*(v19 + 8))(v10, v20);
  }

  v21 = v0[76];
  v22 = v0[74];
  v0[82] = sub_20CD1DF2C(&qword_28110F6E0, MEMORY[0x277D0A388], MEMORY[0x277D0A380]);
  sub_20CD62B14();
  sub_20CCEEFC0(v22, v21);
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[65];
  sub_20CD1D9A8(v0[76], v26, &qword_27C810CF8, &unk_20CD64540);
  v27 = (*(v24 + 48))(v26, 1, v25);
  if (v27 == 1)
  {
    v28 = v0[73];
    v29 = v0[8];
    v30 = v0[9];
    sub_20CD1DA10(v0[65], &qword_27C810CF8, &unk_20CD64540);
    v31 = *(v30 + 56);
    v31(v28, 1, 1, v29);
    v0[96] = v31;
    v32 = v0[24];
    v33 = v0[25];
    v34 = v0[11];
    sub_20CD1D9A8(v0[76] + *(v0[75] + 20), v34, &qword_27C810CC8, &qword_20CD64160);
    if ((*(v33 + 48))(v34, 1, v32) == 1)
    {
      v35 = v0[73];
      v36 = v0[11];
      v37 = v0[4];
      sub_20CD1C87C(v0[76], type metadata accessor for SnapshotQueryRange);
      sub_20CD1DA10(v36, &qword_27C810CC8, &qword_20CD64160);
      sub_20CCF3D20(v35, v37, &qword_27C810E30, &qword_20CD64610);

      v38 = v0[1];

      return v38();
    }

    v66 = v0[26];
    v65 = v0[27];
    v67 = v0[24];
    v68 = v0[25];
    (*(v68 + 32))(v65, v0[11], v67);
    (*(v68 + 16))(v66, v65, v67);
    v69 = sub_20CD63194();
    v70 = sub_20CD633D4();
    v71 = os_log_type_enabled(v69, v70);
    v73 = v0[25];
    v72 = v0[26];
    v74 = v0[24];
    if (v71)
    {
      v75 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v108[0] = v107;
      *v75 = 136315138;
      sub_20CD1DF2C(&qword_28110F7E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v76 = sub_20CD63574();
      v78 = v77;
      v79 = *(v73 + 8);
      v79(v72, v74);
      v80 = sub_20CD6153C(v76, v78, v108);

      *(v75 + 4) = v80;
      _os_log_impl(&dword_20CCEA000, v69, v70, "[SnapshotRetriever] Apply today's changes: %s)", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v107);
      MEMORY[0x20F3115B0](v107, -1, -1);
      MEMORY[0x20F3115B0](v75, -1, -1);
    }

    else
    {

      v79 = *(v73 + 8);
      v79(v72, v74);
    }

    v0[97] = v79;
    v85 = v0[71];
    v86 = v0[8];
    v87 = v0[9];
    sub_20CD1D9A8(v0[73], v85, &qword_27C810E30, &qword_20CD64610);
    v88 = *(v87 + 48);
    v0[98] = v88;
    v0[99] = (v87 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v89 = v88(v85, 1, v86);
    v90 = v0[71];
    v91 = v0[45];
    v92 = v0[35];
    v93 = v0[36];
    if (v89 == 1)
    {
      sub_20CD1DA10(v0[71], &qword_27C810E30, &qword_20CD64610);
      (*(v93 + 56))(v91, 1, 1, v92);
    }

    else
    {
      sub_20CD1D9A8(v0[71], v0[45], &qword_27C810E28, &unk_20CD64A10);
      sub_20CD1DA10(v90, &qword_27C810E38, &qword_20CD64620);
      if ((*(v93 + 48))(v91, 1, v92) != 1)
      {
        (*(v0[36] + 32))(v0[37], v0[45], v0[35]);
LABEL_28:
        v0[100] = sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
        sub_20CD62C94();
        v100 = swift_task_alloc();
        v0[101] = v100;
        *v100 = v0;
        v100[1] = sub_20CD098B4;
        v101 = v0[27];
        v102 = v0[18];

        return sub_20CD57A94(v101, v102);
      }
    }

    v94 = v0[54];
    v95 = v0[50];
    v96 = v0[51];
    v97 = v0[45];
    v98 = v0[36];
    v99 = v0[35];
    sub_20CD62564();
    sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
    sub_20CD62CB4();
    (*(v96 + 8))(v94, v95);
    if ((*(v98 + 48))(v97, 1, v99) != 1)
    {
      sub_20CD1DA10(v0[45], &qword_27C810E28, &unk_20CD64A10);
    }

    goto LABEL_28;
  }

  v39 = v0[69];
  v40 = v0[66];
  v42 = v0[63];
  v41 = v0[64];
  v44 = v0[61];
  v43 = v0[62];
  v45 = v0[50];
  v46 = v0[51];
  sub_20CCF3D20(v0[65], v39, &qword_27C810D08, &qword_20CD64280);
  v47 = *(v46 + 16);
  v0[83] = v47;
  v0[84] = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v47(v41, v39, v45);
  v47(v42, v39 + *(v40 + 36), v45);
  v47(v43, v41, v45);
  v47(v44, v42, v45);
  v48 = sub_20CD63194();
  v49 = sub_20CD633D4();
  v50 = os_log_type_enabled(v48, v49);
  v52 = v0[61];
  v51 = v0[62];
  v54 = v0[50];
  v53 = v0[51];
  if (v50)
  {
    v104 = v49;
    v55 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v108[0] = v106;
    *v55 = 136315394;
    sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
    v56 = sub_20CD63574();
    v58 = v57;
    v103 = v48;
    v59 = *(v53 + 8);
    v59(v51, v54);
    v60 = sub_20CD6153C(v56, v58, v108);

    *(v55 + 4) = v60;
    *(v55 + 12) = 2080;
    v61 = sub_20CD63574();
    v63 = v62;
    v59(v52, v54);
    v64 = sub_20CD6153C(v61, v63, v108);

    *(v55 + 14) = v64;
    _os_log_impl(&dword_20CCEA000, v103, v104, "[SnapshotRetriever] Fetching closest properties (%s -> %s)", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v106, -1, -1);
    MEMORY[0x20F3115B0](v55, -1, -1);
  }

  else
  {

    v59 = *(v53 + 8);
    v59(v52, v54);
    v59(v51, v54);
  }

  v0[85] = v59;
  v81 = swift_task_alloc();
  v0[86] = v81;
  *v81 = v0;
  v81[1] = sub_20CD05F08;
  v82 = v0[69];
  v83 = v0[49];
  v84 = v0[5];

  return sub_20CD11F94(v83, v82, v84);
}

uint64_t sub_20CD05F08()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_20CD07BB4;
  }

  else
  {
    v2 = sub_20CD0601C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD0601C()
{
  v184 = v0;
  v1 = v0[48];
  v2 = v0[35];
  v3 = v0[36];
  sub_20CD1D9A8(v0[49], v1, &qword_27C810E28, &unk_20CD64A10);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = v0[87];
    v6 = v0[50];
    v7 = v0[51];
    v8 = v0[42];
    sub_20CD1DA10(v0[48], &qword_27C810E28, &unk_20CD64A10);
    (*(v7 + 56))(v8, 1, 1, v6);
    sub_20CD62A34();
    if (v5)
    {
      v9 = v0[85];
      v10 = v0[76];
      v11 = v0[69];
      v13 = v0[63];
      v12 = v0[64];
      v14 = v0[50];
      v15 = v0[51];
      v16 = v0[42];
      sub_20CD1DA10(v0[49], &qword_27C810E28, &unk_20CD64A10);
      v9(v13, v14);
      v9(v12, v14);
      sub_20CD1DA10(v11, &qword_27C810D08, &qword_20CD64280);
      sub_20CD1C87C(v10, type metadata accessor for SnapshotQueryRange);
      if ((*(v15 + 48))(v16, 1, v14) != 1)
      {
        sub_20CD1DA10(v0[42], &qword_27C810DE0, &unk_20CD64800);
      }

      goto LABEL_9;
    }

    v65 = v0[42];
    if ((*(v0[51] + 48))(v65, 1, v0[50]) != 1)
    {
      sub_20CD1DA10(v65, &qword_27C810DE0, &unk_20CD64800);
    }

    v24 = 0;
  }

  else
  {
    v17 = v0[60];
    v18 = v0[50];
    v19 = v0[51];
    v20 = v0[48];
    v21 = v0[42];
    v22 = v0[35];
    v23 = v0[36];
    sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
    sub_20CD62C64();
    (*(v23 + 8))(v20, v22);
    (*(v19 + 56))(v21, 0, 1, v18);
    (*(v19 + 32))(v17, v21, v18);
    v24 = v0[87];
  }

  v25 = sub_20CD62A94();
  v26 = v0[64];
  if (v24)
  {
    v27 = v0[85];
    v28 = v0[76];
    v29 = v0[69];
    v30 = v0[63];
    v31 = v0[50];
    v32 = v0[49];
    v27(v0[60], v31);
    sub_20CD1DA10(v32, &qword_27C810E28, &unk_20CD64A10);
    v27(v30, v31);
    v27(v26, v31);
    sub_20CD1DA10(v29, &qword_27C810D08, &qword_20CD64280);
    v33 = v28;
LABEL_8:
    sub_20CD1C87C(v33, type metadata accessor for SnapshotQueryRange);
LABEL_9:

    v34 = v0[1];
LABEL_10:

    return v34();
  }

  v179 = v25;
  v36 = v0[83];
  v37 = v0[60];
  v38 = v0[58];
  v39 = v0[50];
  v36(v0[59], v26, v39);
  v36(v38, v37, v39);
  v40 = sub_20CD63194();
  v41 = sub_20CD633D4();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v0[85];
  v45 = v0[58];
  v44 = v0[59];
  v46 = v0[50];
  v175 = v4;
  if (v42)
  {
    v166 = v41;
    v47 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v183[0] = v171;
    *v47 = 136315650;
    sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
    v163 = v40;
    v48 = sub_20CD63574();
    v50 = v49;
    v43(v44, v46);
    v51 = sub_20CD6153C(v48, v50, v183);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    v52 = sub_20CD63574();
    v54 = v53;
    v43(v45, v46);
    v55 = sub_20CD6153C(v52, v54, v183);

    *(v47 + 14) = v55;
    *(v47 + 22) = 2048;
    v56 = v179;
    *(v47 + 24) = v179;
    _os_log_impl(&dword_20CCEA000, v163, v166, "[SnapshotRetriever] Resolved from (%s -> %s), %ld days missing", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v171, -1, -1);
    MEMORY[0x20F3115B0](v47, -1, -1);

    if (v179 > 32)
    {
LABEL_15:
      v57 = v0[85];
      v58 = v0[83];
      v176 = v0[69];
      v177 = v0[76];
      v59 = v0[60];
      v60 = v0[50];
      v161 = v0[63];
      v167 = v0[49];
      v172 = v0[64];
      type metadata accessor for SnapshotRetriver.QueryFailure(0);
      sub_20CD1DF2C(&qword_27C810DE8, type metadata accessor for SnapshotRetriver.QueryFailure, &unk_20CD64110);
      swift_allocError();
      v62 = v61;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C20, &qword_20CD640C0);
      v64 = *(v63 + 48);
      v58(v62, v59, v60);
      v58(v62 + v64, v161, v60);
      (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
      swift_willThrow();
      v57(v59, v60);
      sub_20CD1DA10(v167, &qword_27C810E28, &unk_20CD64A10);
      v57(v161, v60);
      v57(v172, v60);
      sub_20CD1DA10(v176, &qword_27C810D08, &qword_20CD64280);
      v33 = v177;
      goto LABEL_8;
    }
  }

  else
  {

    v43(v45, v46);
    v43(v44, v46);
    v56 = v179;
    if (v179 > 32)
    {
      goto LABEL_15;
    }
  }

  sub_20CD62A24();
  sub_20CD1DF2C(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
  if (sub_20CD63224())
  {
    v66 = v0[83];
    v67 = v0[63];
    v68 = v0[55];
    v69 = v0[50];
    v66(v0[56], v0[57], v69);
    v66(v68, v67, v69);
    v70 = sub_20CD63194();
    v71 = sub_20CD633D4();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[85];
    v75 = v0[55];
    v74 = v0[56];
    v76 = v0[50];
    if (v72)
    {
      v77 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v183[0] = v173;
      *v77 = 134218498;
      *(v77 + 4) = v56;
      *(v77 + 12) = 2080;
      sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
      v168 = v70;
      v78 = sub_20CD63574();
      v164 = v71;
      v80 = v79;
      v73(v74, v76);
      v81 = sub_20CD6153C(v78, v80, v183);

      *(v77 + 14) = v81;
      *(v77 + 22) = 2080;
      v82 = sub_20CD63574();
      v84 = v83;
      v73(v75, v76);
      v85 = sub_20CD6153C(v82, v84, v183);

      *(v77 + 24) = v85;
      _os_log_impl(&dword_20CCEA000, v168, v164, "[SnapshotRetriever] Compute remaining gap [%ld] (%s -> %s", v77, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F3115B0](v173, -1, -1);
      MEMORY[0x20F3115B0](v77, -1, -1);
    }

    else
    {

      v73(v75, v76);
      v73(v74, v76);
    }

    result = sub_20CD63224();
    if (result)
    {
      v102 = v0[83];
      v103 = v0[68];
      v181 = v0[66];
      v104 = v0[63];
      v106 = v0[50];
      v105 = v0[51];
      v160 = v0[85];
      v162 = v0[47];
      v107 = v0[40];
      v108 = v0[41];
      v109 = v0[39];
      v165 = v0[49];
      v169 = v0[35];
      v102(v108, v0[57], v106);
      v102(v108 + *(v109 + 48), v104, v106);
      sub_20CD1D9A8(v108, v107, &qword_27C810CF0, &unk_20CD64270);
      v110 = *(v109 + 48);
      v111 = *(v105 + 32);
      v111(v103, v107, v106);
      v0[88] = (v105 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v160(v107 + v110, v106);
      sub_20CCF3D20(v108, v107, &qword_27C810CF0, &unk_20CD64270);
      v174 = *(v181 + 36);
      v111(v103 + v174, v107 + *(v109 + 48), v106);
      v160(v107, v106);
      sub_20CD1D9A8(v165, v162, &qword_27C810E28, &unk_20CD64A10);
      if (v175(v162, 1, v169) == 1)
      {
        v112 = v0[83];
        v113 = v0[64];
        v114 = v0[53];
        v115 = v0[50];
        v170 = v0[47];
        v116 = v0[35];
        v112(v0[54], v113, v115);
        v112(v114, v113, v115);
        sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
        sub_20CD62C74();
        if (v175(v170, 1, v116) != 1)
        {
          sub_20CD1DA10(v0[47], &qword_27C810E28, &unk_20CD64A10);
        }
      }

      else
      {
        (*(v0[36] + 32))(v0[38], v0[47], v0[35]);
      }

      (v0[83])(v0[52], v103 + v174, v0[50]);
      sub_20CD626C4();
      sub_20CD62A84();
      v133 = v0[30];
      v134 = v0[24];
      v135 = v0[25];
      v136 = *(v0[21] + 8);
      v136(v0[23], v0[20]);
      sub_20CD62594();
      v137 = v134;
      v138 = *(v135 + 8);
      v138(v133, v137);
      sub_20CD626C4();
      sub_20CD62A84();
      v136(v0[22], v0[20]);
      sub_20CD62614();
      v138(v0[29], v0[24]);
      sub_20CD624D4();
      v0[89] = sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
      sub_20CD62C94();
      v157 = swift_task_alloc();
      v0[90] = v157;
      *v157 = v0;
      v157[1] = sub_20CD07F10;
      v158 = v0[34];
      v159 = v0[19];

      return sub_20CD55850(v158, v159);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v86 = v0[85];
  v87 = v0[73];
  v89 = v0[63];
  v88 = v0[64];
  v90 = v0[60];
  v91 = v0[50];
  v178 = v0[69];
  v180 = v0[49];
  v92 = v0[8];
  v93 = v0[9];
  v86(v0[57], v91);
  v86(v90, v91);
  v86(v89, v91);
  v86(v88, v91);
  sub_20CD1DA10(v178, &qword_27C810D08, &qword_20CD64280);
  sub_20CCF3D20(v180, v87, &qword_27C810E28, &unk_20CD64A10);
  v94 = v87 + *(v92 + 36);
  *v94 = 0;
  *(v94 + 8) = 1;
  v95 = *(v93 + 56);
  v95(v87, 0, 1, v92);
  v0[96] = v95;
  v96 = v0[24];
  v97 = v0[25];
  v98 = v0[11];
  sub_20CD1D9A8(v0[76] + *(v0[75] + 20), v98, &qword_27C810CC8, &qword_20CD64160);
  if ((*(v97 + 48))(v98, 1, v96) == 1)
  {
    v99 = v0[73];
    v100 = v0[11];
    v101 = v0[4];
    sub_20CD1C87C(v0[76], type metadata accessor for SnapshotQueryRange);
    sub_20CD1DA10(v100, &qword_27C810CC8, &qword_20CD64160);
    sub_20CCF3D20(v99, v101, &qword_27C810E30, &qword_20CD64610);

    v34 = v0[1];
    goto LABEL_10;
  }

  v118 = v0[26];
  v117 = v0[27];
  v119 = v0[24];
  v120 = v0[25];
  (*(v120 + 32))(v117, v0[11], v119);
  (*(v120 + 16))(v118, v117, v119);
  v121 = sub_20CD63194();
  v122 = sub_20CD633D4();
  v123 = os_log_type_enabled(v121, v122);
  v125 = v0[25];
  v124 = v0[26];
  v126 = v0[24];
  if (v123)
  {
    v127 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v183[0] = v182;
    *v127 = 136315138;
    sub_20CD1DF2C(&qword_28110F7E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v128 = sub_20CD63574();
    v130 = v129;
    v131 = *(v125 + 8);
    v131(v124, v126);
    v132 = sub_20CD6153C(v128, v130, v183);

    *(v127 + 4) = v132;
    _os_log_impl(&dword_20CCEA000, v121, v122, "[SnapshotRetriever] Apply today's changes: %s)", v127, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v182);
    MEMORY[0x20F3115B0](v182, -1, -1);
    MEMORY[0x20F3115B0](v127, -1, -1);
  }

  else
  {

    v131 = *(v125 + 8);
    v131(v124, v126);
  }

  v0[97] = v131;
  v139 = v0[71];
  v140 = v0[8];
  v141 = v0[9];
  sub_20CD1D9A8(v0[73], v139, &qword_27C810E30, &qword_20CD64610);
  v142 = *(v141 + 48);
  v0[98] = v142;
  v0[99] = (v141 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v143 = v142(v139, 1, v140);
  v144 = v0[71];
  v145 = v0[45];
  v146 = v0[35];
  v147 = v0[36];
  if (v143 == 1)
  {
    sub_20CD1DA10(v0[71], &qword_27C810E30, &qword_20CD64610);
    (*(v147 + 56))(v145, 1, 1, v146);
    goto LABEL_38;
  }

  sub_20CD1D9A8(v0[71], v0[45], &qword_27C810E28, &unk_20CD64A10);
  sub_20CD1DA10(v144, &qword_27C810E38, &qword_20CD64620);
  if ((*(v147 + 48))(v145, 1, v146) == 1)
  {
LABEL_38:
    v148 = v0[54];
    v149 = v0[50];
    v150 = v0[51];
    v151 = v0[45];
    v152 = v0[36];
    v153 = v0[35];
    sub_20CD62564();
    sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
    sub_20CD62CB4();
    (*(v150 + 8))(v148, v149);
    if ((*(v152 + 48))(v151, 1, v153) != 1)
    {
      sub_20CD1DA10(v0[45], &qword_27C810E28, &unk_20CD64A10);
    }

    goto LABEL_41;
  }

  (*(v0[36] + 32))(v0[37], v0[45], v0[35]);
LABEL_41:
  v0[100] = sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
  sub_20CD62C94();
  v154 = swift_task_alloc();
  v0[101] = v154;
  *v154 = v0;
  v154[1] = sub_20CD098B4;
  v155 = v0[27];
  v156 = v0[18];

  return sub_20CD57A94(v155, v156);
}

uint64_t sub_20CD07BB4()
{
  v1 = v0[85];
  v2 = v0[76];
  v3 = v0[69];
  v4 = v0[64];
  v5 = v0[50];
  v1(v0[63], v5);
  v1(v4, v5);
  sub_20CD1DA10(v3, &qword_27C810D08, &qword_20CD64280);
  sub_20CD1C87C(v2, type metadata accessor for SnapshotQueryRange);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20CD07F10(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[91] = a1;
  v4[92] = v1;

  (*(v3[17] + 8))(v3[19], v3[16]);
  if (v1)
  {
    v5 = sub_20CD08264;
  }

  else
  {
    v5 = sub_20CD08084;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD08084()
{
  v1 = swift_task_alloc();
  *(v0 + 744) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
  *v1 = v0;
  v1[1] = sub_20CD0814C;
  v3 = *(v0 + 728);

  return MEMORY[0x282160B38](v0 + 24, &unk_20CD64638, v3, v2);
}

uint64_t sub_20CD0814C(double a1)
{
  v3 = *v2;
  *(v3 + 752) = a1;
  *(v3 + 760) = v1;

  if (v1)
  {
    v4 = sub_20CD094A8;
  }

  else
  {
    v4 = sub_20CD08658;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD08264()
{
  v1 = v0[85];
  v2 = v0[68];
  v3 = v0[52];
  v4 = v0[50];
  v5 = v0[38];
  v6 = v0[35];
  v7 = v0[36];
  (*(v0[33] + 8))(v0[34], v0[32]);
  v1(v3, v4);
  (*(v7 + 8))(v5, v6);
  sub_20CD1DA10(v2, &qword_27C810D08, &qword_20CD64280);
  v8 = v0[85];
  v9 = v0[76];
  v10 = v0[69];
  v12 = v0[63];
  v11 = v0[64];
  v13 = v0[60];
  v15 = v0[49];
  v14 = v0[50];
  v8(v0[57], v14);
  v8(v13, v14);
  sub_20CD1DA10(v15, &qword_27C810E28, &unk_20CD64A10);
  v8(v12, v14);
  v8(v11, v14);
  sub_20CD1DA10(v10, &qword_27C810D08, &qword_20CD64280);
  sub_20CD1C87C(v9, type metadata accessor for SnapshotQueryRange);

  v16 = v0[1];

  return v16();
}

uint64_t sub_20CD08658()
{
  v94 = v0;
  v90 = v0[95];
  sub_20CD62B24();
  sub_20CD62B34();
  sub_20CD62AF4();
  sub_20CD62CC4();
  if (v90)
  {
    v88 = v0[68];
    v1 = v0[50];
    v83 = v0[85];
    v85 = v0[38];
    v2 = v0[36];
    v79 = v0[52];
    v81 = v0[35];
    v3 = v0[33];
    v4 = v0[34];
    v5 = v0[32];
    v6 = v0[15];
    v8 = v0[12];
    v7 = v0[13];

    (*(v7 + 8))(v6, v8);
    (*(v3 + 8))(v4, v5);
    v83(v79, v1);
    (*(v2 + 8))(v85, v81);
    sub_20CD1DA10(v88, &qword_27C810D08, &qword_20CD64280);
    v9 = v0[85];
    v10 = v0[76];
    v11 = v0[69];
    v13 = v0[63];
    v12 = v0[64];
    v14 = v0[60];
    v16 = v0[49];
    v15 = v0[50];
    v9(v0[57], v15);
    v9(v14, v15);
    sub_20CD1DA10(v16, &qword_27C810E28, &unk_20CD64A10);
    v9(v13, v15);
    v9(v12, v15);
    sub_20CD1DA10(v11, &qword_27C810D08, &qword_20CD64280);
    sub_20CD1C87C(v10, type metadata accessor for SnapshotQueryRange);

    v17 = v0[1];
LABEL_5:

    return v17();
  }

  v18 = v0[94];
  v19 = v0[85];
  v89 = v0[69];
  v91 = v0[73];
  v74 = v0[68];
  v86 = v0[63];
  v87 = v0[64];
  v80 = v0[60];
  v77 = v0[72];
  v78 = v0[57];
  v71 = v0[52];
  v20 = v0[50];
  v82 = v0[49];
  v75 = v0[46];
  v21 = v0[36];
  v72 = v0[35];
  v73 = v0[38];
  v22 = v0[33];
  v69 = v0[32];
  v70 = v0[34];
  v23 = v0[15];
  v25 = v0[12];
  v24 = v0[13];
  v84 = v0[9];
  v76 = v0[8];

  (*(v24 + 8))(v23, v25);
  (*(v22 + 8))(v70, v69);
  v19(v71, v20);
  (*(v21 + 8))(v73, v72);
  sub_20CD1DA10(v74, &qword_27C810D08, &qword_20CD64280);
  (*(v21 + 56))(v75, 0, 1, v72);
  sub_20CCF3D20(v75, v77, &qword_27C810E28, &unk_20CD64A10);
  v26 = v77 + *(v76 + 36);
  *v26 = v18;
  *(v26 + 8) = 0;
  v19(v78, v20);
  v19(v80, v20);
  sub_20CD1DA10(v82, &qword_27C810E28, &unk_20CD64A10);
  v19(v86, v20);
  v19(v87, v20);
  sub_20CD1DA10(v89, &qword_27C810D08, &qword_20CD64280);
  v27 = *(v84 + 56);
  v27(v77, 0, 1, v76);
  sub_20CCF3D20(v77, v91, &qword_27C810E30, &qword_20CD64610);
  v0[96] = v27;
  v28 = v0[24];
  v29 = v0[25];
  v30 = v0[11];
  sub_20CD1D9A8(v0[76] + *(v0[75] + 20), v30, &qword_27C810CC8, &qword_20CD64160);
  if ((*(v29 + 48))(v30, 1, v28) == 1)
  {
    v31 = v0[73];
    v32 = v0[11];
    v33 = v0[4];
    sub_20CD1C87C(v0[76], type metadata accessor for SnapshotQueryRange);
    sub_20CD1DA10(v32, &qword_27C810CC8, &qword_20CD64160);
    sub_20CCF3D20(v31, v33, &qword_27C810E30, &qword_20CD64610);

    v17 = v0[1];
    goto LABEL_5;
  }

  v36 = v0[26];
  v35 = v0[27];
  v37 = v0[24];
  v38 = v0[25];
  (*(v38 + 32))(v35, v0[11], v37);
  (*(v38 + 16))(v36, v35, v37);
  v39 = sub_20CD63194();
  v40 = sub_20CD633D4();
  v41 = os_log_type_enabled(v39, v40);
  v43 = v0[25];
  v42 = v0[26];
  v44 = v0[24];
  if (v41)
  {
    v45 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v93[0] = v92;
    *v45 = 136315138;
    sub_20CD1DF2C(&qword_28110F7E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v46 = sub_20CD63574();
    v48 = v47;
    v49 = *(v43 + 8);
    v49(v42, v44);
    v50 = sub_20CD6153C(v46, v48, v93);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_20CCEA000, v39, v40, "[SnapshotRetriever] Apply today's changes: %s)", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v92);
    MEMORY[0x20F3115B0](v92, -1, -1);
    MEMORY[0x20F3115B0](v45, -1, -1);
  }

  else
  {

    v49 = *(v43 + 8);
    v49(v42, v44);
  }

  v0[97] = v49;
  v51 = v0[71];
  v52 = v0[8];
  v53 = v0[9];
  sub_20CD1D9A8(v0[73], v51, &qword_27C810E30, &qword_20CD64610);
  v54 = *(v53 + 48);
  v0[98] = v54;
  v0[99] = (v53 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v55 = v54(v51, 1, v52);
  v56 = v0[71];
  v57 = v0[45];
  v58 = v0[35];
  v59 = v0[36];
  if (v55 == 1)
  {
    sub_20CD1DA10(v0[71], &qword_27C810E30, &qword_20CD64610);
    (*(v59 + 56))(v57, 1, 1, v58);
    goto LABEL_14;
  }

  sub_20CD1D9A8(v0[71], v0[45], &qword_27C810E28, &unk_20CD64A10);
  sub_20CD1DA10(v56, &qword_27C810E38, &qword_20CD64620);
  if ((*(v59 + 48))(v57, 1, v58) == 1)
  {
LABEL_14:
    v60 = v0[54];
    v61 = v0[50];
    v62 = v0[51];
    v63 = v0[45];
    v64 = v0[36];
    v65 = v0[35];
    sub_20CD62564();
    sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
    sub_20CD62CB4();
    (*(v62 + 8))(v60, v61);
    if ((*(v64 + 48))(v63, 1, v65) != 1)
    {
      sub_20CD1DA10(v0[45], &qword_27C810E28, &unk_20CD64A10);
    }

    goto LABEL_17;
  }

  (*(v0[36] + 32))(v0[37], v0[45], v0[35]);
LABEL_17:
  v0[100] = sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
  sub_20CD62C94();
  v66 = swift_task_alloc();
  v0[101] = v66;
  *v66 = v0;
  v66[1] = sub_20CD098B4;
  v67 = v0[27];
  v68 = v0[18];

  return sub_20CD57A94(v67, v68);
}

uint64_t sub_20CD094A8()
{
  v1 = v0[85];
  v20 = v0[68];
  v2 = v0[52];
  v3 = v0[50];
  v4 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[32];

  (*(v8 + 8))(v7, v9);
  v1(v2, v3);
  (*(v5 + 8))(v4, v6);
  sub_20CD1DA10(v20, &qword_27C810D08, &qword_20CD64280);
  v10 = v0[85];
  v11 = v0[76];
  v12 = v0[69];
  v14 = v0[63];
  v13 = v0[64];
  v15 = v0[60];
  v17 = v0[49];
  v16 = v0[50];
  v10(v0[57], v16);
  v10(v15, v16);
  sub_20CD1DA10(v17, &qword_27C810E28, &unk_20CD64A10);
  v10(v14, v16);
  v10(v13, v16);
  sub_20CD1DA10(v12, &qword_27C810D08, &qword_20CD64280);
  sub_20CD1C87C(v11, type metadata accessor for SnapshotQueryRange);

  v18 = v0[1];

  return v18();
}

uint64_t sub_20CD098B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[102] = a1;
  v4[103] = v1;

  (*(v3[17] + 8))(v3[18], v3[16]);
  if (v1)
  {
    v5 = sub_20CD09C08;
  }

  else
  {
    v5 = sub_20CD09A28;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD09A28()
{
  v1 = swift_task_alloc();
  *(v0 + 832) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
  *v1 = v0;
  v1[1] = sub_20CD09AF0;
  v3 = *(v0 + 816);

  return MEMORY[0x282160B38](v0 + 16, &unk_20CD64628, v3, v2);
}

uint64_t sub_20CD09AF0(double a1)
{
  v3 = *v2;
  *(v3 + 840) = a1;
  *(v3 + 848) = v1;

  if (v1)
  {
    v4 = sub_20CD0A8AC;
  }

  else
  {
    v4 = sub_20CD09F64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD09C08()
{
  (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  (*(v0 + 776))(*(v0 + 216), *(v0 + 192));
  sub_20CD1DA10(v2, &qword_27C810E30, &qword_20CD64610);
  sub_20CD1C87C(v1, type metadata accessor for SnapshotQueryRange);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CD09F64()
{
  if (*(*(v0 + 16) + 16))
  {
    v44 = *(v0 + 848);
    sub_20CD62B24();
    sub_20CD62B34();
    sub_20CD62AF4();
    sub_20CD62CC4();
    if (v44)
    {
      v2 = *(v0 + 288);
      v1 = *(v0 + 296);
      v3 = *(v0 + 280);
      v5 = *(v0 + 104);
      v4 = *(v0 + 112);
      v6 = *(v0 + 96);

      (*(v5 + 8))(v4, v6);
      (*(v2 + 8))(v1, v3);
      v7 = *(v0 + 608);
      v8 = *(v0 + 584);
      (*(v0 + 776))(*(v0 + 216), *(v0 + 192));
      sub_20CD1DA10(v8, &qword_27C810E30, &qword_20CD64610);
      sub_20CD1C87C(v7, type metadata accessor for SnapshotQueryRange);

      v9 = *(v0 + 8);
      goto LABEL_11;
    }

    v14 = *(v0 + 352);
    v16 = *(v0 + 288);
    v15 = *(v0 + 296);
    v17 = *(v0 + 280);
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 96);
    v45 = *(v0 + 80);

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
    (*(v16 + 56))(v14, 0, 1, v17);
    sub_20CCF3D20(v14, v45, &qword_27C810E28, &unk_20CD64A10);
  }

  else
  {
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = *(v0 + 280);
    v13 = *(v0 + 80);

    (*(v11 + 32))(v13, v10, v12);
    (*(v11 + 56))(v13, 0, 1, v12);
  }

  v21 = *(v0 + 784);
  v22 = *(v0 + 776);
  v23 = *(v0 + 608);
  v24 = *(v0 + 584);
  v25 = *(v0 + 560);
  v26 = *(v0 + 344);
  v27 = *(v0 + 216);
  v28 = *(v0 + 192);
  v29 = *(v0 + 80);
  v30 = *(v0 + 64);
  v31 = v29 + *(v30 + 36);
  *v31 = *(v0 + 840);
  *(v31 + 8) = 0;
  v22(v27, v28);
  sub_20CD1C87C(v23, type metadata accessor for SnapshotQueryRange);
  sub_20CD1D9A8(v29, v26, &qword_27C810E28, &unk_20CD64A10);
  sub_20CCF3D20(v24, v25, &qword_27C810E30, &qword_20CD64610);
  v32 = v21(v25, 1, v30);
  v33 = *(v0 + 560);
  if (v32 == 1)
  {
    sub_20CD1DA10(v33, &qword_27C810E30, &qword_20CD64610);
    v34 = 0.0;
  }

  else
  {
    v35 = v33 + *(*(v0 + 64) + 36);
    v34 = *v35;
    v36 = *(v35 + 8);
    sub_20CD1DA10(v33, &qword_27C810E38, &qword_20CD64620);
    if (v36)
    {
      v34 = 0.0;
    }
  }

  v37 = *(v0 + 840);
  v38 = *(v0 + 768);
  v39 = *(v0 + 344);
  v40 = *(v0 + 64);
  v41 = *(v0 + 32);
  sub_20CD1DA10(*(v0 + 80), &qword_27C810E38, &qword_20CD64620);
  sub_20CCF3D20(v39, v41, &qword_27C810E28, &unk_20CD64A10);
  v42 = v41 + *(v40 + 36);
  *v42 = v34 + v37;
  *(v42 + 8) = 0;
  v38(v41, 0, 1, v40);

  v9 = *(v0 + 8);
LABEL_11:

  return v9();
}

uint64_t sub_20CD0A8AC()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 608);
  v5 = *(v0 + 584);
  (*(v0 + 776))(*(v0 + 216), *(v0 + 192));
  sub_20CD1DA10(v5, &qword_27C810E30, &qword_20CD64610);
  sub_20CD1C87C(v4, type metadata accessor for SnapshotQueryRange);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20CD0AC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DD0, &unk_20CD64530);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
  v4[11] = swift_task_alloc();
  v6 = sub_20CD62A04();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = sub_20CD62E94();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v8 = sub_20CD626F4();
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v9 = sub_20CD62654();
  v4[24] = v9;
  v4[25] = *(v9 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v10 = sub_20CD62514();
  v4[32] = v10;
  v4[33] = *(v10 - 8);
  v4[34] = swift_task_alloc();
  v11 = sub_20CD62954();
  v4[35] = v11;
  v4[36] = *(v11 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800);
  v4[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DC0, &qword_20CD64518);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v12 = sub_20CD62AB4();
  v4[50] = v12;
  v4[51] = *(v12 - 8);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF8, &unk_20CD64540);
  v4[65] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v4[66] = v13;
  v4[67] = *(v13 - 8);
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DC8, &qword_20CD64520);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  sub_20CD62CE4();
  v4[74] = swift_task_alloc();
  v4[75] = type metadata accessor for SnapshotQueryRange(0);
  v4[76] = swift_task_alloc();
  v14 = sub_20CD62994();
  v4[77] = v14;
  v4[78] = *(v14 - 8);
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD0B36C, 0, 0);
}

uint64_t sub_20CD0B36C()
{
  v109 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = v0[80];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[5];
  v5 = sub_20CD631B4();
  v0[81] = __swift_project_value_buffer(v5, qword_28110F878);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_20CD63194();
  v8 = sub_20CD633D4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[80];
  if (v9)
  {
    v11 = v0[79];
    v12 = v0[78];
    v13 = v0[77];
    v14 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v108[0] = v105;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = sub_20CD63264();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_20CD6153C(v15, v17, v108);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_20CCEA000, v7, v8, "[SnapshotRetriever] execute query %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x20F3115B0](v105, -1, -1);
    MEMORY[0x20F3115B0](v14, -1, -1);
  }

  else
  {
    v19 = v0[78];
    v20 = v0[77];

    (*(v19 + 8))(v10, v20);
  }

  v21 = v0[76];
  v22 = v0[74];
  v0[82] = sub_20CD1DF2C(&qword_28110F7A8, MEMORY[0x277D09F18], MEMORY[0x277D09F10]);
  sub_20CD62B14();
  sub_20CCEEFC0(v22, v21);
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[65];
  sub_20CD1D9A8(v0[76], v26, &qword_27C810CF8, &unk_20CD64540);
  v27 = (*(v24 + 48))(v26, 1, v25);
  if (v27 == 1)
  {
    v28 = v0[73];
    v29 = v0[8];
    v30 = v0[9];
    sub_20CD1DA10(v0[65], &qword_27C810CF8, &unk_20CD64540);
    v31 = *(v30 + 56);
    v31(v28, 1, 1, v29);
    v0[96] = v31;
    v32 = v0[24];
    v33 = v0[25];
    v34 = v0[11];
    sub_20CD1D9A8(v0[76] + *(v0[75] + 20), v34, &qword_27C810CC8, &qword_20CD64160);
    if ((*(v33 + 48))(v34, 1, v32) == 1)
    {
      v35 = v0[73];
      v36 = v0[11];
      v37 = v0[4];
      sub_20CD1C87C(v0[76], type metadata accessor for SnapshotQueryRange);
      sub_20CD1DA10(v36, &qword_27C810CC8, &qword_20CD64160);
      sub_20CCF3D20(v35, v37, &qword_27C810DC8, &qword_20CD64520);

      v38 = v0[1];

      return v38();
    }

    v66 = v0[26];
    v65 = v0[27];
    v67 = v0[24];
    v68 = v0[25];
    (*(v68 + 32))(v65, v0[11], v67);
    (*(v68 + 16))(v66, v65, v67);
    v69 = sub_20CD63194();
    v70 = sub_20CD633D4();
    v71 = os_log_type_enabled(v69, v70);
    v73 = v0[25];
    v72 = v0[26];
    v74 = v0[24];
    if (v71)
    {
      v75 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v108[0] = v107;
      *v75 = 136315138;
      sub_20CD1DF2C(&qword_28110F7E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v76 = sub_20CD63574();
      v78 = v77;
      v79 = *(v73 + 8);
      v79(v72, v74);
      v80 = sub_20CD6153C(v76, v78, v108);

      *(v75 + 4) = v80;
      _os_log_impl(&dword_20CCEA000, v69, v70, "[SnapshotRetriever] Apply today's changes: %s)", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v107);
      MEMORY[0x20F3115B0](v107, -1, -1);
      MEMORY[0x20F3115B0](v75, -1, -1);
    }

    else
    {

      v79 = *(v73 + 8);
      v79(v72, v74);
    }

    v0[97] = v79;
    v85 = v0[71];
    v86 = v0[8];
    v87 = v0[9];
    sub_20CD1D9A8(v0[73], v85, &qword_27C810DC8, &qword_20CD64520);
    v88 = *(v87 + 48);
    v0[98] = v88;
    v0[99] = (v87 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v89 = v88(v85, 1, v86);
    v90 = v0[71];
    v91 = v0[45];
    v92 = v0[35];
    v93 = v0[36];
    if (v89 == 1)
    {
      sub_20CD1DA10(v0[71], &qword_27C810DC8, &qword_20CD64520);
      (*(v93 + 56))(v91, 1, 1, v92);
    }

    else
    {
      sub_20CD1D9A8(v0[71], v0[45], &qword_27C810DC0, &qword_20CD64518);
      sub_20CD1DA10(v90, &qword_27C810DD0, &unk_20CD64530);
      if ((*(v93 + 48))(v91, 1, v92) != 1)
      {
        (*(v0[36] + 32))(v0[37], v0[45], v0[35]);
LABEL_28:
        v0[100] = sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
        sub_20CD62C94();
        v100 = swift_task_alloc();
        v0[101] = v100;
        *v100 = v0;
        v100[1] = sub_20CD0F9D0;
        v101 = v0[27];
        v102 = v0[18];

        return sub_20CD57A94(v101, v102);
      }
    }

    v94 = v0[54];
    v95 = v0[50];
    v96 = v0[51];
    v97 = v0[45];
    v98 = v0[36];
    v99 = v0[35];
    sub_20CD62564();
    sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
    sub_20CD62CB4();
    (*(v96 + 8))(v94, v95);
    if ((*(v98 + 48))(v97, 1, v99) != 1)
    {
      sub_20CD1DA10(v0[45], &qword_27C810DC0, &qword_20CD64518);
    }

    goto LABEL_28;
  }

  v39 = v0[69];
  v40 = v0[66];
  v42 = v0[63];
  v41 = v0[64];
  v44 = v0[61];
  v43 = v0[62];
  v45 = v0[50];
  v46 = v0[51];
  sub_20CCF3D20(v0[65], v39, &qword_27C810D08, &qword_20CD64280);
  v47 = *(v46 + 16);
  v0[83] = v47;
  v0[84] = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v47(v41, v39, v45);
  v47(v42, v39 + *(v40 + 36), v45);
  v47(v43, v41, v45);
  v47(v44, v42, v45);
  v48 = sub_20CD63194();
  v49 = sub_20CD633D4();
  v50 = os_log_type_enabled(v48, v49);
  v52 = v0[61];
  v51 = v0[62];
  v54 = v0[50];
  v53 = v0[51];
  if (v50)
  {
    v104 = v49;
    v55 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v108[0] = v106;
    *v55 = 136315394;
    sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
    v56 = sub_20CD63574();
    v58 = v57;
    v103 = v48;
    v59 = *(v53 + 8);
    v59(v51, v54);
    v60 = sub_20CD6153C(v56, v58, v108);

    *(v55 + 4) = v60;
    *(v55 + 12) = 2080;
    v61 = sub_20CD63574();
    v63 = v62;
    v59(v52, v54);
    v64 = sub_20CD6153C(v61, v63, v108);

    *(v55 + 14) = v64;
    _os_log_impl(&dword_20CCEA000, v103, v104, "[SnapshotRetriever] Fetching closest properties (%s -> %s)", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v106, -1, -1);
    MEMORY[0x20F3115B0](v55, -1, -1);
  }

  else
  {

    v59 = *(v53 + 8);
    v59(v52, v54);
    v59(v51, v54);
  }

  v0[85] = v59;
  v81 = swift_task_alloc();
  v0[86] = v81;
  *v81 = v0;
  v81[1] = sub_20CD0C380;
  v82 = v0[69];
  v83 = v0[49];
  v84 = v0[5];

  return sub_20CD13324(v83, v82, v84);
}

uint64_t sub_20CD0C380()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_20CD1DFB4;
  }

  else
  {
    v2 = sub_20CD0C494;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD0C494()
{
  v184 = v0;
  v1 = v0[48];
  v2 = v0[35];
  v3 = v0[36];
  sub_20CD1D9A8(v0[49], v1, &qword_27C810DC0, &qword_20CD64518);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = v0[87];
    v6 = v0[50];
    v7 = v0[51];
    v8 = v0[42];
    sub_20CD1DA10(v0[48], &qword_27C810DC0, &qword_20CD64518);
    (*(v7 + 56))(v8, 1, 1, v6);
    sub_20CD62A34();
    if (v5)
    {
      v9 = v0[85];
      v10 = v0[76];
      v11 = v0[69];
      v13 = v0[63];
      v12 = v0[64];
      v14 = v0[50];
      v15 = v0[51];
      v16 = v0[42];
      sub_20CD1DA10(v0[49], &qword_27C810DC0, &qword_20CD64518);
      v9(v13, v14);
      v9(v12, v14);
      sub_20CD1DA10(v11, &qword_27C810D08, &qword_20CD64280);
      sub_20CD1C87C(v10, type metadata accessor for SnapshotQueryRange);
      if ((*(v15 + 48))(v16, 1, v14) != 1)
      {
        sub_20CD1DA10(v0[42], &qword_27C810DE0, &unk_20CD64800);
      }

      goto LABEL_9;
    }

    v65 = v0[42];
    if ((*(v0[51] + 48))(v65, 1, v0[50]) != 1)
    {
      sub_20CD1DA10(v65, &qword_27C810DE0, &unk_20CD64800);
    }

    v24 = 0;
  }

  else
  {
    v17 = v0[60];
    v18 = v0[50];
    v19 = v0[51];
    v20 = v0[48];
    v21 = v0[42];
    v22 = v0[35];
    v23 = v0[36];
    sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
    sub_20CD62C64();
    (*(v23 + 8))(v20, v22);
    (*(v19 + 56))(v21, 0, 1, v18);
    (*(v19 + 32))(v17, v21, v18);
    v24 = v0[87];
  }

  v25 = sub_20CD62A94();
  v26 = v0[64];
  if (v24)
  {
    v27 = v0[85];
    v28 = v0[76];
    v29 = v0[69];
    v30 = v0[63];
    v31 = v0[50];
    v32 = v0[49];
    v27(v0[60], v31);
    sub_20CD1DA10(v32, &qword_27C810DC0, &qword_20CD64518);
    v27(v30, v31);
    v27(v26, v31);
    sub_20CD1DA10(v29, &qword_27C810D08, &qword_20CD64280);
    v33 = v28;
LABEL_8:
    sub_20CD1C87C(v33, type metadata accessor for SnapshotQueryRange);
LABEL_9:

    v34 = v0[1];
LABEL_10:

    return v34();
  }

  v179 = v25;
  v36 = v0[83];
  v37 = v0[60];
  v38 = v0[58];
  v39 = v0[50];
  v36(v0[59], v26, v39);
  v36(v38, v37, v39);
  v40 = sub_20CD63194();
  v41 = sub_20CD633D4();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v0[85];
  v45 = v0[58];
  v44 = v0[59];
  v46 = v0[50];
  v175 = v4;
  if (v42)
  {
    v166 = v41;
    v47 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v183[0] = v171;
    *v47 = 136315650;
    sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
    v163 = v40;
    v48 = sub_20CD63574();
    v50 = v49;
    v43(v44, v46);
    v51 = sub_20CD6153C(v48, v50, v183);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    v52 = sub_20CD63574();
    v54 = v53;
    v43(v45, v46);
    v55 = sub_20CD6153C(v52, v54, v183);

    *(v47 + 14) = v55;
    *(v47 + 22) = 2048;
    v56 = v179;
    *(v47 + 24) = v179;
    _os_log_impl(&dword_20CCEA000, v163, v166, "[SnapshotRetriever] Resolved from (%s -> %s), %ld days missing", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v171, -1, -1);
    MEMORY[0x20F3115B0](v47, -1, -1);

    if (v179 > 32)
    {
LABEL_15:
      v57 = v0[85];
      v58 = v0[83];
      v176 = v0[69];
      v177 = v0[76];
      v59 = v0[60];
      v60 = v0[50];
      v161 = v0[63];
      v167 = v0[49];
      v172 = v0[64];
      type metadata accessor for SnapshotRetriver.QueryFailure(0);
      sub_20CD1DF2C(&qword_27C810DE8, type metadata accessor for SnapshotRetriver.QueryFailure, &unk_20CD64110);
      swift_allocError();
      v62 = v61;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C20, &qword_20CD640C0);
      v64 = *(v63 + 48);
      v58(v62, v59, v60);
      v58(v62 + v64, v161, v60);
      (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
      swift_willThrow();
      v57(v59, v60);
      sub_20CD1DA10(v167, &qword_27C810DC0, &qword_20CD64518);
      v57(v161, v60);
      v57(v172, v60);
      sub_20CD1DA10(v176, &qword_27C810D08, &qword_20CD64280);
      v33 = v177;
      goto LABEL_8;
    }
  }

  else
  {

    v43(v45, v46);
    v43(v44, v46);
    v56 = v179;
    if (v179 > 32)
    {
      goto LABEL_15;
    }
  }

  sub_20CD62A24();
  sub_20CD1DF2C(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
  if (sub_20CD63224())
  {
    v66 = v0[83];
    v67 = v0[63];
    v68 = v0[55];
    v69 = v0[50];
    v66(v0[56], v0[57], v69);
    v66(v68, v67, v69);
    v70 = sub_20CD63194();
    v71 = sub_20CD633D4();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[85];
    v75 = v0[55];
    v74 = v0[56];
    v76 = v0[50];
    if (v72)
    {
      v77 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v183[0] = v173;
      *v77 = 134218498;
      *(v77 + 4) = v56;
      *(v77 + 12) = 2080;
      sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
      v168 = v70;
      v78 = sub_20CD63574();
      v164 = v71;
      v80 = v79;
      v73(v74, v76);
      v81 = sub_20CD6153C(v78, v80, v183);

      *(v77 + 14) = v81;
      *(v77 + 22) = 2080;
      v82 = sub_20CD63574();
      v84 = v83;
      v73(v75, v76);
      v85 = sub_20CD6153C(v82, v84, v183);

      *(v77 + 24) = v85;
      _os_log_impl(&dword_20CCEA000, v168, v164, "[SnapshotRetriever] Compute remaining gap [%ld] (%s -> %s", v77, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F3115B0](v173, -1, -1);
      MEMORY[0x20F3115B0](v77, -1, -1);
    }

    else
    {

      v73(v75, v76);
      v73(v74, v76);
    }

    result = sub_20CD63224();
    if (result)
    {
      v102 = v0[83];
      v103 = v0[68];
      v181 = v0[66];
      v104 = v0[63];
      v106 = v0[50];
      v105 = v0[51];
      v160 = v0[85];
      v162 = v0[47];
      v107 = v0[40];
      v108 = v0[41];
      v109 = v0[39];
      v165 = v0[49];
      v169 = v0[35];
      v102(v108, v0[57], v106);
      v102(v108 + *(v109 + 48), v104, v106);
      sub_20CD1D9A8(v108, v107, &qword_27C810CF0, &unk_20CD64270);
      v110 = *(v109 + 48);
      v111 = *(v105 + 32);
      v111(v103, v107, v106);
      v0[88] = (v105 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v160(v107 + v110, v106);
      sub_20CCF3D20(v108, v107, &qword_27C810CF0, &unk_20CD64270);
      v174 = *(v181 + 36);
      v111(v103 + v174, v107 + *(v109 + 48), v106);
      v160(v107, v106);
      sub_20CD1D9A8(v165, v162, &qword_27C810DC0, &qword_20CD64518);
      if (v175(v162, 1, v169) == 1)
      {
        v112 = v0[83];
        v113 = v0[64];
        v114 = v0[53];
        v115 = v0[50];
        v170 = v0[47];
        v116 = v0[35];
        v112(v0[54], v113, v115);
        v112(v114, v113, v115);
        sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
        sub_20CD62C74();
        if (v175(v170, 1, v116) != 1)
        {
          sub_20CD1DA10(v0[47], &qword_27C810DC0, &qword_20CD64518);
        }
      }

      else
      {
        (*(v0[36] + 32))(v0[38], v0[47], v0[35]);
      }

      (v0[83])(v0[52], v103 + v174, v0[50]);
      sub_20CD626C4();
      sub_20CD62A84();
      v133 = v0[30];
      v134 = v0[24];
      v135 = v0[25];
      v136 = *(v0[21] + 8);
      v136(v0[23], v0[20]);
      sub_20CD62594();
      v137 = v134;
      v138 = *(v135 + 8);
      v138(v133, v137);
      sub_20CD626C4();
      sub_20CD62A84();
      v136(v0[22], v0[20]);
      sub_20CD62614();
      v138(v0[29], v0[24]);
      sub_20CD624D4();
      v0[89] = sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
      sub_20CD62C94();
      v157 = swift_task_alloc();
      v0[90] = v157;
      *v157 = v0;
      v157[1] = sub_20CD0E02C;
      v158 = v0[34];
      v159 = v0[19];

      return sub_20CD55850(v158, v159);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v86 = v0[85];
  v87 = v0[73];
  v89 = v0[63];
  v88 = v0[64];
  v90 = v0[60];
  v91 = v0[50];
  v178 = v0[69];
  v180 = v0[49];
  v92 = v0[8];
  v93 = v0[9];
  v86(v0[57], v91);
  v86(v90, v91);
  v86(v89, v91);
  v86(v88, v91);
  sub_20CD1DA10(v178, &qword_27C810D08, &qword_20CD64280);
  sub_20CCF3D20(v180, v87, &qword_27C810DC0, &qword_20CD64518);
  v94 = v87 + *(v92 + 36);
  *v94 = 0;
  *(v94 + 8) = 1;
  v95 = *(v93 + 56);
  v95(v87, 0, 1, v92);
  v0[96] = v95;
  v96 = v0[24];
  v97 = v0[25];
  v98 = v0[11];
  sub_20CD1D9A8(v0[76] + *(v0[75] + 20), v98, &qword_27C810CC8, &qword_20CD64160);
  if ((*(v97 + 48))(v98, 1, v96) == 1)
  {
    v99 = v0[73];
    v100 = v0[11];
    v101 = v0[4];
    sub_20CD1C87C(v0[76], type metadata accessor for SnapshotQueryRange);
    sub_20CD1DA10(v100, &qword_27C810CC8, &qword_20CD64160);
    sub_20CCF3D20(v99, v101, &qword_27C810DC8, &qword_20CD64520);

    v34 = v0[1];
    goto LABEL_10;
  }

  v118 = v0[26];
  v117 = v0[27];
  v119 = v0[24];
  v120 = v0[25];
  (*(v120 + 32))(v117, v0[11], v119);
  (*(v120 + 16))(v118, v117, v119);
  v121 = sub_20CD63194();
  v122 = sub_20CD633D4();
  v123 = os_log_type_enabled(v121, v122);
  v125 = v0[25];
  v124 = v0[26];
  v126 = v0[24];
  if (v123)
  {
    v127 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v183[0] = v182;
    *v127 = 136315138;
    sub_20CD1DF2C(&qword_28110F7E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v128 = sub_20CD63574();
    v130 = v129;
    v131 = *(v125 + 8);
    v131(v124, v126);
    v132 = sub_20CD6153C(v128, v130, v183);

    *(v127 + 4) = v132;
    _os_log_impl(&dword_20CCEA000, v121, v122, "[SnapshotRetriever] Apply today's changes: %s)", v127, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v182);
    MEMORY[0x20F3115B0](v182, -1, -1);
    MEMORY[0x20F3115B0](v127, -1, -1);
  }

  else
  {

    v131 = *(v125 + 8);
    v131(v124, v126);
  }

  v0[97] = v131;
  v139 = v0[71];
  v140 = v0[8];
  v141 = v0[9];
  sub_20CD1D9A8(v0[73], v139, &qword_27C810DC8, &qword_20CD64520);
  v142 = *(v141 + 48);
  v0[98] = v142;
  v0[99] = (v141 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v143 = v142(v139, 1, v140);
  v144 = v0[71];
  v145 = v0[45];
  v146 = v0[35];
  v147 = v0[36];
  if (v143 == 1)
  {
    sub_20CD1DA10(v0[71], &qword_27C810DC8, &qword_20CD64520);
    (*(v147 + 56))(v145, 1, 1, v146);
    goto LABEL_38;
  }

  sub_20CD1D9A8(v0[71], v0[45], &qword_27C810DC0, &qword_20CD64518);
  sub_20CD1DA10(v144, &qword_27C810DD0, &unk_20CD64530);
  if ((*(v147 + 48))(v145, 1, v146) == 1)
  {
LABEL_38:
    v148 = v0[54];
    v149 = v0[50];
    v150 = v0[51];
    v151 = v0[45];
    v152 = v0[36];
    v153 = v0[35];
    sub_20CD62564();
    sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
    sub_20CD62CB4();
    (*(v150 + 8))(v148, v149);
    if ((*(v152 + 48))(v151, 1, v153) != 1)
    {
      sub_20CD1DA10(v0[45], &qword_27C810DC0, &qword_20CD64518);
    }

    goto LABEL_41;
  }

  (*(v0[36] + 32))(v0[37], v0[45], v0[35]);
LABEL_41:
  v0[100] = sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
  sub_20CD62C94();
  v154 = swift_task_alloc();
  v0[101] = v154;
  *v154 = v0;
  v154[1] = sub_20CD0F9D0;
  v155 = v0[27];
  v156 = v0[18];

  return sub_20CD57A94(v155, v156);
}