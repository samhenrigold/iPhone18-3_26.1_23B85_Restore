uint64_t sub_2530E7D4C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_2530E7618(v12, v7, a1, a2);
      MEMORY[0x259BFDC60](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_2530E795C((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
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

uint64_t sub_2530E7F5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581368, &qword_25314D8F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530E7FCC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8) - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2530BF218;

  return sub_253114D00(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

uint64_t sub_2530E80D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2530E813C(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(type metadata accessor for HomesStore.AnyChanges(0) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2530BF218;

  return sub_2530E2620(a1, v8, v9, v1 + v7, v10, v5, v4);
}

uint64_t sub_2530E8270(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2530E82D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2530E836C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2530E83B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t sub_2530E848C(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD000000000000020, 0x800000025314AF90);
    swift_getErrorValue();
    sub_253149714();
    result = sub_253149594();
    __break(1u);
  }

  return result;
}

void sub_2530E853C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t HomesStore.CoreData.PersistentContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_2530E8640@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = v2;
  return v2;
}

id sub_2530E8650@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = v2;
  return v2;
}

id sub_2530E8660@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  *a1 = v2;
  return v2;
}

void *_s11HomeKitCore10HomesStoreC0C4DataO19PersistentContainerC13configurationAgE13ConfigurationV_tcfC_0(char *a1)
{
  v39 = type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
  MEMORY[0x28223BE20](v39);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_253148884();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  (*(v5 + 16))(v7, &a1[*(v8 + 20)], v4);
  v9 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v10 = sub_253148864();
  v11 = [v9 initWithContentsOfURL_];

  v12 = *(v5 + 8);
  v37 = v4;
  v38 = v12;
  v12(v7, v4);
  if (!v11)
  {
LABEL_17:
    aBlock = 0;
    v43 = 0xE000000000000000;
    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD000000000000035, 0x800000025314AEE0);
    sub_2530E8DEC(&qword_27F581388, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v35 = sub_2531496F4();
    MEMORY[0x259BFC7D0](v35);

    goto LABEL_18;
  }

  v13 = objc_allocWithZone(MEMORY[0x277CBE4D8]);
  v41 = v11;
  v40 = [v13 initWithManagedObjectModel_];
  v14 = [objc_allocWithZone(MEMORY[0x277CBE4E0]) init];
  sub_2530CF970(0, &qword_27F581390, 0x277CCABB0);
  v15 = sub_253149174();
  [v14 setOption:v15 forKey:*MEMORY[0x277CBE210]];

  v16 = sub_253149174();
  [v14 setOption:v16 forKey:*MEMORY[0x277CBE270]];

  v17 = sub_253148B54();
  [v14 setConfiguration_];

  [v14 setShouldInferMappingModelAutomatically_];
  [v14 setShouldMigrateStoreAutomatically_];
  [v14 setShouldAddStoreAsynchronously_];
  sub_2530E8E34(&a1[*(v8 + 24)], v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = v37;
      (*(v5 + 32))(v7, v3, v37);
      v20 = sub_253148864();
      [v14 setURL_];

      [v14 setType_];
      v38(v7, v19);
    }

    else
    {
      [v14 setType_];
    }
  }

  else
  {
    [v14 setType_];
    v21 = sub_253148B54();

    [v14 setOption:v21 forKey:*MEMORY[0x277CBE340]];

    v22 = sub_253149174();
    [v14 setOption:v22 forKey:*MEMORY[0x277CBE328]];
  }

  v23 = v40;
  v24 = [objc_allocWithZone(MEMORY[0x277CBE440]) initWithConcurrencyType_];
  [v24 setPersistentStoreCoordinator_];
  v25 = sub_253148B54();
  [v24 setName_];

  v46 = sub_2530E848C;
  v47 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_2530E853C;
  v45 = &block_descriptor_0;
  v26 = _Block_copy(&aBlock);
  [v23 addPersistentStoreWithDescription:v14 completionHandler:v26];
  _Block_release(v26);
  v27 = [v23 persistentStores];
  sub_2530CF970(0, &qword_27F581398, 0x277CBE4D0);
  v28 = sub_253148C94();

  if (v28 >> 62)
  {
    v34 = sub_2531492E4();
    v29 = v41;
    if (v34)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v29 = v41;
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if ((v28 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x259BFD000](0, v28);
        goto LABEL_12;
      }

      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v30 = *(v28 + 32);
LABEL_12:
        v31 = v30;

        type metadata accessor for HomesStore.CoreData.PersistentContainer();
        v32 = swift_allocObject();
        v32[2] = v23;
        v32[3] = v31;
        v32[4] = v24;
        sub_2530D20A8(a1);
        return v32;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

LABEL_18:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_2530E8DEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2530E8E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2530E8EB0(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813C8, &qword_25314DA00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25314D9C0;
  *(v4 + 32) = [a1 entity];
  v69 = v4;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314D9C0;
  v59 = a1;
  *(inited + 32) = [a1 entity];
  v6 = sub_2530DA568(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v68 = v6;
  v7 = sub_2530E9790();
  if (!v7)
  {
LABEL_53:

    return 0;
  }

  v8 = v7;
LABEL_4:
  v9 = [v8 name];
  if (!v9)
  {
    sub_2530EB040(a2, a3);
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_253148B64();
  v13 = v12;

  v14 = sub_2530EB040(a2, a3);
  if (!v13)
  {
LABEL_13:

    goto LABEL_14;
  }

  if (v11 == v14 && v13 == v15)
  {
    goto LABEL_55;
  }

  v17 = sub_253149734();

  if (v17)
  {
    goto LABEL_56;
  }

LABEL_14:
  v62 = v8;
  v18 = [v8 relationshipsByName];
  sub_2530CF970(0, &qword_27F580918, 0x277CBE500);
  v19 = sub_253148AD4();

  v20 = 0;
  v67 = MEMORY[0x277D84F90];
  v8 = (v19 + 64);
  v21 = 1 << *(v19 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(v19 + 64);
  v24 = ((v21 + 63) >> 6);
  if (v23)
  {
    while (2)
    {
      v25 = v20;
LABEL_24:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v27 = *(*(v19 + 56) + ((v25 << 9) | (8 * v26)));
      if ([v27 isToMany])
      {

        v20 = v25;
        if (v23)
        {
          continue;
        }
      }

      else
      {
        sub_253149494();
        sub_2531494D4();
        sub_2531494E4();
        sub_2531494A4();
        v20 = v25;
        if (v23)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v25 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      v28 = v67;
      if ((v67 & 0x8000000000000000) != 0 || (v67 & 0x4000000000000000) != 0)
      {
        v29 = sub_2531492E4();
        if (!v29)
        {
          goto LABEL_3;
        }

LABEL_30:
        v30 = 0;
        v65 = v28;
        v66 = v28 & 0xC000000000000001;
        v63 = v28 + 32;
        v64 = v29;
        while (2)
        {
          if (v66)
          {
            v33 = MEMORY[0x259BFD000](v30, v28);
          }

          else
          {
            if (v30 >= *(v28 + 16))
            {
              goto LABEL_61;
            }

            v33 = *(v63 + 8 * v30);
          }

          v34 = v33;
          if (__OFADD__(v30++, 1))
          {
            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          v36 = [v33 destinationEntity];
          if (v36)
          {
            v37 = v36;
            v38 = v68;
            if ((v68 & 0xC000000000000001) != 0)
            {
              v39 = v36;
              v40 = sub_253149324();

              if (v40)
              {
                goto LABEL_34;
              }

LABEL_31:
              v31 = v37;
              sub_2530D60DC(&v67, v31);

              v32 = v31;
              MEMORY[0x259BFC870]();
              if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_253148CD4();
              }

              sub_253148D14();
            }

            else
            {
              if (!*(v68 + 16))
              {
                goto LABEL_31;
              }

              sub_2530CF970(0, &qword_27F580910, 0x277CBE408);
              v41 = sub_253149184();
              v24 = (v38 + 56);
              v42 = -1 << *(v38 + 32);
              v43 = v41 & ~v42;
              if (((*(v38 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
              {
                goto LABEL_31;
              }

              v44 = ~v42;
              while (1)
              {
                v45 = *(*(v38 + 48) + 8 * v43);
                v46 = sub_253149194();

                if (v46)
                {
                  break;
                }

                v43 = (v43 + 1) & v44;
                if (((*&v24[(v43 >> 3) & 0xFFFFFFFFFFFFFF8] >> v43) & 1) == 0)
                {
                  goto LABEL_31;
                }
              }
            }

LABEL_34:

            v29 = v64;
            v28 = v65;
          }

          if (v30 == v29)
          {
            goto LABEL_3;
          }

          continue;
        }
      }

      v29 = *(v67 + 16);
      if (v29)
      {
        goto LABEL_30;
      }

LABEL_3:

      v8 = sub_2530E9790();
      if (!v8)
      {
        goto LABEL_53;
      }

      goto LABEL_4;
    }

    v23 = *&v8[8 * v25];
    ++v20;
    if (v23)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_55:

LABEL_56:
  v24 = v8;

  if (qword_27F580230 != -1)
  {
LABEL_62:
    swift_once();
  }

  v48 = sub_253148A94();
  __swift_project_value_buffer(v48, qword_27F5813A0);
  v49 = v59;
  v50 = sub_253148A74();
  v51 = sub_2531490A4();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v67 = v54;
    *v52 = 138412546;
    *(v52 + 4) = v49;
    *v53 = v49;
    *(v52 + 12) = 2080;
    v55 = v49;
    v56 = sub_2531498D4();
    v58 = sub_253146498(v56, v57, &v67);

    *(v52 + 14) = v58;
    _os_log_impl(&dword_2530B8000, v50, v51, "Relationship %@ is contained by %s", v52, 0x16u);
    sub_2530E9CB0(v53);
    MEMORY[0x259BFDC60](v53, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x259BFDC60](v54, -1, -1);
    MEMORY[0x259BFDC60](v52, -1, -1);
  }

  return 1;
}

uint64_t sub_2530E9588(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5812E0, qword_25314D860);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813B8, "։");
  v5 = sub_2530C0100(v1, v3, sub_2530E970C, 0, a1, v3, v4);
  if (*(v5 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813C0, &qword_25314D9F8);
    v6 = sub_2531495D4();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;
  sub_2530E9914(v5, 1, &v8);

  return v8;
}

uint64_t sub_2530E968C()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F5813A0);
  __swift_project_value_buffer(v0, qword_27F5813A0);
  return sub_253148A84();
}

uint64_t sub_2530E970C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813B8, "։") + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531493D4();
  return sub_2530C25FC(a1, a2 + v4);
}

unint64_t sub_2530E9790()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_2530E98B0();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = sub_2531492E4();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_2530E9820(result);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_2530E9820(result);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_2531492E4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2530E9820(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2530CB5D4();
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2530E98B0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_2530CB5D4();
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2530E9914(uint64_t a1, char a2, void *a3)
{
  v40 = a3;
  v5 = sub_253148944();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813B8, "։");
  result = MEMORY[0x28223BE20](v8);
  v37 = &v32 - v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(result + 48);
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v35 = *(v10 + 72);
    v36 = v13;
    v38 = (v34 + 32);
    v33 = (v34 + 8);
    while (1)
    {
      v16 = v37;
      sub_2530E9C40(v14, v37);
      v17 = *v38;
      v18 = v5;
      (*v38)(v7, v16, v5);
      sub_2530E8468((v16 + v36), v39);
      v19 = *v40;
      v21 = sub_25311D834(v7);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if ((a2 & 1) == 0)
        {
          sub_25312B884();
        }
      }

      else
      {
        sub_25312CBA4(v24, a2 & 1);
        v26 = sub_25311D834(v7);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_17;
        }

        v21 = v26;
      }

      v28 = *v40;
      if (v25)
      {
        v5 = v18;
        (*v33)(v7, v18);
        v15 = (v28[7] + 40 * v21);
        __swift_destroy_boxed_opaque_existential_0(v15);
        result = sub_2530E8468(v39, v15);
      }

      else
      {
        v28[(v21 >> 6) + 8] |= 1 << v21;
        v5 = v18;
        v17((v28[6] + *(v34 + 72) * v21), v7, v18);
        result = sub_2530E8468(v39, v28[7] + 40 * v21);
        v29 = v28[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_16;
        }

        v28[2] = v31;
      }

      v14 += v35;
      a2 = 1;
      if (!--v12)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_253149784();
    __break(1u);
  }

  return result;
}

uint64_t sub_2530E9C40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813B8, "։");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530E9CB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E10, &qword_25314F640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HomesStore.Room.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomesStore.Room.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomesStore.Room(0) + 20));

  return v1;
}

