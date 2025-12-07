uint64_t sub_23C587044(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_23C871BA4();
  swift_unknownObjectRelease();
  v5 = sub_23C586B1C(v7);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

void sub_23C5870B0(void *a1)
{
  v2 = v1;
  swift_getAssociatedTypeWitness();
  sub_23C871B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F96A8, qword_23C873C40);
  v4 = sub_23C871964();
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v44 = &v44 - v5;
  v45 = sub_23C871B74();
  v6 = *(v45 - 8);
  v7 = MEMORY[0x28223BE20](v45);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v44 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v46 = &v44 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - v18;
  v20 = [a1 state];
  if (v20 == 1)
  {
    v25 = [a1 error];
    v24 = v47;
    v26 = (v47 + 48);
    if (v25)
    {
      v27 = v25;
      sub_23C5865E8(v15);
      v28 = (*v26)(v15, 1, v4);
      v21 = MEMORY[0x277D85000];
      if (v28)
      {

        (*(v6 + 8))(v15, v45);
      }

      else
      {
        v36 = v44;
        (*(v24 + 16))(v44, v15, v4);
        (*(v6 + 8))(v15, v45);
        v49 = v27;
        sub_23C871944();
        (*(v24 + 8))(v36, v4);
      }
    }

    else
    {
      sub_23C5865E8(v12);
      v29 = (*v26)(v12, 1, v4);
      v21 = MEMORY[0x277D85000];
      if (v29)
      {
        (*(v6 + 8))(v12, v45);
      }

      else
      {
        v38 = v44;
        (*(v24 + 16))(v44, v12, v4);
        (*(v6 + 8))(v12, v45);
        sub_23C588D6C();
        v39 = swift_allocError();
        *v40 = 0xD00000000000003BLL;
        v40[1] = 0x800000023C8A6CC0;
        v49 = v39;
        sub_23C871944();
        (*(v24 + 8))(v38, v4);
      }
    }

LABEL_19:
    v41 = v46;
    (*(v24 + 56))(v46, 1, 1, v4);
    sub_23C586718(v41);
    goto LABEL_20;
  }

  if (v20)
  {
    sub_23C5865E8(v9);
    v24 = v47;
    if ((*(v47 + 48))(v9, 1, v4))
    {
      (*(v6 + 8))(v9, v45);
    }

    else
    {
      v30 = v44;
      (*(v24 + 16))(v44, v9, v4);
      (*(v6 + 8))(v9, v45);
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_23C871D14();

      v49 = 0xD00000000000001DLL;
      v50 = 0x800000023C8A6CA0;
      v48 = [a1 state];
      type metadata accessor for BPSCompletionState(0);
      v31 = sub_23C8717D4();
      MEMORY[0x23EED7100](v31);

      v32 = v49;
      v33 = v50;
      sub_23C588D6C();
      v34 = swift_allocError();
      *v35 = v32;
      v35[1] = v33;
      v49 = v34;
      sub_23C871944();
      (*(v24 + 8))(v30, v4);
    }

    v21 = MEMORY[0x277D85000];
    goto LABEL_19;
  }

  v21 = MEMORY[0x277D85000];
  v22 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  swift_beginAccess();
  v48 = *(v1 + v22);
  sub_23C871924();
  swift_getWitnessTable();
  if (sub_23C871A84())
  {
    sub_23C5865E8(v19);
    v23 = v47;
    if ((*(v47 + 48))(v19, 1, v4))
    {
      (*(v6 + 8))(v19, v45);
    }

    else
    {
      v37 = v44;
      (*(v23 + 16))(v44, v19, v4);
      (*(v6 + 8))(v19, v45);
      v48 = 0;
      sub_23C871954();
      (*(v23 + 8))(v37, v4);
    }

    v24 = v23;
    goto LABEL_19;
  }

LABEL_20:
  v42 = *((*v21 & *v2) + 0x70);
  v43 = *(v2 + v42);
  *(v2 + v42) = 1;
  sub_23C588D5C(v43);
}

void sub_23C5877D4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_23C5870B0(v4);
}

uint64_t sub_23C58783C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_23C871B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F96A8, qword_23C873C40);
  v4 = sub_23C871964();
  v26 = sub_23C871B74();
  v5 = *(v26 - 8);
  v6 = MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = 0;
  v15 = *((v3 & v2) + 0x70);
  v16 = *(v0 + v15);
  if (v16 >= 2)
  {
    v14 = v16;
  }

  *(v1 + v15) = 1;
  sub_23C588D5C(v16);
  [v14 cancel];
  sub_23C5865E8(v13);
  v17 = *(v4 - 8);
  (*(v17 + 56))(v11, 1, 1, v4);
  sub_23C586718(v11);
  v18 = v26;
  (*(v5 + 16))(v8, v13, v26);
  v19 = (*(v17 + 48))(v8, 1, v4);
  v20 = v5;
  v21 = v18;
  if (v19 != 1)
  {
    sub_23C871974();
    sub_23C5886A4();
    v22 = swift_allocError();
    sub_23C871694();
    v28 = v22;
    sub_23C871944();
    v20 = v17;
    v21 = v4;
  }

  (*(v20 + 8))(v8, v21);
  v23 = sub_23C8718E4();
  sub_23C586850(v23);

  return (*(v5 + 8))(v13, v18);
}

void sub_23C587B68(void *a1)
{
  v1 = a1;
  sub_23C58783C();
}

void sub_23C587BB0(uint64_t a1)
{
  v2 = v1;
  v17 = a1;
  v3 = MEMORY[0x277D85000];
  swift_getAssociatedTypeWitness();
  sub_23C871B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F96A8, qword_23C873C40);
  v4 = sub_23C871964();
  v5 = sub_23C871B74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_23C5865E8(&v17 - v10);
  v12 = *(v4 - 8);
  v13 = (*(v12 + 48))(v11, 1, v4);
  (*(v6 + 8))(v11, v5);
  if (v13 == 1)
  {
    v14 = *(v2 + *((*v3 & *v2) + 0x70));
    if (v14)
    {
      if (v14 == 1)
      {
        v15 = *((*v3 & *v2) + 0x80);
        swift_beginAccess();
        v18 = *(v2 + v15);
        sub_23C871924();
        swift_getWitnessTable();
        if (sub_23C871A84())
        {
          v18 = 0;
        }

        else
        {
          swift_beginAccess();
          swift_getWitnessTable();
          sub_23C871AA4();
          swift_endAccess();
          v18 = v19;
        }

        sub_23C871954();
      }

      else
      {
        v16 = *((*v3 & *v2) + 0x80);
        swift_beginAccess();
        v18 = *(v2 + v16);
        sub_23C588D4C(v14);
        sub_23C871924();
        swift_getWitnessTable();
        if (sub_23C871A84())
        {
          (*(v12 + 16))(v9, v17, v4);
          (*(v12 + 56))(v9, 0, 1, v4);
          sub_23C586718(v9);
          [v14 requestDemand_];
        }

        else
        {
          swift_beginAccess();
          swift_getWitnessTable();
          sub_23C871AA4();
          swift_endAccess();
          v18 = v19;
          sub_23C871954();
        }

        sub_23C588D5C(v14);
      }
    }

    else
    {
      (*(v12 + 16))(v9, v17, v4);
      (*(v12 + 56))(v9, 0, 1, v4);
      sub_23C586718(v9);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_23C588098()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  sub_23C58783C();
  v2 = *(v1 + 96);
  v5[0] = *(v1 + 80);
  v5[1] = v2;
  v3 = type metadata accessor for BiomeAsyncSequence.BiomeAsyncSubscriber(0, v5);
  v6.receiver = v0;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_23C588148(char *a1)
{
  v2 = MEMORY[0x277D85000];
  sub_23C588D5C(*&a1[*((*MEMORY[0x277D85000] & *a1) + 0x70)]);
  v3 = *((*v2 & *a1) + 0x78);
  swift_getAssociatedTypeWitness();
  sub_23C871B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F96A8, qword_23C873C40);
  sub_23C871964();
  v4 = sub_23C871B74();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  v5 = *((*v2 & *a1) + 0x88);
  v6 = sub_23C871654();
  v7 = *(*(v6 - 8) + 8);

  return v7(&a1[v5], v6);
}

id sub_23C588300()
{
  v1 = MEMORY[0x277D85000];
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & *v0;
  *&v0[*((v3 & v2) + 0x70)] = 0;
  v5 = *((*v1 & *v0) + 0x78);
  v6 = *((v3 & v2) + 0x68);
  v7 = *((v3 & v2) + 0x58);
  swift_getAssociatedTypeWitness();
  sub_23C871B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F96A8, qword_23C873C40);
  v8 = sub_23C871964();
  (*(*(v8 - 8) + 56))(&v0[v5], 1, 1, v8);
  v9 = *((*v1 & *v0) + 0x80);
  *&v0[v9] = sub_23C8718E4();
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  *&v10 = *(v4 + 96);
  *&v11 = *(v4 + 80);
  *(&v11 + 1) = v7;
  *(&v10 + 1) = v6;
  v14[0] = v11;
  v14[1] = v10;
  v12 = type metadata accessor for BiomeAsyncSequence.BiomeAsyncSubscriber(0, v14);
  v15.receiver = v0;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_23C588560@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = BiomeAsyncSequence.makeAsyncIterator()(a1);
  result = swift_unknownObjectRelease();
  *a2 = v3;
  return result;
}

uint64_t sub_23C58859C(void *a1)
{
  v3 = *(*v1 + 96);
  v6[0] = *(*v1 + 80);
  v6[1] = v3;
  v4 = [objc_allocWithZone(type metadata accessor for BiomeAsyncSequence.BiomeAsyncSubscriber(0 v6))];
  *(v1 + 16) = v4;
  *(v1 + 24) = 0;
  [a1 subscribe_];
  return v1;
}

uint64_t sub_23C58862C(void *a1)
{
  v3 = *(v1 + 96);
  v5[0] = *(v1 + 80);
  v5[1] = v3;
  type metadata accessor for BiomeAsyncSequence.BiomeAsyncIterator(0, v5);
  swift_allocObject();
  return sub_23C58859C(a1);
}

unint64_t sub_23C5886A4()
{
  result = qword_27E1F95A0[0];
  if (!qword_27E1F95A0[0])
  {
    sub_23C871974();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1F95A0);
  }

  return result;
}

