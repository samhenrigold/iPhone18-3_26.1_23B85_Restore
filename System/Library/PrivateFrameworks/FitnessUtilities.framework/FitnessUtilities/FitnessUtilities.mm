void *sub_24B7BA180(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_24B7BA1EC(uint64_t a1)
{
  result = sub_24B7DAE58();
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

uint64_t AsyncLockable.withLock<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v10 = swift_task_alloc();
  v7[8] = v10;
  *v10 = v7;
  v10[1] = sub_24B7BA554;

  return sub_24B7BA348(a4, a6);
}

uint64_t sub_24B7BA348(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *(a2 + 8);
  v5 = sub_24B7DAC58();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_24B7BA3C4, v5, v4);
}

uint64_t sub_24B7BA3C4()
{
  v9 = v0;
  (*(v0[4] + 16))(&v8, v0[3]);
  if (v8)
  {
    v1 = v0[5];
    v0[2] = v8;
    v2 = swift_task_alloc();
    v0[9] = v2;
    *(v2 + 16) = *(v0 + 3);
    *(v2 + 32) = v0 + 2;
    *(v2 + 40) = v1;
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_24B7BBBD0;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v4 = v0[4];
    v5 = v0[3];
    v8 = MEMORY[0x277D84F90];
    (*(v4 + 24))(&v8, v5);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24B7BA554()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  *v4 = v3;
  v4[1] = sub_24B7BA71C;
  v5 = *(v1 + 16);

  return v7(v5);
}

uint64_t sub_24B7BA71C()
{
  *(*v1 + 80) = v0;

  v3 = sub_24B7DAC58();
  if (v0)
  {
    v4 = sub_24B7BEC48;
  }

  else
  {
    v4 = sub_24B7BAA84;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

void *sub_24B7BA888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0594F8, &qword_24B7DBA88);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  result = (*(a2 + 16))(&v13, a1, a2);
  v9 = v13;
  if (v13)
  {
    if (v13[2])
    {
      result = (*(v5 + 16))(v7, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);
      v10 = v9[2];
      if (v10)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = v9;
        if (!isUniquelyReferenced_nonNull_native || (v10 - 1) > v9[3] >> 1)
        {
          v9 = sub_24B7BB994(isUniquelyReferenced_nonNull_native, v10, 1, v9);
          v13 = v9;
        }

        sub_24B7BC110(0, 1, 0);
        v12 = v9;
        (*(a2 + 24))(&v12, a1, a2);
        sub_24B7DAC78();
        return (*(v5 + 8))(v7, v4);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      v13 = 0;
      return (*(a2 + 24))(&v13, a1, a2);
    }
  }

  return result;
}

uint64_t sub_24B7BAA84()
{
  sub_24B7BA888(v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t AsyncStreamPublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  AsyncStreamPublisher.init()();
  return v0;
}

uint64_t *AsyncStreamPublisher.init()()
{
  swift_defaultActor_initialize();
  v1 = sub_24B7DA9C8();
  v2 = sub_24B7DAD18();
  swift_getTupleTypeMetadata2();
  v3 = sub_24B7DAC08();
  v4 = sub_24B7BAC3C();
  v5 = sub_24B7BAC94(v3, v1, v2, v4);

  *(v0 + 112) = v5;
  return v0;
}

unint64_t sub_24B7BAC3C()
{
  result = qword_280DD1778;
  if (!qword_280DD1778)
  {
    sub_24B7DA9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DD1778);
  }

  return result;
}

unint64_t sub_24B7BAC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24B7DAC28())
  {
    sub_24B7DAF28();
    v13 = sub_24B7DAF18();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24B7DAC28();
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
        if (sub_24B7DAC18())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24B7DAEC8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24B7D4EB0(v12, a2, v27);
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

uint64_t AsyncStreamPublisher.publish(_:)(uint64_t a1)
{
  swift_beginAccess();
  sub_24B7DA9C8();
  sub_24B7DAD18();
  sub_24B7BAC3C();
  sub_24B7DA9F8();

  swift_getWitnessTable();
  sub_24B7DAB48();
}

uint64_t sub_24B7BB098()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B7BB190()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B7BB29C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B7BB304(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B7BB094;

  return sub_24B7BB3BC(a1, v4);
}

uint64_t sub_24B7BB3BC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B7BB098;

  return v6(a1);
}

uint64_t CurrentValueAsyncStreamPublisher.__deallocating_deinit()
{
  CurrentValueAsyncStreamPublisher.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t CurrentValueAsyncStreamPublisher.deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_24B7DAE58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncStreamPublisher.__deallocating_deinit()
{
  AsyncStreamPublisher.deinit();

  return MEMORY[0x282200960](v0);
}

void *AsyncStreamPublisher.deinit()
{
  swift_beginAccess();
  sub_24B7DA9C8();
  sub_24B7DAD18();
  sub_24B7BAC3C();
  sub_24B7DA9F8();

  swift_getWitnessTable();
  sub_24B7DAB48();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24B7BB6E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0594F8, &qword_24B7DBA88);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  sub_24B7DAC58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v10 + 16))(v12, a1, v9);
  v13 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_24B7BB994(0, v13[2] + 1, 1, v13);
    *a2 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_24B7BB994((v15 > 1), v16 + 1, 1, v13);
    *a2 = v13;
  }

  v13[2] = v16 + 1;
  (*(v10 + 32))(v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v12, v9);
  v20 = *a2;
  v17 = *(a5 + 24);

  return v17(&v20, a4, a5);
}

uint64_t sub_24B7BB8E0(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_24B7BB994(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059500, &unk_24B7DBA90);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0594F8, &qword_24B7DBA88) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0594F8, &qword_24B7DBA88) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24B7BBB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24B7BBBD0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24B7BC0B0, v3, v2);
}

uint64_t String.init(localizing:tableName:bundle:locale:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v43 = a8;
  v44 = a6;
  v45 = a7;
  v37 = a5;
  v38 = a4;
  v41 = a2;
  v42 = a3;
  v46 = a1;
  v8 = sub_24B7DA928();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B7DA9D8();
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24B7DAA88();
  v35 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24B7DA938();
  v19 = *(v36 - 8);
  v20 = MEMORY[0x28223BE20](v36);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v32 - v23;
  (*(v16 + 16))(v18, v46, v15);
  v25 = *(v12 + 16);
  v26 = v37;
  v25(v14, v37, v11);
  v27 = v38;
  v28 = [v38 bundleURL];
  sub_24B7DA968();

  (*(v39 + 104))(v10, *MEMORY[0x277CC9118], v40);
  sub_24B7DA948();
  v29 = v36;
  (*(v19 + 16))(v22, v24, v36);
  v30 = sub_24B7DAAA8();

  (*(v34 + 8))(v26, v33);
  (*(v16 + 8))(v46, v35);
  (*(v19 + 8))(v24, v29);
  return v30;
}

uint64_t sub_24B7BC0B0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24B7BC110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0594F8, &qword_24B7DBA88);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t _s2os6LoggerV16FitnessUtilitiesE8stripped8filenameS2S_tFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24B7BC574();
  v6 = (sub_24B7DAE68() + 16);
  if (*v6)
  {
    v7 = &v6[2 * *v6];
    a1 = *v7;
    a2 = v7[1];
  }

  else
  {
  }

  sub_24B7BC5C8(46, 0xE100000000000000, a1, a2);
  v8 = sub_24B7DAB28();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x24C24A4C0](v8, v10, v12, v14);

  return v15;
}