uint64_t type metadata accessor for HomesStore.Room(uint64_t a1)
{
  result = qword_27F581438;
  if (!qword_27F581438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static HomesStore.Room.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for HomesStore.Room(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_253149734();
}

uint64_t sub_2530E9E98()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2530E9EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_253149734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_253149734();

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

uint64_t sub_2530E9F94(uint64_t a1)
{
  v2 = sub_2530EA1C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2530E9FD0(uint64_t a1)
{
  v2 = sub_2530EA1C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.Room.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813E8, &qword_25314DA08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2530EA1C8();
  sub_253149894();
  v8[15] = 0;
  sub_253148944();
  sub_2530EAE2C(&qword_27F580630, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2531496D4();
  if (!v1)
  {
    type metadata accessor for HomesStore.Room(0);
    v8[14] = 1;
    sub_2531496B4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2530EA1C8()
{
  result = qword_27F5813F0;
  if (!qword_27F5813F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5813F0);
  }

  return result;
}

uint64_t HomesStore.Room.hash(into:)(uint64_t a1)
{
  sub_253148944();
  sub_2530EAE2C(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  type metadata accessor for HomesStore.Room(0);

  return sub_253148BB4();
}

uint64_t HomesStore.Room.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_2530EAE2C(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  type metadata accessor for HomesStore.Room(0);
  sub_253148BB4();
  return sub_253149844();
}

uint64_t HomesStore.Room.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_253148944();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813F8, &qword_25314DA10);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for HomesStore.Room(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2530EA1C8();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_2530EAE2C(&qword_27F5805E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v26;
  sub_253149664();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_253149644();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_2530EA8B4(v19, v18);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2530EA918(v19);
}

uint64_t sub_2530EA6CC(uint64_t a1)
{
  sub_253149814();
  sub_253148944();
  sub_2530EAE2C(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_2530EA774(uint64_t a1, uint64_t a2)
{
  sub_253148944();
  sub_2530EAE2C(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();

  return sub_253148BB4();
}

uint64_t sub_2530EA810(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  sub_253148944();
  sub_2530EAE2C(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_2530EA8B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Room(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530EA918(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.Room(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2530EA974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_253149734();
}

uint64_t static PartialModelRelationshipDescriptor<>.room.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581400, &qword_25314DA18);

  return MEMORY[0x2821FEAF0](v0, &unk_27F580350);
}

{
  return sub_2530EABF8(&qword_27F5802B8, &qword_27F581AA0, sub_25310FA54);
}

uint64_t sub_2530EAA3C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581470, &unk_25314DD20);
  swift_allocObject();

  v3 = sub_253141828(v2);

  qword_27F5813D0 = v3;
  return result;
}

uint64_t static PartialModelRelationshipDescriptor<>.accessories.getter()
{
  return sub_2530EABF8(&qword_27F580238, &qword_27F5813D0, sub_2530EAA3C);
}

{
  return sub_2530EABF8(&qword_27F5802F0, &qword_27F5820E8, sub_253121664);
}

uint64_t sub_2530EAAD0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581468, qword_25314DCE0);
  swift_allocObject();

  v3 = sub_253141848(v2);

  qword_27F5813D8 = v3;
  return result;
}

uint64_t static PartialModelRelationshipDescriptor<>.zones.getter()
{
  return sub_2530EABF8(&qword_27F580240, &qword_27F5813D8, sub_2530EAAD0);
}

{
  return sub_2530EABF8(&qword_27F580308, &qword_27F582100, sub_253121820);
}

uint64_t sub_2530EAB64(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581460, &unk_25314DCA8);
  swift_allocObject();

  v3 = sub_253141884(v2);

  qword_27F5813E0 = v3;
  return result;
}

uint64_t static PartialModelRelationshipDescriptor<>.home.getter()
{
  return sub_2530EABF8(&qword_27F580248, &qword_27F5813E0, sub_2530EAB64);
}

{
  return sub_2530EABF8(&qword_27F580280, &qword_27F581758, sub_2530F77B8);
}

{
  return sub_2530EABF8(&qword_27F5802B0, &qword_27F581A98, sub_25310F9C0);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582120, &qword_253150BB8);

  return MEMORY[0x2821FEAF0](v0, &unk_27F5803F0);
}

uint64_t sub_2530EABF8(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_2530EAC58(void *a1)
{
  a1[1] = sub_2530EAE2C(&qword_27F581408, type metadata accessor for HomesStore.Room, &protocol conformance descriptor for HomesStore.Room);
  a1[2] = sub_2530EAE2C(&qword_27F581410, type metadata accessor for HomesStore.Room, &protocol conformance descriptor for HomesStore.Room);
  a1[3] = sub_2530EAE2C(&qword_27F581418, type metadata accessor for HomesStore.Room, &protocol conformance descriptor for HomesStore.Room);
  a1[4] = sub_2530EAE2C(&qword_27F581420, type metadata accessor for HomesStore.Room, &protocol conformance descriptor for HomesStore.Room);
  result = sub_2530EAE2C(&qword_27F581428, type metadata accessor for HomesStore.Room, &protocol conformance descriptor for HomesStore.Room);
  a1[5] = result;
  return result;
}

uint64_t sub_2530EAE2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2530EAE9C(uint64_t a1)
{
  result = sub_253148944();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2530EAF24()
{
  result = qword_27F581448;
  if (!qword_27F581448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581448);
  }

  return result;
}

unint64_t sub_2530EAF7C()
{
  result = qword_27F581450;
  if (!qword_27F581450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581450);
  }

  return result;
}

unint64_t sub_2530EAFD4()
{
  result = qword_27F581458;
  if (!qword_27F581458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581458);
  }

  return result;
}

uint64_t sub_2530EB040(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

void sub_2530EB0CC()
{
  v0 = objc_opt_self();
  v1 = &unk_2864F1D80;
  v2 = [v0 interfaceWithProtocol_];

  v3 = &unk_2864F10F0;
  v4 = [v0 interfaceWithProtocol_];

  v5 = &unk_2864F1D00;
  v6 = [v0 interfaceWithProtocol_];

  [v6 setInterface:v2 forSelector:sel_registerObserver_modelTypes_completionHandler_ argumentIndex:0 ofReply:0];
  [v6 setInterface:v4 forSelector:sel_registerObserver_modelTypes_completionHandler_ argumentIndex:0 ofReply:1];

  qword_27F58D088 = v6;
}

uint64_t HomesStore.Accessory.AppleMediaDevice.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for HomesStore.Accessory.AppleMediaDevice(uint64_t a1)
{
  result = qword_27F5814D0;
  if (!qword_27F5814D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomesStore.Accessory.AppleMediaDevice.idsDestination.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0) + 24));

  return v1;
}

uint64_t sub_2530EB318()
{
  v1 = 0x6E65727275437369;
  if (*v0 != 1)
  {
    v1 = 0x6974736544736469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2530EB380@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2530EC468(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2530EB3A8(uint64_t a1)
{
  v2 = sub_2530EBF1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2530EB3E4(uint64_t a1)
{
  v2 = sub_2530EBF1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.Accessory.AppleMediaDevice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581480, &qword_25314DD60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2530EBF1C();
  sub_253149894();
  v8[15] = 0;
  sub_253148944();
  sub_2530EC204(&qword_27F580630, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2531496D4();
  if (!v1)
  {
    type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
    v8[14] = 1;
    sub_2531496C4();
    v8[13] = 2;
    sub_2531496A4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t HomesStore.Accessory.AppleMediaDevice.hash(into:)(uint64_t a1)
{
  sub_253148944();
  sub_2530EC204(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  v2 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
  sub_253149834();
  if (!*(v1 + *(v2 + 24) + 8))
  {
    return sub_253149834();
  }

  sub_253149834();

  return sub_253148BB4();
}

uint64_t HomesStore.Accessory.AppleMediaDevice.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_2530EC204(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  v1 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
  sub_253149834();
  if (*(v0 + *(v1 + 24) + 8))
  {
    sub_253149834();
    sub_253148BB4();
  }

  else
  {
    sub_253149834();
  }

  return sub_253149844();
}

uint64_t HomesStore.Accessory.AppleMediaDevice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_253148944();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581490, &qword_25314DD68);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v22 - v6;
  v8 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2530EBF1C();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v10;
  v12 = v24;
  v11 = v25;
  v30 = 0;
  sub_2530EC204(&qword_27F5805E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v13 = v26;
  sub_253149664();
  (*(v11 + 32))(v22, v27, v4);
  v29 = 1;
  v22[*(v8 + 20)] = sub_253149654() & 1;
  v28 = 2;
  v14 = sub_253149634();
  v27 = v15;
  v16 = v14;
  (*(v12 + 8))(v7, v13);
  v18 = v22;
  v17 = v23;
  v19 = &v22[*(v8 + 24)];
  v20 = v27;
  *v19 = v16;
  v19[1] = v20;
  sub_2530EBF70(v18, v17);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2530EBFD4(v18);
}

uint64_t sub_2530EBB9C(uint64_t a1, uint64_t a2)
{
  sub_253148944();
  sub_2530EC204(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  sub_253149834();
  if (!*(v2 + *(a2 + 24) + 8))
  {
    return sub_253149834();
  }

  sub_253149834();

  return sub_253148BB4();
}

uint64_t sub_2530EBC90(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  sub_253148944();
  sub_2530EC204(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  sub_253149834();
  if (*(v2 + *(a2 + 24) + 8))
  {
    sub_253149834();
    sub_253148BB4();
  }

  else
  {
    sub_253149834();
  }

  return sub_253149844();
}

uint64_t static PartialModelRelationshipDescriptor<>.appleMediaDevice.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581498, &qword_25314DD70);

  return MEMORY[0x2821FEAF0](v0, &unk_27F580378);
}

{
  return sub_2530EABF8(&qword_27F5802C0, &qword_27F581AA8, sub_25310FAE8);
}

uint64_t sub_2530EBDB8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581500, &qword_25314E018);
  swift_allocObject();

  v3 = sub_2531418B0(v2);

  qword_27F581478 = v3;
  return result;
}

uint64_t static PartialModelRelationshipDescriptor<>.accessory.getter()
{
  if (qword_27F580258 != -1)
  {
    swift_once();
  }
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581AD8, &qword_25314FAC0);

  return MEMORY[0x2821FEAF0](v0, &unk_27F5803C8);
}

uint64_t _s11HomeKitCore10HomesStoreC9AccessoryV16AppleMediaDeviceV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_253149734() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_2530EBF1C()
{
  result = qword_27F581488;
  if (!qword_27F581488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581488);
  }

  return result;
}

uint64_t sub_2530EBF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530EBFD4(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2530EC030(void *a1)
{
  a1[1] = sub_2530EC204(&qword_27F5814A0, type metadata accessor for HomesStore.Accessory.AppleMediaDevice, &protocol conformance descriptor for HomesStore.Accessory.AppleMediaDevice);
  a1[2] = sub_2530EC204(&qword_27F5814A8, type metadata accessor for HomesStore.Accessory.AppleMediaDevice, &protocol conformance descriptor for HomesStore.Accessory.AppleMediaDevice);
  a1[3] = sub_2530EC204(&qword_27F5814B0, type metadata accessor for HomesStore.Accessory.AppleMediaDevice, &protocol conformance descriptor for HomesStore.Accessory.AppleMediaDevice);
  a1[4] = sub_2530EC204(&qword_27F5814B8, type metadata accessor for HomesStore.Accessory.AppleMediaDevice, &protocol conformance descriptor for HomesStore.Accessory.AppleMediaDevice);
  result = sub_2530EC204(&qword_27F5814C0, type metadata accessor for HomesStore.Accessory.AppleMediaDevice, &protocol conformance descriptor for HomesStore.Accessory.AppleMediaDevice);
  a1[5] = result;
  return result;
}

uint64_t sub_2530EC204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2530EC274(uint64_t a1)
{
  sub_253148944();
  if (v1 <= 0x3F)
  {
    sub_2530EC300();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2530EC300()
{
  if (!qword_27F5814E0)
  {
    v0 = sub_2531491F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5814E0);
    }
  }
}

unint64_t sub_2530EC364()
{
  result = qword_27F5814E8;
  if (!qword_27F5814E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5814E8);
  }

  return result;
}

unint64_t sub_2530EC3BC()
{
  result = qword_27F5814F0;
  if (!qword_27F5814F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5814F0);
  }

  return result;
}

unint64_t sub_2530EC414()
{
  result = qword_27F5814F8;
  if (!qword_27F5814F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5814F8);
  }

  return result;
}

uint64_t sub_2530EC468(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_253149734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65727275437369 && a2 == 0xEF65636976654474 || (sub_253149734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974736544736469 && a2 == 0xEE006E6F6974616ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_253149734();

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

void sub_2530EC594(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 handle];
  v4 = sub_253148B64();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_2530EC5EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 home];
  *a2 = result;
  return result;
}

id sub_2530EC63C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userSharedSettings];
  *a2 = result;
  return result;
}

id HMCDUserModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDUserModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDUserModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDUserModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDUserModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_2530EC81C(void *a1))(void *a1)
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
  v2[4] = sub_2530EC88C(v2);
  return sub_2530D0B14;
}

void (*sub_2530EC88C(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

unint64_t sub_2530ECA2C(uint64_t a1)
{
  result = sub_2530ECA54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2530ECA54()
{
  result = qword_27F581508;
  if (!qword_27F581508)
  {
    type metadata accessor for HMCDUserModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581508);
  }

  return result;
}

uint64_t sub_2530ECAA8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HMCDUserModel();
  result = sub_2531493E4();
  *a2 = result;
  return result;
}

uint64_t sub_2530ECB00()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F581510);
  __swift_project_value_buffer(v0, qword_27F581510);
  return sub_253148A84();
}

id sub_2530ECC14(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s14descr2864E9699O21RequestHandlingPolicyCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2530ECC6C(id result)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = result;
  result = [result entitlements];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = sub_253148AD4();

  v4 = sub_25311EF54(v3);
  v5 = sub_25312AA68(v4);

  if ((v5 & 1) == 0)
  {
    if (qword_27F580260 != -1)
    {
      swift_once();
    }

    v6 = sub_253148A94();
    __swift_project_value_buffer(v6, qword_27F581510);
    v7 = v1;
    v8 = sub_253148A74();
    v9 = sub_2531490B4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v1;
      v12 = v7;
      _os_log_impl(&dword_2530B8000, v8, v9, "Denying access to XPC store server for client context: %@", v10, 0xCu);
      sub_2530E9CB0(v11);
      MEMORY[0x259BFDC60](v11, -1, -1);
      MEMORY[0x259BFDC60](v10, -1, -1);
    }
  }

  return (v5 & 1);
}

uint64_t HomesStore.makeRelationshipResolver<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v9 = sub_2531491F4();
  v5[8] = v9;
  v5[9] = *(v9 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = *(a3 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[14] = v10;
  v11 = *(a4 + 8);
  v5[15] = v11;
  *v10 = v5;
  v10[1] = sub_2530ECF98;

  return sub_2531132A0(a2, a3, v11);
}

uint64_t sub_2530ECF98(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_2530ED524;
  }

  else
  {
    v4 = sub_2530ED0AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2530ED0AC()
{
  v15 = v0;
  v0[2] = v0[16];
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];
  sub_253148D64();
  swift_getWitnessTable();
  sub_253149034();
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[15];
    v5 = v0[5];
    (*(v0[9] + 8))(v0[10], v0[8]);

    type metadata accessor for HomesStore.Error(0);
    sub_2530EEB48();
    swift_allocError();
    v7 = v6;
    (*(v4 + 48))(&v14, v5, v4);
    *v7 = v14;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[11] + 32))(v0[13], v0[10], v0[5]);

    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_2530ED2EC;
    v11 = v0[13];
    v12 = v0[6];
    v13 = v0[5];

    return sub_2530ED640(v11, v13, v12);
  }
}

uint64_t sub_2530ED2EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_2530ED5A4;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_2530ED414;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2530ED414()
{
  v13 = v0;
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  (*(v4 + 16))(v2, v3, v6);
  v11 = &type metadata for ModelProvider;
  v12 = &off_2864ECFE0;
  *&v10 = v1;
  (*(v4 + 8))(v3, v6);
  sub_2531477CC(v2, &v10, v6, v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2530ED524()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530ED5A4()
{
  (*(v0[11] + 8))(v0[13], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2530ED640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2530ED664, 0, 0);
}

uint64_t sub_2530ED664()
{
  v1 = sub_2530E9588(v0[3]);
  v0[6] = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_2530ED70C;

  return sub_2530EE100(v1);
}

uint64_t sub_2530ED70C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2530ED864, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_2530ED864()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t HomesStore.makeRelationshipObserver<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a1;
  v5[4] = a3;
  v9 = sub_2531491F4();
  v5[7] = v9;
  v5[8] = *(v9 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = *(a3 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[13] = v10;
  v11 = *(a4 + 8);
  v5[14] = v11;
  *v10 = v5;
  v10[1] = sub_2530EDA48;

  return sub_2531132A0(a2, a3, v11);
}

uint64_t sub_2530EDA48(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_2530EDFE4;
  }

  else
  {
    v4 = sub_2530EDB5C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2530EDB5C()
{
  v15 = v0;
  v0[2] = v0[15];
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[4];
  sub_253148D64();
  swift_getWitnessTable();
  sub_253149034();
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[14];
    v5 = v0[4];
    (*(v0[8] + 8))(v0[9], v0[7]);

    type metadata accessor for HomesStore.Error(0);
    sub_2530EEB48();
    swift_allocError();
    v7 = v6;
    (*(v4 + 48))(&v14, v5, v4);
    *v7 = v14;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[10] + 32))(v0[12], v0[9], v0[4]);

    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v10[1] = sub_2530EDDA0;
    v11 = v0[12];
    v12 = v0[5];
    v13 = v0[4];

    return sub_2530ED640(v11, v13, v12);
  }
}

uint64_t sub_2530EDDA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_2530EE064;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_2530EDEC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2530EDEC8()
{
  v12 = v0;
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  (*(v4 + 16))(v2, v3, v7);
  v11[3] = &type metadata for ModelProvider;
  v11[4] = &off_2864ECFE0;
  v11[0] = v1;

  sub_2530E1ACC(v2, v5, v11, v7, v6, v8);
  (*(v4 + 8))(v3, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2530EDFE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530EE064()
{
  (*(v0[10] + 8))(v0[12], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2530EE100(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581530, &qword_25314E0D8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v3 = sub_253148944();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530EE210, 0, 0);
}

void *sub_2530EE210()
{
  v1 = v0[22];
  v2 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581538, &qword_25314E0E0);
  result = sub_2531495B4();
  v4 = result;
  v5 = 0;
  v0[25] = result;
  v6 = v2 + 64;
  v24 = v2;
  v25 = v1;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  v10 = (v7 + 63) >> 6;
  v23 = result + 8;
  v26 = result;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v27 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v28 = v0[24];
      v15 = v0[21];
      v16 = *(v25 + 72) * v14;
      (*(v25 + 16))();
      sub_2530C25FC(*(v24 + 56) + 40 * v14, (v0 + 2));
      v17 = v0[5];
      v18 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v17);
      sub_253133AC0(v17, v18);
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      *(v23 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v4 = v26;
      result = (*(v25 + 32))(v26[6] + v16, v28, v15);
      *(v26[7] + v14) = v29;
      v19 = v26[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v26[2] = v21;
      v9 = v27;
      if (!v27)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v27 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    v22 = swift_task_alloc();
    v0[26] = v22;
    *v22 = v0;
    v22[1] = sub_2530EE48C;

    return sub_253116048(v4);
  }

  return result;
}

uint64_t sub_2530EE48C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2530EE5F8, 0, 0);
  }
}

