uint64_t sub_2580C4400()
{
  v0 = sub_2580DDEF4();
  __swift_allocate_value_buffer(v0, qword_27F91D578);
  __swift_project_value_buffer(v0, qword_27F91D578);
  return sub_2580DDEE4();
}

uint64_t sub_2580C44A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2580C451C(a3);
  v5 = *(v3 + 8);

  return v5(v4);
}

uint64_t sub_2580C451C(uint64_t a1)
{
  v1 = sub_2580DDD14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F91D570 != -1)
  {
    swift_once();
  }

  v5 = sub_2580DDEF4();
  __swift_project_value_buffer(v5, qword_27F91D578);
  v6 = sub_2580DDED4();
  v7 = sub_2580DE184();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2580C3000, v6, v7, "Creating a decompression stream…", v8, 2u);
    MEMORY[0x259C79240](v8, -1, -1);
  }

  sub_2580DDCF4();
  v13[1] = MEMORY[0x277D84F90];
  sub_2580C4874();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D5C8, &unk_2580DF1E0);
  sub_2580C4914();
  sub_2580DE204();
  v9 = sub_2580DDCB4();
  v10 = (*(v2 + 8))(v4, v1);
  if (!v9)
  {
    v9 = MEMORY[0x259C78720](v10);
    sub_2580C49C0();
    swift_allocError();
    *v11 = v9;
    swift_willThrow();
  }

  return v9;
}

uint64_t getEnumTagSinglePayload for DecompressionProcessor(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DecompressionProcessor(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2580C4874()
{
  result = qword_27F91D5C0;
  if (!qword_27F91D5C0)
  {
    sub_2580DDD14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91D5C0);
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

unint64_t sub_2580C4914()
{
  result = qword_27F91D5D0;
  if (!qword_27F91D5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F91D5C8, &unk_2580DF1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91D5D0);
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

unint64_t sub_2580C49C0()
{
  result = qword_27F91D5D8[0];
  if (!qword_27F91D5D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F91D5D8);
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

uint64_t sub_2580C4A7C(uint64_t a1)
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

uint64_t sub_2580C4B8C(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *v2;
  *(v2 + *(*v2 + 104)) = 0;
  (*(*(*(v3 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t sub_2580C4C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v5[11] = *v4;
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_2580DE094();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[12] = v6;
  v5[13] = v8;

  return MEMORY[0x2822009F8](sub_2580C4CF8, v6);
}

uint64_t sub_2580C4CF8()
{
  v1 = v0[9];
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 16))(v0 + 2, ObjectType, v1);
  v0[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D660, &qword_2580DF188);
  v4 = sub_2580DDD84();
  v0[15] = v4;
  result = v3(v0 + 2, 0);
  if (v4)
  {
    v6 = v0[11];
    v8 = *(v6 + 80);
    v7 = *(v6 + 88);
    v12 = (*(v7 + 16) + **(v7 + 16));
    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v9[1] = sub_2580C4EB4;
    v11 = v0[6];
    v10 = v0[7];

    return v12(v11, v10, v4, v8, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2580C4EB4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = *(v4 + 96);
    v6 = sub_2580C506C;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = *(v4 + 96);
    v6 = sub_2580C4FDC;
  }

  return MEMORY[0x2822009F8](v6, v5);
}

uint64_t sub_2580C4FDC()
{
  sub_2580DDD74();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2580C506C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2580C50D0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  if (atomic_load_explicit((v0 + *(*v0 + 104)), memory_order_acquire))
  {
  }

  return v0;
}

uint64_t sub_2580C5164()
{
  sub_2580C50D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2580C51D4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D660, &qword_2580DF188);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2580C526C()
{
  v0 = sub_2580DDEF4();
  __swift_allocate_value_buffer(v0, qword_27F91D668);
  __swift_project_value_buffer(v0, qword_27F91D668);
  return sub_2580DDEE4();
}

uint64_t ExtractionWriter.init(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2580DDF44();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ExtractionWriter.streams(readingFrom:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2580DDD14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F91D590 != -1)
  {
    swift_once();
  }

  v7 = sub_2580DDEF4();
  v34 = __swift_project_value_buffer(v7, qword_27F91D668);
  v8 = sub_2580DDED4();
  v9 = sub_2580DE184();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2580C3000, v8, v9, "Creating a decoding stream…", v10, 2u);
    MEMORY[0x259C79240](v10, -1, -1);
  }

  sub_2580DDD64();
  v35 = MEMORY[0x277D84F90];
  sub_2580C4874();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D5C8, &unk_2580DF1E0);
  sub_2580C4914();
  sub_2580DE204();
  v11 = sub_2580DDD24();
  v12 = *(v4 + 8);
  v13 = v12(v6, v3);
  if (v11)
  {

    v14 = sub_2580DDED4();
    v15 = sub_2580DE184();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v1;
      v17 = v16;
      *v16 = 0;
      _os_log_impl(&dword_2580C3000, v14, v15, "Creating an extraction stream…", v16, 2u);
      v18 = v17;
      v2 = v33;
      MEMORY[0x259C79240](v18, -1, -1);
    }

    sub_2580DDD04();
    v19 = sub_2580DDD34();
    v12(v6, v3);
    if (v19)
    {
    }

    else
    {
      v22 = v2;
      v23 = sub_2580DDD44();
      if (v2)
      {
        v24 = sub_2580DE174();
        MEMORY[0x259C790E0](v2);
        v25 = sub_2580DDED4();
        MEMORY[0x259C790D0](v2);
        if (os_log_type_enabled(v25, v24))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138543362;
          MEMORY[0x259C790E0](v22);
          v28 = _swift_stdlib_bridgeErrorToNSError();
          *(v26 + 4) = v28;
          *v27 = v28;
          _os_log_impl(&dword_2580C3000, v25, v24, "The decoding stream couldn’t be closed: %{public}@", v26, 0xCu);
          sub_2580C57CC(v27);
          MEMORY[0x259C79240](v27, -1, -1);
          MEMORY[0x259C79240](v26, -1, -1);
          MEMORY[0x259C790D0](v22);
        }

        else
        {

          v23 = MEMORY[0x259C790D0](v2);
        }
      }

      v29 = MEMORY[0x259C78720](v23);
      sub_2580C49C0();
      swift_allocError();
      *v30 = v29;
      swift_willThrow();
    }
  }

  else
  {
    v20 = MEMORY[0x259C78720](v13);
    sub_2580C49C0();
    swift_allocError();
    *v21 = v20;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_2580C57CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D680, &unk_2580DF970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2580C5848(uint64_t a1, uint64_t a2)
{
  v4 = sub_2580DDF44();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2580C58C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2580DDF44();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ExtractionWriter(uint64_t a1)
{
  result = qword_27F91D688;
  if (!qword_27F91D688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2580C5984(uint64_t a1)
{
  result = sub_2580DDF44();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2580C59F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AsyncTruncateAfterSequence.AsyncIterator(0, v14, v15, v14);
  *(a6 + *(v16 + 40)) = 0;
  (*(v11 + 16))(v13, a1, a4);
  sub_2580DE144();
  result = (*(v11 + 8))(a1, a4);
  v18 = (a6 + *(v16 + 36));
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t AsyncTruncateAfterSequence.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v3[8] = *(AssociatedTypeWitness - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_2580DE1B4();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2580C5C80, 0);
}

uint64_t sub_2580C5C80()
{
  sub_2580DE134();
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 40);
  *(v0 + 136) = v2;
  if (*(v1 + v2) == 1)
  {
    (*(*(v0 + 64) + 56))(*(v0 + 16), 1, 1, *(v0 + 56));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_2580C5E48;
    v8 = *(v0 + 104);

    return MEMORY[0x282200308](v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_2580C5E48()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2580C6310;
  }

  else
  {
    v2 = sub_2580C5F5C;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_2580C5F5C()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  (*(v0[11] + 16))(v1, v0[13], v0[10]);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v0[11] + 32))(v0[2], v0[13], v0[10]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[3];
    v7 = v0[4];
    (*(v0[8] + 32))(v0[9], v0[12], v0[7]);
    v10 = (*(v7 + *(v6 + 36)) + **(v7 + *(v6 + 36)));
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_2580C6148;
    v9 = v0[9];

    return v10(v9);
  }
}

uint64_t sub_2580C6148(char a1)
{
  *(*v1 + 140) = a1;

  return MEMORY[0x2822009F8](sub_2580C6248, 0);
}

uint64_t sub_2580C6248()
{
  v1 = *(v0 + 140);
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  if (v1 == 1)
  {
    *(*(v0 + 32) + *(v0 + 136)) = 1;
  }

  (*(*(v0 + 88) + 32))(*(v0 + 16), *(v0 + 104), *(v0 + 80));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2580C6310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2580C6390(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2580C6438;

  return AsyncTruncateAfterSequence.AsyncIterator.next()(a1, a2);
}

uint64_t sub_2580C6438()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2580C652C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v6[4] = *(AssociatedTypeWitness - 8);
  v13 = swift_task_alloc();
  v6[5] = v13;
  v14 = swift_task_alloc();
  v6[6] = v14;
  *v14 = v6;
  v14[1] = sub_2580C667C;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v13);
}

uint64_t sub_2580C667C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

uint64_t AsyncTruncateAfterSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, v5);
  v9 = (v2 + *(a1 + 36));
  v10 = *v9;
  v11 = v9[1];

  return sub_2580C59F0(v7, v10, v11, v5, a2);
}

uint64_t sub_2580C68A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AsyncTruncateAfterSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t AsyncSequence.truncate(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v5);
  (*(v11 + 32))(a5, v13, a3);
  v15 = (a5 + *(type metadata accessor for AsyncTruncateAfterSequence(0, a3, a4, v14) + 36));
  *v15 = a1;
  v15[1] = a2;
}

uint64_t sub_2580C6A1C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_2580C6AE0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_2580C6E74();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2580C6B68(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_2580C6CA4(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_2580C6E74()
{
  result = qword_27F91D718[0];
  if (!qword_27F91D718[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27F91D718);
  }

  return result;
}

unint64_t sub_2580C6ECC(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_2580C6E74();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2580C6F6C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v10 <= 3)
  {
    v11 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v10];
      if (!v14)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v16 = (v14 - 1) << (8 * v10);
    if (v10 <= 3)
    {
      v17 = *a1;
    }

    else
    {
      v16 = 0;
      v17 = *a1;
    }

    return v8 + (v17 | v16) + 1;
  }

  if (v13)
  {
    v14 = a1[v10];
    if (a1[v10])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v7 < 0x7FFFFFFF)
  {
    v19 = *(&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  else
  {
    v18 = *(v6 + 48);

    return v18(a1);
  }
}

void sub_2580C7114(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v10 >= a3)
  {
    v14 = 0;
    if (v10 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v11 <= 3)
    {
      v12 = ((a3 - v10 + 255) >> 8) + 1;
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

    if (v10 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v14)
      {
        a1[v11] = 0;
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
      if (v8 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          *v18 = (a2 - 1);
        }
      }

      else
      {
        v17 = *(v7 + 56);

        v17(a1, a2);
      }

      return;
    }
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
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
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
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v11] = v16;
  }
}

unint64_t sub_2580C7334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 80);
  if (v5 == 1)
  {
    TupleTypeMetadata = type metadata accessor for StreamProcessorStage(0, *(*(*v4 + 96) & 0xFFFFFFFFFFFFFFFELL), *(*(*v4 + 112) & 0xFFFFFFFFFFFFFFFELL), a4);
    v7 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    if (v5)
    {
      v11 = (*(v9 + 96) & 0xFFFFFFFFFFFFFFFELL);
      v12 = (*(v9 + 112) & 0xFFFFFFFFFFFFFFFELL);
      v13 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v5;
      do
      {
        v16 = *v11++;
        v15 = v16;
        v17 = *v12++;
        *v13++ = type metadata accessor for StreamProcessorStage(255, v15, v17, v8);
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v4 + *(*v4 + 128), v7);
  v21 = 0;
  if (v5)
  {
    v22 = v7 + 32;
    v23 = v5;
    do
    {

      v24 = sub_2580C4B18();

      if (v24 > v21)
      {
        v21 = v24;
      }

      v22 += 16;
      --v23;
    }

    while (v23);
  }

  (*(v18 + 8))(v20, v7);
  return v21;
}

uint64_t _s23ManagedBackgroundAssets14StreamPipelineC6writer_ACyxq_q_Qp_QPGx_AA0dE13WithoutWriterVyq_q_Qp_QPGyqd__YKXEtqd__YKcs5ErrorRd__lufC(uint64_t a1, void (*a2)(void), void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  _s23ManagedBackgroundAssets14StreamPipelineC6writer_ACyxq_q_Qp_QPGx_AA0dE13WithoutWriterVyq_q_Qp_QPGyqd__YKXEtqd__YKcs5ErrorRd__lufc(a1, a2, a3, a4, v12, a6);
  return v11;
}

void *_s23ManagedBackgroundAssets14StreamPipelineC6writer_ACyxq_q_Qp_QPGx_AA0dE13WithoutWriterVyq_q_Qp_QPGyqd__YKXEtqd__YKcs5ErrorRd__lufc(uint64_t a1, void (*a2)(void), void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = a6;
  v7 = v6;
  v92 = a3;
  v93 = a2;
  v95 = *v6;
  v9 = *(v95 + 88);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v82 = &v81 - v12;
  v84 = v13;
  v83 = *(v13 - 8);
  MEMORY[0x28223BE20](v11);
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15[10];
  v17 = v15[12];
  v102 = v15[14];
  v18 = type metadata accessor for StreamPipelineWithoutWriter(0, v16, v17, v102);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v81 - v20;
  v22 = 8 * v16;
  if (v16 == 1)
  {
    TupleTypeMetadata = *(v17 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](v19);
    v24 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v16)
    {
      v25 = 0;
      v26 = v17 & 0xFFFFFFFFFFFFFFFELL;
      if (v16 < 4)
      {
        goto LABEL_9;
      }

      if (&v24[-v26] < 0x20)
      {
        goto LABEL_9;
      }

      v25 = v16 & 0xFFFFFFFFFFFFFFFCLL;
      v27 = (v26 + 16);
      v28 = v24 + 16;
      v29 = v16 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v30 = *v27;
        *(v28 - 1) = *(v27 - 1);
        *v28 = v30;
        v27 += 2;
        v28 += 2;
        v29 -= 4;
      }

      while (v29);
      if (v16 != v25)
      {
LABEL_9:
        v31 = v16 - v25;
        v32 = 8 * v25;
        v33 = &v24[8 * v25];
        v34 = (v26 + v32);
        do
        {
          v35 = *v34++;
          *v33 = v35;
          v33 += 8;
          --v31;
        }

        while (v31);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v97 = v17;
  v89 = TupleTypeMetadata;
  v86 = *(TupleTypeMetadata - 8);
  v36 = MEMORY[0x28223BE20](TupleTypeMetadata);
  v99 = &v81 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v16;
  v96 = a1;
  v94 = v39;
  if (v16 == 1)
  {
    v40 = type metadata accessor for StreamProcessorStage(0, *(v97 & 0xFFFFFFFFFFFFFFFELL), *(v102 & 0xFFFFFFFFFFFFFFFELL), v37);
    v41 = v40;
  }

  else
  {
    v87 = v10;
    v88 = v9;
    v42 = v7;
    MEMORY[0x28223BE20](v36);
    v44 = (&v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v45)
    {
      v46 = (v97 & 0xFFFFFFFFFFFFFFFELL);
      v47 = (v102 & 0xFFFFFFFFFFFFFFFELL);
      v48 = v44;
      v49 = v100;
      do
      {
        v51 = *v46++;
        v50 = v51;
        v52 = *v47++;
        *v48++ = type metadata accessor for StreamProcessorStage(255, v50, v52, v43);
        --v49;
      }

      while (v49);
    }

    v40 = swift_getTupleTypeMetadata();
    v41 = v40;
    v7 = v42;
    v10 = v87;
    v9 = v88;
  }

  v90 = &v81;
  v53 = *(v41 - 1);
  MEMORY[0x28223BE20](v40);
  v55 = &v81 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v56 = v91;
  v57 = v98;
  v93(v91);
  if (v57)
  {
    (*(v83 + 32))(v85, v56, v84);
    v58 = *(v95 + 104);
    v101[0] = v100;
    v101[1] = v9;
    v101[2] = v97;
    v101[3] = v58;
    v101[4] = v102;
    type metadata accessor for StreamPipeline(0, v101);
    swift_defaultActor_destroy();
    (*(v10 + 8))(v96, v9);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v98 = v55;
    v85 = v53;
    v92 = v7;
    v93 = v41;
    v91 = 0;
    v87 = v10;
    v88 = v9;
    (*(v86 + 32))(v99, v21, v89);
    if (v100)
    {
      v60 = (v97 & 0xFFFFFFFFFFFFFFFELL);
      v61 = (v102 & 0xFFFFFFFFFFFFFFFELL);
      v62 = v89 + 32;
      v63 = (v93 + 32);
      v64 = v100;
      do
      {
        v71 = *v60;
        v72 = *v61;
        v73 = v98;
        if (v100 == 1)
        {
          v65 = type metadata accessor for StreamProcessorStage(0, *v60, v72, v59);
          v102 = v73;
        }

        else
        {
          v102 = &v98[*v63];
          v65 = type metadata accessor for StreamProcessorStage(0, v71, v72, v59);
        }

        MEMORY[0x28223BE20](v65);
        v67 = &v81 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v68 + 16))(v67, &v99[v69], v71);
        v70 = sub_2580C4B8C(v67);
        v62 += 16;
        *v102 = v70;
        v63 += 4;
        ++v61;
        ++v60;
        --v64;
      }

      while (v64);
    }

    v7 = v92;
    (*(v85 + 32))(v92 + *(*v92 + 128), v98, v93);
    (*(v86 + 8))(v99, v89);
    v74 = v88;
    type metadata accessor for StreamWriterStage(0, v88, *(v95 + 104), v75);
    v76 = v87;
    v77 = v82;
    v78 = v96;
    (*(v87 + 16))(v82, v96, v74);
    v79 = sub_2580D4378(v77);
    (*(v76 + 8))(v78, v74);
    *(v7 + *(*v7 + 136)) = v79;
  }

  return v7;
}

uint64_t sub_2580C7E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[121] = v4;
  v5[120] = a3;
  v5[119] = a2;
  v5[113] = a1;
  v7 = *v4;
  v8 = *v4;
  v5[122] = *v4;
  v9 = *(v7 + 80);
  v5[123] = v9;
  if (v9 == 1)
  {
    TupleTypeMetadata = type metadata accessor for StreamProcessorStage(0, *(*(v8 + 96) & 0xFFFFFFFFFFFFFFFELL), *(*(v8 + 112) & 0xFFFFFFFFFFFFFFFELL), a4);
  }

  else
  {
    v11 = swift_task_alloc();
    if (v9)
    {
      v13 = (*(v8 + 96) & 0xFFFFFFFFFFFFFFFELL);
      v14 = (*(v8 + 112) & 0xFFFFFFFFFFFFFFFELL);
      v15 = v11;
      v16 = v9;
      do
      {
        v18 = *v13++;
        v17 = v18;
        v19 = *v14++;
        *v15++ = type metadata accessor for StreamProcessorStage(255, v17, v19, v12);
        --v16;
      }

      while (v16);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v5[124] = TupleTypeMetadata;
  v5[125] = *(TupleTypeMetadata - 8);
  v5[126] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D7B8, &qword_2580DF790);
  v5[127] = swift_task_alloc();
  v5[128] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D7C0, &qword_2580DF330);
  v5[129] = v20;
  v5[130] = *(v20 - 8);
  v5[131] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D7C8, &qword_2580DF338);
  v5[132] = swift_task_alloc();
  v5[133] = swift_task_alloc();
  v5[134] = *(a2 - 8);
  v5[135] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[136] = AssociatedTypeWitness;
  v5[137] = *(AssociatedTypeWitness - 8);
  v5[138] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2580C819C, v4);
}