Swift::Void __swiftcall Logger.trace(file:function:)(Swift::String file, Swift::String function)
{
  object = function._object;
  countAndFlagsBits = function._countAndFlagsBits;
  v4 = _s2os6LoggerV16FitnessUtilitiesE8stripped8filenameS2S_tFZ_0(file._countAndFlagsBits, file._object, function._countAndFlagsBits, function._object);
  v6 = v5;
  v7 = _s2os6LoggerV16FitnessUtilitiesE8stripped12functionNameS2S_tFZ_0(countAndFlagsBits, object);
  v9 = v8;

  oslog = sub_24B7DA9E8();
  v10 = sub_24B7DAE38();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 67109634;
    v13 = pthread_self();
    *(v11 + 4) = pthread_mach_thread_np(v13);
    *(v11 + 8) = 2082;
    v14 = sub_24B7BC760(v4, v6, &v17);

    *(v11 + 10) = v14;
    *(v11 + 18) = 2082;
    v15 = sub_24B7BC760(v7, v9, &v17);

    *(v11 + 20) = v15;
    _os_log_impl(&dword_24B7B9000, oslog, v10, "[%u] %{public}s::%{public}s", v11, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C24AFA0](v12, -1, -1);
    MEMORY[0x24C24AFA0](v11, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_24B7BC574()
{
  result = qword_280DD1370[0];
  if (!qword_280DD1370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DD1370);
  }

  return result;
}

unint64_t sub_24B7BC5C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  while (sub_24B7DAB18() != a1 || v9 != a2)
  {
    v10 = sub_24B7DB088();

    if (v10)
    {
      return v8;
    }

    v8 = sub_24B7DAAF8();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t _s2os6LoggerV16FitnessUtilitiesE8stripped12functionNameS2S_tFZ_0(uint64_t a1, unint64_t a2)
{
  sub_24B7BC5C8(40, 0xE100000000000000, a1, a2);
  v2 = sub_24B7DAB28();
  v3 = MEMORY[0x24C24A4C0](v2);

  return v3;
}

unint64_t sub_24B7BC760(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24B7BC878(v11, 0, 0, 1, a1, a2);
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
    sub_24B7BCC14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void *sub_24B7BC82C(uint64_t a1, unint64_t a2)
{
  v3 = sub_24B7BC984(a1, a2);
  sub_24B7BCB28(&unk_285E9DDD8);
  return v3;
}

unint64_t sub_24B7BC878(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24B7BC82C(a5, a6);
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
    result = sub_24B7DAEF8();
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

void *sub_24B7BC984(uint64_t a1, unint64_t a2)
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

  v6 = sub_24B7BCAB4(v5, 0);
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

  result = sub_24B7DAEF8();
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
        v10 = sub_24B7DAB08();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24B7BCAB4(v10, 0);
        result = sub_24B7DAEB8();
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

void *sub_24B7BCAB4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059C18, &unk_24B7DE9C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_24B7BCB28(uint64_t result)
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

  result = sub_24B7D40AC(result, v11, 1, v3);
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

uint64_t sub_24B7BCC14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_24B7BCCBC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = sub_24B7DA9C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B7D4800(a1, a3);
  (*(v8 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = *(v6 + 80);
  *(v11 + 24) = a2;
  (*(v8 + 32))(v11 + v10, &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_24B7DAD18();

  return sub_24B7DACC8();
}

uint64_t sub_24B7BCE88()
{
  v1 = sub_24B7DA9C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t AsyncStreamPublisher.makeStream(bufferingPolicy:)(uint64_t a1)
{
  v3 = sub_24B7DACD8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-v5];
  v7 = sub_24B7DA9C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24B7DA9B8();
  (*(v4 + 16))(v6, a1, v3);
  v13 = v1;
  v14 = v10;
  nullsub_1();
  sub_24B7DAD68();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24B7BD130()
{
  v1 = sub_24B7DA9C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B7BD1F4()
{
  v1 = sub_24B7DA9C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B7BD2C0()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B7BD384()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B7BD448()
{
  v1 = sub_24B7DACD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_24B7DAD18();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24B7BD5AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B7BD5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_24B7CB118(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_24B7BD62C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24B7BD67C(void *a1)
{
  sub_24B7DAF08();

  return swift_getWitnessTable();
}

uint64_t sub_24B7BD6D0()
{
  v1 = sub_24B7DA9C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B7BD79C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24B7BD7E4()
{
  sub_24B7C3854(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_24B7C3854(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_24B7BD82C()
{
  sub_24B7BDEB8(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_24B7BDEB8(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t DynamicPredicateComparisonDescriptor.lhs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_24B7BD918(v2, v3, v4);
}

uint64_t sub_24B7BD918(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  return result;
}

uint64_t DynamicPredicateComparisonDescriptor.rhs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_24B7BD918(v2, v3, v4);
}

__n128 DynamicPredicateComparisonDescriptor.init(comparisonOperator:lhs:rhs:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 16);
  v5 = a3[1].n128_u8[0];
  *a4 = a1;
  *(a4 + 8) = *a2;
  *(a4 + 24) = v4;
  result = *a3;
  *(a4 + 32) = *a3;
  *(a4 + 48) = v5;
  return result;
}

uint64_t sub_24B7BD96C()
{
  v1 = *v0;
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](v1);
  return sub_24B7DB128();
}

uint64_t sub_24B7BD9B4(uint64_t a1)
{
  v2 = *v1;
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](v2);
  return sub_24B7DB128();
}

uint64_t sub_24B7BD9F8()
{
  v1 = 7563372;
  if (*v0 != 1)
  {
    v1 = 7563378;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_24B7BDA44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B7BE660(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B7BDA84(uint64_t a1)
{
  v2 = sub_24B7BDDBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7BDAC0(uint64_t a1)
{
  v2 = sub_24B7BDDBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicPredicateComparisonDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0594A0, &qword_24B7DB6E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v23 = v1[24];
  v10 = *(v1 + 5);
  v17 = *(v1 + 4);
  v18 = v8;
  v16 = v10;
  HIDWORD(v15) = v1[48];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7BDDBC();
  sub_24B7DB158();
  LOBYTE(v20) = v7;
  v24 = 0;
  sub_24B7BDE10();
  v11 = v19;
  sub_24B7DB048();
  if (!v11)
  {
    v12 = v16;
    v13 = v17;
    v20 = v18;
    v21 = v9;
    v22 = v23;
    v24 = 1;
    sub_24B7BD918(v18, v9, v23);
    sub_24B7BDE64();
    sub_24B7DB048();
    sub_24B7BDEB8(v20, v21, v22);
    v20 = v13;
    v21 = v12;
    v22 = BYTE4(v15);
    v24 = 2;
    sub_24B7BD918(v13, v12, SBYTE4(v15));
    sub_24B7DB048();
    sub_24B7BDEB8(v20, v21, v22);
  }

  return (*(v4 + 8))(v6, v3);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24B7BDDBC()
{
  result = qword_27F0594A8;
  if (!qword_27F0594A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594A8);
  }

  return result;
}

unint64_t sub_24B7BDE10()
{
  result = qword_27F0594B0;
  if (!qword_27F0594B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594B0);
  }

  return result;
}

unint64_t sub_24B7BDE64()
{
  result = qword_27F0594B8;
  if (!qword_27F0594B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594B8);
  }

  return result;
}

uint64_t sub_24B7BDEB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  return result;
}

uint64_t DynamicPredicateComparisonDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0594C0, &qword_24B7DB6E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7BDDBC();
  sub_24B7DB148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  sub_24B7BE168();
  sub_24B7DAFB8();
  v9 = v20;
  v24 = 1;
  sub_24B7BE1BC();
  sub_24B7DAFB8();
  v18 = v20;
  v19 = v21;
  v23 = v22;
  v24 = 2;
  sub_24B7DAFB8();
  (*(v6 + 8))(v8, v5);
  v10 = v20;
  v11 = v21;
  v12 = v22;
  *a2 = v9;
  v14 = v18;
  v13 = v19;
  *(a2 + 8) = v18;
  *(a2 + 16) = v13;
  v15 = v23;
  *(a2 + 24) = v23;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  sub_24B7BD918(v14, v13, v15);
  sub_24B7BD918(v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_24B7BDEB8(v14, v13, v15);
  return sub_24B7BDEB8(v10, v11, v12);
}

unint64_t sub_24B7BE168()
{
  result = qword_27F0594C8;
  if (!qword_27F0594C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594C8);
  }

  return result;
}

unint64_t sub_24B7BE1BC()
{
  result = qword_27F0594D0;
  if (!qword_27F0594D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594D0);
  }

  return result;
}

uint64_t DynamicPredicateComparisonDescriptor.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  sub_24B7DAAE8();

  if (v3 <= 1)
  {
    if (!v3)
    {
      MEMORY[0x24C24AAF0](0);
      v6 = v2 + 1;
      goto LABEL_14;
    }

    v7 = 1;
LABEL_13:
    MEMORY[0x24C24AAF0](v7);
    v6 = v2;
LABEL_14:
    MEMORY[0x24C24AAF0](v6);
    if (v5 > 1)
    {
      goto LABEL_15;
    }

LABEL_10:
    if (!v5)
    {
      MEMORY[0x24C24AAF0](0);
      v8 = v4 + 1;
      return MEMORY[0x24C24AAF0](v8);
    }

    v10 = 1;
LABEL_25:
    MEMORY[0x24C24AAF0](v10);
    v8 = v4;
    return MEMORY[0x24C24AAF0](v8);
  }

  if (v3 == 2)
  {
    v7 = 2;
    goto LABEL_13;
  }

  if (v3 != 3)
  {
    MEMORY[0x24C24AAF0](4);
    sub_24B7DAAE8();
    if (v5 > 1)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  MEMORY[0x24C24AAF0](3);
  sub_24B7DAAE8();

  if (v5 <= 1)
  {
    goto LABEL_10;
  }

LABEL_15:
  if (v5 == 2)
  {
    v10 = 2;
    goto LABEL_25;
  }

  if (v5 == 3)
  {
    MEMORY[0x24C24AAF0](3);
    sub_24B7DAAE8();
  }

  else
  {
    MEMORY[0x24C24AAF0](4);

    return sub_24B7DAAE8();
  }
}

uint64_t DynamicPredicateComparisonDescriptor.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  v4[72] = *v0;
  v5 = *(v0 + 8);
  v6 = v1;
  v7 = *(v0 + 32);
  v8 = v2;
  sub_24B7DB0F8();
  DynamicPredicateComparisonDescriptor.hash(into:)(v4);
  return sub_24B7DB128();
}

uint64_t sub_24B7BE584()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  v4[72] = *v0;
  v5 = *(v0 + 8);
  v6 = v1;
  v7 = *(v0 + 32);
  v8 = v2;
  sub_24B7DB0F8();
  DynamicPredicateComparisonDescriptor.hash(into:)(v4);
  return sub_24B7DB128();
}

uint64_t sub_24B7BE5F4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 48);
  v5[72] = *v1;
  v6 = *(v1 + 8);
  v7 = v2;
  v8 = *(v1 + 32);
  v9 = v3;
  sub_24B7DB0F8();
  DynamicPredicateComparisonDescriptor.hash(into:)(v5);
  return sub_24B7DB128();
}

uint64_t sub_24B7BE660(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024B7DF8F0 == a2 || (sub_24B7DB088() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7563372 && a2 == 0xE300000000000000 || (sub_24B7DB088() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7563378 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B7DB088();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

BOOL _s16FitnessUtilities36DynamicPredicateComparisonDescriptorV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = a1[24];
  v15 = *(a1 + 5);
  v16 = *(a1 + 4);
  v5 = a1[48];
  v7 = *(a2 + 1);
  v6 = *(a2 + 2);
  v8 = a2[24];
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  v11 = a2[48];
  if ((sub_24B7C60C0(*a1, *a2) & 1) != 0 && (v20 = v2, v21 = v3, v22 = v4, v17 = v7, v18 = v6, v19 = v8, sub_24B7BD918(v2, v3, v4), sub_24B7BD918(v7, v6, v8), v12 = _s16FitnessUtilities31DynamicPredicateComparableValueO2eeoiySbAC_ACtFZ_0(&v20, &v17), sub_24B7BDEB8(v17, v18, v19), sub_24B7BDEB8(v20, v21, v22), v12))
  {
    v20 = v16;
    v21 = v15;
    v22 = v5;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    sub_24B7BD918(v16, v15, v5);
    sub_24B7BD918(v9, v10, v11);
    v13 = _s16FitnessUtilities31DynamicPredicateComparableValueO2eeoiySbAC_ACtFZ_0(&v20, &v17);
    sub_24B7BDEB8(v17, v18, v19);
    sub_24B7BDEB8(v20, v21, v22);
  }

  else
  {
    return 0;
  }

  return v13;
}

unint64_t sub_24B7BE8B8()
{
  result = qword_27F0594D8;
  if (!qword_27F0594D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594D8);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24B7BE934(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[49])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24B7BE978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicPredicateComparisonDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicPredicateComparisonDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B7BEB44()
{
  result = qword_27F0594E0;
  if (!qword_27F0594E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594E0);
  }

  return result;
}

unint64_t sub_24B7BEB9C()
{
  result = qword_27F0594E8;
  if (!qword_27F0594E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594E8);
  }

  return result;
}

unint64_t sub_24B7BEBF4()
{
  result = qword_27F0594F0;
  if (!qword_27F0594F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0594F0);
  }

  return result;
}

uint64_t sub_24B7BEC48()
{
  sub_24B7BA888(v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24B7BECBC(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B7BED0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_24B7BED60(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24B7BEDC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B7DB088() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_24B7DB088();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24B7BEEC8(char a1)
{
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](a1 & 1);
  return sub_24B7DB128();
}

uint64_t sub_24B7BEF10(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_24B7BEF98(uint64_t a1)
{
  sub_24B7DB0F8();
  sub_24B7BEEA0(v3, *v1);
  return sub_24B7DB128();
}

uint64_t sub_24B7BEFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B7BEDC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B7BF028@<X0>(_BYTE *a2@<X8>)
{
  result = sub_24B7BFFF8();
  *a2 = result;
  return result;
}

uint64_t sub_24B7BF064(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B7BF0B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Result<>.ResultCodableError.hashValue.getter()
{
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](0);
  return sub_24B7DB128();
}

uint64_t sub_24B7BF188()
{
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](0);
  return sub_24B7DB128();
}

uint64_t sub_24B7BF1CC(uint64_t a1)
{
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](0);
  return sub_24B7DB128();
}

uint64_t Result<>.encode(to:)(void *a1, uint64_t a2)
{
  v40 = *(*(a2 + 24) - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(*(v6 + 16) - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 32);
  v37 = v15;
  v38 = v16;
  v45[0] = v16;
  v45[1] = v17;
  v41 = v17;
  v45[2] = v18;
  v45[3] = v19;
  v35 = v19;
  v45[4] = v20;
  v45[5] = v15;
  v45[6] = v14;
  _s10CodingKeysOMa(255, v45);
  swift_getWitnessTable();
  v21 = sub_24B7DB058();
  v43 = *(v21 - 8);
  v44 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v33 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7DB158();
  (*(v10 + 16))(v12, v42, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v39;
    v24 = v40;
    v26 = v41;
    (*(v40 + 32))(v39, v12, v41);
    v46 = 1;
    v27 = v44;
    sub_24B7DAFF8();
    sub_24B7DAA18();
    __swift_destroy_boxed_opaque_existential_1(v45);
    (*(v24 + 8))(v25, v26);
    return (*(v43 + 8))(v23, v27);
  }

  else
  {
    v29 = v36;
    v30 = v34;
    v31 = v38;
    (*(v36 + 32))(v34, v12, v38);
    v46 = 0;
    v32 = v44;
    sub_24B7DAFF8();
    sub_24B7DAA18();
    __swift_destroy_boxed_opaque_existential_1(v45);
    (*(v29 + 8))(v30, v31);
    return (*(v43 + 8))(v23, v32);
  }
}

uint64_t Result<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v48 = a5;
  v37 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v9);
  v47 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[0] = v13;
  v53[1] = v14;
  v45 = v15;
  v53[2] = v15;
  v53[3] = v16;
  v41 = v16;
  v44 = v17;
  v53[4] = v17;
  v53[5] = v18;
  v42 = v18;
  v53[6] = v19;
  _s10CodingKeysOMa(255, v53);
  swift_getWitnessTable();
  v46 = sub_24B7DAFD8();
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v21 = &v34 - v20;
  v49 = a3;
  v43 = a4;
  v22 = sub_24B7DB138();
  v39 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = v51;
  sub_24B7DB148();
  if (v25)
  {
    v33 = a1;
  }

  else
  {
    v26 = v47;
    v35 = v24;
    v36 = v22;
    v27 = v48;
    v51 = a1;
    v54 = 0;
    v28 = v46;
    sub_24B7DAF68();
    sub_24B7BFC98(&v52, v53);
    sub_24B7BFCB0(v53, &v52);
    v29 = v26;
    sub_24B7DADA8();
    __swift_destroy_boxed_opaque_existential_1(v53);
    (*(v50 + 8))(v21, v28);
    v31 = v35;
    (*(v38 + 32))(v35, v29, a2);
    v32 = v36;
    swift_storeEnumTagMultiPayload();
    (*(v39 + 32))(v27, v31, v32);
    v33 = v51;
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_24B7BFC18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F059508, &qword_24B7DBAA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B7BFC98(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24B7BFCB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for DynamicPredicateBooleanValue.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DynamicPredicateBooleanValue.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DynamicPredicateComparableKeyPath(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicPredicateComparableKeyPath(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t DynamicPredicateComparableValue.Stripped.hashValue.getter()
{
  v1 = *v0;
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](v1);
  return sub_24B7DB128();
}

void DynamicPredicateComparableValue.strippedCase.getter(_BYTE *a1@<X8>)
{
  v2 = v1[16];
  if (v2 >= 3)
  {
    if (v2 == 3)
    {
      *a1 = *v1 & 1;
    }

    else
    {
      *a1 = 3;
    }
  }

  else
  {
    *a1 = v2;
  }
}

uint64_t sub_24B7C00C0()
{
  v1 = *v0;
  v2 = 0x5463696D616E7964;
  v3 = 0x72656765746E69;
  v4 = 0x6874615079656BLL;
  if (v1 != 3)
  {
    v4 = 0x676E69727473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657A695364697267;
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

uint64_t sub_24B7C0170@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B7C2918(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B7C01A4(uint64_t a1)
{
  v2 = sub_24B7C0B34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C01E0(uint64_t a1)
{
  v2 = sub_24B7C0B34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7C0228(uint64_t a1)
{
  v2 = sub_24B7C0D2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C0264(uint64_t a1)
{
  v2 = sub_24B7C0D2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7C02A0(uint64_t a1)
{
  v2 = sub_24B7C0CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C02DC(uint64_t a1)
{
  v2 = sub_24B7C0CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7C0318(uint64_t a1)
{
  v2 = sub_24B7C0C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C0354(uint64_t a1)
{
  v2 = sub_24B7C0C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7C0390(uint64_t a1)
{
  v2 = sub_24B7C0BDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C03CC(uint64_t a1)
{
  v2 = sub_24B7C0BDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7C0408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B7DB088();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B7C0488(uint64_t a1)
{
  v2 = sub_24B7C0B88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C04C4(uint64_t a1)
{
  v2 = sub_24B7C0B88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicPredicateComparableValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059590, &qword_24B7DBD70);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059598, &qword_24B7DBD78);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0595A0, &qword_24B7DBD80);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = v31 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0595A8, &qword_24B7DBD88);
  v32 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0595B0, &qword_24B7DBD90);
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0595B8, &qword_24B7DBD98);
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v31 - v15;
  v17 = v1[1];
  v44 = *v1;
  v31[1] = v17;
  v18 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7C0B34();
  v19 = v16;
  sub_24B7DB158();
  if (v18 <= 1)
  {
    v25 = v10;
    v27 = v42;
    v26 = v43;
    if (v18)
    {
      v49 = 1;
      sub_24B7C0CD8();
      v30 = v46;
      sub_24B7DAFE8();
      sub_24B7DB028();
      (*(v32 + 8))(v25, v26);
      return (*(v45 + 8))(v19, v30);
    }

    v28 = v11;
    v48 = 0;
    sub_24B7C0D2C();
    v21 = v46;
    v22 = v19;
    sub_24B7DAFE8();
    v47 = v44;
    sub_24B7C0D80();
    sub_24B7DB048();
    (*(v27 + 8))(v13, v28);
  }

  else
  {
    if (v18 == 2)
    {
      v50 = 2;
      sub_24B7C0C84();
      v20 = v33;
      v21 = v46;
      v22 = v19;
      sub_24B7DAFE8();
      v23 = v35;
      sub_24B7DB028();
      v24 = v34;
    }

    else if (v18 == 3)
    {
      v52 = 3;
      sub_24B7C0BDC();
      v20 = v36;
      v21 = v46;
      v22 = v19;
      sub_24B7DAFE8();
      v51 = v44 & 1;
      sub_24B7C0C30();
      v23 = v38;
      sub_24B7DB048();
      v24 = v37;
    }

    else
    {
      v53 = 4;
      sub_24B7C0B88();
      v20 = v39;
      v21 = v46;
      v22 = v19;
      sub_24B7DAFE8();
      v23 = v41;
      sub_24B7DB008();
      v24 = v40;
    }

    (*(v24 + 8))(v20, v23);
  }

  return (*(v45 + 8))(v22, v21);
}

unint64_t sub_24B7C0B34()
{
  result = qword_27F0595C0;
  if (!qword_27F0595C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595C0);
  }

  return result;
}

unint64_t sub_24B7C0B88()
{
  result = qword_27F0595C8;
  if (!qword_27F0595C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595C8);
  }

  return result;
}

unint64_t sub_24B7C0BDC()
{
  result = qword_27F0595D0;
  if (!qword_27F0595D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595D0);
  }

  return result;
}

unint64_t sub_24B7C0C30()
{
  result = qword_27F0595D8;
  if (!qword_27F0595D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595D8);
  }

  return result;
}

unint64_t sub_24B7C0C84()
{
  result = qword_27F0595E0;
  if (!qword_27F0595E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595E0);
  }

  return result;
}

unint64_t sub_24B7C0CD8()
{
  result = qword_27F0595E8;
  if (!qword_27F0595E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595E8);
  }

  return result;
}

unint64_t sub_24B7C0D2C()
{
  result = qword_27F0595F0;
  if (!qword_27F0595F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595F0);
  }

  return result;
}

unint64_t sub_24B7C0D80()
{
  result = qword_27F0595F8;
  if (!qword_27F0595F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0595F8);
  }

  return result;
}

uint64_t DynamicPredicateComparableValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059600, &qword_24B7DBDA0);
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v65 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059608, &qword_24B7DBDA8);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059610, &qword_24B7DBDB0);
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  MEMORY[0x28223BE20](v6);
  v66 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059618, &qword_24B7DBDB8);
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059620, &qword_24B7DBDC0);
  v56 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059628, &qword_24B7DBDC8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  v19 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24B7C0B34();
  v20 = v69;
  sub_24B7DB148();
  if (!v20)
  {
    v54 = v12;
    v55 = v18;
    v22 = v66;
    v21 = v67;
    v69 = v16;
    v23 = v68;
    v24 = sub_24B7DAFC8();
    v25 = *(v24 + 16);
    if (v25)
    {
      LODWORD(v26) = *(v24 + 32);
      v27 = v25 != 1 || v26 == 5;
      if (!v27)
      {
        if (*(v24 + 32) <= 1u)
        {
          v66 = v24;
          if (v26)
          {
            v73 = 1;
            sub_24B7C0CD8();
            v44 = v11;
            v45 = v55;
            sub_24B7DAF48();
            v49 = v58;
            v50 = sub_24B7DAF98();
            (*(v57 + 8))(v44, v49);
            (*(v69 + 8))(v45, v15);
            swift_unknownObjectRelease();
            v52 = 0;
          }

          else
          {
            v72 = 0;
            sub_24B7C0D2C();
            v37 = v14;
            v38 = v55;
            sub_24B7DAF48();
            sub_24B7C181C();
            v48 = v54;
            sub_24B7DAFB8();
            (*(v56 + 8))(v37, v48);
            (*(v69 + 8))(v38, v15);
            swift_unknownObjectRelease();
            v52 = 0;
            v50 = v71;
          }

          goto LABEL_20;
        }

        if (v26 == 2)
        {
          v74 = 2;
          sub_24B7C0C84();
          v39 = v22;
          v40 = v55;
          sub_24B7DAF48();
          v41 = v69;
          v42 = v59;
          v50 = sub_24B7DAF98();
          (*(v60 + 8))(v39, v42);
          (*(v41 + 8))(v40, v15);
          swift_unknownObjectRelease();
          v52 = 0;
        }

        else
        {
          v66 = v24;
          LODWORD(v60) = v26;
          v27 = v26 == 3;
          v26 = v69;
          v34 = v55;
          if (v27)
          {
            v76 = 3;
            sub_24B7C0BDC();
            sub_24B7DAF48();
            v35 = v23;
            sub_24B7C17C8();
            v36 = v63;
            sub_24B7DAFB8();
            (*(v62 + 8))(v21, v36);
            (*(v26 + 8))(v34, v15);
            swift_unknownObjectRelease();
            v52 = 0;
            v50 = v75;
            LOBYTE(v26) = v60;
            v23 = v35;
LABEL_20:
            *v23 = v50;
            *(v23 + 8) = v52;
            *(v23 + 16) = v26;
            return __swift_destroy_boxed_opaque_existential_1(v70);
          }

          v77 = 4;
          sub_24B7C0B88();
          v43 = v65;
          sub_24B7DAF48();
          v46 = v15;
          v47 = v61;
          v50 = sub_24B7DAF78();
          v52 = v51;
          (*(v64 + 8))(v43, v47);
          (*(v26 + 8))(v34, v46);
          swift_unknownObjectRelease();
          LOBYTE(v26) = v60;
        }

        v23 = v68;
        goto LABEL_20;
      }
    }

    v28 = v15;
    v29 = sub_24B7DAEE8();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059630, &qword_24B7DBDD0);
    *v31 = &type metadata for DynamicPredicateComparableValue;
    v32 = v55;
    sub_24B7DAF58();
    sub_24B7DAED8();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
    swift_willThrow();
    (*(v69 + 8))(v32, v28);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v70);
}

uint64_t sub_24B7C1760()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B7C1794()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24B7C17C8()
{
  result = qword_27F059638;
  if (!qword_27F059638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059638);
  }

  return result;
}

unint64_t sub_24B7C181C()
{
  result = qword_27F059640;
  if (!qword_27F059640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059640);
  }

  return result;
}

uint64_t DynamicPredicateComparableValue.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 <= 1)
  {
    if (!*(v1 + 16))
    {
      MEMORY[0x24C24AAF0](0);
      v5 = v2 + 1;
      return MEMORY[0x24C24AAF0](v5);
    }

    v6 = 1;
LABEL_14:
    MEMORY[0x24C24AAF0](v6);
    v5 = v2;
    return MEMORY[0x24C24AAF0](v5);
  }

  if (v3 == 2)
  {
    v6 = 2;
    goto LABEL_14;
  }

  if (v3 == 3)
  {
    MEMORY[0x24C24AAF0](3);
    sub_24B7DAAE8();
  }

  else
  {
    MEMORY[0x24C24AAF0](4);

    return sub_24B7DAAE8();
  }
}

uint64_t DynamicPredicateComparableValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_24B7DB0F8();
  if (v2 <= 1)
  {
    if (!v2)
    {
      MEMORY[0x24C24AAF0](0);
      v3 = v1 + 1;
LABEL_11:
      MEMORY[0x24C24AAF0](v3);
      return sub_24B7DB128();
    }

    v4 = 1;
LABEL_10:
    MEMORY[0x24C24AAF0](v4);
    v3 = v1;
    goto LABEL_11;
  }

  if (v2 == 2)
  {
    v4 = 2;
    goto LABEL_10;
  }

  if (v2 == 3)
  {
    MEMORY[0x24C24AAF0](3);
    sub_24B7DAAE8();
  }

  else
  {
    MEMORY[0x24C24AAF0](4);
    sub_24B7DAAE8();
  }

  return sub_24B7DB128();
}

uint64_t sub_24B7C1B10()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_24B7DB0F8();
  DynamicPredicateComparableValue.hash(into:)(v3);
  return sub_24B7DB128();
}

