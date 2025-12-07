uint64_t UniversalSuggestionsStoreCoreData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222AC1B14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE70, &qword_222B0C130);
  sub_222B02A58();
  return v1;
}

uint64_t UniversalSuggestionFeedbackAction.hashValue.getter()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC7380](v1);
  return sub_222B03168();
}

uint64_t UniversalSuggestionsStoreCoreDataWithMigrations.__allocating_init()()
{
  v0 = static Config.universalSuggestionsStoreFilePath.getter();
  v2 = v1;
  type metadata accessor for UniversalSuggestionsStoreCoreDataWithMigrations();
  swift_allocObject();
  return sub_222AB99B4(v0, v2, 1);
}

uint64_t sub_222AC1CD4()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D01DE58);
  v1 = __swift_project_value_buffer(v0, qword_27D01DE58);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222AC1D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222AC1E04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222ABAB60(*(v1 + 24));
  *a1 = result & 1;
  return result;
}

void *sub_222AC1E48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222ABB474();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for UniversalSuggestionCandidateDonationResult(uint64_t a1)
{
  result = qword_280CB4FA8;
  if (!qword_280CB4FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222AC1FC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_222AC2048()
{
  result = qword_27D01DE90;
  if (!qword_27D01DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DE90);
  }

  return result;
}

void sub_222AC20EC(uint64_t a1)
{
  sub_222AC214C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_222AC214C()
{
  if (!qword_27D01DE98)
  {
    v0 = type metadata accessor for UniversalSuggestionCandidate(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27D01DE98);
    }
  }
}

uint64_t sub_222AC248C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_222AC24D4()
{
  result = qword_27D01D440;
  if (!qword_27D01D440)
  {
    sub_222A250BC(255, &qword_27D01D438, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D440);
  }

  return result;
}

uint64_t sub_222AC253C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222AC25A4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  result = sub_222ABFA7C(v3, &v5);
  *a1 = result & 1;
  return result;
}

uint64_t sub_222AC25F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = v2;
  return sub_222ABCDF0(&v5, &v4, a1);
}

id sub_222AC263C(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v64) = a3;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v3 = sub_222B02938();
  v63 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v62 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222B01748();
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v55 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277CBE4E0]) init];
  [v17 setShouldInferMappingModelAutomatically_];
  [v17 setShouldMigrateStoreAutomatically_];
  if (qword_280CB51F0 != -1)
  {
    swift_once();
  }

  v18 = qword_280CB51F8;
  if (!qword_280CB51F8)
  {
    goto LABEL_14;
  }

  v59 = v3;
  v57 = v8;
  v19 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v20 = v18;
  v58 = "ionCoreDataRecord";
  v21 = v16;
  v22 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v60 = v20;
  v61 = [v19 initWithName:v22 managedObjectModel:v20];

  sub_222B01688();
  v23 = [objc_opt_self() defaultManager];
  sub_222B01708();
  v24 = sub_222B016A8();
  v65 = *(v66 + 8);
  v65(v14, v67);
  aBlock[0] = 0;
  v25 = [v23 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:aBlock];

  if (v25)
  {
    v26 = aBlock[0];
  }

  else
  {
    v27 = aBlock[0];
    v28 = sub_222B01628();

    swift_willThrow();
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v29 = sub_222B02148();
    __swift_project_value_buffer(v29, qword_27D01DE58);
    (*(v66 + 16))(v11, v16, v67);
    v30 = v28;
    v31 = sub_222B02128();
    v32 = sub_222B028E8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock[0] = v56;
      *v33 = 136315394;
      sub_222AC248C(&qword_280CB8310, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v34 = sub_222B02F38();
      v36 = v35;
      v65(v11, v67);
      v37 = sub_222A230FC(v34, v36, aBlock);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v68 = v28;
      v38 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v39 = sub_222B023D8();
      v41 = sub_222A230FC(v39, v40, aBlock);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_222A1C000, v31, v32, "UniversalSuggestionsCoreData: Unable to create the data directory, path=%s, error=%s", v33, 0x16u);
      v42 = v56;
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v42, -1, -1);
      MEMORY[0x223DC7E30](v33, -1, -1);
    }

    else
    {

      v65(v11, v67);
    }
  }

  if (v64)
  {
    type metadata accessor for UniversalSuggestionsStoreCoreData();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v44 = [objc_opt_self() bundleForClass_];
    type metadata accessor for IncrementalMigrationManager();
    inited = swift_initStackObject();
    *(inited + 16) = v44;
    v46 = v62;
    sub_222B02928();
    sub_222A9E100(v21, v46, 0xD000000000000019, v58 | 0x8000000000000000);
    (*(v63 + 8))(v46, v59);
    swift_setDeallocating();
  }

  v47 = sub_222B016A8();
  [v17 setURL_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_222B06DF0;
  *(v48 + 32) = v17;
  sub_222A250BC(0, &qword_280CB8428, 0x277CBE4E0);
  v49 = v17;
  v50 = sub_222B025D8();

  v17 = v61;
  [v61 setPersistentStoreDescriptions_];

  v51 = swift_allocObject();
  v51[16] = 1;
  v52 = v51 + 16;
  aBlock[4] = sub_222AC3094;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222A4F798;
  aBlock[3] = &block_descriptor_55;
  v53 = _Block_copy(aBlock);

  [v17 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v53);

  v65(v21, v67);
  swift_beginAccess();
  LOBYTE(v49) = *v52;

  if ((v49 & 1) == 0)
  {
LABEL_14:

    return 0;
  }

  return v17;
}

uint64_t dispatch thunk of SiriUserFeedbackLearningTaskPerforming.run(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_222A34620;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_222AC3270(id *a1, uint64_t a2)
{
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 nsUUID];
  sub_222B01898();

  v8 = sub_222B01888();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t static SiriOntologyUtils.className(of:)(uint64_t a1)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DEB0, &qword_222B0C378);
  v1 = sub_222B023D8();
  v3 = v2;
  v4 = sub_222B02458();
  v5 = sub_222AAA4AC(v4, v1, v3);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x223DC6660](v5, v7, v9, v11);

  return v12;
}

uint64_t static SiriOntologyUtils.selectTopDialogAct(from:ranks:)(unint64_t a1, uint64_t a2)
{
  sub_222AC3810(a1, a2);
  if (v2)
  {
    return v3;
  }

  v5 = v4;
  v6 = [v4 userDialogActs];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DEB8, qword_222B0C380);
  v7 = sub_222B025F8();

  if (v7 >> 62)
  {
    result = sub_222B02DC8();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:

    sub_222B02C88();

    v9 = v5;
    v10 = [v5 description];
    v11 = sub_222B02388();
    v13 = v12;

    MEMORY[0x223DC66E0](v11, v13);

    v3 = 0xD000000000000023;
    sub_222AC3D70();
    swift_allocError();
    *v14 = 0xD000000000000023;
    v14[1] = 0x8000000222B14D60;
    swift_willThrow();

    return v3;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x223DC6F00](0, v7);

    return v15;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v3 = *(v7 + 32);
  swift_unknownObjectRetain();

  return v3;
}

unint64_t static SiriOntologyUtils.selectPrimaryTask(from:)()
{
  result = sub_222B01C88();
  if (v1)
  {
    return v0;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    sub_222AC3D70();
    v0 = swift_allocError();
    *v5 = 0x736B736174206F4ELL;
    v5[1] = 0xE800000000000000;
    swift_willThrow();
    return v0;
  }

  v3 = result;
  v4 = sub_222B02DC8();
  result = v3;
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x223DC6F00](0, result);

    return v6;
  }

  else
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v0 = *(result + 32);

      return v0;
    }

    __break(1u);
  }

  return result;
}

void static SiriOntologyUtils.prettyPrintTask(_:)(uint64_t a1)
{
  v2 = sub_222AC3DC4(a1);
  if (!v1)
  {
    v3 = v2;
    if (sub_222B029E8())
    {
      sub_222B01C48();
    }

    else
    {
      sub_222AC3D70();
      swift_allocError();
      *v4 = 0x7061726720646142;
      v4[1] = 0xE900000000000068;
      swift_willThrow();
    }
  }
}

void sub_222AC3810(unint64_t a1, uint64_t a2)
{
  v60 = a1;
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DED0, &qword_222B0C3D8);
  v7 = MEMORY[0x28223BE20](v65);
  v8 = MEMORY[0x28223BE20](v7);
  v61 = &v54 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v54 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v54 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v17);
  v59 = &v54 - v21;
  v22 = a2 + 64;
  v23 = 1 << *(a2 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a2 + 64);
  v67 = a2;
  if (v25)
  {
    v58 = v20;
    v54 = v19;
    v55 = v18;
    v56 = v6;
    v66 = v3;
    v26 = 0;
    v27 = __clz(__rbit64(v25));
    v28 = (v25 - 1) & v25;
    v29 = (v23 + 63) >> 6;
LABEL_9:
    v33 = v67;
    v34 = *(v67 + 48);
    v57 = v4;
    v35 = *(v4 + 16);
    v62 = *(v4 + 72);
    v63 = v35;
    v35(v13, v34 + v62 * v27, v66);
    *&v13[*(v65 + 48)] = *(*(v33 + 56) + 8 * v27);
    sub_222AC3FA4(v13, v16);

    v64 = v16;
    v36 = v61;
    v37 = v58;
    if (!v28)
    {
      goto LABEL_11;
    }

    do
    {
      while (1)
      {
        v38 = v26;
LABEL_14:
        v39 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v40 = v39 | (v38 << 6);
        v41 = v67;
        v63(v36, *(v67 + 48) + v40 * v62, v66);
        v42 = *(*(v41 + 56) + 8 * v40);
        v43 = v65;
        *(v36 + *(v65 + 48)) = v42;
        sub_222AC3FA4(v36, v37);
        v44 = *(v43 + 48);
        v16 = v64;
        if (*&v64[v44] >= *(v37 + v44))
        {
          break;
        }

        sub_222AC4014(v64);
        sub_222AC3FA4(v37, v16);
        v26 = v38;
        if (!v28)
        {
          goto LABEL_11;
        }
      }

      sub_222AC4014(v37);
      v26 = v38;
    }

    while (v28);
    while (1)
    {
LABEL_11:
      v38 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        return;
      }

      if (v38 >= v29)
      {
        break;
      }

      v28 = *(v22 + 8 * v38);
      ++v26;
      if (v28)
      {
        goto LABEL_14;
      }
    }

    v45 = v54;
    sub_222AC3FA4(v16, v54);
    v46 = v59;
    sub_222AC3FA4(v45, v59);
    v47 = v55;
    sub_222AC407C(v46, v55);
    v49 = v56;
    v48 = v57;
    v50 = v66;
    v51 = (*(v57 + 32))(v56, v47, v66);
    MEMORY[0x28223BE20](v51);
    *(&v54 - 2) = v49;
    if (!sub_222AAB0F0(sub_222AC40EC, (&v54 - 4), v60))
    {
      sub_222AC3D70();
      swift_allocError();
      *v52 = 0x6D20736573726150;
      v52[1] = 0xEF686374616D7369;
      swift_willThrow();
    }

    sub_222AC4014(v46);
    (*(v48 + 8))(v49, v50);
  }

  else
  {
    v30 = 0;
    v29 = (v23 + 63) >> 6;
    v31 = a2 + 72;
    while (v29 - 1 != v30)
    {
      v26 = v30 + 1;
      v32 = *(v31 + 8 * v30);
      v25 -= 64;
      ++v30;
      if (v32)
      {
        v58 = v20;
        v54 = v19;
        v55 = v18;
        v56 = v6;
        v66 = v3;
        v28 = (v32 - 1) & v32;
        v27 = __clz(__rbit64(v32)) - v25;
        goto LABEL_9;
      }
    }

    sub_222AC3D70();
    swift_allocError();
    *v53 = 0x736B6E6172206F4ELL;
    v53[1] = 0xE800000000000000;
    swift_willThrow();
  }
}

unint64_t sub_222AC3D70()
{
  result = qword_27D01DEC0;
  if (!qword_27D01DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DEC0);
  }

  return result;
}

id sub_222AC3DC4(uint64_t a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    return [v2 task];
  }

  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    result = (*(v5 + 8))(ObjectType, v5);
    if (result)
    {
      return result;
    }

    sub_222B02C88();
    v7 = 0xD000000000000020;
    v8 = 0x8000000222B14DF0;
  }

  else
  {
    sub_222B02C88();
    v8 = 0x8000000222B14DD0;
    v7 = 0xD00000000000001CLL;
  }

  MEMORY[0x223DC66E0](v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DEB8, qword_222B0C380);
  sub_222B02D98();
  sub_222AC3D70();
  swift_allocError();
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_222AC3FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DED0, &qword_222B0C3D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222AC4014(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DED0, &qword_222B0C3D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222AC407C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DED0, &qword_222B0C3D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222AC4128(uint64_t a1)
{
  v2 = v1;
  v4 = sub_222B02098();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  sub_222AC569C(v6, v7, v8, *(v2 + 40));
  v10 = sub_222AC4558(a1, v6, v7, v8, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_222AC5270(v6, v7, v8, v9);
  v17 = *(v2 + 16);
  v18 = *(v2 + 24);
  v19 = *(v2 + 32);
  LOBYTE(v6) = *(v2 + 40);
  sub_222AC569C(v17, v18, v19, v6);
  LOBYTE(v7) = sub_222AC5390(v17, v18, v19, v6, v10, v12, v14, v16);
  sub_222AC5270(v17, v18, v19, v6);
  if ((v7 & 1) == 0)
  {
    if (qword_27D01C550 != -1)
    {
      swift_once();
    }

    v20 = sub_222B02148();
    __swift_project_value_buffer(v20, qword_27D01DEE0);
    sub_222AC569C(v10, v12, v14, v16);
    v21 = sub_222B02128();
    v22 = sub_222B028D8();
    sub_222AC5270(v10, v12, v14, v16);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v44 = v22;
      v25 = v24;
      v48 = v24;
      *v23 = 136315138;
      v26 = sub_222AC4708(v10, v12, v14, v16);
      v28 = sub_222A230FC(v26, v27, &v48);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_222A1C000, v21, v44, "UserRejectsPhoneCallOrMessagesContactConfirmation state will be updated to %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x223DC7E30](v25, -1, -1);
      MEMORY[0x223DC7E30](v23, -1, -1);
    }
  }

  v29 = *(v2 + 16);
  v30 = *(v2 + 24);
  v31 = *(v2 + 32);
  *(v2 + 16) = v10;
  *(v2 + 24) = v12;
  *(v2 + 32) = v14;
  v32 = *(v2 + 40);
  *(v2 + 40) = v16;
  sub_222AC569C(v10, v12, v14, v16);
  sub_222AC569C(v10, v12, v14, v16);
  sub_222AC5270(v29, v30, v31, v32);
  if (v16 != 2)
  {
    sub_222AC5270(v10, v12, v14, v16);
    v34 = v10;
    v35 = v12;
    v36 = v14;
    v37 = v16;
LABEL_13:
    sub_222AC5270(v34, v35, v36, v37);
    return 0;
  }

  if (!v10)
  {
    v34 = v10;
    v35 = v12;
    v36 = v14;
    v37 = 2;
    goto LABEL_13;
  }

  if (v10 == 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v10;
  }

  v40 = v46;
  v39 = v47;
  v41 = v45;
  if (qword_280CB79E8 != -1)
  {
    swift_once();
  }

  v42 = sub_222B020C8();
  __swift_project_value_buffer(v42, qword_280CBC3F8);
  sub_222B02088();
  sub_222A6F5D4("events.filters.UserRejectsPhoneCallOrMessagesContactConfirmation", 64, 2);
  sub_222AC5270(v10, v12, v14, 2);
  (*(v40 + 8))(v41, v39);
  return v33;
}

void *sub_222AC4558(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (*(a1 + 24))
  {
    v9 = *(a1 + 16);
    if (*(a1 + 24) == 1)
    {
      sub_222A8B0A8(v9, 1u);
      a2 = sub_222AC4FFC(v9, a2, a3, a4, a5);
      v10 = v9;
      v11 = 1;
    }

    else
    {
      sub_222A8B0A8(v9, 2u);
      a2 = sub_222AC4CB0(v9, a2, a3, a4, a5);
      v10 = v9;
      v11 = 2;
    }

    sub_222A86648(v10, v11);
  }

  else
  {
    if (qword_27D01C550 != -1)
    {
      swift_once();
    }

    v12 = sub_222B02148();
    __swift_project_value_buffer(v12, qword_27D01DEE0);
    v13 = sub_222B02128();
    v14 = sub_222B028D8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_222A1C000, v13, v14, "UserRejectsPhoneCallOrMessagesContactConfirmation received a non Siri UI / Execution event", v15, 2u);
      MEMORY[0x223DC7E30](v15, -1, -1);
    }

    sub_222AC569C(a2, a3, a4, a5);
  }

  return a2;
}

unint64_t sub_222AC4708(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (!a4)
    {
      return 0xD000000000000013;
    }

    sub_222B02C88();
    v5 = "rmationFinished(status: ";
    v6 = 0xD00000000000001ELL;
    goto LABEL_7;
  }

  if (a4 == 2)
  {
    sub_222B02C88();
    v5 = "tactConfirmation";
    v6 = 0xD000000000000028;
LABEL_7:
    MEMORY[0x223DC66E0](v6, v5 | 0x8000000000000000);
    sub_222B02D98();
    MEMORY[0x223DC66E0](41, 0xE100000000000000);
    return 0;
  }

  return 0xD000000000000015;
}

uint64_t sub_222AC4838()
{
  sub_222AC5270(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningAnalytics54UserRejectsPhoneCallOrMessagesContactConfirmationState33_842018DD1D809979A546F22AAA28E775LLO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

void sub_222AC48C8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 32);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  v5 = *(v1 + 40);
  *(v1 + 40) = 3;
  sub_222AC5270(v2, v3, v4, v5);
}

uint64_t sub_222AC491C()
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AC49C8(uint64_t a1)
{
  sub_222B02448();
}

uint64_t sub_222AC4A60(uint64_t a1)
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

