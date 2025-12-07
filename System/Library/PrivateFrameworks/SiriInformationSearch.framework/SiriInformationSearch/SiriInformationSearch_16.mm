uint64_t closure #4 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:)@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter();
  *a1 = result;
  return result;
}

double closure #5 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t closure #7 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:)()
{
  CodeGenBase.entity.getter();
  type metadata accessor for UsoEntity_common_Person();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();
}

uint64_t closure #8 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:)@<X0>(uint64_t *a2@<X8>)
{
  result = dispatch thunk of UsoEntity_common_Person.name.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance <> LazyMapSequence<A, B>(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized LazyMapSequence<>.subscript.read(v4, a2);
  return protocol witness for Collection.subscript.read in conformance <> LazyMapSequence<A, B>specialized ;
}

void protocol witness for Collection.subscript.read in conformance <> LazyMapSequence<A, B>specialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*specialized LazyMapSequence<>.subscript.read(uint64_t *a1, uint64_t a2))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x48uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(v2 + 40);
  v8 = *(v2 + 56);
  *(v5 + 64) = a2;
  v9 = v5 + 64;
  *(v5 + 32) = *v2;
  *(v5 + 48) = *(v2 + 16);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v11 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  v12 = LazyMapSequence<>.subscript.read(v6, v9, v10, v11);
  v14 = *v13;

  (v12)(v6, 0);
  v16 = v14;
  v7(&v17, &v16);

  v16 = v17;
  v8(&v16);

  return LazyMapSequence<>.subscript.readspecialized ;
}

void LazyMapSequence<>.subscript.readspecialized (void **a1)
{
  v1 = *a1;

  free(v1);
}

void (*LazyMapSequence<>.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(*(AssociatedTypeWitness - 8) + 64));
  }

  v13 = v12;
  v9[4] = v12;
  v14 = *(a3 + 24);
  v9[5] = v14;
  v15 = *(v14 - 8);
  v9[6] = v15;
  v16 = *(v15 + 64);
  if (v7)
  {
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v17 = malloc(v16);
  }

  v9[7] = v17;
  v18 = *(v4 + *(a3 + 44));
  v19 = dispatch thunk of Collection.subscript.read();
  (*(v11 + 16))(v13);
  v19(v9, 0);
  v18(v13);
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  return LazyMapSequence<>.subscript.read;
}

void LazyMapSequence<>.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *(*a1 + 32);
  (*(*(*a1 + 48) + 8))(v2, *(*a1 + 40));
  free(v2);
  free(v3);

  free(v1);
}

uint64_t specialized LazyFilterSequence<>.startIndex.getter()
{
  v1 = v0[7];
  v39 = v0[6];
  v40 = v1;
  v41 = v0[8];
  v2 = *(v0 + 19);
  v42 = *(v0 + 18);
  v3 = v0[3];
  v35 = v0[2];
  v36 = v3;
  v4 = v0[5];
  v37 = v0[4];
  v38 = v4;
  v5 = v0[1];
  v33 = *v0;
  v34 = v5;
  v26 = v2;
  v25 = *(v0 + 21);
  v6 = specialized LazyFilterSequence<>.startIndex.getter();
  v8 = v7;
  v10 = v9;
  *&v31 = v6;
  *(&v31 + 1) = v7;
  v32 = v9 & 1;
  v11 = v33;
  v12 = v34;
  v23 = v36;
  v24 = *(&v35 + 1);
  v22 = *(&v36 + 1);
  v21 = *(&v37 + 1);
  v20 = *(&v39 + 1);
  v19 = *(&v40 + 1);
  v13 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  v29 = v33;
  v30 = v34;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  MEMORY[0x223DE0060](&v27, v14, v13);
  if (v6 != v27 || (v10 & 1) == 0)
  {
    v15 = *(v0 + 23);
    do
    {
      *&v27 = specialized FlattenSequence<>.subscript.getter(v6, v8, v10 & 1, v11, *(&v11 + 1), v12, v24, v23, v22);
      v21(&v29, &v27);

      v20(&v27, &v29);

      v28 = v27;
      v19(&v29, &v28);

      v26(&v27, &v29);

      v28 = v27;
      v25(&v29, &v28);

      v27 = v29;
      v16 = v15(&v27);

      if (v16)
      {
        break;
      }

      specialized LazyFilterSequence<>.formIndex(after:)(&v31);
      v8 = *(&v31 + 1);
      v6 = v31;
      v10 = v32;
      v29 = v11;
      v30 = v12;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
      MEMORY[0x223DE0060](&v27, v17, v13);
    }

    while (v6 != v27 || (v10 & 1) == 0);
  }

  return v6;
}

{
  v1 = v0[5];
  v35 = v0[4];
  v36 = v1;
  v2 = *(v0 + 13);
  v37 = *(v0 + 12);
  v3 = v0[1];
  v31 = *v0;
  v32 = v3;
  v4 = v0[3];
  v33 = v0[2];
  v34 = v4;
  v23 = v2;
  v22 = *(v0 + 15);
  v5 = specialized LazyFilterSequence<>.startIndex.getter();
  v7 = v6;
  v9 = v8;
  v28 = v5;
  v29 = v6;
  v30 = v8 & 1;
  v10 = v31;
  v11 = v32;
  v20 = v34;
  v21 = *(&v33 + 1);
  v19 = *(&v34 + 1);
  v18 = *(&v35 + 1);
  v12 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  v25 = v31;
  v26 = v32;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  MEMORY[0x223DE0060](&v27, v13, v12);
  if (v5 != v27 || (v9 & 1) == 0)
  {
    v14 = *(v0 + 17);
    do
    {
      v27 = specialized FlattenSequence<>.subscript.getter(v5, v7, v9 & 1, v10, *(&v10 + 1), v11, v21, v20, v19);
      v18(&v25, &v27);

      v23(&v27, &v25);

      v24 = v27;
      v22(&v25, &v24);

      v27 = v25;
      v15 = v14(&v27);

      if (v15)
      {
        break;
      }

      specialized LazyFilterSequence<>.formIndex(after:)(&v28);
      v5 = v28;
      v7 = v29;
      v9 = v30;
      v25 = v10;
      v26 = v11;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
      MEMORY[0x223DE0060](&v27, v16, v12);
    }

    while (v5 != v27 || (v9 & 1) == 0);
  }

  return v5;
}

{
  v1 = v0[3];
  v29 = v0[2];
  v30 = v1;
  v2 = *(v0 + 9);
  v31 = *(v0 + 8);
  v3 = v0[1];
  v27 = *v0;
  v28 = v3;
  v23 = v2;
  v4 = specialized FlattenSequence<>.startIndex.getter();
  v6 = v5;
  v8 = v7;
  v9 = v27;
  v10 = v28;
  v21 = v30;
  v22 = *(&v29 + 1);
  v20 = *(&v30 + 1);
  v11 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  v24 = v27;
  v25 = v28;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v19 = v11;
  MEMORY[0x223DE0060](&v26, v12, v11);
  if (v4 != v26 || (v8 & 1) == 0)
  {
    v13 = *(v0 + 11);
    do
    {
      v26 = specialized FlattenSequence<>.subscript.getter(v4, v6, v8 & 1, v9, *(&v9 + 1), v10, v22, v21, v20);
      v23(&v24, &v26);

      v26 = v24;
      v14 = v13(&v26);

      if (v14)
      {
        break;
      }

      v4 = specialized FlattenSequence<>._index(after:)(v4, v6, v8 & 1);
      v6 = v15;
      v8 = v16;
      v24 = v9;
      v25 = v10;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
      MEMORY[0x223DE0060](&v26, v17, v19);
    }

    while (v4 != v26 || (v8 & 1) == 0);
  }

  return v4;
}

unint64_t specialized LazyFilterSequence<>.startIndex.getter()
{
  v1 = v0;
  v2 = v0[1];
  v4 = v0[2];
  v18 = *v0;
  v3 = v18;
  v19 = v2;
  v14 = v2;
  v20 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v6 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  MEMORY[0x223DE0050](&v17, v5, v6);
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = v17;
  if (v17 != v7)
  {
    v9 = v1[3];
    v1 = v1[4];
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223DDFF80](v8, v3);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_17:
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          v7 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(v3 + 8 * v8 + 32);
      }

      v15 = v10;
      v14(&v16, &v15);

      v15 = v16;
      v11 = v9(&v15);

      if (v11)
      {
        return v8;
      }

      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_18;
      }

      v17 = ++v8;
    }

    while (v12 != v7);
  }

  return v7;
}

void *specialized LazyFilterSequence<>.formIndex(after:)(__int128 *a1)
{
  v4 = *(a1 + 16);
  v29 = *a1;
  v16 = v29;
  v30 = v4;
  v5 = v1[5];
  v35 = v1[4];
  v36 = v5;
  v6 = *(v1 + 13);
  v37 = *(v1 + 12);
  v7 = v1[1];
  v31 = *v1;
  v32 = v7;
  v8 = v1[3];
  v33 = v1[2];
  v34 = v8;
  v23 = v6;
  v22 = *(v1 + 15);
  v9 = v31;
  v10 = v7;
  v18 = *(&v8 + 1);
  v19 = v8;
  v17 = *(&v35 + 1);
  v26 = v31;
  v27 = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v24 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  MEMORY[0x223DE0060](&v28, v11);
  if (v16 != v28 || (v4 & 1) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  while (1)
  {
    v12 = *(v21 + 136);
    v28 = specialized FlattenSequence<>.subscript.getter(v4, v2, v3, v9, *(&v9 + 1), v10, v20, v19, v18);
    v17(&v26, &v28);

    v23(&v28, &v26);

    v25 = v28;
    v22(&v26, &v25);

    v28 = v26;
    v13 = v12(&v28);

    if (v13)
    {
      break;
    }

LABEL_5:
    specialized LazyFilterSequence<>.formIndex(after:)(&v29);
    v26 = v9;
    v27 = v10;
    result = MEMORY[0x223DE0060](&v28, v11, v24);
    v2 = *(&v29 + 1);
    v4 = v29;
    v3 = v30;
    if (v29 == v28 && (v30 & 1) != 0)
    {
      v3 = 1;
      v4 = v28;
      break;
    }
  }

  *a1 = v4;
  *(a1 + 1) = v2;
  *(a1 + 16) = v3;
  return result;
}

void *specialized LazyFilterSequence<>.formIndex(after:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v1[1];
  v26 = *v1;
  v27 = v5;
  v6 = v1[3];
  v28 = v1[2];
  v29 = v6;
  v20 = *(v1 + 9);
  v30 = *(v1 + 8);
  v7 = v26;
  v8 = v27;
  v17 = v6;
  v18 = *(&v28 + 1);
  v16 = *(&v6 + 1);
  v23 = v26;
  v24 = v27;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v21 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  v22 = v9;
  MEMORY[0x223DE0060](&v25, v9);
  if (v2 != v25 || (v4 & 1) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  while (1)
  {
    v10 = *(v19 + 88);
    v25 = specialized FlattenSequence<>.subscript.getter(v2, v3, v4 & 1, v7, *(&v7 + 1), v8, v18, v17, v16);
    v20(&v23, &v25);

    v25 = v23;
    v11 = v10(&v25);

    if (v11)
    {
      break;
    }

LABEL_5:
    v2 = specialized FlattenSequence<>._index(after:)(v2, v3, v4 & 1);
    v3 = v13;
    v4 = v14;
    v23 = v7;
    v24 = v8;
    result = MEMORY[0x223DE0060](&v25, v22, v21);
    if (v2 == v25 && (v4 & 1) != 0)
    {
      v4 = 1;
      break;
    }
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

unint64_t *specialized LazyFilterSequence<>.formIndex(after:)(unint64_t *result)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v18[0] = v3;
  v18[1] = v2;
  v14 = v2;
  v18[2] = v4;
  v5 = *result;
  v17 = *result;
  v13 = result;
  v6 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 == v7)
  {
    __break(1u);
    goto LABEL_19;
  }

  while (2)
  {
    v8 = v1[3];
    lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
    v5 = (v3 & 0xC000000000000001);
    v12 = v3;
    v9 = v3 + 32;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
      v1 = v18;
      result = LazyMapSequence<>.formIndex(after:)();
      v3 = v17;
      if (v17 == v7)
      {
        v3 = v7;
LABEL_13:
        *v13 = v3;
        return result;
      }

      if (!v5)
      {
        break;
      }

      v10 = MEMORY[0x223DDFF80](v17, v12);
LABEL_9:
      v15 = v10;
      v14(&v16, &v15);

      v15 = v16;
      v11 = v8(&v15);

      if (v11)
      {
        goto LABEL_13;
      }
    }

    if ((v17 & 0x8000000000000000) == 0)
    {
      if (v17 >= *(v6 + 16))
      {
        goto LABEL_15;
      }

      v10 = *(v9 + 8 * v17);

      goto LABEL_9;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    result = __CocoaSet.count.getter();
    if (v5 != result)
    {
      v7 = __CocoaSet.count.getter();
      continue;
    }

    break;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t specialized FlattenSequence<>.startIndex.getter()
{
  v1 = v0;
  v2 = v0[1];
  v23 = *v0;
  v24 = v2;
  v15 = *(v0 + 5);
  v25 = *(v0 + 4);
  v3 = *(v0 + 7);
  v16 = v23;
  v17 = *(v0 + 2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v5 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  MEMORY[0x223DE0060](&v18, v4, v5);
  v6 = v18;
  v7 = specialized LazyFilterSequence<>.startIndex.getter();
  v22 = v7;
  if (v7 != v6)
  {
    v8 = v7;
    do
    {
      v18 = *v1;
      v19 = *(v1 + 2);
      v20 = v8;
      v9 = LazyMapSequence<>.subscript.read(&v16, &v20, v4, v5);
      v11 = *v10;

      (v9)(&v16, 0);
      *&v16 = v11;
      v15(&v21, &v16);

      *&v18 = v21;
      v3(&v16, &v18);

      if (v16 >> 62)
      {
        v13 = __CocoaSet.count.getter();

        if (v13)
        {
          return v8;
        }
      }

      else
      {
        v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v12)
        {
          return v8;
        }
      }

      specialized LazyFilterSequence<>.formIndex(after:)(&v22);
      v8 = v22;
    }

    while (v22 != v6);
  }

  v16 = *v1;
  v17 = *(v1 + 2);
  MEMORY[0x223DE0060](&v18, v4, v5);
  return v18;
}

uint64_t specialized FlattenSequence<>._index(after:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = v3[3];
  v33 = v3[2];
  v34 = v6;
  v35 = *(v3 + 8);
  v7 = v3[1];
  v31 = *v3;
  v32 = v7;
  v36 = v31;
  v37 = v7;
  v38 = *(v3 + 4);
  v8 = *(&v33 + 1);
  v9 = *(&v34 + 1);
  v29 = a1;
  v27 = v31;
  v28 = *(v3 + 2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v22 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  v23 = v11;
  v12 = LazyMapSequence<>.subscript.read(&v25, &v29, v11, v22);
  v14 = *v13;

  (v12)(&v25, 0);
  *&v25 = v14;
  v8(&v30, &v25);

  *&v27 = v30;
  v9(&v25, &v27);

  if (a3)
  {
    __break(1u);
    return result;
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v25 >> 62)
  {
LABEL_8:
    v16 = __CocoaSet.count.getter();
    goto LABEL_5;
  }

  v16 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v17 = a1;

  if (a2 + 1 == v16)
  {
    *&v25 = a1;
    specialized LazyFilterSequence<>.formIndex(after:)(&v25);
    v17 = v25;
    *&v27 = v25;
    v25 = *v4;
    v26 = *(v4 + 2);
    MEMORY[0x223DE0060](&v30, v23, v22);
    if (v17 == v30)
    {
LABEL_10:
      v25 = *v4;
      v26 = *(v4 + 2);
      MEMORY[0x223DE0060](&v30, v23, v22);
      return v30;
    }

    else
    {
      lazy protocol witness table accessor for type LazyMapSequence<LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>(&lazy protocol witness table cache variable for type LazyMapSequence<LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>, &_ss15LazyMapSequenceVyABys0a6FilterC0VyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGANGANGMd, &_ss15LazyMapSequenceVyABys0a6FilterC0VyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGANGANGMR, lazy protocol witness table accessor for type LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>);
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVyABys0a6FilterC0VyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGANGANGMd, &_ss15LazyMapSequenceVyABys0a6FilterC0VyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGANGANGMR);
        v18 = specialized protocol witness for Collection.subscript.read in conformance <> LazyMapSequence<A, B>(&v25, v17);
        v20 = *v19;

        (v18)(&v25, 0);
        v21 = v20 >> 62 ? __CocoaSet.count.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v21)
        {
          break;
        }

        specialized LazyFilterSequence<>.formIndex(after:)(&v27);
        v25 = *v4;
        v26 = *(v4 + 2);
        MEMORY[0x223DE0060](&v30, v23, v22);
        v17 = v27;
        if (v27 == v30)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return v17;
}

void specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    *a2 = *a1;
    a2[1] = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  if (v2)
  {
    *a2 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized CallBusinessNoResultsExperiencesResolver.convertToCommonPhoneCallEntity(task:)(uint64_t a1)
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v18, v16);
  if (v17)
  {
    outlined init with copy of Any?(v16, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23Uso_VerbTemplate_TargetCyAA0C23Entity_common_PhoneCallCGMd, &_s12SiriOntology23Uso_VerbTemplate_TargetCyAA0C23Entity_common_PhoneCallCGMR);
    if (swift_dynamicCast())
    {
      dispatch thunk of Uso_VerbTemplate_Target.target.getter();
LABEL_8:

      outlined destroy of MediaUserStateCenter?(v18, &_sypSgMd, &_sypSgMR);
      v1 = v14;
      __swift_destroy_boxed_opaque_existential_1(v15);
      goto LABEL_15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C23Entity_common_PhoneCallCGMd, &_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C23Entity_common_PhoneCallCGMR);
    if (swift_dynamicCast())
    {
      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32Uso_VerbTemplate_ReferenceTargetCyAA0C23Entity_common_PhoneCallCGMd, &_s12SiriOntology32Uso_VerbTemplate_ReferenceTargetCyAA0C23Entity_common_PhoneCallCGMR);
    if (swift_dynamicCast())
    {
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15[0] = v6;
    *v5 = 136315394;
    v7 = UsoTask.verbString.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = UsoTask.baseEntityAsString.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v15);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_2232BB000, v3, v4, "Cannot transform UsoTask to task with common_PhoneCall: <UsoTask verbString: %s entityString: %s>", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v6, -1, -1);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  outlined destroy of MediaUserStateCenter?(v18, &_sypSgMd, &_sypSgMR);
  v1 = 0;
LABEL_15:
  outlined destroy of MediaUserStateCenter?(v16, &_sypSgMd, &_sypSgMR);
  return v1;
}

unint64_t lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UsoEntity_common_PhoneCall] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoEntity_common_PhoneCall] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology26UsoEntity_common_PhoneCallCGMd, &_sSay12SiriOntology26UsoEntity_common_PhoneCallCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UsoEntity_common_PhoneCall] and conformance [A]);
  }

  return result;
}