uint64_t sub_23C588724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for MessageTypeWrapper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for MessageTypeWrapper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of BiomeAsyncSequence.BiomeAsyncIterator.next()()
{
  v4 = (*(*v0 + 160) + **(*v0 + 160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23C58898C;

  return v4();
}

uint64_t sub_23C58898C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_23C588A88(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_23C871B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F96A8, qword_23C873C40);
  sub_23C871964();
  result = sub_23C871B74();
  if (v2 <= 0x3F)
  {
    result = sub_23C871654();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
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

uint64_t sub_23C588C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_26AIMLInstrumentationStreams18BiomeAsyncSequenceV0cD10SubscriberC17SubscriptionStateOyx_qd___G(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23C588C80(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C588CD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id sub_23C588D4C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_23C588D5C(id a1)
{
  if (a1 >= 2)
  {
  }
}

unint64_t sub_23C588D6C()
{
  result = qword_27E1F9730;
  if (!qword_27E1F9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9730);
  }

  return result;
}

uint64_t sub_23C588DC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23C588EAC()
{
  result = qword_2814FABB0;
  if (!qword_2814FABB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814FABB0);
  }

  return result;
}

uint64_t sub_23C588F2C()
{
  v1 = 0x6567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x646C656966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449746E657665;
  }
}

uint64_t sub_23C588F84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23C595760(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23C588FB8(uint64_t a1)
{
  v2 = sub_23C5891F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C588FF4(uint64_t a1)
{
  v2 = sub_23C5891F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.ExtractorIn.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9740, &qword_23C873D30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C5891F4();
  sub_23C872154();
  v14 = 0;
  v9 = v11[5];
  sub_23C871F44();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_23C871F44();
  v12 = 2;
  sub_23C871F44();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23C5891F4()
{
  result = qword_27E1F9748;
  if (!qword_27E1F9748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9748);
  }

  return result;
}

uint64_t BiomeEventGraph.ExtractorIn.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9750, &qword_23C873D38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C5891F4();
  sub_23C872144();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = sub_23C871ED4();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_23C871ED4();
  v21 = v12;
  v23 = 2;
  v13 = sub_23C871ED4();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23C5894F4()
{
  if (*v0)
  {
    return 0x74757074756FLL;
  }

  else
  {
    return 0x7475706E69;
  }
}

uint64_t sub_23C589528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_23C872014() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23C872014();

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

uint64_t sub_23C5895FC(uint64_t a1)
{
  v2 = sub_23C5898A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C589638(uint64_t a1)
{
  v2 = sub_23C5898A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.Extractor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9758, &qword_23C873D40);
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v15 = v1[2];
  v16 = v6;
  v9 = v1[4];
  v10 = v1[5];
  v13 = v1[6];
  v14 = v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C5898A8();

  sub_23C872154();
  v19 = v16;
  v20 = v7;
  v21 = v15;
  v22 = v8;
  v23 = v14;
  v24 = v10;
  v25 = 0;
  sub_23C5898FC();
  v11 = v17;
  sub_23C871F94();

  if (!v11)
  {
    v19 = v13;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9770, &qword_23C873D48);
    sub_23C589C40(&qword_27E1F9778, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_23C871F94();
  }

  return (*(v18 + 8))(v5, v3);
}

unint64_t sub_23C5898A8()
{
  result = qword_27E1F9760;
  if (!qword_27E1F9760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9760);
  }

  return result;
}

unint64_t sub_23C5898FC()
{
  result = qword_27E1F9768;
  if (!qword_27E1F9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9768);
  }

  return result;
}

uint64_t BiomeEventGraph.Extractor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9780, &qword_23C873D50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C5898A8();
  sub_23C872144();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  sub_23C589BEC();
  sub_23C871F24();
  v9 = v20;
  v16 = v21;
  v17 = v19;
  v18 = v22;
  v10 = v24;
  v15 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9770, &qword_23C873D48);
  v25 = 1;
  sub_23C589C40(&qword_27E1F9790, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_23C871F24();
  (*(v6 + 8))(v8, v5);
  v12 = v18;
  v11 = v19;
  v13 = v16;
  *a2 = v17;
  a2[1] = v9;
  a2[2] = v13;
  a2[3] = v12;
  a2[4] = v15;
  a2[5] = v10;
  a2[6] = v11;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_23C589BEC()
{
  result = qword_27E1F9788;
  if (!qword_27E1F9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9788);
  }

  return result;
}

uint64_t sub_23C589C40(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F9770, &qword_23C873D48);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23C589CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23C872014();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23C589D7C(uint64_t a1)
{
  v2 = sub_23C589FA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C589DB8(uint64_t a1)
{
  v2 = sub_23C589FA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.Joining.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9798, &qword_23C873D58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C589FA0();

  sub_23C872154();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F97A8, &qword_23C873D60);
  sub_23C58A258(&qword_27E1F97B0, sub_23C589FF4, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_23C871F94();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23C589FA0()
{
  result = qword_27E1F97A0;
  if (!qword_27E1F97A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F97A0);
  }

  return result;
}

unint64_t sub_23C589FF4()
{
  result = qword_27E1F97B8;
  if (!qword_27E1F97B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F97C0, &qword_23C873D68);
    sub_23C58A388(&qword_27E1F97C8, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F97B8);
  }

  return result;
}

uint64_t BiomeEventGraph.Joining.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F97D8, &qword_23C873D78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C589FA0();
  sub_23C872144();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F97A8, &qword_23C873D60);
    sub_23C58A258(&qword_27E1F97E0, sub_23C58A2DC, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_23C871F24();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23C58A258(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F97A8, &qword_23C873D60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23C58A2DC()
{
  result = qword_27E1F97E8;
  if (!qword_27E1F97E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F97C0, &qword_23C873D68);
    sub_23C58A388(&qword_27E1F97F0, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F97E8);
  }

  return result;
}

uint64_t sub_23C58A388(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F97D0, &qword_23C873D70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23C58A424()
{
  v1 = 6581861;
  if (*v0 != 1)
  {
    v1 = 0x6973736553776172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_23C58A47C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23C595874(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23C58A4A4(uint64_t a1)
{
  v2 = sub_23C58A718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C58A4E0(uint64_t a1)
{
  v2 = sub_23C58A718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.SessionMeta.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F97F8, &qword_23C873D80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58A718();
  sub_23C872154();
  v11 = 0;
  sub_23C870AE4();
  sub_23C58ABD4(&qword_27E1F9808, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_23C871F94();
  if (!v1)
  {
    type metadata accessor for BiomeEventGraph.SessionMeta(0);
    v10 = 1;
    sub_23C871F94();
    v9 = 2;
    sub_23C871F44();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23C58A718()
{
  result = qword_27E1F9800;
  if (!qword_27E1F9800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9800);
  }

  return result;
}

uint64_t BiomeEventGraph.SessionMeta.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v34 = sub_23C870AE4();
  v32 = *(v34 - 8);
  v4 = MEMORY[0x28223BE20](v34);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v33 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9810, &qword_23C873D88);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for BiomeEventGraph.SessionMeta(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58A718();
  sub_23C872144();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = v13;
  v30 = a1;
  v28 = v11;
  v39 = 0;
  sub_23C58ABD4(&qword_27E1F9818, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v14 = v33;
  v15 = v34;
  sub_23C871F24();
  v33 = *(v32 + 32);
  (v33)(v29, v14, v15);
  v38 = 1;
  v16 = v6;
  sub_23C871F24();
  v18 = v28;
  v17 = v29;
  (v33)(&v29[*(v28 + 20)], v16, v15);
  v37 = 2;
  v19 = sub_23C871ED4();
  v20 = v17;
  v21 = v30;
  v22 = v19;
  v24 = v23;
  (*(v35 + 8))(v10, v36);
  v25 = (v20 + *(v18 + 24));
  *v25 = v22;
  v25[1] = v24;
  sub_23C594F64(v20, v31, type metadata accessor for BiomeEventGraph.SessionMeta);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return sub_23C594FCC(v20, type metadata accessor for BiomeEventGraph.SessionMeta);
}

uint64_t sub_23C58ABD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s26AIMLInstrumentationStreams33TranscriptProtoAppRequirementEnumO9hashValueSivg_0()
{
  v1 = *v0;
  sub_23C8720F4();
  MEMORY[0x23EED79F0](v1);
  return sub_23C872124();
}

uint64_t sub_23C58AC94(uint64_t a1)
{
  v2 = *v1;
  sub_23C8720F4();
  MEMORY[0x23EED79F0](v2);
  return sub_23C872124();
}

uint64_t sub_23C58ACD8()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_23C58AD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_23C872014() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xEB00000000734E70)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23C872014();

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

uint64_t sub_23C58ADF4(uint64_t a1)
{
  v2 = sub_23C58B000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C58AE30(uint64_t a1)
{
  v2 = sub_23C58B000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.PerfEndpoint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9820, &qword_23C873D90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v9[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58B000();
  sub_23C872154();
  v11 = 0;
  v7 = v9[1];
  sub_23C871F74();
  if (!v7)
  {
    v10 = 1;
    sub_23C871FA4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23C58B000()
{
  result = qword_27E1F9828;
  if (!qword_27E1F9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9828);
  }

  return result;
}

uint64_t BiomeEventGraph.PerfEndpoint.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9830, &qword_23C873D98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58B000();
  sub_23C872144();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = 0;
  v9 = sub_23C871F04();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_23C871F34();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23C58B260()
{
  v1 = *v0;
  v2 = 0x746567726174;
  v3 = 0x49747865746E6F63;
  v4 = 0x7472617473;
  if (v1 != 3)
  {
    v4 = 6581861;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23C58B2F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23C59598C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23C58B328(uint64_t a1)
{
  v2 = sub_23C58B678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C58B364(uint64_t a1)
{
  v2 = sub_23C58B678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.PerfEntry.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9838, &qword_23C873DA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = *(v1 + 16);
  v32 = *(v1 + 24);
  v8 = *(v1 + 40);
  v26 = *(v1 + 32);
  v27 = v7;
  v9 = *(v1 + 56);
  v24 = *(v1 + 48);
  v25 = v8;
  v10 = *(v1 + 72);
  v22 = *(v1 + 64);
  v23 = v9;
  v12 = *(v1 + 80);
  v11 = *(v1 + 88);
  v19 = v10;
  v20 = v12;
  v21 = v11;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58B678();
  sub_23C872154();
  LOBYTE(v29) = 0;
  v13 = v28;
  sub_23C871F44();
  if (!v13)
  {
    v15 = v22;
    v14 = v23;
    v16 = v24;
    LOBYTE(v29) = 1;
    sub_23C871F64();
    LOBYTE(v29) = 2;
    sub_23C871F44();
    v29 = v16;
    v30 = v14;
    v31 = v15;
    v33 = 3;
    sub_23C58B6CC();

    sub_23C871F54();

    v29 = v19;
    v30 = v20;
    v31 = v21;
    v33 = 4;

    sub_23C871F54();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23C58B678()
{
  result = qword_27E1F9840;
  if (!qword_27E1F9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9840);
  }

  return result;
}

unint64_t sub_23C58B6CC()
{
  result = qword_27E1F9848;
  if (!qword_27E1F9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9848);
  }

  return result;
}

uint64_t BiomeEventGraph.PerfEntry.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9850, &qword_23C873DA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58B678();
  sub_23C872144();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v41) = 0;
  v9 = sub_23C871ED4();
  v11 = v10;
  v12 = v9;
  LOBYTE(v41) = 1;
  v33 = sub_23C871EF4();
  v53 = v13 & 1;
  LOBYTE(v41) = 2;
  v31 = sub_23C871ED4();
  v34 = v14;
  LOBYTE(v35) = 3;
  v32 = sub_23C58BB80();
  sub_23C871EE4();
  v30 = v41;
  v29 = v42;
  v54 = 4;
  sub_23C871EE4();
  (*(v6 + 8))(v8, v5);
  v27 = v51;
  v25 = *(&v52 + 1);
  v26 = v52;
  v28 = v12;
  *&v35 = v12;
  *(&v35 + 1) = v11;
  *&v36 = v33;
  LODWORD(v32) = v53;
  BYTE8(v36) = v53;
  v15 = v31;
  *&v37 = v31;
  v16 = v34;
  *(&v37 + 1) = v34;
  v17 = v30;
  v38 = v30;
  v18 = v29;
  *&v39 = v29;
  *(&v39 + 1) = v51;
  v40 = v52;
  v19 = v36;
  *a2 = v35;
  a2[1] = v19;
  v20 = v37;
  v21 = v38;
  v22 = v40;
  a2[4] = v39;
  a2[5] = v22;
  a2[2] = v20;
  a2[3] = v21;
  sub_23C58BBD4(&v35, &v41);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *&v41 = v28;
  *(&v41 + 1) = v11;
  v42 = v33;
  v43 = v32;
  v44 = v15;
  v45 = v16;
  v46 = v17;
  v47 = v18;
  v48 = v27;
  v49 = v26;
  v50 = v25;
  return sub_23C58BC0C(&v41);
}

unint64_t sub_23C58BB80()
{
  result = qword_27E1F9858;
  if (!qword_27E1F9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9858);
  }

  return result;
}

uint64_t sub_23C58BC6C()
{
  sub_23C8720F4();
  MEMORY[0x23EED79F0](0);
  return sub_23C872124();
}

uint64_t sub_23C58BCB0(uint64_t a1)
{
  sub_23C8720F4();
  MEMORY[0x23EED79F0](0);
  return sub_23C872124();
}

uint64_t sub_23C58BD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7274656D656C6574 && a2 == 0xE900000000000079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23C872014();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23C58BD9C(uint64_t a1)
{
  v2 = sub_23C58BFB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C58BDD8(uint64_t a1)
{
  v2 = sub_23C58BFB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.Perf.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9860, &qword_23C873DB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58BFB8();

  sub_23C872154();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9870, &qword_23C873DB8);
  sub_23C58C210(&qword_27E1F9878, sub_23C58C00C, MEMORY[0x277D83948]);
  sub_23C871F94();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23C58BFB8()
{
  result = qword_27E1F9868;
  if (!qword_27E1F9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9868);
  }

  return result;
}

unint64_t sub_23C58C00C()
{
  result = qword_27E1F9880;
  if (!qword_27E1F9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9880);
  }

  return result;
}

uint64_t BiomeEventGraph.Perf.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9888, &unk_23C873DC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C58BFB8();
  sub_23C872144();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9870, &qword_23C873DB8);
    sub_23C58C210(&qword_27E1F9890, sub_23C58C288, MEMORY[0x277D83978]);
    sub_23C871F24();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23C58C210(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F9870, &qword_23C873DB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23C58C288()
{
  result = qword_27E1F9898;
  if (!qword_27E1F9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9898);
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeEventGraph.Events.toJson(humanReadable:)(Swift::Bool humanReadable)
{
  v4 = v2;
  v88 = humanReadable;
  v105[1] = *MEMORY[0x277D85DE8];
  v5 = sub_23C8717C4();
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_23C871414();
  v90 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v101 = (&v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = sub_23C871604();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v85 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_23C870FC4();
  v9 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for TranscriptProtoEvent(0);
  v12 = *(v100 - 1);
  MEMORY[0x28223BE20](v100);
  v86 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[1];
  v89 = *v1;
  v15 = v1[3];
  v93 = v1[2];
  v16 = *(v14 + 16);
  v17 = MEMORY[0x277D84F90];
  v91 = v15;
  if (v16)
  {
    v103 = MEMORY[0x277D84F90];
    sub_23C592B40(0, v16, 0);
    v18 = 0;
    v17 = v103;
    v19 = *(v12 + 80);
    v97 = v12;
    v98 = v14 + ((v19 + 32) & ~v19);
    v99 = (v9 + 8);
    v20 = v86;
    v95 = v16;
    v96 = v14;
    while (1)
    {
      if (v18 >= *(v14 + 16))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v21 = v17;
      sub_23C594F64(v98 + *(v12 + 72) * v18, v20, type metadata accessor for TranscriptProtoEvent);
      sub_23C870FB4();
      sub_23C58ABD4(&qword_27E1F98A0, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);
      v22 = sub_23C8711B4();
      v9 = v4;
      if (v4)
      {
        break;
      }

      v24 = v22;
      v25 = v23;
      v26 = v11;
      (*v99)(v11, v102);
      sub_23C594FCC(v20, type metadata accessor for TranscriptProtoEvent);
      v17 = v21;
      v103 = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      v3 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_23C592B40((v27 > 1), v28 + 1, 1);
        v20 = v86;
        v17 = v103;
      }

      ++v18;
      *(v17 + 16) = v3;
      v29 = v17 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v25;
      v4 = 0;
      v11 = v26;
      v14 = v96;
      v12 = v97;
      if (v95 == v18)
      {
        v15 = v91;
        goto LABEL_10;
      }
    }

    (*v99)(v11, v102);
    sub_23C594FCC(v20, type metadata accessor for TranscriptProtoEvent);
  }

  else
  {
LABEL_10:
    v103 = v17;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
    v96 = sub_23C59502C();
    v97 = v32;
    v86 = sub_23C871704();
    v95 = v33;

    v34 = v93;
    v35 = v94;
    v36 = *(v93 + 16);
    v37 = MEMORY[0x277D84F90];
    v9 = v101;
    if (v36)
    {
      v3 = v4;
      v103 = MEMORY[0x277D84F90];
      v99 = v36;
      sub_23C592B40(0, v36, 0);
      v38 = 0;
      v37 = v103;
      v102 = v34 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v100 = (v92 + 16);
      v39 = (v92 + 8);
      v40 = v85;
      while (1)
      {
        if (v38 >= *(v34 + 16))
        {
          goto LABEL_54;
        }

        (*(v92 + 16))(v40, v102 + *(v92 + 72) * v38, v35);
        v41 = sub_23C8715F4();
        if (v3)
        {
          break;
        }

        v43 = v41;
        v4 = v42;
        (*v39)(v40, v35);
        v103 = v37;
        v45 = *(v37 + 16);
        v44 = *(v37 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_23C592B40((v44 > 1), v45 + 1, 1);
          v40 = v85;
          v37 = v103;
        }

        ++v38;
        *(v37 + 16) = v45 + 1;
        v46 = v37 + 16 * v45;
        *(v46 + 32) = v43;
        *(v46 + 40) = v4;
        v9 = v101;
        v34 = v93;
        v35 = v94;
        if (v99 == v38)
        {
          v4 = 0;
          v15 = v91;
          goto LABEL_20;
        }
      }

      (*v39)(v40, v35);

LABEL_19:
    }

    else
    {
LABEL_20:
      v103 = v37;
      v93 = sub_23C871704();
      v94 = v47;

      v3 = *(v15 + 16);
      v48 = MEMORY[0x277D84F90];
      if (v3)
      {
        v102 = v4;
        v103 = MEMORY[0x277D84F90];
        sub_23C592B40(0, v3, 0);
        v49 = 0;
        v48 = v103;
        v99 = (v15 + ((*(v90 + 80) + 32) & ~*(v90 + 80)));
        v98 = v90 + 16;
        v100 = (v90 + 8);
        v50 = v84;
        while (1)
        {
          if (v49 >= *(v15 + 16))
          {
            goto LABEL_55;
          }

          (*(v90 + 16))(v9, v99 + *(v90 + 72) * v49, v50);
          v51 = v102;
          v52 = sub_23C871394();
          v102 = v51;
          if (v51)
          {
            break;
          }

          v54 = v52;
          v4 = v53;
          (*v100)(v9, v50);
          v103 = v48;
          v56 = *(v48 + 16);
          v55 = *(v48 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_23C592B40((v55 > 1), v56 + 1, 1);
            v50 = v84;
            v48 = v103;
          }

          ++v49;
          *(v48 + 16) = v56 + 1;
          v57 = v48 + 16 * v56;
          *(v57 + 32) = v54;
          *(v57 + 40) = v4;
          v9 = v101;
          v15 = v91;
          if (v3 == v49)
          {
            v3 = v102;
            goto LABEL_30;
          }
        }

        (*v100)(v9, v50);
      }

      else
      {
        v3 = v4;
LABEL_30:
        v103 = v48;
        v9 = sub_23C871704();
        v4 = v58;

        if (v89 >> 62)
        {
          goto LABEL_58;
        }

        for (i = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
        {
          v60 = MEMORY[0x277D84F90];
          if (!i)
          {
            break;
          }

          v91 = v9;
          v92 = v4;
          v102 = v3;
          v103 = MEMORY[0x277D84F90];
          sub_23C592B40(0, i & ~(i >> 63), 0);
          if (i < 0)
          {
            __break(1u);
LABEL_60:
            __break(1u);
          }

          v3 = 0;
          v60 = v103;
          v61 = v89;
          v99 = i;
          v100 = (v89 & 0xC000000000000001);
          v98 = v89 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            v4 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              break;
            }

            if (v100)
            {
              v62 = MEMORY[0x23EED7610](v3);
            }

            else
            {
              if (v3 >= *(v98 + 16))
              {
                goto LABEL_57;
              }

              v62 = *(v61 + 8 * v3 + 32);
            }

            v101 = (v3 + 1);
            if (v88)
            {
              v63 = objc_opt_self();
              TimestampedOrderedEvent.dictionaryRepresentation()();
              v64 = sub_23C8716A4();

              v105[0] = 0;
              v65 = [v63 dataWithJSONObject:v64 options:2 error:v105];

              v66 = v105[0];
              if (!v65)
              {
                v82 = v66;
                sub_23C8709B4();

                swift_willThrow();

                goto LABEL_19;
              }

              v67 = sub_23C870A34();
              v9 = v68;
            }

            else
            {
              sub_23C870964();
              swift_allocObject();
              sub_23C870954();
              v105[0] = v62;
              type metadata accessor for TimestampedOrderedEvent();
              sub_23C58ABD4(&qword_27E1F98B8, type metadata accessor for TimestampedOrderedEvent, &protocol conformance descriptor for TimestampedOrderedEvent);
              v69 = v102;
              v70 = sub_23C870944();
              v102 = v69;
              if (v69)
              {

                goto LABEL_61;
              }

              v67 = v70;
              v9 = v71;
            }

            sub_23C8717B4();
            v72 = sub_23C8717A4();
            if (!v73)
            {
              goto LABEL_60;
            }

            v74 = v72;
            v75 = v73;
            sub_23C595090(v67, v9);

            v103 = v60;
            v77 = *(v60 + 16);
            v76 = *(v60 + 24);
            if (v77 >= v76 >> 1)
            {
              sub_23C592B40((v76 > 1), v77 + 1, 1);
              v60 = v103;
            }

            *(v60 + 16) = v77 + 1;
            v78 = v60 + 16 * v77;
            *(v78 + 32) = v74;
            *(v78 + 40) = v75;
            ++v3;
            v61 = v89;
            if (v101 == v99)
            {
              v9 = v91;
              v4 = v92;
              goto LABEL_50;
            }
          }

LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          ;
        }

LABEL_50:
        v103 = v60;
        v79 = sub_23C871704();
        v81 = v80;

        v103 = 0;
        v104 = 0xE000000000000000;
        sub_23C871D14();
        MEMORY[0x23EED7100](0xD000000000000011, 0x800000023C8A6D20);
        MEMORY[0x23EED7100](v93, v94);

        MEMORY[0x23EED7100](0xD000000000000017, 0x800000023C8A6D40);
        MEMORY[0x23EED7100](v9, v4);

        MEMORY[0x23EED7100](0xD000000000000018, 0x800000023C8A6D60);
        MEMORY[0x23EED7100](v86, v95);

        MEMORY[0x23EED7100](0xD000000000000012, 0x800000023C8A6D80);
        MEMORY[0x23EED7100](v79, v81);

        MEMORY[0x23EED7100](0x7D20200A5DLL, 0xE500000000000000);
        v30 = v103;
        v31 = v104;
      }
    }
  }

LABEL_61:
  result._object = v31;
  result._countAndFlagsBits = v30;
  return result;
}

uint64_t sub_23C58CF64()
{
  v1 = 1718379891;
  v2 = 6907495;
  if (*v0 != 2)
  {
    v2 = 0x7274656D656C6574;
  }

  if (*v0)
  {
    v1 = 0x697263736E617274;
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

uint64_t sub_23C58CFD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23C595B44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23C58D00C(uint64_t a1)
{
  v2 = sub_23C5950E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C58D048(uint64_t a1)
{
  v2 = sub_23C5950E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeEventGraph.EventIds.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98C0, &qword_23C873DD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v15 = v1[2];
  v16 = v8;
  v14 = v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C5950E4();

  sub_23C872154();
  v18 = v9;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
  sub_23C595138(&qword_27E1F98D0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_23C871F94();

  if (!v2)
  {
    v11 = v14;
    v12 = v15;
    v18 = v16;
    v17 = 1;
    sub_23C871F94();
    v18 = v12;
    v17 = 2;
    sub_23C871F94();
    v18 = v11;
    v17 = 3;
    sub_23C871F94();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t BiomeEventGraph.EventIds.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98D8, &qword_23C873DD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C5950E4();
  sub_23C872144();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
  v17 = 0;
  sub_23C595138(&qword_27E1F98E0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_23C871F24();
  v16 = v18;
  v17 = 1;
  sub_23C871F24();
  v14 = 0;
  v15 = v18;
  v17 = 2;
  sub_23C871F24();
  v13 = v18;
  v17 = 3;
  sub_23C871F24();
  (*(v6 + 8))(v8, v5);
  v10 = v18;
  v11 = v15;
  *a2 = v16;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v10;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeEventGraph.SessionDescription.toJson(humanReadable:)(Swift::Bool humanReadable)
{
  v4 = v1;
  v5 = humanReadable;
  v6 = sub_23C8717C4();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &countAndFlagsBits - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C870964();
  swift_allocObject();
  v9 = sub_23C870954();
  v98 = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98E8, &qword_23C873DE0);
  sub_23C5951A4();
  v10 = v9;
  v11 = sub_23C870944();
  if (v2)
  {
  }

  else
  {
    v13 = v11;
    v14 = v12;
    LODWORD(object) = v5;

    sub_23C8717B4();
    v15 = sub_23C8717A4();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    v102 = v4;
    v98 = *(v4 + 8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98F8, &qword_23C873DE8);
    v19 = v14;
    sub_23C595228();
    v20 = sub_23C870944();
    v21 = v8;
    v22 = v20;
    v24 = v23;
    v92 = v17;
    v94 = v18;
    v95 = v19;
    v96 = v13;
    v25 = v21;

    sub_23C8717B4();
    v93 = v25;
    v26 = sub_23C8717A4();
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    v30 = v24;
    v98 = *(v102 + 16);
    sub_23C59538C();

    v31 = v9;
    v32 = sub_23C870944();
    v34 = v33;
    v90 = v30;
    v91 = v22;
    v89 = v29;

    sub_23C8717B4();
    v35 = sub_23C8717A4();
    if (v36)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0;
    }

    v87 = v37;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0xE000000000000000;
    }

    v88 = type metadata accessor for BiomeEventGraph.SessionDescription(0);
    type metadata accessor for BiomeEventGraph.SessionMeta(0);
    sub_23C58ABD4(&qword_27E1F9928, type metadata accessor for BiomeEventGraph.SessionMeta, &protocol conformance descriptor for BiomeEventGraph.SessionMeta);
    v39 = sub_23C870944();
    v41 = v40;
    v83 = v28;
    v84 = v32;
    v85 = v34;
    v86 = v38;
    v42 = v39;
    sub_23C8717B4();
    v43 = sub_23C8717A4();
    if (v44)
    {
      v45 = v43;
    }

    else
    {
      v45 = 0;
    }

    if (v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0xE000000000000000;
    }

    v98 = *(v102 + v88[8]);
    sub_23C595438();

    v3 = sub_23C870944();
    v80 = v46;
    v81 = v42;
    v82 = v41;
    v77 = v31;
    v50 = v49;

    sub_23C8717B4();
    v79 = v50;
    v51 = sub_23C8717A4();
    if (v52)
    {
      v53 = v51;
    }

    else
    {
      v53 = 0;
    }

    v76 = v53;
    v54 = 0xE000000000000000;
    if (v52)
    {
      v54 = v52;
    }

    v78 = v54;
    v55 = (v102 + v88[9]);
    v56 = v55[1];
    v57 = v55[2];
    v58 = v55[3];
    v98 = *v55;
    v99 = v56;
    v100 = v57;
    v101 = v58;

    v59 = BiomeEventGraph.Events.toJson(humanReadable:)(object & 1);
    v10 = v86;
    if (v60)
    {

      sub_23C595090(v3, v79);
      sub_23C595090(v81, v82);
      sub_23C595090(v84, v85);
      sub_23C595090(v91, v90);
      sub_23C595090(v96, v95);
    }

    else
    {
      v75 = v3;
      countAndFlagsBits = v59._countAndFlagsBits;
      object = v59._object;
      v74 = v45;

      v61 = (v102 + v88[10]);
      v62 = v61[1];
      v64 = v61[2];
      v63 = v61[3];
      v98 = *v61;
      v99 = v62;
      v100 = v64;
      v101 = v63;
      sub_23C59548C();

      v65 = sub_23C870944();
      v102 = v66;

      sub_23C8717B4();
      v67 = sub_23C8717A4();
      if (v68)
      {
        v69 = v67;
      }

      else
      {
        v69 = 0;
      }

      v93 = v69;
      if (v68)
      {
        v70 = v68;
      }

      else
      {
        v70 = 0xE000000000000000;
      }

      v98 = 0;
      v99 = 0xE000000000000000;
      sub_23C871D14();
      MEMORY[0x23EED7100](0x756F632220200A7BLL, 0xEE00203A2273746ELL);
      MEMORY[0x23EED7100](v92, v94);

      MEMORY[0x23EED7100](0xD000000000000012, 0x800000023C8A6DA0);
      v71 = v86;
      MEMORY[0x23EED7100](v83, v89);

      MEMORY[0x23EED7100](0x696F6A2220200A2CLL, 0xEF203A22676E696ELL);
      MEMORY[0x23EED7100](v87, v71);

      MEMORY[0x23EED7100](0x74656D2220200A2CLL, 0xEC000000203A2261);
      MEMORY[0x23EED7100](v74, v80);

      MEMORY[0x23EED7100](0x7265702220200A2CLL, 0xEC000000203A2266);
      MEMORY[0x23EED7100](v76, v78);

      MEMORY[0x23EED7100](0x6576652220200A2CLL, 0xEE00203A2273746ELL);
      MEMORY[0x23EED7100](countAndFlagsBits, object);

      MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8A6DC0);
      MEMORY[0x23EED7100](v93, v70);

      MEMORY[0x23EED7100](32010, 0xE200000000000000);
      sub_23C595090(v65, v102);
      sub_23C595090(v75, v79);
      sub_23C595090(v81, v82);
      sub_23C595090(v84, v85);
      sub_23C595090(v91, v90);
      v10 = v98;
      v3 = v99;
      sub_23C595090(v96, v95);
    }
  }

  v47 = v10;
  v48 = v3;
  result._object = v48;
  result._countAndFlagsBits = v47;
  return result;
}

double BiomeEventGraph.makeDescription(includeEvents:includeEventIds:)@<D0>(char a1@<W0>, int a2@<W1>, unint64_t *a3@<X8>)
{
  v30 = a2;
  v6 = type metadata accessor for BiomeEventGraph.SessionMeta(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9940, &qword_23C873DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873CF0;
  *(inited + 32) = 0x697263736E617274;
  *(inited + 40) = 0xEA00000000007470;
  v10 = *(sub_23C59ACE8() + 16);

  *(inited + 48) = v10;
  *(inited + 56) = 0x7274656D656C6574;
  *(inited + 64) = 0xE900000000000079;
  v11 = *(sub_23C59B4E4() + 16);

  *(inited + 72) = v11;
  *(inited + 80) = 1718379891;
  *(inited + 88) = 0xE400000000000000;
  v12 = sub_23C59AA64();
  if (v12 >> 62)
  {
    v13 = sub_23C871C34();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(inited + 96) = v13;
  *(inited + 104) = 6907495;
  *(inited + 112) = 0xE300000000000000;
  v14 = *(sub_23C59B0C8() + 16);

  *(inited + 120) = v14;
  v29 = sub_23C59985C(inited, &qword_27E1F9C80, &unk_23C874D60);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9948, &unk_23C873E00);
  swift_arrayDestroy();
  v15 = BiomeEventGraph.extractors()();
  BiomeEventGraph.joiningIds()(&v32);
  v16 = v32;
  BiomeEventGraph.meta()(v8);
  v17 = OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___telemetryEvents;

  v19 = sub_23C614D24(v18);

  if (a1)
  {
    v20 = *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___selfEvents);
    v21 = *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents);
    v22 = *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___gfiEvents);
    v23 = *(v3 + v17);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
    v22 = MEMORY[0x277D84F90];
    v21 = MEMORY[0x277D84F90];
    v20 = MEMORY[0x277D84F90];
  }

  BiomeEventGraph.eventIdsDescription(includeEventIds:)(v30 & 1, v31);
  *a3 = v29;
  a3[1] = v15;
  a3[2] = v16;
  v24 = type metadata accessor for BiomeEventGraph.SessionDescription(0);
  sub_23C5983E4(v8, a3 + v24[7], type metadata accessor for BiomeEventGraph.SessionMeta);
  *(a3 + v24[8]) = v19;
  v25 = (a3 + v24[9]);
  *v25 = v20;
  v25[1] = v21;
  v25[2] = v22;
  v25[3] = v23;
  v26 = (a3 + v24[10]);
  result = *v31;
  v28 = v31[1];
  *v26 = v31[0];
  v26[1] = v28;
  return result;
}

uint64_t BiomeEventGraph.extractors()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v97 = &v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v88 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v98 = &v87 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v87 - v11;
  v13 = type metadata accessor for TranscriptProtoEvent(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = v0;
  v17 = sub_23C59ACE8();
  v18 = *(v17 + 16);
  if (!v18)
  {

    v58 = MEMORY[0x277D84F90];
LABEL_28:
    v59 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = v59;
    sub_23C5948D8(v58, 0xD000000000000012, 0x800000023C8A6DE0, isUniquelyReferenced_nonNull_native, sub_23C643C20, sub_23C63E0D4, sub_23C64BCC8);
    v102 = v108;
    v61 = sub_23C59B900();
    v44 = v61;
    if (v61 >> 62)
    {
      goto LABEL_59;
    }

    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v62)
    {
      goto LABEL_60;
    }

    goto LABEL_30;
  }

  v90 = v4;
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v87 = v17;
  v20 = v17 + v19;
  v95 = MEMORY[0x277D84F90];
  v21 = *(v13 + 44);
  v101 = *(v14 + 72);
  v102 = v21;
  v89 = xmmword_23C873D00;
  v22 = v97;
  v96 = v16;
  while (1)
  {
    *&v103 = v18;
    sub_23C594F64(v20, v16, type metadata accessor for TranscriptProtoEvent);
    sub_23C5855B0(v16 + v102, v22, &qword_27E1F9950, &unk_23C87CFF0);
    v26 = type metadata accessor for TranscriptProtoPayload(0);
    v27 = *(*(v26 - 8) + 48);
    if (v27(v22, 1, v26) != 1)
    {
      break;
    }

    sub_23C585C34(v22, &qword_27E1F9950, &unk_23C87CFF0);
    v23 = type metadata accessor for TranscriptProtoPayloadEnum(0);
    v24 = v12;
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
LABEL_4:
    sub_23C585C34(v24, &qword_27E1F9958, &qword_23C873E10);
LABEL_5:
    v12 = v24;
    sub_23C594FCC(v16, type metadata accessor for TranscriptProtoEvent);
    v25 = v103;
LABEL_6:
    v20 += v101;
    v18 = v25 - 1;
    if (!v18)
    {

      v58 = v95;
      goto LABEL_28;
    }
  }

  v24 = v12;
  sub_23C5855B0(v22, v12, &qword_27E1F9958, &qword_23C873E10);
  sub_23C594FCC(v22, type metadata accessor for TranscriptProtoPayload);
  v28 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v29 = *(v28 - 8);
  v100 = *(v29 + 48);
  v99 = v29 + 48;
  if (v100(v12, 1, v28) == 1)
  {
    goto LABEL_4;
  }

  sub_23C5855B0(v12, v98, &qword_27E1F9958, &qword_23C873E10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 20)
  {
    sub_23C594FCC(v98, type metadata accessor for TranscriptProtoPayloadEnum);
    v16 = v96;
    goto LABEL_4;
  }

  sub_23C594FCC(v98, type metadata accessor for TranscriptProtoPayloadEnum);
  sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
  v16 = v96;
  v31 = sub_23C86D0C0();
  v22 = v97;
  if (!v32)
  {
    goto LABEL_5;
  }

  v93 = v32;
  v94 = v31;
  v33 = v16[1];
  v92 = *v16;
  v34 = v90;
  sub_23C5855B0(v16 + v102, v90, &qword_27E1F9950, &unk_23C87CFF0);
  if (v27(v34, 1, v26) == 1)
  {

    v35 = v34;
    v36 = &qword_27E1F9950;
    v37 = &unk_23C87CFF0;
    goto LABEL_17;
  }

  v38 = v88;
  sub_23C5855B0(v34, v88, &qword_27E1F9958, &qword_23C873E10);

  sub_23C594FCC(v34, type metadata accessor for TranscriptProtoPayload);
  if (v100(v38, 1, v28) == 1)
  {
    v37 = &qword_23C873E10;
    v35 = v38;
    v36 = &qword_27E1F9958;
LABEL_17:
    sub_23C585C34(v35, v36, v37);
    v39 = 0;
    v100 = 0;
  }

  else
  {
    v39 = TranscriptProtoPayloadEnum.eventTypeString.getter();
    v100 = v40;
    sub_23C594FCC(v38, type metadata accessor for TranscriptProtoPayloadEnum);
  }

  v104 = 1954047348;
  v105 = 0xE400000000000000;
  v106 = v94;
  v107 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9970, &unk_23C873E30);
  v41 = sub_23C871E94();

  v42 = v104;
  v43 = v105;
  v45 = v106;
  v44 = v107;

  v46 = sub_23C5FF898(v42, v43);
  if (v47)
  {
    goto LABEL_57;
  }

  v41[(v46 >> 6) + 8] |= 1 << v46;
  v48 = (v41[6] + 16 * v46);
  *v48 = v42;
  v48[1] = v43;
  v49 = (v41[7] + 16 * v46);
  *v49 = v45;
  v49[1] = v44;
  v50 = v41[2];
  v51 = __OFADD__(v50, 1);
  v52 = v50 + 1;
  if (!v51)
  {
    v41[2] = v52;

    sub_23C585C34(&v104, &qword_27E1F9968, &unk_23C873E20);
    sub_23C594FCC(v16, type metadata accessor for TranscriptProtoEvent);
    v53 = v95;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_23C584700(0, *(v53 + 2) + 1, 1, v53);
    }

    v25 = v103;
    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_23C584700((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v95 = v53;
    v56 = &v53[56 * v55];
    *(v56 + 4) = v92;
    *(v56 + 5) = v33;
    v57 = v100;
    *(v56 + 6) = v39;
    *(v56 + 7) = v57;
    *(v56 + 4) = v89;
    *(v56 + 10) = v41;
    v22 = v97;
    goto LABEL_6;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  v62 = sub_23C871C34();
  if (v62)
  {
LABEL_30:
    v63 = 0;
    *&v103 = v44 & 0xC000000000000001;
    v64 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v103)
      {
        v65 = MEMORY[0x23EED7610](v63, v44);
      }

      else
      {
        if (v63 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v65 = *(v44 + 8 * v63 + 32);
      }

      v66 = v65;
      v67 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v68 = sub_23C6037E0();

      v69 = *(v68 + 16);
      v70 = *(v64 + 2);
      v71 = v70 + v69;
      if (__OFADD__(v70, v69))
      {
        goto LABEL_53;
      }

      v72 = swift_isUniquelyReferenced_nonNull_native();
      if (v72 && v71 <= *(v64 + 3) >> 1)
      {
        if (*(v68 + 16))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v70 <= v71)
        {
          v73 = v70 + v69;
        }

        else
        {
          v73 = v70;
        }

        v64 = sub_23C584700(v72, v73, 1, v64);
        if (*(v68 + 16))
        {
LABEL_46:
          if ((*(v64 + 3) >> 1) - *(v64 + 2) < v69)
          {
            goto LABEL_55;
          }

          swift_arrayInitWithCopy();

          if (v69)
          {
            v74 = *(v64 + 2);
            v51 = __OFADD__(v74, v69);
            v75 = v74 + v69;
            if (v51)
            {
              goto LABEL_56;
            }

            *(v64 + 2) = v75;
          }

          goto LABEL_32;
        }
      }

      if (v69)
      {
        goto LABEL_54;
      }

LABEL_32:
      ++v63;
      if (v67 == v62)
      {
        goto LABEL_61;
      }
    }
  }

LABEL_60:
  v64 = MEMORY[0x277D84F90];
LABEL_61:

  v76 = v102;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v108 = v76;
  sub_23C5948D8(v64, 0x52525341464C4553, 0xEF73747365757165, v77, sub_23C643C20, sub_23C63E0D4, sub_23C64BCC8);
  v78 = v108;
  if (*(*(v91 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents) + 16))
  {
    v79 = BiomeEventGraph.rawSessionId()();
    type metadata accessor for SpanGraph();
    swift_allocObject();

    sub_23C6581F8(v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9960, &qword_23C873E18);
    inited = swift_initStackObject();
    v103 = xmmword_23C873D10;
    *(inited + 16) = xmmword_23C873D10;
    *(inited + 32) = 0x706172476E617073;
    *(inited + 40) = 0xE900000000000068;
    *(inited + 48) = sub_23C659620();
    *(inited + 56) = v82;
    v83 = sub_23C5967FC(inited);
    swift_setDeallocating();
    sub_23C585C34(inited + 32, &qword_27E1F9968, &unk_23C873E20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9508, &qword_23C873A38);
    v84 = swift_allocObject();
    *(v84 + 16) = v103;
    *(v84 + 32) = v79;
    *(v84 + 48) = 0xD000000000000015;
    *(v84 + 56) = 0x800000023C8A6E00;
    *(v84 + 64) = 0;
    *(v84 + 72) = 0;
    *(v84 + 80) = v83;
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v108 = v78;
    sub_23C5948D8(v84, 0x706172476E617053, 0xE900000000000068, v85, sub_23C643C20, sub_23C63E0D4, sub_23C64BCC8);
    return v108;
  }

  return v78;
}

uint64_t BiomeEventGraph.joiningIds()@<X0>(uint64_t *a1@<X8>)
{
  v160 = a1;
  v174 = sub_23C870B74();
  v163 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v168 = v158 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9280, &unk_23C8734C0);
  MEMORY[0x28223BE20](v3 - 8);
  v169 = v158 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9288, &unk_23C873E40);
  MEMORY[0x28223BE20](v5 - 8);
  v171 = v158 - v6;
  v175 = sub_23C871414();
  v164 = *(v175 - 8);
  v7 = MEMORY[0x28223BE20](v175);
  v183 = v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v173 = v158 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v158 - v11);
  v187 = sub_23C8715C4();
  v162 = *(v187 - 1);
  v13 = MEMORY[0x28223BE20](v187);
  v181 = v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v180 = v158 - v15;
  v16 = sub_23C871604();
  v185 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v172 = v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v179 = v158 - v19;
  v20 = type metadata accessor for TranscriptProtoEvent(0);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v158 - v25;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9978, &qword_23C873E50);
  inited = swift_initStackObject();
  v166 = xmmword_23C873D20;
  *(inited + 16) = xmmword_23C873D20;
  *(inited + 32) = 0x6973736553776172;
  v177 = inited + 32;
  v178 = inited;
  *(inited + 40) = 0xEC00000064496E6FLL;
  v170 = v1;
  v28 = sub_23C59ACE8();
  v29 = v12;
  v30 = *(v28 + 16);
  v182 = v29;
  v186 = v16;
  v176 = v21;
  if (v30)
  {
    v31 = *(v21 + 80);
    v165 = v28;
    v32 = v28 + ((v31 + 32) & ~v31);
    v184 = *(v21 + 72);
    v33 = MEMORY[0x277D84F90];
    do
    {
      sub_23C594F64(v32, v26, type metadata accessor for TranscriptProtoEvent);
      v35 = *(v26 + 2);
      v34 = *(v26 + 3);

      sub_23C594FCC(v26, type metadata accessor for TranscriptProtoEvent);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_23C5844DC(0, *(v33 + 2) + 1, 1, v33);
      }

      v37 = *(v33 + 2);
      v36 = *(v33 + 3);
      if (v37 >= v36 >> 1)
      {
        v33 = sub_23C5844DC((v36 > 1), v37 + 1, 1, v33);
      }

      *(v33 + 2) = v37 + 1;
      v38 = &v33[16 * v37];
      *(v38 + 4) = v35;
      *(v38 + 5) = v34;
      v32 += v184;
      --v30;
    }

    while (v30);

    v16 = v186;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v40 = v16;
  v41 = 0;
  v42 = *(v33 + 2);
  v43 = v33 + 40;
  v44 = MEMORY[0x277D84F90];
LABEL_11:
  v45 = &v43[16 * v41];
  while (1)
  {
    if (v42 == v41)
    {

      v52 = sub_23C596984(v44);

      v53 = v178;
      *(v178 + 48) = v52;
      *(v53 + 56) = 0x6552746E65696C63;
      *(v53 + 64) = 0xEF64497473657571;
      result = *(v170 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents);
      v54 = *(result + 16);
      if (v54)
      {
        v55 = result + ((*(v176 + 80) + 32) & ~*(v176 + 80));
        v56 = *(v176 + 72);
        v184 = *(v170 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents);

        v57 = MEMORY[0x277D84F90];
        do
        {
          sub_23C594F64(v55, v24, type metadata accessor for TranscriptProtoEvent);
          v59 = *(v24 + 4);
          v58 = *(v24 + 5);

          sub_23C594FCC(v24, type metadata accessor for TranscriptProtoEvent);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_23C5844DC(0, *(v57 + 2) + 1, 1, v57);
          }

          v61 = *(v57 + 2);
          v60 = *(v57 + 3);
          if (v61 >= v60 >> 1)
          {
            v57 = sub_23C5844DC((v60 > 1), v61 + 1, 1, v57);
          }

          *(v57 + 2) = v61 + 1;
          v62 = &v57[16 * v61];
          *(v62 + 4) = v59;
          *(v62 + 5) = v58;
          v55 += v56;
          --v54;
        }

        while (v54);

        v63 = v186;
      }

      else
      {
        v57 = MEMORY[0x277D84F90];
        v63 = v40;
      }

      v64 = 0;
      v65 = *(v57 + 2);
      v66 = MEMORY[0x277D84F90];
LABEL_32:
      v67 = &v57[16 * v64 + 40];
      while (v65 != v64)
      {
        if (v64 >= *(v57 + 2))
        {
          goto LABEL_95;
        }

        ++v64;
        v69 = *(v67 - 1);
        v68 = *v67;
        v67 += 16;
        v70 = HIBYTE(v68) & 0xF;
        if ((v68 & 0x2000000000000000) == 0)
        {
          v70 = v69 & 0xFFFFFFFFFFFFLL;
        }

        if (v70)
        {

          result = swift_isUniquelyReferenced_nonNull_native();
          v188 = v66;
          if ((result & 1) == 0)
          {
            result = sub_23C592B40(0, *(v66 + 16) + 1, 1);
            v66 = v188;
          }

          v72 = *(v66 + 16);
          v71 = *(v66 + 24);
          if (v72 >= v71 >> 1)
          {
            result = sub_23C592B40((v71 > 1), v72 + 1, 1);
            v66 = v188;
          }

          *(v66 + 16) = v72 + 1;
          v73 = v66 + 16 * v72;
          *(v73 + 32) = v69;
          *(v73 + 40) = v68;
          v63 = v186;
          goto LABEL_32;
        }
      }

      v74 = sub_23C596984(v66);

      v75 = v178;
      *(v178 + 72) = v74;
      v159 = sub_23C598564(v75, &unk_27E1FBE20, &qword_23C874D40);
      swift_setDeallocating();
      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9980, &qword_23C873E58);
      swift_arrayDestroy();
      v76 = swift_initStackObject();
      *(v76 + 32) = 0xD000000000000017;
      v158[2] = v76 + 32;
      *(v76 + 16) = v166;
      *(v76 + 40) = 0x800000023C8A6E20;
      v77 = sub_23C59B0C8();
      v78 = *(v77 + 16);
      v161 = v76;
      if (v78)
      {
        v79 = *(v185 + 16);
        v80 = *(v185 + 80);
        v158[1] = v77;
        v81 = v77 + ((v80 + 32) & ~v80);
        v177 = *(v185 + 72);
        v178 = v79;
        v176 = v162 + 8;
        v184 = (v185 + 16);
        v82 = (v185 + 8);
        v83 = MEMORY[0x277D84F90];
        do
        {
          v85 = v179;
          (v178)(v179, v81, v63);
          v86 = v63;
          v87 = v180;
          sub_23C8715D4();
          v88 = sub_23C8715A4();
          v90 = v89;
          v91 = v87;
          v63 = v86;
          (*v176)(v91, v187);
          (*v82)(v85, v86);
          if (v90)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v83 = sub_23C5844DC(0, *(v83 + 2) + 1, 1, v83);
            }

            v93 = *(v83 + 2);
            v92 = *(v83 + 3);
            if (v93 >= v92 >> 1)
            {
              v83 = sub_23C5844DC((v92 > 1), v93 + 1, 1, v83);
            }

            *(v83 + 2) = v93 + 1;
            v84 = &v83[16 * v93];
            *(v84 + 4) = v88;
            *(v84 + 5) = v90;
            v63 = v186;
          }

          v81 += v177;
          --v78;
        }

        while (v78);

        v76 = v161;
      }

      else
      {

        v83 = MEMORY[0x277D84F90];
      }

      v94 = sub_23C596984(v83);

      *(v76 + 48) = v94;
      *(v76 + 56) = 0xD000000000000026;
      *(v76 + 64) = 0x800000023C8A6E40;
      v95 = *(v170 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___gfiEvents);
      v96 = *(v95 + 16);
      if (v96)
      {
        v184 = *(v185 + 16);
        v185 += 16;
        v97 = v95 + ((*(v185 + 64) + 32) & ~*(v185 + 64));
        v98 = *(v185 + 56);
        v179 = (v162 + 8);
        v180 = v98;
        v177 = v185 - 8;
        v178 = v163 + 48;
        v176 = v163 + 8;
        v162 = v95;

        v99 = MEMORY[0x277D84F90];
        v100 = v174;
        v101 = v172;
        do
        {
          (v184)(v101, v97, v63);
          v102 = v181;
          sub_23C8715D4();
          v103 = v182;
          sub_23C8715B4();
          (*v179)(v102, v187);
          if ((*v178)(v103, 1, v100) == 1)
          {
            (*v177)(v101, v63);
            sub_23C585C34(v103, &qword_27E1F92A0, &qword_23C8734E0);
          }

          else
          {
            v104 = v103;
            v105 = sub_23C870B04();
            v106 = v100;
            v108 = v107;
            (*v177)(v101, v63);
            (*v176)(v104, v106);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v99 = sub_23C5844DC(0, *(v99 + 2) + 1, 1, v99);
            }

            v110 = *(v99 + 2);
            v109 = *(v99 + 3);
            if (v110 >= v109 >> 1)
            {
              v99 = sub_23C5844DC((v109 > 1), v110 + 1, 1, v99);
            }

            *(v99 + 2) = v110 + 1;
            v111 = &v99[16 * v110];
            *(v111 + 4) = v105;
            *(v111 + 5) = v108;
            v100 = v174;
            v63 = v186;
            v101 = v172;
          }

          v97 += v180;
          --v96;
        }

        while (v96);

        v76 = v161;
      }

      else
      {
        v99 = MEMORY[0x277D84F90];
      }

      v112 = sub_23C596984(v99);

      *(v76 + 72) = v112;
      v180 = sub_23C598564(v76, &unk_27E1FBE20, &qword_23C874D40);
      swift_setDeallocating();
      swift_arrayDestroy();
      v113 = swift_initStackObject();
      *(v113 + 16) = v166;
      *(v113 + 32) = 0x496E6F6973736573;
      v179 = (v113 + 32);
      *(v113 + 40) = 0xE900000000000064;
      v114 = sub_23C59B4E4();
      v115 = *(v114 + 16);
      v116 = v175;
      v117 = v173;
      v181 = v113;
      if (!v115)
      {

        v141 = MEMORY[0x277D84F90];
LABEL_82:
        v142 = sub_23C596984(v141);

        *(v113 + 48) = v142;
        *(v113 + 56) = 0x49747865746E6F63;
        *(v113 + 64) = 0xE900000000000064;
        v143 = *(v170 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___telemetryEvents);
        v144 = *(v143 + 16);
        if (v144)
        {
          v145 = *(v164 + 16);
          v146 = v143 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
          v186 = *(v164 + 72);
          v187 = v145;
          v147 = (v164 + 8);
          v185 = v143;

          v148 = MEMORY[0x277D84F90];
          do
          {
            v149 = v183;
            v187(v183, v146, v116);
            v150 = IntelligenceFlowTelemetry.contextId()();
            (*v147)(v149, v116);
            if (v150.value._object)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v148 = sub_23C5844DC(0, *(v148 + 2) + 1, 1, v148);
              }

              v152 = *(v148 + 2);
              v151 = *(v148 + 3);
              if (v152 >= v151 >> 1)
              {
                v148 = sub_23C5844DC((v151 > 1), v152 + 1, 1, v148);
              }

              *(v148 + 2) = v152 + 1;
              *&v148[16 * v152 + 32] = v150;
              v116 = v175;
            }

            v146 += v186;
            --v144;
          }

          while (v144);

          v113 = v181;
        }

        else
        {
          v148 = MEMORY[0x277D84F90];
        }

        v153 = sub_23C596984(v148);

        *(v113 + 72) = v153;
        v154 = sub_23C598564(v113, &unk_27E1FBE20, &qword_23C874D40);
        swift_setDeallocating();
        swift_arrayDestroy();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9988, &qword_23C873E60);
        v155 = swift_initStackObject();
        *(v155 + 32) = 0x697263736E617274;
        *(v155 + 16) = xmmword_23C873CF0;
        *(v155 + 40) = 0xEA00000000007470;
        *(v155 + 48) = v159;
        *(v155 + 56) = 0x7274656D656C6574;
        *(v155 + 64) = 0xE900000000000079;
        *(v155 + 72) = v154;
        *(v155 + 80) = 6907495;
        v156 = v180;
        *(v155 + 88) = 0xE300000000000000;
        *(v155 + 96) = v156;
        *(v155 + 104) = 1718379891;
        *(v155 + 112) = 0xE400000000000000;
        *(v155 + 120) = BiomeEventGraph.selfIds()(v155);
        v157 = sub_23C598564(v155, &qword_27E1F9C60, &qword_23C874D38);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9990, &qword_23C873E68);
        result = swift_arrayDestroy();
        *v160 = v157;
        return result;
      }

      v186 = *(v164 + 16);
      v118 = (*(v164 + 80) + 32) & ~*(v164 + 80);
      v178 = v114;
      v119 = v114 + v118;
      v182 = (v163 + 8);
      v120 = (v164 + 8);
      v187 = (v164 + 16);
      v121 = *(v164 + 72);
      v184 = MEMORY[0x277D84F90];
      v185 = v121;
      v122 = v169;
      (v186)(v173, v119, v175);
      while (1)
      {
        sub_23C8713E4();
        v126 = sub_23C8713D4();
        v127 = *(v126 - 8);
        if ((*(v127 + 48))(v122, 1, v126) == 1)
        {
          break;
        }

        v128 = v171;
        sub_23C8713B4();
        v129 = v128;
        (*(v127 + 8))(v122, v126);
        v130 = sub_23C871434();
        v131 = *(v130 - 8);
        if ((*(v131 + 48))(v128, 1, v130) == 1)
        {
          v117 = v173;
          (*v120)(v173, v116);
          v123 = v129;
          v124 = &qword_27E1F9288;
          v125 = &unk_23C873E40;
          goto LABEL_69;
        }

        v132 = v168;
        sub_23C871424();
        (*(v131 + 8))(v128, v130);
        v133 = sub_23C870B04();
        v135 = v134;
        (*v182)(v132, v174);
        v117 = v173;
        (*v120)(v173, v116);
        v136 = v184;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v136 = sub_23C5844DC(0, *(v136 + 2) + 1, 1, v136);
        }

        v138 = *(v136 + 2);
        v137 = *(v136 + 3);
        v184 = v136;
        v122 = v169;
        if (v138 >= v137 >> 1)
        {
          v184 = sub_23C5844DC((v137 > 1), v138 + 1, 1, v184);
        }

        v139 = v184;
        *(v184 + 2) = v138 + 1;
        v140 = &v139[16 * v138];
        *(v140 + 4) = v133;
        *(v140 + 5) = v135;
        v116 = v175;