unint64_t sub_222AC4B08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222AC575C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_222AC4B38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64657463656A6572;
  if (v2 != 1)
  {
    v5 = 0x6D6E6F646E616261;
    v4 = 0xEB00000000746E65;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465747065636361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_222AC4BA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64657463656A6572;
  if (v2 != 1)
  {
    v5 = 0x6D6E6F646E616261;
    v4 = 0xEB00000000746E65;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6465747065636361;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x64657463656A6572;
  if (*a2 != 1)
  {
    v8 = 0x6D6E6F646E616261;
    v3 = 0xEB00000000746E65;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6465747065636361;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_222B02F78();
  }

  return v11 & 1;
}

uint64_t sub_222AC4CB0(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v10 = [a1 eventBody];
  if (!v10)
  {
    if (qword_27D01C550 != -1)
    {
      swift_once();
    }

    v13 = sub_222B02148();
    __swift_project_value_buffer(v13, qword_27D01DEE0);
    v14 = sub_222B02128();
    v15 = sub_222B028D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222A1C000, v14, v15, "UserRejectsPhoneCallOrMessagesContactConfirmation cannot unwrap execution store event body", v16, 2u);
      MEMORY[0x223DC7E30](v16, -1, -1);
    }

    sub_222AC569C(a2, a3, a4, v5);
    return a2;
  }

  v11 = v10;
  if (v5 - 2 < 2)
  {
    if (sub_222A862A4(v10) & 1) != 0 || (sub_222A864B4(v11))
    {
      v12 = [v11 taskStep];

      goto LABEL_6;
    }

    goto LABEL_31;
  }

  if (v5)
  {
    if (a2)
    {
      v20 = sub_222B02F78();

      if ((v20 & 1) == 0)
      {
LABEL_28:
        [a3 timestamp];
        v23 = v22;
        [a1 timestamp];
        v25 = v24;

        if (v25 - v23 <= 300.0)
        {
          v26 = a3;
          return a2;
        }

        return 0;
      }
    }

    else
    {
    }

    if ((sub_222A862A4(v11) & 1) != 0 || (sub_222A864B4(v11)) && [v11 taskStep] == 17)
    {

LABEL_27:
      v21 = a1;
      return a1;
    }

    goto LABEL_28;
  }

  v17 = [a2 eventBody];
  if (!v17)
  {
LABEL_31:

    return 0;
  }

  v18 = v17;
  if ((sub_222AA51DC(v11) & 1) == 0)
  {

    goto LABEL_31;
  }

  v12 = [v11 taskStep];

  if (v12 == 39)
  {
    v28 = a1;
    return 1;
  }

  if (v12 != 38)
  {
LABEL_6:
    if (v12 != 17)
    {
      return 0;
    }

    goto LABEL_27;
  }

  v19 = a1;
  return 0;
}

uint64_t sub_222AC4FFC(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v10 = [a1 eventBody];
  if (!v10)
  {
    if (qword_27D01C550 != -1)
    {
      swift_once();
    }

    v13 = sub_222B02148();
    __swift_project_value_buffer(v13, qword_27D01DEE0);
    v14 = sub_222B02128();
    v15 = sub_222B028D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222A1C000, v14, v15, "UserRejectsPhoneCallOrMessagesContactConfirmation cannot unwrap UI store event body", v16, 2u);
      MEMORY[0x223DC7E30](v16, -1, -1);
    }

    sub_222AC569C(a2, a3, a4, v5);
    return a2;
  }

  v11 = v10;
  if (v5 > 1u)
  {

    return 0;
  }

  if (!v5)
  {
    v12 = a2;
    if ([v11 isStarting])
    {

      return a2;
    }

    v20 = [v11 dismissalReason];
    v21 = sub_222B02388();
    v23 = v22;

    LOBYTE(v20) = sub_222A86258(v21, v23);
    if (v20 - 1 < 0xC)
    {
      v24 = a1;
      return 2;
    }

    sub_222AC5270(a2, a3, a4, 0);
    return 0;
  }

  v18 = a3;
  v19 = [v11 isStarting];

  if (v19)
  {
    return a2;
  }

  v25 = a1;
  return a2;
}

void sub_222AC5270(void *a1, void *a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 == 2)
    {

      a1 = a3;
    }

    else
    {
      a1 = a2;
      if (a4 != 1)
      {
        return;
      }
    }
  }
}

uint64_t sub_222AC52C8()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D01DEE0);
  v1 = __swift_project_value_buffer(v0, qword_27D01DEE0);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_222AC5390(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 <= 1u)
  {
    if (!a4)
    {
      if (!a8)
      {
        goto LABEL_50;
      }

      return 0;
    }

    if (a8 != 1)
    {
      return 0;
    }

    v14 = 0x6465747065636361;
    v15 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v16 = 0x64657463656A6572;
      }

      else
      {
        v16 = 0x6D6E6F646E616261;
      }

      if (v15 == 1)
      {
        v17 = 0xE800000000000000;
      }

      else
      {
        v17 = 0xEB00000000746E65;
      }

      v18 = a5;
      if (a5)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = 0xE800000000000000;
      v16 = 0x6465747065636361;
      v18 = a5;
      if (a5)
      {
LABEL_27:
        if (v18 == 1)
        {
          v14 = 0x64657463656A6572;
        }

        else
        {
          v14 = 0x6D6E6F646E616261;
        }

        if (v18 == 1)
        {
          v19 = 0xE800000000000000;
        }

        else
        {
          v19 = 0xEB00000000746E65;
        }

LABEL_46:
        if (v16 == v14 && v17 == v19)
        {
        }

        else
        {
          v22 = sub_222B02F78();

          if ((v22 & 1) == 0)
          {
            return 0;
          }
        }

LABEL_50:
        sub_222A6EEE8();
        return sub_222B02AE8() & 1;
      }
    }

    v19 = 0xE800000000000000;
    goto LABEL_46;
  }

  if (a4 != 2)
  {
    return a8 == 3 && !(a6 | a5 | a7);
  }

  if (a8 == 2)
  {
    v8 = 0x6465747065636361;
    v9 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v10 = 0x64657463656A6572;
      }

      else
      {
        v10 = 0x6D6E6F646E616261;
      }

      if (v9 == 1)
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v11 = 0xEB00000000746E65;
      }

      v12 = a5;
      if (a5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      v10 = 0x6465747065636361;
      v12 = a5;
      if (a5)
      {
LABEL_15:
        v8 = 0x64657463656A6572;
        if (v12 == 1)
        {
          v13 = 0xE800000000000000;
        }

        else
        {
          v8 = 0x6D6E6F646E616261;
          v13 = 0xEB00000000746E65;
        }

        goto LABEL_38;
      }
    }

    v13 = 0xE800000000000000;
LABEL_38:
    if (v10 == v8 && v11 == v13)
    {
    }

    else
    {
      v21 = sub_222B02F78();

      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    sub_222A6EEE8();
    if (sub_222B02AE8())
    {
      return sub_222B02AE8() & 1;
    }
  }

  return 0;
}

id sub_222AC569C(id result, void *a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v6 = a2;
      result = a3;
    }

    else
    {
      result = a2;
      if (a4 != 1)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_222AC5708()
{
  result = qword_27D01DEF8;
  if (!qword_27D01DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DEF8);
  }

  return result;
}

unint64_t sub_222AC575C(uint64_t a1, uint64_t a2)
{
  v2 = sub_222B02E48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_222AC57A8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D610, qword_222B08440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_222A34F20(a1, &qword_27D01D610, qword_222B08440);
    sub_222AC6388(a2, v7);
    v12 = sub_222B018D8();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_222A34F20(v7, &qword_27D01D610, qword_222B08440);
  }

  else
  {
    sub_222A2E290(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_222AE903C(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_222B018D8();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_222AC59B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_222AE9224(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_222B018D8();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_222A26F40(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_222A2C238();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_222B018D8();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_222AE0128();
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_222B018D8();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_222AC5B74(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_222A34F20(a1, &unk_27D01DA50, &unk_222B04E20);
    sub_222AC6510(a2, v7);
    (*(v9 + 8))(a2, v8);
    return sub_222A34F20(v7, &unk_27D01DA50, &unk_222B04E20);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_222AE941C(v11, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_222AC5D64(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_222B018D8() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_222AC5E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_222AC5FA4(a2);
  if (*(v5 + 16) && (v6 = sub_222A26F40(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_222B018D8();
    v17 = *(v10 - 8);
    (*(v17 + 16))(a3, v9 + *(v17 + 72) * v8, v10);

    v11 = *(v17 + 56);
    v12 = a3;
    v13 = 0;
    v14 = v10;
  }

  else
  {

    v15 = sub_222B018D8();
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a3;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t sub_222AC5FA4(uint64_t a1)
{
  v2 = v1;
  v4 = swift_beginAccess();
  v5 = *(v1 + 24);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_222A26F40(a1);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    MEMORY[0x28223BE20](v4);
    v12[2] = a1;
    v8 = sub_222AC5D64(MEMORY[0x277D84F98], sub_222AC636C, v12, v9);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_222AE9E58(v8, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v13;
    swift_endAccess();
    return v8;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  return v8;
}

uint64_t sub_222AC60E4(uint64_t a1, char *a2, uint64_t a3)
{
  v20[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v11 = sub_222B018D8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  type metadata accessor for PLUSLoggingIdGenerator();
  static PLUSLoggingIdGenerator.derivePlusSuggestionLinkId(plusId:for:)(a3, a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_222A34F20(v10, &unk_27D01DA50, &unk_222B04E20);
  }

  (*(v12 + 32))(v17, v10, v11);
  v19 = *(v12 + 16);
  v19(v15, v17, v11);
  v19(v8, a2, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  sub_222AC5B74(v8, v15);
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_222AC6388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_222A26F40(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_222A2BF34();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_222B018D8();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime(0);
    v20 = *(v13 - 8);
    sub_222A2E290(v12 + *(v20 + 72) * v7, a2);
    sub_222ADF594(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_222AC6510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_222A26F40(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_222A2C4D4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_222B018D8();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    sub_222ADFB4C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = sub_222B018D8();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t ControlHomeIntentFeature.ControlHomeIntentInteractionTimestamp.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(*v2 + 96);
  v4 = sub_222B01848();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

{
  v2 = sub_222B01848();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  if ((*(v3 + 48))(a1, 1, v2) == 1)
  {
    sub_222AA5C00(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D398, &qword_222B07350);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v7 = *(v3 + 32);
    v7(v5, a1, v2);
    v7((v6 + *(*v6 + 96)), v5, v2);
  }

  return v6;
}

uint64_t ControlHomeIntentFeature.ControlHomeIntentZoneName.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DF08, &qword_222B0C668);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t INControlHomeIntentFeatureExtractor.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_222A446D4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_222B05250;
  *(v1 + 32) = sub_222A250BC(0, &qword_27D01DF00, 0x277CD3B10);
  *(v0 + 16) = v1;
  return v0;
}

uint64_t INControlHomeIntentFeatureExtractor.init()()
{
  sub_222A446D4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_222B05250;
  *(v1 + 32) = sub_222A250BC(0, &qword_27D01DF00, 0x277CD3B10);
  *(v0 + 16) = v1;
  return v0;
}

uint64_t ControlHomeIntentFeature.ControlHomeIntentInteractionTimestamp.init(value:)(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = sub_222B01848();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

{
  v3 = sub_222B01848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v4 + 48))(a1, 1, v3) == 1)
  {
    sub_222AA5C00(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D398, &qword_222B07350);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v7 = *(v4 + 32);
    v7(v6, a1, v3);
    v7((v1 + *(*v1 + 96)), v6, v3);
  }

  return v1;
}

uint64_t ControlHomeIntentFeature.ControlHomeIntentInteractionTimestamp.deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B01848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ControlHomeIntentFeature.ControlHomeIntentInteractionTimestamp.__deallocating_deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B01848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t ControlHomeIntentFeature.ControlHomeIntentZoneName.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ControlHomeIntentFeature.ControlHomeIntentZoneName.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222AC6E08(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222AC6E5C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses.init(value:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DF08, &qword_222B0C668);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222AC7000(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222AC7038(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses(0);
  result = swift_allocObject();
  if (v1)
  {
    *(result + 16) = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DF08, &qword_222B0C668);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

void *sub_222AC70AC(__objc2_class ***a1)
{
  v2 = sub_222B01848();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222B015A8();
  v65 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [*a1 dateInterval];
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = v10;
  sub_222B01568();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_222B05250;
  v64 = v8;
  v14 = v13;
  sub_222B01588();
  v15 = type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentInteractionTimestamp(0);
  v16 = swift_allocObject();
  (*(v3 + 32))(v16 + *(*v16 + 96), v5, v2);
  v14[7] = v15;
  v14[8] = sub_222AC79BC(&qword_27D01DF50, type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentInteractionTimestamp);
  v14[4] = v16;
  v17 = [v9 intent];
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18 || (v19 = [v18 filters]) == 0)
  {

    v22 = v64;
    goto LABEL_16;
  }

  v20 = v19;
  sub_222A250BC(0, &qword_27D01DF68, 0x277CD3CF8);
  v21 = sub_222B025F8();

  v22 = v64;
  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_45:

    goto LABEL_16;
  }

LABEL_44:
  if (!sub_222B02DC8())
  {
    goto LABEL_45;
  }

LABEL_6:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x223DC6F00](0, v21);
    goto LABEL_9;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v21 + 32);
LABEL_9:
    v24 = v23;

    v25 = [v24 group];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 spokenPhrase];

      v28 = sub_222B02388();
      v29 = v11;
      v31 = v30;

      v32 = type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentGroupName(0);
      v33 = swift_allocObject();
      *(v33 + 16) = v28;
      *(v33 + 24) = v31;
      v11 = v29;
      v34 = sub_222AA8FDC(1, 2, 1, v14);
      v67 = v32;
      v22 = v64;
      v68 = sub_222AC79BC(qword_27D01DF78, type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentGroupName);
      *&v66 = v33;
      v34[2] = 2;
      v14 = v34;
      sub_222A2577C(&v66, (v34 + 9));
    }

    v35 = [v24 zone];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 spokenPhrase];

      v38 = sub_222B02388();
      v40 = v39;

      v41 = type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentZoneName(0);
      v42 = swift_allocObject();
      *(v42 + 16) = v38;
      *(v42 + 24) = v40;
      v44 = v14[2];
      v43 = v14[3];
      if (v44 >= v43 >> 1)
      {
        v14 = sub_222AA8FDC((v43 > 1), v44 + 1, 1, v14);
      }

      v67 = v41;
      v68 = sub_222AC79BC(&qword_27D01DF70, type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentZoneName);
      *&v66 = v42;
      v14[2] = v44 + 1;
      sub_222A2577C(&v66, &v14[5 * v44 + 4]);
      v22 = v64;
      v11 = MEMORY[0x277D84F90];
    }

    else
    {
    }

LABEL_16:
    v45 = [v9 intentResponse];
    if (v45)
    {
      v46 = v45;
      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();
      if (v47)
      {
        v48 = [v47 entityResponses];
        if (v48)
        {
          v49 = v48;
          v61 = v46;
          sub_222A250BC(0, &qword_27D01DF58, 0x277CD3CF0);
          v50 = sub_222B025F8();

          *&v66 = v11;
          v62 = v6;
          v63 = v14;
          if (v50 >> 62)
          {
            v21 = sub_222B02DC8();
          }

          else
          {
            v21 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v22 = 0;
          v6 = v50 & 0xC000000000000001;
          v17 = MEMORY[0x277D84F90];
          v9 = &off_2784BA000;
          while (v21 != v22)
          {
            if (v6)
            {
              v51 = MEMORY[0x223DC6F00](v22, v50);
            }

            else
            {
              if (v22 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_43;
              }

              v51 = *(v50 + 8 * v22 + 32);
            }

            v52 = v51;
            v14 = (v22 + 1);
            if (__OFADD__(v22, 1))
            {
              __break(1u);
LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

            v11 = [v51 entity];

            ++v22;
            if (v11)
            {
              MEMORY[0x223DC6810]();
              if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_222B02648();
              }

              sub_222B02688();
              v17 = v66;
              v22 = v14;
            }
          }

          if (v17 >> 62)
          {
            goto LABEL_49;
          }

          v54 = v62;
          v55 = v64;
          if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

LABEL_50:

          (*(v65 + 8))(v55, v54);
          return v63;
        }
      }
    }

    (*(v65 + 8))(v22, v6);
    return v14;
  }

  __break(1u);
LABEL_49:
  v60 = sub_222B02DC8();
  v54 = v62;
  v55 = v64;
  if (!v60)
  {
    goto LABEL_50;
  }

LABEL_38:
  v56 = type metadata accessor for ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses(0);
  v57 = swift_allocObject();
  *(v57 + 16) = v17;
  v59 = v63[2];
  v58 = v63[3];
  if (v59 >= v58 >> 1)
  {
    v63 = sub_222AA8FDC((v58 > 1), v59 + 1, 1, v63);
  }

  (*(v65 + 8))(v55, v54);
  v67 = v56;
  v68 = sub_222AC79BC(&qword_27D01DF60, type metadata accessor for ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses);
  *&v66 = v57;
  v14 = v63;
  v63[2] = v59 + 1;
  sub_222A2577C(&v66, &v14[5 * v59 + 4]);
  return v14;
}

uint64_t sub_222AC79BC(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_222AC7A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_222AC7A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_222AC7B04(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_222A83678, 0, 0);
}

uint64_t sub_222AC7B24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222A34620;

  return sub_222AC7B04(a1);
}

uint64_t sub_222AC7BD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_222AC7ADC(*v1);
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t sub_222AC7C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_222AC7C7C(uint64_t a1)
{
  result = sub_222AC81E8();
  if (v2 <= 0x3F)
  {
    result = sub_222B02B28();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_222AC7D14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 33) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 17) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_222AC7ED4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 33) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

unint64_t sub_222AC81E8()
{
  result = qword_280CB4AA0;
  if (!qword_280CB4AA0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280CB4AA0);
  }

  return result;
}

uint64_t sub_222AC8260(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(a2 + 16);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = sub_222B02B28();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222AC83A8, 0, 0);
}

uint64_t sub_222AC83A8()
{
  v1 = *(v0 + 32);
  if (*(v1 + 32) == 1)
  {
    *(v1 + 32) = 0;
    v20 = (*v1 + **v1);
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_222AC8690;
    v3 = *(v0 + 104);
LABEL_8:

    return v20(v3);
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(*(v0 + 24) + 36);
  *(v0 + 176) = v9;
  (*(v6 + 16))(v4, v1 + v9, v5);
  v10 = *(v8 + 48);
  *(v0 + 128) = v10;
  *(v0 + 136) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v4, 1, v7) != 1)
  {
    v13 = *(v0 + 96);
    v14 = *(v0 + 64);
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
    v17 = *(v0 + 32);
    v18 = *(v16 + 32);
    *(v0 + 144) = v18;
    *(v0 + 152) = (v16 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v18(v14, v13, v15);
    v20 = (*v17 + **v17);
    v19 = swift_task_alloc();
    *(v0 + 160) = v19;
    *v19 = v0;
    v19[1] = sub_222AC89FC;
    v3 = *(v0 + 88);
    goto LABEL_8;
  }

  (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
  (*(*(v0 + 48) + 56))(*(v0 + 16), 1, 1, *(v0 + 40));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_222AC8690()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_222AC8C78;
  }

  else
  {
    v2 = sub_222AC87A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222AC87A4()
{
  (*(*(v0 + 80) + 40))(*(v0 + 32) + *(*(v0 + 24) + 36), *(v0 + 104), *(v0 + 72));
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = *(*(v0 + 24) + 36);
  *(v0 + 176) = v7;
  (*(v3 + 16))(v1, v6 + v7, v2);
  v8 = *(v5 + 48);
  *(v0 + 128) = v8;
  *(v0 + 136) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v8(v1, 1, v4) == 1)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
    (*(*(v0 + 48) + 56))(*(v0 + 16), 1, 1, *(v0 + 40));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 64);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    v15 = *(v0 + 32);
    v16 = *(v14 + 32);
    *(v0 + 144) = v16;
    *(v0 + 152) = (v14 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v16(v12, v11, v13);
    v19 = (*v15 + **v15);
    v17 = swift_task_alloc();
    *(v0 + 160) = v17;
    *v17 = v0;
    v17[1] = sub_222AC89FC;
    v18 = *(v0 + 88);

    return v19(v18);
  }
}

uint64_t sub_222AC89FC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_222AC8D14;
  }

  else
  {
    v2 = sub_222AC8B10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222AC8B10()
{
  v1 = *(v0 + 40);
  if ((*(v0 + 128))(*(v0 + 88), 1, v1) == 1)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 48);
    (*(*(v0 + 32) + 16))(v2);
    (*(v3 + 8))(v2, v1);
  }

  else
  {
    (*(v0 + 144))(*(v0 + 56), *(v0 + 64), v1);
  }

  v4 = *(v0 + 144);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  (*(*(v0 + 80) + 40))(*(v0 + 32) + *(v0 + 176), *(v0 + 88), *(v0 + 72));
  v4(v7, v5, v6);
  (*(*(v0 + 48) + 56))(*(v0 + 16), 0, 1, *(v0 + 40));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_222AC8C78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222AC8D14()
{
  (*(v0[6] + 8))(v0[8], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_222AC8DC8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A34620;

  return sub_222AC8260(a1, a2);
}

uint64_t sub_222AC8E8C()
{
  sub_222AC8238(*v0);
}

uint64_t SISchemaUUID.toNSUUIDSafely()@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 value];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222B01798();
    v7 = v6;

    sub_222A67044(v5, v7, a1);

    return sub_222A26530(v5, v7);
  }

  else
  {
    v9 = sub_222B018D8();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t PLUSUniversalSuggestionsInferenceLogger.__allocating_init()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 BOOLForKey_];

  v3 = &type metadata for SiriAnalyticsSharedPLUSEventLogTarget;
  if (v2)
  {
    v3 = &type metadata for DisabledPLUSEventLogTarget;
  }

  v4 = &protocol witness table for DisabledPLUSEventLogTarget;
  if (!v2)
  {
    v4 = &protocol witness table for SiriAnalyticsSharedPLUSEventLogTarget;
  }

  v8 = v3;
  v9 = v4;
  type metadata accessor for PLUSUniversalSuggestionsInferenceLogger();
  v5 = swift_allocObject();
  sub_222A1E5A8(&v7, v5 + 16);
  return v5;
}

uint64_t PLUSUniversalSuggestionsInferenceLogger.__allocating_init(logTarget:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_222A1E5A8(a1, v2 + 16);
  return v2;
}

void sub_222AC910C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v47 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v46 - v6;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v46 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v46 - v16;
  v18 = *(v9 + 16);
  v18(v15, a1, v8);
  sub_222A584E8(v15, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_222A264C8(v7);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v19 = sub_222B02148();
    __swift_project_value_buffer(v19, qword_280CBC458);
    v20 = sub_222B02128();
    v21 = sub_222B028E8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_222A1C000, v20, v21, "Could not generate a plus logging identifier for a SELF event donation", v22, 2u);
      MEMORY[0x223DC7E30](v22, -1, -1);
    }
  }

  else
  {
    v23 = *(v9 + 32);
    v23(v17, v7, v8);
    v46[0] = v17;
    v18(v12, v17, v8);
    type metadata accessor for PLUSSchemaEventConstructor(0);
    v24 = swift_allocObject();
    v23((v24 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId), v12, v8);
    *(v24 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = 2;
    v25 = sub_222AFF778(a2);
    if (v25)
    {
      v26 = v25;
      v27 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO35suggestionChangeDataCaptureMetadata10changeTypeSo0e10PLUSChangejkL0CSgSo0eojkN0V_tFZ_0(v47);
      if (v27)
      {
        v28 = v27;
        v29 = v46[1];
        v30 = sub_222A44DFC(v26, v27);
        if (v30)
        {
          v31 = v30;
          v32 = v29;
          v33 = *(v29 + 40);
          v34 = *(v29 + 48);
          __swift_project_boxed_opaque_existential_1((v32 + 16), v33);
          v35 = v46[0];
          PLUSEventLogTarget.emitMessage(_:isolatedStreamId:)(v31, v46[0], v33, v34);

          swift_setDeallocating();
          v36 = *(v9 + 8);
          v36(v24 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v8);
          swift_deallocClassInstance();
          v36(v35, v8);
          return;
        }

        v26 = v28;
      }
    }

    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v37 = sub_222B02148();
    __swift_project_value_buffer(v37, qword_280CBC458);
    v38 = sub_222B02128();
    v39 = sub_222B028E8();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v46[0];
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_222A230FC(0xD00000000000004BLL, 0x8000000222B151C0, &v48);
      _os_log_impl(&dword_222A1C000, v38, v39, "PLUSUniversalSuggestionsInferenceLogger.%s:  failed to create PLUS SELF event templates", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x223DC7E30](v43, -1, -1);
      MEMORY[0x223DC7E30](v42, -1, -1);
      swift_setDeallocating();
      v44 = *(v9 + 8);
      v44(v24 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v8);
      swift_deallocClassInstance();

      v44(v41, v8);
    }

    else
    {

      swift_setDeallocating();
      v45 = *(v9 + 8);
      v45(v24 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v8);
      swift_deallocClassInstance();
      v45(v41, v8);
    }
  }
}