uint64_t sub_24B7C1B68(uint64_t a1)
{
  sub_24B7DB0F8();
  DynamicPredicateComparableValue.hash(into:)(v2);
  return sub_24B7DB128();
}

BOOL _s16FitnessUtilities31DynamicPredicateComparableValueO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        sub_24B7BDEB8(*a1, v3, 0);
        sub_24B7BDEB8(v5, v6, 0);
        return v5 == v2;
      }

      goto LABEL_35;
    }

    if (v7 != 1)
    {
LABEL_35:
      sub_24B7BD918(v5, v6, v7);
      sub_24B7BDEB8(v2, v3, v4);
      sub_24B7BDEB8(v5, v6, v7);
      return 0;
    }

    sub_24B7BDEB8(*a1, v3, 1);
    v15 = v5;
    v16 = v6;
    v17 = 1;
LABEL_33:
    sub_24B7BDEB8(v15, v16, v17);
    return v2 == v5;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
      goto LABEL_35;
    }

    sub_24B7BDEB8(*a1, v3, 2);
    v15 = v5;
    v16 = v6;
    v17 = 2;
    goto LABEL_33;
  }

  if (v4 == 3)
  {
    if (v7 == 3)
    {
      if (v2)
      {
        v8 = 0x657A695364697267;
      }

      else
      {
        v8 = 0x5463696D616E7964;
      }

      if (v2)
      {
        v9 = 0xED00007373616C43;
      }

      else
      {
        v9 = 0xEF657A6953657079;
      }

      if (v5)
      {
        v10 = 0x657A695364697267;
      }

      else
      {
        v10 = 0x5463696D616E7964;
      }

      if (v5)
      {
        v11 = 0xED00007373616C43;
      }

      else
      {
        v11 = 0xEF657A6953657079;
      }

      if (v8 != v10 || v9 != v11)
      {
        v13 = sub_24B7DB088();

        sub_24B7BDEB8(v2, v3, 3);
        sub_24B7BDEB8(v5, v6, 3);
        return v13 & 1;
      }

      sub_24B7BDEB8(v2, v3, 3);
      v18 = v5;
      v19 = v6;
      v20 = 3;
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v7 != 4)
  {

    goto LABEL_35;
  }

  if (v2 != v5 || v3 != v6)
  {
    v21 = sub_24B7DB088();
    sub_24B7BD918(v5, v6, 4);
    sub_24B7BD918(v2, v3, 4);
    sub_24B7BDEB8(v2, v3, 4);
    sub_24B7BDEB8(v5, v6, 4);
    return v21 & 1;
  }

  sub_24B7BD918(*a1, v3, 4);
  sub_24B7BD918(v2, v3, 4);
  sub_24B7BDEB8(v2, v3, 4);
  v18 = v2;
  v19 = v3;
  v20 = 4;
LABEL_38:
  sub_24B7BDEB8(v18, v19, v20);
  return 1;
}

unint64_t sub_24B7C1E84()
{
  result = qword_27F059648;
  if (!qword_27F059648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059648);
  }

  return result;
}

unint64_t sub_24B7C1EDC()
{
  result = qword_27F059650;
  if (!qword_27F059650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059650);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B7C1F44(uint64_t a1, unsigned int a2)
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
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B7C1F80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
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

uint64_t sub_24B7C1FC8(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DynamicPredicateComparisonOperator(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicPredicateComparisonOperator(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DynamicPredicateComparableValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicPredicateComparableValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B7C22EC()
{
  result = qword_27F059658;
  if (!qword_27F059658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059658);
  }

  return result;
}

unint64_t sub_24B7C2344()
{
  result = qword_27F059660;
  if (!qword_27F059660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059660);
  }

  return result;
}

unint64_t sub_24B7C239C()
{
  result = qword_27F059668;
  if (!qword_27F059668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059668);
  }

  return result;
}

unint64_t sub_24B7C23F4()
{
  result = qword_27F059670;
  if (!qword_27F059670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059670);
  }

  return result;
}

unint64_t sub_24B7C244C()
{
  result = qword_27F059678;
  if (!qword_27F059678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059678);
  }

  return result;
}

unint64_t sub_24B7C24A4()
{
  result = qword_27F059680;
  if (!qword_27F059680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059680);
  }

  return result;
}

unint64_t sub_24B7C24FC()
{
  result = qword_27F059688;
  if (!qword_27F059688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059688);
  }

  return result;
}

unint64_t sub_24B7C2554()
{
  result = qword_27F059690;
  if (!qword_27F059690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059690);
  }

  return result;
}

unint64_t sub_24B7C25AC()
{
  result = qword_27F059698;
  if (!qword_27F059698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059698);
  }

  return result;
}

unint64_t sub_24B7C2604()
{
  result = qword_27F0596A0;
  if (!qword_27F0596A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596A0);
  }

  return result;
}

unint64_t sub_24B7C265C()
{
  result = qword_27F0596A8;
  if (!qword_27F0596A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596A8);
  }

  return result;
}

unint64_t sub_24B7C26B4()
{
  result = qword_27F0596B0;
  if (!qword_27F0596B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596B0);
  }

  return result;
}

unint64_t sub_24B7C270C()
{
  result = qword_27F0596B8;
  if (!qword_27F0596B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596B8);
  }

  return result;
}

unint64_t sub_24B7C2764()
{
  result = qword_27F0596C0;
  if (!qword_27F0596C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596C0);
  }

  return result;
}

unint64_t sub_24B7C27BC()
{
  result = qword_27F0596C8;
  if (!qword_27F0596C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596C8);
  }

  return result;
}

unint64_t sub_24B7C2814()
{
  result = qword_27F0596D0;
  if (!qword_27F0596D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596D0);
  }

  return result;
}

unint64_t sub_24B7C286C()
{
  result = qword_27F0596D8;
  if (!qword_27F0596D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596D8);
  }

  return result;
}

unint64_t sub_24B7C28C4()
{
  result = qword_27F0596E0;
  if (!qword_27F0596E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596E0);
  }

  return result;
}

uint64_t sub_24B7C2918(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079;
  if (v4 || (sub_24B7DB088() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A695364697267 && a2 == 0xED00007373616C43 || (sub_24B7DB088() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656765746E69 && a2 == 0xE700000000000000 || (sub_24B7DB088() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6874615079656BLL && a2 == 0xE700000000000000 || (sub_24B7DB088() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B7DB088();

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

uint64_t sub_24B7C2B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B7DB088();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B7C2BB0(uint64_t a1)
{
  v2 = sub_24B7C2D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C2BEC(uint64_t a1)
{
  v2 = sub_24B7C2D60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicPredicateBooleanValue.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0596E8, &qword_24B7DC6C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7C2D60();
  sub_24B7DB158();
  sub_24B7DB018();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24B7C2D60()
{
  result = qword_27F0596F0;
  if (!qword_27F0596F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0596F0);
  }

  return result;
}

uint64_t DynamicPredicateBooleanValue.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0596F8, &qword_24B7DC6C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7C2D60();
  sub_24B7DB148();
  if (!v2)
  {
    v9 = sub_24B7DAF88();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B7C2F24(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0596E8, &qword_24B7DC6C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7C2D60();
  sub_24B7DB158();
  sub_24B7DB018();
  return (*(v3 + 8))(v5, v2);
}

uint64_t DynamicPredicateBooleanValue.hashValue.getter()
{
  sub_24B7DB0F8();
  sub_24B7DB118();
  return sub_24B7DB128();
}

uint64_t sub_24B7C30E8()
{
  sub_24B7DB0F8();
  sub_24B7DB118();
  return sub_24B7DB128();
}

uint64_t sub_24B7C315C(uint64_t a1)
{
  sub_24B7DB0F8();
  sub_24B7DB118();
  return sub_24B7DB128();
}

unint64_t sub_24B7C31A4()
{
  result = qword_27F059700;
  if (!qword_27F059700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059700);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicPredicateBooleanValue(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24B7C32D4()
{
  result = qword_27F059708;
  if (!qword_27F059708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059708);
  }

  return result;
}

unint64_t sub_24B7C332C()
{
  result = qword_27F059710;
  if (!qword_27F059710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059710);
  }

  return result;
}

unint64_t sub_24B7C3384()
{
  result = qword_27F059718;
  if (!qword_27F059718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059718);
  }

  return result;
}

uint64_t DynamicPredicateEqualityDescriptor.lhs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_24B7C33EC(v2, v3, v4);
}

uint64_t sub_24B7C33EC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u && ((1 << a3) & 0xC4) != 0)
  {
  }

  return result;
}

uint64_t DynamicPredicateEqualityDescriptor.rhs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_24B7C33EC(v2, v3, v4);
}

__n128 DynamicPredicateEqualityDescriptor.init(lhs:rhs:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = a2[1].n128_u8[0];
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *a2;
  *(a3 + 24) = *a2;
  *(a3 + 40) = v4;
  return result;
}

uint64_t sub_24B7C3450()
{
  if (*v0)
  {
    return 7563378;
  }

  else
  {
    return 7563372;
  }
}

uint64_t sub_24B7C3470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v5 || (sub_24B7DB088() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7563378 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B7DB088();

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

uint64_t sub_24B7C354C(uint64_t a1)
{
  v2 = sub_24B7C37AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7C3588(uint64_t a1)
{
  v2 = sub_24B7C37AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicPredicateEqualityDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059720, &qword_24B7DC8E0);
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  v7 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 24);
  v13 = *(v1 + 32);
  v14 = v8;
  v20 = *(v1 + 40);
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7C33EC(v7, v6, v9);
  sub_24B7C37AC();
  sub_24B7DB158();
  v17 = v7;
  v18 = v6;
  v19 = v9;
  v21 = 0;
  sub_24B7C3800();
  v10 = v15;
  sub_24B7DB048();
  sub_24B7C3854(v17, v18, v19);
  if (!v10)
  {
    v17 = v14;
    v18 = v13;
    v19 = v20;
    v21 = 1;
    sub_24B7C33EC(v14, v13, v20);
    sub_24B7DB048();
    sub_24B7C3854(v17, v18, v19);
  }

  return (*(v16 + 8))(v5, v3);
}

unint64_t sub_24B7C37AC()
{
  result = qword_27F059728;
  if (!qword_27F059728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059728);
  }

  return result;
}

unint64_t sub_24B7C3800()
{
  result = qword_27F059730;
  if (!qword_27F059730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059730);
  }

  return result;
}

uint64_t sub_24B7C3854(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u && ((1 << a3) & 0xC4) != 0)
  {
  }

  return result;
}

uint64_t DynamicPredicateEqualityDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059738, &qword_24B7DC8E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7C37AC();
  sub_24B7DB148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_24B7C3AD8();
  sub_24B7DAFB8();
  v9 = v17;
  v16 = v18;
  v20 = v19;
  v21 = 1;
  sub_24B7DAFB8();
  (*(v6 + 8))(v8, v5);
  v10 = v17;
  v11 = v18;
  v12 = v19;
  v13 = v16;
  *a2 = v9;
  *(a2 + 8) = v13;
  v14 = v20;
  *(a2 + 16) = v20;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  sub_24B7C33EC(v9, v13, v14);
  sub_24B7C33EC(v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_24B7C3854(v9, v13, v14);
  return sub_24B7C3854(v10, v11, v12);
}

unint64_t sub_24B7C3AD8()
{
  result = qword_27F059740;
  if (!qword_27F059740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059740);
  }

  return result;
}

uint64_t DynamicPredicateEqualityDescriptor.hashValue.getter()
{
  sub_24B7DB0F8();
  DynamicPredicateEquatableValue.hash(into:)(v1);
  DynamicPredicateEquatableValue.hash(into:)(v1);
  return sub_24B7DB128();
}

uint64_t sub_24B7C3C54()
{
  sub_24B7DB0F8();
  DynamicPredicateEquatableValue.hash(into:)(v1);
  DynamicPredicateEquatableValue.hash(into:)(v1);
  return sub_24B7DB128();
}

uint64_t sub_24B7C3D48(uint64_t a1)
{
  sub_24B7DB0F8();
  DynamicPredicateEquatableValue.hash(into:)(v2);
  DynamicPredicateEquatableValue.hash(into:)(v2);
  return sub_24B7DB128();
}

BOOL _s16FitnessUtilities34DynamicPredicateEqualityDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  v18 = *a1;
  v19 = v2;
  v20 = v11;
  v15 = v6;
  v16 = v7;
  v17 = v12;
  sub_24B7C33EC(v18, v2, v11);
  sub_24B7C33EC(v6, v7, v12);
  LOBYTE(v6) = _s16FitnessUtilities30DynamicPredicateEquatableValueO2eeoiySbAC_ACtFZ_0(&v18, &v15);
  sub_24B7C3854(v15, v16, v17);
  sub_24B7C3854(v18, v19, v20);
  if (v6)
  {
    v18 = v3;
    v19 = v4;
    v20 = v5;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    sub_24B7C33EC(v3, v4, v5);
    sub_24B7C33EC(v8, v9, v10);
    v13 = _s16FitnessUtilities30DynamicPredicateEquatableValueO2eeoiySbAC_ACtFZ_0(&v18, &v15);
    sub_24B7C3854(v15, v16, v17);
    sub_24B7C3854(v18, v19, v20);
  }

  else
  {
    return 0;
  }

  return v13;
}

unint64_t sub_24B7C3EF4()
{
  result = qword_27F059748;
  if (!qword_27F059748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059748);
  }

  return result;
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

uint64_t sub_24B7C3F68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 41))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B7C3FB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_24B7C4024()
{
  result = qword_27F059750;
  if (!qword_27F059750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059750);
  }

  return result;
}

unint64_t sub_24B7C407C()
{
  result = qword_27F059758;
  if (!qword_27F059758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059758);
  }

  return result;
}

unint64_t sub_24B7C40D4()
{
  result = qword_27F059760;
  if (!qword_27F059760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059760);
  }

  return result;
}

FitnessUtilities::DynamicPredicateComparableKeyPath_optional __swiftcall DynamicPredicateComparableKeyPath.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24B7DAF38();

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

uint64_t DynamicPredicateComparableKeyPath.rawValue.getter()
{
  if (*v0)
  {
    return 0x657A695364697267;
  }

  else
  {
    return 0x5463696D616E7964;
  }
}

uint64_t sub_24B7C41E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657A695364697267;
  }

  else
  {
    v3 = 0x5463696D616E7964;
  }

  if (v2)
  {
    v4 = 0xEF657A6953657079;
  }

  else
  {
    v4 = 0xED00007373616C43;
  }

  if (*a2)
  {
    v5 = 0x657A695364697267;
  }

  else
  {
    v5 = 0x5463696D616E7964;
  }

  if (*a2)
  {
    v6 = 0xED00007373616C43;
  }

  else
  {
    v6 = 0xEF657A6953657079;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B7DB088();
  }

  return v8 & 1;
}

uint64_t sub_24B7C42A0@<X0>(char *a2@<X8>)
{
  v3 = sub_24B7DAF38();

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

void sub_24B7C4300(uint64_t *a1@<X8>)
{
  v2 = 0x5463696D616E7964;
  if (*v1)
  {
    v2 = 0x657A695364697267;
  }

  v3 = 0xEF657A6953657079;
  if (*v1)
  {
    v3 = 0xED00007373616C43;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_24B7C440C()
{
  result = qword_27F059768;
  if (!qword_27F059768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059768);
  }

  return result;
}

uint64_t sub_24B7C4460()
{
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

uint64_t sub_24B7C44FC(uint64_t a1)
{
  sub_24B7DAAE8();
}

uint64_t sub_24B7C4584(uint64_t a1)
{
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

unint64_t sub_24B7C462C()
{
  result = qword_27F059770[0];
  if (!qword_27F059770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F059770);
  }

  return result;
}

uint64_t sub_24B7C469C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24B7BB190;

  return Streamable.makeStream(bufferingPolicy:)(a1, a2, a3, a4);
}

uint64_t Streamable.makeStream(bufferingPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = swift_getAssociatedTypeWitness();
  v6 = sub_24B7DACD8();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_24B7DA9C8();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v9 = sub_24B7DAC58();

  return MEMORY[0x2822009F8](sub_24B7C48C4, v9, v8);
}

uint64_t sub_24B7C48C4(uint64_t a1)
{
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  v4 = *(v1 + 80);
  v14 = *(v1 + 88);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 48);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v13 = *(v1 + 32);
  sub_24B7DA9B8();
  (*(v6 + 16))(v4, v8, v5);
  v10 = swift_task_alloc();
  *(v10 + 16) = v13;
  *(v10 + 32) = v7;
  *(v10 + 40) = v2;
  swift_checkMetadataState();
  v9[3] = sub_24B7DAD58();
  v9[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_24B7DAD68();

  (*(v3 + 8))(v2, v14);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_24B7C4A78(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = sub_24B7DAD18();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_24B7C4B0C(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - v5;
  v7 = sub_24B7DACB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  (*(v4 + 16))(v6, a1, v3);
  sub_24B7DAD18();
  sub_24B7DACF8();
  return (*(v8 + 8))(v10, v7);
}

char *sub_24B7C4CB0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24B7DAD18();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v2 + 88);
  (*(v4 + 16))(&v10 - v5, &v1[v7], v3);
  sub_24B7DAD08();
  v8 = *(v4 + 8);
  v8(v6, v3);
  v8(&v1[v7], v3);
  return v1;
}

uint64_t sub_24B7C4DE0()
{
  sub_24B7C4CB0();

  return MEMORY[0x2821FE8D8]();
}

uint64_t Streamable.publish(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(a2, a3);
  sub_24B7DA9C8();
  swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  sub_24B7BAC3C();
  sub_24B7DA9F8();
  swift_getWitnessTable();
  sub_24B7DAB48();
}

uint64_t sub_24B7C4F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24B7DA9C8();
  swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  v6 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  return (*(v8 + 16))(a2, v7, v8);
}

uint64_t sub_24B7C5068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_24B7DAD18();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = sub_24B7DA9C8();
  MEMORY[0x28223BE20](v12);
  (*(v14 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
  v17 = type metadata accessor for StreamContinuation(0, AssociatedTypeWitness, v15, v16);
  (*(v9 + 16))(v11, a1, v8);
  v18 = swift_allocObject();
  v19 = *(*v18 + 88);
  v20 = sub_24B7DAD18();
  (*(*(v20 - 8) + 32))(v18 + v19, v11, v20);
  v28 = v17;
  WitnessTable = swift_getWitnessTable();
  v27 = v18;
  v21 = (*(a4 + 40))(v26, v24, a4);
  v25 = AssociatedTypeWitness;
  swift_getExtendedExistentialTypeMetadata();
  sub_24B7BAC3C();
  sub_24B7DA9F8();
  sub_24B7DAA08();
  return v21(v26, 0);
}

uint64_t sub_24B7C5344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B7DA9C8();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v9 = (*(a3 + 40))(v12, a2, a3);
  v11[1] = swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  sub_24B7BAC3C();
  sub_24B7DA9F8();
  sub_24B7DAA08();
  return v9(v12, 0);
}

uint64_t sub_24B7C54D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v9 = sub_24B7DA9C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_24B7DAC58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B7C5068(v16, a3, a4, a5);
  (*(v10 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  v12 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a4;
  *(v13 + 3) = a5;
  *(v13 + 4) = a2;
  (*(v10 + 32))(&v13[v12], &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  swift_getAssociatedTypeWitness();
  sub_24B7DAD18();
  swift_unknownObjectRetain();
  return sub_24B7DACC8();
}

uint64_t sub_24B7C56CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24B7DA9C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_24B7DACA8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v10 + 16))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  v16 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  *(v17 + 6) = a2;
  (*(v10 + 32))(&v17[v16], &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  swift_unknownObjectRetain();
  sub_24B7C7B14(0, 0, v14, &unk_24B7DCEB0, v17);
}

uint64_t sub_24B7C58C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = sub_24B7DAC58();

  return MEMORY[0x2822009F8](sub_24B7C5940, v9, v8);
}

uint64_t sub_24B7C5940()
{
  sub_24B7C5344(v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t dispatch thunk of Streamable.makeStream(bufferingPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24B7BB190;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_24B7C5BAC(uint64_t a1)
{
  result = sub_24B7DAD18();
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

uint64_t sub_24B7C5C58(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_24B7DA9C8() - 8);
  v6 = v1[4];
  v7 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_24B7C56CC(a1, v6, v7, v3, v4);
}

uint64_t sub_24B7C5CE0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_24B7DA9C8() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24B7BB094;

  return sub_24B7C58C0(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_24B7C5DEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x657A695364697267;
    }

    else
    {
      v3 = 0x5463696D616E7964;
    }

    if (v2)
    {
      v4 = 0xED00007373616C43;
    }

    else
    {
      v4 = 0xEF657A6953657079;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000024B7DF850;
    v3 = 0xD000000000000013;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6D726F6674616C70;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 3)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0x800000024B7DF870;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x657A695364697267;
    }

    else
    {
      v9 = 0x5463696D616E7964;
    }

    if (a2)
    {
      v8 = 0xED00007373616C43;
    }

    else
    {
      v8 = 0xEF657A6953657079;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x6D726F6674616C70;
    v6 = 0x800000024B7DF870;
    if (a2 == 3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x800000024B7DF850;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_24B7DB088();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_24B7C5FA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E6F6870;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 30324;
    }

    else
    {
      v4 = 0x6863746177;
    }

    if (v3 == 2)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x74656C626174;
    }

    else
    {
      v4 = 0x656E6F6870;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE200000000000000;
  v8 = 30324;
  if (a2 != 2)
  {
    v8 = 0x6863746177;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x74656C626174;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24B7DB088();
  }

  return v11 & 1;
}

uint64_t sub_24B7C60C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 == 2)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0xEF6C61757145724FLL;
  }

  v4 = 0xD000000000000012;
  v5 = 0x800000024B7DF8A0;
  if (!a1)
  {
    v4 = 0x5472657461657267;
    v5 = 0xEB000000006E6168;
  }

  if (a1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E6168547373656CLL;
  }

  if (v2 <= 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v9 = 0xEF6C61757145724FLL;
    }

    if (v6 != 0x6E6168547373656CLL)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0x5472657461657267;
    }

    if (a2)
    {
      v9 = 0x800000024B7DF8A0;
    }

    else
    {
      v9 = 0xEB000000006E6168;
    }

    if (v6 != v8)
    {
      goto LABEL_27;
    }
  }

  if (v7 != v9)
  {
LABEL_27:
    v10 = sub_24B7DB088();
    goto LABEL_28;
  }

  v10 = 1;
LABEL_28:

  return v10 & 1;
}

FitnessUtilities::DynamicPredicateEquatableKeyPath_optional __swiftcall DynamicPredicateEquatableKeyPath.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24B7DAF38();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DynamicPredicateEquatableKeyPath.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x5463696D616E7964;
  v3 = 0xD000000000000013;
  v4 = 0x6D726F6674616C70;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657A695364697267;
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