LABEL_70:
        v119 += v185;
        if (!--v115)
        {

          v113 = v181;
          v141 = v184;
          goto LABEL_82;
        }

        (v186)(v117, v119, v116);
      }

      (*v120)(v117, v116);
      v123 = v122;
      v124 = &qword_27E1F9280;
      v125 = &unk_23C8734C0;
LABEL_69:
      sub_23C585C34(v123, v124, v125);
      goto LABEL_70;
    }

    if (v41 >= *(v33 + 2))
    {
      break;
    }

    ++v41;
    v47 = *(v45 - 1);
    v46 = *v45;
    v45 += 16;
    v48 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v48 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v48)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v188 = v44;
      v184 = v43;
      if ((result & 1) == 0)
      {
        result = sub_23C592B40(0, *(v44 + 16) + 1, 1);
        v44 = v188;
      }

      v50 = *(v44 + 16);
      v49 = *(v44 + 24);
      if (v50 >= v49 >> 1)
      {
        result = sub_23C592B40((v49 > 1), v50 + 1, 1);
        v44 = v188;
      }

      *(v44 + 16) = v50 + 1;
      v51 = v44 + 16 * v50;
      *(v51 + 32) = v47;
      *(v51 + 40) = v46;
      v40 = v186;
      v43 = v184;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