void sub_222AC96F0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v58 = a3;
  v60 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v54 - v9;
  v11 = sub_222B018D8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v59 = &v54 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - v20;
  v22 = *(v12 + 16);
  v57 = a1;
  v22(v19, a1, v11);
  v23 = v19;
  v24 = v12;
  sub_222A584E8(v23, v10);
  v25 = *(v12 + 48);
  if (v25(v10, 1, v11) == 1)
  {
    sub_222A264C8(v10);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v26 = sub_222B02148();
    __swift_project_value_buffer(v26, qword_280CBC458);
    v27 = sub_222B02128();
    v28 = sub_222B028E8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_222A1C000, v27, v28, "Could not generate a plus logging identifier for a SELF event donation", v29, 2u);
      MEMORY[0x223DC7E30](v29, -1, -1);
    }
  }

  else
  {
    v54 = v3;
    v55 = v24;
    v30 = v10;
    v31 = *(v24 + 32);
    v31(v21, v30, v11);
    type metadata accessor for PLUSLoggingIdGenerator();
    static PLUSLoggingIdGenerator.derivePlusSuggestionLinkId(plusId:for:)(v21, v60, v8);
    if (v25(v8, 1, v11) == 1)
    {
      v32 = v21;
      sub_222A264C8(v8);
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v33 = sub_222B02148();
      __swift_project_value_buffer(v33, qword_280CBC458);
      v34 = sub_222B02128();
      v35 = sub_222B028E8();
      v36 = os_log_type_enabled(v34, v35);
      v37 = v55;
      if (v36)
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_222A1C000, v34, v35, "Could not generate a suggestion link id for a SELF event donation", v38, 2u);
        MEMORY[0x223DC7E30](v38, -1, -1);
      }

      (*(v37 + 8))(v32, v11);
    }

    else
    {
      v39 = v59;
      v31(v59, v8, v11);
      v40 = v56;
      v22(v56, v21, v11);
      type metadata accessor for PLUSSchemaEventConstructor(0);
      v41 = swift_allocObject();
      v31((v41 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId), v40, v11);
      v42 = v39;
      *(v41 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = 2;
      v43 = sub_222A44FF4(v57, v39, v58, 0);
      if (v43)
      {
        v44 = v43;
        v45 = v54[5];
        v46 = v54[6];
        __swift_project_boxed_opaque_existential_1(v54 + 2, v45);
        PLUSEventLogTarget.emitMessage(_:isolatedStreamId:)(v44, v21, v45, v46);
      }

      else
      {
        if (qword_280CBA628 != -1)
        {
          swift_once();
        }

        v47 = sub_222B02148();
        __swift_project_value_buffer(v47, qword_280CBC458);
        v48 = sub_222B02128();
        v49 = sub_222B028E8();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v61 = v51;
          *v50 = 136315138;
          *(v50 + 4) = sub_222A230FC(0xD00000000000004FLL, 0x8000000222B15210, &v61);
          _os_log_impl(&dword_222A1C000, v48, v49, "PLUSUniversalSuggestionsInferenceLogger.%s:  failed to create PLUS SELF event templates", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v51);
          MEMORY[0x223DC7E30](v51, -1, -1);
          MEMORY[0x223DC7E30](v50, -1, -1);
          swift_setDeallocating();
          v52 = *(v55 + 8);
          v52(v41 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v11);
          swift_deallocClassInstance();

          v52(v42, v11);
          v52(v21, v11);
          return;
        }
      }

      swift_setDeallocating();
      v53 = *(v55 + 8);
      v53(v41 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v11);
      swift_deallocClassInstance();
      v53(v42, v11);
      v53(v21, v11);
    }
  }
}

uint64_t PLUSUniversalSuggestionsInferenceLogger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222AC9F1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BiomeAsyncIterator(0, a2, a3, a4);
  v5 = a1;
  v9 = sub_222ACB0DC(v5, v6, v7, v8);

  return v9;
}

void sub_222AC9F60(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *v4;
  v7 = sub_222AC9F1C(v6, *(a2 + 16), a3, a4);

  *a1 = v7;
}

uint64_t sub_222AC9FA4()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x2822009F8](sub_222AC9FEC, 0, 0);
}

uint64_t sub_222AC9FEC()
{
  v1 = v0[3];
  if (*(v1 + 24))
  {
    v2 = v0[1];

    return v2(0);
  }

  else if (sub_222B02788())
  {
    *(v1 + 24) = 1;
    sub_222A41E6C();
    sub_222B02728();
    sub_222A34DE0();
    swift_allocError();
    sub_222B02298();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[5] = v5;
    v6 = sub_222B02B28();
    *v5 = v0;
    v5[1] = sub_222ACA1A0;
    v7 = v0[3];

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_222ACB138, v7, v6);
  }
}

uint64_t sub_222ACA1A0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_222ACA2B4;
  }

  else
  {
    v2 = sub_222A3396C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222ACA2CC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_222A41E6C();

  return v1;
}

uint64_t sub_222ACA30C()
{
  sub_222ACA2CC();

  return swift_deallocClassInstance();
}

uint64_t sub_222ACA358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_222ACA3C8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_222A33E10;

  return sub_222AC9FA4();
}

uint64_t sub_222ACA45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  v15 = type metadata accessor for BiomeAsyncIterator(0, *(a5 + 80), v13, v14);
  *v12 = v6;
  v12[1] = sub_222A60014;

  return MEMORY[0x282200320](a1, a2, a3, v15, a6, v6 + 16);
}

uint64_t sub_222ACA544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  result = type metadata accessor for AsyncTimedSequence.Iterator(0, a4, a5, v15);
  *(a6 + *(result + 36)) = a7;
  v17 = (a6 + *(result + 40));
  *v17 = a2;
  v17[1] = a3;
  return result;
}

uint64_t sub_222ACA60C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_222ACA630, 0, 0);
}

uint64_t sub_222ACA630()
{
  *(v0 + 40) = CFAbsoluteTimeGetCurrent();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_222ACA734;
  v4 = *(v0 + 16);

  return MEMORY[0x282200308](v4, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_222ACA734()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_222ACA864, 0, 0);
  }
}

uint64_t sub_222ACA864()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = CFAbsoluteTimeGetCurrent() - v1;
  if (*(v3 + *(v2 + 36)) >= v4)
  {
    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v5 = (*(v0 + 32) + *(*(v0 + 24) + 40));
    v11 = (*v5 + **v5);
    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_222ACA9C0;
    v7 = *(v0 + 16);
    v8.n128_f64[0] = v4;

    return v11(v7, v8);
  }
}

uint64_t sub_222ACA9C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_222ACAAB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A34620;

  return sub_222ACA60C(a1, a2);
}

uint64_t sub_222ACAB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v14[1] = sub_222ACACB0;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v13);
}

uint64_t sub_222ACACB0()
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

uint64_t sub_222ACADE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v14 = &v16 - v13;
  (*(v7 + 16))(v10, v3, v6);
  sub_222B02798();
  sub_222ACA544(v14, *(v3 + *(a1 + 40)), *(v3 + *(a1 + 40) + 8), v6, v11, a2, *(v3 + *(a1 + 36)));
}

uint64_t sub_222ACAF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_222ACADE4(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_222ACAFB0(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_222ACB06C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s17AsyncAwaitAdapterCMa(0, *(*v4 + 80), a3, a4);
  v6 = sub_222A426B8();
  *(v4 + 16) = v6;
  *(v4 + 24) = 0;
  [a1 subscribe_];
  return v4;
}

uint64_t sub_222ACB0DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BiomeAsyncIterator(0, *(v4 + 80), a3, a4);
  swift_allocObject();
  return sub_222ACB06C(a1, v6, v7, v8);
}