void sub_24B7C6358(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF657A6953657079;
  v4 = 0x5463696D616E7964;
  v5 = 0x800000024B7DF850;
  v6 = 0xD000000000000013;
  v7 = 0xE800000000000000;
  v8 = 0x6D726F6674616C70;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000024B7DF870;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x657A695364697267;
    v3 = 0xED00007373616C43;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_24B7C64D0()
{
  result = qword_27F059800;
  if (!qword_27F059800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059800);
  }

  return result;
}

uint64_t sub_24B7C6524()
{
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

uint64_t sub_24B7C662C(uint64_t a1)
{
  sub_24B7DAAE8();
}

uint64_t sub_24B7C6720(uint64_t a1)
{
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

unint64_t sub_24B7C6834()
{
  result = qword_27F059808[0];
  if (!qword_27F059808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F059808);
  }

  return result;
}

id UnsafeCodableBox.base.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void UnsafeCodableBox.init(_:)(void *a1@<X0>, void *a3@<X8>)
{
  swift_getMetatypeMetadata();
  v5 = a1;
  v6 = sub_24B7DB188();
  v8 = v7;

  *a3 = a1;
  a3[1] = v6;
  a3[2] = v8;
  a3[3] = a1;
}

uint64_t sub_24B7C6918(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B7DAF38();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B7C696C(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x73736572646461;
  }
}

uint64_t sub_24B7C699C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24B7C6A10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_24B7C6A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24B7C6AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24B7C6B5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B7C6918(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_24B7C6B8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B7C696C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B7C6BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B7C6918(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B7C6BE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B7BFFF8();
  *a1 = result;
  return result;
}

uint64_t sub_24B7C6C14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B7C6C68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t UnsafeCodableBox.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v18 = a2;
  type metadata accessor for UnsafeCodableBox.CodingKeys(255, a3, a4, a5);
  swift_getWitnessTable();
  v7 = sub_24B7DAFD8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7DB148();
  if (!v5)
  {
    v11 = v18;
    v20 = 0;
    v12 = sub_24B7DAFA8();
    v19 = 1;
    v14 = sub_24B7DAF78();
    v16 = v15;
    (*(v8 + 8))(v10, v7);
    *v11 = 0;
    v11[1] = v14;
    v11[2] = v16;
    v11[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t UnsafeCodableBox.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UnsafeCodableBox.CodingKeys(255, *(a2 + 16), a3, a4);
  swift_getWitnessTable();
  v6 = sub_24B7DB058();
  v14 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  v9 = *(v4 + 8);
  v13[0] = *(v4 + 16);
  v13[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7DB158();
  v17 = 0;
  v10 = v15;
  sub_24B7DB038();
  if (v10)
  {
    return (*(v14 + 8))(v8, v6);
  }

  v12 = v14;
  v16 = 1;
  sub_24B7DB008();
  return (*(v12 + 8))(v8, v6);
}

id static UnsafeCodableBox.== infix(_:_:)(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (v4)
  {
    return [v4 isEqual_];
  }

  type metadata accessor for UnsafeCodableBox(0, a3, a3, a4);
  v6 = UnsafeCodableBox.hashValue.getter();
  return (v6 == UnsafeCodableBox.hashValue.getter());
}

uint64_t UnsafeCodableBox.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_24B7DB0F8();
  UnsafeCodableBox.hash(into:)(v4);
  return sub_24B7DB128();
}

void UnsafeCodableBox.hash(into:)(uint64_t a1)
{
  if (*v1)
  {
    v3 = *v1;
    sub_24B7DAE48();
  }

  else
  {
    v2 = *(v1 + 24);
    sub_24B7DAAE8();
    MEMORY[0x24C24AAF0](v2);
  }
}

uint64_t sub_24B7C7238(uint64_t a1)
{
  sub_24B7DB0F8();
  UnsafeCodableBox.hash(into:)(v2);
  return sub_24B7DB128();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24B7C72A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B7C72EC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t DynamicPredicateComparisonOperator.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x5472657461657267;
  if (a1)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6E6168547373656CLL;
  }
}

uint64_t sub_24B7C7420(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB000000006E6168;
  v3 = 0x5472657461657267;
  v4 = *a1;
  if (v4 == 2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEF6C61757145724FLL;
  }

  v6 = 0xD000000000000012;
  if (*a1)
  {
    v7 = 0x800000024B7DF8A0;
  }

  else
  {
    v6 = 0x5472657461657267;
    v7 = 0xEB000000006E6168;
  }

  if (*a1 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x6E6168547373656CLL;
  }

  if (v4 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE800000000000000;
  if (*a2 != 2)
  {
    v10 = 0xEF6C61757145724FLL;
  }

  if (*a2)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000024B7DF8A0;
  }

  if (*a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0x6E6168547373656CLL;
  }

  if (*a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v10;
  }

  if (v8 == v11 && v9 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_24B7DB088();
  }

  return v13 & 1;
}

unint64_t sub_24B7C7578@<X0>(Swift::String *a1@<X0>, FitnessUtilities::DynamicPredicateComparisonOperator_optional *a2@<X8>)
{
  result = _s16FitnessUtilities34DynamicPredicateComparisonOperatorO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_24B7C75A8(uint64_t *a1@<X8>)
{
  v2 = 0xEB000000006E6168;
  v3 = 0x5472657461657267;
  v4 = 0xE800000000000000;
  if (*v1 != 2)
  {
    v4 = 0xEF6C61757145724FLL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000024B7DF8A0;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E6168547373656CLL;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_24B7C76F0()
{
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

uint64_t sub_24B7C77CC(uint64_t a1)
{
  sub_24B7DAAE8();
}

uint64_t sub_24B7C7894(uint64_t a1)
{
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

unint64_t _s16FitnessUtilities34DynamicPredicateComparisonOperatorO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B7DAF38();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24B7C79BC()
{
  result = qword_27F059890;
  if (!qword_27F059890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059890);
  }

  return result;
}

unint64_t sub_24B7C7A20()
{
  result = qword_27F059898;
  if (!qword_27F059898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059898);
  }

  return result;
}

uint64_t NSBundle.isInternal.getter()
{
  v1 = [v0 bundleIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_24B7DAA98();
  }

  sub_24B7DAAC8();

  has_internal_content = os_variant_has_internal_content();

  return has_internal_content;
}

uint64_t sub_24B7C7B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24B7C9FB4(a3, v25 - v10);
  v12 = sub_24B7DACA8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24B7BB29C(v11);
  }

  else
  {
    sub_24B7DAC98();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24B7DAC58();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24B7DAAC8() + 32;
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

      sub_24B7BB29C(a3);

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

  sub_24B7BB29C(a3);
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

uint64_t CurrentValueAsyncStreamPublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  CurrentValueAsyncStreamPublisher.init()();
  return v0;
}

uint64_t CurrentValueAsyncStreamPublisher.init()()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = sub_24B7DAE58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  swift_defaultActor_initialize();
  v7 = *(*(v2 - 8) + 56);
  v7(v0 + *(*v0 + 96), 1, 1, v2);
  v8 = *(*v0 + 104);
  type metadata accessor for AsyncStreamPublisher(0, v2, v9, v10);
  *(v0 + v8) = AsyncStreamPublisher.__allocating_init()();
  v7(v6, 1, 1, v2);
  v11 = *(*v0 + 96);
  swift_beginAccess();
  (*(v4 + 40))(v1 + v11, v6, v3);
  swift_endAccess();
  return v1;
}

uint64_t CurrentValueAsyncStreamPublisher.__allocating_init(initialValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CurrentValueAsyncStreamPublisher.init(initialValue:)(a1);
  return v2;
}

uint64_t CurrentValueAsyncStreamPublisher.init(initialValue:)(uint64_t a1)
{
  v2 = v1;
  v15 = a1;
  v3 = *(*v1 + 80);
  v4 = sub_24B7DAE58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  swift_defaultActor_initialize();
  v8 = *(v3 - 8);
  v9 = *(v8 + 56);
  v9(v1 + *(*v1 + 96), 1, 1, v3);
  v10 = *(*v1 + 104);
  type metadata accessor for AsyncStreamPublisher(0, v3, v11, v12);
  *(v1 + v10) = AsyncStreamPublisher.__allocating_init()();
  (*(v8 + 32))(v7, v15, v3);
  v9(v7, 0, 1, v3);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  (*(v5 + 40))(v2 + v13, v7, v4);
  swift_endAccess();
  return v2;
}

uint64_t CurrentValueAsyncStreamPublisher.publish(_:)(uint64_t a1)
{
  v22 = a1;
  v25 = *v1;
  v3 = *(v25 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v24 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  MEMORY[0x28223BE20](v6 - 8);
  v23 = &v21 - v7;
  v8 = sub_24B7DAE58();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = *(v4 + 16);
  v12(&v21 - v10, a1, v3);
  (*(v4 + 56))(v11, 0, 1, v3);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  (*(v9 + 40))(v1 + v13, v11, v8);
  swift_endAccess();
  v14 = sub_24B7DACA8();
  v15 = v23;
  (*(*(v14 - 8) + 56))(v23, 1, 1, v14);
  v16 = v24;
  v12(v24, v22, v3);
  WitnessTable = swift_getWitnessTable();
  v18 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v1;
  *(v19 + 3) = WitnessTable;
  *(v19 + 4) = v3;
  *(v19 + 5) = v1;
  (*(v4 + 32))(&v19[v18], v16, v3);
  swift_retain_n();
  sub_24B7C7B14(0, 0, v15, &unk_24B7DD3C0, v19);
}

uint64_t sub_24B7C8558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24B7C8578, a4, 0);
}

uint64_t sub_24B7C8578()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 104));
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24B7C85B0, v1, 0);
}

uint64_t sub_24B7C85B0()
{
  AsyncStreamPublisher.publish(_:)(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B7C8610(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 48) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B7BB094;

  return sub_24B7C8558(a1, v6, v4, v7, v1 + v5);
}

uint64_t CurrentValueAsyncStreamPublisher.publish<>(_:)(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v62 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v63 = &v51 - v6;
  v7 = *(v62 + 80);
  v8 = *(v7 - 8);
  v60 = v8[8];
  MEMORY[0x28223BE20](v5);
  v66 = &v51 - v9;
  v10 = sub_24B7DAE58();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v51 - v13;
  v15 = *(v10 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v56 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v64 = &v51 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - v20;
  v22 = v8[2];
  v61 = a1;
  v57 = v22;
  v58 = v8 + 2;
  v22(&v51 - v20, a1, v7);
  v23 = v8[7];
  v54 = v8 + 7;
  v53 = v23;
  v23(v21, 0, 1, v7);
  v24 = *(*v2 + 96);
  swift_beginAccess();
  v52 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v69 = v15;
  v26 = *(v15 + 16);
  v26(v14, v21, v10);
  v67 = v25;
  v59 = v2;
  v55 = v24;
  v26(&v14[v25], v2 + v24, v10);
  v68 = v8;
  v27 = v8[6];
  if (v27(v14, 1, v7) == 1)
  {
    v28 = *(v69 + 8);
    v28(v21, v10);
    if (v27(&v14[v67], 1, v7) == 1)
    {
      return (v28)(v14, v10);
    }

    goto LABEL_6;
  }

  v30 = v64;
  v26(v64, v14, v10);
  v31 = v67;
  if (v27(&v14[v67], 1, v7) == 1)
  {
    (*(v69 + 8))(v21, v10);
    (v68[1])(v30, v7);
LABEL_6:
    (*(v51 + 8))(v14, v52);
    v32 = v65;
LABEL_7:
    v34 = v56;
    v33 = v57;
    v35 = v61;
    v57(v56, v61, v7);
    v53(v34, 0, 1, v7);
    v36 = v59;
    v37 = v55;
    swift_beginAccess();
    (*(v69 + 40))(v36 + v37, v34, v10);
    swift_endAccess();
    v38 = sub_24B7DACA8();
    v39 = v63;
    (*(*(v38 - 8) + 56))(v63, 1, 1, v38);
    v40 = v66;
    v33(v66, v35, v7);
    WitnessTable = swift_getWitnessTable();
    v42 = v68;
    v43 = (*(v68 + 80) + 56) & ~*(v68 + 80);
    v44 = swift_allocObject();
    *(v44 + 2) = v36;
    *(v44 + 3) = WitnessTable;
    *(v44 + 4) = v7;
    *(v44 + 5) = v32;
    *(v44 + 6) = v36;
    (v42[4])(&v44[v43], v40, v7);
    swift_retain_n();
    sub_24B7C7B14(0, 0, v39, &unk_24B7DD3D0, v44);
  }

  v45 = v68;
  v46 = &v14[v31];
  v47 = v66;
  (v68[4])(v66, v46, v7);
  v32 = v65;
  v48 = sub_24B7DAA78();
  v49 = v45[1];
  v49(v47, v7);
  v50 = *(v69 + 8);
  v50(v21, v10);
  v49(v64, v7);
  result = (v50)(v14, v10);
  if ((v48 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24B7C8DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24B7C8E00, a4, 0);
}

uint64_t sub_24B7C8E00()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 104));
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24B7CA0DC, v1, 0);
}

uint64_t sub_24B7C8E38(uint64_t a1)
{
  v4 = (*(*(v1[4] - 8) + 80) + 56) & ~*(*(v1[4] - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B7BB094;

  return sub_24B7C8DE0(a1, v5, v6, v7, v1 + v4);
}

uint64_t CurrentValueAsyncStreamPublisher.makeStream(bufferingPolicy:)(uint64_t a1)
{
  v3 = sub_24B7DACD8();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v7[-v4], a1);
  v8 = v1;
  v9 = a1;
  nullsub_1();
  return sub_24B7DAD68();
}

uint64_t sub_24B7C9048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v5 = *(*a2 + 80);
  v60 = sub_24B7DAD18();
  v57 = *(v60 - 8);
  v54 = *(v57 + 64);
  MEMORY[0x28223BE20](v60);
  v56 = &v46 - v6;
  v55 = sub_24B7DACD8();
  v53 = *(v55 - 8);
  v50 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v58 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v46 - v9;
  v10 = sub_24B7DACB8();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x28223BE20](v10);
  v46 = &v46 - v11;
  v12 = sub_24B7DAE58();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  v17 = v5;
  v18 = v5;
  v19 = a2;
  v20 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v14);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = *(*v19 + 96);
  swift_beginAccess();
  v27 = *(v13 + 16);
  v52 = v19;
  v27(v16, v19 + v26, v12);
  v28 = v17;
  if ((*(v20 + 48))(v16, 1, v17) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v29 = v60;
  }

  else
  {
    (*(v20 + 32))(v25, v16, v17);
    (*(v20 + 16))(v23, v25, v17);
    v30 = v46;
    v29 = v60;
    sub_24B7DACF8();
    (*(v47 + 8))(v30, v48);
    (*(v20 + 8))(v25, v28);
  }

  v49 = a1;
  v31 = sub_24B7DACA8();
  (*(*(v31 - 8) + 56))(v59, 1, 1, v31);
  v32 = v53;
  v33 = v55;
  (*(v53 + 16))(v58, v51, v55);
  v35 = v56;
  v34 = v57;
  (*(v57 + 16))(v56, a1, v29);
  type metadata accessor for CurrentValueAsyncStreamPublisher(255, v28, v36, v37);
  WitnessTable = swift_getWitnessTable();
  v39 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v40 = (v50 + *(v34 + 80) + v39) & ~*(v34 + 80);
  v41 = swift_allocObject();
  v42 = v52;
  *(v41 + 2) = v52;
  *(v41 + 3) = WitnessTable;
  *(v41 + 4) = v28;
  *(v41 + 5) = v42;
  (*(v32 + 32))(&v41[v39], v58, v33);
  (*(v34 + 32))(&v41[v40], v35, v60);
  swift_retain_n();
  v43 = sub_24B7C7B14(0, 0, v59, &unk_24B7DD468, v41);
  v44 = swift_allocObject();
  *(v44 + 16) = v28;
  *(v44 + 24) = v43;
  return sub_24B7DACC8();
}