void *BiomeEventGraph.meta()@<X0>(char *a1@<X8>)
{
  v3 = sub_23C870AE4();
  v54 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &v52 - v7;
  v59 = v1;
  v8 = sub_23C59A99C();
  v9 = v8;
  v55 = v3;
  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_70:
    v11 = sub_23C871C34();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = v6;
  v56 = a1;
  if (!v11)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v6 = 0;
  v12 = MEMORY[0x277D84F90];
  while (2)
  {
    v57 = v12;
    v13 = v6;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x23EED7610](v13, v9);
      }

      else
      {
        if (v13 >= *(v10 + 16))
        {
          goto LABEL_67;
        }

        v16 = *(v9 + 8 * v13 + 32);
      }

      a1 = v16;
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (*&v16[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent])
      {

        result = sub_23C870CA4();
        if (!result)
        {
          __break(1u);
LABEL_73:
          __break(1u);
          return result;
        }

        v18 = result;

        ObjectType = swift_getObjectType();

        if (ObjectType == sub_23C596DCC())
        {

          goto LABEL_7;
        }
      }

      v14 = *&a1[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp];
      v15 = a1[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp + 8];

      if ((v15 & 1) == 0)
      {
        break;
      }

LABEL_7:
      ++v13;
      if (v6 == v11)
      {
        v12 = v57;
        goto LABEL_25;
      }
    }

    v12 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_23C5845FC(0, *(v12 + 2) + 1, 1, v12);
    }

    v21 = *(v12 + 2);
    v20 = *(v12 + 3);
    a1 = (v21 + 1);
    if (v21 >= v20 >> 1)
    {
      v12 = sub_23C5845FC((v20 > 1), v21 + 1, 1, v12);
    }

    *(v12 + 2) = a1;
    *&v12[8 * v21 + 32] = v14;
    if (v6 != v11)
    {
      continue;
    }

    break;
  }