uint64_t sub_2580C819C()
{
  v27 = v0;
  PassthroughProcessor.init()(&v25);
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  v24 = *(v0 + 984);
  v23 = *(v0 + 976);
  v3 = *(v0 + 968);
  v4 = *(v0 + 960);
  v5 = *(v0 + 952);
  v22 = *(v0 + 904);
  v6 = v25;
  v7 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D7D0, &unk_2580DF340);
  v8 = swift_allocObject();
  *(v0 + 1112) = v8;
  *(v8 + 32) = 0;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D660, &qword_2580DF188);
  sub_2580DDD74();

  v9 = swift_allocObject();
  *(v0 + 1120) = v9;
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = v3;
  v11 = swift_allocObject();
  *(v0 + 1128) = v11;
  *(v11 + 16) = &unk_2580DF360;
  *(v11 + 24) = v10;

  swift_asyncLet_begin();
  (*(v2 + 16))(v1, v22, v5);
  sub_2580DE144();
  v12 = *(v23 + 88);
  v13 = *(v23 + 104);
  *(v0 + 696) = v24;
  *(v0 + 704) = v12;
  *(v0 + 720) = v13;
  type metadata accessor for StreamPipeline(255, v0 + 696);
  WitnessTable = swift_getWitnessTable();
  *(v0 + 1136) = WitnessTable;
  v15 = *v3;
  *(v0 + 1144) = *(*v3 + 128);
  *(v0 + 1152) = *(v15 + 136);
  *(v0 + 1288) = 0;
  v16 = *(v0 + 968);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_task_alloc();
  *(v0 + 1160) = v18;
  *v18 = v0;
  v18[1] = sub_2580C8540;
  v19 = *(v0 + 1088);
  v20 = *(v0 + 1056);

  return MEMORY[0x282200310](v20, v16, WitnessTable, v0 + 856, v19, AssociatedConformanceWitness);
}

uint64_t sub_2580C8540()
{
  v2 = *v1;
  *(*v1 + 1168) = v0;

  v3 = *(v2 + 968);
  if (v0)
  {
    v4 = sub_2580C9578;
  }

  else
  {
    v4 = sub_2580C8658;
  }

  return MEMORY[0x2822009F8](v4, v3);
}

uint64_t sub_2580C8658()
{
  v1 = *(v0 + 1064);
  sub_2580CA498(*(v0 + 1056), v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D7E0, &qword_2580DF378);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 1120);
    v4 = *(v0 + 1112);
    (*(*(v0 + 1096) + 8))(*(v0 + 1104), *(v0 + 1088));
    sub_2580C9BCC(*(v4 + 16), v3);

    return MEMORY[0x282200930](v0 + 16, v0 + 808, sub_2580C9408, v0 + 736);
  }

  v5 = *(v0 + 1120);
  v6 = *(v0 + 1112);
  v7 = *(v0 + 1064);
  v8 = *(v0 + 1048);
  v9 = *(v0 + 1040);
  v10 = *(v0 + 1032);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 1016);
  v13 = *v7;
  *(v0 + 1176) = *v7;
  v14 = *(v7 + 8);
  *(v0 + 1184) = v14;
  v61 = *(v7 + 16);
  (*(v9 + 32))(v8, v7 + *(v2 + 64), v10);
  v15 = sub_2580DE104();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v11, 1, 1, v15);
  LODWORD(v6) = *(v6 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v13;
  *(v17 + 40) = v14;
  *(v17 + 48) = v6;
  *(v17 + 52) = v61;
  *(v17 + 56) = v5;
  sub_2580CA918(v11, v12);
  LODWORD(v12) = (*(v16 + 48))(v12, 1, v15);
  sub_2580CA988(v13, v14);

  v18 = *(v0 + 1016);
  if (v12 == 1)
  {
    sub_2580CAFD4(*(v0 + 1016), &qword_27F91D7B8, &qword_2580DF790);
  }

  else
  {
    sub_2580DE0F4();
    (*(v16 + 8))(v18, v15);
  }

  v19 = *(v17 + 16);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = sub_2580DE094();
    v22 = v21;
    swift_unknownObjectRelease();
    if (v22 | v20)
    {
      *(v0 + 776) = 0;
      *(v0 + 784) = 0;
      *(v0 + 792) = v20;
      *(v0 + 800) = v22;
    }
  }

  v23 = *(v0 + 1288);
  v24 = *(v0 + 1024);
  v25 = MEMORY[0x277D84F78];
  *(v0 + 1192) = swift_task_create();
  sub_2580CAFD4(v24, &qword_27F91D7B8, &qword_2580DF790);
  if (v23)
  {
    goto LABEL_12;
  }

  if (qword_27F91D598 != -1)
  {
    swift_once();
  }

  v30 = sub_2580DDEF4();
  __swift_project_value_buffer(v30, qword_27F91D7A0);
  v31 = sub_2580DDED4();
  v32 = sub_2580DE184();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2580C3000, v31, v32, "Setting up the stream stages…", v33, 2u);
    MEMORY[0x259C79240](v33, -1, -1);
  }

  v34 = *(v0 + 1144);
  v35 = *(v0 + 1008);
  v36 = *(v0 + 1000);
  v37 = *(v0 + 992);
  v38 = *(v0 + 984);
  v39 = *(v0 + 968);

  (*(v36 + 16))(v35, v39 + v34, v37);

  if (v38)
  {
    v40 = 0;
    v41 = *(v0 + 1112);
    *(v0 + 1208) = 0;
    *(v0 + 1200) = v41;
    if (*(v0 + 984) != 1)
    {
      v40 = *(*(v0 + 992) + 32);
    }

    v42 = *(v0 + 1136);
    v43 = *(v0 + 968);
    *(v0 + 1216) = *(*(v0 + 1008) + v40);

    v44 = swift_task_alloc();
    *(v0 + 1224) = v44;
    *v44 = v0;
    v44[1] = sub_2580C8D58;

    return sub_2580C4C38(v43, v42, v41, &off_286943718);
  }

  else
  {
    v45 = *(v0 + 1168);
    sub_2580D5C10(*(v0 + 1112), &off_286943718);
    if (!v45)
    {
      v57 = *(v0 + 1008);
      v58 = *(v0 + 1000);
      v59 = *(v0 + 992);
      swift_unknownObjectRelease();
      (*(v58 + 8))(v57, v59);
LABEL_12:
      v26 = swift_task_alloc();
      *(v0 + 1240) = v26;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F91D7E8, &qword_2580DF390);
      *v26 = v0;
      v26[1] = sub_2580C919C;
      v28 = *(v0 + 1192);
      v29 = MEMORY[0x277D84950];

      return MEMORY[0x282200430](v27, v28, v25 + 8, v27, v29);
    }

    v46 = *(v0 + 1008);
    v47 = *(v0 + 1000);
    v48 = *(v0 + 992);

    swift_unknownObjectRelease();
    (*(v47 + 8))(v46, v48);
    *(v0 + 1280) = v45;
    v49 = *(v0 + 1184);
    v50 = *(v0 + 1176);
    v51 = *(v0 + 1104);
    v52 = *(v0 + 1096);
    v53 = *(v0 + 1088);
    v54 = *(v0 + 1048);
    v55 = *(v0 + 1040);
    v56 = *(v0 + 1032);
    sub_2580DE0A4();
    swift_willThrow();
    sub_2580CA7E4(v50, v49);
    (*(v55 + 8))(v54, v56);
    (*(v52 + 8))(v51, v53);

    return MEMORY[0x282200920](v0 + 16, v0 + 808, sub_2580C970C, v0 + 912);
  }
}

uint64_t sub_2580C8D58()
{
  v2 = *v1;
  *(*v1 + 1232) = v0;

  v3 = *(v2 + 968);
  if (v0)
  {
    v4 = sub_2580C9818;
  }

  else
  {
    v4 = sub_2580C8E84;
  }

  return MEMORY[0x2822009F8](v4, v3);
}

uint64_t sub_2580C8E84()
{
  v1 = v0[151];
  v2 = v0[123];
  swift_unknownObjectRelease();
  v3 = v1 + 1;
  if (v1 + 1 == v2)
  {
    v4 = v0[154];
    sub_2580D5C10(v0[152], &off_286943718);
    if (v4)
    {
      v5 = v0[126];
      v6 = v0[125];
      v7 = v0[124];

      swift_unknownObjectRelease();
      (*(v6 + 8))(v5, v7);
      v0[160] = v4;
      v8 = v0[148];
      v9 = v0[147];
      v10 = v0[138];
      v11 = v0[137];
      v12 = v0[136];
      v13 = v0[131];
      v14 = v0[130];
      v15 = v0[129];
      sub_2580DE0A4();
      swift_willThrow();
      sub_2580CA7E4(v9, v8);
      (*(v14 + 8))(v13, v15);
      (*(v11 + 8))(v10, v12);

      return MEMORY[0x282200920](v0 + 2, v0 + 101, sub_2580C970C, v0 + 114);
    }

    else
    {
      v21 = v0[126];
      v22 = v0[125];
      v23 = v0[124];
      swift_unknownObjectRelease();
      (*(v22 + 8))(v21, v23);
      v24 = swift_task_alloc();
      v0[155] = v24;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F91D7E8, &qword_2580DF390);
      *v24 = v0;
      v24[1] = sub_2580C919C;
      v26 = v0[149];
      v27 = MEMORY[0x277D84950];
      v28 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200430](v25, v26, v28, v25, v27);
    }
  }

  else
  {
    v16 = v0[152];
    v0[151] = v3;
    v0[150] = v16;
    if (v0[123] == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v0[124] + 16 * v3 + 32);
    }

    v18 = v0[142];
    v19 = v0[121];
    v0[152] = *(v0[126] + v17);

    v20 = swift_task_alloc();
    v0[153] = v20;
    *v20 = v0;
    v20[1] = sub_2580C8D58;

    return sub_2580C4C38(v19, v18, v16, &off_286943718);
  }
}

uint64_t sub_2580C919C()
{
  v2 = *v1;
  *(*v1 + 1248) = v0;

  v3 = *(v2 + 968);
  if (v0)
  {
    v4 = sub_2580C9950;
  }

  else
  {
    v4 = sub_2580C92C8;
  }

  return MEMORY[0x2822009F8](v4, v3);
}

uint64_t sub_2580C92C8(uint64_t a1)
{
  v2 = *(v1 + 1184);
  v3 = *(v1 + 1176);
  v4 = *(v1 + 1048);
  v5 = *(v1 + 1040);
  v6 = *(v1 + 1032);
  sub_2580DE0A4();

  sub_2580CA7E4(v3, v2);
  (*(v5 + 8))(v4, v6);
  *(v1 + 1288) = 1;
  v7 = *(v1 + 1136);
  v8 = *(v1 + 968);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_task_alloc();
  *(v1 + 1160) = v10;
  *v10 = v1;
  v10[1] = sub_2580C8540;
  v11 = *(v1 + 1088);
  v12 = *(v1 + 1056);

  return MEMORY[0x282200310](v12, v8, v7, v1 + 856, v11, AssociatedConformanceWitness);
}

uint64_t sub_2580C9408()
{
  v1[157] = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 2, v1 + 101, sub_2580C9A4C, v1 + 102);
  }

  v1[158] = v1[101];
  return MEMORY[0x282200920](v1 + 2, v1 + 101, sub_2580C9458, v1 + 108);
}

uint64_t sub_2580C9474()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1264);

  return v1(v2);
}

uint64_t sub_2580C9578()
{
  (*(v0[137] + 8))(v0[138], v0[136]);
  v0[159] = v0[107];

  return MEMORY[0x282200920](v0 + 2, v0 + 101, sub_2580C9600, v0 + 82);
}

uint64_t sub_2580C961C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2580C9728()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2580C9818()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];

  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v0[160] = v0[154];
  v4 = v0[148];
  v5 = v0[147];
  v6 = v0[138];
  v7 = v0[137];
  v8 = v0[136];
  v9 = v0[131];
  v10 = v0[130];
  v11 = v0[129];
  sub_2580DE0A4();
  swift_willThrow();
  sub_2580CA7E4(v5, v4);
  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);

  return MEMORY[0x282200920](v0 + 2, v0 + 101, sub_2580C970C, v0 + 114);
}

uint64_t sub_2580C9950()
{

  v0[160] = v0[156];
  v1 = v0[148];
  v2 = v0[147];
  v3 = v0[138];
  v4 = v0[137];
  v5 = v0[136];
  v6 = v0[131];
  v7 = v0[130];
  v8 = v0[129];
  sub_2580DE0A4();
  swift_willThrow();
  sub_2580CA7E4(v2, v1);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x282200920](v0 + 2, v0 + 101, sub_2580C970C, v0 + 114);
}