void sub_2530EE5F8()
{
  v1 = 0;
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  v6 = *(v3 + 64);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v7 = v4 & v6;
  v40 = (63 - v5) >> 6;
  v41 = *(v0 + 216);
  v42 = (*(v0 + 176) + 8);
  v8 = &qword_27F581540;
  if ((v4 & v6) != 0)
  {
    while (1)
    {
      v9 = *(v0 + 200);
LABEL_13:
      v13 = *(v0 + 192);
      v14 = *(v0 + 168);
      v15 = *(v0 + 176);
      v16 = *(v0 + 152);
      v17 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v18 = v17 | (v1 << 6);
      (*(v15 + 16))(v13, *(v9 + 48) + *(v15 + 72) * v18, v14);
      v43 = *(*(v9 + 56) + v18);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, &qword_25314E0E8);
      v20 = v8;
      v21 = *(v19 + 48);
      (*(v15 + 32))(v16, v13, v14);
      *(v16 + v21) = v43;
      v8 = v20;
      (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
      v11 = v1;
      v2 = v41;
LABEL_14:
      v22 = *(v0 + 160);
      sub_2530EEBA0(*(v0 + 152), v22);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, &qword_25314E0E8);
      if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
      {
        break;
      }

      v24 = *(*(v0 + 160) + *(v23 + 48));
      (*(*(v0 + 176) + 32))(*(v0 + 184));
      if (!*(v2 + 16) || (v25 = sub_25311D834(*(v0 + 184)), (v26 & 1) == 0))
      {
        v32 = *(v0 + 176);
        v31 = *(v0 + 184);
        v33 = *(v0 + 168);

        type metadata accessor for HomesStore.Error(0);
        sub_2530EEB48();
        swift_allocError();
        (*(v32 + 16))(v34, v31, v33);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*v42)(v31, v33);
LABEL_26:

        v39 = *(v0 + 8);

        v39();
        return;
      }

      sub_2530C25FC(*(v2 + 56) + 40 * v25, v0 + 96);
      sub_2530BDB14((v0 + 96), v0 + 56);
      v27 = *(v0 + 80);
      v28 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v27);
      sub_2530D2104(v27, v28);
      if (v44 != v24)
      {
        v37 = *(v0 + 184);
        v38 = *(v0 + 168);

        type metadata accessor for HomesStore.Error(0);
        sub_2530EEB48();
        swift_allocError();
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        sub_2531493D4();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*v42)(v37, v38);
        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
        goto LABEL_26;
      }

      (*v42)(*(v0 + 184), *(v0 + 168));
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      v1 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v35 = *(v0 + 8);
    v36 = *(v0 + 216);

    v35(v36);
  }

  else
  {
LABEL_5:
    if (v40 <= v1 + 1)
    {
      v10 = v1 + 1;
    }

    else
    {
      v10 = v40;
    }

    v11 = v10 - 1;
    while (1)
    {
      v12 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v12 >= v40)
      {
        v29 = *(v0 + 152);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, &qword_25314E0E8);
        (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
        v7 = 0;
        goto LABEL_14;
      }

      v9 = *(v0 + 200);
      v7 = *(v9 + 8 * v12 + 64);
      ++v1;
      if (v7)
      {
        v1 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

unint64_t sub_2530EEB48()
{
  result = qword_27F581528;
  if (!qword_27F581528)
  {
    type metadata accessor for HomesStore.Error(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581528);
  }

  return result;
}

uint64_t sub_2530EEBA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581530, &qword_25314E0D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530EEC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[9] = AssociatedTypeWitness;
  v7[10] = *(AssociatedTypeWitness - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530EECF8, 0, 0);
}

uint64_t sub_2530EECF8()
{
  (*(v0[7] + 24))(v0[5], v0[7]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *v1 = v0;
  v1[1] = sub_2530EEDFC;
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_25311E60C(v7, v5, v6, v3, v4, AssociatedConformanceWitness);
}

uint64_t sub_2530EEDFC()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(v5 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2530EEFA4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2530EEFA4()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_2530EF00C()
{
  result = qword_27F580970;
  if (!qword_27F580970)
  {
    type metadata accessor for HMCDRoomModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580970);
  }

  return result;
}

uint64_t sub_2530EF070@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v7 modelID];
  sub_253148924();

  v11 = [a1 name];
  v12 = sub_253148B64();
  v14 = v13;

  v15 = &v9[*(a2 + 20)];
  *v15 = v12;
  v15[1] = v14;
  sub_2530EF2EC(v9, a3);
  return (*(v6 + 56))(a3, 0, 1, a2);
}

uint64_t sub_2530EF1AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB0, &qword_25314D550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314E1C0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x44496C65646F6DLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  v1 = sub_253109C78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB8, &qword_25314D638);
  result = swift_arrayDestroy();
  qword_27F58D090 = v1;
  return result;
}

uint64_t sub_2530EF290()
{
  if (qword_27F580268 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2530EF2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Room(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530EF350(uint64_t a1)
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

uint64_t sub_2530EF408()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F581548);
  __swift_project_value_buffer(v0, qword_27F581548);
  return sub_253148A84();
}

uint64_t sub_2530EF488()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 112)));
  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 120)));
  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 128)));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2530EF554()
{
  sub_2530EF488();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2530EF5EC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2530EF628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_2530EF650, v5, 0);
}

uint64_t sub_2530EF650()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = *(v0 + 24);
  *(v4 + 48) = v3;

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_2530EF768;
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  return sub_2530EFA98(v7, sub_2530F5D68, v4, v6);
}

uint64_t sub_2530EF768()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x2822009F8](sub_2530EF8A4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2530EF8A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530EF908(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  sub_2530C25FC(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5815F0, &qword_25314E3B8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 88);
  _s5ProxyCMa(0, v11, v12, v13);
  if (swift_dynamicCast())
  {
    v15 = v22;
    v16 = *(*v22 + 96);
    v17 = _s14descr2864E9281O8CoreDataCMa(0, v11, v12, v14);
    WitnessTable = swift_getWitnessTable();
    sub_253146CC4(a3, v15 + v16, a4, a5, v17, a6, WitnessTable);
  }

  else
  {
    sub_2530F5D8C();
    swift_allocError();
    *v20 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_2530EFA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *v4;
  v6 = swift_task_alloc();
  v5[9] = v6;
  *v6 = v5;
  v6[1] = sub_2530EFB58;

  return sub_2530F0D10();
}

uint64_t sub_2530EFB58()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_2530EFC68, v1, 0);
}

uint64_t sub_2530EFC68()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v0[2] = v1;
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v4;
  v6[3] = v1;
  v6[4] = v5;
  v6[5] = v3;

  v7 = swift_task_alloc();
  v0[11] = v7;
  v9 = _s14descr2864E9281O8CoreDataCMa(0, *(v2 + 80), *(v2 + 88), v8);
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_2530EFDB0;
  v11 = v0[6];
  v12 = v0[3];

  return sub_2530EEC10(v12, sub_2530F4410, v6, v9, v11, WitnessTable);
}

uint64_t sub_2530EFDB0()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x2822009F8](sub_2530CE6D8, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2530EFEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v8[12] = *v7;
  v8[2] = a6;
  sub_253148974();
  v9 = sub_2531491F4();
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v8[15] = *(v10 + 64);
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530F0000, v7, 0);
}

uint64_t sub_2530F0000()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  v15 = v0[16];
  v16 = v0[10];
  v21 = v0[8];
  v19 = v0[11];
  v20 = v0[7];
  v18 = v0[5];
  v17 = v0[4];
  (*(v3 + 16))();
  v6 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v7 = (v1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[17] = v9;
  *(v9 + 2) = *(v4 + 80);
  *(v9 + 3) = v5;
  *(v9 + 4) = *(v4 + 88);
  *(v9 + 5) = v16;
  (*(v3 + 32))(&v9[v6], v15, v2);
  *&v9[v7] = v19;
  v10 = &v9[v8];
  *v10 = v17;
  *(v10 + 1) = v18;
  v11 = &v9[(v8 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v11 = v20;
  *(v11 + 1) = v21;

  v12 = swift_task_alloc();
  v0[18] = v12;
  v13 = sub_253148D64();
  *v12 = v0;
  v12[1] = sub_2530F01D0;

  return sub_2530EFA98((v0 + 3), sub_2530F5F4C, v9, v13);
}

uint64_t sub_2530F01D0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_2530F0364;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_2530F02F8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2530F02F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2530F0364()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530F03D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v82 = a9;
  v86 = a6;
  v87 = a7;
  v88 = a4;
  v89 = a5;
  v85 = a2;
  v12 = *(*a3 + 88);
  v13 = *(*a3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v90 = &v77 - v14;
  v92 = a8;
  v96 = a8;
  v15 = sub_253148974();
  v16 = sub_2531491F4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v77 - v19;
  v21 = *(v15 - 8);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v91 = &v77 - v25;
  sub_2530C25FC(a1, v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5815F0, &qword_25314E3B8);
  _s5ProxyCMa(0, v13, v12, v26);
  if (swift_dynamicCast())
  {
    v80 = v12;
    v27 = v94;
    (*(v17 + 16))(v20, v85, v16);
    if ((*(v21 + 48))(v20, 1, v15) == 1)
    {
      (*(v17 + 8))(v20, v16);
      v28 = *(*v27 + 96);
      v29 = swift_allocObject();
      v30 = v92;
      v29[2] = v13;
      v29[3] = v30;
      v31 = v80;
      v29[4] = v80;
      v29[5] = a10;
      v32 = v87;
      v29[6] = v86;
      v29[7] = v32;
      v34 = _s14descr2864E9281O8CoreDataCMa(0, v13, v31, v33);
      v35 = sub_253148D64();

      WitnessTable = swift_getWitnessTable();
      sub_253146AE8(v88, v89, &v27[v28], 0, sub_2530F6048, v29, v34, v35, WitnessTable);
    }

    else
    {
      v39 = v91;
      (*(v21 + 32))(v91, v20, v15);
      v40 = v81;
      v41 = *(v81 + 16);
      v77 = *(*v27 + 96);
      v41(v90, &v27[v77], AssociatedTypeWitness);
      v42 = *(v21 + 16);
      v85 = v15;
      v42(v24, v39, v15);
      v43 = v92;
      v44 = v83;
      sub_2530FD73C(v24, v92, a10);
      v46 = v44;
      v78 = a10;
      v79 = v21;
      if (v44)
      {
        v47 = v27;
        v48 = v80;
        (*(v40 + 8))(v90, AssociatedTypeWitness);
        v57 = v91;
        if (qword_27F580270 != -1)
        {
          swift_once();
        }

        v58 = sub_253148A94();
        __swift_project_value_buffer(v58, qword_27F581548);
        v59 = v44;
        v60 = sub_253148A74();
        v61 = sub_253149094();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v62 = 138412290;
          v64 = v44;
          v65 = _swift_stdlib_bridgeErrorToNSError();
          *(v62 + 4) = v65;
          *v63 = v65;
          _os_log_impl(&dword_2530B8000, v60, v61, "Failed to fetch models with error: %@, filtering in-memory instead.", v62, 0xCu);
          sub_2530E9CB0(v63);
          v66 = v63;
          v57 = v91;
          MEMORY[0x259BFDC60](v66, -1, -1);
          v67 = v62;
          v46 = v44;
          MEMORY[0x259BFDC60](v67, -1, -1);
        }

        v68 = swift_allocObject();
        v69 = v92;
        v68[2] = v13;
        v68[3] = v69;
        v70 = v78;
        v68[4] = v48;
        v68[5] = v70;
        v71 = v87;
        v68[6] = v86;
        v68[7] = v71;
        v73 = _s14descr2864E9281O8CoreDataCMa(0, v13, v48, v72);
        v74 = sub_253148D64();

        v75 = swift_getWitnessTable();
        sub_253146AE8(v88, v89, &v47[v77], 0, sub_2530F665C, v68, v73, v74, v75);

        v93 = v94;
        swift_getWitnessTable();
        v76 = sub_253148C04();

        result = (*(v79 + 8))(v57, v85);
        *v82 = v76;
      }

      else
      {
        v49 = v45;
        v83 = v27;
        v50 = swift_allocObject();
        v50[2] = v13;
        v50[3] = v43;
        v51 = v80;
        v50[4] = v80;
        v50[5] = a10;
        v52 = v87;
        v50[6] = v86;
        v50[7] = v52;
        v54 = _s14descr2864E9281O8CoreDataCMa(0, v13, v51, v53);
        v55 = sub_253148D64();

        v56 = swift_getWitnessTable();
        sub_253146AE8(v88, v89, v90, v49, sub_2530F665C, v50, v54, v55, v56);

        (*(v40 + 8))(v90, AssociatedTypeWitness);
        return (*(v79 + 8))(v91, v85);
      }
    }
  }

  else
  {
    sub_2530F5D8C();
    swift_allocError();
    *v38 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2530F0D10()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DB8, &unk_25314D418);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530F0DDC, v0, 0);
}

uint64_t sub_2530F0DDC()
{
  v1 = v0[2];
  v2 = *v1;
  v3 = *(*v1 + 136);
  v0[6] = v3;
  if (*(v1 + v3))
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = *(v2 + 120);
    v0[7] = v6;
    v7 = *(v1 + v6 + 24);
    v8 = *(v1 + v6 + 32);
    __swift_project_boxed_opaque_existential_1((v1 + v6), v7);
    v11 = (*(v8 + 16) + **(v8 + 16));
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_2530F0F9C;
    v10 = v0[5];

    return v11(v10, v7, v8);
  }
}

uint64_t sub_2530F0F9C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_2530F10AC, v1, 0);
}

uint64_t sub_2530F10AC()
{
  v1 = (v0[2] + *(*v0[2] + 112));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_2530F11F0;
  v5 = v0[5];

  return v7(v5, v2, v3);
}

uint64_t sub_2530F11F0()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_2530F1300, v1, 0);
}

uint64_t sub_2530F1300()
{
  v1 = (v0[2] + v0[7]);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_2530F142C;

  return v6(v2, v3);
}

uint64_t sub_2530F142C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_2530F153C, v1, 0);
}

uint64_t sub_2530F153C()
{
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);
  *(v2 + v1) = 1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_2530F15C0(uint64_t a1, uint64_t *a2, void (*a3)(__int128 *), uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v7 = *(*a2 + 80);
  v8 = *(*a2 + 88);
  v9 = _s5ProxyCMa(0, v7, v8, a4);
  v10 = *(v6 + 104);
  sub_2530C25FC(a2 + *(v6 + 128), &v28);
  v24 = v9;
  v13 = sub_2531328F8(a2 + v10, &v28, v11, v12);
  v14 = [objc_opt_self() currentQueryGenerationToken];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 80);
  v17 = swift_checkMetadataState();
  v18 = v31;
  v16(v14, v17, AssociatedConformanceWitness);
  if (v18)
  {

    if (qword_27F580270 != -1)
    {
      swift_once();
    }

    v19 = sub_253148A94();
    __swift_project_value_buffer(v19, qword_27F581548);
    v20 = sub_253148A74();
    v21 = sub_2531490B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2530B8000, v20, v21, "Failed to pin managed object context.", v22, 2u);
      MEMORY[0x259BFDC60](v22, -1, -1);
    }

    swift_willThrow();
  }

  else
  {

    v29 = v24;
    v30 = &off_2864ED0E8;
    *&v28 = v13;

    a3(&v28);
    __swift_destroy_boxed_opaque_existential_0(&v28);
    sub_2530F18C4(a1, v7, a5, v8);
  }
}

uint64_t sub_2530F18C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 80);
  v6 = swift_checkMetadataState();
  return v5(0, v6, AssociatedConformanceWitness);
}

uint64_t sub_2530F1AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  v6 = swift_task_alloc();
  v5[13] = v6;
  *v6 = v5;
  v6[1] = sub_2530F1B70;

  return sub_2530F0D10();
}

uint64_t sub_2530F1B70()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_2530F1C80, v1, 0);
}