unint64_t sub_222ACB15C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_222AC81E8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_222ACB1EC(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
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

_BYTE *sub_222ACB338(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_222ACB524(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_222AC81E8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_222ACB5C4(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
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

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_222ACB764(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

  v11 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
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

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
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

LABEL_33:
      if (v8 < 0x7FFFFFFF)
      {
        v19 = ((((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = (a2 - 1);
        }
      }

      else
      {
        v18 = *(v7 + 56);

        v18(a1, a2);
      }

      return;
    }
  }

  if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

uint64_t sub_222ACB990()
{
  v1 = sub_222B01748();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + 32) bundleURL];
  sub_222B01718();

  v6 = sub_222B01698();
  (*(v2 + 8))(v4, v1);
  return v6;
}

void *PluginHandle.__allocating_init(instance:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *PluginHandle.init(instance:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t PluginHandle.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PluginHandle.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_222ACBBC4(unint64_t a1, uint64_t *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_34:
    v4 = sub_222B02DC8();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v31 = v3;
      v32 = v3 & 0xC000000000000001;
      v6 = v3 & 0xFFFFFFFFFFFFFF8;
      v7 = &off_2784BA000;
      v29 = v3 & 0xFFFFFFFFFFFFFF8;
      v30 = v4;
      do
      {
        if (v32)
        {
          v10 = MEMORY[0x223DC6F00](v5, v3);
          v11 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_31;
          }

          v10 = *(v3 + 8 * v5 + 32);
          v11 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }
        }

        v12 = v3;
        v13 = v10;
        v14 = [v10 v7[412]];
        if (!v14)
        {

LABEL_24:
          v3 = v12;
          goto LABEL_6;
        }

        v15 = v14;
        v33 = v13;
        if (([v14 hasStringPayload] & 1) == 0 && !objc_msgSend(v15, sel_hasIntegerPayload))
        {

          goto LABEL_24;
        }

        v16 = [v15 index];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3 = *a2;
        v34 = *a2;
        v18 = a2;
        *a2 = 0x8000000000000000;
        v20 = sub_222A270C0(v16);
        v21 = *(v3 + 16);
        v22 = (v19 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_32;
        }

        a2 = v19;
        if (*(v3 + 24) >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v3 = v34;
            if ((v19 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            sub_222A2C4AC();
            v3 = v34;
            if ((a2 & 1) == 0)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
          sub_222A28C1C(v23, isUniquelyReferenced_nonNull_native);
          v24 = sub_222A270C0(v16);
          if ((a2 & 1) != (v25 & 1))
          {
            sub_222B030B8();
            __break(1u);
            return;
          }

          v20 = v24;
          v3 = v34;
          if ((a2 & 1) == 0)
          {
LABEL_21:
            *(v3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
            *(*(v3 + 48) + 8 * v20) = v16;
            *(*(v3 + 56) + 8 * v20) = v15;
            v26 = *(v3 + 16);
            v27 = __OFADD__(v26, 1);
            v28 = v26 + 1;
            if (v27)
            {
              goto LABEL_33;
            }

            *(v3 + 16) = v28;
            goto LABEL_5;
          }
        }

        v8 = *(v3 + 56);
        v9 = *(v8 + 8 * v20);
        *(v8 + 8 * v20) = v15;

LABEL_5:
        a2 = v18;
        *v18 = v3;

        v4 = v30;
        v3 = v31;
        v6 = v29;
        v7 = &off_2784BA000;
LABEL_6:
        ++v5;
      }

      while (v11 != v4);
    }
  }
}

uint64_t sub_222ACBE70(unint64_t a1)
{
  v1 = a1;
  v28 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
  {
    v3 = 0;
    v4 = 0;
    v25 = i;
    v26 = v1 & 0xC000000000000001;
    v23 = v1 + 32;
    v24 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v26)
      {
        v5 = MEMORY[0x223DC6F00](v3, v1);
      }

      else
      {
        if (v3 >= *(v24 + 16))
        {
          goto LABEL_33;
        }

        v5 = *(v23 + 8 * v3);
      }

      v6 = v5;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v8 = [v5 linkedUsoNodeDatas];
      if (v8)
      {
        v9 = v8;
        sub_222A250BC(0, &qword_27D01E198, 0x277D5B290);
        v10 = sub_222B025F8();

        v27 = v4;
        if (v10 >> 62)
        {
          v11 = sub_222B02DC8();
          v12 = v1;
          if (v11)
          {
LABEL_13:
            v13 = 0;
            while (1)
            {
              if ((v10 & 0xC000000000000001) != 0)
              {
                v14 = MEMORY[0x223DC6F00](v13, v10);
              }

              else
              {
                if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_31;
                }

                v14 = *(v10 + 8 * v13 + 32);
              }

              v15 = v14;
              v1 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                break;
              }

              if ([v14 hasIntegerPayload] & 1) != 0 || (objc_msgSend(v15, sel_hasStringPayload))
              {

                v16 = [v15 index];
                v17 = v28;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                sub_222AE93F0(v15, v16, isUniquelyReferenced_nonNull_native);
                v28 = v17;
                goto LABEL_26;
              }

              ++v13;
              if (v1 == v11)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_31:
            __break(1u);
            break;
          }
        }

        else
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v12 = v1;
          if (v11)
          {
            goto LABEL_13;
          }
        }

LABEL_25:

LABEL_26:
        v1 = v12;
        i = v25;
        v4 = v27;
      }

      v19 = [v6 linkedUsoGraphNodeDatas];
      if (v19)
      {
        v20 = v19;
        sub_222A250BC(0, &qword_27D01E190, 0x277D5B268);
        v21 = sub_222B025F8();

        sub_222ACBBC4(v21, &v28);
      }

      if (v3 == i)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  return MEMORY[0x277D84F98];
}

void *sub_222ACC144(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_222B01AB8();
  v94 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v95 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v91 = &v76 - v9;
  v10 = sub_222B01EE8();
  MEMORY[0x28223BE20](v10 - 8);
  v82 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222B01F18();
  MEMORY[0x28223BE20](v12 - 8);
  v80 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_222B01F28();
  MEMORY[0x28223BE20](v14 - 8);
  v84 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_222B01B38();
  v93 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v96 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v85 = &v76 - v19;
  v20 = sub_222B01B78();
  v78 = *(v20 - 1);
  MEMORY[0x28223BE20](v20);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_222ACBE70(a2);
  sub_222B01B68();
  v79 = a1;
  v24 = [a1 nodes];
  v81 = v22;
  if (v24)
  {
    v25 = v24;
    v92 = v23;
    sub_222A250BC(0, &qword_27D01E188, 0x277D5B288);
    v26 = sub_222B025F8();

    v27 = v26;
    v28 = v26 & 0xFFFFFFFFFFFFFF8;
    v29 = v26 >> 62;
    if (v29)
    {
      goto LABEL_37;
    }

    v30 = *(v28 + 16);
    if (v30)
    {
      while (1)
      {
        v31 = v27;
        v98[0] = MEMORY[0x277D84F90];
        result = sub_222A23CEC(0, v30 & ~(v30 >> 63), 0);
        if (v30 < 0)
        {
          break;
        }

        v33 = v98[0];
        v77 = v3;
        v83 = v6;
        v76 = v20;
        v88 = v30;
        if (v29)
        {
          v27 = sub_222B02DC8();
          v34 = v31;
        }

        else
        {
          v34 = v31;
          v27 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v35 = v16;
        v6 = 0;
        v86 = v16;
        v87 = v34 & 0xC000000000000001;
        v29 = v92;
        v20 = (v93 + 32);
        v89 = v34;
        v90 = v27 & ~(v27 >> 63);
        v3 = v85;
        while (v90 != v6)
        {
          v16 = v35;
          if (v87)
          {
            v36 = MEMORY[0x223DC6F00](v6);
          }

          else
          {
            v36 = *(v34 + 8 * v6 + 32);
          }

          v37 = v36;
          sub_222B01B28();
          if ([v37 hasUsoVerbElementId])
          {
            [v37 usoVerbElementId];
            sub_222B01F38();
            sub_222B01B08();
          }

          if ([v37 hasUsoElementId])
          {
            [v37 usoElementId];
            sub_222B01AD8();
          }

          if ([v37 hasEntityLabel])
          {
            v38 = [v37 entityLabel];
            if (v38)
            {
              v39 = v38;
              sub_222B02388();

              v3 = v85;
              v16 = v86;
              sub_222B01AC8();
            }
          }

          if ([v37 hasVerbLabel])
          {
            v40 = [v37 verbLabel];
            if (v40)
            {
              v41 = v40;
              sub_222B02388();

              v3 = v85;
              v16 = v86;
              sub_222B01B18();
            }
          }

          if (*(v29 + 16))
          {
            v42 = sub_222A270C0(v6);
            if (v43)
            {
              v44 = *(*(v29 + 56) + 8 * v42);
              if ([v44 hasStringPayload] && (v45 = objc_msgSend(v44, sel_stringPayload)) != 0)
              {
                v46 = v45;
                sub_222B02388();

                v3 = v85;
                sub_222B01F08();
                sub_222B01AE8();
              }

              else if ([v44 hasIntegerPayload])
              {
                [v44 integerPayload];
                sub_222B01EF8();
                sub_222B01AF8();
              }

              v16 = v86;
            }
          }

          v47 = *v20;
          v35 = v16;
          (*v20)(v3, v96, v16);

          v98[0] = v33;
          v48 = v3;
          v50 = *(v33 + 16);
          v49 = *(v33 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_222A23CEC((v49 > 1), v50 + 1, 1);
            v35 = v16;
            v33 = v98[0];
          }

          ++v6;
          *(v33 + 16) = v50 + 1;
          v27 = v47(v33 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v50, v48, v35);
          v34 = v89;
          v3 = v48;
          v29 = v92;
          if (v88 == v6)
          {

            v3 = v77;
            v6 = v83;
            v20 = v76;
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_37:
        v51 = v27;
        v30 = sub_222B02DC8();
        v27 = v51;
        if (!v30)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_66;
    }

LABEL_38:

LABEL_39:
    v22 = v81;
    sub_222B01B58();
  }

  else
  {
  }

  v52 = [v79 edges];
  if (v52)
  {
    v53 = v52;
    sub_222A250BC(0, &qword_27D01E180, 0x277D5B230);
    v54 = sub_222B025F8();

    if (v54 >> 62)
    {
      v55 = sub_222B02DC8();
      if (v55)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v55)
      {
LABEL_43:
        v99 = MEMORY[0x277D84F90];
        result = sub_222A23CA8(0, v55 & ~(v55 >> 63), 0);
        if (v55 < 0)
        {
LABEL_66:
          __break(1u);
          return result;
        }

        v76 = v20;
        v77 = v3;
        v56 = 0;
        v93 = v54 & 0xC000000000000001;
        v57 = v99;
        v58 = (v94 + 32);
        v96 = v55;
        v83 = v6;
        v92 = v54;
        v90 = v94 + 32;
        do
        {
          if (v93)
          {
            v59 = MEMORY[0x223DC6F00](v56, v54);
          }

          else
          {
            v59 = *(v54 + 8 * v56 + 32);
          }

          v60 = v59;
          sub_222B01AA8();
          [v60 fromIndex];
          sub_222B01A98();
          [v60 toIndex];
          sub_222B01A88();
          if ([v60 hasLabel])
          {
            v61 = [v60 label];
            if (v61)
            {
              v62 = v61;
              [v61 usoElementId];
              v63 = sub_222B01A78();
              sub_222B01BB8();
              v63(v98, 0);
              [v62 enumeration];
              v64 = sub_222B01A78();
              sub_222B01BA8();
              v64(v98, 0);
              if ([v62 hasBaseEdgeLabel])
              {
                v65 = [v62 baseEdgeLabel];
                if (v65)
                {
                  v66 = v65;
                  v67 = [v65 value];

                  if (v67)
                  {
                    v89 = sub_222B02388();

                    v68 = sub_222B01A78();
                    v69 = sub_222B01B98();
                    sub_222B01B88();
                    v69(v97, 0);
                    v68(v98, 0);
                  }
                }
              }

              v6 = v83;
              v54 = v92;
              v58 = v90;
            }
          }

          v70 = *v58;
          v71 = v91;
          (*v58)(v91, v95, v6);

          v99 = v57;
          v73 = *(v57 + 16);
          v72 = *(v57 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_222A23CA8((v72 > 1), v73 + 1, 1);
            v71 = v91;
            v57 = v99;
          }

          ++v56;
          *(v57 + 16) = v73 + 1;
          v70((v57 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v73), v71, v6);
        }

        while (v96 != v56);

        v3 = v77;
        v20 = v76;
        goto LABEL_61;
      }
    }

LABEL_61:
    v22 = v81;
    sub_222B01B48();
  }

  sub_222B01C68();
  sub_222B01CA8();
  swift_allocObject();
  sub_222B01C98();
  v74 = sub_222B01BC8();
  if (v3)
  {
    (*(v78 + 8))(v22, v20);
  }

  else
  {
    v75 = v74;
    (*(v78 + 8))(v22, v20);

    return v75;
  }
}

uint64_t sub_222ACCD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v3, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return AnyAsyncSequence.init<A>(_:)(v8, AssociatedTypeWitness, a1, a2, a3);
}

uint64_t AnyAsyncSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  return sub_222ACD0B4(a1, a2, a3, a4, sub_222ACD07C, a5);
}

{
  return sub_222ACD0B4(a1, a2, a3, a4, sub_222ACD424, a5);
}

uint64_t sub_222ACCE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *x8_0@<X8>)
{
  v21 = a2;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  (*(v8 + 16))(v10, a1, a3);
  sub_222B02798();
  (*(v12 + 16))(v15, v17, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_222A83200(v15, v21, AssociatedTypeWitness, AssociatedConformanceWitness, x8_0);
  return (*(v12 + 8))(v17, AssociatedTypeWitness);
}

uint64_t sub_222ACD0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v13 = *(a3 - 8);
  v14 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  result = (*(v13 + 32))(&v15[v14], a1, a3);
  *a7 = a6;
  a7[1] = v15;
  return result;
}

uint64_t sub_222ACD194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *x8_0@<X8>)
{
  v21 = a2;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  (*(v8 + 16))(v10, a1, a3);
  sub_222B02558();
  (*(v12 + 16))(v15, v17, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_222A83480(v15, v21, AssociatedTypeWitness, AssociatedConformanceWitness, x8_0);
  return (*(v12 + 8))(v17, AssociatedTypeWitness);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_222ACD4A0()
{
  AnyAsyncSequence.makeAsyncIterator()();
}

uint64_t sub_222ACD4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t MTToggleAlarmIntentFeatureExtractor.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000013;
  *(result + 24) = 0x8000000222B15310;
  return result;
}

uint64_t MTToggleAlarmIntentFeatureExtractor.init()()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000222B15310;
  return result;
}

void *sub_222ACD584(id *a1)
{
  v2 = *a1;
  v3 = [*a1 intent];
  v4 = sub_222A816E4();
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  if (v4 == v7 && v5 == v6)
  {
  }

  else
  {
    v9 = sub_222B02F78();

    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v10 = [v3 parametersByName];
  if (!v10)
  {
LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v11 = v10;
  v12 = sub_222B022B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_222B05260;
  v14 = type metadata accessor for MTToggleAlarmEventFeature.EventType(0);
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = v6;
  *(v13 + 56) = v14;
  *(v13 + 64) = sub_222ACD988(&qword_27D01E1A0, type metadata accessor for MTToggleAlarmEventFeature.EventType);
  *(v13 + 32) = v15;

  v16 = [v2 _donatedBySiri];
  v17 = type metadata accessor for MTToggleAlarmEventFeature.DonatedBySiri(0);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v13 + 96) = v17;
  *(v13 + 104) = sub_222ACD988(&qword_27D01E1A8, type metadata accessor for MTToggleAlarmEventFeature.DonatedBySiri);
  v19 = v13;
  *(v13 + 72) = v18;
  if (!*(v12 + 16) || (v20 = sub_222A26EC8(0x6D72616C61, 0xE500000000000000), (v21 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_222A25344(*(v12 + 56) + 32 * v20, &v30);

  sub_222ACDCE0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    return v19;
  }

  v22 = v33;
  v23 = [v33 displayString];
  v24 = sub_222B02388();
  v26 = v25;

  v27 = type metadata accessor for MTToggleAlarmEventFeature.AlarmName(0);
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  *(v28 + 24) = v26;
  v19 = sub_222AA8FDC(1, 3, 1, v19);

  v31 = v27;
  v32 = sub_222ACD988(&qword_27D01E1B8, type metadata accessor for MTToggleAlarmEventFeature.AlarmName);
  *&v30 = v28;
  v19[2] = 3;
  sub_222A2577C(&v30, (v19 + 14));
  return v19;
}

uint64_t MTToggleAlarmEventFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t MTToggleAlarmEventFeature.AlarmName.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t MTToggleAlarmEventFeature.DonatedBySiri.init(value:)(char a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222ACD988(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t MTToggleAlarmEventFeature.DonatedBySiri.__allocating_init(value:)(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222ACDADC(char *a1)
{
  v1 = *a1;
  type metadata accessor for MTToggleAlarmEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222ACDB14(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for MTToggleAlarmEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1 & 1;
  }

  return result;
}

uint64_t MTToggleAlarmEventFeature.AlarmName.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MTToggleAlarmEventFeature.AlarmName.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222ACDC14(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222ACDC68(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

unint64_t sub_222ACDCE0()
{
  result = qword_27D01E1B0;
  if (!qword_27D01E1B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D01E1B0);
  }

  return result;
}

uint64_t SELFRequestID.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(*v2 + 96);
  v4 = sub_222B018D8();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

{
  v2 = sub_222B018D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  if ((*(v3 + 48))(a1, 1, v2) == 1)
  {
    sub_222A264C8(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E1F0, &qword_222B0D028);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v7 = *(v3 + 32);
    v7(v5, a1, v2);
    v7((v6 + *(*v6 + 96)), v5, v2);
  }

  return v6;
}

uint64_t SELFRequestID.init(value:)(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = sub_222B018D8();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

{
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v4 + 48))(a1, 1, v3) == 1)
  {
    sub_222A264C8(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E1F0, &qword_222B0D028);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v7 = *(v4 + 32);
    v7(v6, a1, v3);
    v7((v1 + *(*v1 + 96)), v6, v3);
  }

  return v1;
}

uint64_t SELFRequestID.deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SELFRequestID.__deallocating_deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_222ACE35C(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v2 - 8);
  v67 = &v63 - v3;
  v4 = sub_222B018D8();
  v5 = MEMORY[0x28223BE20](v4);
  v64 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v65 = &v63 - v8;
  v69 = v9;
  v70 = a1 >> 62;
  v68 = v7;
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_48:
    v11 = sub_222B02DC8();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = a1 & 0xC000000000000001;
  v66 = a1 + 32;

  v12 = 0;
  v13 = &off_2784BA000;
  v71 = v11;
  while (v11 != v12)
  {
    if (v72)
    {
      v17 = MEMORY[0x223DC6F00](v12, a1);
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v17 = *(a1 + 8 * v12 + 32);
    }

    v15 = v17;
    if ([v17 v13[94]] == 6)
    {
      v18 = [v15 payload];
      if (v18)
      {
        v19 = v18;
        v20 = sub_222B01798();
        v22 = v21;

        v23 = sub_222B01788();
        sub_222A26530(v20, v22);
      }

      else
      {
        v23 = 0;
      }

      v25 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

      v24 = [v25 event];
      v13 = &off_2784BA000;
      if (!v24)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v24 = v15;
    }

    v26 = sub_222ACEAA8();
    [v24 v13[94]];
    v27 = sub_222B02A28();
    if (!v27 || v26 != v27 || ((v28 = [v24 payload]) == 0 ? (v38 = objc_allocWithZone(swift_getObjCClassFromMetadata()), v36 = 0) : (v29 = v28, v30 = sub_222B01798(), v31 = v10, v32 = a1, v34 = v33, v29, v35 = objc_allocWithZone(swift_getObjCClassFromMetadata()), v36 = sub_222B01788(), v37 = v34, a1 = v32, v10 = v31, v11 = v71, sub_222A26530(v30, v37), v38 = v35, v13 = &off_2784BA000), v14 = objc_msgSend(v38, sel_initWithData_, v36), v36, !v14))
    {
      v14 = v24;
LABEL_5:

      v15 = v14;
      goto LABEL_6;
    }

    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (!v39)
    {

      v15 = v24;
      goto LABEL_5;
    }

    v40 = v39;

    v41 = [v40 eventMetadata];
    if (v41)
    {
      v42 = [v41 requestId];

      if (v42)
      {
        v11 = v12;
        break;
      }

      goto LABEL_7;
    }

LABEL_6:

LABEL_7:
    if (__OFADD__(v12++, 1))
    {
      goto LABEL_47;
    }
  }

  if (v70)
  {
    if (v11 == sub_222B02DC8())
    {
      goto LABEL_42;
    }

LABEL_32:
    if (v72)
    {
      v43 = MEMORY[0x223DC6F00](v11, a1);
    }

    else
    {
      if (v11 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v43 = *(v66 + 8 * v11);
    }

    v12 = v43;
    v44 = sub_222A66E6C();
    v45 = v69;
    if (v44)
    {
      v46 = v44;
      v47 = [v44 eventMetadata];

      if (v47)
      {
        v48 = [v47 requestId];

        if (v48)
        {

          v49 = [v48 value];
          v50 = v68;
          if (v49)
          {
            v51 = v49;
            v52 = sub_222B01798();
            v54 = v53;

            v55 = v67;
            sub_222A67044(v52, v54, v67);
            sub_222A26530(v52, v54);
            if ((*(v45 + 48))(v55, 1, v50) != 1)
            {
              v56 = v45;
              v57 = *(v45 + 32);
              v58 = v65;
              v57(v65, v55, v50);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
              v59 = swift_allocObject();
              *(v59 + 16) = xmmword_222B05250;
              v60 = v64;
              (*(v56 + 16))(v64, v58, v50);
              v61 = type metadata accessor for SELFRequestID(0);
              v62 = swift_allocObject();
              v57((v62 + *(*v62 + 96)), v60, v50);
              *(v59 + 56) = v61;
              *(v59 + 64) = sub_222ACEAF4();
              *(v59 + 32) = v62;

              (*(v56 + 8))(v58, v50);
              return;
            }
          }

          else
          {

            v55 = v67;
            (*(v45 + 56))(v67, 1, 1, v50);
          }

          sub_222A264C8(v55);
          return;
        }

        goto LABEL_52;
      }
    }

LABEL_51:

LABEL_52:
    __break(1u);
    return;
  }

  if (v11 != *(v10 + 16))
  {
    goto LABEL_32;
  }

LABEL_42:
}

uint64_t type metadata accessor for SELFRequestID(uint64_t a1)
{
  result = qword_280CB7570;
  if (!qword_280CB7570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_222ACEAA8()
{
  result = qword_280CB4B00;
  if (!qword_280CB4B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CB4B00);
  }

  return result;
}

unint64_t sub_222ACEAF4()
{
  result = qword_280CB7580;
  if (!qword_280CB7580)
  {
    type metadata accessor for SELFRequestID(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB7580);
  }

  return result;
}

uint64_t sub_222ACEB4C(char a1)
{
  v1 = 0xD00000000000001BLL;
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0xD000000000000031;
    }

    else
    {
      v1 = 0xD00000000000002BLL;
    }

    if (a1 == 1)
    {
      v2 = "sPhoneCallOrMessagesContact";
    }

    else
    {
      v2 = "cs13SELFRequestID";
    }
  }

  else
  {
    v2 = "CallOrMessagesConfirmation";
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E1F8, &qword_222B0D0C0);
  v5 = sub_222B023D8();
  v6 = v3;

  MEMORY[0x223DC66E0](46, 0xE100000000000000);

  MEMORY[0x223DC66E0](v1, v2 | 0x8000000000000000);

  MEMORY[0x223DC66E0](v5, v6);
}

BOOL static PrivateLearningPluginRunContext.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t PrivateLearningPluginRunContext.description.getter()
{
  v1 = *v0;
  if (v1 == 3)
  {
    return 0x616E65746E69614DLL;
  }

  MEMORY[0x223DC66E0](0x736142746E657645, 0xEB000000005B6465);
  sub_222ACEB4C(v1);
  MEMORY[0x223DC66E0](93, 0xE100000000000000);
  return 0;
}

uint64_t static PrivateLearningPluginError.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_222B02F78();
  }
}

uint64_t PrivateLearningPluginError.message.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_222ACEDB4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_222B02F78();
  }
}

ValueMetadata *PrivateLearningPluginRunScenario.description.getter()
{
  v1 = "sPhoneCallOrMessagesContact";
  v2 = 0xD000000000000031;
  if (*v0 != 1)
  {
    v2 = 0xD00000000000002BLL;
    v1 = "cs13SELFRequestID";
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = "CallOrMessagesConfirmation";
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E1F8, &qword_222B0D0C0);
  v6 = sub_222B023D8();

  MEMORY[0x223DC66E0](46, 0xE100000000000000);

  MEMORY[0x223DC66E0](v3, v4 | 0x8000000000000000);

  return v6;
}

uint64_t PrivateLearningPluginRunScenario.hashValue.getter()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC7380](v1);
  return sub_222B03168();
}