uint64_t sub_2580C9A68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2580C9B58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D7D8, &qword_2580DF350);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return MEMORY[0x2821FE8E8](v0, 17, 7);
}

void sub_2580C9BCC(uint64_t a1, uint64_t a2)
{
  if ((atomic_exchange((a2 + 16), 1u) & 1) == 0)
  {
    if (qword_27F91D598 != -1)
    {
      swift_once();
    }

    v2 = sub_2580DDEF4();
    __swift_project_value_buffer(v2, qword_27F91D7A0);
    v3 = sub_2580DDED4();
    v4 = sub_2580DE184();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2580C3000, v3, v4, "Closing the pipe’s entrance…", v5, 2u);
      MEMORY[0x259C79240](v5, -1, -1);
    }

    v6 = sub_2580DDF24();
    if ((v6 & 0x100000000) != 0)
    {
      v7 = v6;
      sub_2580C49C0();
      swift_willThrowTypedImpl();
      v8 = swift_allocError();
      *v9 = v7;
      v10 = sub_2580DE174();
      MEMORY[0x259C790E0](v8);
      v11 = sub_2580DDED4();
      MEMORY[0x259C790D0](v8);
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138543362;
        MEMORY[0x259C790E0](v8);
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v14;
        *v13 = v14;
        _os_log_impl(&dword_2580C3000, v11, v10, "The pipe’s entrance couldn’t be closed, which could cause a deadlock: %{public}@", v12, 0xCu);
        sub_2580CAFD4(v13, &qword_27F91D680, &unk_2580DF970);
        MEMORY[0x259C79240](v13, -1, -1);
        MEMORY[0x259C79240](v12, -1, -1);
        MEMORY[0x259C790D0](v8);
      }

      else
      {

        MEMORY[0x259C790D0](v8);
      }
    }
  }
}

uint64_t sub_2580C9E28()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2580C9ED0;

  return sub_2580D43B8();
}

uint64_t sub_2580C9ED0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2580C9FD0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2580CA008()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2580CA0B0;

  return sub_2580C9E08(v2);
}

uint64_t sub_2580CA0B0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2580CA1AC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2580CA298;

  return v5();
}

uint64_t sub_2580CA298(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_2580CA3A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2580CA3E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2580CB038;

  return sub_2580CA1AC(a1, v4);
}

uint64_t sub_2580CA498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D7C8, &qword_2580DF338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2580CA508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  *(v8 + 40) = a5;
  *(v8 + 48) = a8;
  *(v8 + 64) = a7;
  *(v8 + 60) = a6;
  *(v8 + 32) = a4;
  return MEMORY[0x2822009F8](sub_2580CA534, 0);
}

void *sub_2580CA534()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  result = MEMORY[0x259C78E60]();
  v23 = result;
  v4 = v1 >> 62;
  v5 = __OFSUB__(HIDWORD(v2), v2);
  v24 = v5;
  if (v4 == 3)
  {
LABEL_5:
    if (*(v0 + 64) == 1)
    {
      sub_2580C9BCC(*(v0 + 60), *(v0 + 48));
    }

    objc_autoreleasePoolPop(v23);
    v6 = *(v0 + 8);
LABEL_35:

    return v6();
  }

  else
  {
    v7 = 0;
    v8 = BYTE6(v1);
    while (1)
    {
      v9 = v8;
      if (v4)
      {
        if (v4 == 1)
        {
          v9 = HIDWORD(v2) - v2;
          if (v24)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v11 = *(v2 + 16);
          v10 = *(v2 + 24);
          v12 = __OFSUB__(v10, v11);
          v9 = v10 - v11;
          if (v12)
          {
            goto LABEL_39;
          }
        }
      }

      if (v7 >= v9)
      {
        goto LABEL_5;
      }

      if (v4)
      {
        if (v4 == 2)
        {
          v13 = *(v2 + 16);
          result = (v13 + v7);
          if (__OFADD__(v13, v7))
          {
            goto LABEL_42;
          }

          v14 = *(v2 + 24);
        }

        else
        {
          result = (v2 + v7);
          if (__OFADD__(v2, v7))
          {
            goto LABEL_41;
          }

          v14 = v2 >> 32;
          v13 = v2;
        }
      }

      else
      {
        v14 = v8;
        v13 = 0;
        result = v7;
      }

      if (result < v13 || v14 < result)
      {
        break;
      }

      if (v4)
      {
        v15 = v2 >> 32;
        v16 = v2;
        if (v4 != 1)
        {
          v16 = *(v2 + 16);
          v15 = *(v2 + 24);
        }
      }

      else
      {
        v16 = 0;
        v15 = v8;
      }

      if (v15 < result || v15 < v16)
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v17 = sub_2580DDC64();
      v19 = v18;
      *(v0 + 16) = v17;
      *(v0 + 24) = v18;
      sub_2580CAF80();
      v20 = sub_2580DDF34();
      if (v21)
      {
        goto LABEL_34;
      }

      result = sub_2580CA7E4(v17, v19);
      v12 = __OFADD__(v7, v20);
      v7 += v20;
      if (v12)
      {
        __break(1u);
LABEL_34:
        *(v0 + 56) = v20;
        sub_2580C49C0();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v22 = v20;
        sub_2580CA7E4(v17, v19);
        objc_autoreleasePoolPop(v23);
        v6 = *(v0 + 8);
        goto LABEL_35;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2580CA79C()
{
  swift_unknownObjectRelease();
  sub_2580CA7E4(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2580CA7E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2580CA838(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2580C6438;

  return sub_2580CA508(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2580CA918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D7B8, &qword_2580DF790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2580CA988(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t StreamPipeline.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 128);
  v6 = *(*v4 + 80);
  if (v6 == 1)
  {
    TupleTypeMetadata = type metadata accessor for StreamProcessorStage(0, *(*(*v4 + 96) & 0xFFFFFFFFFFFFFFFELL), *(*(*v4 + 112) & 0xFFFFFFFFFFFFFFFELL), a4);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    if (v6)
    {
      v11 = (*(v9 + 96) & 0xFFFFFFFFFFFFFFFELL);
      v12 = (*(v9 + 112) & 0xFFFFFFFFFFFFFFFELL);
      v13 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v6;
      do
      {
        v16 = *v11++;
        v15 = v16;
        v17 = *v12++;
        *v13++ = type metadata accessor for StreamProcessorStage(255, v15, v17, v8);
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  (*(*(TupleTypeMetadata - 8) + 8))(v4 + v5);

  swift_defaultActor_destroy();
  return v4;
}

uint64_t StreamPipeline.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  StreamPipeline.deinit(a1, a2, a3, a4);

  return MEMORY[0x282200960](v4);
}

uint64_t sub_2580CABD0()
{
  v0 = sub_2580DDEF4();
  __swift_allocate_value_buffer(v0, qword_27F91D7A0);
  __swift_project_value_buffer(v0, qword_27F91D7A0);
  return sub_2580DDEE4();
}

uint64_t sub_2580CAC54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = &unk_2580DF400;
  v5 = a1[10];
  if (v5 == 1)
  {
    TupleTypeMetadata = type metadata accessor for StreamProcessorStage(319, *(a1[12] & 0xFFFFFFFFFFFFFFFELL), *(a1[14] & 0xFFFFFFFFFFFFFFFELL), a4);
    if (v7 > 0x3F)
    {
      return TupleTypeMetadata;
    }

    TupleTypeMetadata = swift_checkMetadataState();
    if (v8 > 0x3F)
    {
      return TupleTypeMetadata;
    }

LABEL_9:
    v21[2] = *(TupleTypeMetadata - 8) + 64;
    v21[3] = MEMORY[0x277D83428] + 64;
    inited = swift_initClassMetadata2();
    if (inited)
    {
      return inited;
    }

    else
    {
      return 0;
    }
  }

  MEMORY[0x28223BE20](a1);
  if (v5)
  {
    v11 = (a1[12] & 0xFFFFFFFFFFFFFFFELL);
    v12 = (a1[14] & 0xFFFFFFFFFFFFFFFELL);
    v13 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = v5;
    do
    {
      v16 = *v11++;
      v15 = v16;
      v17 = *v12++;
      *v13++ = type metadata accessor for StreamProcessorStage(255, v15, v17, v9);
      --v14;
    }

    while (v14);
  }

  TupleTypeMetadata = swift_getTupleTypeMetadata();
  if (v18 <= 0x3F)
  {
    goto LABEL_9;
  }

  return TupleTypeMetadata;
}

uint64_t dispatch thunk of StreamPipeline.process<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 160) + **(*v3 + 160));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2580CB034;

  return v10(a1, a2, a3);
}

unint64_t sub_2580CAF80()
{
  result = qword_27F91D870[0];
  if (!qword_27F91D870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F91D870);
  }

  return result;
}

uint64_t sub_2580CAFD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2580CB064(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    result = swift_checkMetadataState();
    if (v3 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v19[7] = 0;
    v20 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  MEMORY[0x28223BE20](a1);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v4)
  {
    v7 = 0;
    v8 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (v4 < 4)
    {
      goto LABEL_10;
    }

    if (&v6[-v8] < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = (v8 + 16);
    v10 = v6 + 16;
    v11 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v4 != v7)
    {
LABEL_10:
      v13 = v4 - v7;
      v14 = 8 * v7;
      v15 = &v6[8 * v7];
      v16 = (v8 + v14);
      do
      {
        v17 = *v16++;
        *v15++ = v17;
        --v13;
      }

      while (v13);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v18 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2580CB1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x28223BE20](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, v3);
}

uint64_t sub_2580CB314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = a1;
    MEMORY[0x28223BE20](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v6;
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

uint64_t sub_2580CB468@<X0>(uint64_t *TupleTypeMetadata@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v8 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v11 = 0;
      v12 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != v5)
      {
LABEL_9:
        v17 = v5 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = TupleTypeMetadata;
  }

  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for StreamPipelineWithoutWriter(0, v5, a3, v25);
  v45 = &v40;
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v40 - v28;
  if (v5)
  {
    v43 = v6;
    v44 = a4;
    v30 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v31 = 32;
    v41 = v30;
    v42 = v26;
    v32 = v5;
    do
    {
      if (v5 == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = *(v8 + v31);
      }

      v35 = *v30++;
      v34 = v35;
      v36 = *v6++;
      (*(*(v34 - 8) + 16))(&v24[v33], v36);
      v31 += 16;
      --v32;
    }

    while (v32);
    (*(v22 + 32))(v29, v24, v8);
    (*(v27 + 32))(v44, v29, v42);
    v37 = v41 - 1;
    v38 = v43 - 1;
    do
    {
      result = (*(*(v37[v5] - 8) + 8))(v38[v5]);
      --v5;
    }

    while (v5);
  }

  else
  {
    (*(v22 + 32))(v29, v24, v8);
    return (*(v27 + 32))(a4, v29, v26);
  }

  return result;
}

uint64_t ConditionalProcessor.minimumChunkSize.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = sub_2580DE1B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, v2, v5);
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(*(a1 + 24) + 8))(v4);
    v6 = v9;
    v5 = v4;
  }

  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_2580CB930@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_2580DE1B4();
  v6 = *(*(v5 - 8) + 32);

  return v6(a3, a1, v5);
}

uint64_t ConditionalProcessor.byteStream(isolation:readingFrom:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = *(a4 + 16);
  v5[7] = v7;
  v8 = sub_2580DE1B4();
  v5[8] = v8;
  v5[9] = *(v8 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_2580DE094();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v5[13] = v9;
  v5[14] = v11;

  return MEMORY[0x2822009F8](sub_2580CBAFC, v9);
}

uint64_t sub_2580CBAFC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  (*(v0[9] + 16))(v1, v0[6], v0[8]);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    v4 = v0[4];

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = v0[5];
    (*(v0[11] + 32))(v0[12], v0[10], v0[7]);
    v8 = *(v7 + 24);
    v14 = (*(v8 + 16) + **(v8 + 16));
    v9 = swift_task_alloc();
    v0[15] = v9;
    *v9 = v0;
    v9[1] = sub_2580CBD0C;
    v10 = v0[7];
    v11 = v0[3];
    v12 = v0[4];
    v13 = v0[2];

    return v14(v13, v11, v12, v10, v8);
  }
}

uint64_t sub_2580CBD0C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = *(v4 + 104);
    v6 = sub_2580CBEC4;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = *(v4 + 104);
    v6 = sub_2580CBE34;
  }

  return MEMORY[0x2822009F8](v6, v5);
}