uint64_t specialized FlattenSequence<>.subscript.getter(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t *), uint64_t a8, void (*a9)(uint64_t *__return_ptr, void *))
{
  v20[2] = a6;
  v21 = a1;
  v20[0] = a4;
  v20[1] = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v13 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  v14 = LazyMapSequence<>.subscript.read(v19, &v21, v12, v13);
  v16 = *v15;

  (v14)(v19, 0);
  v19[0] = v16;
  a7(&v22, v19);

  v20[0] = v22;
  a9(v19, v20);

  if ((a3 & 1) == 0)
  {
    if ((v19[0] & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x223DDFF80](a2, v19[0]);
      goto LABEL_6;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v19[0] & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v18 = *(v19[0] + 8 * a2 + 32);

LABEL_6:

      return v18;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #9 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:)()
{
  if (*(v0 + 24))
  {

    return Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.name.setter();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15LazyMapSequenceVys0a6FilterC0VyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGANGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGANGMR);
    lazy protocol witness table accessor for type LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>> and conformance <> LazyFilterSequence<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>> and conformance <> LazyFilterSequence<A>()
{
  result = lazy protocol witness table cache variable for type LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>> and conformance <> LazyFilterSequence<A>;
  if (!lazy protocol witness table cache variable for type LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>> and conformance <> LazyFilterSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18LazyFilterSequenceVys0a3MapC0VySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0VySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGMR);
    lazy protocol witness table accessor for type LazyMapSequence<LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>(&lazy protocol witness table cache variable for type LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?> and conformance <> LazyMapSequence<A, B>, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR, lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>> and conformance <> LazyFilterSequence<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LazyMapSequence<LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AudioQueueStateManager.__allocating_init(queueStateObserver:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized AudioQueueStateManager.init(queueStateObserver:)(v8, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t one-time initialization function for mediaTypeMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtGMd, &_ss23_ContiguousArrayStorageCySS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtMd, &_sSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtMR);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2234D1950;
  result = *MEMORY[0x277D27B08];
  if (!*MEMORY[0x277D27B08])
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = (v3 + v2);
  v6 = *(v0 + 48);
  *v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[1] = v7;
  v8 = *MEMORY[0x277D39B50];
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType();
  v10 = *(*(v9 - 8) + 104);
  v10(v5 + v6, v8, v9);
  result = *MEMORY[0x277D27B10];
  if (!*MEMORY[0x277D27B10])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = (v5 + v1);
  v12 = *(v0 + 48);
  *v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11[1] = v13;
  v10(v5 + v1 + v12, *MEMORY[0x277D39B60], v9);
  result = *MEMORY[0x277D27AF0];
  if (!*MEMORY[0x277D27AF0])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = (v5 + 2 * v1);
  v15 = *(v0 + 48);
  *v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14[1] = v16;
  v10(v14 + v15, *MEMORY[0x277D39B68], v9);
  result = *MEMORY[0x277D27B00];
  if (!*MEMORY[0x277D27B00])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = (v5 + 3 * v1);
  v18 = *(v0 + 48);
  *v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17[1] = v19;
  v20 = *MEMORY[0x277D39B38];
  v10(v17 + v18, v20, v9);
  result = *MEMORY[0x277D27AF8];
  if (*MEMORY[0x277D27AF8])
  {
    v21 = (v5 + 4 * v1);
    v22 = *(v0 + 48);
    *v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21[1] = v23;
    v10(v21 + v22, v20, v9);
    v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOTt0g5Tf4g_n(v3);
    swift_setDeallocating();
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    static AudioQueueStateManager.mediaTypeMap = v24;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

id AudioQueueStateManager.init(queueStateObserver:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized AudioQueueStateManager.init(queueStateObserver:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t AudioQueueStateManager.nowPlayingObserver(_:playbackStateDidChangeFrom:to:lastPlaying:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  if (a1)
  {
    a1 = type metadata accessor for SOMediaNowPlayingObserver();
    v9 = &protocol witness table for SOMediaNowPlayingObserver;
    v10 = v8;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v10;
  v14[3] = a1;
  v14[4] = v9;
  v11 = *((*MEMORY[0x277D85000] & *v4) + 0x130);
  v12 = v8;
  v11(v14, a2, a3, a4);
  return outlined destroy of MediaUserStateCenter?(v14, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMd, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMR);
}

uint64_t AudioQueueStateManager.audioQueueStateItem(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMd, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v53 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URLComponents();
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.init()();
  v17 = (*(*a1 + 136))(v16);
  v19 = v18 != 0;
  if (v18)
  {
    v17 = Apple_Parsec_Siri_V2alpha_AmpUserState.userToken.setter();
  }

  v20 = (*(*a1 + 144))(v17);
  if (v21)
  {
    v20 = Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.artist.setter();
    v19 = 1;
  }

  v22 = (*(*a1 + 152))(v20);
  if (v23)
  {
    v22 = Apple_Parsec_Siri_V2alpha_AmpUserState.xpAbCookie.setter();
    v19 = 1;
  }

  v24 = (*(*a1 + 184))(v22);
  v25 = *a1;
  if ((v24 & 1) == 0)
  {
    v26 = (*(v25 + 224))();
    v38 = v61;
    if (!v39)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v57 = v13;
  v26 = (*(v25 + 176))();
  if (v27)
  {
    v28 = v27;
    v53 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v9;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v12;
    v56 = a2;
    v30 = v6;
    v31 = v29;
    v33 = v32;
    URLComponents.init()();

    URLComponents.scheme.setter();

    v34 = v31;
    v6 = v30;
    MEMORY[0x223DD8CC0](v34, v33);
    v62 = 47;
    v63 = 0xE100000000000000;
    MEMORY[0x223DDF6D0](v53, v28);

    MEMORY[0x223DD8CD0](v62, v63);
    URLComponents.string.getter();
    v36 = v35;

    a2 = v56;

    v26 = (*(v58 + 8))(v11, v54);
    v37 = v36;
    v12 = v55;
    v13 = v57;
    v38 = v61;
    if (!v37)
    {
      goto LABEL_14;
    }

LABEL_12:
    v26 = Apple_Parsec_Siri_V2alpha_AmpUserState.sharedUserID.setter();
    v19 = 1;
    goto LABEL_14;
  }

  v13 = v57;
  v38 = v61;
LABEL_14:
  v40 = (*(*a1 + 160))(v26);
  if (v41)
  {
    v42 = v41;
    v43 = v40;
    if (one-time initialization token for mediaTypeMap != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v44 = static AudioQueueStateManager.mediaTypeMap;
    v45 = v59;
    if (*(static AudioQueueStateManager.mediaTypeMap + 2) && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v42), (v47 & 1) != 0))
    {
      (*(v60 + 16))(v6, v44[7] + *(v60 + 72) * v46, v38);
      v48 = 0;
    }

    else
    {
      v48 = 1;
    }

    v49 = v60;
    (*(v60 + 56))(v6, v48, 1, v38);
    swift_endAccess();

    v50 = *(v49 + 48);
    if (v50(v6, 1, v38) == 1)
    {
      (*(v49 + 104))(v45, *MEMORY[0x277D39B38], v38);
      if (v50(v6, 1, v38) != 1)
      {
        outlined destroy of MediaUserStateCenter?(v6, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMd, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMR);
      }
    }

    else
    {
      (*(v49 + 32))(v45, v6, v38);
    }

    Apple_Parsec_Siri_V2alpha_AmpUserState.itunesSubscriptionStatus.setter();
    goto LABEL_28;
  }

  if (v19)
  {
LABEL_28:
    (*(v13 + 32))(a2, v15, v12);
    v51 = 0;
    return (*(v13 + 56))(a2, v51, 1, v12);
  }

  (*(v13 + 8))(v15, v12);
  v51 = 1;
  return (*(v13 + 56))(a2, v51, 1, v12);
}

id AudioQueueStateManager.currentQueueState()@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateItemVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateItemVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v44 - v3;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = &v44 - v7;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioEntitySource();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioState();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
  v57 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock;
  [*(v1 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock) lock];
  v15 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache);
  v16 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateCache);
  v17 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateCache + 8);
  v19 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache);
  v18 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache + 8);
  type metadata accessor for NowPlayingInfo();
  swift_allocObject();
  v20 = v15;

  v21 = NowPlayingInfo.init(_:_:_:)(v15, v16, v17, v19, v18);
  if (v21)
  {
    v22 = v21;
    v44 = v14;
    v23 = v56;
    Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.init()();
    v24 = v22[3] - 1;
    if (v24 > 3)
    {
      v25 = MEMORY[0x277D392A0];
    }

    else
    {
      v25 = qword_2784DACE8[v24];
    }

    v28 = v1;
    (*(v47 + 104))(v48, *v25, v49);
    v29 = Apple_Parsec_Siri_V2alpha_AmpUserState.ampSubscriptionStatus.setter();
    v30 = (*(*v22 + 184))(v29);
    v31 = MEMORY[0x277D396D0];
    if ((v30 & 1) == 0)
    {
      v31 = MEMORY[0x277D396C8];
    }

    (*(v51 + 104))(v50, *v31, v52);
    v32 = Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.source.setter();
    v33 = v22[5];
    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v22[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {

      v32 = Apple_Parsec_Siri_V2alpha_AmpUserState.sharedUserID.setter();
    }

    v35 = (*(*v22 + 192))(v32);
    v36 = v55;
    if ((v35 & 0x100000000) == 0)
    {
      v35 = Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.nowPlayingQueueIndex.setter();
    }

    v37 = v23;
    if (((*(*v22 + 200))(v35) & 0x100000000) == 0)
    {
      Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.nowPlayingQueueCount.setter();
    }

    v38 = v53;
    AudioQueueStateManager.audioQueueStateItem(from:)(v22, v53);
    v39 = v54;
    if ((*(v54 + 48))(v38, 1, v36) == 1)
    {
      v40 = outlined destroy of MediaUserStateCenter?(v38, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateItemVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateItemVSgMR);
    }

    else
    {
      v41 = v45;
      (*(v39 + 32))(v45, v38, v36);
      (*(v39 + 16))(v46, v41, v36);
      Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.audioQueueStateItem.setter();
      v40 = (*(v39 + 8))(v41, v36);
    }

    v42 = v57;
    v43 = v44;
    (*(*v22 + 208))(v40);
    Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.currentListeningToContainer.setter();

    (*(v42 + 32))(v37, v13, v11);
    (*(v42 + 56))(v37, 0, 1, v11);
    return [*(v28 + v43) unlock];
  }

  else
  {
    (*(v57 + 56))(v56, 1, 1, v11);
    v26 = *(v1 + v14);

    return [v26 unlock];
  }
}

id AudioQueueStateManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioQueueStateManager.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AudioQueueStateManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id specialized AudioQueueStateManager.init(queueStateObserver:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a3;
  v15[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_updateAudioQueueStateCacheGroup;
  *&a2[v8] = dispatch_group_create();
  a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_isObserverRegistered] = 0;
  v9 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock;
  *&a2[v9] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *&a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache] = 0;
  v10 = &a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateCache];
  *v10 = 0;
  v10[8] = 1;
  v11 = &a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache];
  *v11 = 0;
  v11[1] = 0;
  outlined init with copy of AppDataProviding(v15, &a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver]);
  v14.receiver = a2;
  v14.super_class = type metadata accessor for AudioQueueStateManager();
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t DefaultExperiencesResolver.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return outlined assign with take of SportsPersonalizationExperiencesResolver?(v2, a1);
}

uint64_t outlined assign with take of SportsPersonalizationExperiencesResolver?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMd, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DefaultExperiencesResolver.init(sportsPersonalizationResolver:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return outlined assign with take of SportsPersonalizationExperiencesResolver?(v4, a2);
}

unint64_t DefaultExperiencesResolver.buildExperiences(from:with:)(int *a1, uint64_t (*a2)(char *, uint64_t))
{
  v65 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v50 - v5;
  v50 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v50);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v17 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
  v64 = v18;
  (*(v14 + 8))(v16, v13);
  v55 = v2;
  v19 = specialized ExperiencesResolver.defaultExperiences(from:with:)(a1, v65);
  v63 = v19;
  if (one-time initialization token for shared != -1)
  {
    v19 = swift_once();
  }

  v20 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v19);
  v58 = a1;
  v48 = a1;
  Date.init()();
  v21 = *(*v20 + 200);
  v22 = *v20 + 200;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  v48 = &v47;
  v49 = v53;
  LOBYTE(v47) = 2;
  v62 = v20;
  v57 = v21;
  v56 = v22;
  v21(&v70, 0xD000000000000034, 0x80000002234DFF90, 0, v12, "SiriInformationSearch/DefaultExperiencesResolver.swift", 54, 2, 39, "buildExperiences(from:with:)", 28, v47, partial apply for closure #1 in DefaultExperiencesResolver.buildExperiences(from:with:));
  v25 = *(v10 + 8);
  v24 = v10 + 8;
  v23 = v25;
  v59 = v9;
  v25(v12, v9);
  specialized Array.append<A>(contentsOf:)(v63);
  v26 = v70;
  if (v17 == 0x7374726F7073 && v64 == 0xE600000000000000)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      return v26;
    }
  }

  outlined init with copy of SportsPersonalizationExperiencesResolver?(v55, &v67);
  v63 = v26;
  v65 = v23;
  v54 = v24;
  if (*(&v68 + 1))
  {
    v70 = v67;
    v71 = v68;
    v72 = v69;
  }

  else
  {
    *(&v71 + 1) = type metadata accessor for SportsResolver();
    v72 = &protocol witness table for SportsResolver;
    __swift_allocate_boxed_opaque_existential_1(&v70);
    SportsResolver.init()();
    if (*(&v68 + 1))
    {
      outlined destroy of MediaUserStateCenter?(&v67, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMd, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMR);
    }
  }

  v28 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  MEMORY[0x28223BE20](v28);
  Date.init()();
  v48 = &v47;
  v49 = MEMORY[0x277D839B0];
  LOBYTE(v47) = 2;
  v29 = v57;
  v57(&v67, 0xD000000000000052, 0x80000002234E0010, 0, v12, "SiriInformationSearch/DefaultExperiencesResolver.swift", 54, 2, 48, "buildExperiences(from:with:)", 28, v47, partial apply for closure #2 in DefaultExperiencesResolver.buildExperiences(from:with:));
  v30 = v59;
  v31 = v65(v12, v59);
  if (v67)
  {

    v64 = &v50;
    MEMORY[0x28223BE20](v32);
    Date.init()();
    v48 = &v47;
    v49 = v53;
    LOBYTE(v47) = 2;
    v29(&v67, 0xD000000000000035, 0x80000002234E00C0, 0, v12, "SiriInformationSearch/DefaultExperiencesResolver.swift", 54, 2, 54, "buildExperiences(from:with:)", 28, v47, partial apply for closure #3 in DefaultExperiencesResolver.buildExperiences(from:with:));
    v65(v12, v30);
    v26 = v67;
    (*(v60 + 8))(v66, v61);
    outlined destroy of SportsPersonalizationExperiencesResolver(&v70);
  }

  else
  {
    v64 = 0;
    MEMORY[0x28223BE20](v31);
    v33 = v66;
    Date.init()();
    v48 = &v47;
    v49 = MEMORY[0x277D839B0];
    LOBYTE(v47) = 2;
    v29(&v67, 0xD00000000000004ALL, 0x80000002234E0070, 0, v12, "SiriInformationSearch/DefaultExperiencesResolver.swift", 54, 2, 59, "buildExperiences(from:with:)", 28, v47, partial apply for closure #4 in DefaultExperiencesResolver.buildExperiences(from:with:));
    v65(v12, v30);
    v35 = v60;
    v34 = v61;
    if (v67 == 1)
    {
      v36 = v51;
      Date.init()();
      v37 = v50;
      v38 = v36 + *(v50 + 20);
      *v38 = "SiriInformationSearch/DefaultExperiencesResolver.swift";
      *(v38 + 8) = 54;
      *(v38 + 16) = 2;
      *(v36 + v37[6]) = 67;
      v39 = v36 + v37[7];
      *v39 = "buildExperiences(from:with:)";
      *(v39 + 8) = 28;
      *(v39 + 16) = 2;
      v40 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000003CLL, 0x80000002234DF3E0);
      v41 = (v36 + v37[8]);
      *v41 = v40;
      v41[1] = v42;
      v43 = v52;
      (*(v35 + 16))(v52, v33, v34);
      (*(v35 + 56))(v43, 0, 1, v34);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      v45 = __swift_project_value_buffer(v44, static Logger.pommes);
      _s21SiriInformationSearch28SportsPersonalizationMetricsO6submit3for11instruction6loggeryAA0dE9SelectionOyxG_10PegasusAPI013Apple_Parsec_a9_V2alpha_aL8ResponseV0A11InstructionVSg2os6LoggerVtAA0dE12ResultMetricRzlFZAA013Disambiguatedd11ExperiencesU0O_Tt2g5(2, v43, v45);
      outlined destroy of MediaUserStateCenter?(v43, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
      (*(*v62 + 184))(v36, 0);
      outlined destroy of PerformanceUtil.Ticket(v36);
    }

    (*(v35 + 8))(v33, v34);
    outlined destroy of SportsPersonalizationExperiencesResolver(&v70);
    return v63;
  }

  return v26;
}

uint64_t closure #1 in DefaultExperiencesResolver.buildExperiences(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for ClientExperienceSignals();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = specialized PhoneCallExperiencesResolver.buildExperiences(from:with:)(a1);
  result = outlined destroy of MediaUserStateCenter?(v6, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  *a2 = v8;
  return result;
}

uint64_t outlined init with copy of SportsPersonalizationExperiencesResolver?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMd, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in DefaultExperiencesResolver.buildExperiences(from:with:)@<X0>(_BYTE *a1@<X8>)
{
  result = specialized static SportsPersonalizationExperiencesResolver.isSupportedPersonalizationInstruction(_:)(*(v1 + 16));
  *a1 = result & 1;
  return result;
}

uint64_t closure #3 in DefaultExperiencesResolver.buildExperiences(from:with:)@<X0>(void *a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for ClientExperienceSignals();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = SportsPersonalizationExperiencesResolver.buildExperiences(from:with:)(a1, v6);
  result = outlined destroy of MediaUserStateCenter?(v6, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  *a2 = v8;
  return result;
}

BOOL partial apply for closure #4 in DefaultExperiencesResolver.buildExperiences(from:with:)@<W0>(_BYTE *a1@<X8>)
{
  result = static SportsPersonalizationExperiencesResolver.hasPersonalizationInstruction(_:)();
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for DefaultExperiencesResolver(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for DefaultExperiencesResolver(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t AudioItemCandidate.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_identifier);

  return v1;
}

uint64_t AudioItemCandidate.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title);

  return v1;
}

uint64_t AudioItemCandidate.artist.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist);

  return v1;
}

uint64_t AudioItemCandidate.itemType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

float AudioItemCandidate.score.getter()
{
  v1 = v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_score;
  swift_beginAccess();
  return *v1;
}

void AudioItemCandidate.score.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_score);
  swift_beginAccess();
  *v3 = a1;
}

id AudioItemCandidate.features.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_features;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AudioItemCandidate.features.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_features;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t AudioItemCandidate.personaId.getter()
{
  v1 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AudioItemCandidate.BackingItem(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_backingItem, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *v3;
    v5 = ClientAudioResult.vocabularyResult.getter();
    v6 = VocabularyResult.personaId.getter();

    return v6;
  }

  else
  {
    outlined destroy of AudioItemCandidate.BackingItem(v3);
    return 0;
  }
}

uint64_t outlined init with copy of AudioItemCandidate.BackingItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AudioItemCandidate.BackingItem(uint64_t a1)
{
  v2 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AudioItemCandidate.Features.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioItemCandidate.__allocating_init(serverResult:)(uint64_t a1)
{
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  v10 = Apple_Parsec_Siri_V2alpha_AudioItem.identifier.getter();
  v29 = v11;
  v12 = Apple_Parsec_Siri_V2alpha_AudioItem.title.getter();
  v32 = v13;
  v33 = v12;
  v14 = Apple_Parsec_Siri_V2alpha_AudioItem.artist.getter();
  v30 = v15;
  v31 = v14;
  Apple_Parsec_Siri_V2alpha_AudioItem.type.getter();
  v34 = Apple_Parsec_Siri_V2alpha_AudioItem.requiresSubscription.getter();
  v16 = [objc_allocWithZone(type metadata accessor for AudioItemCandidate.Features()) init];
  v17 = type metadata accessor for AudioItemCandidate(0);
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_score] = 1065353216;
  outlined init with copy of AudioItemCandidate.BackingItem(v7, &v18[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_backingItem]);
  v19 = &v18[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_identifier];
  v20 = v29;
  *v19 = v10;
  v19[1] = v20;
  v18[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source] = 0;
  v21 = &v18[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title];
  v22 = v32;
  *v21 = v33;
  v21[1] = v22;
  v23 = &v18[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist];
  v24 = v30;
  *v23 = v31;
  v23[1] = v24;
  v25 = v35;
  (*(v2 + 16))(&v18[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType], v4, v35);
  v18[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_requiresSubscription] = v34 & 1;
  v18[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_isDownloaded] = 0;
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_features] = v16;
  v36.receiver = v18;
  v36.super_class = v17;
  v26 = objc_msgSendSuper2(&v36, sel_init);
  (*(v9 + 8))(a1, v8);
  (*(v2 + 8))(v4, v25);
  outlined destroy of AudioItemCandidate.BackingItem(v7);
  return v26;
}

uint64_t AudioItemCandidate.deduplicationKey.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = String.lowercased()();
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist + 8))
  {
    v7 = String.lowercased()();
    countAndFlagsBits = v7._countAndFlagsBits;
    object = v7._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v25 = v6;

  MEMORY[0x223DDF6D0](countAndFlagsBits, object);

  v12 = v25;
  v11 = v12._object;
  v10 = v12._countAndFlagsBits;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType, v2);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  v25 = __PAIR128__(v11, v10);

  MEMORY[0x223DDF6D0](v13, v15);

  v19 = v25;
  v17 = v19._object;
  v18 = v19._countAndFlagsBits;
  v20 = (*((*MEMORY[0x277D85000] & *v1) + 0xD0))(v16);
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0x6B6E616C62;
  }

  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  *&v25 = v18;
  *(&v25 + 1) = v17;

  MEMORY[0x223DDF6D0](v22, v23);

  return v25;
}

id AudioItemCandidate.toAudioResult()()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AudioItemCandidate.BackingItem(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_backingItem, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v13 = *v11;
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *(&v26 - 2) = v1;
    *(&v26 - 1) = v13;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem();
    static Message.with(_:)();
    v14 = *(v3 + 16);
    v14(v6, v8, v2);
    v15 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_isDownloaded);
    v16 = type metadata accessor for AudioResult(0);
    v17 = objc_allocWithZone(v16);
    v17[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource] = 2;
    v18 = &v17[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId];
    *v18 = 0;
    v18[8] = 0;
    v14(&v17[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem], v6, v2);
    v17[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded] = v15;
    v27.receiver = v17;
    v27.super_class = v16;
    v19 = objc_msgSendSuper2(&v27, sel_init);
  }

  else
  {
    (*(v3 + 32))(v8, v11, v2);
    v20 = *(v3 + 16);
    v20(v6, v8, v2);
    v21 = type metadata accessor for AudioResult(0);
    v22 = objc_allocWithZone(v21);
    v22[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource] = 1;
    v23 = &v22[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId];
    *v23 = 0;
    v23[8] = 0;
    v20(&v22[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem], v6, v2);
    v22[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded] = 0;
    v28.receiver = v22;
    v28.super_class = v21;
    v19 = objc_msgSendSuper2(&v28, sel_init);
  }

  v24 = *(v3 + 8);
  v24(v6, v2);
  v24(v8, v2);
  return v19;
}

uint64_t closure #1 in AudioItemCandidate.toAudioResult()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  Apple_Parsec_Siri_V2alpha_AudioItem.identifier.setter();

  Apple_Parsec_Siri_V2alpha_AudioItem.title.setter();

  Apple_Parsec_Siri_V2alpha_AudioItem.artist.setter();
  (*(v4 + 16))(v6, a2 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType, v3);
  Apple_Parsec_Siri_V2alpha_AudioItem.type.setter();
  dispatch thunk of ClientAudioResult.sharedUserIDFromPlayableMusicAccount.getter();
  return Apple_Parsec_Siri_V2alpha_AudioItem.sharedUserIDFromPlayableMusicAccount.setter();
}

float AudioItemCandidate.Features.audioTypeMatch.getter()
{
  v1 = v0 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_audioTypeMatch;
  swift_beginAccess();
  return *v1;
}

void AudioItemCandidate.Features.audioTypeMatch.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_audioTypeMatch);
  swift_beginAccess();
  *v3 = a1;
}

float AudioItemCandidate.Features.sourceMatchFactor.getter()
{
  v1 = v0 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_sourceMatchFactor;
  swift_beginAccess();
  return *v1;
}

void AudioItemCandidate.Features.sourceMatchFactor.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_sourceMatchFactor);
  swift_beginAccess();
  *v3 = a1;
}

float AudioItemCandidate.Features.sourceTypePriority.getter()
{
  v1 = v0 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_sourceTypePriority;
  swift_beginAccess();
  return *v1;
}

void AudioItemCandidate.Features.sourceTypePriority.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_sourceTypePriority);
  swift_beginAccess();
  *v3 = a1;
}

float AudioItemCandidate.Features.downloadedBoostFactor.getter()
{
  v1 = v0 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_downloadedBoostFactor;
  swift_beginAccess();
  return *v1;
}

void AudioItemCandidate.Features.downloadedBoostFactor.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_downloadedBoostFactor);
  swift_beginAccess();
  *v3 = a1;
}

float AudioItemCandidate.Features.usersOwnContentBoostFactor.getter()
{
  v1 = v0 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_usersOwnContentBoostFactor;
  swift_beginAccess();
  return *v1;
}

void AudioItemCandidate.Features.usersOwnContentBoostFactor.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_usersOwnContentBoostFactor);
  swift_beginAccess();
  *v3 = a1;
}

float AudioItemCandidate.Features.qTreeScore.getter()
{
  v1 = v0 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_qTreeScore;
  swift_beginAccess();
  return *v1;
}

void AudioItemCandidate.Features.qTreeScore.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_qTreeScore);
  swift_beginAccess();
  *v3 = a1;
}

uint64_t AudioItemCandidate.Features.description.getter()
{
  _StringGuts.grow(_:)(167);
  v1 = MEMORY[0x223DDF6D0](0xD000000000000018, 0x80000002234E0100);
  v2 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x80))(v1);
  Float.write<A>(to:)();
  v3 = MEMORY[0x223DDF6D0](0xD000000000000018, 0x80000002234E0120);
  (*((*v2 & *v0) + 0x98))(v3);
  Float.write<A>(to:)();
  v4 = MEMORY[0x223DDF6D0](0xD000000000000019, 0x80000002234E0140);
  (*((*v2 & *v0) + 0xB0))(v4);
  Float.write<A>(to:)();
  v5 = MEMORY[0x223DDF6D0](0xD00000000000001CLL, 0x80000002234E0160);
  (*((*v2 & *v0) + 0xC8))(v5);
  Float.write<A>(to:)();
  v6 = MEMORY[0x223DDF6D0](0xD000000000000021, 0x80000002234E0180);
  (*((*v2 & *v0) + 0xE0))(v6);
  Float.write<A>(to:)();
  v7 = MEMORY[0x223DDF6D0](0xD000000000000011, 0x80000002234E01B0);
  (*((*v2 & *v0) + 0xF8))(v7);
  Float.write<A>(to:)();
  MEMORY[0x223DDF6D0](2099257354, 0xE400000000000000);
  return 0;
}

id AudioItemCandidate.Features.init()()
{
  *&v0[OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_audioTypeMatch] = 0;
  *&v0[OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_sourceMatchFactor] = 0;
  *&v0[OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_sourceTypePriority] = 0;
  *&v0[OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_downloadedBoostFactor] = 0;
  *&v0[OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_usersOwnContentBoostFactor] = 0;
  *&v0[OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_qTreeScore] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioItemCandidate.Features();
  return objc_msgSendSuper2(&v2, sel_init);
}

SiriInformationSearch::AudioItemCandidate::Source_optional __swiftcall AudioItemCandidate.Source.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AudioItemCandidate.Source.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriInformationSearch_AudioItemCandidate_Source_client;
  }

  else
  {
    v4.value = SiriInformationSearch_AudioItemCandidate_Source_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t AudioItemCandidate.Source.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x746E65696C63;
  }

  else
  {
    return 0x726576726573;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AudioItemCandidate.Source(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x746E65696C63;
  }

  else
  {
    v2 = 0x726576726573;
  }

  if (*a2)
  {
    v3 = 0x746E65696C63;
  }

  else
  {
    v3 = 0x726576726573;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioItemCandidate.Source()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AudioItemCandidate.Source(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioItemCandidate.Source(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AudioItemCandidate.Source@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AudioItemCandidate.Source.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance AudioItemCandidate.Source(uint64_t *a1@<X8>)
{
  v2 = 0x726576726573;
  if (*v1)
  {
    v2 = 0x746E65696C63;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

id @objc AudioItemCandidate.Features.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x223DDF550](v5, v7);

  return v8;
}

uint64_t AudioItemCandidate.description.getter()
{
  _StringGuts.grow(_:)(59);
  v1 = MEMORY[0x223DDF6D0](0x74616469646E6163, 0xED0000207B203A65);
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))(v1);
  MEMORY[0x223DDF6D0](v3);

  v4 = MEMORY[0x223DDF6D0](0x65726F637320200ALL, 0xEA0000000000203ALL);
  (*((*v2 & *v0) + 0xA0))(v4);
  Float.write<A>(to:)();
  v5 = MEMORY[0x223DDF6D0](0x6F7372657020200ALL, 0xEE00203A6449616ELL);
  v6 = (*((*v2 & *v0) + 0xD0))(v5);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  MEMORY[0x223DDF6D0](v6, v8);

  v9 = MEMORY[0x223DDF6D0](0x757461656620200ALL, 0xEC0000003A736572);
  v10 = (*((*v2 & *v0) + 0xB8))(v9);
  v11 = [v10 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  MEMORY[0x223DDF6D0](v12, v14);

  MEMORY[0x223DDF6D0](32010, 0xE200000000000000);
  return 0;
}

uint64_t AudioItemCandidate.summary.getter()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  v13 = 0;
  v14 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x223DDF6D0](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_identifier), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_identifier + 8));
  MEMORY[0x223DDF6D0](0x656C74697420200ALL, 0xEB0000000022203ALL);
  MEMORY[0x223DDF6D0](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title + 8));
  MEMORY[0x223DDF6D0](0x7473697472612022, 0xEB0000000022203ALL);
  v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist + 8);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist + 8);
  }

  MEMORY[0x223DDF6D0](v4, v2);

  MEMORY[0x223DDF6D0](0x6570797420200A22, 0xEA0000000000203ALL);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x223DDF6D0](0x6372756F7320200ALL, 0xEC000000203A2065);
  v5 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source);
  if (v5)
  {
    v6 = 0x746E65696C63;
  }

  else
  {
    v6 = 0x726576726573;
  }

  MEMORY[0x223DDF6D0](v6, 0xE600000000000000);

  if (v5)
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      v12[0] = 0;
      v12[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v8 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_isDownloaded);
      v12[0] = 0xD000000000000010;
      v12[1] = 0x80000002234E01D0;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v8 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_requiresSubscription);
  strcpy(v12, "\n  subReq'd : ");
  HIBYTE(v12[1]) = -18;
LABEL_14:
  if (v8)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v9, v10);

  MEMORY[0x223DDF6D0](v12[0], v12[1]);

  return v13;
}

id AudioItemCandidate.Features.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized static AudioItemCandidate.BackingItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch18AudioItemCandidateC07BackingE033_39A65E8D769182CAD4F711B84F5C7A7FLLO_AFtMd, &_s21SiriInformationSearch18AudioItemCandidateC07BackingE033_39A65E8D769182CAD4F711B84F5C7A7FLLO_AFtMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of AudioItemCandidate.BackingItem(a1, &v24 - v16);
  outlined init with copy of AudioItemCandidate.BackingItem(a2, &v17[v18]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AudioItemCandidate.BackingItem(v17, v11);
    v19 = *v11;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *&v17[v18];
      type metadata accessor for NSObject();
      v21 = static NSObject.== infix(_:_:)();

LABEL_9:
      outlined destroy of AudioItemCandidate.BackingItem(v17);
      return v21 & 1;
    }
  }

  else
  {
    outlined init with copy of AudioItemCandidate.BackingItem(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, &v17[v18], v4);
      v21 = static Apple_Parsec_Siri_V2alpha_AudioItem.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v7, v4);
      v22(v13, v4);
      goto LABEL_9;
    }

    (*(v5 + 8))(v13, v4);
  }

  outlined destroy of (AudioItemCandidate.BackingItem, AudioItemCandidate.BackingItem)(v17);
  v21 = 0;
  return v21 & 1;
}

id specialized AudioItemCandidate.__allocating_init(clientResult:mediaItemRankingSignals:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  MEMORY[0x28223BE20](v4);
  v92 = (&v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v91 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v95 = &v83 - v9;
  type metadata accessor for ClientAudioResult();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    return 0;
  }

  v11 = v10;
  v12 = a1;
  v13 = ClientAudioResult.vocabularyResult.getter();
  if (one-time initialization token for pommes != -1)
  {
LABEL_30:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.pommes);
  v15 = v12;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v90 = v13;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v87 = v15;
    v20 = v19;
    v21 = swift_slowAlloc();
    v88 = v4;
    v22 = v21;
    v97 = v21;
    *v20 = 136315138;
    PommesResult.resultId.getter();
    v23 = v11;
    v24 = String.debugDescription.getter();
    v25 = a2;
    v27 = v26;

    v28 = v24;
    v11 = v23;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v97);
    a2 = v25;

    *(v20 + 4) = v29;
    _os_log_impl(&dword_2232BB000, v16, v17, "Identifier being set as resultId: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v30 = v22;
    v13 = v90;
    v4 = v88;
    MEMORY[0x223DE0F80](v30, -1, -1);
    v31 = v20;
    v15 = v87;
    MEMORY[0x223DE0F80](v31, -1, -1);
  }

  v32 = v15;
  v88 = PommesResult.resultId.getter();
  v34 = v33;

  dispatch thunk of VocabularyResult.fieldType.getter();
  UInt16.audioType.getter();
  v35 = VocabularyResult.itemType.getter();
  v89 = a2;
  if (v35 == 42184)
  {
    v39 = VocabularyResult.fields.getter();
    v83 = v11;
    v86 = v34;
    if (!v39)
    {
      goto LABEL_33;
    }

    v40 = v39;
    a2 = v39 & 0xFFFFFFFFFFFFFF8;
    if (v39 >> 62)
    {
      v41 = __CocoaSet.count.getter();
      if (v41)
      {
LABEL_13:
        v12 = 0;
        v13 = (v40 & 0xC000000000000001);
        v11 = 42189;
        while (1)
        {
          if (v13)
          {
            v42 = MEMORY[0x223DDFF80](v12, v40);
          }

          else
          {
            if (v12 >= *(a2 + 16))
            {
              goto LABEL_29;
            }

            v42 = *(v40 + 8 * v12 + 32);
          }

          v43 = v42;
          v44 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if (VocabularyField.fieldType.getter() == 42189)
          {
            break;
          }

          ++v12;
          if (v44 == v41)
          {
            goto LABEL_32;
          }
        }

        v53 = VocabularyField.value.getter();
        v55 = v54;

        a2 = v89;
        v11 = v83;
        v87 = v55;
        if (v55)
        {
          goto LABEL_34;
        }

LABEL_33:
        v53 = VocabularyResult.semanticValue.getter();
        v87 = v56;

LABEL_34:
        v57 = VocabularyResult.fields.getter();
        v85 = v53;
        if (v57)
        {
          v58 = v57;
          v59 = v57 & 0xFFFFFFFFFFFFFF8;
          if (v57 >> 62)
          {
            goto LABEL_50;
          }

          for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
          {
            v61 = 0;
            while (1)
            {
              if ((v58 & 0xC000000000000001) != 0)
              {
                v62 = MEMORY[0x223DDFF80](v61, v58);
              }

              else
              {
                if (v61 >= *(v59 + 16))
                {
                  goto LABEL_49;
                }

                v62 = *(v58 + 8 * v61 + 32);
              }

              v63 = v62;
              v64 = v61 + 1;
              if (__OFADD__(v61, 1))
              {
                break;
              }

              if (VocabularyField.fieldType.getter() == 42190)
              {

                v84 = VocabularyField.value.getter();
                v37 = v65;

                goto LABEL_52;
              }

              ++v61;
              if (v64 == i)
              {
                goto LABEL_51;
              }
            }

            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            ;
          }

LABEL_51:

          v84 = 0;
          v37 = 0;
LABEL_52:
          a2 = v89;
          v11 = v83;
          goto LABEL_53;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
        goto LABEL_13;
      }
    }

LABEL_32:

    a2 = v89;
    v11 = v83;
    goto LABEL_33;
  }

  if (v35 == 18540)
  {
    v86 = v34;
    v85 = VocabularyResult.semanticValue.getter();
    v87 = v36;
    if (a2)
    {
      v37 = *(a2 + 24);
      v84 = *(a2 + 16);

LABEL_53:
      *v92 = v11;
      swift_storeEnumTagMultiPayload();
      v66 = *(v93 + 16);
      v66(v91, v95, v94);
      if (a2)
      {
        v67 = *(a2 + 34);
      }

      else
      {
        v67 = 0;
      }

      v68 = objc_allocWithZone(type metadata accessor for AudioItemCandidate.Features());
      v69 = v32;
      v70 = [v68 init];
      v71 = type metadata accessor for AudioItemCandidate(0);
      v72 = objc_allocWithZone(v71);
      *&v72[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_score] = 1065353216;
      v73 = v92;
      outlined init with copy of AudioItemCandidate.BackingItem(v92, &v72[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_backingItem]);
      v74 = &v72[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_identifier];
      v75 = v86;
      *v74 = v88;
      v74[1] = v75;
      v72[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source] = 1;
      v76 = &v72[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title];
      v77 = v87;
      *v76 = v85;
      v76[1] = v77;
      v78 = &v72[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist];
      *v78 = v84;
      v78[1] = v37;
      v79 = v91;
      v80 = v94;
      v66(&v72[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType], v91, v94);
      v72[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_requiresSubscription] = 0;
      v72[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_isDownloaded] = v67;
      *&v72[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_features] = v70;
      v96.receiver = v72;
      v96.super_class = v71;
      v81 = objc_msgSendSuper2(&v96, sel_init);

      v82 = *(v93 + 8);
      v82(v79, v80);
      outlined destroy of AudioItemCandidate.BackingItem(v73);
      v82(v95, v80);
      return v81;
    }

LABEL_46:
    v84 = 0;
    v37 = 0;
    goto LABEL_53;
  }

  v45 = v13;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v97 = v49;
    *v48 = 136315138;
    VocabularyResult.itemType.getter();
    v50 = UInt16.cascadeDescription.getter();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v97);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_2232BB000, v46, v47, "AudioItemCandidate : initializer does not support item type : %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x223DE0F80](v49, -1, -1);
    MEMORY[0x223DE0F80](v48, -1, -1);
  }

  else
  {
  }

  (*(v93 + 8))(v95, v94);
  return 0;
}