LABEL_25:

  v22 = *(v12 + 2);
  if (v22)
  {
    v23 = *(v12 + 4);
    v24 = v22 - 1;
    a1 = v59;
    if (v24)
    {
      v25 = (v12 + 40);
      do
      {
        v26 = *v25++;
        v27 = v26;
        if (v26 < v23)
        {
          v23 = v27;
        }

        --v24;
      }

      while (v24);
    }

    sub_23C870A54();
  }

  else
  {

    a1 = v59;
    sub_23C870AB4();
  }

  v28 = *&a1[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___events];
  v10 = v28 & 0xFFFFFFFFFFFFFF8;
  if (v28 >> 62)
  {
    v29 = sub_23C871C34();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v29)
  {
    v6 = 0;
    v9 = v28 & 0xC000000000000001;
    v30 = MEMORY[0x277D84F90];
LABEL_37:
    v57 = v30;
    v31 = v6;
    while (1)
    {
      if (v9)
      {
        v34 = MEMORY[0x23EED7610](v31, v28);
      }

      else
      {
        if (v31 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v34 = *(v28 + 8 * v31 + 32);
      }

      a1 = v34;
      v6 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (!*&v34[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent])
      {
        goto LABEL_38;
      }

      result = sub_23C870CA4();
      if (!result)
      {
        goto LABEL_73;
      }

      v35 = result;

      v36 = swift_getObjectType();

      if (v36 == sub_23C596DCC())
      {
      }

      else
      {
LABEL_38:
        v32 = *&a1[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp];
        v33 = a1[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp + 8];

        if ((v33 & 1) == 0)
        {
          v30 = v57;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_23C5845FC(0, *(v30 + 2) + 1, 1, v30);
          }

          v38 = *(v30 + 2);
          v37 = *(v30 + 3);
          a1 = (v38 + 1);
          if (v38 >= v37 >> 1)
          {
            v30 = sub_23C5845FC((v37 > 1), v38 + 1, 1, v30);
          }

          *(v30 + 2) = a1;
          *&v30[8 * v38 + 32] = v32;
          if (v6 != v29)
          {
            goto LABEL_37;
          }

          goto LABEL_57;
        }
      }

      ++v31;
      if (v6 == v29)
      {
        v30 = v57;
        goto LABEL_57;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_57:

  v39 = *(v30 + 2);
  if (v39)
  {
    v40 = *(v30 + 4);
    v41 = v39 - 1;
    v43 = v55;
    v42 = v56;
    v45 = v53;
    v44 = v54;
    if (v41)
    {
      v46 = (v30 + 40);
      do
      {
        v47 = *v46++;
        v48 = v47;
        if (v40 < v47)
        {
          v40 = v48;
        }

        --v41;
      }

      while (v41);
    }

    sub_23C870A54();
  }

  else
  {

    v45 = v53;
    sub_23C870AB4();
    v43 = v55;
    v42 = v56;
    v44 = v54;
  }

  v49 = BiomeEventGraph.rawSessionId()();
  v50 = *(v44 + 32);
  v50(v42, v58, v43);
  v51 = type metadata accessor for BiomeEventGraph.SessionMeta(0);
  result = (v50)(&v42[*(v51 + 20)], v45, v43);
  *&v42[*(v51 + 24)] = v49;
  return result;
}

uint64_t BiomeEventGraph.perf()@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23C59B4E4();
  v4 = sub_23C614D24(v3);

  *a2 = v4;
  return result;
}

uint64_t BiomeEventGraph.eventsDescription(includeEvents:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_23C59AA64();
    v4 = sub_23C59ACE8();
    v5 = sub_23C59B0C8();
    result = sub_23C59B4E4();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
    v5 = MEMORY[0x277D84F90];
    result = MEMORY[0x277D84F90];
  }

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = result;
  return result;
}