uint64_t sub_2580CBE34()
{
  (*(v0[11] + 8))(v0[12], v0[7]);
  v1 = v0[17];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_2580CBEC4()
{
  (*(v0[11] + 8))(v0[12], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2580CBF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2580CC010;

  return ConditionalProcessor.byteStream(isolation:readingFrom:)(a1, a2, a3, a4);
}

uint64_t sub_2580CC010(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2580CC110(uint64_t a1)
{
  result = sub_2580DE1B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2580CC180(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_2580CC300(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t KeyedEncodingContainer.encode(userInfo:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2580DE394();
  v4 = v8;
  v5 = v9;
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  sub_2580CCEEC(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D978, &qword_2580DF4B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_2580CC77C();
  sub_2580DE3A4();
  sub_2580CC7D0(a1);
  return (*(v5 + 8))(v7, v4);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t sub_2580CC77C()
{
  result = qword_27F91D980;
  if (!qword_27F91D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91D980);
  }

  return result;
}

uint64_t sub_2580CC7D0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D978, &qword_2580DF4B8);
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - v6;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v37 = (v5 + 8);
  v40 = a1;

  v12 = 0;
  v41 = v4;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (!v10)
        {
          if (v11 <= v12 + 1)
          {
            v14 = v12 + 1;
          }

          else
          {
            v14 = v11;
          }

          v15 = v14 - 1;
          while (1)
          {
            v13 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v13 >= v11)
            {
              v10 = 0;
              v53 = 0;
              v51 = 0u;
              v52 = 0u;
              v50 = 0u;
              goto LABEL_14;
            }

            v10 = *(v7 + 8 * v13);
            ++v12;
            if (v10)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_36:

          sub_2580CCE98();
          swift_allocError();
          v36 = v35;
          sub_2580CCE1C(&v50, v35);
          *(v36 + 40) = 1;
          swift_willThrow();
          goto LABEL_39;
        }

        v13 = v12;
LABEL_13:
        v16 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v17 = v16 | (v13 << 6);
        v18 = (*(v40 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        sub_2580CCE1C(*(v40 + 56) + 40 * v17, &v46);
        *&v50 = v20;
        *(&v50 + 1) = v19;
        sub_2580CCE80(&v46, &v51);

        v15 = v13;
LABEL_14:
        v54 = v50;
        v55[0] = v51;
        v55[1] = v52;
        v56 = v53;
        v21 = *(&v50 + 1);
        if (!*(&v50 + 1))
        {
        }

        v22 = v54;
        sub_2580CCE80(v55, &v50);
        sub_2580CCE1C(&v50, &v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D988, &qword_2580DF4C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D990, &qword_2580DF4C8);
        if (!swift_dynamicCast())
        {
          break;
        }

        v23 = v42;
        v42 = v22;
        v43 = v21;
        v44 = 0;
        v45 = 1;
        sub_2580DE394();

        v24 = v48;
        v25 = v49;
        __swift_mutable_project_boxed_opaque_existential_1(&v46, v48);
        sub_2580CCEEC(v23, v24, v25);

        if (v2)
        {

          __swift_destroy_boxed_opaque_existential_1(&v50);
          v34 = &v46;
          return __swift_destroy_boxed_opaque_existential_1(v34);
        }

        __swift_destroy_boxed_opaque_existential_1(&v50);
        v26 = &v46;
LABEL_18:
        __swift_destroy_boxed_opaque_existential_1(v26);
        v12 = v15;
      }

      sub_2580CCE1C(&v50, &v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D998, &qword_2580DF4D0);
      if (!swift_dynamicCast())
      {
        break;
      }

      v39 = v2;
      v27 = v15;
      v28 = v42;
      *&v46 = v22;
      *(&v46 + 1) = v21;
      v47 = 0;
      LOBYTE(v48) = 1;
      sub_2580CC77C();
      v29 = v38;
      v30 = v41;
      sub_2580DE3A4();

      v31 = v39;
      sub_2580CC7D0(v28);

      if (v31)
      {

        (*v37)(v29, v30);
        return __swift_destroy_boxed_opaque_existential_1(&v50);
      }

      (*v37)(v29, v30);
      __swift_destroy_boxed_opaque_existential_1(&v50);
      v12 = v27;
      v2 = 0;
    }

    sub_2580CCE1C(&v50, &v46);
    if (swift_dynamicCast())
    {
      *&v46 = v22;
      *(&v46 + 1) = v21;
      v47 = 0;
      LOBYTE(v48) = 1;
      v32 = v2;
      sub_2580DE3C4();
      goto LABEL_27;
    }

    sub_2580CCE1C(&v50, &v46);
    if (!swift_dynamicCast())
    {
      break;
    }

    *&v46 = v22;
    *(&v46 + 1) = v21;
    v47 = 0;
    LOBYTE(v48) = 1;
    v32 = v2;
    sub_2580DE3D4();
LABEL_27:
    v2 = v32;
    if (v32)
    {
      goto LABEL_38;
    }

    __swift_destroy_boxed_opaque_existential_1(&v50);
    v12 = v15;
  }

  sub_2580CCE1C(&v50, &v46);
  if (!swift_dynamicCast())
  {
    goto LABEL_36;
  }

  *&v46 = v22;
  *(&v46 + 1) = v21;
  v47 = 0;
  LOBYTE(v48) = 1;
  sub_2580DE3B4();
  if (!v2)
  {

    v26 = &v50;
    goto LABEL_18;
  }

LABEL_38:

LABEL_39:

  v34 = &v50;
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_2580CCE1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2580CCE80(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_2580CCE98()
{
  result = qword_27F91D9A0;
  if (!qword_27F91D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91D9A0);
  }

  return result;
}

uint64_t sub_2580CCEEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(result + 16);
  if (v5)
  {
    for (i = result + 32; ; i += 40)
    {
      sub_2580CCE1C(i, v13);
      sub_2580CCE1C(v13, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D988, &qword_2580DF4C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D990, &qword_2580DF4C8);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_2580CCE1C(v13, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D998, &qword_2580DF4D0);
      if (swift_dynamicCast())
      {
        UnkeyedEncodingContainer.encode(userInfo:)(userInfo);
LABEL_4:
        v4 = v7;
        __swift_destroy_boxed_opaque_existential_1(v13);

        if (v7)
        {
          return result;
        }

        goto LABEL_5;
      }

      sub_2580CCE1C(v13, v12);
      if (swift_dynamicCast())
      {
        v8 = v4;
        sub_2580DE4C4();
      }

      else
      {
        sub_2580CCE1C(v13, v12);
        if (!swift_dynamicCast())
        {
          sub_2580CCE1C(v13, v12);
          if (!swift_dynamicCast())
          {
            sub_2580CCE98();
            swift_allocError();
            v10 = v9;
            sub_2580CCE1C(v13, v9);
            *(v10 + 40) = 1;
            swift_willThrow();
            return __swift_destroy_boxed_opaque_existential_1(v13);
          }

          v7 = v4;
          sub_2580DE4B4();
          goto LABEL_4;
        }

        v8 = v4;
        sub_2580DE4D4();
      }

      v4 = v8;
      result = __swift_destroy_boxed_opaque_existential_1(v13);
      if (v8)
      {
        return result;
      }

LABEL_5:
      if (!--v5)
      {
        return result;
      }
    }

    UnkeyedEncodingContainer.encode(userInfo:)(userInfo);
    goto LABEL_4;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEncodingContainer.encode(userInfo:)(Swift::OpaquePointer userInfo)
{
  sub_2580DE4A4();
  v2 = v5;
  v3 = v6;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  sub_2580CCEEC(userInfo._rawValue, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D978, &qword_2580DF4B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v6 - v4;
  sub_2580CC77C();
  sub_2580DE494();
  sub_2580CC7D0(userInfo._rawValue);
  (*(v3 + 8))(v5, v2);
}

void *KeyedDecodingContainer.decodeUserInfo(forKey:)()
{
  sub_2580DE304();
  if (!v1)
  {
    v2 = v6;
    v3 = v7;
    __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
    v0 = sub_2580D38F0(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v0;
}

void *KeyedDecodingContainer.decodeUserInfo(forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D9A8, &qword_2580DF4D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_2580CC77C();
  sub_2580DE314();
  if (!v3)
  {
    v2 = sub_2580CD4B0();
    (*(v5 + 8))(v7, v4);
  }

  return v2;
}

void *sub_2580CD4B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D9A8, &qword_2580DF4D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v75 - v4;
  v6 = sub_2580CEBF0(MEMORY[0x277D84F90]);
  v84 = v2;
  v7 = sub_2580DE374();
  v79 = *(v7 + 16);
  if (!v79)
  {
LABEL_31:

    return v6;
  }

  v77 = v5;
  v8 = 0;
  v76 = (v3 + 8);
  v9 = (v7 + 56);
  v80 = v1;
  v78 = v7;
  while (v8 < *(v7 + 16))
  {
    v10 = *(v9 - 3);
    v11 = *(v9 - 2);
    v12 = *(v9 - 1);
    v13 = *v9;
    v14 = v6[2];

    v85 = v10;
    if (v14)
    {

      sub_2580CE3D4(v10, v11);
      v10 = v85;
      v16 = v15;

      if (v16)
      {

        sub_2580CCE98();
        v72 = swift_allocError();
        *v73 = v10;
        *(v73 + 8) = v11;
        *(v73 + 40) = 0;
        v83 = v72;
        swift_willThrow();
        return v6;
      }
    }

    v92[0] = v10;
    v92[1] = v11;
    v92[2] = v12;
    LOBYTE(v93) = v13;
    v17 = v83;
    sub_2580DE304();
    if (!v17)
    {
      v18 = v96;
      v19 = v97;
      __swift_mutable_project_boxed_opaque_existential_1(&v94, v96);
      v21 = sub_2580D38F0(v18, v19);
      v83 = 0;
      __swift_destroy_boxed_opaque_existential_1(&v94);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D990, &qword_2580DF4C8);
      v96 = v22;
      v97 = &protocol witness table for <A> [A];
      *&v94 = v21;
      sub_2580CCE80(&v94, v92);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v6;
      v24 = __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
      v82 = &v75;
      MEMORY[0x28223BE20](v24);
      v26 = (&v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v27 + 16))(v26);
      v28 = *v26;
      v90 = v22;
      v91 = &protocol witness table for <A> [A];
      *&v89 = v28;
      v29 = sub_2580CE3D4(v85, v11);
      v31 = v6[2];
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_35;
      }

      v35 = v30;
      if (v6[3] < v34)
      {
        sub_2580CE44C(v34, isUniquelyReferenced_nonNull_native);
        v29 = sub_2580CE3D4(v85, v11);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_39;
        }

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_20:
        v6 = v98;
        if (v35)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v63 = v29;
        sub_2580CE7C8();
        v29 = v63;
        v6 = v98;
        if (v35)
        {
LABEL_21:
          v61 = (v6[7] + 40 * v29);
          __swift_destroy_boxed_opaque_existential_1(v61);
          sub_2580CCE80(&v89, v61);

          goto LABEL_28;
        }
      }

      v64 = v29;
      v65 = __swift_mutable_project_boxed_opaque_existential_1(&v89, v90);
      MEMORY[0x28223BE20](v65);
      v67 = (&v75 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v68 + 16))(v67);
      v69 = *v67;
      v87 = v22;
      v88 = &protocol witness table for <A> [A];
      *&v86 = v69;
      v6[(v64 >> 6) + 8] |= 1 << v64;
      v70 = (v6[6] + 16 * v64);
      *v70 = v85;
      v70[1] = v11;
      sub_2580CCE80(&v86, v6[7] + 40 * v64);
      v71 = v6[2];
      v33 = __OFADD__(v71, 1);
      v60 = v71 + 1;
      if (v33)
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    }

    v82 = v8;
    MEMORY[0x259C790D0](v17);
    *&v94 = v85;
    *(&v94 + 1) = v11;
    v95 = v12;
    LOBYTE(v96) = v13;
    sub_2580CC77C();
    v20 = v77;
    sub_2580DE314();
    v37 = sub_2580CD4B0();
    v83 = 0;
    (*v76)(v20, v84);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D998, &qword_2580DF4D0);
    v96 = v38;
    v97 = &protocol witness table for <> [A : B];
    *&v94 = v37;
    sub_2580CCE80(&v94, v92);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v6;
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
    MEMORY[0x28223BE20](v40);
    v42 = (&v75 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v42);
    v44 = *v42;
    v90 = v38;
    v91 = &protocol witness table for <> [A : B];
    *&v89 = v44;
    v46 = sub_2580CE3D4(v85, v11);
    v47 = v6[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_36;
    }

    v50 = v45;
    v81 = v38;
    if (v6[3] >= v49)
    {
      v8 = v82;
      if (v39)
      {
        v6 = v98;
        if (v45)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_2580CE7C8();
        v6 = v98;
        if (v50)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_2580CE44C(v49, v39);
      v51 = sub_2580CE3D4(v85, v11);
      v8 = v82;
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_39;
      }

      v46 = v51;
      v6 = v98;
      if (v50)
      {
LABEL_24:
        v62 = (v6[7] + 40 * v46);
        __swift_destroy_boxed_opaque_existential_1(v62);
        sub_2580CCE80(&v89, v62);

        goto LABEL_28;
      }
    }

    v53 = __swift_mutable_project_boxed_opaque_existential_1(&v89, v90);
    MEMORY[0x28223BE20](v53);
    v55 = (&v75 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v56 + 16))(v55);
    v57 = *v55;
    v87 = v81;
    v88 = &protocol witness table for <> [A : B];
    *&v86 = v57;
    v6[(v46 >> 6) + 8] |= 1 << v46;
    v58 = (v6[6] + 16 * v46);
    *v58 = v85;
    v58[1] = v11;
    sub_2580CCE80(&v86, v6[7] + 40 * v46);
    v59 = v6[2];
    v33 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (v33)
    {
      goto LABEL_38;
    }

LABEL_27:
    v6[2] = v60;
    __swift_destroy_boxed_opaque_existential_1(&v89);
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(v92);
    v7 = v78;
    v8 = (v8 + 1);
    v9 += 32;
    if (v79 == v8)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
LABEL_35:
  __break(1u);
  __break(1u);
LABEL_36:
  __break(1u);
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_2580DE534();
  __break(1u);
  return result;
}

unint64_t sub_2580CE3D4(uint64_t a1, uint64_t a2)
{
  sub_2580DE584();
  sub_2580DDF84();
  v4 = sub_2580DE5A4();

  return sub_2580CE710(a1, a2, v4);
}

uint64_t sub_2580CE44C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D9B0, &qword_2580DF4E0);
  v33 = v4;
  result = sub_2580DE2D4();
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_2580CCE80(v24, v34);
      }

      else
      {
        sub_2580CCE1C(v24, v34);
      }

      sub_2580DE584();
      sub_2580DDF84();
      result = sub_2580DE5A4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2580CCE80(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_2580CE710(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2580DE524())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_2580CE7C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D9B0, &qword_2580DF4E0);
  v2 = *v0;
  v3 = sub_2580DE2C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_2580CCE1C(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2580CCE80(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2580CE970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D837D0];
  v31 = &protocol witness table for String;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v11 = *a6;
  v13 = sub_2580CE3D4(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_2580CCE80(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_2580CE7C8();
    goto LABEL_7;
  }

  sub_2580CE44C(v16, a5 & 1);
  v22 = sub_2580CE3D4(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_2580DE534();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_2580CEB60(v13, a3, a4, *v26, v26[1], v19);

  return __swift_destroy_boxed_opaque_existential_1(&v29);
}

uint64_t sub_2580CEB60(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = &protocol witness table for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_2580CCE80(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

unint64_t sub_2580CEBF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D9B0, &qword_2580DF4E0);
    v3 = sub_2580DE2E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_2580CED0C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2580CE3D4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2580CCE80(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_2580CED0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F91D9B8, &qword_2580DF4E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2580CED9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2580CEDD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2580CEE24(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_2580CEE60()
{
  sub_2580CF094(v0, v10);
  if (v11)
  {
    if (v11 == 1)
    {
      sub_2580CCE80(v10, &v7);
      sub_2580DE224();
      MEMORY[0x259C787B0](0x756C617620656854, 0xAD00009C80E22065);
      __swift_project_boxed_opaque_existential_1(&v7, v9);
      sub_2580DE504();
      MEMORY[0x259C787B0](0x1000000000000016, 0x80000002580DEBF0);
      __swift_destroy_boxed_opaque_existential_1(&v7);
      return 0;
    }

    v5 = *(&v10[0] + 1);
    if (!*(&v10[0] + 1))
    {
      return 0xD00000000000001FLL;
    }

    v6 = *&v10[0];
    v7 = 0;
    v8 = 0xE000000000000000;
    sub_2580DE224();
    MEMORY[0x259C787B0](0x1000000000000025, 0x80000002580DEBC0);
    MEMORY[0x259C787B0](v6, v5);

    v4 = 0x75207369209D80E2;
    v3 = 0xAF2E6E776F6E6B6ELL;
  }

  else
  {
    v2 = v10[0];
    sub_2580DE224();

    v7 = 0x2079656B20656854;
    v8 = 0xAB000000009C80E2;
    MEMORY[0x259C787B0](v2, *(&v2 + 1));

    v3 = 0x80000002580DEC10;
    v4 = 0x1000000000000012;
  }

  MEMORY[0x259C787B0](v4, v3);
  return v7;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t AsyncMultiplexSequence.AsyncIterator.deinit()
{

  sub_2580D20C0();

  return v0;
}

uint64_t AsyncMultiplexSequence.AsyncIterator.__deallocating_deinit()
{
  AsyncMultiplexSequence.AsyncIterator.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2580CF188(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2580CF1A8, 0);
}

uint64_t sub_2580CF1A8()
{
  sub_2580DE134();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2580CF290;
  v2 = *(v0 + 16);

  return sub_2580D0D90(v2);
}

uint64_t sub_2580CF290()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2580CF384(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2580C6438;

  return sub_2580CF188(a1);
}

uint64_t sub_2580CF420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  v10[2] = a4;
  v13 = *(a5 + 80);
  v12 = *(a5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  v10[4] = *(AssociatedTypeWitness - 8);
  v15 = swift_task_alloc();
  v10[5] = v15;
  v16 = swift_task_alloc();
  v10[6] = v16;
  v18 = type metadata accessor for AsyncMultiplexSequence.AsyncIterator(0, v13, v12, v17);
  *v16 = v10;
  v16[1] = sub_2580C667C;

  return MEMORY[0x282200320](a1, a2, a3, v18, a6, v15);
}

uint64_t sub_2580CF590@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_2580DE1B4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2580CF66C(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_2580DE1B4();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_2580CF750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[2] = a4;
  v5 = *a4;
  v4[3] = *(*a4 + 88);
  v6 = *(v5 + 80);
  v4[4] = v6;
  v4[5] = swift_getAssociatedTypeWitness();
  sub_2580DE1B4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[6] = AssociatedTypeWitness;
  swift_getAssociatedTypeWitness();
  v4[7] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = sub_2580DE5B4();
  v4[8] = v8;
  v4[9] = *(v8 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v9 = swift_checkMetadataState();
  v4[14] = v9;
  v4[15] = *(v9 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = *(AssociatedTypeWitness - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2580CFA48, 0);
}

uint64_t sub_2580CFA48()
{
  (*(v0[12] + 16))(v0[13], v0[2] + *(*v0[2] + 104), v0[4]);
  sub_2580DE144();
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_2580CFB54;
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[7];

  return MEMORY[0x282200310](v4, 0, 0, v2, v3, v5);
}

uint64_t sub_2580CFB54()
{

  if (v0)
  {
    v1 = sub_2580D0028;
  }

  else
  {
    v1 = sub_2580CFC64;
  }

  return MEMORY[0x2822009F8](v1, 0);
}

uint64_t sub_2580CFC64()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[10];
    v5 = v0[2];
    (*(v0[15] + 8))(v0[16], v0[14]);
    (*(v3 + 56))(v4, 1, 1, v2);
    swift_storeEnumTagMultiPayload();
    v6 = sub_2580CFE0C;
    v7 = v5;
  }

  else
  {
    v8 = v0[10];
    v9 = v0[2];
    (*(v3 + 32))(v8, v1, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
    swift_storeEnumTagMultiPayload();
    v6 = sub_2580CFF44;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v6, v7);
}

uint64_t sub_2580CFE0C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_2580D05A0(v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2580CFEA0, 0);
}

uint64_t sub_2580CFEA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2580CFF44()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_2580D05A0(v1);
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_2580CFB54;
  v5 = v0[18];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[7];

  return MEMORY[0x282200310](v7, 0, 0, v5, v6, v8);
}

uint64_t sub_2580D0028()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[2];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v3 + 32))(v2, v1, v5);
  (*(v3 + 16))(v4, v2, v5);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x2822009F8](sub_2580D0118, v6);
}

uint64_t sub_2580D0118()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_2580D05A0(v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2580D01AC, 0);
}