uint64_t sub_2530F1C80()
{
  v1 = dynamic_cast_existential_2_conditional(*(v0 + 56), *(v0 + 56), &protocol descriptor for CoreDataRepresentable, &protocol descriptor for HomesStore.Model);
  if (v1)
  {
    v4 = v3;
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = *(v0 + 72);
    v21 = *(v0 + 80);
    v8 = *(*v5 + 128);
    v9 = v1;
    v10 = v2;
    v22 = sub_2530EB040(v1, v2);
    v12 = v11;
    *(v0 + 112) = v11;
    sub_2530C25FC(v5 + v8, v0 + 16);
    v13 = swift_allocObject();
    *(v0 + 120) = v13;
    v13[2] = *(v6 + 80);
    v13[3] = v7;
    v13[4] = *(v6 + 88);
    v13[5] = v21;
    sub_2530BDB14((v0 + 16), (v13 + 6));
    v13[11] = v9;
    v13[12] = v10;
    v13[13] = v4;
    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    *v14 = v0;
    v14[1] = sub_2530F1E70;
    v15 = *(v0 + 80);
    v16 = *(v0 + 64);
    v17 = *(v0 + 72);

    return sub_2530EFEEC(v22, v12, v16, sub_2530F5F14, v13, v17, v15);
  }

  else
  {
    sub_2530F5D8C();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_2530F1E70(uint64_t a1)
{
  v4 = *v2;
  v4[17] = v1;

  if (v1)
  {
    v5 = v4[11];

    return MEMORY[0x2822009F8](sub_2530F1FE0, v5, 0);
  }

  else
  {

    v6 = v4[1];

    return v6(a1);
  }
}

uint64_t sub_2530F1FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_getAssociatedTypeWitness();
  sub_253148D64();
  swift_getWitnessTable();
  return sub_253148C34();
}

uint64_t sub_2530F20C0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = a2[3];
  v13 = a2[4];
  v14 = __swift_project_boxed_opaque_existential_1(a2, v12);
  MEMORY[0x28223BE20](v14);
  result = (*(v13 + 40))(v11, a3, a3, a4, v12, v13);
  if (!v6)
  {
    v16 = swift_dynamicCast();
    return (*(*(a5 - 8) + 56))(a6, v16 ^ 1u, 1, a5);
  }

  return result;
}

uint64_t sub_2530F2200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = *v4;
  v5[2] = swift_getAssociatedTypeWitness();
  sub_253148974();
  v6 = sub_2531491F4();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v5[12] = *(v7 + 64);
  v5[13] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[14] = v8;
  *v8 = v5;
  v8[1] = sub_2530F235C;

  return sub_2530F0D10();
}

uint64_t sub_2530F235C()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_2530F246C, v1, 0);
}

uint64_t sub_2530F246C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v12 = v0[4];
  v13 = v0[7];
  (*(v3 + 16))(v1, v0[5], v2);
  v7 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[15] = v8;
  *(v8 + 2) = *(v5 + 80);
  *(v8 + 3) = v6;
  *(v8 + 4) = *(v5 + 88);
  *(v8 + 5) = v13;
  *(v8 + 6) = v4;
  *(v8 + 7) = v12;
  (*(v3 + 32))(&v8[v7], v1, v2);

  v9 = swift_task_alloc();
  v0[16] = v9;
  v10 = sub_253148D64();
  *v9 = v0;
  v9[1] = sub_2530F25E8;

  return sub_2530EFA98((v0 + 3), sub_2530F5DE0, v8, v10);
}

uint64_t sub_2530F25E8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_2530F277C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_2530F2710;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2530F2710()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2530F277C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530F27EC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v26 = a2;
  v27 = a3;
  v25 = a6;
  v9 = *a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = v9[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = v9[11];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28[0] = v13;
  v28[1] = AssociatedTypeWitness;
  v28[2] = v15;
  v28[3] = AssociatedConformanceWitness;
  _s15ComposableProxyCMa(0, v28);
  v17 = v9[13];
  v18 = v9[16];
  v19 = sub_253148944();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  sub_25312ABB8(a1 + v17, a1 + v18, MEMORY[0x277D84FA0], v12);
  v20 = v28[5];
  sub_25312919C(v26, 0, v27, a4, a5);
  v22 = v21;

  if (!v20)
  {
    *v25 = v22;
  }

  return result;
}

uint64_t sub_2530F29E0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  v3 = swift_task_alloc();
  v2[11] = v3;
  *v3 = v2;
  v3[1] = sub_2530F2A98;

  return sub_2530F0D10();
}

uint64_t sub_2530F2A98()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_2530F2BA8, v1, 0);
}

uint64_t sub_2530F2BA8()
{
  v41 = v0;
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v6 = *v3++;
      v5 = v6;
      if (v6 > 3)
      {
        if (v5 > 5)
        {
          if (v5 == 6)
          {
            v7 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
            v8 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
            v9 = &protocol conformance descriptor for HomesStore.Accessory.AppleMediaDevice;
            v10 = &qword_27F5806F0;
          }

          else
          {
            v7 = type metadata accessor for HomesStore.User.SharedSettings(0);
            v8 = type metadata accessor for HomesStore.User.SharedSettings;
            v9 = &protocol conformance descriptor for HomesStore.User.SharedSettings;
            v10 = &unk_27F5806E8;
          }
        }

        else if (v5 == 4)
        {
          v7 = type metadata accessor for HomesStore.User(0);
          v8 = type metadata accessor for HomesStore.User;
          v9 = &protocol conformance descriptor for HomesStore.User;
          v10 = &unk_27F580700;
        }

        else
        {
          v7 = type metadata accessor for HomesStore.Zone(0);
          v8 = type metadata accessor for HomesStore.Zone;
          v9 = &protocol conformance descriptor for HomesStore.Zone;
          v10 = &qword_27F5806F8;
        }
      }

      else if (v5 > 1)
      {
        if (v5 == 2)
        {
          v7 = type metadata accessor for HomesStore.Home(0);
          v8 = type metadata accessor for HomesStore.Home;
          v9 = &protocol conformance descriptor for HomesStore.Home;
          v10 = &qword_27F580710;
        }

        else
        {
          v7 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
          v8 = type metadata accessor for HomesStore.HomesRelationshipModel;
          v9 = &protocol conformance descriptor for HomesStore.HomesRelationshipModel;
          v10 = &qword_27F580708;
        }
      }

      else if (v5)
      {
        v7 = type metadata accessor for HomesStore.Room(0);
        v8 = type metadata accessor for HomesStore.Room;
        v9 = &protocol conformance descriptor for HomesStore.Room;
        v10 = &qword_27F580718;
      }

      else
      {
        v7 = type metadata accessor for HomesStore.Accessory(0);
        v8 = type metadata accessor for HomesStore.Accessory;
        v9 = &protocol conformance descriptor for HomesStore.Accessory;
        v10 = &qword_27F580720;
      }

      v11 = sub_2530F5D1C(v10, v8, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2530F4904(0, *(v4 + 2) + 1, 1, v4);
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v4 = sub_2530F4904((v12 > 1), v13 + 1, 1, v4);
      }

      *(v4 + 2) = v14;
      v15 = &v4[16 * v13];
      *(v15 + 4) = v7;
      *(v15 + 5) = v11;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    v14 = *(MEMORY[0x277D84F90] + 16);
    v16 = MEMORY[0x277D84F90];
    if (!v14)
    {
      goto LABEL_36;
    }
  }

  v16 = MEMORY[0x277D84F90];
  v17 = 32;
  do
  {
    v19 = *&v4[v17];
    v20 = swift_conformsToProtocol2();
    if (v20)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = sub_2530EB040(v19, v20);
      v24 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2530F459C(0, *(v16 + 2) + 1, 1, v16);
      }

      v26 = *(v16 + 2);
      v25 = *(v16 + 3);
      if (v26 >= v25 >> 1)
      {
        v16 = sub_2530F459C((v25 > 1), v26 + 1, 1, v16);
      }

      *(v16 + 2) = v26 + 1;
      v18 = &v16[16 * v26];
      *(v18 + 4) = v22;
      *(v18 + 5) = v24;
    }

    v17 += 16;
    --v14;
  }

  while (v14);
LABEL_36:
  *(v0 + 96) = v16;

  if (qword_27F580270 != -1)
  {
    swift_once();
  }

  v27 = sub_253148A94();
  __swift_project_value_buffer(v27, qword_27F581548);

  v28 = sub_253148A74();
  v29 = sub_253149094();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40 = v31;
    *v30 = 136315138;
    v32 = MEMORY[0x259BFC8A0](v16, MEMORY[0x277D837D0]);
    v34 = sub_253146498(v32, v33, &v40);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_2530B8000, v28, v29, "Fetching entities: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x259BFDC60](v31, -1, -1);
    MEMORY[0x259BFDC60](v30, -1, -1);
  }

  v35 = *(v0 + 80);
  sub_2530C25FC(*(v0 + 72) + *(**(v0 + 72) + 128), v0 + 16);
  v36 = swift_allocObject();
  *(v0 + 104) = v36;
  *(v36 + 16) = *(v35 + 80);
  *(v36 + 24) = *(v35 + 88);
  sub_2530BDB14((v0 + 16), v36 + 32);
  v37 = swift_task_alloc();
  *(v0 + 112) = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5815E0, &qword_25314E3A8);
  *v37 = v0;
  v37[1] = sub_2530F31C8;

  return sub_2530EF628(v0 + 56, v16, sub_2530F5CFC, v36, v38);
}

uint64_t sub_2530F31C8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {

    v4 = sub_2530F3364;
  }

  else
  {

    v4 = sub_2530F3348;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2530F337C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a5@<X8>)
{
  v6 = v5;
  v44 = a2;
  v38 = a5;
  v43 = sub_253148944();
  v8 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_253148D44();
  if (!result)
  {
    v13 = MEMORY[0x277D84F98];
LABEL_23:
    *v38 = v13;
    return result;
  }

  v12 = 0;
  v39 = v8 + 16;
  v40 = v8;
  v42 = (v8 + 8);
  v13 = MEMORY[0x277D84F98];
  v41 = AssociatedTypeWitness;
  while (1)
  {
    v15 = sub_253148CF4();
    sub_253148CC4();
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = *(a1 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_25;
    }

LABEL_7:
    v18 = v44[3];
    v19 = v44[4];
    __swift_project_boxed_opaque_existential_1(v44, v18);
    (*(v19 + 32))(v48, v16, v18, v19);
    if (v6)
    {

      return swift_unknownObjectRelease();
    }

    v45 = 0;
    v20 = a1;
    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    v21 = v46;
    sub_2531493D4();
    sub_2530C25FC(v48, v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v13;
    v24 = sub_25311D834(v21);
    v25 = v13[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_26;
    }

    v28 = v23;
    if (v13[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v13 = v49;
        if (v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_25312B6DC();
        v13 = v49;
        if (v28)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_25312C8DC(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_25311D834(v46);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_28;
      }

      v24 = v29;
      v13 = v49;
      if (v28)
      {
LABEL_3:
        v14 = (v13[7] + 40 * v24);
        __swift_destroy_boxed_opaque_existential_0(v14);
        sub_2530BDB14(v47, v14);
        swift_unknownObjectRelease();
        (*v42)(v46, v43);
        goto LABEL_4;
      }
    }

    v13[(v24 >> 6) + 8] |= 1 << v24;
    v31 = v40;
    v32 = v46;
    v33 = v43;
    (*(v40 + 16))(v13[6] + *(v40 + 72) * v24, v46, v43);
    sub_2530BDB14(v47, v13[7] + 40 * v24);
    swift_unknownObjectRelease();
    (*(v31 + 8))(v32, v33);
    v34 = v13[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_27;
    }

    v13[2] = v36;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v48);
    a1 = v20;
    result = sub_253148D44();
    ++v12;
    v6 = v45;
    if (v17 == result)
    {
      goto LABEL_23;
    }
  }

  v16 = sub_2531493F4();
  v17 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_7;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_253149784();
  __break(1u);
  return result;
}

uint64_t sub_2530F3770(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581610, &qword_25314E3F0);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[10] = v6;
  *v6 = v3;
  v6[1] = sub_2530F3880;

  return sub_2530F0D10();
}

uint64_t sub_2530F3880()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_2530F3990, v1, 0);
}

uint64_t sub_2530F3990()
{
  v17 = v0;
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2530F4DB0(0, v2, 0);
    v3 = v15;
    v4 = v1 + 40;
    do
    {
      (*(*v4 + 48))(&v16);
      v5 = v16;
      v7 = *(v15 + 16);
      v6 = *(v15 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2530F4DB0((v6 > 1), v7 + 1, 1);
      }

      *(v15 + 16) = v7 + 1;
      *(v15 + v7 + 32) = v5;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  v0[11] = v3;
  v8 = (v0[4] + *(*v0[4] + 112));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v14 = (*(v10 + 16) + **(v10 + 16));
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_2530F3B94;
  v12 = v0[9];

  return v14(v12, v3, v9, v10);
}

uint64_t sub_2530F3B94()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_2530F3CC0, v1, 0);
}

uint64_t sub_2530F3CC0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  (*(v3 + 16))(v2, v1, v4);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v2, v4);
  type metadata accessor for AnyModelStateChange(0);
  sub_253148F34();
  (*(v3 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2530F3DFC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581618, &qword_25314E408);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530F3EC8, 0, 0);
}

uint64_t sub_2530F3EC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581610, &qword_25314E3F0);
  sub_253148E54();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_2530F3F8C;
  v2 = v0[4];
  v3 = v0[2];

  return MEMORY[0x2822003F0](v3, v2);
}

uint64_t sub_2530F3F8C()
{

  return MEMORY[0x2822009F8](sub_2530C5B70, 0, 0);
}

uint64_t sub_2530F4088(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2530BF218;

  return sub_2530F3770(a1, a2);
}

uint64_t sub_2530F4134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2530CD6C0;

  return sub_2530F1AB0(a1, a2, a3, a4);
}

uint64_t sub_2530F41F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2530C8C20;

  return sub_2530F2200(a1, a2, a3, a4);
}

uint64_t sub_2530F42B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2530CD6C0;

  return sub_2530F29E0(a1);
}

uint64_t sub_2530F434C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2530CD684;

  return sub_2530EFA98(a1, a2, a3, a4);
}

void *sub_2530F4454(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581630, &qword_25314E420);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581378, &unk_25314D910);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2530F459C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5815E8, &qword_25314E3B0);
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

void *sub_2530F471C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_2530F4904(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581600, &qword_25314E3C0);
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

char *sub_2530F4A08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816B0, &qword_25314E490);
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

void *sub_2530F4B74(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_2530F4D50(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2530F4F78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2530F4D70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2530F58D4(a1, a2, a3, *v3, &qword_27F581628, &qword_25314E418, &qword_27F5806C0, &qword_25314C460);
  *v3 = result;
  return result;
}

char *sub_2530F4DB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2530F507C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2530F4DD0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2530F5170(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2530F4DF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2530F52B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2530F4E10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2530F55E8(a1, a2, a3, *v3, &qword_27F581650, &qword_25314E440, type metadata accessor for AnyModelStateChange);
  *v3 = result;
  return result;
}

char *sub_2530F4E54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2530F53C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2530F4E74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2530F54C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2530F4E94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2530F55E8(a1, a2, a3, *v3, &qword_27F581670, &qword_25314E460, type metadata accessor for AnyModelStateChange.Tombstone);
  *v3 = result;
  return result;
}

char *sub_2530F4ED8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2530F57C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2530F4EF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2530F58D4(a1, a2, a3, *v3, &qword_27F581698, &qword_25314E480, &qword_27F5816A0, &qword_253151500);
  *v3 = result;
  return result;
}

char *sub_2530F4F38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2530F5ABC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2530F4F58(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2530F5BC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2530F4F78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581638, &qword_25314E428);
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

char *sub_2530F507C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581620, &qword_25314E410);
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

void *sub_2530F5170(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816B8, &qword_25314E498);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5816C0, &qword_25314E4A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2530F52B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5815E8, &qword_25314E3B0);
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

char *sub_2530F53C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581600, &qword_25314E3C0);
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

char *sub_2530F54C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581678, &qword_25314E468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2530F55E8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_2530F57C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581680, &qword_25314F1B0);
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

void *sub_2530F58D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_2530F5ABC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581668, &qword_25314E458);
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

void *sub_2530F5BC8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581658, &qword_25314E448);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581660, &qword_25314E450);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2530F5D1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2530F5D8C()
{
  result = qword_27F5815F8;
  if (!qword_27F5815F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5815F8);
  }

  return result;
}