uint64_t BiomeEventGraph.eventIdsDescription(includeEventIds:)@<X0>(char a1@<W0>, char **a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9280, &unk_23C8734C0);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v91 - v6;
  v100 = sub_23C8715C4();
  v7 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23C871414();
  v109 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v102 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoEvent(0);
  v104 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = sub_23C871604();
  v108 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v107 = &v91 - v21;
  result = MEMORY[0x28223BE20](v20);
  v24 = &v91 - v23;
  if (a1)
  {
    v103 = v7;
    v94 = v2;
    v25 = sub_23C59AA64();
    v26 = v25;
    if (v25 >> 62)
    {
LABEL_64:
      v106 = v26 & 0xFFFFFFFFFFFFFF8;
      v27 = sub_23C871C34();
    }

    else
    {
      v106 = v25 & 0xFFFFFFFFFFFFFF8;
      v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v96 = v19;
    v97 = v9;
    v101 = v10;
    v93 = a2;
    if (v27)
    {
      a2 = 0;
      v105 = (v26 & 0xC000000000000001);
      v95 = MEMORY[0x277D84F90];
      do
      {
        v9 = a2;
        while (1)
        {
          if (v105)
          {
            v10 = MEMORY[0x23EED7610](v9, v26);
            a2 = (v9 + 1);
            if (__OFADD__(v9, 1))
            {
              goto LABEL_62;
            }
          }

          else
          {
            if (v9 >= *(v106 + 16))
            {
              goto LABEL_63;
            }

            v10 = *(v26 + 8 * v9 + 32);

            a2 = (v9 + 1);
            if (__OFADD__(v9, 1))
            {
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }
          }

          v19 = v27;
          sub_23C870CC4();
          v28 = sub_23C870B74();
          v29 = *(v28 - 8);
          if ((*(v29 + 48))(v24, 1, v28) != 1)
          {
            break;
          }

          sub_23C585C34(v24, &qword_27E1F92A0, &qword_23C8734E0);
          ++v9;
          if (a2 == v27)
          {
            goto LABEL_25;
          }
        }

        v30 = sub_23C870B04();
        v32 = v31;

        (*(v29 + 8))(v24, v28);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v33 = v95;
        }

        else
        {
          v33 = sub_23C5844DC(0, *(v95 + 2) + 1, 1, v95);
        }

        v35 = *(v33 + 2);
        v34 = *(v33 + 3);
        v10 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v33 = sub_23C5844DC((v34 > 1), v35 + 1, 1, v33);
        }

        *(v33 + 2) = v10;
        v95 = v33;
        v36 = &v33[16 * v35];
        *(v36 + 4) = v30;
        *(v36 + 5) = v32;
        v27 = v19;
      }

      while (a2 != v19);
    }

    else
    {
      v95 = MEMORY[0x277D84F90];
    }

LABEL_25:

    v41 = sub_23C59ACE8();
    v42 = *(v41 + 16);
    v43 = v100;
    if (v42)
    {
      v111 = MEMORY[0x277D84F90];
      sub_23C592B40(0, v42, 0);
      v38 = v111;
      v44 = *(v104 + 80);
      v106 = v41;
      v45 = v41 + ((v44 + 32) & ~v44);
      v46 = *(v104 + 72);
      do
      {
        sub_23C594F64(v45, v14, type metadata accessor for TranscriptProtoEvent);
        v48 = *v14;
        v47 = v14[1];

        sub_23C594FCC(v14, type metadata accessor for TranscriptProtoEvent);
        v111 = v38;
        v50 = *(v38 + 16);
        v49 = *(v38 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_23C592B40((v49 > 1), v50 + 1, 1);
          v38 = v111;
        }

        *(v38 + 16) = v50 + 1;
        v51 = v38 + 16 * v50;
        *(v51 + 32) = v48;
        *(v51 + 40) = v47;
        v45 += v46;
        --v42;
      }

      while (v42);

      v43 = v100;
    }

    else
    {

      v38 = MEMORY[0x277D84F90];
    }

    v52 = sub_23C59B0C8();
    v53 = *(v52 + 16);
    v54 = v110;
    v55 = v97;
    if (v53)
    {
      v91 = v52;
      v92 = v38;
      v56 = *(v108 + 16);
      v57 = v52 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
      v104 = *(v108 + 72);
      v105 = v56;
      ++v103;
      v108 += 16;
      v58 = (v108 - 8);
      v106 = MEMORY[0x277D84F90];
      v60 = v98;
      v59 = v99;
      v56(v98, v57, v99);
      while (1)
      {
        sub_23C8715D4();
        v61 = v107;
        sub_23C8715B4();
        v62 = v61;
        (*v103)(v55, v43);
        v63 = sub_23C870B74();
        v64 = *(v63 - 8);
        if ((*(v64 + 48))(v62, 1, v63) == 1)
        {
          (*v58)(v60, v59);
          sub_23C585C34(v62, &qword_27E1F92A0, &qword_23C8734E0);
          v54 = v110;
        }

        else
        {
          v65 = sub_23C870B04();
          v67 = v66;
          (*v58)(v60, v59);
          (*(v64 + 8))(v62, v63);
          v68 = v106;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = sub_23C5844DC(0, *(v68 + 2) + 1, 1, v68);
          }

          v54 = v110;
          v70 = *(v68 + 2);
          v69 = *(v68 + 3);
          if (v70 >= v69 >> 1)
          {
            v68 = sub_23C5844DC((v69 > 1), v70 + 1, 1, v68);
          }

          *(v68 + 2) = v70 + 1;
          v106 = v68;
          v71 = &v68[16 * v70];
          *(v71 + 4) = v65;
          *(v71 + 5) = v67;
          v59 = v99;
          v43 = v100;
          v55 = v97;
          v60 = v98;
        }

        v57 += v104;
        if (!--v53)
        {
          break;
        }

        v105(v60, v57, v59);
      }

      v38 = v92;
    }

    else
    {

      v106 = MEMORY[0x277D84F90];
    }

    v72 = sub_23C59B4E4();
    v73 = *(v72 + 16);
    v74 = v101;
    if (v73)
    {
      v108 = *(v109 + 16);
      v75 = *(v109 + 80);
      v105 = v72;
      v76 = v72 + ((v75 + 32) & ~v75);
      v77 = (v109 + 8);
      v40 = MEMORY[0x277D84F90];
      v109 += 16;
      v107 = *(v109 + 56);
      v78 = v102;
      (v108)(v102, v76, v101);
      while (1)
      {
        sub_23C8713E4();
        v79 = sub_23C8713D4();
        v80 = v74;
        v81 = *(v79 - 8);
        if ((*(v81 + 48))(v54, 1, v79) == 1)
        {
          (*v77)(v78, v80);
          sub_23C585C34(v54, &qword_27E1F9280, &unk_23C8734C0);
          v74 = v80;
        }

        else
        {
          v82 = v96;
          sub_23C8713C4();
          (*(v81 + 8))(v54, v79);
          v83 = sub_23C870B74();
          v84 = *(v83 - 8);
          if ((*(v84 + 48))(v82, 1, v83) == 1)
          {
            v74 = v101;
            v78 = v102;
            (*v77)(v102, v101);
            sub_23C585C34(v82, &qword_27E1F92A0, &qword_23C8734E0);
            v54 = v110;
          }

          else
          {
            v85 = sub_23C870B04();
            v87 = v86;
            (*v77)(v102, v101);
            (*(v84 + 8))(v82, v83);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_23C5844DC(0, *(v40 + 2) + 1, 1, v40);
            }

            v89 = *(v40 + 2);
            v88 = *(v40 + 3);
            if (v89 >= v88 >> 1)
            {
              v40 = sub_23C5844DC((v88 > 1), v89 + 1, 1, v40);
            }

            *(v40 + 2) = v89 + 1;
            v90 = &v40[16 * v89];
            *(v90 + 4) = v85;
            *(v90 + 5) = v87;
            v54 = v110;
            v74 = v101;
            v78 = v102;
          }
        }

        v76 += v107;
        if (!--v73)
        {
          break;
        }

        (v108)(v78, v76, v74);
      }
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    a2 = v93;
    v37 = v95;
    v39 = v106;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
    v38 = MEMORY[0x277D84F90];
    v39 = MEMORY[0x277D84F90];
    v40 = MEMORY[0x277D84F90];
  }

  *a2 = v37;
  a2[1] = v38;
  a2[2] = v39;
  a2[3] = v40;
  return result;
}

void *BiomeEventGraph.startTime()(uint64_t a1)
{
  v1 = sub_23C59A99C();
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_25:
    v4 = sub_23C871C34();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      while (1)
      {
        v25 = v6;
        v7 = v5;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x23EED7610](v7, v2);
          }

          else
          {
            if (v7 >= *(v3 + 16))
            {
              goto LABEL_24;
            }

            v10 = *(v2 + 8 * v7 + 32);
          }

          v11 = v10;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          if (*&v10[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent])
          {

            result = sub_23C870CA4();
            if (!result)
            {
              __break(1u);
              return result;
            }

            v13 = result;

            ObjectType = swift_getObjectType();

            if (ObjectType == sub_23C596DCC())
            {

              goto LABEL_6;
            }
          }

          v8 = *&v11[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp];
          v9 = v11[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp + 8];

          if ((v9 & 1) == 0)
          {
            break;
          }

LABEL_6:
          ++v7;
          if (v5 == v4)
          {
            v6 = v25;
            goto LABEL_27;
          }
        }

        v15 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_23C5845FC(0, *(v25 + 2) + 1, 1, v25);
        }

        v17 = *(v15 + 2);
        v16 = *(v15 + 3);
        v18 = v15;
        if (v17 >= v16 >> 1)
        {
          v18 = sub_23C5845FC((v16 > 1), v17 + 1, 1, v15);
        }

        *(v18 + 2) = v17 + 1;
        v6 = v18;
        *&v18[8 * v17 + 32] = v8;
        if (v5 == v4)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_27:

  v19 = *(v6 + 2);
  if (v19)
  {
    v20 = *(v6 + 4);
    v21 = v19 - 1;
    if (v21)
    {
      v22 = (v6 + 40);
      do
      {
        v23 = *v22++;
        v24 = v23;
        if (v23 < v20)
        {
          v20 = v24;
        }

        --v21;
      }

      while (v21);
    }

    return sub_23C870A54();
  }

  else
  {

    return sub_23C870AB4();
  }
}