uint64_t sub_2580D01AC()
{
  (*(v0[17] + 8))(v0[19], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2580D026C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D7B8, &qword_2580DF790);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2580CA918(a3, v25 - v10);
  v12 = sub_2580DE104();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2580D3658(v11);
  }

  else
  {
    sub_2580DE0F4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2580DE094();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2580DDF74() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2580D3658(a3);

      return v23;
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

  sub_2580D3658(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2580D052C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AsyncMultiplexSequence.AsyncIterator(0, *(*v4 + 80), *(*v4 + 88), a4);

  v9 = sub_2580D2B9C(v5, v6, v7, v8);

  return v9;
}

void sub_2580D05A0(uint64_t a1)
{
  v3 = v1 + *(*v1 + 112);
  os_unfair_lock_lock(v3);
  sub_2580D0618((v3 + 8), v1, a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_2580D0618(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_2580DE1B4();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v42 = &v39 - v8;
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v7);
  v41 = &v39 - v9;
  swift_getAssociatedTypeWitness();
  sub_2580DE1B4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v44 = AssociatedTypeWitness;
  v10 = sub_2580DE5B4();
  v11 = sub_2580DE0B4();
  v12 = *(v11 - 8);
  v40 = *(v12 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v50 = v10;
  v47 = *(v10 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v46 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = &v39 - v18;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();

  v19 = sub_2580DE044();

  v22 = *a1;
  if ((v19 & 0x8000000000000000) == 0 && v19 >= v22)
  {
    goto LABEL_8;
  }

  v23 = v50;
  type metadata accessor for ReferenceCounted(0, v50, v20, v21);
  (*(v47 + 16))(v49, v52, v23);
  swift_beginAccess();

  v24 = sub_2580DE044();

  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  if (v22 < v24)
  {
    goto LABEL_23;
  }

  v51[0] = sub_2580DA7F8(v49, v22 - v24);
  swift_beginAccess();
  sub_2580DDE44();
  sub_2580DDDF4();
  swift_endAccess();

LABEL_8:
  v26 = *(*a2 + 120);
  swift_beginAccess();
  v45 = a2;
  v27 = *(a2 + v26);

  if (sub_2580DE044())
  {
    v28 = 0;
    v48 = (v12 + 16);
    v29 = (v47 + 16);
    do
    {
      v30 = sub_2580DE034();
      sub_2580DE014();
      if (v30)
      {
        (*(v12 + 16))(v15, v27 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v28, v11);
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_2580DE234();
        if (v40 != 8)
        {
          goto LABEL_24;
        }

        v51[0] = result;
        (*v48)(v15, v51, v11);
        swift_unknownObjectRelease();
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      (*v29)(v49, v52, v50);
      sub_2580DE0A4();
      (*(v12 + 8))(v15, v11);
      ++v28;
    }

    while (v31 != sub_2580DE044());
  }

  swift_beginAccess();
  sub_2580DE084();
  sub_2580DE074();
  swift_endAccess();
  v33 = v46;
  v32 = v47;
  v34 = v50;
  (*(v47 + 16))(v46, v52, v50);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v32 + 8))(v33, v34);
  }

  v36 = v43;
  v35 = v44;
  v37 = v41;
  (*(v43 + 32))(v41, v33, v44);
  v38 = v42;
  (*(v36 + 16))(v42, v37, v35);
  (*(v36 + 56))(v38, 0, 1, v35);
  sub_2580CF66C(v38);
  return (*(v36 + 8))(v37, v35);
}

uint64_t sub_2580D0D90(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *v1;
  v2[12] = *(*v1 + 88);
  v2[13] = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[14] = AssociatedTypeWitness;
  v2[15] = *(AssociatedTypeWitness - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  sub_2580DE1B4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2[18] = swift_getAssociatedConformanceWitness();
  v5 = sub_2580DE5B4();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2580D0FC8, v1);
}

uint64_t sub_2580D0FC8()
{
  v1 = v0[19];
  swift_beginAccess();
  type metadata accessor for ReferenceCounted(255, v1, v2, v3);
  sub_2580DDE44();
  sub_2580DDE34();
  swift_endAccess();
  v5 = v0[8];
  if (v5)
  {
    v6 = *(v0[20] + 16);
    v6(v0[22], v5 + *(*v5 + 88), v0[19]);
    if (sub_2580DA8B0())
    {
      v0[9] = v5;
      swift_beginAccess();
      sub_2580DDE04();
      swift_endAccess();
    }

    v7 = v0[19];
    v8 = v0[17];
    v9 = v0[10];
    v6(v0[21], v0[22], v7);
    sub_2580D1F8C(v7, v8, v9);
    (*(v0[20] + 8))(v0[22], v0[19]);

    v16 = v0[1];

    return v16();
  }

  else
  {
    v10 = v0[11];
    type metadata accessor for AsyncMultiplexSequence(255, v0[13], v0[12], v4);
    WitnessTable = swift_getWitnessTable();
    v12 = swift_task_alloc();
    v0[23] = v12;
    *v12 = v0;
    v12[1] = sub_2580D1354;
    v13 = v0[22];
    v14 = v0[19];
    v15 = v0[11];

    return MEMORY[0x2822007B8](v13, v10, WitnessTable, 0x29287478656ELL, 0xE600000000000000, sub_2580D3898, v15, v14);
  }
}

uint64_t sub_2580D1354()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_2580D1464, v1);
}

uint64_t sub_2580D1464()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[10];
  (*(v0[20] + 16))(v0[21], v0[22], v1);
  sub_2580D1F8C(v1, v2, v3);
  (*(v0[20] + 8))(v0[22], v0[19]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2580D1634(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v2 = *(*a2 + 88);
  v3 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_2580DE1B4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_2580DE5B4();
  v29 = sub_2580DE0B4();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v23 - v6;
  v8 = sub_2580DE1B4();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = sub_2580DE1B4();
  v24 = *(v11 - 8);
  v25 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_2580DE124())
  {
    sub_2580CF590(v10);
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    *(v17 + 24) = v2;
    v18 = MEMORY[0x28223BE20](v17);
    *(&v23 - 4) = v3;
    *(&v23 - 3) = v2;
    *(&v23 - 2) = sub_2580D38E0;
    *(&v23 - 1) = v18;
    sub_2580D1CE4(sub_2580D38A0, (&v23 - 6), MEMORY[0x277D84A98], v4, v19, v14);
    (*(v28 + 8))(v10, v8);

    v20 = v27;
    v21 = *(v27 + 48);
    if (v21(v14, 1, v4) == 1)
    {
      (*(*(AssociatedTypeWitness - 8) + 56))(v16, 1, 1);
      swift_storeEnumTagMultiPayload();
      if (v21(v14, 1, v4) != 1)
      {
        (*(v24 + 8))(v14, v25);
      }
    }

    else
    {
      (*(v20 + 32))(v16, v14, v4);
    }

    return sub_2580DE0A4();
  }

  else
  {
    (*(v5 + 16))(v7, v30, v29);
    swift_beginAccess();
    sub_2580DE084();
    sub_2580DE054();
    return swift_endAccess();
  }
}

uint64_t sub_2580D1B90@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  sub_2580DE1B4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_2580DE5B4();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2580D1CE4@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_2580D1F8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

void sub_2580D205C()
{
  v1 = v0 + *(*v0 + 112);
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = v4;

    os_unfair_lock_unlock(v1);
  }
}

void sub_2580D20C0()
{
  v1 = v0 + *(*v0 + 112);
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);
  v3 = v2 != 0;
  v4 = v2 - 1;
  if (v3)
  {
    *(v1 + 8) = v4;

    os_unfair_lock_unlock(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t *AsyncMultiplexSequence.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(*v0 + 80));

  v1 = *(*v0 + 136);
  swift_getAssociatedTypeWitness();
  v2 = sub_2580DE1B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncMultiplexSequence.__deallocating_deinit()
{
  AsyncMultiplexSequence.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2580D22D4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v6 = sub_2580D052C(a2, a3, a4, a5);

  *a1 = v6;
  return result;
}

uint64_t sub_2580D2350(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2580D2448;

  return v6(a1);
}

uint64_t sub_2580D2448()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_2580D2540(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    sub_2580DDDE4();
    v12 = sub_2580DE1C4();
    v14 = v13;
    MEMORY[0x28223BE20](v12);
    result = sub_2580DDFE4();
    if (v16 == 1)
    {
      result = sub_2580D287C(a4, v12, v14, a5, a6, a7);
    }

    v15[1] = a3;
  }

  return result;
}

uint64_t sub_2580D2670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  result = MEMORY[0x28223BE20](a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v21 = *(v19 + 64);
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  v24 = *(*(v14 - 8) + 80);
  v25 = __CFADD__(v23, v24 + 1);
  v26 = v23 + v24 + 1;
  if (v25)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = v15(v13 + v20, v13 + ((v26 - 1) & ~v24), v17);
  if (v9)
  {
    return (*(v11 + 32))(a9, v17, a6);
  }

  return result;
}

uint64_t sub_2580D27E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[1] = a2;
  v11[0] = a1;
  v8 = sub_2580DDF54();
  WitnessTable = swift_getWitnessTable();
  return sub_2580D287C(v11, a3, a4, a5, v8, WitnessTable);
}

uint64_t sub_2580D287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_2580DE1B4();
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v29 = &v24 - v14;
  v25 = *(a5 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v24 - v18;
  v27 = a2;
  v28 = a4;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a2;
  v36 = a3;
  sub_2580DDFE4();
  if (v38 != 1)
  {
    return v37;
  }

  (*(v25 + 16))(v16, a1, a5);
  v20 = sub_2580DDFC4();
  swift_getAssociatedConformanceWitness();
  v21 = v29;
  sub_2580DE1D4();
  (*(v26 + 8))(v19, AssociatedTypeWitness);
  v22 = (*(*(v28 - 8) + 48))(v21, 1);
  result = (*(v30 + 8))(v21, v31);
  if (v22 == 1)
  {
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_2580D2B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AsyncMultiplexSequence.AsyncIterator(0, *(v4 + 80), *(v4 + 88), a4);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;

  sub_2580D205C();
  return v6;
}

uint64_t sub_2580D2C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2580DE154();
  if (v8 <= 0)
  {

    return MEMORY[0x28214E790](a2);
  }

  else
  {
    v9 = v8;
    v10 = sub_2580DDE14();
    v11 = MEMORY[0x28223BE20](v10);
    v15[8] = a2;
    v15[9] = a3;
    v15[10] = a4;
    v15[11] = v9;
    v15[12] = a1;
    MEMORY[0x28223BE20](v11);
    v15[2] = a2;
    v15[3] = sub_2580D37B0;
    v15[4] = v12;

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F91D7E8, &qword_2580DF390);
    sub_2580D2670(sub_2580D37D4, v15, v10, MEMORY[0x277CFB918], a2, v13, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84950], v16);

    return v10;
  }
}

uint64_t *sub_2580D2D98(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D7B8, &qword_2580DF790);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  swift_defaultActor_initialize();
  v7 = v1 + *(*v1 + 112);
  *v7 = 0;
  *(v7 + 8) = 0;
  v8 = *(*v1 + 120);
  v9 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  sub_2580DE1B4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v11 = sub_2580DE5B4();
  sub_2580DE0B4();
  *(v1 + v8) = sub_2580DE024();
  v12 = *(*v1 + 128);
  v15 = type metadata accessor for ReferenceCounted(0, v11, v13, v14);
  v23 = sub_2580DE024();
  v16 = sub_2580DE084();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_2580D2C10(&v23, v15, v16, WitnessTable);

  *(v1 + v12) = v18;
  (*(*(AssociatedTypeWitness - 8) + 56))(v1 + *(*v1 + 136), 1, 1, AssociatedTypeWitness);
  (*(*(v9 - 8) + 16))(v1 + *(*v1 + 104), a1, v9);
  v19 = sub_2580DE104();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v1;

  sub_2580D026C(0xD000000000000016, 0x80000002580DF6F0, v6, &unk_2580DF7A0, v20);

  return v1;
}

uint64_t *sub_2580D3148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AsyncMultiplexSequence(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_2580D2D98(a1);
}

uint64_t sub_2580D318C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_2580D3248(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_2580DE1B4();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v1;
}

uint64_t sub_2580D33B0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F91DA40, &unk_2580DF758);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t dispatch thunk of AsyncMultiplexSequence.AsyncIterator.next()(uint64_t a1)
{
  v6 = (*(*v1 + 112) + **(*v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2580C6438;

  return v6(a1);
}

uint64_t sub_2580D3564()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2580D35A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2580C6438;

  return sub_2580CF750(a1, v4, v5, v6);
}

uint64_t sub_2580D3658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D7B8, &qword_2580DF790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2580D36C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2580D36F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2580CB038;

  return sub_2580D2350(a1, v4);
}

uint64_t sub_2580D37D4(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 24))(a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_2580D3830@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return result;
  }

  if (*(v3 + 48) >= a2)
  {
    result = sub_2580DE194();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void *sub_2580D38F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2580DE474();
  v7 = MEMORY[0x277D84F90];
  if ((v6 & 1) == 0)
  {
    do
    {
      v9 = UnkeyedDecodingContainer.decodeUserInfo()();
      if (v3)
      {
        MEMORY[0x259C790D0](v3);
        v15 = UnkeyedDecodingContainer.decodeUserInfo()(a1, a2);
        v3 = 0;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_2580D3EE4(0, v7[2] + 1, 1, v7);
        }

        v11 = v7[2];
        v17 = v7[3];
        v12 = v11 + 1;
        if (v11 >= v17 >> 1)
        {
          v7 = sub_2580D3EE4((v17 > 1), v11 + 1, 1, v7);
        }

        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D998, &qword_2580DF4D0);
        v14 = &protocol witness table for <> [A : B];
      }

      else
      {
        v15 = v9;
        v3 = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2580D3EE4(0, v7[2] + 1, 1, v7);
        }

        v11 = v7[2];
        v10 = v7[3];
        v12 = v11 + 1;
        if (v11 >= v10 >> 1)
        {
          v7 = sub_2580D3EE4((v10 > 1), v11 + 1, 1, v7);
        }

        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D990, &qword_2580DF4C8);
        v14 = &protocol witness table for <A> [A];
      }

      v19 = v13;
      v20 = v14;
      *&v18 = v15;
      v7[2] = v12;
      sub_2580CCE80(&v18, &v7[5 * v11 + 4]);
    }

    while ((sub_2580DE474() & 1) == 0);
  }

  return v7;
}