uint64_t sub_2530F5DE0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  sub_253148974();
  v5 = *(sub_2531491F4() - 8);
  return sub_2530F27EC(*(v1 + 48), *(v1 + 56), v1 + ((*(v5 + 80) + 64) & ~*(v5 + 80)), v3, v4, a1);
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2530F5F4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  sub_253148974();
  v7 = *(sub_2531491F4() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2530F03D0(a1, v2 + v8, *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v5, a2, v6);
}

uint64_t sub_2530F6060@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 48))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2530F60C8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581610, &qword_25314E3F0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2530BF218;

  return sub_2530F3DFC(a1, v1 + v5);
}

uint64_t sub_2530F61B0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_2530F6600(319, &qword_27F581748, &_s22ManagedObjectListeningPMp);
    if (v3 <= 0x3F)
    {
      result = sub_2530F6600(319, &qword_27F581750, &protocol descriptor for ModelStateSubscriptionManaging);
      if (v4 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getExtendedExistentialTypeMetadata_unique();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2530F62BC(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
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

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
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

double sub_2530F6408(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v11 = v10 + 1;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&a1[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&a1[v9] = 0;
      }

      else if (v13)
      {
        a1[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v20 = &a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v20 + 8) = 0u;
          *(v20 + 24) = 0u;
          *v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v20 + 24) = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        v19();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFD8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&a1[v9] = v15;
    }

    else
    {
      *&a1[v9] = v15;
    }
  }

  else if (v13)
  {
    a1[v9] = v15;
  }

  return result;
}

uint64_t sub_2530F6600(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2530F6678()
{
  result = qword_27F580978;
  if (!qword_27F580978)
  {
    type metadata accessor for HMCDAccessoryModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580978);
  }

  return result;
}

uint64_t sub_2530F66DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HomesStore.Accessory(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 modelID];
  sub_253148924();

  v9 = [a1 name];
  v10 = sub_253148B64();
  v12 = v11;

  v13 = &v7[v4[5]];
  *v13 = v10;
  v13[1] = v12;
  sub_2530FBCA4();
  HomesStore.Accessory.Category.init(rawValue:)([a1 category], &v29);
  v14 = v29;
  if (v29 == 36)
  {
    v14 = 0;
  }

  v7[v4[6]] = v14;
  v15 = [a1 model];
  if (v15)
  {
    v16 = v15;
    v17 = sub_253148B64();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = &v7[v4[8]];
  *v20 = v17;
  v20[1] = v19;
  v21 = [a1 firmwareVersion];
  if (v21)
  {
    v22 = v21;
    v23 = sub_253148B64();
    v25 = v24;
  }

  else
  {

    v23 = 0;
    v25 = 0;
  }

  v26 = &v7[v4[9]];
  *v26 = v23;
  v26[1] = v25;
  sub_2530F6AB8(v7, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_2530F68F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB0, &qword_25314D550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314CE10;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x44496C65646F6DLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x79726F6765746163;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x6C65646F6DLL;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x657261776D726966;
  *(inited + 144) = 0xEF6E6F6973726556;
  v1 = sub_253109C78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB8, &qword_25314D638);
  result = swift_arrayDestroy();
  qword_27F58D098 = v1;
  return result;
}

uint64_t sub_2530F6A5C()
{
  if (qword_27F580278 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2530F6AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Accessory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HomesStore.User.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomesStore.User.handle.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomesStore.User(0) + 20));

  return v1;
}

uint64_t type metadata accessor for HomesStore.User(uint64_t a1)
{
  result = qword_27F5817B8;
  if (!qword_27F5817B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static HomesStore.User.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for HomesStore.User(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_253149734();
}

uint64_t sub_2530F6C9C()
{
  if (*v0)
  {
    return 0x656C646E6168;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2530F6CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_253149734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_253149734();

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

uint64_t sub_2530F6D98(uint64_t a1)
{
  v2 = sub_2530F6FCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2530F6DD4(uint64_t a1)
{
  v2 = sub_2530F6FCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.User.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581768, &qword_25314E5A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2530F6FCC();
  sub_253149894();
  v8[15] = 0;
  sub_253148944();
  sub_2530F7AB4(&qword_27F580630, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2531496D4();
  if (!v1)
  {
    type metadata accessor for HomesStore.User(0);
    v8[14] = 1;
    sub_2531496B4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2530F6FCC()
{
  result = qword_27F581770;
  if (!qword_27F581770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581770);
  }

  return result;
}

uint64_t HomesStore.User.hash(into:)(uint64_t a1)
{
  sub_253148944();
  sub_2530F7AB4(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  type metadata accessor for HomesStore.User(0);

  return sub_253148BB4();
}

uint64_t HomesStore.User.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_2530F7AB4(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  type metadata accessor for HomesStore.User(0);
  sub_253148BB4();
  return sub_253149844();
}

uint64_t HomesStore.User.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_253148944();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581778, &qword_25314E5A8);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for HomesStore.User(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2530F6FCC();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_2530F7AB4(&qword_27F5805E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v26;
  sub_253149664();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_253149644();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_2530F76B8(v19, v18);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2530F771C(v19);
}

uint64_t sub_2530F74D0(uint64_t a1)
{
  sub_253149814();
  sub_253148944();
  sub_2530F7AB4(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_2530F7578(uint64_t a1, uint64_t a2)
{
  sub_253148944();
  sub_2530F7AB4(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();

  return sub_253148BB4();
}

uint64_t sub_2530F7614(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  sub_253148944();
  sub_2530F7AB4(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_2530F76B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.User(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530F771C(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.User(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PartialModelRelationshipDescriptor<>.user.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581780, &qword_25314E5B0);

  return MEMORY[0x2821FEAF0](v0, &unk_27F5803A0);
}

{
  if (qword_27F580338 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2530F77B8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5817E8, &qword_25314E888);
  swift_allocObject();

  v3 = sub_253141CE4(v2);

  qword_27F581758 = v3;
  return result;
}

uint64_t sub_2530F784C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5817E0, &unk_25314E850);
  swift_allocObject();

  v3 = sub_253141D10(v2);

  qword_27F581760 = v3;
  return result;
}

uint64_t static PartialModelRelationshipDescriptor<>.userSharedSettings.getter()
{
  return sub_2530EABF8(&qword_27F580288, &qword_27F581760, sub_2530F784C);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582950, &qword_253152818);

  return MEMORY[0x2821FEAF0](v0, &unk_27F580440);
}

uint64_t sub_2530F78E0(void *a1)
{
  a1[1] = sub_2530F7AB4(&qword_27F581788, type metadata accessor for HomesStore.User, &protocol conformance descriptor for HomesStore.User);
  a1[2] = sub_2530F7AB4(&qword_27F581790, type metadata accessor for HomesStore.User, &protocol conformance descriptor for HomesStore.User);
  a1[3] = sub_2530F7AB4(&qword_27F581798, type metadata accessor for HomesStore.User, &protocol conformance descriptor for HomesStore.User);
  a1[4] = sub_2530F7AB4(&qword_27F5817A0, type metadata accessor for HomesStore.User, &protocol conformance descriptor for HomesStore.User);
  result = sub_2530F7AB4(&qword_27F5817A8, type metadata accessor for HomesStore.User, &protocol conformance descriptor for HomesStore.User);
  a1[5] = result;
  return result;
}

uint64_t sub_2530F7AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2530F7B38()
{
  result = qword_27F5817C8;
  if (!qword_27F5817C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5817C8);
  }

  return result;
}

unint64_t sub_2530F7B90()
{
  result = qword_27F5817D0;
  if (!qword_27F5817D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5817D0);
  }

  return result;
}

unint64_t sub_2530F7BE8()
{
  result = qword_27F5817D8;
  if (!qword_27F5817D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5817D8);
  }

  return result;
}

uint64_t sub_2530F7C3C(uint64_t a1)
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

uint64_t sub_2530F7D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v28 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807F0, &qword_25314C5C8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818C0, &unk_25314E9E0);
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807E0, &qword_25314C5B8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  swift_beginAccess();
  result = *(v4 + 112);
  v18 = *(result + 16);
  if (v18)
  {
    v19 = *(v13 + 36);
    v20 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v33 = *(v14 + 72);
    v34 = v19;
    v21 = v7;
    v31 = (v7 + 16);
    v32 = a2;
    v23 = v27;
    v22 = v28;
    v29 = (v21 + 8);
    v30 = v10;
    v24 = (v26 + 8);
    v26 = result;

    do
    {
      sub_2530FB9F4(v20, v16);
      (*v31)(v9, &v16[v34], v6);
      sub_2530CD33C(v16, &qword_27F5807E0, &qword_25314C5B8);
      v35 = v23;
      v36 = v32;
      v37 = v22;

      sub_253148E34();
      (*v29)(v9, v6);
      (*v24)(v12, v30);
      v20 += v33;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t sub_2530F800C()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F5817F0);
  __swift_project_value_buffer(v0, qword_27F5817F0);
  return sub_253148A84();
}

uint64_t *sub_2530F8088()
{
  v1 = *v0;
  v2 = *v0;
  if (*(v0 + *(*v0 + 128)))
  {

    sub_253148EA4();

    v1 = *v0;
  }

  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 104));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2530F81D4()
{
  sub_2530F8088();

  return MEMORY[0x282200960](v0);
}

void sub_2530F8218()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v33 - v6;
  (*(v3 + 40))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  sub_2530FB890(v9, v9);
  swift_allocObject();
  v10 = sub_253148CB4();
  (*(v3 + 48))(v4, v3);
  sub_253148D64();
  v11 = (*(AssociatedConformanceWitness + 32))(v10, AssociatedTypeWitness, AssociatedConformanceWitness);

  (*(v34 + 8))(v7, AssociatedTypeWitness);
  if (v11)
  {
    v12 = *(*v1 + 136);
    v13 = *(v1 + v12);
    *(v1 + v12) = v11;
    v14 = v11;

    if (qword_27F580290 != -1)
    {
      swift_once();
    }

    v15 = sub_253148A94();
    __swift_project_value_buffer(v15, qword_27F5817F0);

    v16 = sub_253148A74();
    v17 = sub_253149094();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136315138;
      v35 = *(v1 + v12);
      v36 = v19;
      v20 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818B0, &qword_25314E9C8);
      v21 = sub_253148B74();
      v23 = sub_253146498(v21, v22, &v36);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_2530B8000, v16, v17, "Setting current token to %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x259BFDC60](v19, -1, -1);
      MEMORY[0x259BFDC60](v18, -1, -1);
    }
  }

  else
  {
    if (qword_27F580290 != -1)
    {
      swift_once();
    }

    v24 = sub_253148A94();
    __swift_project_value_buffer(v24, qword_27F5817F0);

    v25 = sub_253148A74();
    v26 = sub_253149094();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136315138;
      v35 = *(v1 + *(*v1 + 136));
      v29 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818B0, &qword_25314E9C8);
      v30 = sub_253148B74();
      v32 = sub_253146498(v30, v31, &v36);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_2530B8000, v25, v26, "Unable to update current token, leaving as %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x259BFDC60](v28, -1, -1);
      MEMORY[0x259BFDC60](v27, -1, -1);
    }
  }
}

uint64_t sub_2530F8750(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581888, &qword_25314E9A8);
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v2[13] = *(v5 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = *(v3 + 88);
  v2[17] = *(v3 + 80);
  v2[18] = swift_getAssociatedTypeWitness();
  v2[19] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[20] = AssociatedTypeWitness;
  v2[21] = *(AssociatedTypeWitness - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530F8934, v1, 0);
}

uint64_t sub_2530F8934()
{
  v49 = v0;
  if (qword_27F580290 != -1)
  {
    swift_once();
  }

  v1 = sub_253148A94();
  __swift_project_value_buffer(v1, qword_27F5817F0);

  v2 = sub_253148A74();
  v3 = sub_2531490A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[21];
    v5 = v0[22];
    v6 = v0[20];
    v46 = v0[17];
    v7 = v0[16];
    v8 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48 = v45;
    *v8 = 136315138;
    (*(v7 + 48))(v46, v7);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 8))(v6, AssociatedConformanceWitness);
    v12 = v11;
    (*(v4 + 8))(v5, v6);

    if (!v12)
    {
      __break(1u);
      return result;
    }

    v14 = sub_253146498(v10, v12, &v48);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_2530B8000, v2, v3, "Persistent store changed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x259BFDC60](v45, -1, -1);
    MEMORY[0x259BFDC60](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[10];
  v16 = *(*v15 + 136);
  v17 = *(v15 + v16);
  v0[23] = v17;
  v18 = v17;
  sub_253148994();
  v19 = *(v15 + v16);
  *(v15 + v16) = v0[5];

  if (v17)
  {
    v20 = v0[16];
    v21 = v0[14];
    v22 = v0[15];
    v23 = v0[12];
    v47 = v0[17];
    v24 = v0[10];
    v25 = v0[11];
    v0[7] = v18;
    v26 = sub_2530CF970(0, &qword_27F5818A8, 0x277CBE4C0);
    v27 = v18;
    MEMORY[0x259BFC580](v0 + 7, v26);
    v0[8] = v24;
    (*(v23 + 16))(v21, v22, v25);
    v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v29 = swift_allocObject();
    v0[24] = v29;
    *(v29 + 16) = v47;
    *(v29 + 24) = v20;
    (*(v23 + 32))(v29 + v28, v21, v25);
    v30 = swift_task_alloc();
    v0[25] = v30;
    v32 = _s21ManagedObjectListenerCMa(0, v47, v20, v31);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818B8, &unk_25314E9D0);
    WitnessTable = swift_getWitnessTable();
    *v30 = v0;
    v30[1] = sub_2530F8EBC;

    return sub_2530EEC10((v0 + 2), sub_2530FB958, v29, v32, v33, WitnessTable);
  }

  else
  {

    v35 = sub_253148A74();
    v36 = sub_2531490C4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = v38;
      *v37 = 136315138;
      v39 = *(v15 + v16);
      v0[6] = v39;
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818B0, &qword_25314E9C8);
      v41 = sub_253148B74();
      v43 = sub_253146498(v41, v42, &v48);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_2530B8000, v35, v36, "No previous CoreData token - ignoring change notification (current token: %s.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x259BFDC60](v38, -1, -1);
      MEMORY[0x259BFDC60](v37, -1, -1);
    }

    v44 = v0[1];

    return v44();
  }
}

void sub_2530F8EBC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 80);

    MEMORY[0x2822009F8](sub_2530F8FFC, v3, 0);
  }
}