unint64_t lazy protocol witness table accessor for type AudioItemCandidate.Source and conformance AudioItemCandidate.Source()
{
  result = lazy protocol witness table cache variable for type AudioItemCandidate.Source and conformance AudioItemCandidate.Source;
  if (!lazy protocol witness table cache variable for type AudioItemCandidate.Source and conformance AudioItemCandidate.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioItemCandidate.Source and conformance AudioItemCandidate.Source);
  }

  return result;
}

uint64_t type metadata completion function for AudioItemCandidate(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AudioItemCandidate.BackingItem(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t type metadata completion function for AudioItemCandidate.BackingItem(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ClientAudioResult();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t outlined destroy of (AudioItemCandidate.BackingItem, AudioItemCandidate.BackingItem)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch18AudioItemCandidateC07BackingE033_39A65E8D769182CAD4F711B84F5C7A7FLLO_AFtMd, &_s21SiriInformationSearch18AudioItemCandidateC07BackingE033_39A65E8D769182CAD4F711B84F5C7A7FLLO_AFtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t ContactProfileSliceResolver.__allocating_init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v23 = a6;
  v24 = a8;
  v14 = swift_allocObject();
  v16 = a7[3];
  v15 = a7[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a7, v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = specialized ContactProfileSliceResolver.init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)(a1, a2, a3, a4, a5, v23, v19, v24, v14, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a7);
  return v21;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
    ++v2;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39750]);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

void specialized Sequence.forEach(_:)(unint64_t a1, void *a2, void *a3)
{
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_33:
    v33 = a3;
    v34 = __CocoaSet.count.getter();
    a3 = v33;
    v5 = v34;
    if (v34)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v39 = v5;
      v40 = v4 & 0xFFFFFFFFFFFFFF8;
      v36 = v4;
      v37 = a3;
      v38 = v4 & 0xC000000000000001;
      v35 = a2;
      do
      {
        if (v7)
        {
          v8 = MEMORY[0x223DDFF80](v6, v4);
        }

        else
        {
          if (v6 >= *(v40 + 16))
          {
            goto LABEL_30;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v11 = [v8 contactIdentifier];
        if (v11)
        {
          v41 = v9;
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          if (*(*a2 + 16))
          {
            v16 = v4;
            v17 = v7;
            v18 = v13;
            specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
            if (v19)
            {

              v7 = v17;
              v4 = v16;
              v5 = v39;
              goto LABEL_5;
            }
          }

          else
          {
            v18 = v13;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = *a2;
          v42 = *a2;
          *a2 = 0x8000000000000000;
          v4 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v15);
          v23 = *(v21 + 16);
          v24 = (v22 & 1) == 0;
          v25 = v23 + v24;
          if (__OFADD__(v23, v24))
          {
            goto LABEL_31;
          }

          a2 = v22;
          if (*(v21 + 24) >= v25)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
            v26 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v15);
            if ((a2 & 1) != (v27 & 1))
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v4 = v26;
          }

          if (a2)
          {
            *(v42[7] + v4) = 1;
          }

          else
          {
            v42[(v4 >> 6) + 8] |= 1 << v4;
            v28 = (v42[6] + 16 * v4);
            *v28 = v18;
            v28[1] = v15;
            *(v42[7] + v4) = 1;
            v29 = v42[2];
            v30 = __OFADD__(v29, 1);
            v31 = v29 + 1;
            if (v30)
            {
              goto LABEL_32;
            }

            v42[2] = v31;
          }

          a2 = v35;
          *v35 = v42;

          v32 = v41;
          MEMORY[0x223DDF820]();
          v4 = v36;
          v7 = v38;
          if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v7 = v38;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v5 = v39;
        }

        else
        {
        }

LABEL_5:
        ++v6;
      }

      while (v10 != v5);
    }
  }
}

uint64_t ContactProfileSliceResolver.init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v23 = a6;
  v24 = a8;
  v16 = a7[3];
  v15 = a7[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a7, v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = specialized ContactProfileSliceResolver.init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)(a1, a2, a3, a4, a5, v23, v19, v24, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a7);
  return v21;
}

uint64_t ContactProfileSliceResolver.resolveRelationship()@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D396E0], v2);
  v6 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_instrumentationUtil);
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  v9 = OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId;
  v10 = (*(*v6 + 128))(v7, v8, v1 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId, v5);
  ContactProfileSliceResolver.resolveContactSlice(requestType:label:)(0, v5, v13);
  (*(*v6 + 136))(v7, v8, v1 + v9, v10);

  return (*(v3 + 8))(v5, v2);
}

void ContactProfileSliceResolver.resolveNameSlice(label:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_instrumentationUtil);
  v15 = OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId;
  v16 = *(v2 + 160);
  v17 = *(v2 + 152);
  v19 = (*(*v5 + 128))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMR);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2234CF910;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, *MEMORY[0x277D39720], v6);
  v12(v11 + v8, *MEMORY[0x277D39730], v6);
  v12(v11 + 2 * v8, *MEMORY[0x277D39728], v6);
  LOBYTE(v7) = specialized Sequence<>.contains(_:)(a1, v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v7)
  {
    ContactProfileSliceResolver.resolveContactSlice(requestType:label:)(1, a1, a2);
    (*(*v5 + 136))(v17, v16, v3 + v15, v19);
  }

  else
  {
    (*(*v5 + 144))(v17, v16, v3 + v15, v19, 2);

    v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    v14 = *(*(v13 - 8) + 56);

    v14(a2, 1, 1, v13);
  }
}

void *ContactProfileSliceResolver.resolveContactSlice(requestType:label:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v57 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v56 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x223DDBBA0](v15);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v39 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    (*(*(v39 - 8) + 56))(a3, 1, 1, v39);
  }

  v21 = specialized ContactProfileSliceResolver.buildContactQuery(request:contactName:)(a1 & 1, v18, v19);

  v22 = ContactProfileSliceResolver.searchContacts(contactQuery:)(v21);

  if (!v22)
  {
    v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    v41 = *(*(v40 - 8) + 56);

    return v41(a3, 1, 1, v40);
  }

  if (v22 >> 62)
  {
    v23 = __CocoaSet.count.getter();
    v45 = a2;
    v46 = a3;
    if (v23)
    {
      goto LABEL_7;
    }

LABEL_23:

    v26 = MEMORY[0x277D84F90];
LABEL_24:
    v42 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    MEMORY[0x28223BE20](v42);
    *(&v44 - 2) = v45;
    *(&v44 - 1) = v26;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460], MEMORY[0x277D39458]);
    v43 = v46;
    static Message.with(_:)();

    return (*(*(v42 - 8) + 56))(v43, 0, 1, v42);
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = a2;
  v46 = a3;
  if (!v23)
  {
    goto LABEL_23;
  }

LABEL_7:
  v55 = v22;
  v59 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 & ~(v23 >> 63), 0);
  v54 = v23;
  if ((v23 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = v59;
    v27 = v55;
    v49 = (v12 + 16);
    v50 = v55 & 0xC000000000000001;
    v47 = v56 + 32;
    v48 = (v12 + 8);
    v51 = v17;
    v52 = v14;
    v53 = v4;
    do
    {
      if (v50)
      {
        v28 = MEMORY[0x223DDFF80](v25);
      }

      else
      {
        v28 = *(v27 + 8 * v25 + 32);
      }

      v29 = v28;
      *(&v44 - 2) = MEMORY[0x28223BE20](v28);
      *(&v44 - 1) = v4;
      v30 = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person, MEMORY[0x277D38FC0], MEMORY[0x277D38FB8]);
      v31 = v57;
      static Message.with(_:)();
      v58[3] = v11;
      v58[4] = v30;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
      (*v49)(boxed_opaque_existential_1, v31, v11);
      defaultAnyTypeURLPrefix.getter();
      Google_Protobuf_Any.init(message:partial:typePrefix:)();
      v34 = v51;
      v33 = v52;
      v35 = type metadata accessor for Google_Protobuf_Any();
      v36 = (*(*(v35 - 8) + 56))(v10, 0, 1, v35);
      MEMORY[0x28223BE20](v36);
      *(&v44 - 2) = v10;
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768], MEMORY[0x277D39760]);
      static Message.with(_:)();

      (*v48)(v57, v11);
      outlined destroy of MediaUserStateCenter?(v10, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
      v59 = v26;
      v38 = *(v26 + 16);
      v37 = *(v26 + 24);
      if (v38 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        v26 = v59;
      }

      ++v25;
      *(v26 + 16) = v38 + 1;
      (*(v56 + 32))(v26 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v38, v34, v33);
      v4 = v53;
      v27 = v55;
    }

    while (v54 != v25);

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in ContactProfileSliceResolver.resolveContactSlice(requestType:label:)(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for Google_Protobuf_Any();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  MEMORY[0x28223BE20](v13);
  (*(v15 + 104))(&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39AD8]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v10 + 104))(v12, *MEMORY[0x277D39D58], v9);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  outlined init with copy of Google_Protobuf_Any?(v19, v4);
  v16 = *(v6 + 48);
  if (v16(v4, 1, v5) == 1)
  {
    Google_Protobuf_Any.init()();
    if (v16(v4, 1, v5) != 1)
    {
      outlined destroy of MediaUserStateCenter?(v4, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
}

uint64_t closure #2 in ContactProfileSliceResolver.resolveContactSlice(requestType:label:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();

  return Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
}

unint64_t ContactProfileSliceResolver.searchContacts(contactQuery:)(uint64_t a1)
{
  v46 = a1;
  v1 = type metadata accessor for Date();
  v47 = *(v1 - 8);
  v48 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for RecommenderType();
  v4 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v44 - v8;
  v10 = type metadata accessor for SearchSuggestedContacts();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContactResolverDomain();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = type metadata accessor for ContactResolverConfig();
  v49 = *(v16 - 8);
  v50 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppDataProviding(v44[1] + 16, v53);
  static Locale.current.getter();
  static ContactResolverDomain.all.getter();
  (*(v11 + 104))(v13, *MEMORY[0x277D56148], v10);
  static ContactHandleTypePreference.preferPhone.getter();
  v19 = type metadata accessor for ContactHandleTypePreference();
  (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
  (*(v4 + 104))(v6, *MEMORY[0x277D560D0], v45);
  v42 = 0u;
  LOWORD(v41) = 0;
  v40 = 0u;
  v20 = ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:includeResolutionSignals:commsHasForcePrompted:crrCommsAppSelectionJointId:)();
  if (one-time initialization token for shared != -1)
  {
    v20 = swift_once();
  }

  v21 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v20);
  v41 = v53;
  *&v42 = v46;
  *(&v42 + 1) = v18;
  Date.init()();
  v22 = *(*v21 + 200);
  *(&v42 + 1) = &v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  LOBYTE(v41) = 2;
  v22(&v52, 0xD000000000000029, 0x80000002234E04F0, 0, v3, "SiriInformationSearch/ContactProfileSliceResolver.swift", 55, 2, 132, "searchContacts(contactQuery:)", 29, v41, partial apply for closure #1 in ContactProfileSliceResolver.searchContacts(contactQuery:));
  (*(v47 + 8))(v3, v48);
  if (v52)
  {
    v23 = specialized Sequence.flatMap<A>(_:)(v52);

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      if (v23 >> 62)
      {
        v28 = __CocoaSet.count.getter();
      }

      else
      {
        v28 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v27 + 4) = v28;

      _os_log_impl(&dword_2232BB000, v25, v26, "NameProfileResolver: Resolved contacts %ld", v27, 0xCu);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }

    else
    {
    }

    v34 = MEMORY[0x277D84F90];
    v52 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v51 = v34;
    specialized Sequence.forEach(_:)(v23, &v52, &v51);

    v33 = v51;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      if (v33 >> 62)
      {
        v38 = __CocoaSet.count.getter();
      }

      else
      {
        v38 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v37 + 4) = v38;

      _os_log_impl(&dword_2232BB000, v35, v36, "NameProfileResolver: Deduped resolved contacts %ld", v37, 0xCu);
      MEMORY[0x223DE0F80](v37, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.pommes);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2232BB000, v30, v31, "NameProfileResolver: No resolved contacts", v32, 2u);
      MEMORY[0x223DE0F80](v32, -1, -1);
    }

    v33 = 0;
  }

  (*(v49 + 8))(v18, v50);
  __swift_destroy_boxed_opaque_existential_1(v53);
  return v33;
}

uint64_t closure #1 in ContactProfileSliceResolver.searchContacts(contactQuery:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  result = (*(v9 + 8))(a2, a3, v8, v9);
  if (v4)
  {

    result = 0;
  }

  *a4 = result;
  return result;
}

uint64_t static ContactProfileSliceResolver.toContactNode(occupantNode:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v21 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference24ContactRelationshipQueryVSgMd, &_s13SiriInference24ContactRelationshipQueryVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  ContactQuery.init()();
  OccupantIntentNode.fullName.getter();
  ContactQuery.fullName.setter();
  if (ContactQuery.fullName.getter() || v12 != 0xE000000000000000)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  OccupantIntentNode.firstName.getter();
  ContactQuery.givenName.setter();
  OccupantIntentNode.lastName.getter();
  ContactQuery.familyName.setter();
LABEL_6:
  OccupantIntentNode.nickname.getter();
  ContactQuery.nickname.setter();
  OccupantIntentNode.namePrefix.getter();
  v14 = type metadata accessor for PersonOntologyNode.PersonNamePrefix();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  }

  else
  {
    PersonOntologyNode.PersonNamePrefix.rawValue.getter();
    (*(v15 + 8))(v11, v14);
  }

  ContactQuery.namePrefix.setter();
  OccupantIntentNode.namePostfix.getter();
  v16 = type metadata accessor for PersonOntologyNode.PersonNamePostfix();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v8, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  }

  else
  {
    PersonOntologyNode.PersonNamePostfix.rawValue.getter();
    (*(v17 + 8))(v8, v16);
  }

  ContactQuery.nameSuffix.setter();
  OccupantIntentNode.company.getter();
  ContactQuery.organizationName.setter();
  OccupantIntentNode.relationship.getter();
  v18 = type metadata accessor for ContactQuery();
  (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
  ContactRelationshipQuery.init(label:fromContact:)();
  v19 = type metadata accessor for ContactRelationshipQuery();
  (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
  return ContactQuery.relationship.setter();
}

id closure #1 in ContactProfileSliceResolver.buildPerson(person:)(uint64_t a1, void *a2, uint64_t a3)
{
  v23[1] = a3;
  v4 = type metadata accessor for PersonNameComponents();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v24 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = [a2 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Apple_Parsec_Siri_V2alpha_Person.fullName.setter();
  v11 = [a2 contactIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23[0] = v4;
    v15 = v14;

    Apple_Parsec_Siri_V2alpha_Person.contactIdentifier.setter();
    ContactProfileSliceResolver.getAddresses(identifier:)(v13, v15);
    v4 = v23[0];

    Apple_Parsec_Siri_V2alpha_Person.addresses.setter();
  }

  result = [a2 nameComponents];
  if (result)
  {
    v17 = v24;
    v18 = result;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v9, v17, v4);
    PersonNameComponents.givenName.getter();
    if (v19)
    {
      Apple_Parsec_Siri_V2alpha_Person.givenName.setter();
    }

    PersonNameComponents.familyName.getter();
    if (v20)
    {
      Apple_Parsec_Siri_V2alpha_Person.familyName.setter();
    }

    PersonNameComponents.middleName.getter();
    if (v21)
    {
      Apple_Parsec_Siri_V2alpha_Person.middleName.setter();
    }

    PersonNameComponents.nickname.getter();
    if (v22)
    {
      Apple_Parsec_Siri_V2alpha_Person.nickname.setter();
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

void ContactProfileSliceResolver.getAddresses(identifier:)(uint64_t a1, uint64_t *a2)
{
  v37 = a2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress();
  v38 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v40 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = v35 - v7;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    v10 = swift_once();
  }

  v36 = v35;
  v13 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v10);
  v31 = v2;
  v32 = a1;
  v33 = v37;
  Date.init()();
  v14 = *(*v13 + 200);
  v33 = &v30;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9CNContactCSgMd, &_sSo9CNContactCSgMR);
  LOBYTE(v31) = 2;
  v14(&v41, 0xD00000000000003ALL, 0x80000002234E0450, 0, v12, "SiriInformationSearch/ContactProfileSliceResolver.swift", 55, 2, 221, "getAddresses(identifier:)", 25, v31, partial apply for closure #1 in ContactProfileSliceResolver.getAddresses(identifier:));
  (*(v9 + 8))(v12, v8);
  v15 = v41;
  if (!v41)
  {
    return;
  }

  v16 = [v41 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = v17;
  if (v17 >> 62)
  {
    v29 = __CocoaSet.count.getter();
    v18 = v17;
    v19 = v29;
    v35[0] = v15;
    if (v29)
    {
      goto LABEL_6;
    }

LABEL_19:

    return;
  }

  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35[0] = v15;
  if (!v19)
  {
    goto LABEL_19;
  }

LABEL_6:
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = (v38 + 2);
    v35[2] = v38 + 1;
    v36 = (v18 & 0xC000000000000001);
    v35[1] = v38 + 4;
    v22 = MEMORY[0x277D84F90];
    v37 = v18;
    do
    {
      if (v36)
      {
        v23 = MEMORY[0x223DDFF80](v20);
      }

      else
      {
        v23 = *(v18 + 8 * v20 + 32);
      }

      v24 = v23;
      v33 = MEMORY[0x28223BE20](v23);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress, MEMORY[0x277D39648], MEMORY[0x277D39640]);
      v25 = v39;
      static Message.with(_:)();
      (*v21)(v40, v25, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v27 = *(v22 + 2);
      v26 = *(v22 + 3);
      if (v27 >= v26 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v22);
      }

      ++v20;

      v28 = v38;
      (v38[1])(v39, v4);
      *(v22 + 2) = v27 + 1;
      (v28)[4](&v22[((*(v28 + 80) + 32) & ~*(v28 + 80)) + v28[9] * v27], v40, v4);
      v18 = v37;
    }

    while (v19 != v20);
    goto LABEL_19;
  }

  __break(1u);
}

void closure #1 in ContactProfileSliceResolver.getAddresses(identifier:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_contactStore);
  v6 = MEMORY[0x223DDF550](a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2234D0FE0;
  v8 = *MEMORY[0x277CBD0C8];
  *(v7 + 32) = *MEMORY[0x277CBD0C8];
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15[0] = 0;
  v11 = [v5 unifiedContactWithIdentifier:v6 keysToFetch:isa error:v15];

  v12 = v15[0];
  if (!v11)
  {
    v13 = v12;
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  *a4 = v11;
}

uint64_t closure #2 in ContactProfileSliceResolver.getAddresses(identifier:)(int a1, id a2)
{
  v3 = [a2 label];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  Apple_Parsec_Siri_V2alpha_Person.givenName.setter();
  v5 = [a2 value];
  v6 = [v5 street];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Apple_Parsec_Siri_V2alpha_Person.middleName.setter();
  v7 = [a2 value];
  v8 = [v7 city];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Apple_Parsec_Siri_V2alpha_Person.familyName.setter();
  v9 = [a2 value];
  v10 = [v9 ISOCountryCode];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Apple_Parsec_Siri_V2alpha_ContactAddress.countryCode.setter();
  v11 = [a2 value];
  v12 = [v11 postalCode];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Apple_Parsec_Siri_V2alpha_Person.fullName.setter();
  v13 = [a2 value];
  v14 = [v13 state];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Apple_Parsec_Siri_V2alpha_Person.nickname.setter();
}

char *ContactProfileSliceResolver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  outlined consume of AssistantDataSnapshot?(*(v0 + 7), *(v0 + 8), *(v0 + 9), *(v0 + 10), *(v0 + 11), *(v0 + 12), *(v0 + 13), *(v0 + 14), *(v0 + 15), *(v0 + 16), *(v0 + 17));

  outlined destroy of MediaUserStateCenter?(&v0[OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId], &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v1 = OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_resolutionRequest;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return v0;
}

uint64_t ContactProfileSliceResolver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  outlined consume of AssistantDataSnapshot?(*(v0 + 7), *(v0 + 8), *(v0 + 9), *(v0 + 10), *(v0 + 11), *(v0 + 12), *(v0 + 13), *(v0 + 14), *(v0 + 15), *(v0 + 16), *(v0 + 17));

  outlined destroy of MediaUserStateCenter?(&v0[OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId], &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v1 = OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_resolutionRequest;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

uint64_t specialized ContactProfileSliceResolver.init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a9 + 40) = a10;
  *(a9 + 48) = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a9 + 16));
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a7, a10);
  v20 = a1[3];
  *(a9 + 88) = a1[2];
  *(a9 + 104) = v20;
  *(a9 + 120) = a1[4];
  *(a9 + 130) = *(a1 + 74);
  v21 = a1[1];
  *(a9 + 56) = *a1;
  *(a9 + 72) = v21;
  *(a9 + 152) = a2;
  *(a9 + 160) = a3;
  outlined init with take of PommesCandidateId?(a4, a9 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId);
  v22 = OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_resolutionRequest;
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  (*(*(v23 - 8) + 32))(a9 + v22, a5, v23);
  *(a9 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_contactStore) = a8;
  *(a9 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_instrumentationUtil) = a6;
  return a9;
}

void outlined consume of AssistantDataSnapshot?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a4)
  {
  }
}

uint64_t type metadata accessor for ContactProfileSliceResolver(uint64_t a1)
{
  result = type metadata singleton initialization cache for ContactProfileSliceResolver;
  if (!type metadata singleton initialization cache for ContactProfileSliceResolver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ContactProfileSliceResolver(uint64_t a1)
{
  type metadata accessor for PommesCandidateId?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of ContactProfileSliceResolver.__allocating_init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(v1 + 136);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  v8[4] = *(a1 + 64);
  v9 = v2;
  v10 = v3;
  return v4(v8);
}

void type metadata accessor for PommesCandidateId?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PommesCandidateId?)
  {
    type metadata accessor for PommesCandidateId();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PommesCandidateId?);
    }
  }
}

unint64_t type metadata accessor for INPerson()
{
  result = lazy cache variable for type metadata for INPerson;
  if (!lazy cache variable for type metadata for INPerson)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INPerson);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [INPerson] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [INPerson] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPerson] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [INPerson] and conformance [A]);
  }

  return result;
}