uint64_t UnkeyedDecodingContainer.decodeUserInfo()()
{
  sub_2580DE424();
  if (!v1)
  {
    v2 = v6;
    v3 = v7;
    __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
    v0 = sub_2580D38F0(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v0;
}

void *UnkeyedDecodingContainer.decodeUserInfo()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D9A8, &qword_2580DF4D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_2580CC77C();
  sub_2580DE414();
  if (!v3)
  {
    v2 = sub_2580CD4B0();
    (*(v5 + 8))(v7, v4);
  }

  return v2;
}

void *sub_2580D3EE4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91DAC8, &unk_2580DF7C0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D988, &qword_2580DF4C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2580D4044(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2580D408C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2580D40E0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2580D4110@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

void sub_2580D4130(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_2580D4140(uint64_t a1)
{
  v2 = sub_2580CC77C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2580D417C(uint64_t a1)
{
  v2 = sub_2580CC77C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2580D41BC()
{
  result = qword_27F91DAD0;
  if (!qword_27F91DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DAD0);
  }

  return result;
}

unint64_t sub_2580D4214()
{
  result = qword_27F91DAD8;
  if (!qword_27F91DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DAD8);
  }

  return result;
}

uint64_t sub_2580D4268(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for StreamWriterStage.Streams(255, result, *(a1 + 88), v3);
    sub_2580DE0B4();
    sub_2580DE1B4();
    result = sub_2580DDDC4();
    if (v5 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2580D4378(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2580D51A4(a1, v3, v4, v5);
  return v2;
}

uint64_t sub_2580D43B8()
{
  v1[4] = v0;
  v1[5] = *v0;
  v2 = sub_2580DDD14();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2580D44A0, 0);
}

uint64_t sub_2580D44A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StreamWriterStage.Streams(255, *(v4[5] + 80), *(v4[5] + 88), a4);
  sub_2580DDDA4();
  if (sub_2580DDD84())
  {
    if (qword_27F91D5A0 != -1)
    {
      swift_once();
    }

    v6 = sub_2580DDEF4();
    __swift_project_value_buffer(v6, qword_27F91DAE0);
    v7 = sub_2580DDED4();
    v8 = sub_2580DE184();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2580C3000, v7, v8, "Using stored streams…", v9, 2u);
      MEMORY[0x259C79240](v9, -1, -1);
    }

    v10 = qword_27F91D5A0;

    if (v10 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_27F91DAE0);
    v11 = sub_2580DDED4();
    v12 = sub_2580DE184();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2580C3000, v11, v12, "Processing…", v13, 2u);
      MEMORY[0x259C79240](v13, -1, -1);
    }

    sub_2580DDD64();

    v4[3] = MEMORY[0x277D84F90];
    sub_2580C4874();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D5C8, &unk_2580DF1E0);
    sub_2580C4914();
    sub_2580DE204();
    v14 = sub_2580DDD54();
    (*(v4[7] + 8))(v4[8], v4[6]);

    sub_2580DDD44();

    sub_2580DDD44();

    v21 = v4[1];

    return v21(v14);
  }

  else
  {
    if (qword_27F91D5A0 != -1)
    {
      swift_once();
    }

    v15 = sub_2580DDEF4();
    __swift_project_value_buffer(v15, qword_27F91DAE0);
    v16 = sub_2580DDED4();
    v17 = sub_2580DE184();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2580C3000, v16, v17, "Attaching a continuation to receive the streams to process…", v18, 2u);
      MEMORY[0x259C79240](v18, -1, -1);
    }

    v19 = swift_task_alloc();
    v4[9] = v19;
    *v19 = v4;
    v19[1] = sub_2580D4B90;
    v20 = v4[4];

    return MEMORY[0x2822007B8](v4 + 2, 0, 0, 0x29286E7572, 0xE500000000000000, sub_2580D5E60, v20, v5);
  }
}

uint64_t sub_2580D4B90()
{

  return MEMORY[0x2822009F8](sub_2580D4C8C, 0);
}

uint64_t sub_2580D4C8C()
{
  v1 = qword_27F91D5A0;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = sub_2580DDEF4();
  __swift_project_value_buffer(v2, qword_27F91DAE0);
  v3 = sub_2580DDED4();
  v4 = sub_2580DE184();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2580C3000, v3, v4, "Processing…", v5, 2u);
    MEMORY[0x259C79240](v5, -1, -1);
  }

  sub_2580DDD64();

  v0[3] = MEMORY[0x277D84F90];
  sub_2580C4874();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D5C8, &unk_2580DF1E0);
  sub_2580C4914();
  sub_2580DE204();
  v6 = sub_2580DDD54();
  (*(v0[7] + 8))(v0[8], v0[6]);

  sub_2580DDD44();

  sub_2580DDD44();

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_2580D5124(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2580D5164()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2580D51A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  type metadata accessor for StreamWriterStage.Streams(255, v6, *(*v4 + 88), a4);
  v7 = sub_2580DE0B4();
  v8 = sub_2580DE1B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  sub_2580DDD94();
  v12 = (v4 + *(*v4 + 112));
  (*(*(v7 - 8) + 56))(v11, 1, 1, v7);
  *v12 = 0;
  v13 = *(sub_2580DDDC4() + 28);
  v14 = sub_2580DDDD4();
  bzero(&v12[v13], *(*(v14 - 8) + 64));
  (*(v9 + 32))(&v12[v13], v11, v8);
  (*(*(v6 - 8) + 32))(v4 + *(*v4 + 96), a1, v6);
  return v4;
}

uint64_t sub_2580D53D0(uint64_t a1, void *a2)
{
  v4 = sub_2580DE0B4();
  v5 = sub_2580DE1B4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = v18 - v11;
  (*(v6 + 16))(v9, a1, v5);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    return (*(v6 + 8))(v9, v5);
  }

  (*(v10 + 32))(v12, v9, v4);
  if (qword_27F91D5A0 != -1)
  {
    swift_once();
  }

  v14 = sub_2580DDEF4();
  __swift_project_value_buffer(v14, qword_27F91DAE0);
  v15 = sub_2580DDED4();
  v16 = sub_2580DE184();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2580C3000, v15, v16, "Resuming the continuation…", v17, 2u);
    MEMORY[0x259C79240](v17, -1, -1);
  }

  v18[1] = a2;

  sub_2580DE0A4();
  return (*(v10 + 8))(v12, v4);
}

void sub_2580D56B0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = (a2 + *(*a2 + 112));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  type metadata accessor for StreamWriterStage.Streams(255, v5, v6, v7);
  sub_2580DE0B4();
  sub_2580DE1B4();
  v8 = sub_2580DDDC4();
  sub_2580D57AC(v4 + *(v8 + 28), a1, v5, v6);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_2580D57AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StreamWriterStage.Streams(255, a3, a4, a4);
  v6 = sub_2580DE0B4();
  v7 = sub_2580DE1B4();
  (*(*(v7 - 8) + 8))(a1, v7);
  v8 = *(v6 - 8);
  (*(v8 + 16))(a1, a2, v6);
  return (*(v8 + 56))(a1, 0, 1, v6);
}

char *sub_2580D58BC()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2[10];
  (*(*(v3 - 8) + 8))(&v1[v2[12]], v3);
  type metadata accessor for StreamWriterStage.Streams(255, v3, v2[11], v4);
  sub_2580DDDA4();
  sub_2580DDDB4();
  sub_2580DE0B4();
  sub_2580DE1B4();
  sub_2580DDDC4();
  sub_2580DDDD4();
  sub_2580DE1A4();
  return v1;
}

uint64_t sub_2580D5A00()
{
  sub_2580D58BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2580D5A88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  type metadata accessor for StreamWriterStage.Streams(255, *a1, a1[1], a4);
  return sub_2580DDDA4();
}

uint64_t sub_2580D5AD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  type metadata accessor for StreamWriterStage.Streams(255, *a1, a1[1], a4);
  sub_2580DE0B4();
  sub_2580DE1B4();
  return sub_2580DDDC4();
}

uint64_t sub_2580D5B90()
{
  v0 = sub_2580DDEF4();
  __swift_allocate_value_buffer(v0, qword_27F91DAE0);
  __swift_project_value_buffer(v0, qword_27F91DAE0);
  return sub_2580DDEE4();
}

void sub_2580D5C10(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 16))(v22, ObjectType, a2);
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91D660, &qword_2580DF188);
  v11 = sub_2580DDD84();
  v8(v22, 0);
  if (v11)
  {
    v13 = *(v6 + 80);
    v12 = *(v6 + 88);
    v14 = (*(v12 + 8))(v11, v13, v12);
    if (!v3)
    {
      v17 = v14;
      v18 = v15;
      type metadata accessor for StreamWriterStage.Streams(0, v13, v12, v16);
      v19 = swift_allocObject();
      v19[2] = v17;
      v19[3] = v18;
      sub_2580DDDA4();

      sub_2580DDD74();

      v20 = (v4 + *(*v4 + 112));
      os_unfair_lock_lock(v20);
      sub_2580DE0B4();
      sub_2580DE1B4();
      v21 = sub_2580DDDC4();
      sub_2580D53D0(v20 + *(v21 + 28), v19);
      os_unfair_lock_unlock(v20);
    }
  }

  else
  {
    __break(1u);
    os_unfair_lock_unlock(v10);
    __break(1u);
  }
}

uint64_t dispatch thunk of StreamProcessor.byteStream(isolation:readingFrom:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2580CA0B0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t PassthroughProcessor.init()@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F91D5A8 != -1)
  {
    swift_once();
  }

  v2 = sub_2580DDEF4();
  __swift_project_value_buffer(v2, qword_27F91DBF8);
  v3 = sub_2580DDED4();
  v4 = sub_2580DE184();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2580C3000, v3, v4, "Creating a pipe…", v5, 2u);
    MEMORY[0x259C79240](v5, -1, -1);
  }

  v6 = sub_2580DDF14();
  v7 = v6;
  if (v8)
  {
    sub_2580C49C0();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v10 = v7;
  }

  else
  {
    v11 = HIDWORD(v6);
    v12 = sub_2580DDED4();
    v13 = sub_2580DE184();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2580C3000, v12, v13, "Creating a file stream…", v14, 2u);
      MEMORY[0x259C79240](v14, -1, -1);
    }

    sub_2580DDCF4();
    result = sub_2580DDCC4();
    if (result)
    {
      *a1 = v11;
      *(a1 + 8) = result;
    }

    else
    {
      v15 = sub_2580DDF24();
      if ((v15 & 0x100000000) != 0)
      {
        v16 = v15;
        sub_2580C49C0();
        swift_willThrowTypedImpl();
        v17 = swift_allocError();
        *v18 = v16;
        v19 = sub_2580DE174();
        MEMORY[0x259C790E0](v17);
        v20 = sub_2580DDED4();
        MEMORY[0x259C790D0](v17);
        if (os_log_type_enabled(v20, v19))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138543362;
          MEMORY[0x259C790E0](v17);
          v23 = _swift_stdlib_bridgeErrorToNSError();
          *(v21 + 4) = v23;
          *v22 = v23;
          _os_log_impl(&dword_2580C3000, v20, v19, "The pipe’s entrance couldn’t be closed: %{public}@", v21, 0xCu);
          sub_2580C57CC(v22);
          MEMORY[0x259C79240](v22, -1, -1);
          MEMORY[0x259C79240](v21, -1, -1);
          MEMORY[0x259C790D0](v17);
        }

        else
        {

          MEMORY[0x259C790D0](v17);
        }
      }

      v24 = sub_2580DDF24();
      if ((v24 & 0x100000000) != 0)
      {
        v25 = v24;
        sub_2580C49C0();
        swift_willThrowTypedImpl();
        v26 = swift_allocError();
        *v27 = v25;
        v28 = sub_2580DE174();
        MEMORY[0x259C790E0](v26);
        v29 = sub_2580DDED4();
        MEMORY[0x259C790D0](v26);
        if (os_log_type_enabled(v29, v28))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138543362;
          MEMORY[0x259C790E0](v26);
          v32 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 4) = v32;
          *v31 = v32;
          _os_log_impl(&dword_2580C3000, v29, v28, "The pipe’s exit couldn’t be closed: %{public}@", v30, 0xCu);
          sub_2580C57CC(v31);
          MEMORY[0x259C79240](v31, -1, -1);
          MEMORY[0x259C79240](v30, -1, -1);
          MEMORY[0x259C790D0](v26);
        }

        else
        {

          v24 = MEMORY[0x259C790D0](v26);
        }
      }

      v33 = MEMORY[0x259C78720](v24);
      sub_2580C49C0();
      swift_allocError();
      *v34 = v33;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_2580D644C()
{
  v0 = sub_2580DDEF4();
  __swift_allocate_value_buffer(v0, qword_27F91DBF8);
  __swift_project_value_buffer(v0, qword_27F91DBF8);
  return sub_2580DDEE4();
}

uint64_t sub_2580D64D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);

  return v6(v4);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2580D654C(uint64_t a1, int a2)
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

uint64_t sub_2580D6594(uint64_t result, int a2, int a3)
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

uint64_t static StreamPipelineBuilder.buildBlock<each A>(_:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1;
  v7 = 8 * a2;
  v39 = a5;
  v40 = a4;
  if (a2 == 1)
  {
    v8 = a3;
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v11 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v12 = 0;
      v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v11[-v13] < 0x20)
      {
        goto LABEL_9;
      }

      v12 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v14 = (v13 + 16);
      v15 = v11 + 16;
      v16 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v17 = *v14;
        *(v15 - 1) = *(v14 - 1);
        *v15 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v12 != a2)
      {
LABEL_9:
        v18 = a2 - v12;
        v19 = 8 * v12;
        v20 = &v11[8 * v12];
        v21 = (v13 + v19);
        do
        {
          v22 = *v21++;
          *v20 = v22;
          v20 += 8;
          --v18;
        }

        while (v18);
      }
    }

    v8 = v10;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v23 = MEMORY[0x28223BE20](TupleTypeMetadata);
  v25 = v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[1] = v38;
  v26 = MEMORY[0x28223BE20](v23);
  v27 = (v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v28 = (v8 & 0xFFFFFFFFFFFFFFFELL);
    v29 = (v26 + 32);
    v30 = (v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = a2;
    do
    {
      if (a2 == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = *v29;
      }

      v34 = *v28++;
      v33 = v34;
      v35 = &v25[v32];
      v36 = *v6++;
      (*(*(v33 - 8) + 16))(&v25[v32], v36);
      *v30++ = v35;
      v29 += 4;
      --v31;
    }

    while (v31);
  }

  return sub_2580CB468(v27, a2, v8, v39);
}

uint64_t static StreamPipelineBuilder.buildOptional<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a3;
  v20 = a2;
  v7 = type metadata accessor for StreamPipelineWithoutWriter(255, 1, &v20, &v19);
  v8 = sub_2580DE1B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = sub_2580DE1B4();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  (*(v9 + 16))(v11, a1, v8);
  v15 = *(v7 - 8);
  if ((*(v15 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v16 = *(a2 - 8);
    v17 = 1;
  }

  else
  {
    v16 = *(a2 - 8);
    (*(v16 + 16))(v14, v11, a2);
    (*(v15 + 8))(v11, v7);
    v17 = 0;
  }

  (*(v16 + 56))(v14, v17, 1, a2);
  return sub_2580CB930(v14, a4);
}

unint64_t DownloadPolicy.InstallationEventTypes.description.getter()
{
  v1 = *v0;
  if (*v0)
  {
    MEMORY[0x259C787B0](0xD000000000000012, 0x80000002580DED80);
  }

  if ((v1 & 2) != 0)
  {
    MEMORY[0x259C787B0](0xD000000000000011, 0x80000002580DED60);
  }

  return 0xD00000000000001ALL;
}

uint64_t DownloadPolicy.InstallationEventTypes.init<A>(_:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X7>)
{
  v8 = sub_2580D6D0C(sub_2580D6CF4, 0, a2, &type metadata for DownloadPolicy.InstallationEventTypes, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], a5);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v8 + 32);
    do
    {
      v13 = *v11++;
      v12 = v13;
      if ((v13 & ~v10) == 0)
      {
        v12 = 0;
      }

      v10 |= v12;
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  result = (*(*(a2 - 1) + 8))(a1, a2);
  *a4 = v10;
  return result;
}

_BYTE *sub_2580D6CF4@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 1;
  if (*result)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2580D6D0C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v19 = sub_2580DE1B4();
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
  v32 = sub_2580DDFD4();
  v63 = sub_2580DE294();
  v58 = sub_2580DE2A4();
  sub_2580DE274();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_2580DDFB4();
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
      sub_2580DE1D4();
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
      sub_2580DE284();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_2580DE1D4();
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
      sub_2580DE284();
      sub_2580DE1D4();
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