uint64_t sub_2530F8FFC()
{
  v1 = *(v0 + 16);
  *(v0 + 208) = v1;
  if (v1)
  {
    v2 = *(v0 + 80);
    *(v0 + 216) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
    v3 = *(v2 + *(*v2 + 120));
    *(v0 + 232) = v3;

    return MEMORY[0x2822009F8](sub_2530F9104, v3, 0);
  }

  else
  {
    v4 = *(v0 + 184);
    (*(*(v0 + 96) + 8))(*(v0 + 120), *(v0 + 88));

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2530F9104()
{
  v1 = v0[28];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[10];
  sub_2530F7D04(v3, v1, v2);
  sub_2530DCF54(v3, v1, v2);

  return MEMORY[0x2822009F8](sub_2530F91A0, v4, 0);
}

uint64_t sub_2530F91A0()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[12];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

void sub_2530F9248(uint64_t a1@<X0>, unint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818C8, &unk_25314E9F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v71 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581888, &qword_25314E9A8);
  sub_253148994();
  v10 = v76;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_2530F9A48(v10, a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v4)
  {

    goto LABEL_3;
  }

  v14 = v13;
  v75 = v9;
  v71[1] = 0;

  if (v14 >> 62)
  {
    goto LABEL_51;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = v75;
  if (!v16)
  {
    goto LABEL_52;
  }

  do
  {
    v71[0] = a4;
    *&v76 = MEMORY[0x277D84F98];
    *(&v76 + 1) = MEMORY[0x277D84F98];
    v77 = MEMORY[0x277D84F98];
    v74 = v16 - 1;
    if (v16 < 1)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      sub_2530CF970(0, &qword_27F5818D0, 0x277CBE448);
      sub_253149784();
      __break(1u);
      return;
    }

    v18 = 0;
    a4 = v14 & 0xC000000000000001;
    *&v15 = 138412290;
    v73 = v15;
    *&v15 = 134218242;
    v72 = v15;
    if ((v14 & 0xC000000000000001) != 0)
    {
LABEL_8:
      v19 = MEMORY[0x259BFD000](v18, v14);
      goto LABEL_10;
    }

    while (1)
    {
      v19 = *(v14 + 8 * v18 + 32);
LABEL_10:
      v20 = v19;
      if (qword_27F580290 != -1)
      {
        swift_once();
      }

      v21 = sub_253148A94();
      __swift_project_value_buffer(v21, qword_27F5817F0);
      v22 = v20;
      v23 = sub_253148A74();
      v24 = sub_2531490A4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = v73;
        *(v25 + 4) = v22;
        *v26 = v22;
        v27 = v22;
        _os_log_impl(&dword_2530B8000, v23, v24, "Processing change: %@", v25, 0xCu);
        sub_2530CD33C(v26, &qword_27F581E10, &qword_25314F640);
        v28 = v26;
        v17 = v75;
        MEMORY[0x259BFDC60](v28, -1, -1);
        MEMORY[0x259BFDC60](v25, -1, -1);
      }

      v29 = [v22 changeType];
      if (v29 == 2)
      {
        sub_25310D890(v22);

        goto LABEL_44;
      }

      if (v29 == 1)
      {
        sub_25310D68C(v22);

        goto LABEL_44;
      }

      if (!v29)
      {
        break;
      }

      if (qword_27F5802A8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v21, qword_27F581A28);
      v46 = v22;
      v47 = sub_253148A74();
      v48 = sub_2531490B4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = v72;
        *(v49 + 4) = [v46 changeType];

        *(v49 + 12) = 2112;
        *(v49 + 14) = v46;
        *v50 = v46;
        v51 = v46;
        _os_log_impl(&dword_2530B8000, v47, v48, "Skipping change with unknown change type %ld: %@", v49, 0x16u);
        sub_2530CD33C(v50, &qword_27F581E10, &qword_25314F640);
        v52 = v50;
        v17 = v75;
        MEMORY[0x259BFDC60](v52, -1, -1);
        MEMORY[0x259BFDC60](v49, -1, -1);
      }

      else
      {
      }

LABEL_44:
      if (v74 == v18)
      {

        v65 = v77;
        v66 = v71[0];
        *v71[0] = v76;
        *(v66 + 16) = v65;
        return;
      }

      ++v18;
      if (a4)
      {
        goto LABEL_8;
      }
    }

    v30 = [v22 changedObjectID];
    v31 = v30;
    if (*(v76 + 16))
    {
      sub_25311DB04(v30);
      if (v32)
      {
        goto LABEL_54;
      }
    }

    v33 = v77;
    if (v77[2])
    {
      v34 = sub_25311DB04(v31);
      if (v35)
      {
        goto LABEL_49;
      }
    }

    v36 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
    (*(*(v36 - 8) + 56))(v17, 1, 1, v36);
    sub_2530CD33C(v17, &qword_27F5818C8, &unk_25314E9F0);
    v37 = v31;
    v33 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v33;
    v17 = sub_25311DB04(v37);
    v40 = v33[2];
    v41 = (v39 & 1) == 0;
    v34 = v40 + v41;
    if (!__OFADD__(v40, v41))
    {
      v42 = v39;
      if (v33[3] < v34)
      {
        sub_25312DBC4(v34, isUniquelyReferenced_nonNull_native);
        v43 = sub_25311DB04(v37);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_55;
        }

        v17 = v43;
        v45 = v78;
        if ((v42 & 1) == 0)
        {
          goto LABEL_37;
        }

LABEL_35:
        v53 = v45[7];
        v54 = *(v53 + 8 * v17);
        *(v53 + 8 * v17) = v37;

LABEL_39:
        *&v76 = v45;
        v59 = *(&v76 + 1);
        v60 = sub_25311DB04(v37);
        v17 = v75;
        if (v61)
        {
          v62 = v60;
          v63 = swift_isUniquelyReferenced_nonNull_native();
          v78 = v59;
          if ((v63 & 1) == 0)
          {
            sub_25312C0C0();
            v59 = v78;
          }

          v64 = *(*(v59 + 56) + 16 * v62);
          sub_25312F03C(v62, v59);

          *(&v76 + 1) = v59;
          v17 = v75;
        }

        else
        {
        }

        goto LABEL_44;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v45 = v78;
        if (v39)
        {
          goto LABEL_35;
        }
      }

      else
      {
        sub_25312C244();
        v45 = v78;
        if (v42)
        {
          goto LABEL_35;
        }
      }

LABEL_37:
      v45[(v17 >> 6) + 8] |= 1 << v17;
      *(v45[6] + 8 * v17) = v37;
      *(v45[7] + 8 * v17) = v37;
      v55 = v45[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_50;
      }

      v45[2] = v57;
      v58 = v37;
      goto LABEL_39;
    }

    __break(1u);
LABEL_49:
    v67 = v33[7];
    a4 = v34;
    v68 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
    v69 = *(v68 - 8);
    sub_2530FBB74(v67 + *(v69 + 72) * a4, v17);
    v70 = *(v69 + 56);
    v14 = v69 + 56;
    v70(v17, 0, 1, v68);
    sub_2530CD33C(v17, &qword_27F5818C8, &unk_25314E9F0);
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v16 = sub_2531492E4();
    v17 = v75;
  }

  while (v16);
LABEL_52:

LABEL_3:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
}

unint64_t sub_2530F9A48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = [objc_opt_self() fetchHistoryAfterToken_];
  [v9 setResultType_];
  [v9 setFetchBatchSize_];
  if (qword_27F580290 != -1)
  {
    swift_once();
  }

  v10 = sub_253148A94();
  __swift_project_value_buffer(v10, qword_27F5817F0);
  v11 = a1;
  v12 = sub_253148A74();
  v13 = sub_253149094();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = v9;
    v16 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v16 = a1;
    v17 = v11;
    _os_log_impl(&dword_2530B8000, v12, v13, "Fetching history since %@", v14, 0xCu);
    sub_2530CD33C(v16, &qword_27F581E10, &qword_25314F640);
    v18 = v16;
    v9 = v15;
    MEMORY[0x259BFDC60](v18, -1, -1);
    v19 = v14;
    v5 = v4;
    MEMORY[0x259BFDC60](v19, -1, -1);
  }

  (*(a4 + 80))(0, a3, a4);
  if (v5)
  {
    v20 = sub_253148A74();
    v21 = sub_2531490B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2530B8000, v20, v21, "Failed to unpin managed object context.", v22, 2u);
      MEMORY[0x259BFDC60](v22, -1, -1);
    }

    swift_willThrow();
    return v21;
  }

  v23 = (*(a4 + 40))(v9, a3, a4);
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    goto LABEL_21;
  }

  if ([v24 result])
  {
    sub_253149224();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (!*(&v32 + 1))
  {
    sub_2530CD33C(v33, &qword_27F5818A0, &qword_25314E9C0);
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818D8, &qword_25314EA00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:

    return MEMORY[0x277D84F90];
  }

  v26 = v34;

  v27 = sub_253148A74();
  v28 = sub_253149094();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    if (v26 >> 62)
    {
      v30 = sub_2531492E4();
    }

    else
    {
      v30 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v29 + 4) = v30;

    _os_log_impl(&dword_2530B8000, v27, v28, "Found %ld transactions since last token.", v29, 0xCu);
    MEMORY[0x259BFDC60](v29, -1, -1);
  }

  else
  {
  }

  v21 = sub_2530FB4F8(v26);

  return v21;
}

uint64_t sub_2530F9FBC()
{
  v1[2] = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v1[3] = swift_task_alloc();
  v1[4] = *(v2 + 88);
  v1[5] = *(v2 + 80);
  v1[6] = swift_getAssociatedTypeWitness();
  v1[7] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[8] = AssociatedTypeWitness;
  v1[9] = *(AssociatedTypeWitness - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530FA15C, v0, 0);
}

uint64_t sub_2530FA15C()
{
  v2 = v0[4].i64[1];
  v1 = v0[5].i64[0];
  v3 = v0[4].i64[0];
  v4 = v0[2].i64[1];
  v5 = v0[2].i64[0];
  sub_2530F8218();
  (*(v5 + 48))(v4, v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = (*(AssociatedConformanceWitness + 8))(v3, AssociatedConformanceWitness);
  v9 = v8;
  result = (*(v2 + 8))(v1, v3);
  if (v9)
  {
    v12 = v0[1].i64[0];
    v11 = v0[1].i64[1];
    v18 = v0[2];
    v13 = sub_253149134();
    v14 = sub_253148DE4();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[1].i64[0] = 0;
    v16[1].i64[1] = 0;
    v16[2] = vextq_s8(v18, v18, 8uLL);
    v16[3].i64[0] = v13;
    v16[3].i64[1] = v15;
    v16[4].i64[0] = v7;
    v16[4].i64[1] = v9;
    *(v12 + *(*v12 + 128)) = sub_253112858(0, 0, v11, &unk_25314E9A0, v16);

    v17 = v0->i64[1];

    return v17();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2530FA3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[34] = a6;
  v7[35] = a7;
  v7[32] = a4;
  v7[33] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581888, &qword_25314E9A8);
  v7[36] = v8;
  v7[37] = *(v8 - 8);
  v7[38] = swift_task_alloc();
  v9 = sub_253148414();
  v7[39] = v9;
  v7[40] = *(v9 - 8);
  v7[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581890, &unk_25314E9B0);
  v7[42] = swift_task_alloc();
  v10 = sub_253149124();
  v7[43] = v10;
  v7[44] = *(v10 - 8);
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530FA57C, 0, 0);
}

uint64_t sub_2530FA57C()
{

  sub_253149114();
  swift_beginAccess();
  v1 = *MEMORY[0x277CBE200];
  v0[46] = *MEMORY[0x277CBE300];
  v0[47] = v1;
  v2 = sub_2530FB4A0();
  v3 = swift_task_alloc();
  v0[48] = v3;
  *v3 = v0;
  v3[1] = sub_2530FA66C;
  v4 = v0[42];
  v5 = v0[43];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_2530FA66C()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_2530FAF08;
  }

  else
  {
    v2 = sub_2530FA780;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2530FA79C()
{
  v54 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(*(v0 + 328), v1, v2);
    Strong = swift_weakLoadStrong();
    *(v0 + 400) = Strong;
    if (Strong)
    {
      v5 = sub_253148404();
      if (v5)
      {
        v6 = v5;
        *(v0 + 184) = sub_253148B64();
        *(v0 + 192) = v7;
        sub_253149364();
        if (*(v6 + 16))
        {
          v8 = sub_25311D980(v0 + 16);
          if (v9)
          {
            sub_2530C0304(*(v6 + 56) + 32 * v8, v0 + 96);
            sub_2530FB904(v0 + 16);

            if (*(v0 + 120))
            {
              if (swift_dynamicCast())
              {
                v11 = *(v0 + 200);
                v10 = *(v0 + 208);
                if ((v11 != *(v0 + 272) || v10 != *(v0 + 280)) && (sub_253149734() & 1) == 0)
                {
                  if (qword_27F580290 != -1)
                  {
                    swift_once();
                  }

                  v39 = sub_253148A94();
                  __swift_project_value_buffer(v39, qword_27F5817F0);

                  v40 = sub_253148A74();
                  v41 = sub_2531490A4();

                  v42 = os_log_type_enabled(v40, v41);
                  v43 = *(v0 + 320);
                  v44 = *(v0 + 328);
                  v45 = *(v0 + 312);
                  if (v42)
                  {
                    v49 = *(v0 + 272);
                    v50 = *(v0 + 280);
                    v52 = *(v0 + 312);
                    v46 = swift_slowAlloc();
                    v51 = v44;
                    v47 = swift_slowAlloc();
                    v53 = v47;
                    *v46 = 136315394;
                    *(v46 + 4) = sub_253146498(v49, v50, &v53);
                    *(v46 + 12) = 2080;
                    v48 = sub_253146498(v11, v10, &v53);

                    *(v46 + 14) = v48;
                    _os_log_impl(&dword_2530B8000, v40, v41, "Persistent store identifier mismatch: expected %s, got %s", v46, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x259BFDC60](v47, -1, -1);
                    MEMORY[0x259BFDC60](v46, -1, -1);

                    (*(v43 + 8))(v51, v52);
                  }

                  else
                  {

                    (*(v43 + 8))(v44, v45);
                  }

                  goto LABEL_32;
                }

                v12 = sub_253148404();
                if (v12)
                {
                  v13 = v12;
                  *(v0 + 216) = sub_253148B64();
                  *(v0 + 224) = v14;
                  sub_253149364();
                  if (*(v13 + 16))
                  {
                    v15 = sub_25311D980(v0 + 56);
                    if (v16)
                    {
                      sub_2530C0304(*(v13 + 56) + 32 * v15, v0 + 128);
                      sub_2530FB904(v0 + 56);

                      if (*(v0 + 152))
                      {
                        v17 = sub_2530CF970(0, &qword_27F5818A8, 0x277CBE4C0);
                        if (swift_dynamicCast())
                        {
                          v18 = *(v0 + 240);
                          *(v0 + 408) = v18;
                          *(v0 + 248) = v18;
                          v19 = v18;
                          MEMORY[0x259BFC580](v0 + 248, v17);
                          v20 = swift_task_alloc();
                          *(v0 + 416) = v20;
                          *v20 = v0;
                          v20[1] = sub_2530FAF94;
                          v21 = *(v0 + 304);

                          return sub_2530F8750(v21);
                        }

                        goto LABEL_38;
                      }

LABEL_37:
                      sub_2530CD33C(v0 + 128, &qword_27F5818A0, &qword_25314E9C0);
LABEL_38:
                      if (qword_27F580290 != -1)
                      {
                        swift_once();
                      }

                      v37 = sub_253148A94();
                      __swift_project_value_buffer(v37, qword_27F5817F0);
                      v25 = sub_253148A74();
                      v26 = sub_2531490A4();
                      v38 = os_log_type_enabled(v25, v26);
                      v29 = *(v0 + 320);
                      v28 = *(v0 + 328);
                      v30 = *(v0 + 312);
                      if (!v38)
                      {
                        goto LABEL_31;
                      }

                      v31 = swift_slowAlloc();
                      *v31 = 0;
                      v32 = "NSPersistentStoreRemoteChange notification missing history token";
LABEL_30:
                      _os_log_impl(&dword_2530B8000, v25, v26, v32, v31, 2u);
                      MEMORY[0x259BFDC60](v31, -1, -1);
LABEL_31:

                      (*(v29 + 8))(v28, v30);
LABEL_32:
                      v33 = sub_2530FB4A0();
                      v34 = swift_task_alloc();
                      *(v0 + 384) = v34;
                      *v34 = v0;
                      v34[1] = sub_2530FA66C;
                      v35 = *(v0 + 336);
                      v36 = *(v0 + 344);

                      return MEMORY[0x282200308](v35, v36, v33);
                    }
                  }

                  sub_2530FB904(v0 + 56);
                }

                *(v0 + 128) = 0u;
                *(v0 + 144) = 0u;
                goto LABEL_37;
              }

LABEL_26:
              if (qword_27F580290 != -1)
              {
                swift_once();
              }

              v24 = sub_253148A94();
              __swift_project_value_buffer(v24, qword_27F5817F0);
              v25 = sub_253148A74();
              v26 = sub_2531490A4();
              v27 = os_log_type_enabled(v25, v26);
              v29 = *(v0 + 320);
              v28 = *(v0 + 328);
              v30 = *(v0 + 312);
              if (!v27)
              {
                goto LABEL_31;
              }

              v31 = swift_slowAlloc();
              *v31 = 0;
              v32 = "No store identifier in persistent store changed notification.";
              goto LABEL_30;
            }

LABEL_25:
            sub_2530CD33C(v0 + 96, &qword_27F5818A0, &qword_25314E9C0);
            goto LABEL_26;
          }
        }

        sub_2530FB904(v0 + 16);
      }

      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      goto LABEL_25;
    }

    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  }

  (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2530FAF08()
{
  *(v0 + 232) = *(v0 + 392);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580730, &qword_25314F190);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2530FAF94()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2530FB0EC, 0, 0);
}