uint64_t specialized ContactProfileSliceResolver.buildContactQuery(request:contactName:)(char a1, uint64_t a2, uint64_t a3)
{
  v75 = type metadata accessor for ContactQuery();
  v84 = *(v75 - 8);
  v5 = MEMORY[0x28223BE20](v75);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v67 - v7;
  v85 = type metadata accessor for OccupantIntentNode();
  v72 = *(v85 - 8);
  v8 = MEMORY[0x28223BE20](v85);
  v69 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v70 = &v67 - v11;
  MEMORY[0x28223BE20](v10);
  v79 = &v67 - v12;
  v13 = type metadata accessor for NonTerminalIntentNode();
  v82 = *(v13 - 8);
  v83 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v74 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV5ValueOSgMd, &_s12SiriOntology15TerminalElementV5ValueOSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v67 - v19);
  v21 = type metadata accessor for TerminalIntentNode();
  v81 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v20 = a2;
  v20[1] = a3;
  v24 = *MEMORY[0x277D5E5C8];
  v25 = type metadata accessor for TerminalElement.Value();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v20, v24, v25);
  (*(v26 + 56))(v20, 0, 1, v25);

  v27 = v79;
  TerminalIntentNode.init(name:value:semanticTags:)();
  type metadata accessor for AddressOntologyNode.OccupantNode();
  swift_allocObject();
  v28 = AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMR);
  v29 = swift_allocObject();
  v71 = xmmword_2234CF920;
  *(v29 + 16) = xmmword_2234CF920;
  v30 = MEMORY[0x277D5E670];
  *(v29 + 56) = v21;
  *(v29 + 64) = v30;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v29 + 32));
  v32 = *(v81 + 16);
  v76 = v23;
  v77 = v21;
  v32(boxed_opaque_existential_1, v23, v21);
  v33 = v80;
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  v34 = *(v82 + 16);
  v78 = v17;
  v34(v74, v17, v83);

  v74 = v28;
  OccupantIntentNode.init(intentNode:ontologyNode:)();
  type metadata accessor for ContactProfileSliceResolver(0);
  static ContactProfileSliceResolver.toContactNode(occupantNode:)();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.pommes);
  v36 = v72;
  v37 = *(v72 + 16);
  v38 = v70;
  v37(v70, v27, v85);
  v39 = v73;
  v40 = v75;
  (*(v84 + 16))(v73, v33, v75);
  v41 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  v42 = v38;
  if (os_log_type_enabled(v41, v68))
  {
    v43 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v86[0] = v67;
    *v43 = 136315394;
    v44 = v85;
    v37(v69, v38, v85);
    v45 = String.init<A>(describing:)();
    v46 = v44;
    v47 = v41;
    v48 = v39;
    v49 = v40;
    v51 = v50;
    v52 = *(v36 + 8);
    v52(v42, v46);
    v53 = v52;
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v51, v86);
    v40 = v49;
    v55 = v84;

    *(v43 + 4) = v54;
    *(v43 + 12) = 2080;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, MEMORY[0x277D55FF8], MEMORY[0x277D56000]);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    (*(v55 + 8))(v48, v40);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v86);
    v33 = v80;

    *(v43 + 14) = v59;
    _os_log_impl(&dword_2232BB000, v47, v68, "NameProfileResolver: occupant node %s contactQuery %s", v43, 0x16u);
    v60 = v67;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v60, -1, -1);
    v61 = v43;
    v27 = v79;
    MEMORY[0x223DE0F80](v61, -1, -1);
  }

  else
  {

    (*(v84 + 8))(v39, v40);
    v62 = *(v36 + 8);
    v62(v42, v85);
    v53 = v62;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
  v63 = v84;
  v64 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = v71;
  (*(v63 + 32))(v65 + v64, v33, v40);

  v53(v27, v85);
  (*(v82 + 8))(v78, v83);
  (*(v81 + 8))(v76, v77);
  return v65;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t UInt16.mpMediaEntityType.getter(unsigned __int16 a1)
{
  if (a1 - 18557 <= 9)
  {
    if (((1 << (a1 - 125)) & 0x35B) != 0)
    {
      return 0;
    }

    if (a1 == 18559)
    {
      return 3;
    }

    if (a1 == 18564)
    {
      return 2;
    }
  }

  v2 = 7;
  if (a1 != 18556)
  {
    v2 = a1 == 18562;
  }

  if (a1 == 18555)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t PegasusProxy.__allocating_init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)(uint64_t (*a1)(uint64_t), uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10)
{
  v39 = a7;
  v40 = a8;
  v37 = a4;
  v38 = a6;
  v35 = a1;
  v36 = a2;
  v34 = a10;
  v12 = swift_allocObject();
  v13 = a3[3];
  v32 = a3[4];
  v33 = v12;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = a5[3];
  v31 = a5[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a5, v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = a9[3];
  v24 = a9[4];
  v25 = __swift_mutable_project_boxed_opaque_existential_1(a9, v23);
  MEMORY[0x28223BE20](v25);
  v27 = &v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  v29 = specialized PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)(v35, v36, v16, v37, v21, v38, v39, v40, v27, v34, v33, v23, v13, v18, v24, v32, v31);

  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v29;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_D11SearchQueryVG_AHs5NeverOTg504_s21h19InformationSearch12d59ProxyC22addRewrittenUtterances2to12delegatedUDASay0D3API013f1_g4_a9_i4_dC5K67VGAJ_0A8NLUTypes0A36_Nlu_External_DelegatedUserDialogActVtFA2IXEfU_AF0f1_g1_h1_i1_R9UtteranceVTf1cn_n(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v22[1] = v2;
    v30 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v30;
    v11 = *(v5 + 16);
    v10 = v5 + 16;
    v26 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v27 = v11;
    v12 = a1 + v26;
    v24 = *(v10 + 56);
    v25 = (v10 + 16);
    v23 = xmmword_2234CF920;
    v28 = v10;
    do
    {
      v27(v7, v12, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVGMR);
      v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
      v14 = *(v13 - 8);
      v15 = v4;
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v23;
      (*(v14 + 16))(v17 + v16, v29, v13);
      Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.rewrittenUtterances.setter();
      v30 = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v9 = v30;
      }

      *(v9 + 16) = v19 + 1;
      v20 = v24;
      (*v25)(v9 + v26 + v19 * v24, v7, v15);
      v12 += v20;
      --v8;
      v4 = v15;
    }

    while (v8);
  }

  return v9;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_D11SearchQueryVG_AHs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v10 = v22;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a3 + v18;
  v17 = (v6 + 32);
  v12 = *(v6 + 72);
  while (1)
  {
    v20(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*v17)(v10 + v18 + v14 * v12, v8, v19);
    v11 += v12;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriNLUTypes0D18_Nlu_External_SpanVG_10PegasusAPI013Apple_Parsec_D21_Context_ClientEntityVsAE_pTg5(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v21;
    v11 = *(type metadata accessor for Siri_Nlu_External_Span() - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16[1] = v6 + 32;
    v16[0] = *(v11 + 72);
    while (1)
    {
      v18(v12, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
      v12 += v16[0];
      if (!--v9)
      {
        return v10;
      }
    }
  }

  return v10;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology010Com_Apple_D26_Product_Proto_DisplayHintVG_10PegasusAPI0g8_Parsec_d9_Context_ljK0Vs5NeverOTg5Tm(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v25 = a1;
  v26 = a2;
  v24 = a4(0);
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v21 - v12;
  v14 = *(a3 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v27 = MEMORY[0x277D84F90];
  v21 = a5;
  a5(0, v14, 0);
  v15 = v27;
  v16 = *(a6(0) - 8);
  v17 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v23 = v11 + 32;
  v22 = *(v16 + 72);
  while (1)
  {
    v25(v17);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v27 = v15;
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v19 >= v18 >> 1)
    {
      v21(v18 > 1, v19 + 1, 1);
      v15 = v27;
    }

    *(v15 + 16) = v19 + 1;
    (*(v11 + 32))(v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19, v13, v24);
    v17 += v22;
    if (!--v14)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t PegasusSearchResponse.init(request:response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for PegasusSearchResponse(0) + 20);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t static PegasusProxy.multiUserContext(for:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_MultiUserContext.init()();
  v6 = type metadata accessor for PommesSearchRequest(0);

  Apple_Parsec_Siri_V2alpha_MultiUserContext.sharedUserID.setter();
  v7 = *(a1 + *(v6 + 88));
  if (v7 > 4)
  {
    v8 = MEMORY[0x277D39690];
  }

  else
  {
    v8 = qword_2784DAE00[v7];
  }

  (*(v3 + 104))(v5, *v8, v2);
  return Apple_Parsec_Siri_V2alpha_MultiUserContext.userIdentificationClassification.setter();
}

uint64_t PegasusSearchResponse.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PegasusSearchResponse.response.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PegasusSearchResponse(0) + 20);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

Swift::Int PegasusError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](a1);
  return Hasher._finalize()();
}

uint64_t OnDeviceLabels.userSpanLabels.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t OnDeviceLabels.onScreenContextLabels.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

SiriInformationSearch::OnDeviceLabels __swiftcall OnDeviceLabels.init()()
{
  v0 = MEMORY[0x277D84F90];
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch19OnScreenContextTypeO_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = v0;
  result.onScreenContextLabels._rawValue = v1;
  result.userSpanLabels._rawValue = v2;
  return result;
}

unint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.summarizedDescription.getter()
{
  v1 = type metadata accessor for Latencyinfopb_KfedLatencyInfo();
  v93 = *(v1 - 8);
  v94 = v1;
  MEMORY[0x28223BE20](v1);
  v92 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest();
  v102 = *(v5 - 8);
  v103 = v5;
  MEMORY[0x28223BE20](v5);
  v101 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v105 = *(v110 - 8);
  v7 = MEMORY[0x28223BE20](v110);
  v96 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v85 - v9;
  v109 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v11 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v98 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v85 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v97 = &v85 - v21;
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v95 = &v85 - v27;
  v104 = v0;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  v28 = *(v15 + 8);
  v99 = v15 + 8;
  v100 = v14;
  v106 = v28;
  v29 = v28(v19, v14);
  v30 = v23;
  v31 = v22;
  v32 = MEMORY[0x223DDB9C0](v29);
  result = (*(v11 + 8))(v13, v109);
  v109 = *(v32 + 16);
  if (v109)
  {
    v34 = 0;
    v108 = v32 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v107 = v23 + 16;
    v35 = (v105 + 8);
    v36 = (v23 + 8);
    while (v34 < *(v32 + 16))
    {
      v37 = v30;
      (*(v30 + 16))(v26, v108 + *(v30 + 72) * v34, v31);
      v38 = v31;
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.renderedDialog.getter();
      v39 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.print.getter();
      v41 = v40;
      (*v35)(v10, v110);

      v42 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) == 0)
      {
        v42 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (v42)
      {

        v44 = v97;
        (*(v37 + 32))(v97, v26, v38);
        v43 = 0;
        v31 = v38;
        v30 = v37;
        goto LABEL_10;
      }

      ++v34;
      result = (*v36)(v26, v38);
      v31 = v38;
      v30 = v37;
      if (v109 == v34)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v43 = 1;
    v44 = v97;
LABEL_10:
    (*(v30 + 56))(v44, v43, 1, v31);
    v45 = (*(v30 + 48))(v44, 1, v31);
    v46 = v100;
    v47 = v106;
    if (v45 == 1)
    {
      outlined destroy of MediaUserStateCenter?(v44, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVSgMR);
      v97 = 0;
      v109 = 0xE000000000000000;
      v107 = 0;
      v108 = 0xE000000000000000;
    }

    else
    {
      v48 = v95;
      (*(v30 + 32))(v95, v44, v31);
      v49 = v96;
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.renderedDialog.getter();
      v97 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.speak.getter();
      v108 = v50;
      v51 = v46;
      v52 = *(v105 + 8);
      v53 = v110;
      v52(v49, v110);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.renderedDialog.getter();
      v107 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
      v109 = v54;
      v52(v49, v53);
      v46 = v51;
      (*(v30 + 8))(v48, v31);
    }

    v55 = v103;
    v57 = v101;
    v56 = v102;
    v58 = v98;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.getter();
    v59 = v47(v58, v46);
    v60 = v46;
    v61 = MEMORY[0x223DDBA80](v59);
    v62 = *(v56 + 8);
    v62(v57, v55);
    v63 = *(v61 + 16);

    if (v63)
    {

      v112 = 0;
      v113 = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      MEMORY[0x223DDF6D0](0xD000000000000013, 0x80000002234E0580);
      v64 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryString.getter();
      MEMORY[0x223DDF6D0](v64);

      MEMORY[0x223DDF6D0](0xD00000000000001CLL, 0x80000002234E05A0);
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.getter();
      v106(v58, v60);
      v65 = Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest.summarizedDescription.getter();
      v67 = v66;
      v62(v57, v55);
      MEMORY[0x223DDF6D0](v65, v67);

      v68 = 0x5D202020200ALL;
      v69 = 0xE600000000000000;
    }

    else
    {
      if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasError.getter())
      {

        v112 = 0;
        v113 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);

        v112 = 0xD000000000000013;
        v113 = 0x80000002234E0580;
        v70 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryString.getter();
        MEMORY[0x223DDF6D0](v70);

        MEMORY[0x223DDF6D0](0x7265202020200A2CLL, 0xED0000203A726F72);
        v71 = v86;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.error.getter();
        v72 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.message.getter();
        v74 = v73;
        (*(v87 + 8))(v71, v88);
        MEMORY[0x223DDF6D0](v72, v74);
      }

      else
      {
        v112 = 0;
        v113 = 0xE000000000000000;
        _StringGuts.grow(_:)(163);
        MEMORY[0x223DDF6D0](0xD000000000000013, 0x80000002234E0580);
        v75 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryString.getter();
        MEMORY[0x223DDF6D0](v75);

        MEMORY[0x223DDF6D0](0xD00000000000001CLL, 0x80000002234E05C0);
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
        Double.write<A>(to:)();
        MEMORY[0x223DDF6D0](0xD000000000000012, 0x80000002234E05E0);
        v76 = v89;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v77 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
        v79 = v78;
        v80 = *(v90 + 8);
        v81 = v91;
        v80(v76, v91);
        MEMORY[0x223DDF6D0](v77, v79);

        MEMORY[0x223DDF6D0](0xD00000000000001DLL, 0x80000002234E0600);
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v82 = v92;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.latencyInfo.getter();
        v80(v76, v81);
        v83 = Latencyinfopb_KfedLatencyInfo.overallMs.getter();
        (*(v93 + 8))(v82, v94);
        v111 = v83;
        v84 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x223DDF6D0](v84);

        MEMORY[0x223DDF6D0](0xD00000000000001CLL, 0x80000002234E0620);
        MEMORY[0x223DDF6D0](v97, v108);

        MEMORY[0x223DDF6D0](0xD00000000000001BLL, 0x80000002234E0640);
        MEMORY[0x223DDF6D0](v107, v109);
      }

      v68 = 32010;
      v69 = 0xE200000000000000;
    }

    MEMORY[0x223DDF6D0](v68, v69);
    return v112;
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest.summarizedDescription.getter()
{
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v0 = *(v24 - 8);
  v1 = MEMORY[0x28223BE20](v24);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x223DDBA80](v1);
  v5 = *(v4 + 16);
  if (v5)
  {
    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v27;
    v8 = *(v0 + 16);
    v7 = v0 + 16;
    v9 = v4 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v22 = *(v7 + 56);
    v23 = v8;
    v20 = v4;
    v21 = (v7 - 8);
    do
    {
      v10 = v24;
      v11 = v7;
      v23(v3, v9, v24);
      v25 = 9;
      v26 = 0xE100000000000000;
      v12 = Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest.summarizedDescription.getter();
      MEMORY[0x223DDF6D0](v12);

      v14 = v25;
      v13 = v26;
      (*v21)(v3, v10);
      v27 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v6 = v27;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v9 += v22;
      --v5;
      v7 = v11;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v25 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  v18 = BidirectionalCollection<>.joined(separator:)();

  return v18;
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest.summarizedDescription.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  MEMORY[0x28223BE20](v1);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3, v0, v1);
  *&v55 = String.init<A>(describing:)();
  *(&v55 + 1) = v5;
  v52 = lazy protocol witness table accessor for type String and conformance String();
  v6 = MEMORY[0x223DDFE20](10, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0]);

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + 56;
    v50 = *(v6 + 16);
    v48 = v7 - 1;
    v10 = MEMORY[0x277D84F90];
    v51 = v6;
    v49 = v6 + 56;
    do
    {
      v11 = (v9 + 32 * v8);
      v12 = v8;
      while (1)
      {
        if (v12 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v14 = *(v11 - 3);
        v13 = *(v11 - 2);
        v3 = *(v11 - 1);
        v15 = *v11;
        v8 = v12 + 1;
        *&v55 = v14;
        *(&v55 + 1) = v13;
        v56 = v3;
        v57 = v15;
        v53 = 8250;
        v54 = 0xE200000000000000;
        lazy protocol witness table accessor for type Substring and conformance Substring();

        if (StringProtocol.contains<A>(_:)())
        {
          break;
        }

        v11 += 4;
        ++v12;
        v6 = v51;
        if (v50 == v8)
        {
          goto LABEL_15;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
        v10 = v58;
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = v10;
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v19 = v58;
      }

      *(v19 + 16) = v18 + 1;
      v20 = (v19 + 32 * v18);
      v20[4] = v14;
      v20[5] = v13;
      v20[6] = v3;
      v20[7] = v15;
      v9 = v49;
      v10 = v19;
      v6 = v51;
    }

    while (v48 != v12);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v21 = *(v10 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v10 + 56;
    v51 = v21 - 1;
    v3 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D83E40];
    v52 = v10 + 56;
LABEL_17:
    v25 = (v23 + 32 * v22);
    v26 = v22;
    while (v26 < *(v10 + 16))
    {
      v22 = v26 + 1;
      v27 = *(v25 - 1);
      v28 = *v25;
      v55 = *(v25 - 3);
      v56 = v27;
      v57 = v28;
      v29 = lazy protocol witness table accessor for type Substring and conformance Substring();

      v30 = MEMORY[0x223DDFE20](58, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, v24, v29);
      v31 = *(v30 + 16);
      if (v31)
      {
        v50 = v10;
        v32 = (v30 + 32 * v31);
        v33 = *v32;
        v34 = v32[1];
        v35 = v32[3];
        v49 = v32[2];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
        }

        v37 = *(v3 + 2);
        v36 = *(v3 + 3);
        if (v37 >= v36 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v3);
        }

        *(v3 + 2) = v37 + 1;
        v38 = &v3[32 * v37];
        *(v38 + 4) = v33;
        *(v38 + 5) = v34;
        v10 = v50;
        *(v38 + 6) = v49;
        *(v38 + 7) = v35;
        v23 = v52;
        if (v51 != v26)
        {
          goto LABEL_17;
        }

        goto LABEL_29;
      }

      v25 += 4;
      ++v26;
      if (v21 == v22)
      {
        goto LABEL_29;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    if (!*(result + 16))
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v3 = MEMORY[0x277D84F90];
LABEL_29:

  if (!*(v3 + 2))
  {
    goto LABEL_33;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_36;
  }

  if (*(v3 + 2))
  {
LABEL_32:
    *&v55 = 58;
    *(&v55 + 1) = 0xE100000000000000;
    v40 = MEMORY[0x223DDF600](*(v3 + 4), *(v3 + 5), *(v3 + 6), *(v3 + 7));
    v42 = v41;

    v53 = v40;
    v54 = v42;
    String.append<A>(contentsOf:)();
    *(v3 + 4) = MEMORY[0x223DDFD80](v53, v54);
    *(v3 + 5) = v43;
    *(v3 + 6) = v44;
    *(v3 + 7) = v45;
LABEL_33:
    *&v55 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySsGMd, &_sSaySsGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [Substring] and conformance [A], &_sSaySsGMd, &_sSaySsGMR, MEMORY[0x277D83970]);
    lazy protocol witness table accessor for type Substring and conformance Substring();
    v46 = Sequence<>.joined(separator:)();

    return v46;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t (*protocol witness for PegasusProxyClient.metadata.modify in conformance PegasusProxyForAssistant(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = dispatch thunk of BasePegasusProxy.metadata.modify();
  return protocol witness for PegasusProxyClient.metadata.modify in conformance PegasusProxyForAssistant;
}

void protocol witness for PegasusProxyClient.metadata.modify in conformance PegasusProxyForAssistant(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t one-time initialization function for allowedClientEntityLabels()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for allowedClientEntityLabels);
  result = swift_arrayDestroy();
  static PegasusProxy.allowedClientEntityLabels = v0;
  return result;
}

uint64_t static PegasusProxy.defaultLocationManager()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AssistantLocationProvider(0);
  swift_allocObject();
  result = specialized AssistantLocationProvider.init(serviceHelper:)(0);
  a1[3] = v2;
  a1[4] = &protocol witness table for AssistantLocationProvider;
  *a1 = result;
  return result;
}

uint64_t key path setter for PegasusProxy.client : PegasusProxy(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = *a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t PegasusProxy.phoneCallStateManager.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
}

uint64_t closure #1 in variable initialization expression of PegasusProxy.requestCancellableQueue()
{
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v10[1] = "til.logEndOfPegasusRequest";
  (*(v6 + 104))(v8, *MEMORY[0x277D851C8], v5);
  v10[0] = static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v8, v5);
  static DispatchQoS.unspecified.getter();
  v12 = MEMORY[0x277D84F90];
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v11);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t PegasusProxy.__allocating_init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:profileSliceResolvingDataProvider:pimsEnablementProvider:pegasusClientBuilder:locationManager:networkAvailabilityProvider:instrumentationUtil:preferences:rrClient:contactStore:muxContextManager:dialogStateManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15)
{
  v75 = a7;
  v74 = a6;
  v80 = a5;
  v81 = a4;
  v86 = a3;
  v85 = a2;
  v58 = a1;
  v71 = a15;
  v78 = a13;
  v73 = a10;
  v72 = a9;
  v87 = a11;
  v68 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS.QoSClass();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v18 - 8);
  v60 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v20 - 8);
  v57 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a8;
  outlined init with copy of AppDataProviding(a8, v96);
  v77 = a12;
  outlined init with copy of AppDataProviding(a12, v95);
  type metadata accessor for AppDataProvider();
  v22 = swift_allocObject();
  *(&v93 + 1) = &type metadata for PommesSystemAppChecking;
  v94 = &protocol witness table for PommesSystemAppChecking;
  v23 = objc_allocWithZone(MEMORY[0x277D23C38]);
  v70 = a14;

  v69 = v87;
  v24 = v81;

  *(v22 + 56) = [v23 init];
  outlined init with take of PommesAppChecking(&v92, v22 + 16);
  v25 = [objc_opt_self() sharedPreferences];
  v87 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v22, v25);

  v26 = swift_allocObject();
  *(&v93 + 1) = &type metadata for PommesSystemAppChecking;
  v94 = &protocol witness table for PommesSystemAppChecking;
  *(v26 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of PommesAppChecking(&v92, v26 + 16);
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v84 = _s21SiriInformationSearch0A22KitAppInfoDataProviderC4make03appgH0014satisfyingAppsgH0010foregroundeH00jc4ViewH0AA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0eG9Providing_p_AA010SatisfyinglgH0_pSgAA010ForegroundeH0_pAA0ecnH0_pSgtFZTf4enenn_nAA0egH0C_AA012RunningBoardyeH0VTt3g5(v26, 0, 0, &v92);

  outlined destroy of MediaUserStateCenter?(&v92, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  type metadata accessor for MarketplaceInfoDataProvider(0);
  v27 = swift_allocObject();
  v28 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  v29 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
  swift_allocObject();
  v64 = specialized AnyDataProvider.init<A>(provider:)(v27);
  type metadata accessor for PairedDeviceDataProvider();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
  swift_allocObject();
  v61 = specialized AnyDataProvider.init<A>(provider:)(v30);
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v92, &v89, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  type metadata accessor for GMAvailabilityPolicyDataProvider(0);
  swift_allocObject();
  v31 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(&v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
  swift_allocObject();
  v59 = specialized AnyDataProvider.init<A>(provider:)(v31);
  outlined destroy of MediaUserStateCenter?(&v92, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  v32 = type metadata accessor for CarPlaySessionDataProvider();
  v33 = objc_allocWithZone(v32);
  v34 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  *&v33[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
  v33[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
  *&v33[v34] = 0;
  v88.receiver = v33;
  v88.super_class = v32;
  v35 = objc_msgSendSuper2(&v88, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
  swift_allocObject();
  v83 = specialized AnyDataProvider.init<A>(provider:)(v35);
  type metadata accessor for SiriEnvironment();
  v82 = static SiriEnvironment.default.getter();
  type metadata accessor for DataProviderManager();
  v36 = swift_allocObject();
  *(&v93 + 1) = &type metadata for PommesSystemAppChecking;
  v94 = &protocol witness table for PommesSystemAppChecking;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  v37 = v63;
  v38 = v62;
  v39 = v65;
  (*(v63 + 104))(v62, *MEMORY[0x277D851C8], v65);
  static OS_dispatch_queue.global(qos:)();
  (*(v37 + 8))(v38, v39);
  (*(v67 + 104))(v66, *MEMORY[0x277D85260], v68);
  v40 = v84;
  v41 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v36 + 128) = 0u;
  *(v36 + 144) = 0u;
  *(v36 + 160) = 0u;
  *(v36 + 176) = 0;
  v42 = v58;
  *(v36 + 16) = v41;
  *(v36 + 24) = v42;
  v43 = v86;
  *(v36 + 32) = v85;
  *(v36 + 40) = v43;
  *(v36 + 48) = v87;
  *(v36 + 56) = v40;
  if (v24)
  {

    v44 = v24;
    v45 = v70;
  }

  else
  {
    type metadata accessor for AnalyticsComponentIdGenerator();
    v89 = 0u;
    v90 = 0u;
    v91 = 0;
    v46 = swift_allocObject();
    type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *(v47 + 24) = v46;

    v48 = v70;
    v44 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(&v89, v47, v70);

    outlined destroy of MediaUserStateCenter?(&v89, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    v45 = v48;
  }

  v49 = v64;
  *(v36 + 64) = v44;
  *(v36 + 72) = v49;
  *(v36 + 80) = v61;
  *(v36 + 96) = v83;
  *(v36 + 104) = v45;
  v50 = v69;
  *(v36 + 112) = v82;
  *(v36 + 120) = v50;
  *(v36 + 128) = 0;
  *(v36 + 136) = 0;
  v70 = v50;

  outlined init with copy of AppDataProviding(&v92, &v89);
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(&v89, v36 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
  swift_endAccess();
  *(v36 + 88) = v59;
  v51 = *(**(v36 + 40) + 160);

  v51(1);

  v52 = *(**(v36 + 48) + 160);

  v52(1);

  (*(**(v36 + 56) + 160))(1);

  v53 = v70;

  __swift_destroy_boxed_opaque_existential_1(&v92);
  v54 = v78;
  outlined init with copy of AppDataProviding(v78, &v92);
  *(&v90 + 1) = &type metadata for PIMSEnablementProvider;
  v91 = &protocol witness table for PIMSEnablementProvider;
  v55 = (*(v76 + 512))(v74, v75, v96, v72, &v89, v73, v95, v36, &v92, v71);

  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v79);
  __swift_destroy_boxed_opaque_existential_1(v80);
  return v55;
}

uint64_t PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)(uint64_t (*a1)(uint64_t), uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10)
{
  v36 = a4;
  v38 = a7;
  v39 = a8;
  v37 = a6;
  v33 = a1;
  v34 = a2;
  v12 = a3[3];
  v31 = a3[4];
  v32 = a10;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = a5[3];
  v30 = a5[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a5, v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = a9[3];
  v23 = a9[4];
  v24 = __swift_mutable_project_boxed_opaque_existential_1(a9, v22);
  MEMORY[0x28223BE20](v24);
  v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  v28 = specialized PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)(v33, v34, v15, v36, v20, v37, v38, v39, v26, v32, v35, v22, v12, v17, v23, v31, v30);

  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v28;
}

uint64_t PegasusProxy.setServiceHelper(_:)(uint64_t a1)
{
  v2 = v1;
  (*(**(v1 + 184) + 288))();
  type metadata accessor for PommesPhoneCallStateManager();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 3;
  *(v4 + 16) = a1;
  v5 = *(*v2 + 376);
  swift_unknownObjectRetain();
  v5(v4);
  v6 = v2[15];
  v7 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v6);
  return (*(v7 + 40))(a1, v6, v7);
}

Swift::Void __swiftcall PegasusProxy.prepareForSearchAtRequestStart()()
{
  v1 = v0;
  v2 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.pommes);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2232BB000, v6, v7, "Fetching location", v8, 2u);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  Date.init()();
  v9 = &v4[v2[5]];
  *v9 = "SiriInformationSearch/PegasusProxy.swift";
  *(v9 + 1) = 40;
  v9[16] = 2;
  *&v4[v2[6]] = 354;
  v10 = &v4[v2[7]];
  *v10 = "prepareForSearchAtRequestStart()";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v11 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000024, 0x80000002234E06F0);
  v12 = &v4[v2[8]];
  *v12 = v11;
  v12[1] = v13;
  v14 = v1[15];
  v15 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v14);
  (*(v15 + 8))(v14, v15);

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v4, 0);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v4, type metadata accessor for PerformanceUtil.Ticket);
}