uint64_t sub_24B7C9690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = *(*a4 + 80);
  v6[5] = v8;
  v9 = sub_24B7DACB8();
  v6[6] = v9;
  v6[7] = *(v9 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  sub_24B7DAE58();
  v6[12] = swift_task_alloc();
  v10 = sub_24B7DAD58();
  v6[13] = v10;
  v6[14] = *(v10 - 8);
  v6[15] = swift_task_alloc();
  v11 = sub_24B7DAD48();
  v6[16] = v11;
  v6[17] = *(v11 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B7C98CC, a4, 0);
}

uint64_t sub_24B7C98CC()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 104));
  *(v0 + 152) = v1;
  return MEMORY[0x2822009F8](sub_24B7C9904, v1, 0);
}

uint64_t sub_24B7C9904()
{
  v1 = *(v0 + 16);
  AsyncStreamPublisher.makeStream(bufferingPolicy:)(*(v0 + 24));

  return MEMORY[0x2822009F8](sub_24B7C9974, v1, 0);
}

uint64_t sub_24B7C9974()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[5];
  sub_24B7DAD28();
  (*(v2 + 8))(v1, v3);
  type metadata accessor for CurrentValueAsyncStreamPublisher(255, v4, v5, v6);
  WitnessTable = swift_getWitnessTable();
  v0[20] = WitnessTable;
  v0[21] = 0;
  v8 = v0[2];
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_24B7C9A88;
  v10 = v0[16];
  v11 = v0[12];

  return MEMORY[0x2822003E8](v11, v8, WitnessTable, v10);
}

uint64_t sub_24B7C9A88()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_24B7C9B98, v1, 0);
}

uint64_t sub_24B7C9B98()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[21];
    (*(v2 + 32))(v0[11], v1, v3);
    sub_24B7DAD88();
    if (v6)
    {
      sub_24B7DAD18();
      sub_24B7DAD08();
    }

    else
    {
      v7 = v0[8];
      v8 = v0[6];
      v9 = v0[7];
      (*(v0[9] + 16))(v0[10], v0[11], v0[5]);
      sub_24B7DAD18();
      sub_24B7DACF8();
      (*(v9 + 8))(v7, v8);
    }

    (*(v0[9] + 8))(v0[11], v0[5]);
    v0[21] = 0;
    v10 = v0[20];
    v11 = v0[2];
    v12 = swift_task_alloc();
    v0[22] = v12;
    *v12 = v0;
    v12[1] = sub_24B7C9A88;
    v13 = v0[16];
    v14 = v0[12];

    return MEMORY[0x2822003E8](v14, v11, v10, v13);
  }
}

uint64_t sub_24B7C9E24(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24B7DACD8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24B7DAD18() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[5];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24B7BB190;

  return sub_24B7C9690(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_24B7C9FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B7CA024(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B7BB190;

  return sub_24B7BB3BC(a1, v4);
}

uint64_t sub_24B7CA0F0@<X0>(Swift::Int *a1@<X0>, FitnessUtilities::DynamicPredicateDynamicTypeSize_optional *a2@<X8>)
{
  result = _s16FitnessUtilities016DynamicPredicateC8TypeSizeO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t sub_24B7CA23C()
{
  v1 = *v0;
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](v1 + 1);
  return sub_24B7DB128();
}

uint64_t sub_24B7CA2B4(uint64_t a1)
{
  v2 = *v1;
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](v2 + 1);
  return sub_24B7DB128();
}

uint64_t _s16FitnessUtilities016DynamicPredicateC8TypeSizeO8rawValueACSgSi_tcfC_0(uint64_t a1)
{
  if ((a1 - 1) >= 0xD)
  {
    return 13;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t sub_24B7CA30C()
{
  result = qword_27F0598A0;
  if (!qword_27F0598A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0598A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicPredicateDynamicTypeSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicPredicateDynamicTypeSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B7CA4B0()
{
  result = qword_27F0598A8;
  if (!qword_27F0598A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0598A8);
  }

  return result;
}

uint64_t PortableEnum.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v23 = a3;
  v24 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v21 - v8;
  v22 = sub_24B7DAE58();
  v10 = *(v22 - 8);
  v11 = MEMORY[0x28223BE20](v22);
  v13 = &v21 - v12;
  v14 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, AssociatedTypeWitness);
  v17 = v23;
  sub_24B7DAB68();
  if ((*(v14 + 48))(v13, 1, a2) == 1)
  {
    (*(v10 + 8))(v13, v22);
    (*(v7 + 32))(v24, a1, AssociatedTypeWitness);
  }

  else
  {
    (*(v7 + 8))(a1, AssociatedTypeWitness);
    v19 = *(v14 + 32);
    v19(v16, v13, a2);
    v19(v24, v16, a2);
  }

  type metadata accessor for PortableEnum(0, a2, v17, v18);
  return swift_storeEnumTagMultiPayload();
}

{
  v26 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_24B7DAE58();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  (*(v9 + 16))(v12, a1, v8);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    v19 = *(v9 + 8);
    v19(a1, v8);
    v19(v12, v8);
    v21 = 1;
    v22 = v26;
  }

  else
  {
    (*(v13 + 32))(v18, v12, AssociatedTypeWitness);
    (*(v13 + 16))(v16, v18, AssociatedTypeWitness);
    v22 = v26;
    PortableEnum.init(rawValue:)(v16, a2, a3, v26);
    (*(v9 + 8))(a1, v8);
    (*(v13 + 8))(v18, AssociatedTypeWitness);
    v21 = 0;
  }

  v23 = type metadata accessor for PortableEnum(0, a2, a3, v20);
  return (*(*(v23 - 8) + 56))(v22, v21, 1, v23);
}

uint64_t PortableEnum.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 32))(a4, a1, a2);
  type metadata accessor for PortableEnum(0, a2, a3, v6);

  return swift_storeEnumTagMultiPayload();
}

uint64_t PortableEnum.rawValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v7, v9, v3);
    sub_24B7DAB58();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 32))(a2, v9, AssociatedTypeWitness);
  }
}

uint64_t PortableEnum.unwrapped.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(a1 + 16);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v11);
  }

  else
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }
}

uint64_t static PortableEnum.?? infix(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for PortableEnum(0, a3, a4, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - v11;
  (*(v10 + 16))(v14 - v11, a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(a3 - 8) + 32))(a5, v12, a3);
  }

  a2();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_24B7CB01C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B7DB088() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E776F6E6BLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_24B7DB088();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24B7CB0E4(char a1)
{
  if (a1)
  {
    return 0x6E776F6E6BLL;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_24B7CB118(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_24B7DB088();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_24B7CB1BC(uint64_t a1)
{
  sub_24B7DB0F8();
  sub_24B7BEEA0(v3, *v1);
  return sub_24B7DB128();
}

uint64_t sub_24B7CB214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B7CB01C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B7CB244@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B7BFFF8();
  *a1 = result;
  return result;
}

uint64_t sub_24B7CB270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B7CB2C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24B7CB318@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B7BF180();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24B7CB348(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B7CB39C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24B7CB3F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B7CB444(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t static PortableEnum<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PortableEnum(0, v9, v11, v10);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  (*(v13 + 16))(&v18 - v14, a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v8, v15, a3);
    v16 = sub_24B7DAA78();
    (*(v6 + 8))(v8, a3);
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t static PortableEnum<>.~= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PortableEnum(0, v9, v11, v10);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  (*(v13 + 16))(&v18 - v14, a2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v8, v15, a3);
    v16 = sub_24B7DAA78();
    (*(v6 + 8))(v8, a3);
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t Set.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for PortableEnum(0, a3, a5, a4);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  (*(*(a3 - 8) + 16))(v16 - v12, a1, a3);
  swift_storeEnumTagMultiPayload();
  v16[0] = a4;
  v16[1] = a6;
  swift_getWitnessTable();
  v14 = sub_24B7DADB8();
  (*(v11 + 8))(v13, v10);
  return v14 & 1;
}

uint64_t PortableEnum<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v21[0] = a3;
  v21[1] = a4;
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v21 - v11;
  v13 = *(v7 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v5, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v16, v18, v7);
    sub_24B7DAA38();
    return (*(v13 + 8))(v16, v7);
  }

  else
  {
    (*(v9 + 32))(v12, v18, AssociatedTypeWitness);
    sub_24B7DAA38();
    return (*(v9 + 8))(v12, AssociatedTypeWitness);
  }
}

uint64_t PortableEnum<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B7DB0F8();
  PortableEnum<>.hash(into:)(v7, a1, a2, a3);
  return sub_24B7DB128();
}

uint64_t sub_24B7CBCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_24B7DB0F8();
  PortableEnum<>.hash(into:)(v7, a2, v4, v5);
  return sub_24B7DB128();
}

uint64_t PortableEnum<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a4;
  v57 = a6;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v58 = a2;
  v52 = type metadata accessor for PortableEnum.KnownCodingKeys(255, v7, v8, a4);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_24B7DB058();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v51 = &v39 - v12;
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v11);
  v49 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PortableEnum.UnknownCodingKeys(255, v7, v8, v14);
  v16 = swift_getWitnessTable();
  v45 = v15;
  v41 = v16;
  v17 = sub_24B7DB058();
  v46 = *(v17 - 8);
  v47 = v17;
  MEMORY[0x28223BE20](v17);
  v43 = &v39 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v40 = &v39 - v20;
  v21 = *(a2 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v7;
  type metadata accessor for PortableEnum.CodingKeys(255, v7, v8, v24);
  swift_getWitnessTable();
  v25 = sub_24B7DB058();
  v59 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v39 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7DB158();
  (*(v21 + 16))(v23, v60, v58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v53;
    v30 = v48;
    v29 = v49;
    (*(v53 + 32))(v49, v23, v48);
    v62 = 1;
    v31 = v51;
    sub_24B7DAFE8();
    v32 = v55;
    sub_24B7DB048();
    (*(v54 + 8))(v31, v32);
    (*(v28 + 8))(v29, v30);
  }

  else
  {
    v33 = v42;
    v34 = v40;
    v35 = AssociatedTypeWitness;
    (*(v42 + 32))(v40, v23, AssociatedTypeWitness);
    v61 = 0;
    v36 = v43;
    sub_24B7DAFE8();
    v37 = v47;
    sub_24B7DB048();
    (*(v46 + 8))(v36, v37);
    (*(v33 + 8))(v34, v35);
  }

  return (*(v59 + 8))(v27, v25);
}

uint64_t PortableEnum<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v66 = a6;
  v64 = a3;
  v59 = a7;
  v10 = type metadata accessor for PortableEnum.KnownCodingKeys(255, a2, a5, a4);
  WitnessTable = swift_getWitnessTable();
  v71 = v10;
  v63 = sub_24B7DAFD8();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v72 = &v54 - v11;
  v13 = type metadata accessor for PortableEnum.UnknownCodingKeys(255, a2, a5, v12);
  v67 = swift_getWitnessTable();
  v68 = v13;
  v61 = sub_24B7DAFD8();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v69 = &v54 - v14;
  type metadata accessor for PortableEnum.CodingKeys(255, a2, a5, v15);
  swift_getWitnessTable();
  v76 = sub_24B7DAFD8();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v17 = &v54 - v16;
  v77 = a2;
  v65 = a5;
  v19 = type metadata accessor for PortableEnum(0, a2, a5, v18);
  v73 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v54 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v54 - v26;
  v28 = a1;
  v29 = a1[3];
  v83 = v28;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v75 = v17;
  v30 = v78;
  sub_24B7DB148();
  if (!v30)
  {
    v56 = v22;
    v57 = v25;
    v55 = v27;
    v78 = v19;
    v31 = v74;
    v58 = 0;
    v33 = v75;
    v32 = v76;
    *&v79 = sub_24B7DAFC8();
    sub_24B7DAC48();
    swift_getWitnessTable();
    *&v81 = sub_24B7DAEA8();
    *(&v81 + 1) = v34;
    *&v82 = v35;
    *(&v82 + 1) = v36;
    sub_24B7DAE98();
    swift_getWitnessTable();
    sub_24B7DADF8();
    v37 = v79;
    if (v79 == 2 || (v54 = v81, v79 = v81, v80 = v82, (sub_24B7DAE08() & 1) == 0))
    {
      v43 = sub_24B7DAEE8();
      swift_allocError();
      v45 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059630, &qword_24B7DBDD0);
      *v45 = v78;
      sub_24B7DAF58();
      sub_24B7DAED8();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
      swift_willThrow();
      (*(v31 + 8))(v33, v32);
    }

    else
    {
      if (v37)
      {
        LOBYTE(v79) = 1;
        v38 = v72;
        v39 = v58;
        sub_24B7DAF48();
        v40 = v73;
        if (!v39)
        {
          v41 = v56;
          v42 = v63;
          sub_24B7DAFB8();
          (*(v62 + 8))(v38, v42);
          (*(v31 + 8))(v33, v32);
          swift_unknownObjectRelease();
          v50 = v78;
LABEL_13:
          swift_storeEnumTagMultiPayload();
          v51 = v59;
          v52 = *(v40 + 32);
          v53 = v55;
          v52(v55, v41, v50);
          v52(v51, v53, v50);
          return __swift_destroy_boxed_opaque_existential_1(v83);
        }
      }

      else
      {
        LOBYTE(v79) = 0;
        v46 = v69;
        v47 = v58;
        sub_24B7DAF48();
        v40 = v73;
        if (!v47)
        {
          swift_getAssociatedTypeWitness();
          v41 = v57;
          v48 = v61;
          sub_24B7DAFB8();
          (*(v60 + 8))(v46, v48);
          (*(v31 + 8))(v33, v32);
          swift_unknownObjectRelease();
          v50 = v78;
          goto LABEL_13;
        }
      }

      (*(v31 + 8))(v33, v32);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t static PortableEnum<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a4;
  v37 = a6;
  v42 = a1;
  v43 = a2;
  v41 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v40 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v34 = &v34 - v10;
  v12 = type metadata accessor for PortableEnum(0, a3, a5, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  v20 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v22 = &v34 - v21;
  v23 = *(v20 + 48);
  v24 = *(v13 + 16);
  v24(&v34 - v21, v42, v12);
  v24(&v22[v23], v43, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24(v18, v22, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = v39;
      v29 = v40;
      v31 = v34;
      (*(v39 + 32))(v34, &v22[v23], v40);
      v27 = sub_24B7DAA78();
      v32 = *(v30 + 8);
      v32(v31, v29);
      v32(v18, v29);
      goto LABEL_9;
    }

    (*(v39 + 8))(v18, v40);
    goto LABEL_7;
  }

  v24(v16, v22, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v41 + 8))(v16, a3);
LABEL_7:
    v27 = 0;
    v13 = v38;
    v12 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v25 = v41;
  v26 = v35;
  (*(v41 + 32))(v35, &v22[v23], a3);
  v27 = sub_24B7DAA78();
  v28 = *(v25 + 8);
  v28(v26, a3);
  v28(v16, a3);
LABEL_9:
  (*(v13 + 8))(v22, v12);
  return v27 & 1;
}