uint64_t sub_2530FB0EC()
{
  v1 = v0[51];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];

  (*(v3 + 8))(v2, v4);
  v5 = sub_2530FB4A0();
  v6 = swift_task_alloc();
  v0[48] = v6;
  *v6 = v0;
  v6[1] = sub_2530FA66C;
  v7 = v0[42];
  v8 = v0[43];

  return MEMORY[0x282200308](v7, v8, v5);
}

uint64_t sub_2530FB1C8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2530FB1E8, v1, 0);
}

uint64_t sub_2530FB1E8()
{
  v1 = *(*(v0 + 24) + *(**(v0 + 24) + 120));
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2530FB220, v1, 0);
}

uint64_t sub_2530FB220()
{
  sub_2530C38D8(1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530FB288()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2530CD684;

  return sub_2530F9FBC();
}

uint64_t sub_2530FB318(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2530BF218;

  return sub_2530FB1C8(a1);
}

uint64_t sub_2530FB3B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2530BF218;

  return sub_2530FA3B8(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_2530FB4A0()
{
  result = qword_27F581898;
  if (!qword_27F581898)
  {
    sub_253149124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581898);
  }

  return result;
}

unint64_t sub_2530FB4F8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = &qword_27F5818E8;
    v30 = v1;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x259BFD000](v2, v29);
      }

      else
      {
        if (v2 >= *(v33 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject changes];
      if (v7)
      {
        v8 = v7;
        sub_2530CF970(0, &qword_27F5818E0, 0x277CBE4A8);
        v9 = sub_253148C94();

        v5 = v8;
      }

      else
      {
        v9 = MEMORY[0x277D84F90];
      }

      v10 = v9 >> 62;
      if (v9 >> 62)
      {
        v11 = sub_2531492E4();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_2531492E4();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_42:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_42;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          goto LABEL_24;
        }

LABEL_23:
        sub_2531492E4();
        goto LABEL_24;
      }

      if (v12)
      {
        goto LABEL_23;
      }

      v14 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v37 = v3;
        goto LABEL_25;
      }

LABEL_24:
      isUniquelyReferenced_nonNull_bridgeObject = sub_253149414();
      v37 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v10)
      {
        v18 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_2531492E4();
        v14 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_29:
          if (((v16 >> 1) - v15) < v11)
          {
            goto LABEL_46;
          }

          v35 = v2;
          v19 = v14 + 8 * v15 + 32;
          v31 = v14;
          if (v10)
          {
            if (v17 < 1)
            {
              goto LABEL_48;
            }

            sub_2530FBBD8();
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v4, qword_25314EA08);
              v21 = v4;
              v22 = sub_2530FBAEC(v36, i, v9);
              v24 = *v23;
              (v22)(v36, 0);
              v4 = v21;
              *(v19 + 8 * i) = v24;
            }
          }

          else
          {
            sub_2530CF970(0, &qword_27F5818E0, 0x277CBE4A8);
            swift_arrayInitWithCopy();
          }

          v2 = v35;
          v1 = v30;
          v3 = v37;
          if (v11 >= 1)
          {
            v25 = *(v31 + 16);
            v6 = __OFADD__(v25, v11);
            v26 = v25 + v11;
            if (v6)
            {
              goto LABEL_47;
            }

            *(v31 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_29;
        }
      }

      v3 = v37;
      if (v11 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_2531492E4();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2530FB890(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813C8, &qword_25314DA00);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

uint64_t sub_2530FB9F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807E0, &qword_25314C5B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_2530FBA64(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259BFD000](a2, a3);
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
    return sub_2530FBAE4;
  }

  __break(1u);
  return result;
}

void (*sub_2530FBAEC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259BFD000](a2, a3);
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
    return sub_2530FBB6C;
  }

  __break(1u);
  return result;
}

uint64_t sub_2530FBB74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2530FBBD8()
{
  result = qword_27F5818F0;
  if (!qword_27F5818F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5818E8, qword_25314EA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5818F0);
  }

  return result;
}

unint64_t sub_2530FBC40()
{
  result = qword_27F580968;
  if (!qword_27F580968)
  {
    type metadata accessor for HMCDHomeModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580968);
  }

  return result;
}

void sub_2530FBCA8()
{
  v1 = v0;
  v2 = sub_253148944();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 managedObjectContext];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = [v6 persistentStoreCoordinator];

  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = [v8 persistentStores];

  sub_2530FC2B4();
  v10 = sub_253148C94();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_15;
  }

  if (!sub_2531492E4())
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x259BFD000](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  sub_253145A04(&v20);
  v13 = *(&v20 + 1);
  if (*(&v20 + 1) >> 60 != 15)
  {
    v14 = v20;
    v15 = objc_opt_self();
    v16 = [v1 modelID];
    sub_253148924();

    v17 = sub_253148904();
    (*(v3 + 8))(v5, v2);
    v18 = sub_2531488A4();
    v19 = [v15 hmf:v17 UUIDWithNamespace:v18 data:0 salts:?];

    sub_253148924();
    sub_2530FC300(v14, v13);

    return;
  }

LABEL_15:
  sub_253149594();
  __break(1u);
}

uint64_t sub_2530FBFCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v7 modelID];
  sub_253148924();

  v11 = [a1 name];
  v12 = sub_253148B64();
  v14 = v13;

  v15 = &v9[*(a2 + 20)];
  *v15 = v12;
  v15[1] = v14;
  sub_2530FBCA8();

  sub_2530FC250(v9, a3);
  return (*(v6 + 56))(a3, 0, 1, a2);
}

uint64_t sub_2530FC110()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB0, &qword_25314D550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314E1C0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x44496C65646F6DLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  v1 = sub_253109C78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB8, &qword_25314D638);
  result = swift_arrayDestroy();
  qword_27F58D0A0 = v1;
  return result;
}

uint64_t sub_2530FC1F4()
{
  if (qword_27F580298 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2530FC250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Home(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2530FC2B4()
{
  result = qword_27F581398;
  if (!qword_27F581398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F581398);
  }

  return result;
}

uint64_t sub_2530FC300(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2530C2478(result, a2);
  }

  return result;
}

uint64_t sub_2530FC314@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[2] = a5;
  v13 = type metadata accessor for AnyModelStateChange(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  (*(a6 + 32))(&v19, a2, a4, a6);
  (*(*(a4 - 8) + 8))(a3, a4);
  swift_unknownObjectRelease();
  sub_2530BDB14(&v19, v20);
  sub_2530BDB14(v20, v16);
  swift_storeEnumTagMultiPayload();
  sub_2530FD070(v16, a7);
  return (*(v14 + 56))(a7, 0, 1, v13);
}

uint64_t sub_2530FC678@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[2] = a5;
  v13 = type metadata accessor for AnyModelStateChange(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;

  (*(a6 + 32))(&v20, a2, a4, a6);
  (*(*(a4 - 8) + 8))(a3, a4);
  swift_unknownObjectRelease();
  sub_2530BDB14(&v20, v21);
  sub_2530BDB14(v21, v16);
  swift_storeEnumTagMultiPayload();
  sub_2530FD070(v16, a7);
  return (*(v14 + 56))(a7, 0, 1, v13);
}

uint64_t sub_2530FC9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for AnyModelStateChange(0);
  v19 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 24))(&v20, a2, a4, a5);
  (*(*(a4 - 8) + 8))(a3, a4);
  swift_unknownObjectRelease();
  LOBYTE(a3) = v20;
  v15 = *(type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0) + 20);
  v16 = sub_253148944();
  (*(*(v16 - 8) + 16))(v14, a1 + v15, v16);
  sub_2530FD014(a1);
  v14[*(type metadata accessor for AnyModelStateChange.Tombstone(0) + 20)] = a3;
  swift_storeEnumTagMultiPayload();
  sub_2530FD070(v14, a6);
  return (*(v19 + 56))(a6, 0, 1, v12);
}

uint64_t sub_2530FCC54()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F5818F8);
  __swift_project_value_buffer(v0, qword_27F5818F8);
  return sub_253148A84();
}

uint64_t AnyModelStateChange.Tombstone.modelID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AnyModelStateChange.Tombstone.modelType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AnyModelStateChange.Tombstone(0);
  *a1 = *(v1 + *(result + 20));
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

uint64_t sub_2530FCDB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2530FCDF8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2530FCE70(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2530FCEA8(uint64_t a1)
{
  sub_2530FCF28();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AnyModelStateChange.Tombstone(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2530FCF28()
{
  if (!qword_27F581920)
  {
    v0 = sub_253148D64();
    if (!v1)
    {
      atomic_store(v0, &qword_27F581920);
    }
  }
}

uint64_t sub_2530FCFA0(uint64_t a1)
{
  result = sub_253148944();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2530FD014(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2530FD070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyModelStateChange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530FD0D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5806E0, &qword_25314D900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2530FD168(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 homes];
  type metadata accessor for HMCDHomeModel();
  sub_2530FD6F4(&qword_27F581940, 255, type metadata accessor for HMCDHomeModel, MEMORY[0x277D85378]);
  v4 = sub_253148F74();

  *a2 = v4;
}

void sub_2530FD20C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  type metadata accessor for HMCDHomeModel();
  sub_2530FD6F4(&qword_27F581940, 255, type metadata accessor for HMCDHomeModel, MEMORY[0x277D85378]);
  v3 = sub_253148F64();
  [v2 setHomes_];
}

id HMCDHomesTopologyModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDHomesTopologyModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDHomesTopologyModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDHomesTopologyModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDHomesTopologyModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_2530FD448(void *a1))(void *a1)
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
  v2[4] = sub_2530FD4B8(v2);
  return sub_2530D0B14;
}

void (*sub_2530FD4B8(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

uint64_t sub_2530FD650(uint64_t a1, uint64_t a2)
{
  result = sub_2530FD6F4(&qword_27F581938, a2, type metadata accessor for HMCDHomesTopologyModel, &protocol conformance descriptor for HMCDHomesTopologyModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2530FD6A8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HMCDHomesTopologyModel();
  result = sub_2531493E4();
  *a2 = result;
  return result;
}

uint64_t sub_2530FD6F4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2530FD73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = sub_253148534();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_253148824();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v97 - v7;
  v124 = &v97 - v7;
  v123 = a2;
  v110 = sub_253148974();
  v103 = a1;
  sub_253148964();
  v8 = *(a3 + 48);
  v107 = a2;
  v108 = a3;
  v102 = a3 + 48;
  v101 = v8;
  (v8)(&v118, a2, a3);
  sub_2530D0400();
  v10 = (*(v9 + 8))();
  v11 = 0;
  v13 = v10 + 64;
  v12 = *(v10 + 64);
  v111 = v10;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v18 = MEMORY[0x277D84F98];
  v109 = v10 + 64;
LABEL_5:
  v114 = v18;
  if (v16)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v20 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      v101(&v118);
      sub_2530D0400();
      v36 = (*(v35 + 16))();
      v37 = v36;
      if ((v36 & 0xC000000000000001) != 0)
      {
        v38 = sub_253149574();
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v37 = v38 | 0x8000000000000000;
      }

      else
      {
        v42 = -1 << *(v36 + 32);
        v39 = v36 + 64;
        v40 = ~v42;
        v43 = -v42;
        if (v43 < 64)
        {
          v44 = ~(-1 << v43);
        }

        else
        {
          v44 = -1;
        }

        v41 = v44 & *(v36 + 64);
      }

      v45 = v110;
      v46 = 0;
      v102 = v40;
      v47 = (v40 + 64) >> 6;
      v48 = MEMORY[0x277D84F98];
      v109 = v47;
      v111 = v39;
      while (1)
      {
        if ((v37 & 0x8000000000000000) != 0)
        {
          v59 = sub_253149584();
          if (!v59 || (v61 = v60, v115[0] = v59, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581960, &qword_2531507D0), swift_dynamicCast(), v56 = v118, v115[0] = v61, sub_2530CF970(0, &qword_27F581968, 0x277CCAC30), swift_dynamicCast(), v58 = v118, i = v46, v54 = v41, !v56))
          {
LABEL_36:
            v113 = v48;
LABEL_37:
            sub_2530DFAD4(v37);
            v72 = v97;
            sub_253148814();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581950, &qword_25314F138);
            v73 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581958, &unk_25314F140) - 8);
            v74 = (*(*v73 + 80) + 32) & ~*(*v73 + 80);
            v75 = swift_allocObject();
            *(v75 + 16) = xmmword_25314D290;
            v76 = v75 + v74;
            v77 = (v75 + v74 + v73[14]);
            v78 = v98;
            v79 = v99;
            (*(v98 + 16))(v75 + v74, v72, v99);
            v80 = objc_opt_self();
            v81 = v114;

            v82 = v113;

            v83 = [v80 expressionForEvaluatedObject];
            v77[1] = 0;
            v77[2] = 0;
            *v77 = v83;
            v84 = sub_253109FA0(v75);
            swift_setDeallocating();
            sub_2530CD33C(v76, &qword_27F581958, &unk_25314F140);
            swift_deallocClassInstance();
            (*(v78 + 8))(v72, v79);
            v118 = 1;
            v119 = v84;
            v120 = v81;
            v121 = v82;
            v122 = 0;
            v85 = v103;
            sub_253148954();
            v86 = v116;
            v87 = v117;
            __swift_project_boxed_opaque_existential_1(v115, v116);
            v88 = v100;
            sub_2530FFD64(&v118, v86, *(v87 + 8));
            if (v88)
            {
              (*(*(v45 - 8) + 8))(v85, v45);

              __swift_destroy_boxed_opaque_existential_0(v115);
              goto LABEL_39;
            }

            (*(*(v45 - 8) + 8))(v85, v45);

            __swift_destroy_boxed_opaque_existential_0(v115);

            (*(v104 + 8))(v105, v106);
            return;
          }
        }

        else
        {
          v51 = v46;
          v52 = v41;
          for (i = v46; !v52; ++v51)
          {
            i = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_45;
            }

            if (i >= v47)
            {
              v113 = v48;
              goto LABEL_37;
            }

            v52 = *(v39 + 8 * i);
          }

          v54 = (v52 - 1) & v52;
          v55 = (i << 9) | (8 * __clz(__rbit64(v52)));
          v56 = *(*(v37 + 48) + v55);
          v57 = *(*(v37 + 56) + v55);

          v58 = v57;
          if (!v56)
          {
            goto LABEL_36;
          }
        }

        v112 = v54;
        v113 = v58;
        v107 = v46;
        v108 = v41;
        v115[0] = v56;
        sub_253149244();
        swift_retain_n();
        v62 = sub_253148B74();
        v64 = v63;
        v118 = v62;
        v119 = v63;

        sub_253109850(46, 0xE100000000000000, v62, v64);
        v66 = v65;

        if (v66)
        {

          v118 = v56;

          v93 = sub_253148B74();
          v95 = v94;
          sub_253109940();
          swift_allocError();
          *v96 = v93;
          *(v96 + 8) = v95;
          *(v96 + 16) = 0;
          swift_willThrow();

          sub_2530DFAD4(v37);
          (*(*(v110 - 8) + 8))(v103);

          goto LABEL_40;
        }

        sub_253148BC4();
        sub_253148BA4();

        v68 = v118;
        v67 = v119;
        v69 = v48;
        if (v48[2])
        {
          sub_25311D908(v118, v119);
          if (v70)
          {
            sub_253109940();
            swift_allocError();
            *v71 = v68;
            *(v71 + 8) = v67;
            *(v71 + 16) = 0;
            swift_willThrow();

            sub_2530DFAD4(v37);
            (*(*(v110 - 8) + 8))(v103);
LABEL_39:

            goto LABEL_40;
          }
        }

        v49 = v113;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v69;
        sub_25312FC20(v49, v68, v67, isUniquelyReferenced_nonNull_native);

        v48 = v118;
        v46 = i;
        v39 = v111;
        v41 = v112;
        v47 = v109;
        v45 = v110;
      }
    }

    v16 = *(v13 + 8 * v20);
    ++v11;
    if (v16)
    {
      v11 = v20;
LABEL_10:
      v21 = __clz(__rbit64(v16)) | (v11 << 6);
      v22 = *(*(v111 + 48) + 8 * v21);
      v23 = (*(v111 + 56) + 16 * v21);
      v24 = v23[1];
      v112 = *v23;
      v115[0] = v22;
      sub_253149244();
      swift_retain_n();
      v113 = v24;

      v25 = sub_253148B74();
      v27 = v26;
      v118 = v25;
      v119 = v26;

      sub_253109850(46, 0xE100000000000000, v25, v27);
      v29 = v28;

      if (v29)
      {

        v118 = v22;

        v89 = sub_253148B74();
        v91 = v90;
        sub_253109940();
        swift_allocError();
        *v92 = v89;
        *(v92 + 8) = v91;
        *(v92 + 16) = 0;
        swift_willThrow();

        (*(*(v110 - 8) + 8))(v103);
        goto LABEL_40;
      }

      sub_253148BC4();
      sub_253148BA4();

      v30 = v118;
      v31 = v119;
      v32 = v114;
      if (*(v114 + 16))
      {
        sub_25311D908(v118, v119);
        if (v33)
        {

          sub_253109940();
          swift_allocError();
          *v34 = v30;
          *(v34 + 8) = v31;
          *(v34 + 16) = 0;
          swift_willThrow();

          (*(*(v110 - 8) + 8))(v103);
LABEL_40:

          (*(v104 + 8))(v105, v106);
          return;
        }
      }

      v16 &= v16 - 1;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v118 = v32;
      sub_25312FD98(v112, v113, v30, v31, v19);

      v18 = v118;
      v13 = v109;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_2530FE3A0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2531496F4();
  MEMORY[0x259BFC7D0](v5);

  if (v4 == -1)
  {
    __break(1u);
  }

  else
  {
    *v1 = v4 + 1;
    v7 = sub_253148B54();
    v8 = [objc_opt_self() expressionForVariable_];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v2[1];
    sub_25312FA20(v8, 0, 0, a1, isUniquelyReferenced_nonNull_native);
    v2[1] = v10;
    return 0x5F6C61636F6C5FLL;
  }

  return result;
}