uint64_t PegasusProxy.search(pommesSearchRequest:completion:)(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v261 = a3;
  v260 = a2;
  v4 = type metadata accessor for PommesSearchRequest(0);
  v5 = v4 - 8;
  v232 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v233 = v6;
  v240 = &v209 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SignpostToken(0);
  v230 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v239 = &v209 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v209 - v10;
  v245 = type metadata accessor for DispatchWorkItemFlags();
  v254 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v244 = &v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for DispatchQoS();
  v253 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v242 = &v209 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v229 = &v209 - v15;
  v228 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v228);
  v241 = &v209 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v236 = &v209 - v18;
  v257 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v255 = *(v257 - 8);
  v19 = MEMORY[0x28223BE20](v257);
  v237 = &v209 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v235 = &v209 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v247 = &v209 - v24;
  v234 = v25;
  MEMORY[0x28223BE20](v23);
  v250 = &v209 - v26;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v248 = *(Context - 8);
  MEMORY[0x28223BE20](Context);
  v256 = &v209 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
  MEMORY[0x28223BE20](v258);
  v259 = &v209 - v28;
  v263 = type metadata accessor for Date();
  v262 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v30 = &v209 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for UUID();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v238 = &v209 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = v34;
  MEMORY[0x28223BE20](v33);
  v273 = &v209 - v35;
  v270 = type metadata accessor for PommesCandidateId();
  v268 = *(v270 - 8);
  v36 = MEMORY[0x28223BE20](v270);
  v252 = &v209 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = v37;
  MEMORY[0x28223BE20](v36);
  v39 = (&v209 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v224 = *(v40 - 8);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v251 = &v209 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = v42;
  MEMORY[0x28223BE20](v41);
  v44 = &v209 - v43;
  v45 = (a1 + *(v5 + 40));
  v47 = *v45;
  v46 = v45[1];
  v264 = v32;
  v269 = v47;
  if (v46)
  {

    UUID.init(uuidString:)();
  }

  else
  {
    (*(v32 + 56))(&v209 - v43, 1, 1, v31);
  }

  v272 = v46;
  v246 = v11;
  v267 = v44;
  v271 = v39;
  v48 = PommesSearchRequest.pommesCandidateId.getter(v39);
  v266 = a1;
  if (one-time initialization token for shared != -1)
  {
    v48 = swift_once();
  }

  v49 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v48);
  v205 = v274;
  v206 = v269;
  v207 = v272;
  Date.init()();
  v50 = *(*v49 + 200);
  v265 = v31;
  v207 = &v204;
  v208 = v31;
  LOBYTE(v205) = 2;
  v50(0xD000000000000040, 0x80000002234E07E0, 0, v30, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 401, "search(pommesSearchRequest:completion:)", 39, v205, partial apply for closure #2 in PegasusProxy.search(pommesSearchRequest:completion:));
  v51 = v262[1];
  v52 = v263;
  v51(v30, v263);
  Date.init()();
  LOBYTE(v205) = 2;
  v53 = v274;
  v262 = v49;
  (v50)(0xD00000000000003ALL, 0x80000002234E0830, 0, v30, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 408, "search(pommesSearchRequest:completion:)", 39, v205, partial apply for closure #3 in PegasusProxy.search(pommesSearchRequest:completion:), v274, MEMORY[0x277D84F78] + 8);
  v51(v30, v52);
  LOBYTE(v49) = AFSupportsSiriInCall();
  v54 = v266;
  v55 = closure #4 in PegasusProxy.search(pommesSearchRequest:completion:)(v266);
  if ((v49 & 1) == 0)
  {
    v56 = v55;
    v57 = (*(*v53 + 368))();
    if (v57)
    {
      v58 = (*(*v57 + 144))(v269, v272, 0);

      if (!(v56 & 1 | ((v58 & 1) == 0)))
      {

        v68 = v267;
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v186 = type metadata accessor for Logger();
        __swift_project_value_buffer(v186, static Logger.pommes);
        v187 = Logger.logObject.getter();
        v188 = static os_log_type_t.info.getter();
        v189 = os_log_type_enabled(v187, v188);
        v73 = v265;
        v67 = v271;
        if (v189)
        {
          v190 = swift_slowAlloc();
          *v190 = 0;
          _os_log_impl(&dword_2232BB000, v187, v188, "SiriInCall is not supported and user is on phone call, unable to complete search", v190, 2u);
          MEMORY[0x223DE0F80](v190, -1, -1);
        }

        v75 = 10;
        goto LABEL_25;
      }
    }
  }

  if ((dispatch thunk of NetworkAvailability.isAvailable.getter() & 1) == 0)
  {

    v67 = v271;
    v68 = v267;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    __swift_project_value_buffer(v69, static Logger.pommes);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.info.getter();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v265;
    if (v72)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2232BB000, v70, v71, "Network is unavailable, unable to complete search", v74, 2u);
      MEMORY[0x223DE0F80](v74, -1, -1);
    }

    v75 = 2;
LABEL_25:
    v191 = v259;
    *v259 = v75;
    swift_storeEnumTagMultiPayload();
    v260(v191);
    outlined destroy of MediaUserStateCenter?(v191, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
    (*(v264 + 8))(v273, v73);
    (*(v268 + 8))(v67, v270);
    return outlined destroy of MediaUserStateCenter?(v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v59 = v256;
  static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:)(v54, (v53 + 12), v53[23], v256);
  v60 = v257;
  v263 = swift_allocBox();
  v62 = v61;
  v63 = swift_allocObject();
  v64 = MEMORY[0x277D84F90];
  v65 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch19OnScreenContextTypeO_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v63 + 16) = v64;
  *(v63 + 24) = v65;
  v66 = v250;
  (*(*v53 + 584))(v54, v59, v63 + 16);
  v223 = v63;
  v76 = v255;
  v259 = v62;
  v258 = *(v255 + 32);
  v258(v62, v66, v60);
  v77 = *(v76 + 16);
  v78 = v247;
  (v77)(v247, v259, v60);
  v277 = 0;
  aBlock = 0u;
  v276 = 0u;
  v79 = v236;
  static TaskPriority.background.getter();
  v80 = type metadata accessor for TaskPriority();
  (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
  outlined init with copy of MediaUserStateCenter?(&aBlock, v279, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  v81 = v235;
  (v77)(v235, v78, v60);
  v82 = (*(v76 + 80) + 72) & ~*(v76 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  *(v83 + 24) = 0;
  v84 = v279[1];
  *(v83 + 32) = v279[0];
  *(v83 + 48) = v84;
  *(v83 + 64) = v280;
  v85 = v83 + v82;
  v86 = v257;
  v258(v85, v81, v257);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v79, &async function pointer to partial apply for closure #1 in static CurareDonation.donateCurareInfo(for:into:), v83);

  outlined destroy of MediaUserStateCenter?(&aBlock, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  v87 = *(v76 + 8);
  v87(v78, v86);
  v88 = v237;
  v250 = (v76 + 16);
  v236 = v77;
  (v77)(v237, v259, v86);
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest, MEMORY[0x277D38D70], MEMORY[0x277D38D68]);
  v89 = Message.serializedData(partial:)();
  v258 = 0;
  v255 = v76 + 8;
  v235 = v87;
  v192 = v86;
  v193 = v89;
  v195 = v194;
  v87(v88, v192);
  v196 = v195;
  v197 = v195 >> 62;
  if ((v195 >> 62) > 1)
  {
    v202 = v193;
    v199 = v274;
    if (v197 == 2)
    {
      v198 = *(v193 + 16);
      v203 = *(v193 + 24);
      outlined consume of Data._Representation(v202, v196);
      v201 = v203 - v198;
      if (__OFSUB__(v203, v198))
      {
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      outlined consume of Data._Representation(v193, v195);
      v201 = 0;
    }

LABEL_16:
    v90 = vcvtd_n_f64_s64(v201, 0xAuLL);
    v91 = v241;
    Date.init()();
    v92 = v228;
    v93 = v91 + *(v228 + 20);
    *v93 = "SiriInformationSearch/PegasusProxy.swift";
    *(v93 + 8) = 40;
    *(v93 + 16) = 2;
    *(v91 + v92[6]) = 465;
    v94 = v91 + v92[7];
    *v94 = "search(pommesSearchRequest:completion:)";
    *(v94 + 8) = 39;
    *(v94 + 16) = 2;
    v95 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002CLL, 0x80000002234E0870);
    v96 = (v91 + v92[8]);
    *v96 = v95;
    v96[1] = v97;
    v98 = v199[22];
    v99 = v268;
    v101 = (v268 + 16);
    v100 = *(v268 + 16);
    v102 = v229;
    v103 = v270;
    v100(v229, v271, v270);
    (*(v99 + 56))(v102, 0, 1, v103);
    v104 = v267;
    v105 = v273;
    (*(*v98 + 128))(v267, v273, v102, v90);
    outlined destroy of MediaUserStateCenter?(v102, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    v106 = (*(*v262 + 184))(v91, 0);
    v107 = *(*v199 + 344);
    v211 = *v199 + 344;
    v210 = v107;
    (v107)(v106);
    v109 = v108;
    ObjectType = swift_getObjectType();
    v111 = (*(v109 + 32))(ObjectType, v109);
    v262 = v111;
    swift_unknownObjectRelease();
    *&aBlock = v111;
    v229 = swift_allocObject();
    swift_weakInit();
    v112 = v251;
    outlined init with copy of MediaUserStateCenter?(v104, v251, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v113 = v264;
    v114 = *(v264 + 16);
    v115 = v238;
    v116 = v265;
    v213 = v264 + 16;
    v212 = v114;
    v114(v238, v105, v265);
    v237 = v101;
    v234 = v100;
    v100(v252, v271, v103);
    v117 = *(v224 + 80);
    v118 = (v117 + 24) & ~v117;
    v119 = *(v113 + 80);
    v120 = (v225 + v119 + v118) & ~v119;
    v121 = v268;
    v122 = *(v268 + 80);
    v123 = (v227 + v122 + v120) & ~v122;
    v124 = (v226 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
    v214 = v117 | v119 | v122 | 7;
    v125 = swift_allocObject();
    *(v125 + 16) = v229;
    v227 = v118;
    outlined init with take of UUID?(v112, v125 + v118);
    v126 = *(v113 + 32);
    v226 = v120;
    v219 = v113 + 32;
    v217 = v126;
    v126(v125 + v120, v115, v116);
    v127 = v121 + 32;
    v128 = *(v121 + 32);
    v228 = v123;
    v129 = v274;
    v216 = v127;
    v215 = v128;
    v128(v125 + v123, v252, v270);
    v225 = v124;
    *(v125 + v124) = v223;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10PegasusAPI025Apple_Parsec_Feedback_V2_H7PayloadVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy10PegasusAPI025Apple_Parsec_Feedback_V2_H7PayloadVs5NeverOGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<Apple_Parsec_Feedback_V2_FeedbackPayload, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy10PegasusAPI025Apple_Parsec_Feedback_V2_H7PayloadVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy10PegasusAPI025Apple_Parsec_Feedback_V2_H7PayloadVs5NeverOGMR, MEMORY[0x277CBCE20]);
    v130 = Publisher<>.sink(receiveValue:)();

    v131 = v129[19];
    v132 = swift_allocObject();
    *(v132 + 16) = v129;
    *(v132 + 24) = v130;
    v277 = partial apply for closure #6 in PegasusProxy.search(pommesSearchRequest:completion:);
    v278 = v132;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v276 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v276 + 1) = &block_descriptor_17;
    v133 = _Block_copy(&aBlock);

    v262 = v130;

    v134 = v242;
    static DispatchQoS.unspecified.getter();
    *&v279[0] = MEMORY[0x277D84F90];
    v135 = _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v137 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v138 = v244;
    v222 = v136;
    v218 = v137;
    v139 = v245;
    v224 = v135;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v229 = v131;
    MEMORY[0x223DDFBF0](0, v134, v138, v133);
    _Block_release(v133);
    v140 = *(v254 + 8);
    v254 += 8;
    v221 = v140;
    v140(v138, v139);
    v141 = *(v253 + 8);
    v253 += 8;
    v220 = v141;
    v141(v134, v243);

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v142 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v142, static Signposter.pommes);
    v143 = v246;
    v144 = OSSignposter.begin(name:context:)("proxy.request", 13, 2u, 0, v246);
    v145 = v210;
    (v210)(v144);
    v147 = v146;
    v145();
    v149 = v148;
    v150 = swift_getObjectType();
    v151 = (*(v149 + 8))(v150, v149);
    swift_unknownObjectRelease();
    v152 = specialized static PegasusOverrideUtil.headerOverrides.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v151;
    v154 = v258;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v152, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &aBlock);
    if (!v154)
    {
      v155 = swift_getObjectType();

      (*(v147 + 16))(aBlock, v155, v147);
      v156 = swift_unknownObjectRelease();
      (v145)(v156);
      v158 = v157;
      v159 = swift_getObjectType();
      v160 = v247;
      v161 = v257;
      (v236)(v247, v259, v257);
      v162 = (*(v158 + 48))(v160, v159, v158);
      v259 = v162;
      swift_unknownObjectRelease();
      (v235)(v160, v161);
      *&aBlock = v162;
      outlined init with copy of MediaUserStateCenter?(v267, v251, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v163 = v238;
      v164 = v265;
      v212(v238, v273, v265);
      v165 = v252;
      v166 = v129;
      v234(v252, v271, v270);
      _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(v266, v240, type metadata accessor for PommesSearchRequest);
      _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(v143, v239, type metadata accessor for SignpostToken);
      v167 = v225;
      v168 = (v225 + 23) & 0xFFFFFFFFFFFFFFF8;
      v169 = (v168 + *(v232 + 80) + 8) & ~*(v232 + 80);
      v170 = (v233 + *(v230 + 80) + v169) & ~*(v230 + 80);
      v171 = (v231 + v170 + 7) & 0xFFFFFFFFFFFFFFF8;
      v172 = swift_allocObject();
      *(v172 + 16) = v166;
      outlined init with take of UUID?(v251, v172 + v227);
      v217(v172 + v226, v163, v164);
      v173 = v165;
      v174 = v270;
      v215(v172 + v228, v173, v270);
      v175 = (v172 + v167);
      v176 = v272;
      *v175 = v269;
      v175[1] = v176;
      *(v172 + v168) = v263;
      outlined init with take of PommesSearchRequest(v240, v172 + v169, type metadata accessor for PommesSearchRequest);
      outlined init with take of PommesSearchRequest(v239, v172 + v170, type metadata accessor for SignpostToken);
      v177 = (v172 + v171);
      v178 = v261;
      *v177 = v260;
      v177[1] = v178;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_iE8ResponseV0E3Kit0E17ProxyForAssistantC5ErrorOGs5NeverOGMd, &_s7Combine12AnyPublisherVys6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_iE8ResponseV0E3Kit0E17ProxyForAssistantC5ErrorOGs5NeverOGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Result<Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, PegasusProxyForAssistant.Error>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVys6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_iE8ResponseV0E3Kit0E17ProxyForAssistantC5ErrorOGs5NeverOGMd, &_s7Combine12AnyPublisherVys6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_iE8ResponseV0E3Kit0E17ProxyForAssistantC5ErrorOGs5NeverOGMR, MEMORY[0x277CBCD90]);
      v179 = Publisher<>.sink(receiveValue:)();

      v180 = swift_allocObject();
      *(v180 + 16) = v166;
      *(v180 + 24) = v179;
      v277 = partial apply for closure #9 in PegasusProxy.search(pommesSearchRequest:completion:);
      v278 = v180;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v276 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v276 + 1) = &block_descriptor_22_0;
      v181 = _Block_copy(&aBlock);

      v182 = v242;
      static DispatchQoS.unspecified.getter();
      *&v279[0] = MEMORY[0x277D84F90];
      v183 = v244;
      v184 = v245;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DDFBF0](0, v182, v183, v181);
      _Block_release(v181);

      v221(v183, v184);
      v220(v182, v243);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v246, type metadata accessor for SignpostToken);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v241, type metadata accessor for PerformanceUtil.Ticket);
      (*(v248 + 8))(v256, Context);
      (*(v264 + 8))(v273, v164);
      (*(v268 + 8))(v271, v174);
      outlined destroy of MediaUserStateCenter?(v267, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    goto LABEL_37;
  }

  v198 = v193;
  v199 = v274;
  if (!v197)
  {
    v200 = BYTE6(v196);
    outlined consume of Data._Representation(v193, v196);
    v201 = v200;
    goto LABEL_16;
  }

LABEL_33:
  outlined consume of Data._Representation(v198, v196);
  LODWORD(v201) = HIDWORD(v198) - v198;
  if (!__OFSUB__(HIDWORD(v198), v198))
  {
    v201 = v201;
    goto LABEL_16;
  }

  __break(1u);
LABEL_37:

  __break(1u);
  return result;
}

uint64_t closure #4 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  v5 = type metadata accessor for InputOrigin();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = type metadata accessor for PommesSearchRequest(0);
  outlined init with copy of MediaUserStateCenter?(a1 + *(v12 + 56), v4, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v4, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    v13 = 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 104))(v9, *MEMORY[0x277D61C48], v5);
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x277D61CA8], MEMORY[0x277D61CB8]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v16[2] == v16[0] && v16[3] == v16[1])
    {
      v13 = 1;
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v14 = *(v6 + 8);
    v14(v9, v5);
    v14(v11, v5);
  }

  return v13 & 1;
}