uint64_t sub_222ACEF74()
{
  v1 = *v0;
  if (v1 == 3)
  {
    return 0x616E65746E69614DLL;
  }

  MEMORY[0x223DC66E0](0x736142746E657645, 0xEB000000005B6465);
  sub_222ACEB4C(v1);
  MEMORY[0x223DC66E0](93, 0xE100000000000000);
  return 0;
}

BOOL sub_222ACF010(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t _s28SiriPrivateLearningAnalytics0bC12PluginResultO2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *a1 == *a2 && v3 == v4;
    if (!v5 && (sub_222B02F78() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4)
    {
      return 0;
    }

    swift_bridgeObjectRelease_n();
  }

  return 1;
}

unint64_t sub_222ACF0BC()
{
  result = qword_27D01E200;
  if (!qword_27D01E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E200);
  }

  return result;
}

uint64_t sub_222ACF110(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_222ACF160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_222ACF1B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PrivateLearningPluginRunContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PrivateLearningPluginRunContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_222ACF350(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_222ACF364(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

void *sub_222ACF3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v64 = a3;
  v5 = sub_222B01748();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v63 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v62 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v62 - v12;
  if (a2)
  {
    sub_222B016B8();
    v14 = sub_222B01698();
    v16 = v15;
    v62 = *(v6 + 8);
    v62(v13, v5);
    LOBYTE(v14) = sub_222A97538(v14, v16, a2);

    if ((v14 & 1) == 0)
    {
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v29 = sub_222B02148();
      __swift_project_value_buffer(v29, qword_280CBC458);
      (*(v6 + 16))(v11, a1, v5);
      v30 = sub_222B02128();
      v31 = sub_222B028D8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v65 = v33;
        *v32 = 136315138;
        sub_222A470A4();
        v34 = sub_222B02F38();
        v36 = v35;
        v62(v11, v5);
        v37 = sub_222A230FC(v34, v36, &v65);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_222A1C000, v30, v31, "PluginLoader skipping plugin bundle (not allowed), path=%s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x223DC7E30](v33, -1, -1);
        MEMORY[0x223DC7E30](v32, -1, -1);
      }

      else
      {

        v62(v11, v5);
      }

      goto LABEL_36;
    }
  }

  sub_222B01738();
  v17 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v18 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v19 = [v17 initWithPath_];

  if (!v19)
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v38 = sub_222B02148();
    __swift_project_value_buffer(v38, qword_280CBC458);
    v39 = v63;
    (*(v6 + 16))(v63, a1, v5);
    v19 = sub_222B02128();
    v40 = sub_222B028E8();
    if (!os_log_type_enabled(v19, v40))
    {

      (*(v6 + 8))(v39, v5);
LABEL_36:
      result = 0;
      goto LABEL_37;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v65 = v42;
    *v41 = 136315138;
    v43 = sub_222B01738();
    v45 = v44;
    (*(v6 + 8))(v39, v5);
    v46 = sub_222A230FC(v43, v45, &v65);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_222A1C000, v19, v40, "PluginLoader failed init Bundle at %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x223DC7E30](v42, -1, -1);
    MEMORY[0x223DC7E30](v41, -1, -1);
LABEL_35:

    goto LABEL_36;
  }

  v20 = [v19 bundleURL];
  sub_222B01718();

  v21 = sub_222B01698();
  v23 = v22;
  (*(v6 + 8))(v13, v5);
  if (![v19 load])
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v47 = sub_222B02148();
    __swift_project_value_buffer(v47, qword_280CBC458);

    v48 = sub_222B02128();
    v49 = sub_222B028E8();

    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_33;
    }

    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v65 = v51;
    *v50 = 136315138;
    v52 = sub_222A230FC(v21, v23, &v65);

    *(v50 + 4) = v52;
    v53 = "PluginLoader failed to load %s";
    goto LABEL_27;
  }

  if (![v19 principalClass])
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v54 = sub_222B02148();
    __swift_project_value_buffer(v54, qword_280CBC458);

    v48 = sub_222B02128();
    v49 = sub_222B028E8();

    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_33;
    }

    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v65 = v51;
    *v50 = 136315138;
    v55 = sub_222A230FC(v21, v23, &v65);

    *(v50 + 4) = v55;
    v53 = "PluginLoader couldn't find the principal class in %s";
LABEL_27:
    _os_log_impl(&dword_222A1C000, v48, v49, v53, v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x223DC7E30](v51, -1, -1);
    v56 = v50;
LABEL_28:
    MEMORY[0x223DC7E30](v56, -1, -1);
LABEL_34:

    goto LABEL_35;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v25 = swift_conformsToProtocol2();
  if (!v25 || !ObjCClassMetadata)
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v57 = sub_222B02148();
    __swift_project_value_buffer(v57, qword_280CBC458);

    v48 = sub_222B02128();
    v58 = sub_222B028E8();

    if (os_log_type_enabled(v48, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v59 = 136315394;
      *(v59 + 4) = sub_222A230FC(0xD000000000000015, 0x8000000222B15560, &v65);
      *(v59 + 12) = 2080;
      v61 = sub_222A230FC(v21, v23, &v65);

      *(v59 + 14) = v61;
      _os_log_impl(&dword_222A1C000, v48, v58, "PluginLoader found principal class which doesn't conform to %s in %s", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v60, -1, -1);
      v56 = v59;
      goto LABEL_28;
    }

LABEL_33:

    goto LABEL_34;
  }

  v26 = v25;

  v27 = (*(v26 + 8))(ObjCClassMetadata, v26);
  type metadata accessor for PluginHandle();
  result = swift_allocObject();
  result[2] = v27;
  result[3] = v26;
  result[4] = v19;
LABEL_37:
  *v64 = result;
  return result;
}

void *sub_222ACFCD4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v84 = a3;
  v85 = a2;
  v87[1] = *MEMORY[0x277D85DE8];
  v4 = sub_222B01748();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v82 = &v81 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v81 - v12;
  MEMORY[0x28223BE20](v11);
  v83 = &v81 - v14;
  v86 = 0;
  v15 = [objc_opt_self() defaultManager];
  sub_222B01738();
  v16 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v17 = [v15 fileExistsAtPath:v16 isDirectory:&v86];

  if (v17 && v86 == 1)
  {
    v18 = v84;
    sub_222B016E8();
    v19 = v83;
    sub_222B016F8();
    v20 = v13;
    v21 = v4;
    v22 = v19;
    v81 = *(v5 + 8);
    v81(v20, v21);
    v23 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v24 = sub_222B016A8();
    v25 = [v23 initWithURL_];

    if (v25)
    {
      if ([v25 load])
      {
        v26 = [v25 principalClass];
        v27 = v85;
        if (v26)
        {
          ObjCClassMetadata = swift_getObjCClassMetadata();
          v29 = swift_conformsToProtocol2();
          if (v29 && ObjCClassMetadata)
          {
            v30 = v29;
            v31 = (*(v29 + 8))(ObjCClassMetadata, v29);
            v81(v22, v21);
            type metadata accessor for PluginHandle();
            result = swift_allocObject();
            result[2] = v31;
            result[3] = v30;
            result[4] = v25;
            return result;
          }

          if (qword_280CBA628 != -1)
          {
            swift_once();
          }

          v75 = sub_222B02148();
          __swift_project_value_buffer(v75, qword_280CBC458);

          v76 = sub_222B02128();
          v77 = sub_222B028E8();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v87[0] = v79;
            *v78 = 136315394;
            *(v78 + 4) = sub_222A230FC(0xD000000000000015, 0x8000000222B15560, v87);
            *(v78 + 12) = 2080;
            *(v78 + 14) = sub_222A230FC(v27, v18, v87);
            _os_log_impl(&dword_222A1C000, v76, v77, "PluginLoader.load() found principal class which doesn't conform to %s in %s", v78, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DC7E30](v79, -1, -1);
            MEMORY[0x223DC7E30](v78, -1, -1);
          }

          sub_222AD0B08();
          swift_allocError();
          *v80 = v27;
          *(v80 + 8) = v18;
          *(v80 + 16) = 2;
          swift_willThrow();

          v74 = v83;
          return (v81)(v74, v21);
        }

        if (qword_280CBA628 != -1)
        {
          swift_once();
        }

        v67 = sub_222B02148();
        __swift_project_value_buffer(v67, qword_280CBC458);

        v68 = sub_222B02128();
        v69 = sub_222B028E8();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v87[0] = v71;
          *v70 = 136315138;
          *(v70 + 4) = sub_222A230FC(v27, v84, v87);
          _os_log_impl(&dword_222A1C000, v68, v69, "PluginLoader.load() couldn't find the principal class in %s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v71);
          v72 = v71;
          v18 = v84;
          MEMORY[0x223DC7E30](v72, -1, -1);
          MEMORY[0x223DC7E30](v70, -1, -1);
        }

        sub_222AD0B08();
        swift_allocError();
        *v73 = v27;
        *(v73 + 8) = v18;
        *(v73 + 16) = 1;
      }

      else
      {
        v58 = v85;
        if (qword_280CBA628 != -1)
        {
          swift_once();
        }

        v59 = sub_222B02148();
        __swift_project_value_buffer(v59, qword_280CBC458);

        v60 = sub_222B02128();
        v61 = sub_222B028E8();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v87[0] = v63;
          *v62 = 136315138;
          *(v62 + 4) = sub_222A230FC(v58, v84, v87);
          _os_log_impl(&dword_222A1C000, v60, v61, "PluginLoader.load() failed to load %s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
          v64 = v63;
          v18 = v84;
          MEMORY[0x223DC7E30](v64, -1, -1);
          MEMORY[0x223DC7E30](v62, -1, -1);
        }

        sub_222AD0B08();
        swift_allocError();
        *v65 = v58;
        *(v65 + 8) = v18;
        *(v65 + 16) = 0;
      }

      swift_willThrow();

      v74 = v22;
      return (v81)(v74, v21);
    }

    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v44 = sub_222B02148();
    __swift_project_value_buffer(v44, qword_280CBC458);
    v45 = v82;
    (*(v5 + 16))(v82, v22, v21);
    v46 = sub_222B02128();
    v47 = v21;
    v48 = sub_222B028E8();
    if (os_log_type_enabled(v46, v48))
    {
      v49 = swift_slowAlloc();
      v50 = v45;
      v51 = swift_slowAlloc();
      v87[0] = v51;
      *v49 = 136315138;
      sub_222A470A4();
      v52 = sub_222B02F38();
      v54 = v53;
      v55 = v50;
      v56 = v81;
      v81(v55, v47);
      v57 = sub_222A230FC(v52, v54, v87);
      v18 = v84;

      *(v49 + 4) = v57;
      v22 = v83;
      _os_log_impl(&dword_222A1C000, v46, v48, "PluginLoader.load() failed init Bundle at %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x223DC7E30](v51, -1, -1);
      MEMORY[0x223DC7E30](v49, -1, -1);
    }

    else
    {

      v56 = v81;
      v81(v45, v47);
    }

    sub_222AD0B08();
    swift_allocError();
    *v66 = v85;
    *(v66 + 8) = v18;
    *(v66 + 16) = 0;
    swift_willThrow();

    return v56(v22, v47);
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v33 = sub_222B02148();
    __swift_project_value_buffer(v33, qword_280CBC458);
    v34 = v4;
    (*(v5 + 16))(v8, a1, v4);
    v35 = sub_222B02128();
    v36 = sub_222B028E8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v87[0] = v38;
      *v37 = 136315138;
      sub_222A470A4();
      v39 = sub_222B02F38();
      v41 = v40;
      (*(v5 + 8))(v8, v34);
      v42 = sub_222A230FC(v39, v41, v87);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_222A1C000, v35, v36, "PluginLoader.load(): %s is not a directory", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x223DC7E30](v38, -1, -1);
      MEMORY[0x223DC7E30](v37, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    sub_222AD0B08();
    swift_allocError();
    *v43 = 0;
    *(v43 + 8) = 0;
    *(v43 + 16) = 3;
    return swift_willThrow();
  }
}

id sub_222AD07BC(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = sub_222B01748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_222B016A8();
  v27 = 0;
  v9 = [v7 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:0 error:&v27];

  v10 = v27;
  if (!v9)
  {
    v19 = v27;
    v13 = sub_222B01628();

    swift_willThrow();
    sub_222AD0B08();
    swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 3;
    swift_willThrow();
    return v13;
  }

  v11 = sub_222B025F8();
  v12 = v10;

  v13 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v14 = *(v11 + 16);
  if (!v14)
  {
LABEL_13:

    return v13;
  }

  v15 = 0;
  v24 = *(v11 + 16);
  v25 = v4 + 16;
  v16 = (v4 + 8);
  v23 = v14 - 1;
  while (1)
  {
    if (v15 >= *(v11 + 16))
    {
      __break(1u);
    }

    (*(v4 + 16))(v6, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v3);
    sub_222ACF3DC(v6, v26, v28);
    if (v2)
    {
      break;
    }

    v17 = (*v16)(v6, v3);
    if (v28[0])
    {
      MEMORY[0x223DC6810](v17);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222B02648();
      }

      v22 = v15 + 1;
      sub_222B02688();
      v13 = v27;
      v18 = v23 == v15;
      v15 = v22;
      if (v18)
      {
        goto LABEL_13;
      }
    }

    else if (v24 == ++v15)
    {
      goto LABEL_13;
    }
  }

  (*v16)(v6, v3);

  __break(1u);
  return result;
}

unint64_t sub_222AD0B08()
{
  result = qword_27D01E208;
  if (!qword_27D01E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E208);
  }

  return result;
}