id sub_2530FE4B4()
{
  v1 = sub_253149764();
  v2 = objc_opt_self();
  v3 = [v2 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v4 = [v2 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v5 = [v2 expressionForConditional:v0 trueExpression:v3 falseExpression:v4];

  return v5;
}

id sub_2530FE5A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
  v11[3] = v3;
  v11[0] = v2;
  v4 = objc_opt_self();
  v5 = v2;
  v6 = sub_253148B54();
  v7 = [v4 _newKeyPathExpressionForString_];

  if (!v7)
  {
    v3 = 0;
    v10[1] = 0;
    v10[2] = 0;
  }

  v10[0] = v7;
  v10[3] = v3;
  v8 = objc_allocWithZone(MEMORY[0x277CCAAA8]);
  result = sub_253109994(v11, v10);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void *sub_2530FE680(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v6 = v5;
  if ([v5 expressionType] == 1)
  {
    if (a5 & 1) == 0 || a3[2] && (sub_25311D908(a1, a2), (v12) || *(a4 + 16) && (sub_25311D908(a1, a2), (v13))
    {
      if (a3[2])
      {
        sub_25311D908(a1, a2);
      }

      v14 = sub_253148B54();

      v15 = objc_opt_self();
      a3 = [v15 expressionForKeyPath_];

      v16 = sub_253148B54();
      [v15 expressionForKeyPath_];

      if (!*(a4 + 16))
      {
        return a3;
      }

      v17 = sub_25311D908(a1, a2);
      if ((v18 & 1) == 0)
      {
        return a3;
      }

      v19 = *(*(a4 + 56) + 8 * v17);
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v54 = a4;
  if ([v5 expressionType] == 3)
  {
    v21 = [v5 keyPath];
    v22 = sub_253148B64();
    v24 = v23;

    v51 = v22;
    v52 = v24;
    v47 = 64;
    v48 = 0xE100000000000000;
    sub_25310A5B0();
    LOBYTE(v21) = sub_253149214();

    if ((v21 & 1) == 0)
    {
      v33 = [v6 keyPath];
      v34 = sub_253148B64();
      v36 = v35;

      v51 = v34;
      v52 = v36;
      MEMORY[0x259BFC7D0](46, 0xE100000000000000);
      MEMORY[0x259BFC7D0](a1, a2);
      v37 = v34;
      if (a5 & 1) == 0 || a3[2] && (sub_25311D908(v51, v52), (v38) || *(v54 + 16) && (sub_25311D908(v34, v36), (v39))
      {
        if (a3[2])
        {
          sub_25311D908(v34, v36);
        }

        v40 = sub_253148B54();

        v41 = objc_opt_self();
        a3 = [v41 expressionForKeyPath_];

        v42 = sub_253148B54();
        [v41 expressionForKeyPath_];

        if (!*(v54 + 16))
        {

          return a3;
        }

        v43 = sub_25311D908(v37, v36);
        v45 = v44;

        if ((v45 & 1) == 0)
        {
          return a3;
        }

        v19 = *(*(v54 + 56) + 8 * v43);
LABEL_12:
        v20 = v19;
        return a3;
      }

      sub_253109940();
      swift_allocError();
      *v46 = v34;
      *(v46 + 8) = v36;
      *(v46 + 16) = 0;
LABEL_17:
      swift_willThrow();
      return a3;
    }
  }

  if ([v6 expressionType] == 20)
  {
LABEL_16:
    sub_253109940();
    swift_allocError();
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = 0;

    goto LABEL_17;
  }

  v26 = sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
  v53 = v26;
  v51 = v6;
  v27 = objc_opt_self();
  v28 = v6;
  v29 = sub_253148B54();
  v30 = [v27 _newKeyPathExpressionForString_];

  if (!v30)
  {
    v26 = 0;
    v48 = 0;
    v49 = 0;
  }

  v47 = v30;
  v50 = v26;
  v31 = objc_allocWithZone(MEMORY[0x277CCAAA8]);
  result = sub_253109994(&v51, &v47);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

id sub_2530FEB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v35 = a1;
  v8 = sub_253148474();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_2531491F4();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v17);
  (*(v21 + 16))(&v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581970, &qword_25314F150);
  if (swift_dynamicCast())
  {
    v32 = v19;
    v33 = v16;
    v34 = v3;
    sub_2530BDB14(&v42, &v45);
    v22 = v46;
    v23 = v47;
    __swift_project_boxed_opaque_existential_1(&v45, v46);
    v24 = (*(v23 + 16))(v35, v22, v23);
    if (!v4)
    {
      v5 = v24;
      __swift_destroy_boxed_opaque_existential_0(&v45);
      return v5;
    }

    __swift_destroy_boxed_opaque_existential_0(&v45);
    v5 = 0;
    v25 = v4;
    v16 = v33;
    v19 = v32;
  }

  else
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    sub_2530CD33C(&v42, &qword_27F581978, &unk_25314F158);
    v25 = 0;
  }

  sub_253148484();
  sub_253148494();
  if (v5)
  {

    (*(v39 + 8))(v10, v40);
    (*(v16 + 56))(v15, 1, 1, AssociatedTypeWitness);
    (*(v36 + 8))(v15, v37);
    if (v25)
    {
      goto LABEL_11;
    }
  }

  else
  {
    (*(v39 + 8))(v10, v40);
    (*(v16 + 56))(v15, 0, 1, AssociatedTypeWitness);
    (*(v16 + 32))(v19, v15, AssociatedTypeWitness);
    v41[3] = AssociatedTypeWitness;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
    (*(v16 + 16))(boxed_opaque_existential_0, v19, AssociatedTypeWitness);
    sub_2530FF174(v41, &v42);
    __swift_destroy_boxed_opaque_existential_0(v41);
    if (*(&v43 + 1))
    {
      sub_2530C02F4(&v42, &v45);
      __swift_project_boxed_opaque_existential_1(&v45, v46);
      v28 = v25;
      v29 = sub_253149724();
      v5 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(&v45);
      (*(v16 + 8))(v19, AssociatedTypeWitness);
      return v5;
    }

    (*(v16 + 8))(v19, AssociatedTypeWitness);
    sub_2530CD33C(&v42, &qword_27F5818A0, &qword_25314E9C0);
    if (v25)
    {
      goto LABEL_11;
    }
  }

  sub_253109940();
  swift_allocError();
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 3;
LABEL_11:
  swift_willThrow();
  return v5;
}

uint64_t sub_2530FF174@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2531488E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v53[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_253148944();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v53[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2530C0304(a1, v67);
  sub_2530C0304(v67, &v60);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818A0, &qword_25314E9C0);
  swift_dynamicCast();
  if (!v66)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return __swift_destroy_boxed_opaque_existential_0(v67);
  }

  sub_2530CD33C(&v64, &qword_27F5818A0, &qword_25314E9C0);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      (*(v9 + 8))(v11, v8);
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v7, v4);
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      sub_2530C2478(v64, *(&v64 + 1));
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581980, &qword_25314F168);
    if (swift_dynamicCast())
    {
      sub_2530BDB14(&v64, &v60);
      v14 = *__swift_project_boxed_opaque_existential_1(&v60, v62) + 1;
      *(a2 + 24) = MEMORY[0x277D83B88];
      *a2 = v14;
    }

    else
    {
      type metadata accessor for Decimal(0);
      if (swift_dynamicCast())
      {
        v60 = v64;
        v61 = v65;
        v15 = objc_allocWithZone(MEMORY[0x277CCA980]);
        v57 = v60;
        v58 = v61;
        v16 = [v15 initWithDecimal_];
        [v16 floatValue];
        v18 = v17;

        *(a2 + 24) = MEMORY[0x277D83A90];
        *a2 = v18;
        return __swift_destroy_boxed_opaque_existential_0(v67);
      }

      v19 = MEMORY[0x277D83B88];
      if ((swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || swift_dynamicCast())
      {
        goto LABEL_12;
      }

      type metadata accessor for ComparisonResult(0);
      if (swift_dynamicCast())
      {
        v20 = v64;
        *(a2 + 24) = v19;
        *a2 = v20;
        return __swift_destroy_boxed_opaque_existential_0(v67);
      }

      if (swift_dynamicCast())
      {
        v21 = v64;
        *(a2 + 24) = MEMORY[0x277D837D0];
        *a2 = v21;
        return __swift_destroy_boxed_opaque_existential_0(v67);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581988, &qword_25314F170);
      if (swift_dynamicCast())
      {
        sub_2530BDB14(&v64, &v60);
        v23 = v62;
        v22 = v63;
        v24 = __swift_project_boxed_opaque_existential_1(&v60, v62);
        v25 = MEMORY[0x28223BE20](v24);
        *(&v52 - 4) = v23;
        *(&v52 - 3) = v22;
        *(&v52 - 2) = sub_2530FF174;
        *(&v52 - 1) = 0;
        MEMORY[0x28223BE20](v25);
        *(&v52 - 4) = v23;
        *(&v52 - 3) = v22;
        *(&v52 - 2) = sub_25310A1F8;
        *(&v52 - 1) = v26;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580730, &qword_25314F190);
        v28 = v52;
        v29 = sub_253100290(sub_25310A218, (&v52 - 6), v23, v12, v27, v22, MEMORY[0x277D84950], &v57);
        v52 = v28;
        if (v28)
        {
          v52 = v57;
        }

        else
        {
          v45 = v29;
          *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819A0, &qword_25314F188);
          *a2 = v45;
        }

        goto LABEL_15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581990, &qword_25314F178);
      if (!swift_dynamicCast())
      {
        v37 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        MEMORY[0x28223BE20](v37);
        (*(v39 + 16))(&v53[-1] - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
        v40 = sub_253148B84();
        v42 = v41;
        sub_253109940();
        v43 = swift_allocError();
        *v44 = v40;
        *(v44 + 8) = v42;
        *(v44 + 16) = 1;
        v52 = v43;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_0(v67);
      }

      sub_2530BDB14(&v64, &v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581998, &qword_25314F180);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_25314E1C0;
      v31 = v62;
      v32 = v63;
      __swift_project_boxed_opaque_existential_1(&v60, v62);
      (*(v32 + 8))(&v57, v55, v31, v32);
      __swift_destroy_boxed_opaque_existential_0(v55);
      v33 = v59;
      v34 = __swift_project_boxed_opaque_existential_1(&v57, v59);
      v54 = v33;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v53);
      (*(*(v33 - 8) + 16))(boxed_opaque_existential_0, v34, v33);
      v36 = v52;
      sub_2530FF174(v53, v30 + 32);
      v52 = v36;
      if (v36)
      {
        __swift_destroy_boxed_opaque_existential_0(v53);
        __swift_destroy_boxed_opaque_existential_0(&v57);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v53);
        __swift_destroy_boxed_opaque_existential_0(&v57);
        v46 = v62;
        v47 = v63;
        __swift_project_boxed_opaque_existential_1(&v60, v62);
        (*(v47 + 8))(&v57, v55, v46, v47);
        __swift_destroy_boxed_opaque_existential_0(&v57);
        v48 = v56;
        v49 = __swift_project_boxed_opaque_existential_1(v55, v56);
        v54 = v48;
        v50 = __swift_allocate_boxed_opaque_existential_0(v53);
        (*(*(v48 - 8) + 16))(v50, v49, v48);
        v51 = v52;
        sub_2530FF174(v53, v30 + 64);
        v52 = v51;
        if (!v51)
        {
          __swift_destroy_boxed_opaque_existential_0(v53);
          __swift_destroy_boxed_opaque_existential_0(v55);
          *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819A0, &qword_25314F188);
          *a2 = v30;
          goto LABEL_15;
        }

        __swift_destroy_boxed_opaque_existential_0(v53);
        __swift_destroy_boxed_opaque_existential_0(v55);
        sub_2530CD33C(v30 + 32, &qword_27F5818A0, &qword_25314E9C0);
      }

      *(v30 + 16) = 0;
    }

LABEL_15:
    __swift_destroy_boxed_opaque_existential_0(&v60);
    return __swift_destroy_boxed_opaque_existential_0(v67);
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_0(v67);
  return sub_2530C0304(a1, a2);
}

id sub_2530FFCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2530FEB94(a1, a2, a3);
  if (v3 || !v6)
  {
    return v7;
  }

  v9 = v5;
  if (v6 != 1)
  {

    return v7;
  }

  v10 = v4;
  v11 = sub_2530FE4B4();
  sub_25310A19C(v7, v10, v9, 1u);
  return v11;
}

id sub_2530FFD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2530FEB94(a1, a2, a3);
  if (!v3)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        return result;
      }

      v8 = result;
      v9 = v5;
      v10 = v6;
      v11 = sub_253149764();
      v12 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v13 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v8 rightExpression:v12 modifier:0 type:4 options:0];

      v14 = v10;
      v15 = v13;
    }

    else
    {
      v16 = result;
      v17 = v5;
      v18 = v6;
      v19 = sub_253149764();
      v14 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v15 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v16 rightExpression:v14 modifier:0 type:4 options:0];
      sub_25310A19C(v16, v17, v18, 0);
    }

    return v15;
  }

  return result;
}

id sub_2530FFF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2530FEB94(a1, a2, a3);
  if (!v4)
  {
    v3 = v5;
    if (v8 == 1)
    {
      v10 = v6;
      v11 = v7;
      v12 = sub_2530FE4B4();
      sub_25310A19C(v3, v10, v11, 1u);
      return v12;
    }
  }

  return v3;
}

unint64_t sub_2530FFF9C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      sub_2531493C4();
      v5 = 0xD00000000000003BLL;
      v6 = 0x800000025314B3D0;
LABEL_8:
      MEMORY[0x259BFC7D0](v5, v6);
      MEMORY[0x259BFC7D0](a1, a2);
      MEMORY[0x259BFC7D0](46, 0xE100000000000000);
      return 0;
    }

    sub_2531493C4();
    v7 = "Fetchable predicate conversion error, unsupported constant: ";
LABEL_7:
    v6 = (v7 - 32) | 0x8000000000000000;
    v5 = 0xD00000000000003CLL;
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    sub_2531493C4();
    v7 = "Fetchable predicate conversion error, unsupported operator: ";
    goto LABEL_7;
  }

  return 0xD000000000000037;
}