uint64_t closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v61 = a6;
  v66 = a5;
  v65 = a4;
  v64 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x28223BE20](v7);
  v71 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload();
  v69 = *(v81 - 8);
  v10 = *(v69 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for PommesCandidateId();
  v67 = *(v79 - 8);
  v11 = *(v67 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for UUID();
  v63 = *(v77 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v77);
  v76 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v62 = *(v13 - 8);
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMd, &_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v55 - v21;
  v68 = a1;
  Apple_Parsec_Feedback_V2_FeedbackPayload.containedFeedback.getter();
  v23 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    outlined init with copy of MediaUserStateCenter?(v22, v20, &_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMd, &_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMR);
    v58 = v24;
    v25 = *(v24 + 88);
    v60 = v20;
    v59 = v23;
    v26 = v25(v20, v23);
    if (v26 == *MEMORY[0x277D38C70])
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
LABEL_9:
        (*(v58 + 8))(v60, v59);
        return outlined destroy of MediaUserStateCenter?(v22, &_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMd, &_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMR);
      }

      v55[1] = *(Strong + 152);

      v57 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v56 = v16;
      outlined init with copy of MediaUserStateCenter?(v64, v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v28 = v63;
      (*(v63 + 16))(v76, v65, v77);
      v29 = v67;
      (*(v67 + 16))(v78, v66, v79);
      v30 = v69;
      (*(v69 + 16))(v80, v68, v81);
      v31 = (*(v62 + 80) + 24) & ~*(v62 + 80);
      v32 = (v14 + *(v28 + 80) + v31) & ~*(v28 + 80);
      v33 = (v12 + *(v29 + 80) + v32) & ~*(v29 + 80);
      v34 = (v11 + *(v30 + 80) + v33) & ~*(v30 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = v57;
      outlined init with take of UUID?(v56, v35 + v31);
      (*(v28 + 32))(v35 + v32, v76, v77);
      (*(v29 + 32))(v35 + v33, v78, v79);
      (*(v30 + 32))(v35 + v34, v80, v81);
      *(v35 + ((v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v61;
      v87 = partial apply for closure #1 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:);
      v88 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v84 = 1107296256;
      v85 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v86 = &block_descriptor_81;
      v36 = _Block_copy(&aBlock);

      v37 = v70;
      static DispatchQoS.unspecified.getter();
      v82 = MEMORY[0x277D84F90];
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v38 = v71;
      v39 = v75;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v40 = v37;
      v41 = v38;
      v42 = v36;
      v43 = &v87;
    }

    else
    {
      if (v26 != *MEMORY[0x277D38C68])
      {
        goto LABEL_9;
      }

      swift_beginAccess();
      v44 = swift_weakLoadStrong();
      if (!v44)
      {
        goto LABEL_9;
      }

      v61 = *(v44 + 152);

      v57 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v56 = v16;
      outlined init with copy of MediaUserStateCenter?(v64, v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v45 = v63;
      (*(v63 + 16))(v76, v65, v77);
      v46 = v67;
      (*(v67 + 16))(v78, v66, v79);
      v47 = v69;
      (*(v69 + 16))(v80, v68, v81);
      v48 = (*(v62 + 80) + 24) & ~*(v62 + 80);
      v49 = (v14 + *(v45 + 80) + v48) & ~*(v45 + 80);
      v50 = (v12 + *(v46 + 80) + v49) & ~*(v46 + 80);
      v51 = (v11 + *(v47 + 80) + v50) & ~*(v47 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = v57;
      outlined init with take of UUID?(v56, v52 + v48);
      (*(v45 + 32))(v52 + v49, v76, v77);
      (*(v46 + 32))(v52 + v50, v78, v79);
      (*(v47 + 32))(v52 + v51, v80, v81);
      v87 = partial apply for closure #2 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:);
      v88 = v52;
      aBlock = MEMORY[0x277D85DD0];
      v84 = 1107296256;
      v85 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v86 = &block_descriptor_74;
      v36 = _Block_copy(&aBlock);

      v37 = v70;
      static DispatchQoS.unspecified.getter();
      v82 = MEMORY[0x277D84F90];
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v38 = v71;
      v39 = v75;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v40 = v37;
      v41 = v38;
      v42 = v36;
      v43 = &v89;
    }

    v53 = *(v43 - 32);
    MEMORY[0x223DDFBF0](0, v40, v41, v42);
    _Block_release(v36);

    (*(v74 + 8))(v38, v39);
    (*(v72 + 8))(v37, v73);

    goto LABEL_9;
  }

  return outlined destroy of MediaUserStateCenter?(v22, &_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMd, &_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMR);
}

uint64_t closure #1 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback();
  v11 = *(started - 8);
  MEMORY[0x28223BE20](started);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 176);
    v26 = a2;

    v19 = type metadata accessor for PommesCandidateId();
    v20 = *(v19 - 8);
    v27 = started;
    v21 = a3;
    v22 = v20;
    (*(v20 + 16))(v16, a4, v19);
    (*(v22 + 56))(v16, 0, 1, v19);
    Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.getter();
    swift_beginAccess();
    v24 = *(a6 + 16);
    v23 = *(a6 + 24);
    v25 = *(*v18 + 176);

    v25(v26, v21, v16, v13, v24, v23);

    (*(v11 + 8))(v13, v27);
    return outlined destroy of MediaUserStateCenter?(v16, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  }

  return result;
}

uint64_t closure #2 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 176);

    v16 = type metadata accessor for PommesCandidateId();
    v17 = a3;
    v18 = *(v16 - 8);
    (*(v18 + 16))(v13, a4, v16);
    (*(v18 + 56))(v13, 0, 1, v16);
    Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.getter();
    (*(*v15 + 184))(a2, v17, v13, v10);

    (*(v8 + 8))(v10, v7);
    return outlined destroy of MediaUserStateCenter?(v13, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  }

  return result;
}

uint64_t closure #6 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  specialized Set._Variant.insert(_:)(&v4, a2);
  swift_endAccess();
}

unint64_t closure #8 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12)
{
  v337 = a8;
  v295 = a7;
  v294 = a6;
  v334 = a5;
  v336 = a4;
  v335 = a3;
  v340 = a2;
  v332 = a1;
  v322 = a12;
  v333 = a11;
  v319 = a10;
  v328 = type metadata accessor for DispatchWorkItemFlags();
  v327 = *(v328 - 8);
  MEMORY[0x28223BE20](v328);
  v325 = &v274 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = type metadata accessor for DispatchQoS();
  v324 = *(v326 - 8);
  MEMORY[0x28223BE20](v326);
  v323 = &v274 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = type metadata accessor for PegasusProxyForAssistant.Error();
  v311 = *(v312 - 1);
  v14 = MEMORY[0x28223BE20](v312);
  v313 = &v274 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v315 = &v274 - v16;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
  MEMORY[0x28223BE20](v320);
  v321 = &v274 - v17;
  v282 = type metadata accessor for PegasusSearchResponse(0);
  MEMORY[0x28223BE20](v282);
  v283 = &v274 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = type metadata accessor for JSONEncodingOptions();
  v303 = *(v304 - 8);
  MEMORY[0x28223BE20](v304);
  v307 = &v274 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  v314 = *(v308 - 8);
  v20 = MEMORY[0x28223BE20](v308);
  v306 = &v274 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v305 = &v274 - v22;
  v298 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v297 = *(v298 - 8);
  MEMORY[0x28223BE20](v298);
  v280 = &v274 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v24 - 8);
  v293 = &v274 - v25;
  v290 = type metadata accessor for Latencyinfopb_KfedLatencyInfo();
  v289 = *(v290 - 8);
  MEMORY[0x28223BE20](v290);
  v288 = &v274 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v292 = *(v301 - 8);
  v27 = MEMORY[0x28223BE20](v301);
  v287 = &v274 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v291 = &v274 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
  MEMORY[0x28223BE20](v30 - 8);
  v300 = &v274 - v31;
  v286 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v285 = *(v286 - 8);
  MEMORY[0x28223BE20](v286);
  v284 = &v274 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v33 - 8);
  v338 = &v274 - v34;
  v329 = type metadata accessor for PerformanceUtil.Ticket(0);
  v35 = MEMORY[0x28223BE20](v329);
  v302 = &v274 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v316 = &v274 - v37;
  v317 = type metadata accessor for Apple_Parsec_Siri_V1alpha_StatusCode();
  v330 = *(v317 - 8);
  v38 = MEMORY[0x28223BE20](v317);
  v309 = &v274 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v318 = &v274 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v274 - v42;
  v331 = 0;
  v44 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v45 = *(v44 - 1);
  v46 = MEMORY[0x28223BE20](v44);
  v281 = &v274 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v274 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v274 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = &v274 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_fB8ResponseV0B3Kit0B17ProxyForAssistantC5ErrorOGMd, &_ss6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_fB8ResponseV0B3Kit0B17ProxyForAssistantC5ErrorOGMR);
  MEMORY[0x28223BE20](v56);
  v58 = &v274 - v57;
  v296 = swift_projectBox();
  outlined init with copy of MediaUserStateCenter?(v332, v58, &_ss6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_fB8ResponseV0B3Kit0B17ProxyForAssistantC5ErrorOGMd, &_ss6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_fB8ResponseV0B3Kit0B17ProxyForAssistantC5ErrorOGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = v311;
    v60 = v315;
    v61 = v312;
    (*(v311 + 4))(v315, v58, v312);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v62, static Signposter.pommes);
    OSSignposter.end(token:message:)(v319, 0x726F727265, 0xE500000000000000);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static Logger.pommes);
    v64 = *(v59 + 2);
    v65 = v313;
    v64(v313, v60, v61);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = v64;
      v69 = v61;
      v70 = swift_slowAlloc();
      v71 = v59;
      v72 = swift_slowAlloc();
      aBlock[0] = v72;
      *v70 = 136315138;
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type PegasusProxyForAssistant.Error and conformance PegasusProxyForAssistant.Error, MEMORY[0x277D39E50], MEMORY[0x277D39E58]);
      v73 = Error.localizedDescription.getter();
      v74 = v65;
      v75 = v73;
      v77 = v76;
      v339 = *(v71 + 1);
      (v339)(v74, v69);
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, aBlock);

      *(v70 + 4) = v78;
      _os_log_impl(&dword_2232BB000, v66, v67, "Pegasus error on client.searchResponsePublisher: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x223DE0F80](v72, -1, -1);
      v79 = v70;
      v61 = v69;
      v64 = v68;
      v60 = v315;
      MEMORY[0x223DE0F80](v79, -1, -1);
    }

    else
    {

      v339 = *(v59 + 1);
      (v339)(v65, v61);
    }

    v94 = v316;
    Date.init()();
    v95 = v329;
    v96 = v94 + *(v329 + 20);
    *v96 = "SiriInformationSearch/PegasusProxy.swift";
    *(v96 + 8) = 40;
    *(v96 + 16) = 2;
    *(v94 + v95[6]) = 578;
    v97 = v94 + v95[7];
    *v97 = "search(pommesSearchRequest:completion:)";
    *(v97 + 8) = 39;
    *(v97 + 16) = 2;
    v98 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002BLL, 0x80000002234E1000);
    v99 = (v94 + v95[8]);
    *v99 = v98;
    v99[1] = v100;
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type PegasusProxyForAssistant.Error and conformance PegasusProxyForAssistant.Error, MEMORY[0x277D39E50], MEMORY[0x277D39E58]);
    v101 = swift_allocError();
    v64(v102, v60, v61);
    v103 = _convertErrorToNSError(_:)();
    v104 = [v103 code];

    v105 = v340;
    v106 = *(v340 + 176);
    v107 = type metadata accessor for PommesCandidateId();
    v108 = v61;
    v109 = *(v107 - 8);
    v110 = v338;
    (*(v109 + 16))(v338, v334, v107);
    (*(v109 + 56))(v110, 0, 1, v107);
    (*(*v106 + 152))(v335, v336, v110, 1, v104, 0);
    outlined destroy of MediaUserStateCenter?(v110, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static PerformanceUtil.shared + 184))(v94, 0);
    v111 = v321;
    *v321 = 3;
    swift_storeEnumTagMultiPayload();
    v333(v111);
    outlined destroy of MediaUserStateCenter?(v111, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v94, type metadata accessor for PerformanceUtil.Ticket);
    (v339)(v60, v108);
    goto LABEL_78;
  }

  (*(v45 + 32))(v55, v58, v44);
  v80 = v44;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  v82 = __swift_project_value_buffer(v81, static Logger.pommes);
  v83 = *(v45 + 16);
  v313 = (v45 + 16);
  v312 = v83;
  (v83)(v53, v55, v44);
  v337 = v82;
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.debug.getter();
  v86 = os_log_type_enabled(v84, v85);
  v339 = v55;
  v311 = v50;
  v310 = v44;
  v299 = v45;
  if (v86)
  {
    v87 = v45;
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    aBlock[0] = v89;
    *v88 = 136315138;
    v44 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.summarizedDescription.getter();
    v91 = v90;
    (*(v87 + 8))(v53, v310);
    v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v91, aBlock);

    *(v88 + 4) = v92;
    _os_log_impl(&dword_2232BB000, v84, v85, "Pegasus: PegasusResponse: %s", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v89);
    v93 = v89;
    v80 = v310;
    MEMORY[0x223DE0F80](v93, -1, -1);
    MEMORY[0x223DE0F80](v88, -1, -1);
  }

  else
  {

    (*(v45 + 8))(v53, v44);
  }

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.getter();
  v112 = v330;
  v113 = v317;
  v114 = (*(v330 + 88))(v43, v317);
  v115 = *MEMORY[0x277D39258];
  v105 = *(v112 + 8);
  v116 = v43;
  v117 = v113;
  v332 = v112 + 8;
  v105(v116, v113);
  v118 = v114 == v115;
  v119 = v314;
  v315 = v105;
  if (v118)
  {
    v120 = v316;
    Date.init()();
    v121 = v329;
    v122 = &v120[*(v329 + 20)];
    *v122 = "SiriInformationSearch/PegasusProxy.swift";
    *(v122 + 1) = 40;
    v122[16] = 2;
    *&v120[v121[6]] = 514;
    v123 = &v120[v121[7]];
    *v123 = "search(pommesSearchRequest:completion:)";
    *(v123 + 1) = 39;
    v123[16] = 2;
    v124 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002BLL, 0x80000002234E1000);
    v125 = &v120[v121[8]];
    *v125 = v124;
    v125[1] = v126;
    v127 = v340;
    v128 = *(v340 + 176);
    v129 = type metadata accessor for PommesCandidateId();
    v130 = *(v129 - 8);
    v131 = v338;
    (*(v130 + 16))(v338, v334, v129);
    (*(v130 + 56))(v131, 0, 1, v129);
    (*(*v128 + 152))(v335, v336, v131, 5, 0, 1);
    outlined destroy of MediaUserStateCenter?(v131, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    v132 = v120;
    v133 = v331;
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0], MEMORY[0x277D38D98]);
  v148 = v331;
  v149 = Message.serializedData(partial:)();
  v151 = v340;
  if (!v148)
  {
    v210 = v150 >> 62;
    v331 = 0;
    if ((v150 >> 62) > 1)
    {
      goto LABEL_64;
    }

    if (!v210)
    {
      v211 = BYTE6(v150);
      outlined consume of Data._Representation(v149, v150);
      v152 = v211;
      goto LABEL_28;
    }

    v272 = HIDWORD(v149);
    v273 = v149;
    result = outlined consume of Data._Representation(v149, v150);
    LODWORD(v152) = v272 - v273;
    if (!__OFSUB__(v272, v273))
    {
      v152 = v152;
      goto LABEL_28;
    }

LABEL_85:
    __break(1u);
    return result;
  }

  v152 = 0;
  v331 = 0;
  while (1)
  {
LABEL_28:
    v153 = vcvtd_n_f64_s64(v152, 0xAuLL);
    v154 = v302;
    Date.init()();
    v155 = v329;
    v156 = &v154[*(v329 + 20)];
    *v156 = "SiriInformationSearch/PegasusProxy.swift";
    *(v156 + 1) = 40;
    v156[16] = 2;
    *&v154[v155[6]] = 524;
    v157 = &v154[v155[7]];
    *v157 = "search(pommesSearchRequest:completion:)";
    *(v157 + 1) = 39;
    v157[16] = 2;
    v158 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002ALL, 0x80000002234E1030);
    v159 = &v154[v155[8]];
    *v159 = v158;
    v159[1] = v160;
    v161 = *(v151 + 176);
    v162 = type metadata accessor for PommesCandidateId();
    v163 = *(v162 - 8);
    v164 = *(v163 + 16);
    v165 = v338;
    v277 = v163 + 16;
    v276 = v164;
    v164(v338, v334, v162);
    v166 = *(v163 + 56);
    v279 = v162;
    v278 = v163 + 56;
    v275 = v166;
    v166(v165, 0, 1, v162);
    v167 = v339;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
    v169 = v168;
    v170 = v284;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.experience.getter();
    (*(v285 + 8))(v170, v286);
    v171 = v291;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v316 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
    v173 = v172;
    v174 = *(v292 + 8);
    v175 = v301;
    v174(v171, v301);
    v329 = v174;
    LODWORD(v292) = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasRewrittenUtteranceIdx.getter();
    v176 = v287;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v177 = v288;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.latencyInfo.getter();
    v174(v176, v175);
    v178 = v167;
    v179 = v338;
    v180 = v318;
    v181 = v300;
    (*(*v161 + 144))(v335, v336, v338, v318, v300, v316, v173, v292 & 1, v169, v153, v177);

    (*(v289 + 8))(v177, v290);
    outlined destroy of MediaUserStateCenter?(v181, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
    v182 = v180;
    v183 = v178;
    v117 = v317;
    (v315)(v182, v317);
    outlined destroy of MediaUserStateCenter?(v179, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);

    v184 = v293;
    UUID.init(uuidString:)();

    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v185 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusSelfOpaquePayloads.getter();
    v186 = v301;
    v187 = v329;
    (v329)(v171);
    v188 = *(*v161 + 160);
    v316 = v161;
    v188(v184, v185);

    outlined destroy of MediaUserStateCenter?(v184, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v189 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
    v191 = v190;
    v187(v171, v186);
    if (v189 == 1936744813 && v191 == 0xE400000000000000)
    {

      v192 = v331;
LABEL_37:
      v202 = v338;
      v203 = v279;
      v276(v338, v334, v279);
      v275(v202, 0, 1, v203);
      v204 = v296;
      swift_beginAccess();
      v205 = v297;
      v206 = v280;
      v207 = v204;
      v208 = v298;
      (*(v297 + 16))(v280, v207, v298);
      v209 = type metadata accessor for PommesSearchRequest(0);
      (*(*v316 + 168))(v335, v336, v202, v206, v183, a9 + *(v209 + 44));
      (*(v205 + 8))(v206, v208);
      outlined destroy of MediaUserStateCenter?(v202, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      goto LABEL_38;
    }

    v201 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v192 = v331;
    if ((v201 & 1) != 0 || v189 == 7300455 && v191 == 0xE300000000000000)
    {

      goto LABEL_37;
    }

    v271 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v271)
    {
      goto LABEL_37;
    }

LABEL_38:
    v127 = v340;
    v119 = v314;
    v132 = v302;
    v133 = v192;
    if (one-time initialization token for shared != -1)
    {
LABEL_39:
      swift_once();
    }

LABEL_20:
    (*(*static PerformanceUtil.shared + 184))(v132, 0);
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v132, type metadata accessor for PerformanceUtil.Ticket);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.debug.getter();
    v136 = os_log_type_enabled(v134, v135);
    v137 = v306;
    if (v136)
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&dword_2232BB000, v134, v135, "Saving SearchConversationContext from Pegasus response", v138, 2u);
      MEMORY[0x223DE0F80](v138, -1, -1);
    }

    v139 = v305;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchConversationContext.getter();
    v140 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_searchConversationContext;
    swift_beginAccess();
    v141 = v308;
    (*(v119 + 40))(v127 + v140, v139, v308);
    swift_endAccess();
    (*(v119 + 16))(v137, v127 + v140, v141);
    v142 = v307;
    JSONEncodingOptions.init()();
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Search_SearchConversationContext and conformance Apple_Parsec_Search_SearchConversationContext, MEMORY[0x277D38C60], MEMORY[0x277D38C58]);
    v143 = Message.jsonString(options:)();
    if (v133)
    {
      (*(v303 + 8))(v142, v304);
      (*(v119 + 8))(v137, v141);
      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *v147 = 0;
        _os_log_impl(&dword_2232BB000, v145, v146, "Could not convert SearchConversationContext to JSON after Pegasus response", v147, 2u);
        MEMORY[0x223DE0F80](v147, -1, -1);
      }
    }

    else
    {
      v193 = v144;
      v194 = v143;
      (*(v303 + 8))(v142, v304);
      (*(v119 + 8))(v137, v141);

      v195 = Logger.logObject.getter();
      v196 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        aBlock[0] = v198;
        *v197 = 136315138;
        v199 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v194, v193, aBlock);

        *(v197 + 4) = v199;
        _os_log_impl(&dword_2232BB000, v195, v196, "SearchConversationContext JSON after Pegasus response: %s", v197, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v198);
        v200 = v198;
        v117 = v317;
        MEMORY[0x223DE0F80](v200, -1, -1);
        MEMORY[0x223DE0F80](v197, -1, -1);
      }

      else
      {
      }
    }

    v212 = v318;
    v213 = v339;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.getter();
    v214 = *(v330 + 104);
    v215 = v309;
    v214(v309, *MEMORY[0x277D39270], v117);
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V1alpha_StatusCode and conformance Apple_Parsec_Siri_V1alpha_StatusCode, MEMORY[0x277D39278], MEMORY[0x277D39280]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v216 = v315;
    (v315)(v215, v117);
    (v216)(v212, v117);
    if (aBlock[0] != v341)
    {
      break;
    }

    v217 = v311;
    v80 = v310;
    (v312)(v311, v213, v310);
    v218 = Logger.logObject.getter();
    LOBYTE(v148) = static os_log_type_t.debug.getter();
    v219 = os_log_type_enabled(v218, v148);
    v105 = v340;
    if (!v219)
    {
      v233 = *(v299 + 8);
      (v233)(v217, v80);
      v44 = v333;
LABEL_72:

      v244 = v281;
      (v312)(v281, v339, v80);
      v245 = Logger.logObject.getter();
      v246 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v245, v246))
      {
        v247 = swift_slowAlloc();
        v338 = v233;
        v248 = v247;
        v249 = swift_slowAlloc();
        aBlock[0] = v249;
        *v248 = 136315138;
        v250 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
        v252 = v251;
        v253 = Data.base64EncodedString(options:)(0);
        outlined consume of Data._Representation(v250, v252);
        (v338)(v244, v80);
        v44 = v333;
        v254 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v253._countAndFlagsBits, v253._object, aBlock);
        v105 = v340;

        *(v248 + 4) = v254;
        _os_log_impl(&dword_2232BB000, v245, v246, "Pegasus conversation context bytes: %s", v248, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v249);
        MEMORY[0x223DE0F80](v249, -1, -1);
        v255 = v248;
        v233 = v338;
        MEMORY[0x223DE0F80](v255, -1, -1);
      }

      else
      {

        (v233)(v244, v80);
      }

      v256 = v321;
      v257 = v283;
      v258 = v282;
      v259 = v339;
      v260 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
      v261 = (v105 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext);
      v262 = *(v105 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext);
      v263 = *(v105 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext + 8);
      *v261 = v260;
      v261[1] = v264;
      outlined consume of Data?(v262, v263);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v265 = type metadata accessor for OSSignposter();
      __swift_project_value_buffer(v265, static Signposter.pommes);
      OSSignposter.end(token:message:)(v319, 0x73736563637573, 0xE700000000000000);
      v266 = v296;
      swift_beginAccess();
      (*(v297 + 16))(v257, v266, v298);
      (v312)(v257 + *(v258 + 20), v259, v80);
      _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(v257, v256, type metadata accessor for PegasusSearchResponse);
      swift_storeEnumTagMultiPayload();
      v44(v256);
      outlined destroy of MediaUserStateCenter?(v256, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v257, type metadata accessor for PegasusSearchResponse);
      (v233)(v259, v80);
      goto LABEL_78;
    }

    v151 = swift_slowAlloc();
    *v151 = 134217984;
    v220 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
    v222 = v221 >> 62;
    v44 = v333;
    if ((v221 >> 62) <= 1)
    {
      if (!v222)
      {
        v223 = BYTE6(v221);
        outlined consume of Data._Representation(v220, v221);
        v224 = v223;
LABEL_71:
        v233 = *(v299 + 8);
        (v233)(v311, v80);
        *(v151 + 4) = v224;
        _os_log_impl(&dword_2232BB000, v218, v148, "Stashing persistent Pegasus conversation context (%ld bytes)", v151, 0xCu);
        MEMORY[0x223DE0F80](v151, -1, -1);
        goto LABEL_72;
      }

LABEL_68:
      v241 = HIDWORD(v220);
      v242 = v220;
      result = outlined consume of Data._Representation(v220, v221);
      if (__OFSUB__(v241, v242))
      {
        __break(1u);
        goto LABEL_85;
      }

      v224 = v241 - v242;
      goto LABEL_71;
    }

    if (v222 != 2)
    {
      outlined consume of Data._Representation(v220, v221);
      v224 = 0;
      goto LABEL_71;
    }

    v238 = *(v220 + 16);
    v237 = *(v220 + 24);
    v149 = outlined consume of Data._Representation(v220, v221);
    v239 = __OFSUB__(v237, v238);
    v224 = v237 - v238;
    if (!v239)
    {
      goto LABEL_71;
    }

    __break(1u);
LABEL_64:
    if (v210 == 2)
    {
      v240 = *(v149 + 16);
      v218 = *(v149 + 24);
      v220 = outlined consume of Data._Representation(v149, v150);
      v152 = v218 - v240;
      if (__OFSUB__(v218, v240))
      {
        __break(1u);
        goto LABEL_68;
      }
    }

    else
    {
      outlined consume of Data._Representation(v149, v150);
      v152 = 0;
    }
  }

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.getter();
  v214(v215, *MEMORY[0x277D39268], v117);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (v216)(v215, v117);
  (v216)(v212, v117);
  if (aBlock[0] == v341)
  {
    v225 = Logger.logObject.getter();
    v226 = static os_log_type_t.debug.getter();
    v227 = os_log_type_enabled(v225, v226);
    v228 = v333;
    v105 = v340;
    if (v227)
    {
      v229 = swift_slowAlloc();
      *v229 = 0;
      _os_log_impl(&dword_2232BB000, v225, v226, "Pegasus returned no results", v229, 2u);
      MEMORY[0x223DE0F80](v229, -1, -1);
    }

    v230 = v321;
    v231 = v310;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v232 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v232, static Signposter.pommes);
    OSSignposter.end(token:message:)(v319, 0x746C757365526F6ELL, 0xE900000000000073);
    *v230 = 11;
    swift_storeEnumTagMultiPayload();
    v228(v230);
    outlined destroy of MediaUserStateCenter?(v230, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
    (*(v299 + 8))(v339, v231);
  }

  else
  {
    v234 = v321;
    v235 = v333;
    v105 = v340;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v236 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v236, static Signposter.pommes);
    OSSignposter.end(token:message:)(v319, 0x4573757361676570, 0xEC000000726F7272);
    *v234 = 0;
    swift_storeEnumTagMultiPayload();
    v235(v234);
    outlined destroy of MediaUserStateCenter?(v234, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
    (*(v299 + 8))(v339, v310);
  }

LABEL_78:
  aBlock[4] = partial apply for closure #1 in closure #8 in PegasusProxy.search(pommesSearchRequest:completion:);
  aBlock[5] = v105;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_67;
  v267 = _Block_copy(aBlock);

  v268 = v323;
  static DispatchQoS.unspecified.getter();
  v342 = MEMORY[0x277D84F90];
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v269 = v325;
  v270 = v328;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DDFBF0](0, v268, v269, v267);
  _Block_release(v267);
  (*(v327 + 8))(v269, v270);
  (*(v324 + 8))(v268, v326);
}

void *closure #1 in closure #8 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 168);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = Set.Iterator.init(_cocoa:)();
    v5 = v18;
    v4 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v2;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      outlined consume of Set<String>.Iterator._Variant(v5);
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v7 = v14;
      v8 = v15;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v14 = v7;
        v15 = v8;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #9 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  specialized Set._Variant.insert(_:)(&v4, a2);
  swift_endAccess();
}

uint64_t PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v407 = a3;
  v428 = a1;
  v403 = a4;
  v376 = type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo();
  MEMORY[0x28223BE20](v376);
  v375 = &v369 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v398 = &v369 - v7;
  v8 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v409 = *(v8 - 8);
  v410 = v8;
  MEMORY[0x28223BE20](v8);
  v408 = &v369 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v395 = (&v369 - v11);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v396 = *(v12 - 8);
  v397 = v12;
  MEMORY[0x28223BE20](v12);
  v380 = &v369 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v393 = type metadata accessor for PommesSearchRequest.ParseState(0);
  MEMORY[0x28223BE20](v393);
  v394 = (&v369 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for UUID();
  v412 = *(v15 - 8);
  v413 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v379 = &v369 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v391 = &v369 - v19;
  MEMORY[0x28223BE20](v18);
  v411 = &v369 - v20;
  v21 = type metadata accessor for JSONEncodingOptions();
  v389 = *(v21 - 8);
  v390 = v21;
  MEMORY[0x28223BE20](v21);
  v388 = &v369 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  v404 = *(v23 - 8);
  v405 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v387 = &v369 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v386 = &v369 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v392 = &v369 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v378 = &v369 - v31;
  MEMORY[0x28223BE20](v30);
  v377 = &v369 - v32;
  v424 = type metadata accessor for PommesSearchRequest(0);
  v33 = MEMORY[0x28223BE20](v424);
  v406 = &v369 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v385 = (&v369 - v35);
  v420 = type metadata accessor for PerformanceUtil.Ticket(0);
  v36 = MEMORY[0x28223BE20](v420);
  v38 = &v369 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v383 = &v369 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v369 - v41;
  v429 = type metadata accessor for Date();
  v438 = *(v429 - 8);
  MEMORY[0x28223BE20](v429);
  v425 = &v369 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v423 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v44 = *(v423 - 8);
  v45 = MEMORY[0x28223BE20](v423);
  v47 = &v369 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v369 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v381 = &v369 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v418 = &v369 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v422 = &v369 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = &v369 - v57;
  v59 = type metadata accessor for SignpostToken(0);
  MEMORY[0x28223BE20](v59 - 8);
  v61 = &v369 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v399 = v47;
  v400 = v50;
  v401 = v38;
  v421 = v44;
  v419 = v42;
  v62 = type metadata accessor for OSSignposter();
  v414 = __swift_project_value_buffer(v62, static Signposter.pommes);
  v415 = v61;
  v63 = OSSignposter.begin(name:context:)("proxy.constructSearchRequest", 28, 2u, 0, v61);
  if (one-time initialization token for shared != -1)
  {
    v63 = swift_once();
  }

  v64 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v63);
  v366[0] = v433;
  v366[1] = v428;
  v402 = a2;
  v367 = a2;
  v65 = v425;
  Date.init()();
  v66 = *(*v64 + 200);
  v67 = *v64 + 200;
  v367 = &v365;
  v368 = v423;
  LOBYTE(v366[0]) = 2;
  v432 = v64;
  v68 = v426;
  v430 = v66;
  v427 = v67;
  (v66)(0xD000000000000039, 0x80000002234E08A0, 0, v65, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 614, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #1 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v426 = *(v438 + 8);
  v438 += 8;
  (v426)(v65, v429);
  v69 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isPushOffRequest.setter();
  v69(v437, 0);
  v70 = v425;
  Date.init()();
  v71 = v433;
  LOBYTE(v366[0]) = 2;
  v430(v437, 0xD000000000000016, 0x80000002234E0930, 0, v70, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 618, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #2 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:), v433, MEMORY[0x277D839B0]);
  (v426)(v70, v429);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.userDataShareOptIn.setter();
  AFIsHorseman();
  v431 = v58;
  v72 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.isDataOnlyRequest.setter();
  v73 = v71;
  v74 = (*(*v71 + 368))(v72);
  v75 = v428;
  if (v74)
  {
    (*(*v74 + 144))(*&v428[*(v424 + 8)], *&v428[*(v424 + 8) + 8], 1);
  }

  v76 = v431;
  v77 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isPhoneCallActive.setter();
  v77(v437, 0);
  v78 = v419;
  Date.init()();
  v79 = v420;
  v80 = v78 + *(v420 + 20);
  *v80 = "SiriInformationSearch/PegasusProxy.swift";
  *(v80 + 8) = 40;
  *(v80 + 16) = 2;
  *(v78 + v79[6]) = 626;
  v81 = v78 + v79[7];
  *v81 = "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)";
  *(v81 + 8) = 72;
  *(v81 + 16) = 2;
  v82 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000031, 0x80000002234E0950);
  v83 = (v78 + v79[8]);
  *v83 = v82;
  v83[1] = v84;
  v85 = *(v73 + 184);
  v86 = v422;
  (*(*v85 + 344))(v76, v75);
  if (v68)
  {
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v78, type metadata accessor for PerformanceUtil.Ticket);
    (*(v421 + 8))(v76, v423);
    goto LABEL_102;
  }

  v87 = v75;
  v382 = v85;
  v88 = *(v421 + 40);
  v416 = v421 + 40;
  v417 = v88;
  v88(v76, v86, v423);
  v89 = *(*v432 + 184);
  v371 = *v432 + 184;
  v372 = v89;
  v90 = (v89)(v78, 0);
  MEMORY[0x28223BE20](v90);
  v91 = v425;
  Date.init()();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v367 = v366;
  v368 = v92;
  LOBYTE(v366[0]) = 2;
  (v430)(v437, 0xD000000000000045, 0x80000002234E0990, 0, v91, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 630, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #3 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v373 = 0;
  (v426)(v91, v429);
  v93 = v437[0];
  v94 = v437[1];
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  v96 = __swift_project_value_buffer(v95, static Logger.pommes);
  v97 = v385;
  _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(v87, v385, type metadata accessor for PommesSearchRequest);
  outlined copy of Data?(v93, v94);
  v98 = v433;

  v422 = v96;
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.debug.getter();
  v101 = os_log_type_enabled(v99, v100);
  v102 = v94 >> 60;
  v374 = v93;
  v384 = v94;
  if (v101)
  {
    v103 = swift_slowAlloc();
    v370 = v94 >> 60;
    v104 = v97;
    v105 = v103;
    *v103 = 67109632;
    v106 = v377;
    outlined init with copy of MediaUserStateCenter?(v104 + *(v424 + 10), v377, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v107 = type metadata accessor for PommesContext();
    v108 = (*(*(v107 - 8) + 48))(v106, 1, v107) != 1;
    v109 = v106;
    v93 = v374;
    v94 = v384;
    outlined destroy of MediaUserStateCenter?(v109, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v110 = v104;
    v102 = v370;
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v110, type metadata accessor for PommesSearchRequest);
    v105[1] = v108;
    *(v105 + 4) = 1024;
    *(v105 + 10) = v102 < 0xF;
    outlined consume of Data?(v93, v94);
    *(v105 + 7) = 1024;
    v105[4] = *(v98 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext + 8) >> 60 != 15;

    _os_log_impl(&dword_2232BB000, v99, v100, "Considering adding Pegasus conversation context.\nPSR has PommesContext: %{BOOL}d\nPSR has explicit context bytes: %{BOOL}d\nPegasusProxy has persisted bytes: %{BOOL}d", v105, 0x14u);
    MEMORY[0x223DE0F80](v105, -1, -1);
  }

  else
  {
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v97, type metadata accessor for PommesSearchRequest);

    outlined consume of Data?(v93, v94);
  }

  v111 = v391;
  if (v102 <= 0xE)
  {
    outlined copy of Data?(v93, v94);
    outlined copy of Data._Representation(v93, v94);
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.conversationContextBytes.setter();
    outlined copy of Data._Representation(v93, v94);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.debug.getter();
    outlined consume of Data?(v93, v94);
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v437[0] = v123;
      *v122 = 136315138;
      outlined copy of Data._Representation(v93, v384);
      v124 = v93;
      v125 = Data.description.getter();
      v127 = v126;
      outlined consume of Data?(v124, v384);
      v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, v437);

      *(v122 + 4) = v128;
      _os_log_impl(&dword_2232BB000, v120, v121, "Adding Pegasus conversation context from explicit PommesContext value: %s", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v123);
      MEMORY[0x223DE0F80](v123, -1, -1);
      MEMORY[0x223DE0F80](v122, -1, -1);
      outlined consume of Data?(v124, v384);
    }

    else
    {

      outlined consume of Data?(v93, v94);
    }

    v116 = v404;
    v115 = v405;
  }

  else
  {
    v112 = v378;
    outlined init with copy of MediaUserStateCenter?(&v428[*(v424 + 10)], v378, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v113 = type metadata accessor for PommesContext();
    v114 = (*(*(v113 - 8) + 48))(v112, 1, v113);
    outlined destroy of MediaUserStateCenter?(v112, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v116 = v404;
    v115 = v405;
    if (v114 != 1)
    {
      v117 = *(v433 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext + 8);
      if (v117 >> 60 != 15)
      {
        v118 = *(v433 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext);
        v119 = v117 >> 62;
        if ((v117 >> 62) > 1)
        {
          if (v119 != 2)
          {
LABEL_111:
            outlined consume of Data?(v118, v117);
            goto LABEL_25;
          }

          v354 = *(v118 + 16);
          v355 = *(v118 + 24);
        }

        else
        {
          if (!v119)
          {
            if ((v117 & 0xFF000000000000) == 0)
            {
              goto LABEL_111;
            }

LABEL_108:
            outlined copy of Data._Representation(v118, v117);
            Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.conversationContextBytes.setter();
            outlined copy of Data._Representation(v118, v117);
            v356 = Logger.logObject.getter();
            v357 = static os_log_type_t.debug.getter();
            outlined consume of Data?(v118, v117);
            if (os_log_type_enabled(v356, v357))
            {
              v358 = swift_slowAlloc();
              v385 = swift_slowAlloc();
              v437[0] = v385;
              *v358 = 136315138;
              outlined copy of Data._Representation(v118, v117);
              v359 = Data.description.getter();
              v361 = v360;
              outlined consume of Data?(v118, v117);
              v362 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v359, v361, v437);
              v115 = v405;

              *(v358 + 4) = v362;
              _os_log_impl(&dword_2232BB000, v356, v357, "Adding Pegasus conversation context from implicit previous turn value: %s", v358, 0xCu);
              v363 = v385;
              __swift_destroy_boxed_opaque_existential_1(v385);
              MEMORY[0x223DE0F80](v363, -1, -1);
              v364 = v358;
              v116 = v404;
              MEMORY[0x223DE0F80](v364, -1, -1);
              outlined consume of Data?(v118, v117);

              goto LABEL_25;
            }

            goto LABEL_111;
          }

          v354 = v118;
          v355 = v118 >> 32;
        }

        if (v354 == v355)
        {
          goto LABEL_25;
        }

        outlined copy of Data?(v118, v117);
        goto LABEL_108;
      }
    }
  }

LABEL_25:
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    *v131 = 0;
    _os_log_impl(&dword_2232BB000, v129, v130, "Adding SearchConversationContext to Pegasus request", v131, 2u);
    MEMORY[0x223DE0F80](v131, -1, -1);
  }

  v132 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_searchConversationContext;
  v133 = v433;
  swift_beginAccess();
  v134 = v116[2];
  v134(v386, v133 + v132, v115);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.searchConversationContext.setter();
  v135 = v387;
  v134(v387, v133 + v132, v115);
  v136 = v388;
  JSONEncodingOptions.init()();
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Search_SearchConversationContext and conformance Apple_Parsec_Search_SearchConversationContext, MEMORY[0x277D38C60], MEMORY[0x277D38C58]);
  v137 = v373;
  v138 = Message.jsonString(options:)();
  if (v137)
  {
    (*(v389 + 8))(v136, v390);
    (v116[1])(v135, v115);
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&dword_2232BB000, v140, v141, "Could not convert SearchConversationContext to JSON before Pegasus request", v142, 2u);
      MEMORY[0x223DE0F80](v142, -1, -1);
    }
  }

  else
  {
    v144 = v139;
    v405 = v138;
    (*(v389 + 8))(v136, v390);
    (v116[1])(v135, v115);

    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v437[0] = v148;
      *v147 = 136315138;
      v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v405, v144, v437);

      *(v147 + 4) = v149;
      _os_log_impl(&dword_2232BB000, v145, v146, "SearchConversationContext JSON before Pegasus request: %s", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v148);
      MEMORY[0x223DE0F80](v148, -1, -1);
      MEMORY[0x223DE0F80](v147, -1, -1);
    }

    else
    {
    }
  }

  MEMORY[0x28223BE20](v143);
  v150 = v425;
  Date.init()();
  v151 = v413;
  v367 = v366;
  v368 = v413;
  LOBYTE(v366[0]) = 2;
  v152 = v411;
  (v430)(0xD000000000000040, 0x80000002234E07E0, 0, v150, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 661, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #4 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v390 = 0;
  (v426)(v150, v429);
  v153 = UUID.uuidString.getter();
  v155 = v154;
  v156 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.modify();
  v157 = v153;
  v158 = v151;
  MEMORY[0x223DDB6E0](v157, v155);
  v156(v437, 0);
  v159 = v412;
  (*(v412 + 16))(v111, v152, v151);
  v160 = Logger.logObject.getter();
  v161 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v160, v161))
  {
    v162 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v437[0] = v163;
    *v162 = 136315138;
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v164 = dispatch thunk of CustomStringConvertible.description.getter();
    v165 = v158;
    v167 = v166;
    v391 = *(v159 + 8);
    (v391)(v111, v165);
    v168 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164, v167, v437);

    *(v162 + 4) = v168;
    _os_log_impl(&dword_2232BB000, v160, v161, "Adding pegasusId (%s) to request", v162, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v163);
    MEMORY[0x223DE0F80](v163, -1, -1);
    MEMORY[0x223DE0F80](v162, -1, -1);
  }

  else
  {

    v391 = *(v159 + 8);
    (v391)(v111, v151);
  }

  v169 = v406;
  v170 = v428;
  v171 = v392;
  outlined init with copy of MediaUserStateCenter?(&v428[*(v424 + 10)], v392, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v172 = type metadata accessor for PommesContext();
  v173 = *(v172 - 8);
  if ((*(v173 + 48))(v171, 1, v172) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v171, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  }

  else
  {
    v174 = PommesContext.domain.getter();
    v176 = v175;
    (*(v173 + 8))(v171, v172);
    if (v176)
    {
      if (*(v170 + *(v424 + 20)) == 1)
      {

        v177 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.modify();
        MEMORY[0x223DDB6C0](v174, v176);
        v177(v437, 0);

        v178 = Logger.logObject.getter();
        v179 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v178, v179))
        {
          v180 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          v437[0] = v181;
          *v180 = 136315138;
          v182 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v176, v437);

          *(v180 + 4) = v182;
          _os_log_impl(&dword_2232BB000, v178, v179, "Adding personalDomainFallback (%s) to request", v180, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v181);
          v183 = v181;
          v169 = v406;
          MEMORY[0x223DE0F80](v183, -1, -1);
          MEMORY[0x223DE0F80](v180, -1, -1);
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

  _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(v170, v169, type metadata accessor for PommesSearchRequest);
  if (*(v169 + *(v424 + 13)))
  {
  }

  v184 = specialized PommesAssistantIDManager.init(realAssistantID:)();
  v186 = v185;
  v188 = v187;
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v169, type metadata accessor for PommesSearchRequest);
  v189 = [objc_opt_self() sharedPreferences];
  v190 = [v189 longLivedIdentifierUploadingEnabled];

  v404 = v184;
  v405 = v188;
  if (v190)
  {
    if (!v188)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v191 = v379;
    PommesAssistantIDManager.replacementAssistantID()(v184, v186, v188, v379);
    v186 = UUID.uuidString.getter();
    v188 = v192;
    (v391)(v191, v413);
  }

  v193 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.assistantID.setter();
  v193(v437, 0);

  v194 = Logger.logObject.getter();
  v195 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v194, v195))
  {
    v196 = swift_slowAlloc();
    v197 = swift_slowAlloc();
    v437[0] = v197;
    *v196 = 136315138;
    v198 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v188, v437);

    *(v196 + 4) = v198;
    _os_log_impl(&dword_2232BB000, v194, v195, "Adding assistantId (%s) to request", v196, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v197);
    MEMORY[0x223DE0F80](v197, -1, -1);
    MEMORY[0x223DE0F80](v196, -1, -1);
  }

  else
  {
  }