uint64_t sub_24B7CD018(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(*(v5 - 8) + 64);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_25:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_25;
  }

LABEL_14:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_24B7CD184(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (*(*(v7 - 8) + 64) > v8)
  {
    v8 = *(*(v7 - 8) + 64);
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t GatedResource.FetchError.hashValue.getter()
{
  v1 = *v0;
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](v1);
  return sub_24B7DB128();
}

uint64_t sub_24B7CD508(uint64_t a1)
{
  sub_24B7DB0F8();
  GatedResource.FetchError.hash(into:)();
  return sub_24B7DB128();
}

uint64_t sub_24B7CD544@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v7 = type metadata accessor for GatedResource.State(0, *(v3 + 80), v5, v6);
  return (*(*(v7 - 8) + 16))(a1, v1 + v4, v7);
}

uint64_t sub_24B7CD5F0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v7 = type metadata accessor for GatedResource.State(0, *(v3 + 80), v5, v6);
  (*(*(v7 - 8) + 40))(v1 + v4, a1, v7);
  return swift_endAccess();
}

uint64_t GatedResource.__allocating_init(ttl:fetchHandler:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  GatedResource.init(ttl:fetchHandler:)(a1, a2, a3);
  return v6;
}

uint64_t *GatedResource.init(ttl:fetchHandler:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *v3;
  swift_defaultActor_initialize();
  type metadata accessor for GatedResource.State(0, *(v7 + 80), v8, v9);
  swift_storeEnumTagMultiPayload();
  *(v3 + *(*v3 + 104)) = a3;
  v10 = (v3 + *(*v3 + 112));
  *v10 = a1;
  v10[1] = a2;
  return v3;
}

uint64_t sub_24B7CD7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for GatedResource.State(0, *(*v4 + 80), a3, a4);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  sub_24B7CD544(&v15 - v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
      v9 = sub_24B7DB138();
      sub_24B7DAC88();
      sub_24B7DAC48();
      swift_getTupleTypeMetadata2();
      (*(*(v9 - 8) + 8))(v7, v9);
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
      sub_24B7DAC88();
      v10 = sub_24B7DAC28();

      return v10;
    }

    return 0;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
    v12 = sub_24B7DB138();
    v13 = sub_24B7DA9A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(v13 - 8) + 8))(&v7[*(TupleTypeMetadata2 + 48)], v13);
    (*(*(v12 - 8) + 8))(v7, v12);
    return 0;
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

uint64_t sub_24B7CDAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 80);
  v6 = type metadata accessor for GatedResource.State(0, v5, a3, a4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  sub_24B7CD544(v19 - v10);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
    v14 = sub_24B7DB138();
    sub_24B7DAC88();
    sub_24B7DAC48();
    v13 = *&v11[*(swift_getTupleTypeMetadata2() + 48)];
    (*(*(v14 - 8) + 8))(v11, v14);
    goto LABEL_6;
  }

  if (!result)
  {
    v13 = *v11;
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v15 = sub_24B7CD5F0(v9);
    v19[1] = v13;
    MEMORY[0x28223BE20](v15);
    v19[-2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
    sub_24B7DAC88();
    sub_24B7DAC48();
    swift_getWitnessTable();
    sub_24B7DAB48();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  v16 = sub_24B7DB138();
  v17 = sub_24B7DA9A8();
  v18 = *(swift_getTupleTypeMetadata2() + 48);
  swift_storeEnumTagMultiPayload();
  sub_24B7CD5F0(v9);
  (*(*(v17 - 8) + 8))(&v11[v18], v17);
  return (*(*(v16 - 8) + 8))(v11, v16);
}

uint64_t sub_24B7CDDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GatedResource.FetchError(0, a2, a3, a4);
  swift_getWitnessTable();
  swift_allocError();
  *v4 = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  sub_24B7DAC88();
  return sub_24B7DAC68();
}

uint64_t sub_24B7CDED0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v26 = a3;
  v4 = *(*v3 + 80);
  v5 = type metadata accessor for GatedResource.State(0, v4, a1, a2);
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  v8 = sub_24B7DB138();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  sub_24B7CD544(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      type metadata accessor for GatedResource.FetchError(0, v4, v16, v17);
      swift_getWitnessTable();
      swift_allocError();
      v21 = 1;
      goto LABEL_10;
    }

    sub_24B7DAC88();
    sub_24B7DAC48();
    swift_getTupleTypeMetadata2();

    v22 = *(v9 + 32);
    v22(v14, v7, v8);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v25 + 8))(v7, v5);
      type metadata accessor for GatedResource.FetchError(0, v4, v18, v19);
      swift_getWitnessTable();
      swift_allocError();
      v21 = 2;
LABEL_10:
      *v20 = v21;
      return swift_willThrow();
    }

    v23 = sub_24B7DA9A8();
    v25 = *(swift_getTupleTypeMetadata2() + 48);
    v22 = *(v9 + 32);
    v22(v14, v7, v8);
    (*(*(v23 - 8) + 8))(&v7[v25], v23);
  }

  v22(v12, v14, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return swift_willThrow();
  }

  return (*(*(v4 - 8) + 32))(v26, v12, v4);
}

uint64_t sub_24B7CE2CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_24B7CE314, v1, 0);
}

uint64_t sub_24B7CE314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  v6 = *(v4[4] + 80);
  type metadata accessor for GatedResource(255, v6, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_24B7CE41C;
  v9 = v4[2];
  v10 = v4[3];

  return MEMORY[0x2822008A0](v9, v5, WitnessTable, 0x29286863746566, 0xE700000000000000, sub_24B7CEFFC, v10, v6);
}

uint64_t sub_24B7CE41C()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_24B7CE550, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24B7CE580(uint64_t a1, uint64_t a2)
{
  v81 = a1;
  v2 = *(*a2 + 80);
  v74 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v72 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v73 = &v70 - v5;
  v6 = sub_24B7DA9A8();
  v77 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v70 - v11;
  MEMORY[0x28223BE20](v10);
  v75 = &v70 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  v80 = sub_24B7DB138();
  v78 = *(v80 - 8);
  v14 = MEMORY[0x28223BE20](v80);
  v16 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14);
  v76 = &v70 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v70 - v19;
  v82 = type metadata accessor for GatedResource.State(0, v2, v21, v22);
  v23 = MEMORY[0x28223BE20](v82);
  v79 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v26 = &v70 - v25;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B7CD544(v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v34 = sub_24B7DAC88();
      sub_24B7DAC48();
      v35 = v80;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v37 = v78;
      (*(v78 + 32))(v20, v26, v35);
      v38 = *(TupleTypeMetadata2 + 48);
      v39 = v79;
      (*(v37 + 16))(v79, v20, v35);
      sub_24B7DB068();
      v40 = *(v34 - 8);
      swift_allocObject();
      sub_24B7DABE8();
      (*(v40 + 16))(v41, v81, v34);
      sub_24B7DAC48();
      v42 = sub_24B7DABF8();

      *(v39 + v38) = v42;
      swift_storeEnumTagMultiPayload();
      sub_24B7CD5F0(v39);
      return (*(v37 + 8))(v20, v35);
    }

    else
    {
      v54 = sub_24B7DAC88();
      sub_24B7DB068();
      v55 = *(v54 - 8);
      swift_allocObject();
      v56 = sub_24B7DABE8();
      (*(v55 + 16))(v57, v81, v54);
      sub_24B7DAC48();
      v58 = v79;
      *v79 = v56;
      swift_storeEnumTagMultiPayload();
      sub_24B7CD5F0(v58);
      return sub_24B7CF690();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v43 = v80;
    v44 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v78 + 32))(v76, v26, v43);
    v45 = v77;
    v46 = &v26[v44];
    v47 = v75;
    (*(v77 + 32))(v75, v46, v6);
    sub_24B7DA978();
    sub_24B7DA998();
    LOBYTE(v44) = sub_24B7DA988();
    v49 = *(v45 + 8);
    v48 = v45 + 8;
    v50 = v9;
    v51 = v49;
    v49(v50, v6);
    v49(v12, v6);
    if (v44)
    {
      v52 = v78;
      v53 = v76;
      (*(v78 + 16))(v16, v76, v80);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v83 = *v16;
        sub_24B7DAC88();
        sub_24B7DAC68();
        v51(v75, v6);
      }

      else
      {
        v71 = v51;
        v69 = v73;
        v68 = v74;
        (*(v74 + 32))(v73, v16, v2);
        (*(v68 + 16))(v72, v69, v2);
        sub_24B7DAC88();
        sub_24B7DAC78();
        (*(v68 + 8))(v69, v2);
        v71(v75, v6);
      }

      return (*(v52 + 8))(v53, v80);
    }

    else
    {
      v59 = sub_24B7DAC88();
      sub_24B7DAC48();
      v60 = v80;
      v74 = *(swift_getTupleTypeMetadata2() + 48);
      v61 = v78;
      v62 = *(v78 + 16);
      v77 = v48;
      v71 = v51;
      v63 = v79;
      v64 = v76;
      v62(v79, v76, v60);
      sub_24B7DB068();
      v65 = *(v59 - 8);
      swift_allocObject();
      v66 = sub_24B7DABE8();
      (*(v65 + 16))(v67, v81, v59);
      sub_24B7DAC48();
      *(v63 + v74) = v66;
      swift_storeEnumTagMultiPayload();
      sub_24B7CD5F0(v63);
      sub_24B7CF690();
      v71(v47, v6);
      return (*(v61 + 8))(v64, v60);
    }
  }

  else
  {
    v28 = sub_24B7DAC88();
    sub_24B7DB068();
    v29 = *(v28 - 8);
    swift_allocObject();
    sub_24B7DABE8();
    (*(v29 + 16))(v30, v81, v28);
    sub_24B7DAC48();
    v31 = sub_24B7DABF8();

    v32 = v79;
    *v79 = v31;
    swift_storeEnumTagMultiPayload();
    return sub_24B7CD5F0(v32);
  }
}

uint64_t sub_24B7CF004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for GatedResource.State(0, v6, a3, a4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  sub_24B7CD544(v21 - v11);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
    v15 = sub_24B7DB138();
    sub_24B7DAC88();
    sub_24B7DAC48();
    v14 = *&v12[*(swift_getTupleTypeMetadata2() + 48)];
    (*(*(v15 - 8) + 8))(v12, v15);
    goto LABEL_6;
  }

  if (!result)
  {
    v14 = *v12;
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
    v16 = sub_24B7DB138();
    sub_24B7DA9A8();
    swift_getTupleTypeMetadata2();
    (*(*(v16 - 8) + 16))(v10, a1, v16);
    sub_24B7DA998();
    swift_storeEnumTagMultiPayload();
    v17 = sub_24B7CD5F0(v10);
    v21[1] = v14;
    MEMORY[0x28223BE20](v17);
    v21[-2] = v6;
    v21[-1] = a1;
    sub_24B7DAC88();
    sub_24B7DAC48();
    swift_getWitnessTable();
    sub_24B7DAB48();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  v18 = sub_24B7DB138();
  v19 = sub_24B7DA9A8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(v19 - 8) + 8))(&v12[*(TupleTypeMetadata2 + 48)], v19);
  return (*(*(v18 - 8) + 8))(v12, v18);
}

uint64_t sub_24B7CF3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  v4 = sub_24B7DAC88();
  return sub_24B7CF454(a2, v4);
}

uint64_t sub_24B7CF454(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B7DB138();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_24B7DAC68();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_24B7DAC78();
  }
}

uint64_t sub_24B7CF690()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_24B7DACA8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_24B7C7B14(0, 0, v3, &unk_24B7DDC78, v5);
}

uint64_t sub_24B7CF798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*a4 + 80);
  v4[3] = v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  v6 = sub_24B7DB138();
  v4[4] = v6;
  v4[5] = *(v6 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B7CF8E4, 0, 0);
}

uint64_t sub_24B7CF8E4()
{
  v1 = (v0[2] + *(*v0[2] + 112));
  v5 = (*v1 + **v1);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_24B7CF9F0;
  v3 = v0[8];

  return v5(v3);
}

uint64_t sub_24B7CF9F0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24B7CFCB8;
  }

  else
  {
    v2 = sub_24B7CFB04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B7CFB04()
{
  v1 = v0[2];
  (*(v0[7] + 16))(v0[6], v0[8], v0[3]);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x2822009F8](sub_24B7CFBA0, v1, 0);
}

uint64_t sub_24B7CFBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[5];
  v5 = v4[6];
  v7 = v4[4];
  sub_24B7CF004(v5, a2, a3, a4);
  (*(v6 + 8))(v5, v7);

  return MEMORY[0x2822009F8](sub_24B7CFC34, 0, 0);
}

uint64_t sub_24B7CFC34()
{
  (*(v0[7] + 8))(v0[8], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24B7CFCB8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  **(v0 + 48) = v1;
  swift_storeEnumTagMultiPayload();
  v3 = v1;

  return MEMORY[0x2822009F8](sub_24B7CFD3C, v2, 0);
}

uint64_t sub_24B7CFD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[5];
  v5 = v4[6];
  v7 = v4[4];
  sub_24B7CF004(v5, a2, a3, a4);
  (*(v6 + 8))(v5, v7);

  return MEMORY[0x2822009F8](sub_24B7CFDD0, 0, 0);
}

uint64_t sub_24B7CFDD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GatedResource.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  v6 = type metadata accessor for GatedResource.State(0, *(*v4 + 80), a3, a4);
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  swift_defaultActor_destroy();
  return v4;
}