uint64_t sub_222AD0B5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x534F63616DLL;
    }

    else
    {
      v4 = 5459817;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1397716596;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x534F6863746177;
  }

  else
  {
    v4 = 0x4F6E776F6E6B6E75;
    v3 = 0xE900000000000053;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x534F63616DLL;
    }

    else
    {
      v9 = 5459817;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x534F6863746177;
    if (a2 != 3)
    {
      v6 = 0x4F6E776F6E6B6E75;
      v5 = 0xE900000000000053;
    }

    if (a2 == 2)
    {
      v7 = 1397716596;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_222B02F78();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_222AD0CD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000004E574F4ELL;
  v3 = 0xD000000000000013;
  v4 = 0x4B4E552D56455250;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0x4B4E552D56455250;
    }

    if (v5 == 2)
    {
      v7 = 0x8000000222B101A0;
    }

    else
    {
      v7 = 0xEC0000004E574F4ELL;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (v5)
    {
      v7 = 0x8000000222B10180;
    }

    else
    {
      v7 = 0x8000000222B10160;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000013;
    v2 = 0x8000000222B101A0;
  }

  v8 = 0x8000000222B10180;
  if (!a2)
  {
    v3 = 0xD000000000000011;
    v8 = 0x8000000222B10160;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_222B02F78();
  }

  return v11 & 1;
}

SiriPrivateLearningAnalytics::FeatureControl __swiftcall FeatureControl.init(defaultEnablement:)(Swift::OpaquePointer defaultEnablement)
{
  v1->_rawValue = MEMORY[0x277D84F90];
  v1[1]._rawValue = defaultEnablement._rawValue;
  result.localeControls = defaultEnablement;
  return result;
}

__n128 AnyFeature.__allocating_init(name:control:)(unint64_t a1, unint64_t a2, __n128 *a3)
{
  v6 = swift_allocObject();
  v6[1].n128_u64[0] = a1;
  v6[1].n128_u64[1] = a2;
  result = *a3;
  v6[2] = *a3;
  return result;
}

SiriPrivateLearningAnalytics::OSType_optional __swiftcall OSType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222B02E48();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t OSType.rawValue.getter()
{
  v1 = *v0;
  v2 = 5459817;
  v3 = 1397716596;
  v4 = 0x534F6863746177;
  if (v1 != 3)
  {
    v4 = 0x4F6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x534F63616DLL;
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

uint64_t sub_222AD0F4C()
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AD1020(uint64_t a1)
{
  sub_222B02448();
}

uint64_t sub_222AD10E0(uint64_t a1)
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

void sub_222AD11BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  v5 = 0xE400000000000000;
  v6 = 1397716596;
  v7 = 0xE700000000000000;
  v8 = 0x534F6863746177;
  if (v2 != 3)
  {
    v8 = 0x4F6E776F6E6B6E75;
    v7 = 0xE900000000000053;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x534F63616DLL;
    v3 = 0xE500000000000000;
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

uint64_t FeatureResolver.init(featureFlagResolver:trialResolver:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_222A1E5A8(a1, a3);

  return sub_222A1E5A8(a2, a3 + 40);
}

uint64_t FeatureResolver.isTrialFactorEnabled(_:scope:)(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = v2[8];
  v7 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v6);
  v9[0] = v5;
  v9[1] = v4;
  return (*(v7 + 8))(a1, v9, v6, v7) & 1;
}

double FeatureResolver.getTrialFactorValue(_:scope:)(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = v2[8];
  v7 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v6);
  v9[0] = v5;
  v9[1] = v4;
  (*(v7 + 16))(a1, v9, v6, v7);
  return result;
}

uint64_t FeatureResolver.isFeatureFlagEnabled(_:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 8))(a1, v3, v4) & 1;
}

Swift::Void __swiftcall FeatureResolver.refresh()()
{
  v1 = v0;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CBC458);
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_222A1C000, v3, v4, "FeatureResolver: refreshing trial resolver", v5, 2u);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  v6 = v1[8];
  v7 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v6);
  (*(v7 + 24))(v6, v7);
}

uint64_t sub_222AD18A0(uint64_t *a1)
{
  v2 = *a1;
  if ((a1[1] & 1) == 0)
  {
    result = sub_222AD322C(v1, v25);
    v10 = *(v2 + 16);
    if (!v10)
    {
LABEL_26:
      v16 = 0;
      goto LABEL_27;
    }

    v11 = 0;
    v12 = v2 + 32;
    while (1)
    {
      if (v11 >= *(v2 + 16))
      {
        goto LABEL_30;
      }

      sub_222AD3264(v12, v24);
      sub_222AD3264(v24, &v19);
      if (!v23)
      {
        break;
      }

      if (v23 == 1)
      {
        sub_222A1E5A8(&v19, &v17);
        v14 = v26;
        v15 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        v13 = (*(v15 + 8))(&v17, v14, v15);
        __swift_destroy_boxed_opaque_existential_0(&v17);
LABEL_16:
        result = sub_222AD329C(v24);
        if (v13)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }

      if (!(*(&v19 + 1) | v19 | v22 | v21 | v20))
      {
        sub_222AD329C(v24);
        v16 = 1;
        goto LABEL_27;
      }

      result = sub_222AD329C(v24);
LABEL_17:
      ++v11;
      v12 += 48;
      if (v10 == v11)
      {
        goto LABEL_26;
      }
    }

    v17 = *(&v19 + 1);
    v18 = v20;
    v13 = FeatureResolver.isTrialFactorEnabled(_:scope:)(v19, &v17);

    goto LABEL_16;
  }

  result = sub_222AD322C(v1, v25);
  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_24:
    v16 = 1;
LABEL_27:
    sub_222A35F58(v25);
    return v16;
  }

  v5 = 0;
  v6 = v2 + 32;
  while (v5 < *(v2 + 16))
  {
    sub_222AD3264(v6, v24);
    sub_222AD3264(v24, &v19);
    if (!v23)
    {
      v17 = *(&v19 + 1);
      v18 = v20;
      v7 = FeatureResolver.isTrialFactorEnabled(_:scope:)(v19, &v17);

      goto LABEL_5;
    }

    if (v23 == 1)
    {
      sub_222A1E5A8(&v19, &v17);
      v8 = v26;
      v9 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v7 = (*(v9 + 8))(&v17, v8, v9);
      __swift_destroy_boxed_opaque_existential_0(&v17);
LABEL_5:
      result = sub_222AD329C(v24);
      if ((v7 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    if (*(&v19 + 1) | v19 | v22 | v21 | v20)
    {
      sub_222AD329C(v24);
      goto LABEL_26;
    }

    result = sub_222AD329C(v24);
LABEL_6:
    ++v5;
    v6 += 48;
    if (v4 == v5)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t FeatureResolver.getDoubleFeatureParameterValue(parameter:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v6[0] = a1[1];
  v6[1] = v2;

  FeatureResolver.getTrialFactorValue(_:scope:)(v1, v6);
  v4 = v3;

  return v4;
}

uint64_t LocaleControl.init(locales:enablement:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static FeatureControlError.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  return _s28SiriPrivateLearningAnalytics6LocaleV2eeoiySbAC_ACtFZ_0(&v11, &v8) & 1;
}

uint64_t sub_222AD1C08(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  return _s28SiriPrivateLearningAnalytics6LocaleV2eeoiySbAC_ACtFZ_0(&v11, &v8) & 1;
}

double FeatureControl.init(localeControl:defaultEnablement:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E210, &qword_222B0D3D8);
  v6 = swift_allocObject();
  *&result = 1;
  v8 = *a1;
  *(v6 + 16) = xmmword_222B05250;
  *(v6 + 32) = v8;
  *a3 = v6;
  a3[1] = a2;
  return result;
}

double FeatureControl.init(localeControl:)@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_222A395C8(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E210, &qword_222B0D3D8);
  v5 = swift_allocObject();
  *&result = 1;
  v7 = *a1;
  *(v5 + 16) = xmmword_222B05250;
  *(v5 + 32) = v7;
  *a2 = v5;
  a2[1] = v4;
  return result;
}

SiriPrivateLearningAnalytics::FeatureControl __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeatureControl.init(localeControls:defaultEnablement:)(Swift::OpaquePointer localeControls, Swift::OpaquePointer defaultEnablement)
{
  v6 = v2;

  sub_222AD2A40(v7);
  if (v3)
  {

    v8 = swift_bridgeObjectRelease_n();
  }

  else
  {

    v6->_rawValue = localeControls._rawValue;
    v6[1]._rawValue = defaultEnablement._rawValue;
  }

  result.defaultEnablement._rawValue = v9;
  result.localeControls._rawValue = v8;
  return result;
}

uint64_t sub_222AD1D90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 *a5)
{
  v7 = a2;
  v8 = a4[1];
  v9 = a4[3];
  v72 = *a4;
  v73 = a4[2];
  v67 = *a5;
  v10 = *v5;
  v65 = v5[1];
  v11 = *(*v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 32;
    v70 = a4[1];
    v71 = a4[3];
    v63 = *(*v5 + 16);
    v64 = *v5;
    v62 = v10 + 32;
    while (v12 < *(v10 + 16))
    {
      v14 = (v13 + 16 * v12);
      v15 = *v14;
      if (*(*v14 + 16))
      {
        v16 = v14[1];
        sub_222B03128();
        v74[0] = v72;
        v74[1] = v8;

        MEMORY[0x223DC66E0](95, 0xE100000000000000);
        MEMORY[0x223DC66E0](v73, v9);
        sub_222B02448();

        v17 = sub_222B03168();
        v18 = -1 << *(v15 + 32);
        v19 = v17 & ~v18;
        if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          v20 = ~v18;
          while (1)
          {
            v21 = (*(v15 + 48) + 32 * v19);
            v22 = v21[1];
            v23 = v21[2];
            v6 = v21[3];
            v75 = *v21;
            swift_bridgeObjectRetain_n();

            MEMORY[0x223DC66E0](95, 0xE100000000000000);
            MEMORY[0x223DC66E0](v23, v6);
            v24 = v75;
            v75 = v72;
            v76 = v70;

            MEMORY[0x223DC66E0](95, 0xE100000000000000);
            MEMORY[0x223DC66E0](v73, v71);
            if (v24 == v72 && v22 == v76)
            {
              break;
            }

            v25 = sub_222B02F78();

            if (v25)
            {
              goto LABEL_35;
            }

            v19 = (v19 + 1) & v20;
            if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

LABEL_35:
          if (*(v16 + 16))
          {
            LODWORD(v9) = v67;
            v47 = sub_222A26FC4(v67);
            v8 = v70;
            v12 = v71;
            v7 = a2;
            if (v48)
            {
              v49 = *(v16 + 56) + 16 * v47;
              v50 = *v49;
              LOBYTE(v49) = *(v49 + 8);
              v75 = v50;
              LOBYTE(v76) = v49;
              LOBYTE(v6) = sub_222AD18A0(&v75);
            }

            else
            {

              LOBYTE(v6) = 0;
            }
          }

          else
          {

            LOBYTE(v6) = 0;
            v8 = v70;
            v12 = v71;
            LODWORD(v9) = v67;
            v7 = a2;
          }

          if (qword_280CBA628 == -1)
          {
LABEL_41:
            v51 = sub_222B02148();
            __swift_project_value_buffer(v51, qword_280CBC458);

            v31 = sub_222B02128();
            v32 = sub_222B028D8();

            if (!os_log_type_enabled(v31, v32))
            {
              goto LABEL_60;
            }

            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v74[0] = v34;
            *v33 = 136315906;
            *(v33 + 4) = sub_222A230FC(a1, v7, v74);
            *(v33 + 12) = 2080;
            v69 = v6;
            if (v6)
            {
              v52 = 0x64656C62616E65;
            }

            else
            {
              v52 = 0x64656C6261736964;
            }

            if (v6)
            {
              v53 = 0xE700000000000000;
            }

            else
            {
              v53 = 0xE800000000000000;
            }

            v54 = sub_222A230FC(v52, v53, v74);

            *(v33 + 14) = v54;
            *(v33 + 22) = 2080;
            v75 = v72;
            v76 = v8;

            MEMORY[0x223DC66E0](95, 0xE100000000000000);
            MEMORY[0x223DC66E0](v73, v12);
            v55 = sub_222A230FC(v75, v76, v74);

            *(v33 + 24) = v55;
            *(v33 + 32) = 2080;
            if (v9 <= 1)
            {
              if (v9)
              {
                v56 = 0xE500000000000000;
                v57 = 0x534F63616DLL;
              }

              else
              {
                v57 = 5459817;
                v56 = 0xE300000000000000;
              }
            }

            else
            {
              if (v9 != 2)
              {
                LOBYTE(v6) = v69;
                if (v9 == 3)
                {
                  v56 = 0xE700000000000000;
                  v57 = 0x534F6863746177;
                }

                else
                {
                  v57 = 0x4F6E776F6E6B6E75;
                  v56 = 0xE900000000000053;
                }

LABEL_58:
                v58 = sub_222A230FC(v57, v56, v74);

                *(v33 + 34) = v58;
                v59 = "Feature %s is %s in locale: %s for %s";
LABEL_59:
                _os_log_impl(&dword_222A1C000, v31, v32, v59, v33, 0x2Au);
                swift_arrayDestroy();
                MEMORY[0x223DC7E30](v34, -1, -1);
                MEMORY[0x223DC7E30](v33, -1, -1);
                goto LABEL_60;
              }

              v56 = 0xE400000000000000;
              v57 = 1397716596;
            }

            LOBYTE(v6) = v69;
            goto LABEL_58;
          }

LABEL_72:
          swift_once();
          goto LABEL_41;
        }

LABEL_3:

        v8 = v70;
        v9 = v71;
        v7 = a2;
        v11 = v63;
        v10 = v64;
        v13 = v62;
      }

      if (++v12 == v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_72;
  }

LABEL_14:
  if (*(v65 + 16) && (v26 = sub_222A26FC4(v67), (v27 & 1) != 0))
  {
    v28 = *(v65 + 56) + 16 * v26;
    v29 = *v28;
    LOBYTE(v28) = *(v28 + 8);
    v75 = v29;
    LOBYTE(v76) = v28;
    LOBYTE(v6) = sub_222AD18A0(&v75);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v30 = sub_222B02148();
    __swift_project_value_buffer(v30, qword_280CBC458);

    v31 = sub_222B02128();
    v32 = sub_222B028D8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v74[0] = v34;
      *v33 = 136315906;
      *(v33 + 4) = sub_222A230FC(a1, v7, v74);
      *(v33 + 12) = 2080;
      v75 = v72;
      v76 = v8;

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v73, v9);
      v35 = sub_222A230FC(v75, v76, v74);

      *(v33 + 14) = v35;
      *(v33 + 22) = 2080;
      if (v6)
      {
        v36 = 0x64656C62616E65;
      }

      else
      {
        v36 = 0x64656C6261736964;
      }

      if (v6)
      {
        v37 = 0xE700000000000000;
      }

      else
      {
        v37 = 0xE800000000000000;
      }

      v38 = sub_222A230FC(v36, v37, v74);

      *(v33 + 24) = v38;
      *(v33 + 32) = 2080;
      if (v67 <= 1)
      {
        if (v67)
        {
          v40 = 0x534F63616DLL;
        }

        else
        {
          v40 = 5459817;
        }

        if (v67)
        {
          v39 = 0xE500000000000000;
        }

        else
        {
          v39 = 0xE300000000000000;
        }
      }

      else if (v67 == 2)
      {
        v39 = 0xE400000000000000;
        v40 = 1397716596;
      }

      else if (v67 == 3)
      {
        v39 = 0xE700000000000000;
        v40 = 0x534F6863746177;
      }

      else
      {
        v40 = 0x4F6E776F6E6B6E75;
        v39 = 0xE900000000000053;
      }

      v61 = sub_222A230FC(v40, v39, v74);

      *(v33 + 34) = v61;
      v59 = "Feature %s in %s is not in a controlled locale and is %s for %s";
      goto LABEL_59;
    }

LABEL_60:
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v41 = sub_222B02148();
    __swift_project_value_buffer(v41, qword_280CBC458);

    v42 = sub_222B02128();
    v43 = sub_222B028D8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v74[0] = v45;
      *v44 = 136315394;
      *(v44 + 4) = sub_222A230FC(a1, v7, v74);
      *(v44 + 12) = 2080;
      v75 = v72;
      v76 = v8;

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v73, v9);
      v46 = sub_222A230FC(v75, v76, v74);

      *(v44 + 14) = v46;
      _os_log_impl(&dword_222A1C000, v42, v43, "Feature %s in locale: %s is disabled", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v45, -1, -1);
      MEMORY[0x223DC7E30](v44, -1, -1);
    }

    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

uint64_t AnyFeature.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double AnyFeature.control.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;

  return result;
}

uint64_t AnyFeature.init(name:control:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  return v3;
}

uint64_t sub_222AD27E8(uint64_t a1, __int128 *a2, unsigned __int8 *a3)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = *a3;
  v9 = v3[5];
  v17 = v3[4];
  v18 = v9;
  v10 = v3[2];
  v11 = v3[3];
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v13 = v8;

  LOBYTE(a1) = sub_222AD1D90(v10, v11, a1, &v14, &v13);

  return a1 & 1;
}

void *AnyFeature.deinit()
{

  return v0;
}

uint64_t AnyFeature.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222AD2910(uint64_t a1, __int128 *a2, unsigned __int8 *a3)
{
  v5 = *v3;
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *a3;
  v10 = *(*v3 + 40);
  v18 = *(*v3 + 32);
  v19 = v10;
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v14 = v9;

  LOBYTE(a1) = sub_222AD1D90(v11, v12, a1, &v15, &v14);

  return a1 & 1;
}

uint64_t DoubleFeatureParameter.init(factor:scope:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  *a3 = result;
  a3[1] = v3;
  a3[2] = v4;
  return result;
}

uint64_t DoubleFeatureParameter.getValue(resolver:)()
{
  v1 = *v0;
  v2 = v0[2];
  v6[0] = v0[1];
  v6[1] = v2;

  FeatureResolver.getTrialFactorValue(_:scope:)(v1, v6);
  v4 = v3;

  return v4;
}