LABEL_57:
  v199 = (v170 + *(v424 + 8));
  v200 = v199[1];
  if (v200)
  {
    v201 = *v199;

    v202 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
    Apple_Parsec_Siri_V2alpha_SiriPegasusContext.interactionID.setter();
    v202(v437, 0);

    v203 = Logger.logObject.getter();
    v204 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      v437[0] = v206;
      *v205 = 136315138;
      v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v201, v200, v437);

      *(v205 + 4) = v207;
      _os_log_impl(&dword_2232BB000, v203, v204, "Adding interactionId (%s) to request", v205, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v206);
      MEMORY[0x223DE0F80](v206, -1, -1);
      MEMORY[0x223DE0F80](v205, -1, -1);
    }

    else
    {
    }
  }

  v208 = v394;
  _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(v170, v394, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v211 = *v208;
    v210 = v208[1];
    v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v208 + *(v213 + 48), type metadata accessor for NLXResultCandidate);
    goto LABEL_66;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v211 = *v208;
    v210 = v208[1];

    v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
    outlined destroy of MediaUserStateCenter?(v208 + *(v212 + 64), &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
LABEL_66:

    v214 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
    Apple_Parsec_Siri_V2alpha_SiriPegasusContext.resultCandidateID.setter();
    v214(v437, 0);

    v215 = Logger.logObject.getter();
    v216 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v215, v216))
    {
      v217 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      v437[0] = v218;
      *v217 = 136315138;
      v219 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v211, v210, v437);

      *(v217 + 4) = v219;
      _os_log_impl(&dword_2232BB000, v215, v216, "Adding resultCandidateId (%s) to request", v217, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v218);
      MEMORY[0x223DE0F80](v218, -1, -1);
      MEMORY[0x223DE0F80](v217, -1, -1);
    }

    else
    {
    }

    goto LABEL_71;
  }

  v220 = _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v208, type metadata accessor for PommesSearchRequest.ParseState);
LABEL_71:
  MEMORY[0x28223BE20](v220);
  LODWORD(v366[0]) = v433;
  v221 = v425;
  Date.init()();
  v368 = MEMORY[0x277D84F78] + 8;
  v222 = MEMORY[0x277D84F78] + 8;
  v406 = (MEMORY[0x277D84F78] + 8);
  v367 = &v365;
  LOBYTE(v366[0]) = 2;
  v223 = v390;
  v224 = v430;
  (v430)(0xD000000000000026, 0x80000002234E09E0, 0, v221, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 704, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #6 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v393 = v223;
  v225 = v429;
  v226 = v426(v221);
  v394 = &v369;
  MEMORY[0x28223BE20](v226);
  Date.init()();
  v367 = v366;
  v368 = v222;
  LOBYTE(v366[0]) = 2;
  v227 = v393;
  v224(0xD000000000000019, 0x80000002234E0A10, 0, v221, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 708, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #7 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v393 = v227;
  v228 = v426;
  v229 = (v426)(v221, v225);
  v394 = &v369;
  MEMORY[0x28223BE20](v229);
  LODWORD(v366[0]) = v433;
  Date.init()();
  v367 = &v365;
  v368 = v406;
  LOBYTE(v366[0]) = 2;
  v230 = v393;
  (v430)(0xD00000000000002CLL, 0x80000002234E0A30, 0, v221, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 712, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #8 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v393 = v230;
  v231 = v228(v221, v225);
  v232 = v228;
  v394 = &v369;
  MEMORY[0x28223BE20](v231);
  v233 = v433;
  LODWORD(v366[0]) = v433;
  Date.init()();
  v367 = &v365;
  v368 = v406;
  LOBYTE(v366[0]) = 2;
  v234 = v393;
  v235 = v430;
  (v430)(0xD00000000000002ELL, 0x80000002234E0A60, 0, v221, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 716, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #9 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v393 = v234;
  v236 = v429;
  v237 = v232(v221, v429);
  v394 = &v369;
  MEMORY[0x28223BE20](v237);
  LODWORD(v366[0]) = v233;
  Date.init()();
  v367 = &v365;
  v368 = v406;
  LOBYTE(v366[0]) = 2;
  v238 = v393;
  v235(0xD000000000000026, 0x80000002234E0A90, 0, v221, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 720, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #10 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v232(v221, v236);
  v239 = v395;
  outlined init with copy of MediaUserStateCenter?(&v428[*(v424 + 6)], v395, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  v240 = v396;
  v241 = v397;
  LODWORD(v394) = (*(v396 + 48))(v239, 1, v397);
  if (v394 == 1)
  {
    v406 = v238;
    outlined destroy of MediaUserStateCenter?(v239, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  }

  else
  {
    v242 = v380;
    v243 = (*(v240 + 32))(v380, v239, v241);
    v395 = &v369;
    MEMORY[0x28223BE20](v243);
    LODWORD(v366[0]) = v433;
    Date.init()();
    v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_A11SearchQueryVGMd, &_sSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_A11SearchQueryVGMR);
    v367 = &v365;
    v368 = v244;
    LOBYTE(v366[0]) = 2;
    (v430)(v437, 0xD00000000000002ALL, 0x80000002234E0C80, 0, v221, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 726, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #11 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
    v406 = v238;
    (v426)(v221, v429);
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.setter();
    (*(v240 + 8))(v242, v241);
  }

  v246 = v409;
  v245 = v410;
  v247 = v398;
  outlined init with copy of MediaUserStateCenter?(&v428[*(v424 + 11)], v398, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  if ((*(v246 + 48))(v247, 1, v245) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v247, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  }

  else
  {
    v248 = (*(v246 + 32))(v408, v247, v245);
    if (v394 == 1)
    {
      v424 = &v369;
      MEMORY[0x28223BE20](v248);
      v249 = v433;
      LODWORD(v366[0]) = v433;
      v250 = v425;
      Date.init()();
      v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_A11SearchQueryVGMd, &_sSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_A11SearchQueryVGMR);
      v367 = &v365;
      v368 = v251;
      LOBYTE(v366[0]) = 2;
      v252 = v406;
      (v430)(v437, 0xD000000000000028, 0x80000002234E0C00, 0, v250, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 734, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #12 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
      v406 = v252;
      v253 = v426;
      (v426)(v250, v429);
      v248 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.setter();
    }

    else
    {
      v250 = v425;
      v253 = v426;
      v249 = v433;
    }

    v424 = &v369;
    MEMORY[0x28223BE20](v248);
    Date.init()();
    v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtGMd, &_sSay12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtGMR);
    v367 = v366;
    v368 = v254;
    LOBYTE(v366[0]) = 2;
    v255 = v406;
    (v430)(v437, 0xD00000000000002FLL, 0x80000002234E0C30, 0, v250, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 740, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #13 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
    v253(v250, v429);
    if (*(v437[0] + 16))
    {
      v256 = v418;
      v257 = v431;
      PegasusProxy.addResolvedEntities(_:to:)(v437[0], v431, v418);

      v258 = v417;
      v417(v257, v256, v423);
    }

    else
    {

      v257 = v431;
      v258 = v417;
    }

    v259 = v383;
    Date.init()();
    v260 = v420;
    v261 = v259 + *(v420 + 20);
    *v261 = "SiriInformationSearch/PegasusProxy.swift";
    *(v261 + 8) = 40;
    *(v261 + 16) = 2;
    *(v259 + *(v260 + 24)) = 772;
    v262 = v259 + *(v260 + 28);
    *v262 = "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)";
    *(v262 + 8) = 72;
    *(v262 + 16) = 2;
    v263 = v260;
    v264 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000001BLL, 0x80000002234E0C60);
    v265 = (v259 + *(v263 + 32));
    *v265 = v264;
    v265[1] = v266;
    v267 = v381;
    (*(*v249 + 680))(v408, v257, v407);
    if (v255)
    {
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v259, type metadata accessor for PerformanceUtil.Ticket);
      v268 = v255;
      v269 = Logger.logObject.getter();
      v270 = static os_log_type_t.error.getter();

      v271 = os_log_type_enabled(v269, v270);
      v272 = v409;
      if (v271)
      {
        v273 = swift_slowAlloc();
        v274 = swift_slowAlloc();
        v437[0] = v274;
        *v273 = 136315138;
        v436 = v255;
        v275 = v255;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v276 = String.init<A>(describing:)();
        v278 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v276, v277, v437);

        *(v273 + 4) = v278;
        _os_log_impl(&dword_2232BB000, v269, v270, "Unable to add user spans to search request: %s. Continuing request without spans.", v273, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v274);
        MEMORY[0x223DE0F80](v274, -1, -1);
        MEMORY[0x223DE0F80](v273, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v258(v257, v267, v423);
      v372(v259, 0);
      v279 = Logger.logObject.getter();
      v280 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v279, v280))
      {
        v281 = swift_slowAlloc();
        v424 = swift_slowAlloc();
        v436 = v424;
        *v281 = 136315138;
        swift_beginAccess();
        Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.getter();
        swift_endAccess();
        v282 = String.init<A>(describing:)();
        v284 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v282, v283, &v436);

        *(v281 + 4) = v284;
        _os_log_impl(&dword_2232BB000, v279, v280, "Adding user spans to request. Generated client conversation context info: %s", v281, 0xCu);
        v285 = v424;
        __swift_destroy_boxed_opaque_existential_1(v424);
        MEMORY[0x223DE0F80](v285, -1, -1);
        MEMORY[0x223DE0F80](v281, -1, -1);
      }

      swift_beginAccess();
      v286 = v382;
      v287 = v418;
      v288 = v428;
      (*(*v382 + 360))(v257, v428);
      swift_beginAccess();
      v289 = v423;
      v290 = v417;
      v417(v257, v287, v423);
      (*(*v286 + 368))(v257, v288);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v383, type metadata accessor for PerformanceUtil.Ticket);
      swift_beginAccess();
      v290(v257, v287, v289);
      v272 = v409;
    }

    v406 = 0;
    (*(v272 + 8))(v408, v410);
  }

  v291 = v431;
  swift_beginAccess();
  v292 = v418;
  (*(*v382 + 376))(v291, v428);
  swift_beginAccess();
  v293 = v423;
  v294 = v417;
  v295 = (v417)(v291, v292, v423);
  v410 = &v369;
  MEMORY[0x28223BE20](v295);
  LODWORD(v366[0]) = v433;
  v296 = v425;
  Date.init()();
  v367 = &v365;
  v368 = v293;
  LOBYTE(v366[0]) = 2;
  v297 = v406;
  (v430)(0xD000000000000043, 0x80000002234E0AC0, 0, v296, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 786, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #14 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v424 = v297;
  (v426)(v296, v429);
  swift_beginAccess();
  v298 = v294(v291, v292, v293);
  v410 = &v369;
  MEMORY[0x28223BE20](v298);
  LODWORD(v366[0]) = v433;
  Date.init()();
  v367 = &v365;
  v368 = v293;
  LOBYTE(v366[0]) = 2;
  v299 = v424;
  (v430)(0xD00000000000002DLL, 0x80000002234E0B10, 0, v296, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 793, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #15 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v424 = v299;
  v300 = v426;
  (v426)(v296, v429);
  swift_beginAccess();
  v301 = v423;
  v302 = (v417)(v291, v292, v423);
  v410 = &v369;
  v409 = "ger.addRestrictions(to:with:)";
  MEMORY[0x28223BE20](v302);
  v303 = v433;
  Date.init()();
  v367 = v366;
  v368 = v301;
  LOBYTE(v366[0]) = 2;
  v304 = v418;
  v305 = v424;
  (v430)(0xD00000000000002BLL, v409 | 0x8000000000000000, 0, v296, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 800, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #16 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v424 = v305;
  v306 = v429;
  v300(v296, v429);
  swift_beginAccess();
  v307 = v423;
  v308 = (v417)(v291, v304, v423);
  MEMORY[0x28223BE20](v308);
  LODWORD(v366[0]) = v303;
  Date.init()();
  v367 = &v365;
  v368 = MEMORY[0x277D84F78] + 8;
  LOBYTE(v366[0]) = 2;
  v309 = v424;
  (v430)(0xD000000000000019, 0x80000002234E0B70, 0, v296, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 805, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #17 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v410 = v309;
  (v426)(v296, v306);
  v310 = v401;
  Date.init()();
  v311 = v420;
  v312 = v310 + *(v420 + 20);
  *v312 = "SiriInformationSearch/PegasusProxy.swift";
  *(v312 + 8) = 40;
  *(v312 + 16) = 2;
  *(v310 + v311[6]) = 810;
  v313 = v310 + v311[7];
  *v313 = "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)";
  *(v313 + 8) = 72;
  *(v313 + 16) = 2;
  v314 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000001BLL, 0x80000002234E0B90);
  v315 = (v310 + v311[8]);
  *v315 = v314;
  v315[1] = v316;
  v317 = v421;
  v318 = *(v421 + 16);
  v319 = v399;
  v424 = (v421 + 16);
  v420 = v318;
  v318(v399, v291, v307);
  v320 = v400;
  v321 = v410;
  (*(*v433 + 664))(v319, v428);
  if (v321)
  {
    v428 = *(v317 + 8);
    (v428)(v319, v307);
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v310, type metadata accessor for PerformanceUtil.Ticket);
    v322 = v321;
    v323 = Logger.logObject.getter();
    v324 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v323, v324))
    {
      v325 = swift_slowAlloc();
      v326 = swift_slowAlloc();
      v435[0] = v326;
      *v325 = 136315138;
      v434 = v321;
      v327 = v321;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v328 = String.init<A>(describing:)();
      v330 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v328, v329, v435);

      *(v325 + 4) = v330;
      _os_log_impl(&dword_2232BB000, v323, v324, "Unable to add resolved references for SmartPlay request: %s", v325, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v326);
      MEMORY[0x223DE0F80](v326, -1, -1);
      MEMORY[0x223DE0F80](v325, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v428 = *(v317 + 8);
    (v428)(v319, v307);
    swift_beginAccess();
    v417(v291, v320, v307);
    v372(v310, 0);
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v310, type metadata accessor for PerformanceUtil.Ticket);
  }

  v331 = specialized static PegasusOverrideUtil.requestFeatureFlag.getter();
  v410 = 0;
  if (v332)
  {
    v333 = v331;
    v334 = v332;

    v335 = Logger.logObject.getter();
    v336 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v335, v336))
    {
      v337 = swift_slowAlloc();
      v338 = swift_slowAlloc();
      v435[0] = v338;
      *v337 = 136315138;
      *(v337 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v333, v334, v435);
      _os_log_impl(&dword_2232BB000, v335, v336, "Using Pegasus request feature flag “%s”", v337, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v338);
      MEMORY[0x223DE0F80](v338, -1, -1);
      MEMORY[0x223DE0F80](v337, -1, -1);
    }
  }

  else
  {
    v335 = Logger.logObject.getter();
    v339 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v335, v339))
    {
      v340 = swift_slowAlloc();
      *v340 = 0;
      _os_log_impl(&dword_2232BB000, v335, v339, "Clearing Pegasus request feature flag (production)", v340, 2u);
      MEMORY[0x223DE0F80](v340, -1, -1);
    }
  }

  v341 = v431;
  swift_beginAccess();
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.featureFlag.setter();
  v342 = swift_endAccess();
  v409 = &v369;
  MEMORY[0x28223BE20](v342);
  v343 = v433;
  v344 = v425;
  Date.init()();
  v422 = (MEMORY[0x277D84F78] + 8);
  v367 = v366;
  v368 = MEMORY[0x277D84F78] + 8;
  LOBYTE(v366[0]) = 2;
  v345 = v410;
  (v430)(0xD000000000000020, 0x80000002234E0BB0, 0, v344, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 836, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #18 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v410 = v345;
  v346 = v429;
  v347 = v426;
  (v426)(v344, v429);
  swift_beginAccess();
  (*(*v343 + 80))(v341);
  v348 = swift_endAccess();
  v409 = &v369;
  MEMORY[0x28223BE20](v348);
  Date.init()();
  v367 = v366;
  v368 = v422;
  LOBYTE(v366[0]) = 2;
  (v430)(0xD000000000000018, 0x80000002234E0BE0, 0, v344, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 844, "constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)", 72, v366[0], partial apply for closure #19 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:));
  v347(v344, v346);
  swift_beginAccess();
  (*(*v343 + 96))(v341, v382);
  swift_endAccess();
  v349 = v418;
  PegasusProxy.addCurareFlags(to:)(v341, v418);

  outlined consume of Data?(v374, v384);
  (*(v412 + 8))(v411, v413);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v419, type metadata accessor for PerformanceUtil.Ticket);
  swift_beginAccess();
  v350 = v349;
  v351 = v423;
  v417(v341, v350, v423);
  (v420)(v403, v341, v351);
  (v428)(v341, v351);
LABEL_102:
  v352 = v415;
  OSSignposter.end(token:message:)(v415, 0, 0xE000000000000000);
  return _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v352, type metadata accessor for SignpostToken);
}

uint64_t closure #1 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestType();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a1 + 344))(v7);
  v11 = v10;
  ObjectType = swift_getObjectType();
  v13 = (a2 + *(type metadata accessor for PommesSearchRequest(0) + 20));
  v15 = *v13;
  v14 = v13[1];
  (*(v6 + 104))(v9, *MEMORY[0x277D39350], v5);
  (*(v11 + 40))(v15, v14, v18, v9, ObjectType, v11);
  swift_unknownObjectRelease();
  return (*(v6 + 8))(v9, v5);
}

uint64_t closure #3 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for PommesSearchRequest(0);
  outlined init with copy of MediaUserStateCenter?(a1 + *(v7 + 40), v6, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v8 = type metadata accessor for PommesContext();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    result = outlined destroy of MediaUserStateCenter?(v6, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v11 = 0;
    v12 = 0xF000000000000000;
  }

  else
  {
    v11 = MEMORY[0x223DDE3F0]();
    v12 = v13;
    result = (*(v9 + 8))(v6, v8);
  }

  *a2 = v11;
  a2[1] = v12;
  return result;
}

uint64_t closure #11 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.getter();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a2, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  v12 = (*(*a1 + 608))(v9, v8);

  result = outlined destroy of MediaUserStateCenter?(v8, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  *a3 = v12;
  return result;
}

uint64_t closure #13 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  outlined init with copy of AppDataProviding(a1 + 24, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  *a3 = RRReferenceResolverProtocol.getEntitiesFromMarrsSpans(relevantTo:)(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t closure #14 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  (*(v14 + 16))(v16, a2, v13);
  v17 = type metadata accessor for PommesSearchRequest(0);
  outlined init with copy of MediaUserStateCenter?(a3 + *(v17 + 40), v9, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v18 = type metadata accessor for PommesContext();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v9, 1, v18) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v9, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v20 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  }

  else
  {
    PommesContext.exportPromptContext()();
    (*(v19 + 8))(v9, v18);
  }

  (*(*a1 + 704))(v16, v12);
  outlined destroy of MediaUserStateCenter?(v12, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  return (*(v14 + 8))(v16, v13);
}

uint64_t closure #15 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 184);
  swift_beginAccess();
  (*(v9 + 16))(v11, a2, v8);
  (*(*v12 + 432))(v11, a3, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t closure #16 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 184);
  swift_beginAccess();
  (*(v5 + 16))(v7, a2, v4);
  (*(*v8 + 384))(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t closure #17 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  PegasusProxy.addGroundingInfo(to:for:)(a2, a3);
  return swift_endAccess();
}

uint64_t closure #18 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  PegasusProxy.appendMusicRankingInfluence(to:)(a2);
  return swift_endAccess();
}

uint64_t closure #19 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)(void *a1, uint64_t a2)
{
  v4 = a1[23];
  swift_beginAccess();
  (*(*a1 + 104))(a2, v4);
  return swift_endAccess();
}

uint64_t PegasusProxy.addRewrittenUtterances(to:delegatedUDA:)(uint64_t a1)
{
  v32 = a1;
  v1 = type metadata accessor for Siri_Nlu_External_RewriteMessage.RewriteType();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewriteType();
  MEMORY[0x28223BE20](v4 - 8);
  v26 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Siri_Nlu_External_RewriteMessage();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  Siri_Nlu_External_DelegatedUserDialogAct.rewrite.getter();
  v16 = Siri_Nlu_External_RewriteMessage.rewrittenUtterance.getter();
  v18 = v17;
  v19 = *(v10 + 8);
  v19(v15, v9);

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    Apple_Parsec_Siri_V2alpha_RewrittenUtterance.init()();
    Siri_Nlu_External_DelegatedUserDialogAct.rewrite.getter();
    v21 = Siri_Nlu_External_RewriteMessage.rewrittenUtterance.getter();
    v23 = v22;
    v19(v13, v9);
    MEMORY[0x223DDB2E0](v21, v23);
    Siri_Nlu_External_DelegatedUserDialogAct.rewrite.getter();
    Siri_Nlu_External_RewriteMessage.rewriteType.getter();
    v19(v13, v9);
    (*(*v31 + 648))(v3);
    (*(v29 + 8))(v3, v30);
    Apple_Parsec_Siri_V2alpha_RewrittenUtterance.rewriteType.setter();
    VG_AHs5NeverOTg504_s21h19InformationSearch12d59ProxyC22addRewrittenUtterances2to12delegatedUDASay0D3API013f1_g4_a9_i4_dC5K67VGAJ_0A8NLUTypes0A36_Nlu_External_DelegatedUserDialogActVtFA2IXEfU_AF0f1_g1_h1_i1_R9UtteranceVTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_D11SearchQueryVG_AHs5NeverOTg504_s21h19InformationSearch12d59ProxyC22addRewrittenUtterances2to12delegatedUDASay0D3API013f1_g4_a9_i4_dC5K67VGAJ_0A8NLUTypes0A36_Nlu_External_DelegatedUserDialogActVtFA2IXEfU_AF0f1_g1_h1_i1_R9UtteranceVTf1cn_n(v32, v8);
    (*(v27 + 8))(v8, v28);
  }

  else
  {
    VG_AHs5NeverOTg504_s21h19InformationSearch12d59ProxyC22addRewrittenUtterances2to12delegatedUDASay0D3API013f1_g4_a9_i4_dC5K67VGAJ_0A8NLUTypes0A36_Nlu_External_DelegatedUserDialogActVtFA2IXEfU_AF0f1_g1_h1_i1_R9UtteranceVTf1cn_n = v32;
  }

  return VG_AHs5NeverOTg504_s21h19InformationSearch12d59ProxyC22addRewrittenUtterances2to12delegatedUDASay0D3API013f1_g4_a9_i4_dC5K67VGAJ_0A8NLUTypes0A36_Nlu_External_DelegatedUserDialogActVtFA2IXEfU_AF0f1_g1_h1_i1_R9UtteranceVTf1cn_n;
}

uint64_t PegasusProxy.addRewrittenUtterances(to:rewriteMessage:)(uint64_t VG_AHs5NeverOTg5, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13[-v5];
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of MediaUserStateCenter?(a2, v6, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v6, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  }

  else
  {
    v11 = (*(v8 + 32))(v10, v6, v7);
    MEMORY[0x28223BE20](v11);
    *&v13[-16] = v10;
    VG_AHs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_D11SearchQueryVG_AHs5NeverOTg5(partial apply for closure #1 in PegasusProxy.addRewrittenUtterances(to:rewriteMessage:), &v13[-32], VG_AHs5NeverOTg5);
    (*(v8 + 8))(v10, v7);
  }

  return VG_AHs5NeverOTg5;
}

uint64_t closure #1 in PegasusProxy.addRewrittenUtterances(to:rewriteMessage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVGMR);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2234CF920;
  (*(v8 + 16))(v10 + v9, a2, v7);
  return Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.rewrittenUtterances.setter();
}