uint64_t DownloadPolicy.InstallationEventTypes.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2580DE5C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = 0;
    while ((sub_2580DE474() & 1) == 0)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
      sub_2580D787C();
      sub_2580DE464();
      if (v10)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      v5 |= v6;
      __swift_project_boxed_opaque_existential_1(v8, v9);
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DownloadPolicy.InstallationEventTypes.encode(to:)(void *a1)
{
  v3 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2580DE5E4();
  if (byte_2869434F0)
  {
    v4 = -3;
  }

  else
  {
    v4 = -2;
  }

  if ((v4 | v3) != 0xFFFFFFFFFFFFFFFFLL || (__swift_mutable_project_boxed_opaque_existential_1(v7, v8), sub_2580D78D0(), sub_2580DE4E4(), !v2))
  {
    if (byte_2869434F1)
    {
      v5 = -3;
    }

    else
    {
      v5 = -2;
    }

    if ((v5 | v3) == 0xFFFFFFFFFFFFFFFFLL)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
      sub_2580D78D0();
      sub_2580DE4E4();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

BOOL sub_2580D7704(void *a1, uint64_t *a2)
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

void *sub_2580D7734@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2580D7760@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2580D784C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_2580D787C()
{
  result = qword_27F91DC28;
  if (!qword_27F91DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DC28);
  }

  return result;
}

unint64_t sub_2580D78D0()
{
  result = qword_27F91DC30;
  if (!qword_27F91DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DC30);
  }

  return result;
}

uint64_t sub_2580D7928@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t DownloadPolicy.Pattern.InstallationEventType.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000012;
  }
}

ManagedBackgroundAssets::DownloadPolicy::Pattern::InstallationEventType_optional __swiftcall DownloadPolicy.Pattern.InstallationEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2580DE2F4();

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

  *v2 = v5;
  return result;
}

unint64_t DownloadPolicy.Pattern.InstallationEventType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2580D7A54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = &loc_2580DEAF0;
  }

  else
  {
    v4 = "firstInstallation";
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*a2)
  {
    v6 = "firstInstallation";
  }

  else
  {
    v6 = &loc_2580DEAF0;
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2580DE524();
  }

  return v8 & 1;
}

uint64_t sub_2580D7AFC()
{
  sub_2580DE584();
  sub_2580DDF84();

  return sub_2580DE5A4();
}

uint64_t sub_2580D7B78(uint64_t a1)
{
  sub_2580DDF84();
}

uint64_t sub_2580D7BE0(uint64_t a1)
{
  sub_2580DE584();
  sub_2580DDF84();

  return sub_2580DE5A4();
}

uint64_t sub_2580D7C58@<X0>(char *a2@<X8>)
{
  v3 = sub_2580DE2F4();

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

void sub_2580D7CB8(unint64_t *a1@<X8>)
{
  v2 = "firstInstallation";
  v3 = 0xD000000000000010;
  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = &loc_2580DEAF0;
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t sub_2580D7DB4()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_2580D7E00(uint64_t a1)
{
  v2 = sub_2580D8A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2580D7E3C(uint64_t a1)
{
  v2 = sub_2580D8A68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2580D7E7C()
{
  sub_2580DE584();
  MEMORY[0x259C78DB0](0);
  return sub_2580DE5A4();
}

uint64_t sub_2580D7EEC(uint64_t a1)
{
  sub_2580DE584();
  MEMORY[0x259C78DB0](0);
  return sub_2580DE5A4();
}

uint64_t sub_2580D7F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000002580DEE70 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2580DE524();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2580D7FEC(uint64_t a1)
{
  v2 = sub_2580D89C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2580D8028(uint64_t a1)
{
  v2 = sub_2580D89C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2580D8078()
{
  v1 = *v0;
  sub_2580DE584();
  MEMORY[0x259C78DB0](v1);
  return sub_2580DE5A4();
}

uint64_t sub_2580D80EC(uint64_t a1)
{
  v2 = *v1;
  sub_2580DE584();
  MEMORY[0x259C78DB0](v2);
  return sub_2580DE5A4();
}

uint64_t sub_2580D8130()
{
  v1 = 0x6863746566657270;
  if (*v0 != 1)
  {
    v1 = 0x646E616D65446E6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6169746E65737365;
  }
}

uint64_t sub_2580D8190@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2580DA564(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2580D81C4(uint64_t a1)
{
  v2 = sub_2580D896C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2580D8200(uint64_t a1)
{
  v2 = sub_2580D896C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t DownloadPolicy.description.getter()
{
  if (!*(v0 + 8))
  {
    sub_2580DE224();

    v4 = 0xD00000000000001ELL;
    v2 = DownloadPolicy.InstallationEventTypes.description.getter();
    MEMORY[0x259C787B0](v2);

    MEMORY[0x259C787B0](62, 0xE100000000000000);
    return v4;
  }

  if (*(v0 + 8) == 1)
  {
    sub_2580DE224();

    v4 = 0xD00000000000001DLL;
    v1 = DownloadPolicy.InstallationEventTypes.description.getter();
    MEMORY[0x259C787B0](v1);

    return v4;
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_2580D835C()
{
  v0 = sub_2580DDEF4();
  __swift_allocate_value_buffer(v0, qword_27F91DC10);
  __swift_project_value_buffer(v0, qword_27F91DC10);
  return sub_2580DDEE4();
}

uint64_t DownloadPolicy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91DC38, &qword_2580DFAD0);
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91DC40, &qword_2580DFAD8);
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91DC48, &qword_2580DFAE0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2580D896C();
  v13 = v30;
  sub_2580DE5D4();
  if (!v13)
  {
    v14 = sub_2580DE374();
    v15 = *(v14 + 16);
    if (!v15 || ((v16 = *(v14 + 32), v15 == 1) ? (v17 = v16 == 3) : (v17 = 1), v17))
    {
      v18 = sub_2580DE254();
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91DC58, &qword_2580DFAE8);
      *v20 = &type metadata for DownloadPolicy;
      sub_2580DE324();
      sub_2580DE244();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84160], v18);
      swift_willThrow();
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v14 + 32))
      {
        if (v16 == 1)
        {
          v27 = v14;
          LODWORD(v30) = 1;
          LOBYTE(v32) = 1;
          sub_2580D89C0();
          v22 = v4;
          sub_2580DE314();
          v23 = v29;
          sub_2580D8A14();
          v24 = v26;
          sub_2580DE364();
          (*(v28 + 8))(v22, v24);
          (*(v9 + 8))(v11, v8);
          swift_unknownObjectRelease();
          v25 = v32;
          LOBYTE(v16) = v30;
        }

        else
        {
          (*(v9 + 8))(v11, v8);
          swift_unknownObjectRelease();
          v25 = 0;
          v23 = v29;
        }
      }

      else
      {
        LODWORD(v30) = 0;
        LOBYTE(v32) = 0;
        sub_2580D8A68();
        sub_2580DE314();
        sub_2580D8A14();
        sub_2580DE364();
        (*(v27 + 8))(v7, v5);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v25 = v32;
        v23 = v29;
        LOBYTE(v16) = v30;
      }

      *v23 = v25;
      *(v23 + 8) = v16;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

unint64_t sub_2580D896C()
{
  result = qword_27F91DC50;
  if (!qword_27F91DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DC50);
  }

  return result;
}

unint64_t sub_2580D89C0()
{
  result = qword_27F91DC60;
  if (!qword_27F91DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DC60);
  }

  return result;
}

unint64_t sub_2580D8A14()
{
  result = qword_27F91DC68;
  if (!qword_27F91DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DC68);
  }

  return result;
}

unint64_t sub_2580D8A68()
{
  result = qword_27F91DC70;
  if (!qword_27F91DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DC70);
  }

  return result;
}

uint64_t DownloadPolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91DC78, &qword_2580DFAF0);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v17 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91DC80, &qword_2580DFAF8);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91DC88, &unk_2580DFB00);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v23 = *v1;
  v12 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2580D896C();
  sub_2580DE5F4();
  if (v12)
  {
    if (v12 == 1)
    {
      LOBYTE(v24) = 1;
      sub_2580D89C0();
      v13 = v20;
      sub_2580DE3A4();
      v24 = v23;
      sub_2580D8E08();
      v14 = v22;
      sub_2580DE3E4();
      (*(v21 + 8))(v13, v14);
    }

    else
    {
      LOBYTE(v24) = 2;
      sub_2580DE3F4();
    }
  }

  else
  {
    LOBYTE(v24) = 0;
    sub_2580D8A68();
    sub_2580DE3A4();
    v24 = v23;
    sub_2580D8E08();
    v15 = v19;
    sub_2580DE3E4();
    (*(v18 + 8))(v7, v15);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_2580D8E08()
{
  result = qword_27F91DC90;
  if (!qword_27F91DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DC90);
  }

  return result;
}

BOOL static DownloadPolicy.~= infix(_:_:)(unsigned __int8 *a1, uint64_t *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_2580DDF64();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_2580DE1E4();
    swift_unknownObjectRelease();
    sub_2580D99C8(v45, v46);
    if (qword_27F91D5B0 != -1)
    {
      swift_once();
    }

    v8 = sub_2580DDEF4();
    __swift_project_value_buffer(v8, qword_27F91DC10);
    v9 = sub_2580DE164();
    v10 = sub_2580DDED4();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2580C3000, v10, v9, "A download-policy override is set.", v11, 2u);
      MEMORY[0x259C79240](v11, -1, -1);
    }

    v12 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v13 = sub_2580DE514();
    *&v45[0] = 0;
    v14 = [v12 dataWithPropertyList:v13 format:200 options:0 error:v45];
    swift_unknownObjectRelease();
    v15 = *&v45[0];
    if (v14)
    {
      v43 = v4;
      v16 = sub_2580DDC74();
      v18 = v17;

      sub_2580DDC04();
      swift_allocObject();
      sub_2580DDBF4();
      sub_2580D99D8();
      sub_2580DDBE4();

      v26 = *&v45[0];
      v27 = BYTE8(v45[0]);
      v28 = sub_2580DE164();
      v29 = sub_2580DDED4();
      v42 = v28;
      if (os_log_type_enabled(v29, v28))
      {
        v31 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v44 = v41;
        *&v45[0] = v26;
        *v31 = 136446210;
        BYTE8(v45[0]) = v27;
        v32 = DownloadPolicy.description.getter();
        v34 = v3;
        v35 = sub_2580D93C4(v32, v33, &v44);

        *(v31 + 4) = v35;
        v3 = v34;
        _os_log_impl(&dword_2580C3000, v29, v42, "The download policy is overridden to be “%{public}s”.", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x259C79240](v41, -1, -1);
        MEMORY[0x259C79240](v31, -1, -1);
      }

      sub_2580CA7E4(v16, v18);

      v4 = v43;
    }

    else
    {
      v19 = v15;
      v20 = sub_2580DDC14();

      swift_willThrow();
      v21 = sub_2580DE174();
      MEMORY[0x259C790E0](v20);
      v22 = sub_2580DDED4();
      MEMORY[0x259C790D0](v20);
      if (os_log_type_enabled(v22, v21))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138543362;
        MEMORY[0x259C790E0](v20);
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&dword_2580C3000, v22, v21, "The download-policy override couldn’t be decoded: %{public}@", v23, 0xCu);
        sub_2580C57CC(v24);
        MEMORY[0x259C79240](v24, -1, -1);
        MEMORY[0x259C79240](v23, -1, -1);
        MEMORY[0x259C790D0](v20);
      }

      else
      {

        MEMORY[0x259C790D0](v20);
      }

      v26 = v3;
      v27 = v4;
    }

    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    v26 = v3;
    v27 = v4;
  }

  v36 = (v26 | (-2 - (v2 & 1))) == -1;
  if (v27)
  {
    v36 = 0;
  }

  v37 = (v26 | (-2 - (v2 & 1))) == -1;
  if (v27 != 1)
  {
    v37 = 0;
  }

  v39 = v4 > 1 || v3 == 0;
  if (v2 >> 6 != 1)
  {
    v37 = v39;
  }

  if (v2 >> 6)
  {
    return v37;
  }

  else
  {
    return v36;
  }
}

unint64_t sub_2580D93C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2580D9490(v11, 0, 0, 1, a1, a2);
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
    sub_2580DA6D8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2580D9490(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2580D959C(a5, a6);
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
    result = sub_2580DE264();
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

void *sub_2580D959C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2580D95E8(a1, a2);
  sub_2580D9718(&unk_286943598);
  return v3;
}

void *sub_2580D95E8(uint64_t a1, unint64_t a2)
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

  v6 = sub_2580D9804(v5, 0);
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

  result = sub_2580DE264();
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
        v10 = sub_2580DDFA4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2580D9804(v10, 0);
        result = sub_2580DE214();
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

uint64_t sub_2580D9718(uint64_t result)
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

  result = sub_2580D9878(result, v11, 1, v3);
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

void *sub_2580D9804(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F91DD28, &qword_2580E0300);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2580D9878(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F91DD28, &qword_2580E0300);
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

uint64_t _s23ManagedBackgroundAssets14DownloadPolicyO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if ((v3 > 1 || v2 == 0) && (v5 > 1 || v4 == 0))
  {
    return 1;
  }

  if (*(a2 + 8))
  {
    v9 = 0;
  }

  else
  {
    v9 = v2 == v4;
  }

  v10 = v9;
  v12 = v5 == 1 && v2 == v4;
  if (v3 != 1)
  {
    v12 = 0;
  }

  if (*(a1 + 8))
  {
    return v12;
  }

  else
  {
    return v10;
  }
}

_OWORD *sub_2580D99C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2580D99D8()
{
  result = qword_27F91DC98;
  if (!qword_27F91DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DC98);
  }

  return result;
}

unint64_t sub_2580D9A30()
{
  result = qword_27F91DCA0;
  if (!qword_27F91DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCA0);
  }

  return result;
}

unint64_t sub_2580D9A88()
{
  result = qword_27F91DCA8;
  if (!qword_27F91DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCA8);
  }

  return result;
}

unint64_t sub_2580D9AE0()
{
  result = qword_27F91DCB0;
  if (!qword_27F91DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCB0);
  }

  return result;
}

unint64_t sub_2580D9B38()
{
  result = qword_27F91DCB8;
  if (!qword_27F91DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCB8);
  }

  return result;
}

unint64_t sub_2580D9B90()
{
  result = qword_27F91DCC0;
  if (!qword_27F91DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCC0);
  }

  return result;
}