void sub_222AD2A40(uint64_t a1)
{
  v42 = MEMORY[0x277D84FA0];
  v29 = *(a1 + 16);
  if (!v29)
  {
LABEL_23:

    return;
  }

  v1 = 0;
  v2 = a1 + 32;
  v28 = a1 + 32;
  while (2)
  {
    v3 = *(v2 + 16 * v1);
    v30 = v1 + 1;
    v4 = v3 + 56;
    v5 = 1 << *(v3 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v3 + 56);
    v8 = (v5 + 63) >> 6;

    v10 = 0;
    v31 = v8;
    v32 = v4;
    v33 = v9;
    if (!v7)
    {
      while (1)
      {
LABEL_7:
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          return;
        }

        if (v11 >= v8)
        {
          break;
        }

        v7 = *(v4 + 8 * v11);
        ++v10;
        if (v7)
        {
          v10 = v11;
          goto LABEL_11;
        }
      }

      v1 = v30;
      v2 = v28;
      if (v30 != v29)
      {
        continue;
      }

      goto LABEL_23;
    }

    break;
  }

  while (1)
  {
LABEL_11:
    v12 = (*(v9 + 48) + ((v10 << 11) | (32 * __clz(__rbit64(v7)))));
    v14 = v12[2];
    v13 = v12[3];
    v15 = v42;
    v36 = v12[1];
    v37 = *v12;
    v38 = v14;
    v39 = v13;
    if (!*(v42 + 16))
    {

      goto LABEL_20;
    }

    sub_222B03128();
    swift_bridgeObjectRetain_n();

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v14, v13);
    sub_222B02448();

    v16 = sub_222B03168();
    v17 = -1 << *(v15 + 32);
    v18 = v16 & ~v17;
    v35 = v15 + 56;
    if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
    {
      break;
    }

LABEL_20:
    v7 &= v7 - 1;
    sub_222AE43CC(&v40, v37, v36, v38, v39);

    v4 = v32;
    v9 = v33;
    v8 = v31;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v34 = ~v17;
  while (1)
  {
    v19 = v15;
    v20 = (*(v15 + 48) + 32 * v18);
    v21 = v20[1];
    v23 = v20[2];
    v22 = v20[3];
    v40 = *v20;
    v41 = v21;
    swift_bridgeObjectRetain_n();

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v23, v22);
    v25 = v40;
    v24 = v41;
    v40 = v37;
    v41 = v36;

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v38, v39);
    if (v25 == v40 && v24 == v41)
    {
      break;
    }

    v26 = sub_222B02F78();

    if (v26)
    {
      goto LABEL_25;
    }

    v18 = (v18 + 1) & v34;
    v15 = v19;
    if (((*(v35 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_25:

  sub_222AD32CC();
  swift_allocError();
  *v27 = v37;
  v27[1] = v36;
  v27[2] = v38;
  v27[3] = v39;
  swift_willThrow();
}

unint64_t sub_222AD2DD4()
{
  result = qword_280CBA2C8[0];
  if (!qword_280CBA2C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CBA2C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningAnalytics23FeatureEnablementPolicyO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
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

uint64_t sub_222AD2E58(uint64_t a1, unsigned int a2)
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

uint64_t sub_222AD2E94(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_222AD2EE0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_222AD2F34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_222AD2F7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_222AD2FF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_222AD3040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_222AD3194(uint64_t *a1, int a2)
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

uint64_t sub_222AD31DC(uint64_t result, int a2, int a3)
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

unint64_t sub_222AD32CC()
{
  result = qword_27D01E218;
  if (!qword_27D01E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E218);
  }

  return result;
}

uint64_t sub_222AD3348()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE90, qword_222B05200);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_222A35464();
  sub_222B01A38();
  type metadata accessor for BiomePLSELFStoreReader(0);
  v4 = swift_allocObject();
  result = (*(v1 + 32))(v4 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics22BiomePLSELFStoreReader_stream, v3, v0);
  qword_280CBC430 = v4;
  return result;
}

uint64_t sub_222AD3460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E238, &qword_222B0D8B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E240, &unk_222B0D8C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  if (qword_27D01C560 != -1)
  {
    swift_once();
  }

  v12 = sub_222B02148();
  __swift_project_value_buffer(v12, qword_27D01E220);
  v13 = sub_222B02128();
  v14 = sub_222B028D8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_222A1C000, v13, v14, "Registering a closure to read SELF events from Biome", v15, 2u);
    MEMORY[0x223DC7E30](v15, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE90, qword_222B05200);
  sub_222A352E8(&qword_27D01E248, &qword_27D01CE90, qword_222B05200, MEMORY[0x277CF1818]);
  sub_222B01A58();
  sub_222A352E8(&qword_27D01E250, &qword_27D01E238, &qword_222B0D8B8, MEMORY[0x277CF1760]);
  sub_222B019D8();
  (*(v5 + 8))(v7, v4);
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = v21;
  *(v16 + 24) = v17;
  sub_222A352E8(&qword_27D01E258, &qword_27D01E240, &unk_222B0D8C0, MEMORY[0x277CF1748]);

  v18 = sub_222B019A8();

  (*(v9 + 8))(v11, v8);
  return v18;
}

uint64_t sub_222AD37EC()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics22BiomePLSELFStoreReader_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE90, qword_222B05200);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BiomePLSELFStoreReader(uint64_t a1)
{
  result = qword_280CB8F48;
  if (!qword_280CB8F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_222AD38E8(uint64_t a1)
{
  sub_222AD3978(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_222AD3978(uint64_t a1)
{
  if (!qword_280CBA1D8)
  {
    sub_222A35464();
    v1 = sub_222B01A18();
    if (!v2)
    {
      atomic_store(v1, &qword_280CBA1D8);
    }
  }
}

uint64_t sub_222AD39D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v18 = a2;
  v19 = a3;
  v20 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E238, &qword_222B0D8B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E240, &unk_222B0D8C0);
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v17 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE90, qword_222B05200);
  sub_222A352E8(&qword_27D01E248, &qword_27D01CE90, qword_222B05200, MEMORY[0x277CF1818]);
  sub_222B01A58();
  sub_222A352E8(&qword_27D01E250, &qword_27D01E238, &qword_222B0D8B8, MEMORY[0x277CF1760]);
  sub_222B019D8();
  (*(v6 + 8))(v8, v5);
  v12 = swift_allocObject();
  v13 = v19;
  *(v12 + 16) = v18;
  *(v12 + 24) = v13;
  sub_222A352E8(&qword_27D01E258, &qword_27D01E240, &unk_222B0D8C0, MEMORY[0x277CF1748]);

  v14 = v17;
  v15 = sub_222B019E8();

  (*(v9 + 8))(v11, v14);
  return v15;
}

uint64_t sub_222AD3CA0()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D01E220);
  v1 = __swift_project_value_buffer(v0, qword_27D01E220);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222AD3D68(uint64_t a1, void (*a2)(void *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA70, &unk_222B0AB20);
  sub_222B025E8();
  if (qword_27D01C560 != -1)
  {
    swift_once();
  }

  v2 = MEMORY[0x277D84F90];
  v3 = sub_222B02148();
  __swift_project_value_buffer(v3, qword_27D01E220);
  v4 = sub_222B02128();
  v5 = sub_222B028E8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_222A1C000, v4, v5, "Failed to convert sink input into StreamReadResult", v6, 2u);
    MEMORY[0x223DC7E30](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE18, &qword_222B0BD80);
  v7 = swift_allocObject();
  v7[6] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
  v8 = swift_allocObject();
  v9 = 0;
  *(v8 + 16) = 0;
  if (v2 >> 62)
  {
    v9 = sub_222B02DC8();
  }

  v10 = sub_222A352E8(&qword_280CB4AB0, &unk_27D01DCE0, &qword_222B0D8D0, MEMORY[0x277D84F38]);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v7[2] = v8;
  v7[3] = v10;
  v7[4] = v11;
  v7[5] = v10;
  a2(v7);
}

void sub_222AD4A3C(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

unint64_t sub_222AD4AA8()
{
  result = qword_27D01E278;
  if (!qword_27D01E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E278);
  }

  return result;
}

void SiriUserFeedbackLearningPlatformResult.init(mlrTaskResult:error:)(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_222B023C8();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222B01558();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v10 = sub_222B02148();
  v11 = __swift_project_value_buffer(v10, qword_280CBC458);
  v12 = a1;
  v13 = a2;
  v14 = sub_222B02128();
  v15 = sub_222B028D8();

  if (os_log_type_enabled(v14, v15))
  {
    v46 = v11;
    v16 = a3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v55[0] = v19;
    *v17 = 136315650;
    *(v17 + 4) = sub_222A230FC(0xD00000000000001ALL, 0x8000000222B10790, v55);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v12;
    *v18 = a1;
    *(v17 + 22) = 2112;
    v20 = v12;
    if (a2)
    {
      v21 = a2;
      v22 = a2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
    }

    *(v17 + 24) = v23;
    v18[1] = v24;
    _os_log_impl(&dword_222A1C000, v14, v15, "SiriUserFeedbackLearningPlatformResult.%s mlrTaskResult: %@, error: %@", v17, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E4B0, &qword_222B0A530);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x223DC7E30](v19, -1, -1);
    MEMORY[0x223DC7E30](v17, -1, -1);

    a2 = v22;
    a3 = v16;
    if (!a1)
    {
LABEL_19:
      v42 = sub_222B02128();
      v43 = sub_222B028E8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_222A1C000, v42, v43, "SiriUserFeedbackLearningPlatformResult: MLR task result is nil", v44, 2u);
        MEMORY[0x223DC7E30](v44, -1, -1);
      }

      v25 = [objc_allocWithZone(MEMORY[0x277D25408]) initWithJSONResult:0 unprivatizedVector:0];
LABEL_22:

      v45 = MEMORY[0x277D84F90];
      goto LABEL_23;
    }
  }

  else
  {

    if (!a1)
    {
      goto LABEL_19;
    }
  }

  v25 = v12;
  v26 = [v25 JSONResult];
  if (!v26)
  {
LABEL_14:
    v12 = v25;
    v36 = sub_222B02128();
    v37 = sub_222B028E8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v55[0] = v40;
      *v38 = 138412546;
      *(v38 + 4) = v12;
      *v39 = a1;
      *(v38 + 12) = 2080;
      v41 = v12;
      *(v38 + 14) = sub_222A230FC(0x746C75736572, 0xE600000000000000, v55);
      _os_log_impl(&dword_222A1C000, v36, v37, "SiriUserFeedbackLearningPlatformResult: Unable to get json result value from %@ for parameter: %s", v38, 0x16u);
      sub_222A34F20(v39, &qword_27D01E4B0, &qword_222B0A530);
      MEMORY[0x223DC7E30](v39, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x223DC7E30](v40, -1, -1);
      MEMORY[0x223DC7E30](v38, -1, -1);
    }

    v25 = [objc_allocWithZone(MEMORY[0x277D25408]) initWithJSONResult:0 unprivatizedVector:0];
    goto LABEL_22;
  }

  v27 = v26;
  v28 = sub_222B022B8();

  if (!*(v28 + 16) || (v29 = sub_222A26EC8(0x746C75736572, 0xE600000000000000), (v30 & 1) == 0))
  {

    goto LABEL_14;
  }

  sub_222A25344(*(v28 + 56) + 32 * v29, v55);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v55[0] = v53;
  v55[1] = v54;
  v31 = v47;
  sub_222B01538();
  sub_222A397FC();
  sub_222B02B88();
  (*(v48 + 8))(v31, v49);

  v32 = v50;
  sub_222B023B8();
  v33 = sub_222B02398();
  v35 = v34;

  (*(v51 + 8))(v32, v52);
  if (v35 >> 60 == 15)
  {
    goto LABEL_14;
  }

  sub_222B014C8();
  swift_allocObject();
  sub_222B014B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D738, &qword_222B08D40);
  sub_222AD5B68(&qword_280CB4BD0, sub_222AD5B14, MEMORY[0x277D83978]);
  sub_222B014A8();

  sub_222A398A4(v33, v35);
  v45 = v55[0];
LABEL_23:
  *a3 = v45;
  a3[1] = v25;
  a3[2] = a2;
}

uint64_t SiriUserFeedbackLearningPlatformResult.toSchedulerResult()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    sub_222A23D30(0, v2, 0);
    v3 = v15;
    v4 = (v1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      if (*v4 >= 2)
      {
        v9 = *(v4 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (*v4 >= 2)
      {
        v10 = *v4;
      }

      else
      {
        v10 = 0;
      }

      sub_222A39234(v7, v8);
      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_222A23D30((v11 > 1), v12 + 1, 1);
      }

      v4 += 4;
      *(v15 + 16) = v12 + 1;
      v13 = (v15 + 32 * v12);
      v13[4] = v6;
      v13[5] = v5;
      v13[6] = v9;
      v13[7] = v10;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void *SiriUserFeedbackLearningPlatformResult.error.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t SiriUserFeedbackLearningPlatformResult.description.getter()
{
  v1 = MEMORY[0x223DC6850](*v0, &type metadata for SiriUserFeedbackLearningPluginRunResult);
  MEMORY[0x223DC66E0](v1);

  return 0x203A746C75736572;
}

uint64_t SiriUserFeedbackLearningPlatformResult.init(result:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_222B023C8();
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v5 = sub_222B02148();
  __swift_project_value_buffer(v5, qword_280CBC458);

  v6 = sub_222B02128();
  v7 = sub_222B028D8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_222A230FC(0x7365722874696E69, 0xED0000293A746C75, &v34);
    *(v8 + 12) = 2080;
    v10 = MEMORY[0x223DC6850](a1, &type metadata for SiriUserFeedbackLearningPluginRunResult);
    v12 = sub_222A230FC(v10, v11, &v34);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_222A1C000, v6, v7, "SiriUserFeedbackLearningPlatformResult.%s status: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v9, -1, -1);
    MEMORY[0x223DC7E30](v8, -1, -1);
  }

  sub_222B01528();
  swift_allocObject();

  sub_222B01518();
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D738, &qword_222B08D40);
  sub_222AD5B68(&qword_280CB4BD8, sub_222AD5BE0, MEMORY[0x277D83948]);
  v13 = sub_222B01508();
  v15 = v14;
  sub_222B023B8();
  v16 = sub_222B023A8();
  if (v17)
  {
    v18 = v16;
    v19 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF38, &unk_222B0A520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222B05250;
    *(inited + 32) = 0x746C75736572;
    v21 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v18;
    *(inited + 56) = v19;
    sub_222A396CC(inited);
    swift_setDeallocating();
    sub_222A34F20(v21, &qword_27D01CF40, &unk_222B055D0);
    v22 = objc_allocWithZone(MEMORY[0x277D25408]);
    v23 = sub_222B022A8();

    v24 = [v22 initWithJSONResult:v23 unprivatizedVector:0];
  }

  else
  {

    v25 = sub_222B02128();
    v26 = sub_222B028E8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v27 = 136315138;
      v28 = MEMORY[0x223DC6850](a1, &type metadata for SiriUserFeedbackLearningPluginRunResult);
      v30 = v29;

      v31 = sub_222A230FC(v28, v30, &v34);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_222A1C000, v25, v26, "SiriUserFeedbackLearningPlatformResult: Unable to encode %s to string", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x223DC7E30](v33, -1, -1);
      MEMORY[0x223DC7E30](v27, -1, -1);
    }

    else
    {
    }

    v24 = [objc_allocWithZone(MEMORY[0x277D25408]) initWithJSONResult:0 unprivatizedVector:0];
  }

  sub_222A26530(v13, v15);

  *a2 = a1;
  a2[1] = v24;
  a2[2] = 0;
  return result;
}

unint64_t sub_222AD5B14()
{
  result = qword_280CB7AE0;
  if (!qword_280CB7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB7AE0);
  }

  return result;
}

uint64_t sub_222AD5B68(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D738, &qword_222B08D40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222AD5BE0()
{
  result = qword_280CB7AE8[0];
  if (!qword_280CB7AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CB7AE8);
  }

  return result;
}

char *static EntityExtractor.extract(from:)(unint64_t a1)
{
  v1 = static NlxSELFUtils.getTopNlxUsoGraph(from:)(a1);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = v1;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v4 = sub_222B02148();
  __swift_project_value_buffer(v4, qword_280CBC458);

  v5 = sub_222B02128();
  v6 = sub_222B028D8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    sub_222B01E38();
    sub_222A92564();
    v9 = sub_222B02F38();
    v11 = sub_222A230FC(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_222A1C000, v5, v6, "[EntityExtractor] The constructed graph: \n%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DC7E30](v8, -1, -1);
    MEMORY[0x223DC7E30](v7, -1, -1);
  }

  v12 = MEMORY[0x223DC5EC0](v3);
  v13 = sub_222AD77F8(v12);

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_18:

    return v2;
  }

  v14 = sub_222B02DC8();
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_8:
  v20 = v2;
  result = sub_222A23E14(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v2 = v20;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x223DC6F00](v16, v13);
      }

      else
      {
        v17 = *(v13 + 8 * v16 + 32);
      }

      v20 = v2;
      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_222A23E14((v18 > 1), v19 + 1, 1);
        v2 = v20;
      }

      ++v16;
      *(v2 + 16) = v19 + 1;
      *(v2 + 8 * v19 + 32) = v17;
    }

    while (v14 != v16);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_222AD5EEC()
{
  sub_222B01CB8();
  sub_222A2552C(v84, v82);
  if (v83)
  {
    sub_222A2552C(v82, v81);
    sub_222B01CF8();
    if (swift_dynamicCast())
    {

      v0 = sub_222B01D98();

      if (v0)
      {
        v80 = MEMORY[0x277D84F90];
        v1 = v0 & 0xFFFFFFFFFFFFFF8;
        if (v0 >> 62)
        {
LABEL_261:
          v2 = sub_222B02DC8();
          if (v2)
          {
LABEL_6:
            v3 = 0;
            v4 = MEMORY[0x277D84F90];
            do
            {
              v5 = v3;
              while (1)
              {
                if ((v0 & 0xC000000000000001) != 0)
                {
                  MEMORY[0x223DC6F00](v5, v0);
                  v3 = v5 + 1;
                  if (__OFADD__(v5, 1))
                  {
                    goto LABEL_175;
                  }
                }

                else
                {
                  if (v5 >= *(v1 + 16))
                  {
                    goto LABEL_176;
                  }

                  v3 = v5 + 1;
                  if (__OFADD__(v5, 1))
                  {
LABEL_175:
                    __break(1u);
LABEL_176:
                    __break(1u);
                    goto LABEL_177;
                  }
                }

                sub_222B01C58();

                if (v79)
                {
                  break;
                }

                ++v5;
                if (v3 == v2)
                {
                  goto LABEL_401;
                }
              }

              MEMORY[0x223DC6810](v6);
              if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_222B02648();
              }

              sub_222B02688();
              v4 = v80;
            }

            while (v3 != v2);
            goto LABEL_401;
          }
        }

        else
        {
          v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v2)
          {
            goto LABEL_6;
          }
        }

        goto LABEL_400;
      }

LABEL_354:
      sub_222A254C4(v84);

      v4 = 0;
LABEL_404:
      __swift_destroy_boxed_opaque_existential_0(v81);
      goto LABEL_405;
    }

    sub_222B01D18();
    if (swift_dynamicCast())
    {

      v7 = sub_222B01D98();

      if (!v7)
      {
        goto LABEL_354;
      }

      v80 = MEMORY[0x277D84F90];
      v8 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
LABEL_284:
        v9 = sub_222B02DC8();
        if (v9)
        {
LABEL_27:
          v10 = 0;
          v4 = MEMORY[0x277D84F90];
          do
          {
            v11 = v10;
            while (1)
            {
              if ((v7 & 0xC000000000000001) != 0)
              {
                MEMORY[0x223DC6F00](v11, v7);
                v10 = v11 + 1;
                if (__OFADD__(v11, 1))
                {
                  goto LABEL_196;
                }
              }

              else
              {
                if (v11 >= *(v8 + 16))
                {
                  goto LABEL_197;
                }

                v10 = v11 + 1;
                if (__OFADD__(v11, 1))
                {
LABEL_196:
                  __break(1u);
LABEL_197:
                  __break(1u);
                  goto LABEL_198;
                }
              }

              sub_222B01C58();

              if (v79)
              {
                break;
              }

              ++v11;
              if (v10 == v9)
              {
                goto LABEL_401;
              }
            }

            MEMORY[0x223DC6810](v12);
            if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_222B02648();
            }

            sub_222B02688();
            v4 = v80;
          }

          while (v10 != v9);
          goto LABEL_401;
        }
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_27;
        }
      }