uint64_t PegasusProxy.addInteractionType(to:pommesSearchRequest:)(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext.SiriInteractionType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for InteractionType();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v43 = &v38 - v18;
  v19 = type metadata accessor for PommesSearchRequest(0);
  v20 = *(v19 + 52);
  v41 = a2;
  v21 = *(a2 + v20);
  if (v21)
  {
    v22 = v19;
    v38 = v4;
    v39 = v3;
    v40 = v6;
    v23 = *(*v21 + 240);

    v23(v24);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v12, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
      v25 = *(v22 + 56);
      v26 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType;
      v27 = v42;
      swift_beginAccess();
      outlined init with copy of MediaUserStateCenter?(v27 + v26, v10, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
      v28 = v43;
      (*(*v21 + 248))(v41 + v25, v10);
      outlined destroy of MediaUserStateCenter?(v10, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
    }

    else
    {
      v28 = v43;
      (*(v14 + 32))(v43, v12, v13);
      v27 = v42;
    }

    v31 = *(v14 + 16);
    v31(v10, v28, v13);
    (*(v14 + 56))(v10, 0, 1, v13);
    v32 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType;
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v10, v27 + v32, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
    swift_endAccess();
    v31(v17, v28, v13);
    v33 = (*(v14 + 88))(v17, v13);
    LODWORD(v31) = *MEMORY[0x277D61D90];
    v34 = v28;
    v35 = *(v14 + 8);
    v35(v17, v13);
    if (v33 == v31)
    {
      v36 = MEMORY[0x277D38D58];
    }

    else
    {
      v36 = MEMORY[0x277D38D60];
    }

    (*(v38 + 104))(v40, *v36, v39);
    v37 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
    Apple_Parsec_Siri_V2alpha_SiriPegasusContext.siriInteractionType.setter();
    v37(v45, 0);

    return (v35)(v34, v13);
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D38D60], v3);
    v29 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
    Apple_Parsec_Siri_V2alpha_SiriPegasusContext.siriInteractionType.setter();
    return v29(v45, 0);
  }
}

uint64_t PegasusProxy.addMultiUserContext(to:pommesSearchRequest:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  result = type metadata accessor for PommesSearchRequest(0);
  if (*(a2 + *(result + 60)) == 1)
  {
    static PegasusProxy.multiUserContext(for:)(a2);
    (*(v4 + 16))(v7, v9, v3);
    v11 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
    Apple_Parsec_Siri_V2alpha_SiriPegasusContext.multiUserContext.setter();
    v11(v12, 0);
    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

uint64_t static PegasusProxy.pegausUserIdClassification(from:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification();
  v5 = *(*(v4 - 8) + 104);
  if (a1 > 4)
  {
    v6 = MEMORY[0x277D39690];
  }

  else
  {
    v6 = qword_2784DAE00[a1];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

void PegasusProxy.addASRInterpretations(to:pommesSearchRequest:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRContext();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v107 = v99 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v99 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v99 - v14;
  v105 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery();
  v117 = *(v105 - 8);
  v16 = MEMORY[0x28223BE20](v105);
  v114 = v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v104 = v99 - v18;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation();
  v115 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + *(type metadata accessor for PommesSearchRequest(0) + 72));
  if (v22)
  {
    v101 = v13;
    v102 = v5;
    v100 = v22;
    v108 = v22;
    v23 = [v108 rawRecognition];
    if (v23 && (v24 = v23, v25 = [v23 nBestTokenListsLossless], v24, v25))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13AFSpeechTokenCGMd, &_sSaySo13AFSpeechTokenCGMR);
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
    }

    v27 = [v108 recognition];
    v118 = v26;
    v103 = v4;
    v109 = a1;
    if (v27)
    {
      v28 = v27;
      v29 = [v27 nBestTokenListsLossless];

      if (v29)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13AFSpeechTokenCGMd, &_sSaySo13AFSpeechTokenCGMR);
        v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v30 = MEMORY[0x277D84F90];
      }

      v26 = v118;
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    v35 = *(v26 + 16);
    v36 = *(v30 + 16);
    v116 = v30;
    if (v35 != v36)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.pommes);

      v38 = Logger.logObject.getter();
      v39 = v26;
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 134218240;
        *(v41 + 4) = *(v39 + 16);

        *(v41 + 12) = 2048;
        *(v41 + 14) = *(v116 + 16);

        _os_log_impl(&dword_2232BB000, v38, v40, "Found ASR interpretation with mismatched token counts: %ld pre-ITN and %ld post-ITN. POMMES will send corresponding mismatched counts in Pegasus request.", v41, 0x16u);
        MEMORY[0x223DE0F80](v41, -1, -1);
      }

      else
      {
      }

      v26 = v39;
    }

    if (v36 > v35)
    {
      v35 = v36;
    }

    v42 = MEMORY[0x277D84F90];
    v110 = v15;
    v106 = v8;
    if (v35)
    {
      v120[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
      v43 = v120[0];
      v44 = _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ASRInterpretation and conformance Apple_Parsec_Siri_V2alpha_ASRInterpretation, MEMORY[0x277D396C0], MEMORY[0x277D396B8]);
      v45 = 0;
      v119 = 0;
      do
      {
        MEMORY[0x28223BE20](v44);
        v99[-4] = v45;
        v99[-3] = v26;
        v46 = v116;
        v99[-2] = v113;
        v99[-1] = v46;
        v47 = v119;
        static Message.with(_:)();
        v119 = v47;
        v120[0] = v43;
        v49 = *(v43 + 16);
        v48 = *(v43 + 24);
        v50 = v43;
        if (v49 >= v48 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
          v50 = v120[0];
        }

        ++v45;
        *(v50 + 16) = v49 + 1;
        v44 = (*(v115 + 32))(v50 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v49, v21, v19);
        v26 = v118;
        v43 = v50;
      }

      while (v35 != v45);
      v115 = v50;
      v15 = v110;
      v8 = v106;
      v42 = MEMORY[0x277D84F90];
    }

    else
    {
      v119 = 0;
      v115 = MEMORY[0x277D84F90];
    }

    v51 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.getter();
    v52 = *(v51 + 16);
    if (v52)
    {
      v120[0] = v42;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52, 0);
      v53 = v120[0];
      v113 = *(v117 + 2);
      v54 = (v117[80] + 32) & ~v117[80];
      v99[1] = v51;
      v112 = v54;
      v55 = v51 + v54;
      v111 = *(v117 + 9);
      v56 = (v117 + 8);
      v117 += 16;
      v57 = (v117 + 16);
      v59 = v104;
      v58 = v105;
      do
      {
        v61 = v113;
        v60 = v114;
        (v113)(v114, v55, v58);
        (v61)(v59, v60, v58);

        Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.asrInterpretations.setter();
        (*v56)(v60, v58);
        v120[0] = v53;
        v63 = *(v53 + 16);
        v62 = *(v53 + 24);
        if (v63 >= v62 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
          v53 = v120[0];
        }

        *(v53 + 16) = v63 + 1;
        v64 = v111;
        (*v57)(v112 + v53 + v63 * v111, v59, v58);
        v55 += v64;
        --v52;
      }

      while (v52);

      v15 = v110;
      v8 = v106;
    }

    else
    {
    }

    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.setter();
    v65 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasQuery.getter();
    v66 = v103;
    v67 = v107;
    if (v65)
    {

      v68 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.query.modify();
      Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.asrInterpretations.setter();
      v65 = v68(v120, 0);
    }

    MEMORY[0x28223BE20](v65);
    v69 = v108;
    v99[-2] = v108;
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ASRContext and conformance Apple_Parsec_Siri_V2alpha_ASRContext, MEMORY[0x277D39290], MEMORY[0x277D39288]);
    static Message.with(_:)();
    v70 = v102;
    v71 = *(v102 + 16);
    v71(v101, v15, v66);
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.asrContext.setter();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.pommes);
    v71(v67, v15, v66);
    v71(v8, v15, v66);
    v73 = v69;

    v74 = v116;

    v75 = v8;
    v76 = v115;

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      LODWORD(v114) = v78;
      v80 = v79;
      v81 = swift_slowAlloc();
      v112 = v81;
      v119 = swift_slowAlloc();
      v120[0] = v119;
      *v80 = 134350338;
      v113 = v77;
      v82 = *(v76 + 16);

      *(v80 + 4) = v82;

      *(v80 + 12) = 2112;
      *(v80 + 14) = v73;
      *v81 = v100;
      *(v80 + 22) = 2080;
      v117 = v73;
      v83 = MEMORY[0x223DDA560]();
      v85 = v84;
      v86 = *(v70 + 8);
      v86(v67, v66);
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v120);

      *(v80 + 24) = v87;
      *(v80 + 32) = 2080;
      v89 = MEMORY[0x223DDA580](v88);
      v91 = v90;
      v86(v75, v66);
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, v120);

      *(v80 + 34) = v92;
      *(v80 + 42) = 2050;
      v93 = *(v118 + 16);

      *(v80 + 44) = v93;

      *(v80 + 52) = 2050;
      v94 = *(v74 + 16);

      *(v80 + 54) = v94;

      v95 = v113;
      _os_log_impl(&dword_2232BB000, v113, v114, "Added %{public}ld ASR interpretations to Pegasus request\n    speechPackage: %@\n    modelVersion: %s\n    acousticModelVersion: %s\n    nBestRawTokens.count: %{public}ld\n    nBestTokens.count: %{public}ld", v80, 0x3Eu);
      v96 = v112;
      outlined destroy of MediaUserStateCenter?(v112, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE0F80](v96, -1, -1);
      v97 = v119;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v97, -1, -1);
      MEMORY[0x223DE0F80](v80, -1, -1);

      v86(v110, v66);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v98 = *(v70 + 8);
      v98(v75, v66);
      v98(v67, v66);
      v98(v110, v66);
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);
    v119 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v119, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2232BB000, v119, v32, "Search request contained no ASR speech package. Skipping interpretations in Pegasus request.", v33, 2u);
      MEMORY[0x223DE0F80](v33, -1, -1);
    }

    v34 = v119;
  }
}

void closure #1 in closure #1 in PegasusProxy.addASRInterpretations(to:pommesSearchRequest:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 16) > a2)
  {
    if (a2 < 0)
    {
      __break(1u);
      return;
    }

    specialized PegasusProxy.createASRInterpretationTokens(with:)();

    Apple_Parsec_Siri_V2alpha_ASRInterpretation.preItnToken.setter();
  }

  if (*(a5 + 16) > a2)
  {

    specialized PegasusProxy.createASRInterpretationTokens(with:)();

    Apple_Parsec_Siri_V2alpha_ASRInterpretation.postItnToken.setter();
  }
}

id closure #3 in PegasusProxy.addASRInterpretations(to:pommesSearchRequest:)(int a1, id a2)
{
  v3 = [a2 modelVersion];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    MEMORY[0x223DDA570](v5, v7);
  }

  result = [a2 acousticModelVersion];
  if (result)
  {
    v9 = result;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    return MEMORY[0x223DDA590](v10, v12);
  }

  return result;
}

void closure #1 in closure #1 in PegasusProxy.createASRInterpretationTokens(with:)(int a1, id a2)
{
  v3 = [a2 text];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    MEMORY[0x223DDB570](v5, v7);
  }

  v8 = [a2 phoneSequence];
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Apple_Parsec_Siri_V2alpha_InterpretationToken.phoneSequence.setter();
  }

  v10 = [a2 ipaPhoneSequence];
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Apple_Parsec_Siri_V2alpha_InterpretationToken.ipaPhoneSequence.setter();
  }

  [a2 removeSpaceBefore];
  Apple_Parsec_Siri_V2alpha_InterpretationToken.isSpaceRemovedBefore.setter();
  [a2 removeSpaceAfter];
  Apple_Parsec_Siri_V2alpha_InterpretationToken.isSpaceRemovedAfter.setter();
  [a2 removeSpaceAfter];
  Apple_Parsec_Siri_V2alpha_InterpretationToken.isSpaceAddedAfter.setter();
  [a2 startTime];
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  Apple_Parsec_Siri_V2alpha_InterpretationToken.startTime.setter();
  [a2 endTime];
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  Apple_Parsec_Siri_V2alpha_InterpretationToken.endTime.setter();
  [a2 silenceStartTime];
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    return;
  }

  Apple_Parsec_Siri_V2alpha_InterpretationToken.silenceStartTime.setter();
  [a2 confidenceScore];
  Apple_Parsec_Siri_V2alpha_InterpretationToken.confidenceScore.setter();
  v15 = [a2 acousticCost];
  if (v15)
  {
    v16 = v15;
    [v15 doubleValue];
    Apple_Parsec_Siri_V2alpha_InterpretationToken.acousticCost.setter();
  }

  v17 = [a2 graphCost];
  if (v17)
  {
    v18 = v17;
    [v17 doubleValue];
    Apple_Parsec_Siri_V2alpha_InterpretationToken.graphCost.setter();
  }
}

uint64_t PegasusProxy.pegasusRewriteType(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Siri_Nlu_External_RewriteMessage.RewriteType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D5DBE8])
  {
    v9 = MEMORY[0x277D39388];
LABEL_7:
    v10 = *v9;
    v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewriteType();
    v12 = *(*(v11 - 8) + 104);
    v13 = a2;
    v14 = v10;
    return v12(v13, v14, v11);
  }

  if (v8 == *MEMORY[0x277D5DBD0])
  {
    v9 = MEMORY[0x277D39370];
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277D5DBD8])
  {
    v9 = MEMORY[0x277D39378];
    goto LABEL_7;
  }

  v16 = *MEMORY[0x277D5DBE0];
  v17 = v8;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewriteType();
  v12 = *(*(v11 - 8) + 104);
  if (v17 != v16)
  {
    v12(a2, *MEMORY[0x277D39388], v11);
    return (*(v5 + 8))(v7, v4);
  }

  v14 = *MEMORY[0x277D39380];
  v13 = a2;
  return v12(v13, v14, v11);
}

uint64_t PegasusProxy.addOnScreenContext(to:onDeviceLabels:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[2] = a2;
  v19[3] = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static PerformanceUtil.shared;
  Date.init()();
  v9 = *(*v8 + 200);
  v19[0] = *v8 + 200;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMd, &_sSDy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMR);
  LOBYTE(v16) = 2;
  v9(&v20, 0xD000000000000021, 0x80000002234E0CB0, 0, v7, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 1061, "addOnScreenContext(to:onDeviceLabels:)", 38, v16, partial apply for closure #1 in PegasusProxy.addOnScreenContext(to:onDeviceLabels:), v3, v10);
  v11 = *(v5 + 8);
  v12 = v11(v7, v4);
  v19[1] = v19;
  v13 = v20;
  MEMORY[0x28223BE20](v12);
  v16 = v13;
  Date.init()();
  v17 = &v15;
  v18 = MEMORY[0x277D84F78] + 8;
  LOBYTE(v16) = 2;
  (v9)(0xD00000000000005BLL, 0x80000002234E0CE0, 0, v7, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 1065, "addOnScreenContext(to:onDeviceLabels:)", 38, v16, partial apply for closure #2 in PegasusProxy.addOnScreenContext(to:onDeviceLabels:));

  return v11(v7, v4);
}

uint64_t closure #1 in PegasusProxy.addOnScreenContext(to:onDeviceLabels:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of AppDataProviding(a1 + 24, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  *a2 = RRReferenceResolverProtocol.extractOnScreenContext()(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t closure #2 in PegasusProxy.addOnScreenContext(to:onDeviceLabels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a3;
  v72 = a4;
  v74 = a2;
  v70 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v5 = *(v70 - 8);
  v6 = MEMORY[0x28223BE20](v70);
  v69 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch19OnScreenContextTypeO21GeneratedClientEntityVSgMd, &_s21SiriInformationSearch19OnScreenContextTypeO21GeneratedClientEntityVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v57 - v10;
  v12 = type metadata accessor for OnScreenContextType.GeneratedClientEntity(0);
  v13 = MEMORY[0x28223BE20](v12);
  v73 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v17 = (v16 + 48);
  v63 = (v5 + 8);
  v64 = (v5 + 16);
  v62 = (v5 + 40);
  v61 = xmmword_2234CF920;
  v58 = a1;
  v66 = v13;
  v67 = v11;
  v65 = (v16 + 48);
  while (1)
  {
    v19 = *(&outlined read-only object #0 of closure #2 in PegasusProxy.addOnScreenContext(to:onDeviceLabels:) + v15 + 32);
    v20 = *(a1 + 16);
    v59 = v15;
    if (v20 && (specialized __RawDictionaryStorage.find<A>(_:)(v19), (v21 & 1) != 0))
    {
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    v60 = v22;
    v23 = *(v22 + 16);
    if (v23)
    {
      break;
    }

LABEL_2:
    v15 = v59 + 1;

    a1 = v58;
    if (v15 == 3)
    {
      return result;
    }
  }

  v24 = (v60 + 40);
  v75 = v19;
  while (1)
  {
    v26 = *(v24 - 1);
    v25 = *v24;

    OnScreenContextType.generateClientEntity(context:)(v26, v25, v19, v11);

    if ((*v17)(v11, 1, v12) != 1)
    {
      break;
    }

    outlined destroy of MediaUserStateCenter?(v11, &_s21SiriInformationSearch19OnScreenContextTypeO21GeneratedClientEntityVSgMd, &_s21SiriInformationSearch19OnScreenContextTypeO21GeneratedClientEntityVSgMR);
LABEL_10:
    v24 += 2;
    if (!--v23)
    {
      goto LABEL_2;
    }
  }

  v27 = v73;
  outlined init with take of PommesSearchRequest(v11, v73, type metadata accessor for OnScreenContextType.GeneratedClientEntity);
  v28 = (v27 + *(v12 + 24));
  v30 = *v28;
  v29 = v28[1];

  v31 = v74;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = *(v31 + 8);
  v33 = v76;
  *(v31 + 8) = 0x8000000000000000;
  v35 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
  v36 = v33[2];
  v37 = (v34 & 1) == 0;
  v38 = v36 + v37;
  if (!__OFADD__(v36, v37))
  {
    v39 = v34;
    if (v33[3] < v38)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, isUniquelyReferenced_nonNull_native);
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v75);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_27;
      }

      v35 = v40;
      v42 = v76;
      if ((v39 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      v47 = (v42[7] + 16 * v35);
      *v47 = v30;
      v47[1] = v29;

LABEL_21:
      *(v74 + 8) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMR);
      v48 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
      v49 = *(v48 - 8);
      v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = v61;
      v52 = v73;
      (*(v49 + 16))(v51 + v50, v73, v48);
      v54 = v69;
      v53 = v70;
      v55 = v71;
      (*v64)(v69, v71, v70);
      v56 = v68;
      (*(*v72 + 88))(v51, v54);

      (*v63)(v54, v53);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v52, type metadata accessor for OnScreenContextType.GeneratedClientEntity);
      (*v62)(v55, v56, v53);
      v12 = v66;
      v11 = v67;
      v17 = v65;
      v19 = v75;
      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v42 = v76;
      if (v34)
      {
        goto LABEL_20;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v42 = v76;
      if (v39)
      {
        goto LABEL_20;
      }
    }

LABEL_16:
    v42[(v35 >> 6) + 8] |= 1 << v35;
    *(v42[6] + v35) = v75;
    v43 = (v42[7] + 16 * v35);
    *v43 = v30;
    v43[1] = v29;
    v44 = v42[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_26;
    }

    v42[2] = v46;
    goto LABEL_21;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t PegasusProxy.addPlaySRREntities(to:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a3;
  v125 = a1;
  v130 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v126 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RRCandidate();
  v6 = *(v5 - 8);
  v127 = v5;
  v128 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v111 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v112 = &v110 - v10;
  MEMORY[0x28223BE20](v9);
  v113 = &v110 - v11;
  v12 = type metadata accessor for RRQuery();
  v121 = *(v12 - 1);
  v122 = v12;
  MEMORY[0x28223BE20](v12);
  v120 = (&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  MEMORY[0x28223BE20](v118);
  v119 = (&v110 - v14);
  v116 = type metadata accessor for RRResult();
  v115 = *(v116 - 8);
  v15 = MEMORY[0x28223BE20](v116);
  v114 = (&v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v117 = &v110 - v17;
  v18 = type metadata accessor for Siri_Nlu_External_UserParse();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = *(a2 + *(type metadata accessor for PommesSearchRequest(0) + 76));
  v24 = *(v23 + 16);
  v25 = (v19 + 8);
  do
  {
    if (v24 == v22)
    {
      if (one-time initialization token for pommes != -1)
      {
        goto LABEL_72;
      }

      goto LABEL_10;
    }

    v26 = *(v23 + 16);
    if (v22 >= v26)
    {
      __break(1u);
      goto LABEL_63;
    }

    v27 = (*(v19 + 16))(v21, v23 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v22, v18);
    v28 = v131;
    v29 = Siri_Nlu_External_UserParse.firstSmartPlayTask()(v27);
    v131 = v28;
    if (v28)
    {
      return (*v25)(v21, v18);
    }

    v30 = v29;
    ++v22;
    (*v25)(v21, v18);
  }

  while (!v30);

  type metadata accessor for UsoEntityBuilder_common_MediaItem();
  swift_allocObject();
  v31 = UsoEntityBuilder_common_MediaItem.init()();
  v32 = MEMORY[0x223DDCA80]();
  if (!v32)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.pommes);
    v40 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2232BB000, v40, v44, "Unable to generate empty media item USO entity for reference resolution", v45, 2u);
      MEMORY[0x223DE0F80](v45, -1, -1);
    }

    goto LABEL_18;
  }

  v33 = v32;
  outlined init with copy of AppDataProviding(v123 + 24, v132);
  __swift_project_boxed_opaque_existential_1(v132, v132[3]);
  v35 = v120;
  v34 = v121;
  *v120 = v33;
  v36 = v122;
  (*(v34 + 104))(v35, *MEMORY[0x277D5FEA8], v122);

  v37 = v119;
  dispatch thunk of RRReferenceResolverProtocol.resolve(reference:)();
  (*(v34 + 8))(v35, v36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v132[7] = *v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();

    return __swift_destroy_boxed_opaque_existential_1(v132);
  }

  v18 = v115;
  v47 = v117;
  v48 = v37;
  v25 = v116;
  (*(v115 + 32))(v117, v48, v116);
  __swift_destroy_boxed_opaque_existential_1(v132);
  v49 = v114;
  (*(v18 + 16))(v114, v47, v25);
  v50 = (*(v18 + 88))(v49, v25);
  if (v50 == *MEMORY[0x277D5FEC0])
  {
    v118 = v33;
    v119 = v31;
    (*(v18 + 96))(v49, v25);
    v51 = v127;
    v52 = v128;
    v53 = *(v128 + 32);
    v54 = v113;
    v53(v113, v49, v127);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.pommes);
    v56 = v112;
    (*(v52 + 16))(v112, v54, v51);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = v56;
      v122 = swift_slowAlloc();
      v132[0] = v122;
      *v59 = 136315138;
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, MEMORY[0x277D5FE08], MEMORY[0x277D5FE10]);
      v61 = v53;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      (*(v128 + 8))(v60, v51);
      v65 = v62;
      v53 = v61;
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v64, v132);
      v52 = v128;

      *(v59 + 4) = v66;
      _os_log_impl(&dword_2232BB000, v57, v58, "Found single SRR match candidate for SmartPlay: %s", v59, 0xCu);
      v67 = v122;
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x223DE0F80](v67, -1, -1);
      v68 = v59;
      v54 = v113;
      MEMORY[0x223DE0F80](v68, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v56, v51);
    }

    v81 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR);
    v82 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_2234CF920;
    v53((v70 + v82), v54, v81);
    v69 = v81;
    goto LABEL_32;
  }

  v69 = v127;
  if (v50 != *MEMORY[0x277D5FED0])
  {
    if (v50 == *MEMORY[0x277D5FEC8])
    {
      v92 = *(v18 + 8);
      v92(v49, v25);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      __swift_project_value_buffer(v93, static Logger.pommes);
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        v97 = "No support for plural match in reference resolution for SmartPlay";
LABEL_53:
        _os_log_impl(&dword_2232BB000, v94, v95, v97, v96, 2u);
        MEMORY[0x223DE0F80](v96, -1, -1);

LABEL_55:
        v92(v117, v25);
LABEL_56:
        v99 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
        return (*(*(v99 - 8) + 16))(v124, v125, v99);
      }

      goto LABEL_54;
    }

    if (v50 == *MEMORY[0x277D5FED8])
    {
      v92 = *(v18 + 8);
      v92(v49, v25);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v98 = type metadata accessor for Logger();
      __swift_project_value_buffer(v98, static Logger.pommes);
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        v97 = "No support for plural disambiguation in reference resolution for SmartPlay";
        goto LABEL_53;
      }

LABEL_54:

      goto LABEL_55;
    }

    v26 = one-time initialization token for pommes;
    if (v50 == *MEMORY[0x277D5FEE0])
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      __swift_project_value_buffer(v100, static Logger.pommes);
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&dword_2232BB000, v101, v102, "No matching entities for SmartPlay task", v103, 2u);
        MEMORY[0x223DE0F80](v103, -1, -1);
      }

      else
      {
      }

      (*(v18 + 8))(v117, v25);
      goto LABEL_56;
    }

LABEL_63:
    if (v26 != -1)
    {
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    __swift_project_value_buffer(v104, static Logger.pommes);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_2232BB000, v105, v106, "Unknown (future?) reference resolution result case for SmartPlay", v107, 2u);
      MEMORY[0x223DE0F80](v107, -1, -1);
    }

    else
    {
    }

    v108 = *(v18 + 8);
    v108(v117, v25);
    v109 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
    (*(*(v109 - 8) + 16))(v124, v125, v109);
    return v108(v114, v25);
  }

  (*(v18 + 96))(v49, v25);
  v70 = *v49;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v118 = v33;
  v119 = v31;
  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, static Logger.pommes);

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = v70;
    v76 = swift_slowAlloc();
    v132[0] = v76;
    *v74 = 136315138;
    v77 = MEMORY[0x223DDF850](v75, v69);
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v132);

    *(v74 + 4) = v79;
    _os_log_impl(&dword_2232BB000, v72, v73, "Found multiple SRR match candidates for SmartPlay: %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    v80 = v76;
    v70 = v75;
    MEMORY[0x223DE0F80](v80, -1, -1);
    MEMORY[0x223DE0F80](v74, -1, -1);
  }

  v52 = v128;
LABEL_32:
  v83 = *(v70 + 16);
  if (v83)
  {
    v132[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83, 0);
    v84 = 0;
    v85 = v132[0];
    v121 = v70 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v122 = v70;
    v86 = (v52 + 8);
    v120 = (v126 + 32);
    v87 = v111;
    while (v84 < v122[2])
    {
      v88 = (*(v52 + 16))(v87, v121 + *(v52 + 72) * v84, v69);
      MEMORY[0x28223BE20](v88);
      *(&v110 - 2) = v87;
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity, MEMORY[0x277D39438], MEMORY[0x277D39430]);
      v89 = v131;
      static Message.with(_:)();
      v131 = v89;
      if (v89)
      {
        (*(v115 + 8))(v117, v116);

        (*v86)(v87, v69);
      }

      (*v86)(v87, v69);
      v132[0] = v85;
      v91 = *(v85 + 16);
      v90 = *(v85 + 24);
      if (v91 >= v90 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1);
        v87 = v111;
        v85 = v132[0];
      }

      ++v84;
      *(v85 + 16) = v91 + 1;
      (*(v126 + 32))(v85 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v91, v129, v130);
      v69 = v127;
      v52 = v128;
      if (v83 == v84)
      {

        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_72:
    swift_once();
LABEL_10:
    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.pommes);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2232BB000, v40, v41, "User parses do not have a SmartPlay USO task", v42, 2u);
      MEMORY[0x223DE0F80](v42, -1, -1);
    }

LABEL_18:

    v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
    return (*(*(v46 - 8) + 16))(v124, v125, v46);
  }

  v85 = MEMORY[0x277D84F90];
LABEL_47:
  (*(*v123 + 88))(v85, v125);

  return (*(v115 + 8))(v117, v116);
}