unint64_t sub_2580D9BE8()
{
  result = qword_27F91DCC8;
  if (!qword_27F91DCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F91DCD0, &qword_2580DFDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCC8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DownloadPolicy(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DownloadPolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2580D9CEC(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2580D9D04(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DownloadPolicy.InstallationEventTypes(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DownloadPolicy.InstallationEventTypes(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DownloadPolicy.Pattern(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for DownloadPolicy.Pattern(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2580D9EF8(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_2580D9F24(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DownloadPolicy.Pattern.InstallationEventType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DownloadPolicy.Pattern.InstallationEventType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DownloadPolicy.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DownloadPolicy.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2580DA250()
{
  result = qword_27F91DCD8;
  if (!qword_27F91DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCD8);
  }

  return result;
}

unint64_t sub_2580DA2A8()
{
  result = qword_27F91DCE0;
  if (!qword_27F91DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCE0);
  }

  return result;
}

unint64_t sub_2580DA300()
{
  result = qword_27F91DCE8;
  if (!qword_27F91DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCE8);
  }

  return result;
}

unint64_t sub_2580DA358()
{
  result = qword_27F91DCF0;
  if (!qword_27F91DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCF0);
  }

  return result;
}

unint64_t sub_2580DA3B0()
{
  result = qword_27F91DCF8;
  if (!qword_27F91DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCF8);
  }

  return result;
}

unint64_t sub_2580DA408()
{
  result = qword_27F91DD00;
  if (!qword_27F91DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DD00);
  }

  return result;
}

unint64_t sub_2580DA460()
{
  result = qword_27F91DD08;
  if (!qword_27F91DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DD08);
  }

  return result;
}

unint64_t sub_2580DA4B8()
{
  result = qword_27F91DD10;
  if (!qword_27F91DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DD10);
  }

  return result;
}

unint64_t sub_2580DA510()
{
  result = qword_27F91DD18;
  if (!qword_27F91DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DD18);
  }

  return result;
}

uint64_t sub_2580DA564(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6169746E65737365 && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_2580DE524() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6863746566657270 && a2 == 0xE800000000000000 || (sub_2580DE524() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E616D65446E6FLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2580DE524();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_2580DA684()
{
  result = qword_27F91DD20;
  if (!qword_27F91DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DD20);
  }

  return result;
}

uint64_t sub_2580DA6D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2580DA758(uint64_t a1)
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

uint64_t sub_2580DA7F8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  (*(*(*(*v4 + 80) - 8) + 32))(v4 + *(*v4 + 88), a1);
  *(v4 + *(*v4 + 96)) = a2;
  return v4;
}

BOOL sub_2580DA8B0()
{
  v1 = *(*v0 + 96);
  v2 = *(v0 + v1);
  v3 = v2 != 0;
  v4 = v2 - 1;
  if (v3)
  {
    *(v0 + v1) = v4;
    return v4 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2580DA8E4()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2580DA9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v5[4] = a4;
  v5[5] = v6;
  v5[2] = a1;
  v5[3] = a3;
  v5[6] = *v6;
  v8 = sub_2580DDE84();
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v9 = sub_2580DDE74();
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = sub_2580DE094();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v5[13] = v10;
  v5[14] = v12;

  return MEMORY[0x2822009F8](sub_2580DAB20, v10);
}

uint64_t sub_2580DAB20()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[3];
  *(v4 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_unreadDecryptedData) = xmmword_2580E0360;
  *(v4 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed) = 0;
  (*(v2 + 16))(v1, v5, v3);
  sub_2580DDEB4();
  v0[15] = sub_2580DDEA4();
  sub_2580DDAFC(&qword_27F91DE28, MEMORY[0x277D25C68], MEMORY[0x277D25C70]);
  v6 = sub_2580DE094();

  return MEMORY[0x2822009F8](sub_2580DAC24, v6);
}

uint64_t sub_2580DAC24()
{

  sub_2580DDE54();
  *(v0 + 128) = 0;
  v1 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_2580DACC0, v1);
}

uint64_t sub_2580DACC0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  (*(v2 + 32))(v6 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_cryptSession, v1, v3);
  *(v6 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_previousByteStream) = v7;

  v9 = v0[1];
  v10 = v0[5];

  return v9(v10);
}

uint64_t sub_2580DADB0()
{
  if (qword_27F91D5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_2580DDEF4();
  __swift_project_value_buffer(v2, qword_27F91DDB0);
  v3 = sub_2580DE174();
  MEMORY[0x259C790E0](v1);
  v4 = sub_2580DDED4();
  MEMORY[0x259C790D0](v1);
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    MEMORY[0x259C790E0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_2580C3000, v4, v3, "A crypt session couldn’t be started: %{public}@", v6, 0xCu);
    sub_2580CAFD4(v7, &qword_27F91D680, &unk_2580DF970);
    MEMORY[0x259C79240](v7, -1, -1);
    MEMORY[0x259C79240](v6, -1, -1);
  }

  v9 = v0[8];
  v10 = v0[7];
  v11 = v0[5];
  v12 = v0[3];

  swift_willThrow();

  swift_unknownObjectRelease();
  (*(v9 + 8))(v12, v10);
  sub_2580CA7E4(*(v11 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_unreadDecryptedData), *(v11 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_unreadDecryptedData + 8));
  swift_deallocPartialClassInstance();

  v13 = v0[1];

  return v13();
}

uint64_t sub_2580DAFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed) == 1)
  {
    v4 = OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_cryptSession;
    v5 = sub_2580DDE74();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);

    sub_2580CA7E4(*(v3 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_unreadDecryptedData), *(v3 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_unreadDecryptedData + 8));
    a2 = *(*v3 + 48);
    a3 = *(*v3 + 52);
    a1 = v3;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821FE8D8](a1, a2, a3);
}

unint64_t sub_2580DB0CC(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v124 = *MEMORY[0x277D85DE8];
  v7 = sub_2580DDC34();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v12 = (v107 - v11);
  if (*(v2 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed))
  {
    return 0;
  }

  v114 = v10;
  v108 = a1;
  v109 = a2;
  v110 = v2;
  v14 = (v2 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_unreadDecryptedData);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 == 2 && *(v15 + 16) != *(v15 + 24))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v17)
    {
      while (1)
      {
        if (v15 == v15 >> 32)
        {
          goto LABEL_18;
        }

LABEL_11:
        v20 = v109 - v108;
        if (!v108)
        {
          v20 = 0;
        }

        if (v17 != 2)
        {
          break;
        }

        v22 = *(v15 + 16);
        v21 = *(v15 + 24);
        v23 = __OFSUB__(v21, v22);
        v17 = v21 - v22;
        if (!v23)
        {
          goto LABEL_61;
        }

        __break(1u);
      }

      LODWORD(v17) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        __break(1u);
        goto LABEL_143;
      }

      v17 = v17;
LABEL_61:
      v18 = v109;
      v19 = v108;
LABEL_62:
      if (v17 >= v20)
      {
        v54 = v20;
      }

      else
      {
        v54 = v17;
      }

      sub_2580CA988(v15, v16);
      sub_2580DC110(v54, v15, v16, &v120);
      v55 = v120;
      v56 = v121;
      sub_2580DBF08(v120, v121, v19, v18);
      sub_2580CA7E4(v55, v56);
      swift_beginAccess();
      sub_2580DC258(v54);
      swift_endAccess();
      v58 = *v14;
      v57 = v14[1];
      v122 = MEMORY[0x277CC9318];
      v123 = MEMORY[0x277CC9300];
      v120 = v58;
      v121 = v57;
      v59 = __swift_project_boxed_opaque_existential_1(&v120, MEMORY[0x277CC9318]);
      v60 = *v59;
      v61 = v59[1];
      v62 = v61 >> 62;
      if ((v61 >> 62) > 1)
      {
        if (v62 != 2)
        {
          *(&v118 + 6) = 0;
          *&v118 = 0;
          sub_2580CA988(v58, v57);
          v63 = &v118;
          v64 = &v118;
          goto LABEL_95;
        }

        v65 = *(v60 + 16);
        v66 = *(v60 + 24);
        sub_2580CA988(v58, v57);
        v67 = sub_2580DDB64();
        if (v67)
        {
          v68 = sub_2580DDB84();
          if (__OFSUB__(v65, v68))
          {
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          v67 += v65 - v68;
        }

        v23 = __OFSUB__(v66, v65);
        v69 = v66 - v65;
        if (!v23)
        {
          v70 = sub_2580DDB74();
          if (v70 >= v69)
          {
            v71 = v69;
          }

          else
          {
            v71 = v70;
          }

          v72 = (v71 + v67);
          if (v67)
          {
            v64 = v72;
          }

          else
          {
            v64 = 0;
          }

          v63 = v67;
          goto LABEL_95;
        }

LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      if (!v62)
      {
        *&v118 = *v59;
        WORD4(v118) = v61;
        BYTE10(v118) = BYTE2(v61);
        BYTE11(v118) = BYTE3(v61);
        BYTE12(v118) = BYTE4(v61);
        BYTE13(v118) = BYTE5(v61);
        sub_2580CA988(v58, v57);
        v63 = &v118;
        v64 = (&v118 + BYTE6(v61));
LABEL_95:
        sub_2580DD2C8(v63, v64, &v119);
        v87 = v119;
        __swift_destroy_boxed_opaque_existential_1(&v120);
        v88 = *v14;
        v89 = v14[1];
        *v14 = v87;
        sub_2580CA7E4(v88, v89);
        return v54;
      }

      v79 = v60;
      v80 = v60 >> 32;
      v81 = v80 - v79;
      if (v80 >= v79)
      {
        sub_2580CA988(v58, v57);
        v82 = sub_2580DDB64();
        if (!v82)
        {
LABEL_87:
          v84 = sub_2580DDB74();
          if (v84 >= v81)
          {
            v85 = v81;
          }

          else
          {
            v85 = v84;
          }

          v86 = (v85 + v82);
          if (v82)
          {
            v64 = v86;
          }

          else
          {
            v64 = 0;
          }

          v63 = v82;
          goto LABEL_95;
        }

        v83 = sub_2580DDB84();
        if (!__OFSUB__(v79, v83))
        {
          v82 += v79 - v83;
          goto LABEL_87;
        }

        goto LABEL_146;
      }

LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if ((v16 & 0xFF000000000000) != 0)
    {
      v18 = v109;
      v19 = v108;
      v20 = v109 - v108;
      if (!v108)
      {
        v20 = 0;
      }

      v17 = BYTE6(v16);
      goto LABEL_62;
    }
  }

LABEL_18:
  v107[1] = v14;
  v117 = *(v110 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_previousByteStream);
  v119 = xmmword_2580E0360;
  v116 = *MEMORY[0x277CC92B8];
  v115 = (v8 + 104);
  v112 = (v8 + 88);
  v113 = (v8 + 16);
  v111 = *MEMORY[0x277CC92A8];
  v24 = (v8 + 8);
  do
  {
    v25 = sub_2580DDEC4();
    if (v25 < 0)
    {
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      swift_once();
LABEL_56:
      v48 = sub_2580DDEF4();
      __swift_project_value_buffer(v48, qword_27F91DDB0);
      v49 = sub_2580DE174();
      MEMORY[0x259C790E0](v4);
      v50 = sub_2580DDED4();
      MEMORY[0x259C790D0](v4);
      if (os_log_type_enabled(v50, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138543362;
        MEMORY[0x259C790E0](v4);
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 4) = v53;
        *v52 = v53;
        _os_log_impl(&dword_2580C3000, v50, v49, "Decryption failed: %{public}@", v51, 0xCu);
        sub_2580CAFD4(v52, &qword_27F91D680, &unk_2580DF970);
        MEMORY[0x259C79240](v52, -1, -1);
        MEMORY[0x259C79240](v51, -1, -1);
      }

      return swift_willThrow();
    }

    v26 = *(&v119 + 1) >> 62;
    if ((*(&v119 + 1) >> 62) > 1)
    {
      if (v26 == 2)
      {
        v28 = *(v119 + 16);
        v29 = *(v119 + 24);
        v23 = __OFSUB__(v29, v28);
        v27 = v29 - v28;
        if (v23)
        {
          goto LABEL_138;
        }
      }

      else
      {
        v27 = 0;
      }
    }

    else if (v26)
    {
      LODWORD(v27) = DWORD1(v119) - v119;
      if (__OFSUB__(DWORD1(v119), v119))
      {
        goto LABEL_137;
      }

      v27 = v27;
    }

    else
    {
      v27 = BYTE14(v119);
    }

    if (__OFSUB__(v25, v27))
    {
      goto LABEL_136;
    }

    v30 = swift_slowAlloc();
    v31 = sub_2580DDCE4();
    if (v4)
    {
      sub_2580CA7E4(v119, *(&v119 + 1));
      if (qword_27F91D5B8 == -1)
      {
        goto LABEL_56;
      }

      goto LABEL_141;
    }

    v32 = v31;
    *v12 = sub_2580DBC20;
    v12[1] = 0;
    (*v115)(v12, v116, v7);
    sub_2580DDC24();
    if (v32)
    {
      sub_2580DDBA4();
      swift_allocObject();

      v33 = sub_2580DDB44();
      v34 = v114;
      (*v113)(v114, v12, v7);
      v35 = (*v112)(v34, v7);
      if (v35 == v111)
      {
        v36 = sub_2580DDB94();
        *v37 |= 0x8000000000000000;
        v36(&v120, 0);
      }

      else
      {
        (*v24)(v34, v7);
      }

      v39 = sub_2580DD834(v33, v32);
      v40 = v41;
    }

    else
    {
      v38 = sub_2580DDC24();
      v38(v30, 0);

      v39 = 0;
      v40 = 0xC000000000000000;
    }

    (*v24)(v12, v7);
    sub_2580DDC84();
    sub_2580CA7E4(v39, v40);
    v42 = *(&v119 + 1) >> 62;
    v4 = 0;
    if ((*(&v119 + 1) >> 62) > 1)
    {
      if (v42 == 2)
      {
        v44 = *(v119 + 16);
        v45 = *(v119 + 24);
        v43 = v45 - v44;
        if (__OFSUB__(v45, v44))
        {
          goto LABEL_139;
        }
      }

      else
      {
        v43 = 0;
      }
    }

    else if (v42)
    {
      if (__OFSUB__(DWORD1(v119), v119))
      {
        goto LABEL_140;
      }

      v43 = DWORD1(v119) - v119;
    }

    else
    {
      v43 = BYTE14(v119);
    }

    v46 = v43 < sub_2580DDEC4() || v43 < 0;
  }

  while (v46 && v32 > 0);
  v47 = sub_2580DDEB4();
  MEMORY[0x28223BE20](v47);
  v107[-2] = &v119;
  sub_2580DDE74();
  sub_2580DDE94();
  v74 = *(&v118 + 1);
  v73 = v118;
  v75 = *(&v118 + 1) >> 62;
  if ((*(&v118 + 1) >> 62) <= 1)
  {
    v76 = v109;
    v77 = v108;
    if (!v75)
    {
      v78 = BYTE14(v118);
      goto LABEL_102;
    }

LABEL_100:
    LODWORD(v78) = HIDWORD(v73) - v73;
    if (!__OFSUB__(HIDWORD(v73), v73))
    {
      v78 = v78;
      goto LABEL_102;
    }

LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
  }

  v76 = v109;
  v77 = v108;
  if (v75 != 2)
  {
    if (!v108)
    {
      goto LABEL_124;
    }

    v78 = 0;
LABEL_107:
    if (v76 - v77 >= v78)
    {
      goto LABEL_124;
    }

    v92 = 0;
LABEL_109:
    if (v75 > 1)
    {
      if (v75 != 2)
      {
        v93 = 0;
        goto LABEL_119;
      }

      v95 = *(v73 + 16);
      v94 = *(v73 + 24);
      v23 = __OFSUB__(v94, v95);
      v93 = v94 - v95;
      if (!v23)
      {
LABEL_119:
        if (v92)
        {
          v96 = 0;
        }

        else
        {
          v96 = v76 - v77;
        }

        v97 = v93 - v96;
        if (!__OFSUB__(v93, v96))
        {
          v98 = v73;
          v99 = v74;
          sub_2580CA988(v73, v74);
          sub_2580DBCB8(v97, v98, v99, &v120);
          v100 = v120;
          v101 = v121;
          sub_2580DBE04(v97);
          swift_beginAccess();
          sub_2580DDC84();
          swift_endAccess();
          sub_2580CA7E4(v100, v101);
          v74 = *(&v118 + 1);
          v73 = v118;
          goto LABEL_124;
        }

LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      __break(1u);
    }

    else if (!v75)
    {
      v93 = BYTE6(v74);
      goto LABEL_119;
    }

    LODWORD(v93) = HIDWORD(v73) - v73;
    if (__OFSUB__(HIDWORD(v73), v73))
    {
      goto LABEL_150;
    }

    v93 = v93;
    goto LABEL_119;
  }

  v91 = *(v118 + 16);
  v90 = *(v118 + 24);
  v23 = __OFSUB__(v90, v91);
  v78 = v90 - v91;
  if (v23)
  {
    __break(1u);
    goto LABEL_100;
  }

LABEL_102:
  if (v77)
  {
    goto LABEL_107;
  }

  if (v78 >= 1)
  {
    v92 = 1;
    goto LABEL_109;
  }

LABEL_124:
  sub_2580DBF08(v73, v74, v77, v76);
  v102 = v118;
  v103 = *(&v118 + 1) >> 62;
  if ((*(&v118 + 1) >> 62) > 1)
  {
    if (v103 == 2)
    {
      v106 = *(v118 + 16);
      v105 = *(v118 + 24);
      v104 = v105 - v106;
      if (__OFSUB__(v105, v106))
      {
        __break(1u);
        goto LABEL_131;
      }
    }

    else
    {
      v104 = 0;
    }
  }

  else
  {
    if (!v103)
    {
      v104 = BYTE14(v118);
      goto LABEL_134;
    }

LABEL_131:
    if (__OFSUB__(DWORD1(v102), v102))
    {
      goto LABEL_149;
    }

    v104 = DWORD1(v102) - v102;
  }

LABEL_134:
  sub_2580CA7E4(v102, *(&v102 + 1));
  sub_2580CA7E4(v119, *(&v119 + 1));
  return v104;
}