uint64_t GatedResource.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  GatedResource.deinit(a1, a2, a3, a4);

  return MEMORY[0x282200960](v4);
}

uint64_t sub_24B7CFF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for GatedResource.State(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of GatedResource.fetch()(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B7BB190;

  return v6(a1);
}

uint64_t sub_24B7D0230(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F0598B0, &unk_24B7DDAF0);
  sub_24B7DAC88();
  result = sub_24B7DAC48();
  if (v2 <= 0x3F)
  {
    sub_24B7DB138();
    sub_24B7DA9A8();
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      result = swift_getTupleTypeMetadata2();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24B7D0348(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(sub_24B7DA9A8() - 8);
  v7 = ((v5 + *(v6 + 80) + 1) & ~*(v6 + 80)) + *(v6 + 64);
  if (v7 <= (v5 & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_31;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 252) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v13 < 2)
    {
LABEL_31:
      v15 = *(a1 + v8);
      if (v15 >= 4)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_31;
  }

LABEL_20:
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

  return (v9 | v14) + 253;
}

void sub_24B7D04FC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (*(*(*(a4 + 16) - 8) + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(*(*(a4 + 16) - 8) + 64);
  }

  v8 = *(sub_24B7DA9A8() - 8);
  v9 = ((v7 + *(v8 + 80) + 1) & ~*(v8 + 80)) + *(v8 + 64);
  if (v9 <= (v7 & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v9 = (v7 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v9 <= 8)
  {
    v9 = 8;
  }

  v10 = v9 + 1;
  if (a3 < 0xFD)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 252) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFC)
  {
    v12 = a2 - 253;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_44:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v9] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_29;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

uint64_t sub_24B7D0730(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B7BB190;

  return sub_24B7CF798(a1, v4, v5, v6);
}

uint64_t DynamicPredicateEquatableValue.Stripped.hashValue.getter()
{
  v1 = *v0;
  sub_24B7DB0F8();
  MEMORY[0x24C24AAF0](v1);
  return sub_24B7DB128();
}

void DynamicPredicateEquatableValue.strippedCase.getter(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 > 3)
  {
    if (*(v1 + 16) > 5u)
    {
      if (v2 == 6)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }

      *a1 = v3;
    }

    else if (v2 == 4)
    {
      *a1 = 0x604020100uLL >> (8 * *v1);
    }

    else
    {
      *a1 = 4;
    }
  }

  else
  {
    *a1 = v2;
  }
}

unint64_t sub_24B7D08D4()
{
  v1 = *v0;
  v2 = 0x5463696D616E7964;
  v3 = 0x676E69727473;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x6874615079656BLL;
  if (v1 != 4)
  {
    v4 = 0x6D726F6674616C70;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 2)
  {
    v5 = 0x72656765746E69;
  }

  if (*v0)
  {
    v2 = 0x657A695364697267;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B7D09E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B7D3DF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B7D0A1C(uint64_t a1)
{
  v2 = sub_24B7D1778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D0A58(uint64_t a1)
{
  v2 = sub_24B7D1778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7D0A94(uint64_t a1)
{
  v2 = sub_24B7D1AC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D0AD0(uint64_t a1)
{
  v2 = sub_24B7D1AC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7D0B0C(uint64_t a1)
{
  v2 = sub_24B7D1A6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D0B48(uint64_t a1)
{
  v2 = sub_24B7D1A6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7D0B84(uint64_t a1)
{
  v2 = sub_24B7D1A18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D0BC0(uint64_t a1)
{
  v2 = sub_24B7D1A18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7D0BFC(uint64_t a1)
{
  v2 = sub_24B7D19C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D0C38(uint64_t a1)
{
  v2 = sub_24B7D19C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7D0C74(uint64_t a1)
{
  v2 = sub_24B7D191C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D0CB0(uint64_t a1)
{
  v2 = sub_24B7D191C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7D0CEC(uint64_t a1)
{
  v2 = sub_24B7D1874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D0D28(uint64_t a1)
{
  v2 = sub_24B7D1874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7D0D64(uint64_t a1)
{
  v2 = sub_24B7D1820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D0DA0(uint64_t a1)
{
  v2 = sub_24B7D1820();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7D0DDC(uint64_t a1)
{
  v2 = sub_24B7D17CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D0E18(uint64_t a1)
{
  v2 = sub_24B7D17CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicPredicateEquatableValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059A38, &qword_24B7DDC80);
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059A40, &qword_24B7DDC88);
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v34 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059A48, &qword_24B7DDC90);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059A50, &qword_24B7DDC98);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v43 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059A58, &qword_24B7DDCA0);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v40 = &v34 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059A60, &qword_24B7DDCA8);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v34 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059A68, &qword_24B7DDCB0);
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059A70, &qword_24B7DDCB8);
  v34 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059A78, &qword_24B7DDCC0);
  v19 = *(v18 - 8);
  v57 = v18;
  v58 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - v20;
  v22 = *v1;
  v55 = v1[1];
  v56 = v22;
  v23 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7D1778();
  sub_24B7DB158();
  if (v23 > 3)
  {
    if (v23 > 5)
    {
      v26 = v57;
      v27 = v21;
      if (v23 == 6)
      {
        v68 = 6;
        sub_24B7D1820();
        v28 = v48;
        sub_24B7DAFE8();
        v29 = v51;
        sub_24B7DB008();
        v30 = v50;
      }

      else
      {
        v69 = 7;
        sub_24B7D17CC();
        v28 = v52;
        sub_24B7DAFE8();
        v29 = v54;
        sub_24B7DB008();
        v30 = v53;
      }
    }

    else
    {
      v26 = v57;
      v27 = v21;
      if (v23 == 4)
      {
        v65 = 4;
        sub_24B7D191C();
        v28 = v43;
        sub_24B7DAFE8();
        v64 = v56;
        sub_24B7D1970();
        v29 = v45;
        sub_24B7DB048();
        v30 = v44;
      }

      else
      {
        v67 = 5;
        sub_24B7D1874();
        v28 = v46;
        sub_24B7DAFE8();
        v66 = v56;
        sub_24B7D18C8();
        v29 = v49;
        sub_24B7DB048();
        v30 = v47;
      }
    }

    goto LABEL_16;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v62 = 2;
      sub_24B7D1A18();
      v28 = v37;
      v26 = v57;
      v27 = v21;
      sub_24B7DAFE8();
      v29 = v39;
      sub_24B7DB008();
      v30 = v38;
    }

    else
    {
      v63 = 3;
      sub_24B7D19C4();
      v28 = v40;
      v26 = v57;
      v27 = v21;
      sub_24B7DAFE8();
      v29 = v42;
      sub_24B7DB028();
      v30 = v41;
    }

LABEL_16:
    (*(v30 + 8))(v28, v29);
    v32 = *(v58 + 8);
    v33 = v27;
    return v32(v33, v26);
  }

  if (!v23)
  {
    v60 = 0;
    sub_24B7D1AC0();
    v24 = v57;
    sub_24B7DAFE8();
    v59 = v56;
    sub_24B7C0D80();
    sub_24B7DB048();
    (*(v34 + 8))(v17, v15);
    return (*(v58 + 8))(v21, v24);
  }

  v61[0] = 1;
  sub_24B7D1A6C();
  v26 = v57;
  sub_24B7DAFE8();
  v31 = v36;
  sub_24B7DB028();
  (*(v35 + 8))(v14, v31);
  v32 = *(v58 + 8);
  v33 = v21;
  return v32(v33, v26);
}

unint64_t sub_24B7D1778()
{
  result = qword_27F059A80;
  if (!qword_27F059A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059A80);
  }

  return result;
}

unint64_t sub_24B7D17CC()
{
  result = qword_27F059A88;
  if (!qword_27F059A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059A88);
  }

  return result;
}

unint64_t sub_24B7D1820()
{
  result = qword_27F059A90;
  if (!qword_27F059A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059A90);
  }

  return result;
}

unint64_t sub_24B7D1874()
{
  result = qword_27F059A98;
  if (!qword_27F059A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059A98);
  }

  return result;
}

unint64_t sub_24B7D18C8()
{
  result = qword_27F059AA0;
  if (!qword_27F059AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059AA0);
  }

  return result;
}

unint64_t sub_24B7D191C()
{
  result = qword_27F059AA8;
  if (!qword_27F059AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059AA8);
  }

  return result;
}

unint64_t sub_24B7D1970()
{
  result = qword_27F059AB0;
  if (!qword_27F059AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059AB0);
  }

  return result;
}

unint64_t sub_24B7D19C4()
{
  result = qword_27F059AB8;
  if (!qword_27F059AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059AB8);
  }

  return result;
}

unint64_t sub_24B7D1A18()
{
  result = qword_27F059AC0;
  if (!qword_27F059AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059AC0);
  }

  return result;
}

unint64_t sub_24B7D1A6C()
{
  result = qword_27F059AC8;
  if (!qword_27F059AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059AC8);
  }

  return result;
}

unint64_t sub_24B7D1AC0()
{
  result = qword_27F059AD0;
  if (!qword_27F059AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059AD0);
  }

  return result;
}

uint64_t DynamicPredicateEquatableValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059AD8, &qword_24B7DDCC8);
  v4 = *(v3 - 8);
  v83 = v3;
  v84 = v4;
  MEMORY[0x28223BE20](v3);
  v90 = &v65 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059AE0, &qword_24B7DDCD0);
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x28223BE20](v6);
  v89 = &v65 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059AE8, &qword_24B7DDCD8);
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x28223BE20](v8);
  v88 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059AF0, &qword_24B7DDCE0);
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v85 = &v65 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059AF8, &qword_24B7DDCE8);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v87 = &v65 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059B00, &qword_24B7DDCF0);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v86 = &v65 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059B08, &qword_24B7DDCF8);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v15 = &v65 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059B10, &qword_24B7DDD00);
  v70 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059B18, &unk_24B7DDD08);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v65 - v21;
  v23 = a1[3];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24B7D1778();
  v24 = v92;
  sub_24B7DB148();
  if (!v24)
  {
    v66 = v18;
    v65 = v16;
    v67 = v15;
    v25 = v86;
    v68 = 0;
    v27 = v87;
    v26 = v88;
    v28 = v89;
    v29 = v90;
    v69 = v20;
    v30 = v91;
    v92 = v22;
    v31 = sub_24B7DAFC8();
    v32 = (2 * *(v31 + 16)) | 1;
    v94 = v31;
    v95 = v31 + 32;
    v96 = 0;
    v97 = v32;
    v33 = sub_24B7C1794();
    if (v33 == 8 || v96 != v97 >> 1)
    {
      v38 = sub_24B7DAEE8();
      swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059630, &qword_24B7DBDD0);
      *v40 = &type metadata for DynamicPredicateEquatableValue;
      v41 = v92;
      sub_24B7DAF58();
      sub_24B7DAED8();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
      swift_willThrow();
      (*(v69 + 8))(v41, v19);
LABEL_29:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v93);
    }

    v98 = v33;
    if (v33 <= 3u)
    {
      if (v33 <= 1u)
      {
        if (!v33)
        {
          v99 = 0;
          sub_24B7D1AC0();
          v34 = v66;
          v35 = v92;
          v36 = v68;
          sub_24B7DAF48();
          if (!v36)
          {
            sub_24B7C181C();
            v37 = v65;
            sub_24B7DAFB8();
            (*(v70 + 8))(v34, v37);
            (*(v69 + 8))(v35, v19);
            swift_unknownObjectRelease();
LABEL_34:
            v62 = 0;
            v60 = v99;
LABEL_38:
            *v30 = v60;
            *(v30 + 8) = v62;
            *(v30 + 16) = v98;
            return __swift_destroy_boxed_opaque_existential_1(v93);
          }

          goto LABEL_25;
        }

        v99 = 1;
        sub_24B7D1A6C();
        v49 = v67;
        v50 = v92;
        v51 = v68;
        sub_24B7DAF48();
        if (v51)
        {
          (*(v69 + 8))(v50, v19);
          goto LABEL_29;
        }

        v55 = v72;
        v60 = sub_24B7DAF98();
        (*(v71 + 8))(v49, v55);
        (*(v69 + 8))(v92, v19);
LABEL_37:
        swift_unknownObjectRelease();
        v62 = 0;
        goto LABEL_38;
      }

      if (v33 == 2)
      {
        v99 = 2;
        sub_24B7D1A18();
        v35 = v92;
        v46 = v68;
        sub_24B7DAF48();
        if (!v46)
        {
          v47 = v74;
          v60 = sub_24B7DAF78();
          v62 = v61;
          (*(v73 + 8))(v25, v47);
          (*(v69 + 8))(v35, v19);
LABEL_36:
          swift_unknownObjectRelease();
          goto LABEL_38;
        }
      }

      else
      {
        v99 = 3;
        sub_24B7D19C4();
        v35 = v92;
        v52 = v68;
        sub_24B7DAF48();
        if (!v52)
        {
          v56 = v76;
          v57 = sub_24B7DAF98();
          v58 = v69;
          v60 = v57;
          (*(v75 + 8))(v27, v56);
          (*(v58 + 8))(v35, v19);
          goto LABEL_37;
        }
      }

LABEL_25:
      (*(v69 + 8))(v35, v19);
      goto LABEL_29;
    }

    v42 = v92;
    v43 = v68;
    if (v33 <= 5u)
    {
      if (v33 == 4)
      {
        v99 = 4;
        sub_24B7D191C();
        v44 = v85;
        sub_24B7DAF48();
        if (!v43)
        {
          sub_24B7D28AC();
          v45 = v78;
          sub_24B7DAFB8();
          v59 = v77;
LABEL_33:
          (*(v59 + 8))(v44, v45);
          (*(v69 + 8))(v42, v19);
          swift_unknownObjectRelease();
          goto LABEL_34;
        }
      }

      else
      {
        v99 = 5;
        sub_24B7D1874();
        v44 = v26;
        sub_24B7DAF48();
        if (!v43)
        {
          sub_24B7D2858();
          v45 = v80;
          sub_24B7DAFB8();
          v59 = v79;
          goto LABEL_33;
        }
      }

LABEL_28:
      (*(v69 + 8))(v42, v19);
      goto LABEL_29;
    }

    if (v33 == 6)
    {
      v99 = 6;
      sub_24B7D1820();
      sub_24B7DAF48();
      if (v43)
      {
        goto LABEL_28;
      }

      v48 = v82;
      v60 = sub_24B7DAF78();
      v62 = v63;
      (*(v81 + 8))(v28, v48);
    }

    else
    {
      v99 = 7;
      sub_24B7D17CC();
      sub_24B7DAF48();
      if (v43)
      {
        goto LABEL_28;
      }

      v53 = v83;
      v60 = sub_24B7DAF78();
      v62 = v64;
      (*(v84 + 8))(v29, v53);
    }

    (*(v69 + 8))(v42, v19);
    goto LABEL_36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v93);
}