LABEL_400:
      v4 = MEMORY[0x277D84F90];
LABEL_401:

      goto LABEL_402;
    }

    sub_222B01D08();
    if (swift_dynamicCast())
    {

      v13 = sub_222B01D98();

      if (!v13)
      {
        goto LABEL_354;
      }

      v80 = MEMORY[0x277D84F90];
      if (v13 >> 62)
      {
        v14 = sub_222B02DC8();
        if (!v14)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v14)
        {
          goto LABEL_400;
        }
      }

      v15 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v16 = v15;
        while (1)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v16, v13);
            v15 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_217;
            }
          }

          else
          {
            if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_218;
            }

            v15 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
LABEL_217:
              __break(1u);
LABEL_218:
              __break(1u);
              goto LABEL_219;
            }
          }

          sub_222B01C58();

          if (v79)
          {
            break;
          }

          ++v16;
          if (v15 == v14)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v17);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v80;
      }

      while (v15 != v14);
      goto LABEL_401;
    }

    sub_222B01CD8();
    if (swift_dynamicCast())
    {

      v18 = sub_222B01D98();

      if (!v18)
      {
        goto LABEL_354;
      }

      v80 = MEMORY[0x277D84F90];
      v19 = v18 & 0xFFFFFFFFFFFFFF8;
      if (v18 >> 62)
      {
LABEL_332:
        v20 = sub_222B02DC8();
        if (!v20)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_400;
        }
      }

      v21 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v22 = v21;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v22, v18);
            v21 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_238;
            }
          }

          else
          {
            if (v22 >= *(v19 + 16))
            {
              goto LABEL_239;
            }

            v21 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
LABEL_238:
              __break(1u);
LABEL_239:
              __break(1u);
              goto LABEL_240;
            }
          }

          sub_222B01C58();

          if (v79)
          {
            break;
          }

          ++v22;
          if (v21 == v20)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v23);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v80;
      }

      while (v21 != v20);
      goto LABEL_401;
    }

    sub_222B01D38();
    if (swift_dynamicCast())
    {

      v0 = sub_222B01DE8();

      if (!v0)
      {
        goto LABEL_354;
      }

      v80 = MEMORY[0x277D84F90];
      v1 = v0 & 0xFFFFFFFFFFFFFF8;
      if (v0 >> 62)
      {
LABEL_357:
        v24 = sub_222B02DC8();
        if (!v24)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v24 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v24)
        {
          goto LABEL_400;
        }
      }

      v25 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v26 = v25;
        while (1)
        {
          if ((v0 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v26, v0);
            v25 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_259;
            }
          }

          else
          {
            if (v26 >= *(v1 + 16))
            {
              goto LABEL_260;
            }

            v25 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_259:
              __break(1u);
LABEL_260:
              __break(1u);
              goto LABEL_261;
            }
          }

          sub_222B01C58();

          if (v79)
          {
            break;
          }

          ++v26;
          if (v25 == v24)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v27);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v80;
      }

      while (v25 != v24);
      goto LABEL_401;
    }

    sub_222B01D78();
    if (swift_dynamicCast())
    {

      v7 = sub_222B01DE8();

      if (!v7)
      {
        goto LABEL_354;
      }

      v80 = MEMORY[0x277D84F90];
      v8 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
LABEL_362:
        v28 = sub_222B02DC8();
        if (!v28)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v28)
        {
          goto LABEL_400;
        }
      }

      v29 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v30 = v29;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v30, v7);
            v29 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              goto LABEL_282;
            }
          }

          else
          {
            if (v30 >= *(v8 + 16))
            {
              goto LABEL_283;
            }

            v29 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
LABEL_282:
              __break(1u);
LABEL_283:
              __break(1u);
              goto LABEL_284;
            }
          }

          sub_222B01C58();

          if (v79)
          {
            break;
          }

          ++v30;
          if (v29 == v28)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v31);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v80;
      }

      while (v29 != v28);
      goto LABEL_401;
    }

    sub_222B01D68();
    if (swift_dynamicCast())
    {

      v32 = sub_222B01DE8();

      if (!v32)
      {
        goto LABEL_354;
      }

      v80 = MEMORY[0x277D84F90];
      v33 = v32 & 0xFFFFFFFFFFFFFF8;
      if (v32 >> 62)
      {
LABEL_366:
        v34 = sub_222B02DC8();
        if (!v34)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v34)
        {
          goto LABEL_400;
        }
      }

      v35 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v36 = v35;
        while (1)
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v36, v32);
            v35 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_305;
            }
          }

          else
          {
            if (v36 >= *(v33 + 16))
            {
              goto LABEL_306;
            }

            v35 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
LABEL_305:
              __break(1u);
LABEL_306:
              __break(1u);
              goto LABEL_307;
            }
          }

          sub_222B01C58();

          if (v79)
          {
            break;
          }

          ++v36;
          if (v35 == v34)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v37);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v80;
      }

      while (v35 != v34);
      goto LABEL_401;
    }

    sub_222B01DD8();
    if (swift_dynamicCast())
    {

      v18 = sub_222B01E28();

      if (!v18)
      {
        goto LABEL_354;
      }

      v80 = MEMORY[0x277D84F90];
      v19 = v18 & 0xFFFFFFFFFFFFFF8;
      if (v18 >> 62)
      {
LABEL_370:
        v38 = sub_222B02DC8();
        if (!v38)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v38 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v38)
        {
          goto LABEL_400;
        }
      }

      v39 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v40 = v39;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v40, v18);
            v39 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_330;
            }
          }

          else
          {
            if (v40 >= *(v19 + 16))
            {
              goto LABEL_331;
            }

            v39 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
LABEL_330:
              __break(1u);
LABEL_331:
              __break(1u);
              goto LABEL_332;
            }
          }

          sub_222B01C58();

          if (v79)
          {
            break;
          }

          ++v40;
          if (v39 == v38)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v41);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v80;
      }

      while (v39 != v38);
      goto LABEL_401;
    }

    sub_222B01E18();
    if (swift_dynamicCast())
    {

      v0 = sub_222B01E28();

      if (!v0)
      {
        goto LABEL_354;
      }

      v80 = MEMORY[0x277D84F90];
      v1 = v0 & 0xFFFFFFFFFFFFFF8;
      if (v0 >> 62)
      {
LABEL_374:
        v42 = sub_222B02DC8();
        if (!v42)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v42 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v42)
        {
          goto LABEL_400;
        }
      }

      v43 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v44 = v43;
        while (1)
        {
          if ((v0 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v44, v0);
            v43 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              goto LABEL_355;
            }
          }

          else
          {
            if (v44 >= *(v1 + 16))
            {
              goto LABEL_356;
            }

            v43 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
LABEL_355:
              __break(1u);
LABEL_356:
              __break(1u);
              goto LABEL_357;
            }
          }

          sub_222B01C58();

          if (v79)
          {
            break;
          }

          ++v44;
          if (v43 == v42)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v45);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v80;
      }

      while (v43 != v42);
      goto LABEL_401;
    }

LABEL_177:
    sub_222B01E08();
    if (swift_dynamicCast())
    {

      v7 = sub_222B01E28();

      if (!v7)
      {
        goto LABEL_354;
      }

      v80 = MEMORY[0x277D84F90];
      v8 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
LABEL_378:
        v46 = sub_222B02DC8();
        if (!v46)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v46 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v46)
        {
          goto LABEL_400;
        }
      }

      v47 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v48 = v47;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v48, v7);
            v47 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_360;
            }
          }

          else
          {
            if (v48 >= *(v8 + 16))
            {
              goto LABEL_361;
            }

            v47 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
              goto LABEL_362;
            }
          }

          sub_222B01C58();

          if (v79)
          {
            break;
          }

          ++v48;
          if (v47 == v46)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v49);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v80;
      }

      while (v47 != v46);
      goto LABEL_401;
    }

LABEL_198:
    sub_222B01D48();
    if (swift_dynamicCast())
    {

      v32 = sub_222B01CE8();

      if (!v32)
      {
        goto LABEL_354;
      }

      v80 = MEMORY[0x277D84F90];
      v33 = v32 & 0xFFFFFFFFFFFFFF8;
      if (v32 >> 62)
      {
LABEL_382:
        v50 = sub_222B02DC8();
        if (!v50)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v50 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v50)
        {
          goto LABEL_400;
        }
      }

      v51 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v52 = v51;
        while (1)
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v52, v32);
            v51 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_364;
            }
          }

          else
          {
            if (v52 >= *(v33 + 16))
            {
              goto LABEL_365;
            }

            v51 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
LABEL_364:
              __break(1u);
LABEL_365:
              __break(1u);
              goto LABEL_366;
            }
          }

          sub_222B01C58();

          if (v79)
          {
            break;
          }

          ++v52;
          if (v51 == v50)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v53);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v80;
      }

      while (v51 != v50);
      goto LABEL_401;
    }

LABEL_219:
    sub_222B01DB8();
    if (swift_dynamicCast())
    {

      v18 = sub_222B01CE8();

      if (!v18)
      {
        goto LABEL_354;
      }

      v80 = MEMORY[0x277D84F90];
      v19 = v18 & 0xFFFFFFFFFFFFFF8;
      if (v18 >> 62)
      {
LABEL_386:
        v54 = sub_222B02DC8();
        if (!v54)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v54 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v54)
        {
          goto LABEL_400;
        }
      }

      v55 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v56 = v55;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v56, v18);
            v55 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
              goto LABEL_368;
            }
          }

          else
          {
            if (v56 >= *(v19 + 16))
            {
              goto LABEL_369;
            }

            v55 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
LABEL_368:
              __break(1u);
LABEL_369:
              __break(1u);
              goto LABEL_370;
            }
          }

          sub_222B01C58();

          if (v79)
          {
            break;
          }

          ++v56;
          if (v55 == v54)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v57);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v80;
      }

      while (v55 != v54);
      goto LABEL_401;
    }

LABEL_240:
    sub_222B01D28();
    if (swift_dynamicCast())
    {

      v0 = sub_222B01BD8();

      if (!v0)
      {
LABEL_307:
        sub_222B01BE8();
        if (v80)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
          v4 = swift_allocObject();
          *(v4 + 16) = xmmword_222B06DF0;
          *(v4 + 32) = v80;
LABEL_402:

          goto LABEL_403;
        }

        v4 = 0;
LABEL_403:
        sub_222A254C4(v84);
        goto LABEL_404;
      }

      v80 = MEMORY[0x277D84F90];
      v1 = v0 & 0xFFFFFFFFFFFFFF8;
      if (v0 >> 62)
      {
LABEL_390:
        v58 = sub_222B02DC8();
        if (v58)
        {
LABEL_244:
          v59 = 0;
          v4 = MEMORY[0x277D84F90];
          do
          {
            v60 = v59;
            while (1)
            {
              if ((v0 & 0xC000000000000001) != 0)
              {
                MEMORY[0x223DC6F00](v60, v0);
                v59 = v60 + 1;
                if (__OFADD__(v60, 1))
                {
                  goto LABEL_372;
                }
              }

              else
              {
                if (v60 >= *(v1 + 16))
                {
                  goto LABEL_373;
                }

                v59 = v60 + 1;
                if (__OFADD__(v60, 1))
                {
LABEL_372:
                  __break(1u);
LABEL_373:
                  __break(1u);
                  goto LABEL_374;
                }
              }

              sub_222B01C58();

              if (v79)
              {
                break;
              }

              ++v60;
              if (v59 == v58)
              {
                goto LABEL_392;
              }
            }

            MEMORY[0x223DC6810](v61);
            if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_222B02648();
            }

            sub_222B02688();
            v4 = v80;
          }

          while (v59 != v58);
          goto LABEL_392;
        }
      }

      else
      {
        v58 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v58)
        {
          goto LABEL_244;
        }
      }

      v4 = MEMORY[0x277D84F90];
LABEL_392:

      goto LABEL_403;
    }

    sub_222B01DF8();
    if (swift_dynamicCast())
    {

      v7 = sub_222B01CE8();

      if (!v7)
      {
        goto LABEL_354;
      }

      v80 = MEMORY[0x277D84F90];
      v8 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
        v62 = sub_222B02DC8();
        if (!v62)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v62 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v62)
        {
          goto LABEL_400;
        }
      }

      v63 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v64 = v63;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v64, v7);
            v63 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              goto LABEL_376;
            }
          }

          else
          {
            if (v64 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_377;
            }

            v63 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
LABEL_376:
              __break(1u);
LABEL_377:
              __break(1u);
              goto LABEL_378;
            }
          }

          sub_222B01C58();

          if (v79)
          {
            break;
          }

          ++v64;
          if (v63 == v62)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v65);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v80;
      }

      while (v63 != v62);
      goto LABEL_401;
    }

    sub_222B01DC8();
    if (swift_dynamicCast())
    {

      v32 = sub_222B01CE8();

      if (!v32)
      {
        goto LABEL_354;
      }

      v80 = MEMORY[0x277D84F90];
      v33 = v32 & 0xFFFFFFFFFFFFFF8;
      if (v32 >> 62)
      {
        v66 = sub_222B02DC8();
        if (!v66)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v66 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v66)
        {
          goto LABEL_400;
        }
      }

      v67 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v68 = v67;
        while (1)
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v68, v32);
            v67 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
              goto LABEL_380;
            }
          }

          else
          {
            if (v68 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_381;
            }

            v67 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
LABEL_380:
              __break(1u);
LABEL_381:
              __break(1u);
              goto LABEL_382;
            }
          }

          sub_222B01C58();

          if (v79)
          {
            break;
          }

          ++v68;
          if (v67 == v66)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v69);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v80;
      }

      while (v67 != v66);
      goto LABEL_401;
    }

    sub_222B01D88();
    if (swift_dynamicCast())
    {

      v18 = sub_222B01D58();

      if (!v18)
      {
        goto LABEL_354;
      }

      v80 = MEMORY[0x277D84F90];
      v19 = v18 & 0xFFFFFFFFFFFFFF8;
      if (v18 >> 62)
      {
        v70 = sub_222B02DC8();
        if (!v70)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v70 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v70)
        {
          goto LABEL_400;
        }
      }

      v71 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v72 = v71;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v72, v18);
            v71 = v72 + 1;
            if (__OFADD__(v72, 1))
            {
              goto LABEL_384;
            }
          }

          else
          {
            if (v72 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_385;
            }

            v71 = v72 + 1;
            if (__OFADD__(v72, 1))
            {
LABEL_384:
              __break(1u);
LABEL_385:
              __break(1u);
              goto LABEL_386;
            }
          }

          sub_222B01C58();

          if (v79)
          {
            break;
          }

          ++v72;
          if (v71 == v70)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v73);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v80;
      }

      while (v71 != v70);
      goto LABEL_401;
    }

    sub_222B01DA8();
    if (swift_dynamicCast())
    {

      v0 = sub_222B01CE8();

      if (!v0)
      {
        goto LABEL_354;
      }

      v80 = MEMORY[0x277D84F90];
      v1 = v0 & 0xFFFFFFFFFFFFFF8;
      if (v0 >> 62)
      {
        v74 = sub_222B02DC8();
        if (!v74)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v74 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v74)
        {
          goto LABEL_400;
        }
      }

      v75 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v76 = v75;
        while (1)
        {
          if ((v0 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v76, v0);
            v75 = v76 + 1;
            if (__OFADD__(v76, 1))
            {
              goto LABEL_388;
            }
          }

          else
          {
            if (v76 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_389;
            }

            v75 = v76 + 1;
            if (__OFADD__(v76, 1))
            {
LABEL_388:
              __break(1u);
LABEL_389:
              __break(1u);
              goto LABEL_390;
            }
          }

          sub_222B01C58();

          if (v79)
          {
            break;
          }

          ++v76;
          if (v75 == v74)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v77);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v80;
      }

      while (v75 != v74);
      goto LABEL_401;
    }

    sub_222A254C4(v84);
    __swift_destroy_boxed_opaque_existential_0(v81);
  }

  else
  {
    sub_222A254C4(v84);
  }

  v4 = 0;
LABEL_405:
  sub_222A254C4(v82);
  return v4;
}