void sub_23C5916F4(uint64_t a1)
{
  v41 = sub_23C870B74();
  v2 = *(v41 - 8);
  v3 = MEMORY[0x28223BE20](v41);
  v40 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v39 = v36 - v5;
  v43 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_23C871BF4();
    sub_23C870E34();
    sub_23C58ABD4(&qword_27E1F9B00, MEMORY[0x277D56708], MEMORY[0x277D85378]);
    sub_23C871A14();
    v6 = v47;
    v8 = v48;
    v7 = v49;
    v9 = v50;
    v43 = v46;
    if (v46 < 0)
    {
      v35 = sub_23C871C64();
      if (!v35)
      {
        goto LABEL_34;
      }

      v44 = v35;
      swift_dynamicCast();
      v42 = 0;
      v18 = v45;
      v12 = v7;
      v10 = v9;
      if (!v45)
      {
        goto LABEL_34;
      }

      goto LABEL_15;
    }

    if (v50)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = -1 << *(v43 + 32);
    v6 = v43 + 56;
    v8 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v9 = v15 & *(v43 + 56);

    v7 = 0;
    if (v9)
    {
LABEL_4:
      v10 = (v9 - 1) & v9;
      v11 = __clz(__rbit64(v9)) | (v7 << 6);
      v12 = v7;
      goto LABEL_14;
    }
  }

  v16 = v7;
  do
  {
    v12 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_36;
    }

    if (v12 >= ((v8 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v17 = *(v6 + 8 * v12);
    ++v16;
  }

  while (!v17);
  v10 = (v17 - 1) & v17;
  v11 = __clz(__rbit64(v17)) | (v12 << 6);
LABEL_14:
  v18 = *(*(v43 + 48) + 8 * v11);
  v42 = 1;
  if (!v18)
  {
LABEL_34:
    sub_23C56EF08(v43);
    return;
  }

LABEL_15:
  v36[1] = v8;
  v37 = v6;
  v19 = (v8 + 64) >> 6;
  v38 = (v2 + 8);
  if (!v42)
  {
    goto LABEL_22;
  }

LABEL_16:
  v20 = v12;
  v21 = v10;
  v22 = v12;
  if (v10)
  {
LABEL_20:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v43 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v24)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v26 = sub_23C870DF4();
      if (v26 == sub_23C870DF4())
      {
        v27 = v39;
        sub_23C870E24();
        v28 = v40;
        sub_23C870E24();
        v29 = MEMORY[0x23EED6420](v27, v28);
        v30 = *v38;
        v31 = v28;
        v32 = v41;
        (*v38)(v31, v41);
        v33 = v27;
        v6 = v37;
        v30(v33, v32);
        if (v29)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v34 = sub_23C870DF4();
        if (v34 < sub_23C870DF4())
        {
LABEL_30:

          v18 = v24;
          goto LABEL_27;
        }
      }

LABEL_27:
      v12 = v22;
      v10 = v23;
      if (v42)
      {
        goto LABEL_16;
      }

LABEL_22:
      v25 = sub_23C871C64();
      if (v25)
      {
        v44 = v25;
        sub_23C870E34();
        swift_dynamicCast();
        v24 = v45;
        v22 = v12;
        v23 = v10;
        if (v45)
        {
          continue;
        }
      }

      goto LABEL_34;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      goto LABEL_34;
    }

    v21 = *(v6 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_23C591B54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_23C591B98(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v11 = (*(a1 + 48) + 32 * v6);
    v26 = *v11;
    v27 = v11[1];
    v13 = v11[2];
    v12 = v11[3];

    v25 = a1;

    while (v7)
    {
      result = v25;
LABEL_17:
      v17 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v18 = (*(result + 48) + ((v5 << 11) | (32 * v17)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v23 = v21 == v13 && v22 == v12;
      if (v23 || (sub_23C872014()) && v19 == v26 && v20 == v27)
      {
        continue;
      }

      if (sub_23C872014())
      {

        v13 = v21;
        v12 = v22;
        v26 = v19;
        v27 = v20;
      }
    }

    result = v25;
    while (1)
    {
      v16 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v16 >= v8)
      {

        return v26;
      }

      v7 = *(v1 + 8 * v16);
      ++v5;
      if (v7)
      {
        v5 = v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v4)
    {
      v5 = v4 + 1;
      v10 = *(a1 + 64 + 8 * v4);
      v9 -= 64;
      ++v4;
      if (v10)
      {
        v7 = (v10 - 1) & v10;
        v6 = __clz(__rbit64(v10)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_23C591DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v17 = &v34 - v16;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 56);
  if (v20)
  {
    v36 = a2;
    v37 = v14;
    v21 = 0;
    v22 = __clz(__rbit64(v20));
    v23 = (v20 - 1) & v20;
    v24 = (v18 + 63) >> 6;
LABEL_9:
    v27 = *(a1 + 48);
    v35 = v15;
    v28 = *(v15 + 72);
    sub_23C594F64(v27 + v28 * v22, v13, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C5983E4(v13, v17, type metadata accessor for SiriConversationPublisher.GraphUUID);

    if (v23)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v30 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v30 >= v24)
      {

        v32 = v36;
        sub_23C5983E4(v17, v36, type metadata accessor for SiriConversationPublisher.GraphUUID);
        return (*(v35 + 56))(v32, 0, 1, v37);
      }

      v23 = *(a1 + 56 + 8 * v30);
      ++v21;
      if (v23)
      {
        while (1)
        {
          v31 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
          sub_23C594F64(*(a1 + 48) + (v31 | (v30 << 6)) * v28, v7, type metadata accessor for SiriConversationPublisher.GraphUUID);
          sub_23C5983E4(v7, v10, type metadata accessor for SiriConversationPublisher.GraphUUID);
          if (MEMORY[0x23EED6420](v10, v17))
          {
            sub_23C594FCC(v17, type metadata accessor for SiriConversationPublisher.GraphUUID);
            result = sub_23C5983E4(v10, v17, type metadata accessor for SiriConversationPublisher.GraphUUID);
            v21 = v30;
            if (!v23)
            {
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_23C594FCC(v10, type metadata accessor for SiriConversationPublisher.GraphUUID);
            v21 = v30;
            if (!v23)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v30 = v21;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v25 = 0;
    v24 = (v18 + 63) >> 6;
    while (v24 - 1 != v20)
    {
      v21 = v20 + 1;
      v26 = *(a1 + 64 + 8 * v20);
      v25 -= 64;
      ++v20;
      if (v26)
      {
        v36 = a2;
        v37 = v14;
        v23 = (v26 - 1) & v26;
        v22 = __clz(__rbit64(v26)) - v25;
        goto LABEL_9;
      }
    }

    v33 = *(v15 + 56);

    return v33(a2, 1, 1);
  }

  return result;
}

void *BiomeEventGraph.endTime()(uint64_t a1)
{
  v1 = sub_23C59A99C();
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_25:
    v4 = sub_23C871C34();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      while (1)
      {
        v25 = v6;
        v7 = v5;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x23EED7610](v7, v2);
          }

          else
          {
            if (v7 >= *(v3 + 16))
            {
              goto LABEL_24;
            }

            v10 = *(v2 + 8 * v7 + 32);
          }

          v11 = v10;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          if (*&v10[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent])
          {

            result = sub_23C870CA4();
            if (!result)
            {
              __break(1u);
              return result;
            }

            v13 = result;

            ObjectType = swift_getObjectType();

            if (ObjectType == sub_23C596DCC())
            {

              goto LABEL_6;
            }
          }

          v8 = *&v11[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp];
          v9 = v11[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp + 8];

          if ((v9 & 1) == 0)
          {
            break;
          }

LABEL_6:
          ++v7;
          if (v5 == v4)
          {
            v6 = v25;
            goto LABEL_27;
          }
        }

        v15 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_23C5845FC(0, *(v25 + 2) + 1, 1, v25);
        }

        v17 = *(v15 + 2);
        v16 = *(v15 + 3);
        v18 = v15;
        if (v17 >= v16 >> 1)
        {
          v18 = sub_23C5845FC((v16 > 1), v17 + 1, 1, v15);
        }

        *(v18 + 2) = v17 + 1;
        v6 = v18;
        *&v18[8 * v17 + 32] = v8;
        if (v5 == v4)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_27:

  v19 = *(v6 + 2);
  if (v19)
  {
    v20 = *(v6 + 4);
    v21 = v19 - 1;
    if (v21)
    {
      v22 = (v6 + 40);
      do
      {
        v23 = *v22++;
        v24 = v23;
        if (v20 < v23)
        {
          v20 = v24;
        }

        --v21;
      }

      while (v21);
    }

    return sub_23C870A54();
  }

  else
  {

    return sub_23C870AB4();
  }
}

Swift::String_optional __swiftcall BiomeEventGraph.rawSessionId()()
{
  v0 = type metadata accessor for TranscriptProtoEvent(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23C59ACE8();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v7 = *(v1 + 72);
    v8 = MEMORY[0x277D84F90];
    do
    {
      sub_23C594F64(v6, v3, type metadata accessor for TranscriptProtoEvent);
      v10 = *(v3 + 2);
      v9 = *(v3 + 3);

      sub_23C594FCC(v3, type metadata accessor for TranscriptProtoEvent);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_23C5844DC(0, *(v8 + 2) + 1, 1, v8);
      }

      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v8 = sub_23C5844DC((v11 > 1), v12 + 1, 1, v8);
      }

      *(v8 + 2) = v12 + 1;
      v13 = &v8[16 * v12];
      *(v13 + 4) = v10;
      *(v13 + 5) = v9;
      v6 += v7;
      --v5;
    }

    while (v5);

    if (*(v8 + 2))
    {
      goto LABEL_9;
    }

LABEL_11:
    v14 = 0;
    v15 = 0;
    goto LABEL_12;
  }

  v8 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_11;
  }

LABEL_9:
  v14 = *(v8 + 4);
  v15 = *(v8 + 5);

LABEL_12:

  v16 = v14;
  v17 = v15;
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

uint64_t BiomeEventGraph.sessionGraph()@<X0>(Swift::String_optional *a1@<X8>)
{
  v2 = BiomeEventGraph.rawSessionId()();
  v3 = sub_23C59ACE8();
  type metadata accessor for SpanGraph();
  swift_allocObject();
  sub_23C6581F8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9960, &qword_23C873E18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D10;
  *(inited + 32) = 0x706172476E617073;
  *(inited + 40) = 0xE900000000000068;
  *(inited + 48) = sub_23C659620();
  *(inited + 56) = v5;
  v6 = sub_23C5967FC(inited);
  swift_setDeallocating();
  sub_23C585C34(inited + 32, &qword_27E1F9968, &unk_23C873E20);

  *a1 = v2;
  a1[1].value._countAndFlagsBits = 0xD000000000000015;
  a1[1].value._object = 0x800000023C8A6E00;
  a1[2].value._countAndFlagsBits = 0;
  a1[2].value._object = 0;
  a1[3].value._countAndFlagsBits = v6;
  return result;
}

void *BiomeEventGraph.selfIds()(uint64_t a1)
{
  v1 = sub_23C59B900();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v18 = MEMORY[0x277D84F90];
    result = sub_23C592BC4(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v18;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EED7610](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = sub_23C6031E4();

      v18 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_23C592BC4((v10 > 1), v11 + 1, 1);
        v6 = v18;
      }

      ++v5;
      *(v6 + 16) = v11 + 1;
      *(v6 + 8 * v11 + 32) = v9;
    }

    while (v3 != v5);

    v12 = *(v6 + 16);
    if (!v12)
    {
      break;
    }

    while (1)
    {
      v13 = 0;
      v2 = 0;
      v14 = MEMORY[0x277D84F98];
      while (v13 < *(v6 + 16))
      {
        v15 = v13 + 1;
        v16 = *(v6 + 32 + 8 * v13);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v14;
        sub_23C596B20(v16, sub_23C5955E8, 0, isUniquelyReferenced_nonNull_native, &v18);

        v14 = v18;
        v13 = v15;
        if (v12 == v15)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      v3 = sub_23C871C34();
      if (v3)
      {
        break;
      }

LABEL_18:

      v6 = MEMORY[0x277D84F90];
      v12 = *(MEMORY[0x277D84F90] + 16);
      if (!v12)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_19:
  v14 = MEMORY[0x277D84F98];
LABEL_20:

  return v14;
}

void sub_23C592900(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23C870E34();
  v4 = sub_23C58ABD4(&qword_27E1F9B00, MEMORY[0x277D56708], MEMORY[0x277D85378]);
  v5 = 0;
  v12[1] = MEMORY[0x23EED72E0](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_23C64E050(v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_23C592A44(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23C59A6F0();
  result = MEMORY[0x23EED72E0](v2, &type metadata for MessageTypeWrapper, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_23C64E73C(&v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_23C592B40(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C592D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23C592B60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C5938A0(a1, a2, a3, *v3, &qword_27E1F9490, &qword_23C8739C0, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *sub_23C592BA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C593048(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23C592BC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C593C88(a1, a2, a3, *v3, &qword_27E1F9C58, &qword_23C874D30, &qword_27E1F97C0, &qword_23C873D68);
  *v3 = result;
  return result;
}

char *sub_23C592C04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C593298(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23C592C24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C5933B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23C592C44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C59360C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23C592C64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C593754(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23C592C84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C5938A0(a1, a2, a3, *v3, &qword_27E1F9AE0, &unk_23C874B50, type metadata accessor for EventTypeIdPair);
  *v3 = result;
  return result;
}

void *sub_23C592CC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C5938A0(a1, a2, a3, *v3, &unk_27E1F9420, &qword_23C8739B0, type metadata accessor for SiriConversationPublisher.GraphUUID);
  *v3 = result;
  return result;
}

void *sub_23C592D0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C593C88(a1, a2, a3, *v3, &qword_27E1F9C68, &qword_23C874D48, &qword_27E1F9C70, &qword_23C874D50);
  *v3 = result;
  return result;
}

void *sub_23C592D4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C5938A0(a1, a2, a3, *v3, &qword_27E1F94E8, &unk_23C874C40, type metadata accessor for TranscriptProtoEvent);
  *v3 = result;
  return result;
}

char *sub_23C592D90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94F8, &unk_23C87C000);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23C592F14(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AF0, &qword_23C874B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AF8, &unk_23C874B70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23C593048(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BA0, &qword_23C874C28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23C593154(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BA8, &unk_23C874C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BB0, &qword_23C87D000);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23C593298(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C78, &qword_23C874D58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23C5933B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9510, &qword_23C873A40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23C5934C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B10, &unk_23C874B90);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBDF0, &qword_23C87BEC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23C59360C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C30, &qword_23C874CE0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C38, &qword_23C874CE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23C593754(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C08, &unk_23C874CB0);
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

void *sub_23C5938A0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_23C593AA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_23C593C88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

_OWORD *sub_23C593DBC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23C5FF9C4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_23C642E3C();
      goto LABEL_7;
    }

    sub_23C63C9D0(v13, a3 & 1);
    v19 = sub_23C5FF9C4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_23C59A4C0(a2, v21);
      return sub_23C64272C(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_23C872064();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_23C59A4B0(a1, v17);
}

uint64_t sub_23C593F08(void *a1, char a2, double a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_23C5FFA08(a1);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a2 & 1) == 0)
  {
    if (v15 >= v13 && (a2 & 1) == 0)
    {
      v16 = result;
      sub_23C642FE0();
      result = v16;
      goto LABEL_8;
    }

    sub_23C63CC88(v13, a2 & 1);
    result = sub_23C5FFA08(a1);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_14:
      sub_23C870E34();
      result = sub_23C872064();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * result) = a3;
  }

  else
  {
    sub_23C6427A8(result, a1, v18, a3);

    return a1;
  }

  return result;
}

id sub_23C594024(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_23C5FFA08(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_23C64313C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_23C63CEF0(v13, a3 & 1);
    v8 = sub_23C5FFA08(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_23C870E34();
      sub_23C872064();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_23C6427EC(v8, a2, a1, v18);

  return a2;
}

uint64_t sub_23C594158(uint64_t *a1, char a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for EventTypeIdPair(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_23C5FFA4C(a1);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
  }

  else
  {
    v17 = v12;
    v18 = v11[3];
    if (v18 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v19 = *v4;
      if (v17)
      {
LABEL_8:
        *(v19[7] + 8 * v13) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v18 >= result && (a2 & 1) == 0)
    {
      result = sub_23C6432B0();
      goto LABEL_7;
    }

    sub_23C63D16C(result, a2 & 1);
    result = sub_23C5FFA4C(a1);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = result;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_23C594F64(a1, v10, type metadata accessor for EventTypeIdPair);
      return sub_23C64285C(v13, v10, v19, a3);
    }
  }

  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C5942CC(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_23C870B74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23C5FFB04(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *v4;
      if (v18)
      {
LABEL_8:
        *(v20[7] + 8 * v14) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v19 >= result && (a2 & 1) == 0)
    {
      result = sub_23C64372C();
      goto LABEL_7;
    }

    sub_23C63D934(result, a2 & 1);
    result = sub_23C5FFB04(a1);
    if ((v18 & 1) == (v21 & 1))
    {
      v14 = result;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v11, a1, v8);
      return sub_23C642940(v14, v11, v20, a3);
    }
  }

  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C594470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = v9;
  v16 = *v9;
  v18 = sub_23C5FFB88(a5, a6, a7, a8);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a9 & 1) == 0)
  {
    if (v23 >= v21 && (a9 & 1) == 0)
    {
      sub_23C643E14();
      goto LABEL_9;
    }

    sub_23C63E460(v21, a9 & 1);
    v24 = sub_23C5FFB88(a5, a6, a7, a8);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_9;
    }

LABEL_17:
    result = sub_23C872064();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = *v10;
  if (v22)
  {
    v27 = (v26[7] + 32 * v18);
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
    v27[3] = a4;
  }

  else
  {
    sub_23C642A44(v18, a5, a6, a7, a8, a1, a2, a3, a4, v26);
  }
}

uint64_t sub_23C59461C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_23C5FFB88(a1, a2, a3, a4);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = result;
      sub_23C643FB4();
      result = v23;
      goto LABEL_8;
    }

    sub_23C63E768(v20, a5 & 1);
    result = sub_23C5FFB88(a1, a2, a3, a4);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      result = sub_23C872064();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * result) = a6;
  }

  else
  {
    sub_23C642AA0(result, a1, a2, a3, a4, v25, a6);
  }

  return result;
}

uint64_t sub_23C594770(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_23C5FF898(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_23C6442B8();
      result = v19;
      goto LABEL_8;
    }

    sub_23C63ED18(v16, a3 & 1);
    result = sub_23C5FF898(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_23C872064();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
  }

  else
  {
    sub_23C642AEC(result, a1, a2, v21, a4);
  }

  return result;
}

uint64_t sub_23C5948D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_23C5FF898(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_23C5FF898(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_23C872064();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_23C594A44(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_23C5FFCB8(a1);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
  }

  else
  {
    v17 = v12;
    v18 = v11[3];
    if (v18 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v19 = *v4;
      if (v17)
      {
LABEL_8:
        *(v19[7] + 8 * v13) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v18 >= result && (a2 & 1) == 0)
    {
      result = sub_23C644B24();
      goto LABEL_7;
    }

    sub_23C63FF74(result, a2 & 1);
    result = sub_23C5FFCB8(a1);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = result;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_23C594F64(a1, v10, type metadata accessor for SiriConversationPublisher.GraphUUID);
      return sub_23C642B7C(v13, v10, v19, a3);
    }
  }

  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C594BB8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23C5FFCB8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_23C644D60();
      goto LABEL_7;
    }

    sub_23C64033C(v17, a3 & 1);
    v23 = sub_23C5FFCB8(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_23C594F64(a2, v11, type metadata accessor for SiriConversationPublisher.GraphUUID);
      return sub_23C642C5C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_23C872064();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + *(v9 + 72) * v14;

  return sub_23C598380(a1, v21);
}

_OWORD *sub_23C594D8C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23C5FF898(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23C645214();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23C640B38(v16, a4 & 1);
    v11 = sub_23C5FF898(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_23C872064();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_23C59A4B0(a1, v22);
  }

  else
  {
    sub_23C642DD0(v11, a2, a3, a1, v21);
  }
}

uint64_t (*sub_23C594EDC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EED7610](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_23C594F5C;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C594F64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C594FCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23C59502C()
{
  result = qword_27E1F98B0;
  if (!qword_27E1F98B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F98A8, &qword_23C8A6A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F98B0);
  }

  return result;
}

uint64_t sub_23C595090(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_23C5950E4()
{
  result = qword_27E1F98C8;
  if (!qword_27E1F98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F98C8);
  }

  return result;
}

uint64_t sub_23C595138(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F98A8, &qword_23C8A6A70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23C5951A4()
{
  result = qword_27E1F98F0;
  if (!qword_27E1F98F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F98E8, &qword_23C873DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F98F0);
  }

  return result;
}

unint64_t sub_23C595228()
{
  result = qword_27E1F9900;
  if (!qword_27E1F9900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F98F8, &qword_23C873DE8);
    sub_23C5952B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9900);
  }

  return result;
}

unint64_t sub_23C5952B4()
{
  result = qword_27E1F9908;
  if (!qword_27E1F9908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F9910, &qword_23C873DF0);
    sub_23C595338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9908);
  }

  return result;
}

unint64_t sub_23C595338()
{
  result = qword_27E1F9918;
  if (!qword_27E1F9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9918);
  }

  return result;
}

unint64_t sub_23C59538C()
{
  result = qword_27E1F9920;
  if (!qword_27E1F9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9920);
  }

  return result;
}

uint64_t sub_23C595400(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23C595438()
{
  result = qword_27E1F9930;
  if (!qword_27E1F9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9930);
  }

  return result;
}

unint64_t sub_23C59548C()
{
  result = qword_27E1F9938;
  if (!qword_27E1F9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9938);
  }

  return result;
}

void (*sub_23C5954E0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EED7610](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23C595560;
  }

  __break(1u);
  return result;
}

void (*sub_23C595568(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EED7610](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23C59A780;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5955E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

unint64_t sub_23C595658(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_23C871E94();
  v15 = *(a1 + 32);
  result = sub_23C5FF958(*(a1 + 32));
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v8 = (a1 + 48);
  v9 = v3 - 1;
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v15;
    *(v5[7] + 8 * result) = *(&v15 + 1);
    v10 = v5[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v5[2] = v12;
    if (!v9)
    {
      goto LABEL_8;
    }

    v13 = *v8++;
    v15 = v13;

    result = sub_23C5FF958(v13);
    --v9;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C595760(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_23C872014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_23C872014() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C656966 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23C872014();

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

uint64_t sub_23C595874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_23C872014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_23C872014() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973736553776172 && a2 == 0xEC00000064496E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_23C872014();

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

uint64_t sub_23C59598C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
  if (v4 || (sub_23C872014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xEA0000000000734ELL || (sub_23C872014() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49747865746E6F63 && a2 == 0xE900000000000064 || (sub_23C872014() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_23C872014() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_23C872014();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23C595B44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1718379891 && a2 == 0xE400000000000000;
  if (v3 || (sub_23C872014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470 || (sub_23C872014() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6907495 && a2 == 0xE300000000000000 || (sub_23C872014() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7274656D656C6574 && a2 == 0xE900000000000079)
  {

    return 3;
  }

  else
  {
    v6 = sub_23C872014();

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

unint64_t sub_23C595CB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD80, &unk_23C874B80);
    v3 = sub_23C871E94();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_23C5FFA08(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_23C595DD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD90, &unk_23C874C90);
    v3 = sub_23C871E94();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_23C5FFA08(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_23C595EC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BE0, &unk_23C874C80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD40, &unk_23C87BE30);
    v7 = sub_23C871E94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v9, v5, &qword_27E1F9BE0, &unk_23C874C80);
      result = sub_23C5FFB04(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23C870B74();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_23C5960B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BD0, &qword_23C874C70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BD8, &qword_23C874C78);
    v7 = sub_23C871E94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v9, v5, &qword_27E1F9BD0, &qword_23C874C70);
      result = sub_23C5FFB04(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23C870B74();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_23C596298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BC0, &unk_23C874C60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BC8, &unk_23C87BE50);
    v7 = sub_23C871E94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v9, v5, &qword_27E1F9BC0, &unk_23C874C60);
      result = sub_23C5FFA4C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for EventTypeIdPair(0);
      result = sub_23C5983E4(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for EventTypeIdPair);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_23C59647C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BB8, &qword_23C874C50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD70, &qword_23C874C58);
    v7 = sub_23C871E94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v9, v5, &qword_27E1F9BB8, &qword_23C874C50);
      result = sub_23C5FFA4C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for EventTypeIdPair(0);
      result = sub_23C5983E4(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for EventTypeIdPair);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

uint64_t sub_23C596660(uint64_t a1)
{
  v2 = sub_23C870B74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_23C58ABD4(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x23EED72E0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_23C64E07C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_23C5967FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9970, &unk_23C873E30);
    v3 = sub_23C871E94();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23C5FF898(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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

uint64_t sub_23C596910(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23EED72E0](v2, MEMORY[0x277D84D38], MEMORY[0x277D84D48]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_23C64E334(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_23C596984(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23EED72E0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_23C64E414(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_23C596A30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23C871E94();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = sub_23C5FFA08(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
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

uint64_t sub_23C596B20(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v46 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v38 = v6;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v45[0] = *v17;
    v45[1] = v18;
    v45[2] = v19;

    a2(&v42, v45);

    v20 = v42;
    v21 = v43;
    v22 = v44;
    v23 = *v46;
    v25 = sub_23C5FF898(v42, v43);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_25;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((v41 & 1) == 0)
      {
        sub_23C643C34();
      }
    }

    else
    {
      sub_23C63E0E8(v28, v41 & 1);
      v30 = sub_23C5FF898(v20, v21);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v25 = v30;
    }

    v9 &= v9 - 1;
    v32 = *v46;
    if (v29)
    {
      v12 = *(v32[7] + 8 * v25);

      v13 = sub_23C6320F4(v22, v12);

      *(v32[7] + 8 * v25) = v13;
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v32[6] + 16 * v25);
      *v33 = v20;
      v33[1] = v21;
      *(v32[7] + 8 * v25) = v22;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v11 = v14;
    v6 = v38;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_23C56EF08(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_23C872064();
  __break(1u);
  return result;
}

unint64_t sub_23C596DCC()
{
  result = qword_27E1F9998;
  if (!qword_27E1F9998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1F9998);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23C596E2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_23C596E88(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23C596F14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23C596F5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23C596FF0(uint64_t a1)
{
  sub_23C870AE4();
  if (v1 <= 0x3F)
  {
    sub_23C597074();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C597074()
{
  if (!qword_2814FAF78)
  {
    v0 = sub_23C871B74();
    if (!v1)
    {
      atomic_store(v0, &qword_2814FAF78);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23C5970D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23C597120(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_23C59718C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_23C5971E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_23C597284(uint64_t *a1, int a2)
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

uint64_t sub_23C5972CC(uint64_t result, int a2, int a3)
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

void sub_23C597344(uint64_t a1)
{
  sub_23C597404();
  if (v1 <= 0x3F)
  {
    sub_23C597464(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for BiomeEventGraph.SessionMeta(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C597404()
{
  if (!qword_27E1F99C0)
  {
    v0 = sub_23C8716D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1F99C0);
    }
  }
}

void sub_23C597464(uint64_t a1)
{
  if (!qword_27E1F99C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F9910, &qword_23C873DF0);
    v1 = sub_23C8716D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1F99C8);
    }
  }
}

uint64_t getEnumTagSinglePayload for ContextProtoRetrievedTool.Stage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContextProtoRetrievedTool.Stage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ToolKitProtoRestrictionContext.PersonReachableAs(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoRestrictionContext.PersonReachableAs(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextProtoVersionedQueryDecorationOutput.Version(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ContextProtoVersionedQueryDecorationOutput.Version(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TimestampedOrderedEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TimestampedOrderedEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23C5979F0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23C597A80(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23C597B44()
{
  result = qword_27E1F99D0;
  if (!qword_27E1F99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F99D0);
  }

  return result;
}

unint64_t sub_23C597B9C()
{
  result = qword_27E1F99D8;
  if (!qword_27E1F99D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F99D8);
  }

  return result;
}

unint64_t sub_23C597BF4()
{
  result = qword_27E1F99E0;
  if (!qword_27E1F99E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F99E0);
  }

  return result;
}

unint64_t sub_23C597C4C()
{
  result = qword_27E1F99E8;
  if (!qword_27E1F99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F99E8);
  }

  return result;
}

unint64_t sub_23C597CA4()
{
  result = qword_27E1F99F0;
  if (!qword_27E1F99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F99F0);
  }

  return result;
}

unint64_t sub_23C597CFC()
{
  result = qword_27E1F99F8;
  if (!qword_27E1F99F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F99F8);
  }

  return result;
}

unint64_t sub_23C597D54()
{
  result = qword_27E1F9A00;
  if (!qword_27E1F9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A00);
  }

  return result;
}

unint64_t sub_23C597DAC()
{
  result = qword_27E1F9A08;
  if (!qword_27E1F9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A08);
  }

  return result;
}

unint64_t sub_23C597E04()
{
  result = qword_27E1F9A10;
  if (!qword_27E1F9A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A10);
  }

  return result;
}

unint64_t sub_23C597E5C()
{
  result = qword_27E1F9A18;
  if (!qword_27E1F9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A18);
  }

  return result;
}

unint64_t sub_23C597EB4()
{
  result = qword_27E1F9A20;
  if (!qword_27E1F9A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A20);
  }

  return result;
}

unint64_t sub_23C597F0C()
{
  result = qword_27E1F9A28;
  if (!qword_27E1F9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A28);
  }

  return result;
}

unint64_t sub_23C597F64()
{
  result = qword_27E1F9A30;
  if (!qword_27E1F9A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A30);
  }

  return result;
}

unint64_t sub_23C597FBC()
{
  result = qword_27E1F9A38;
  if (!qword_27E1F9A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A38);
  }

  return result;
}

unint64_t sub_23C598014()
{
  result = qword_27E1F9A40;
  if (!qword_27E1F9A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A40);
  }

  return result;
}

unint64_t sub_23C59806C()
{
  result = qword_27E1F9A48;
  if (!qword_27E1F9A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A48);
  }

  return result;
}