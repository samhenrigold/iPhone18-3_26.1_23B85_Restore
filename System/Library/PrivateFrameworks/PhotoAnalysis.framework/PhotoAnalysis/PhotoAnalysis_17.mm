uint64_t sub_22FBCC5A4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 1120) = v2;

  if (v2)
  {
    v7 = sub_22FBCCA84;
  }

  else
  {
    *(v6 + 1128) = a2;
    *(v6 + 1136) = a1;
    v7 = sub_22FBCC6DC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FBCC6DC()
{
  v13 = v0[128];
  v15 = v0[131];
  v1 = v0[127];
  v2 = v0[126];
  v3 = v0[125];
  v4 = v0[124];
  v5 = v0[123];
  v6 = v0[112];
  v7 = v0[111];
  v8 = v0[98];
  v9 = v0[96];
  (*(v0[89] + 8))(v0[90], v0[88]);
  sub_22FA2B420(v9, &qword_27DAD8C58, &unk_22FCDBC20);
  sub_22FBCDB04(v8);
  v10 = *(v6 + 8);
  v10(v5, v7);
  v10(v4, v7);
  v10(v3, v7);
  (*(v1 + 8))(v13, v2);
  sub_22FA2B420(v15, &qword_27DAD8D58, &qword_22FCDBC30);
  v14 = v0[141];
  v16 = v0[142];
  sub_22FCC76B4();

  v11 = v0[1];

  return v11(v16, v14);
}

uint64_t sub_22FBCCA84()
{
  v13 = v0[128];
  v14 = v0[131];
  v1 = v0[127];
  v12 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[123];
  v5 = v0[112];
  v6 = v0[111];
  v7 = v0[98];
  v8 = v0[96];
  (*(v0[89] + 8))(v0[90], v0[88]);
  sub_22FA2B420(v8, &qword_27DAD8C58, &unk_22FCDBC20);
  sub_22FBCDB04(v7);
  v9 = *(v5 + 8);
  v9(v4, v6);
  v9(v3, v6);
  v9(v2, v6);
  (*(v1 + 8))(v13, v12);
  sub_22FA2B420(v14, &qword_27DAD8D58, &qword_22FCDBC30);
  sub_22FCC76B4();

  v10 = v0[1];

  return v10();
}

void *sub_22FBCCE1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v67 = *a3;
  v6 = sub_22FCC7DC4();
  if (qword_281480E18 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v7 = sub_22FCC8684();
    __swift_project_value_buffer(v7, qword_281487F98);

    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F34();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v77 = v11;
      *v10 = 136642819;
      v12 = MEMORY[0x2319080B0](v6, MEMORY[0x277D837D0]);
      v4 = v13;
      v5 = sub_22FA2F600(v12, v13, &v77);

      *(v10 + 4) = v5;
      _os_log_impl(&dword_22FA28000, v8, v9, "The query terms = %{sensitive}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190A000](v11, -1, -1);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    v81 = MEMORY[0x277D84FA0];
    v82 = MEMORY[0x277D84FA0];
    v72 = *(v6 + 16);
    if (!v72)
    {

      v42 = MEMORY[0x277D84FA0];
      v43 = *(MEMORY[0x277D84FA0] + 16);
      if (v43)
      {
        goto LABEL_43;
      }

      goto LABEL_46;
    }

    v14 = objc_opt_self();
    v15 = 0;
    v69 = v6 + 32;
    v70 = v14;
    v16 = &selRef_runImportantEntitiesTuningInGraph_photoLibrary_progressReporter_error_;
    v68 = v6;
LABEL_7:
    if (v15 < *(v6 + 16))
    {
      break;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  v76 = v15 + 1;
  v17 = (v69 + 16 * v15);
  v18 = *v17;
  v19 = v17[1];

  v74 = objc_autoreleasePoolPush();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22FCD1800;
  *(v20 + 32) = v18;
  *(v20 + 40) = v19;
  v21 = sub_22FCC8C24();

  v22 = [v70 personEntitiesByLookupIdentifierForPersonNames:v21 photoLibrary:a4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8D88, &unk_22FCDBCA0);
  v23 = sub_22FCC89D4();

  v6 = 0;
  v5 = v23 + 64;
  v24 = 1 << *(v23 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v4 = v25 & *(v23 + 64);
  v26 = (v24 + 63) >> 6;
  while (v4)
  {
LABEL_18:
    v28 = *(*(v23 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
    if ((v28 & 0xC000000000000001) != 0)
    {

      v29 = sub_22FCC92C4();
      if (v29)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v29 = *(v28 + 16);

      if (v29)
      {
LABEL_20:
        if (v29 < 1)
        {
          v30 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
          v30 = swift_allocObject();
          v31 = _swift_stdlib_malloc_size(v30);
          v32 = v31 - 32;
          if (v31 < 32)
          {
            v32 = v31 - 25;
          }

          *(v30 + 16) = v29;
          *(v30 + 24) = (2 * (v32 >> 3)) | 1;
        }

        v33 = sub_22FA88C24(&v77, (v30 + 32), v29, v28);
        sub_22FA37D64(v77);
        if (v33 != v29)
        {
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v16 = &selRef_runImportantEntitiesTuningInGraph_photoLibrary_progressReporter_error_;
        goto LABEL_29;
      }
    }

    v30 = MEMORY[0x277D84F90];
LABEL_29:
    v77 = v30;
    sub_22FBBF580(&v77);
    v4 &= v4 - 1;

    v34 = v77;
    if (v77 < 0 || (v77 & 0x4000000000000000) != 0)
    {
      if (!sub_22FCC92C4())
      {
        goto LABEL_12;
      }

LABEL_32:
      if ((v34 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x231908810](0, v34);
      }

      else
      {
        if (!*(v34 + 16))
        {
          goto LABEL_72;
        }

        v35 = *(v34 + 32);
      }

      v36 = v35;

      if ([v36 v16[498]] == 1300 || objc_msgSend(v36, v16[498]) == 1330)
      {
        v37 = [v36 text];
        v38 = sub_22FCC8A84();
        v40 = v39;

        v41 = v40;
        v16 = &selRef_runImportantEntitiesTuningInGraph_photoLibrary_progressReporter_error_;
        sub_22FB04E04(&v77, v38, v41);
      }

      else
      {
      }
    }

    else
    {
      if (*(v77 + 16))
      {
        goto LABEL_32;
      }

LABEL_12:
    }
  }

  while (1)
  {
    v27 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v27 >= v26)
    {
      break;
    }

    v4 = *(v5 + 8 * v27);
    ++v6;
    if (v4)
    {
      v6 = v27;
      goto LABEL_18;
    }
  }

  objc_autoreleasePoolPop(v74);
  v15 = v76;
  v6 = v68;
  if (v76 != v72)
  {
    goto LABEL_7;
  }

  v42 = v81;
  v43 = *(v81 + 16);
  if (v43)
  {
LABEL_43:
    v44 = sub_22FA86B08(v43, 0);
    v45 = sub_22FA88270(&v77, v44 + 4, v43, v42);
    v46 = v77;
    v6 = v78;
    v4 = v79;
    v5 = v80;

    sub_22FA37D64(v46);
    if (v45 == v43)
    {
      v47 = *(v42 + 16);
      goto LABEL_47;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

LABEL_46:
  v47 = 0;
  v44 = MEMORY[0x277D84F90];
LABEL_47:
  v48 = v82;
  v43 = *(v82 + 16);
  if (__OFADD__(v47, v43))
  {
    __break(1u);
    goto LABEL_76;
  }

  if (v67 >= v47 + v43)
  {
    if (v43)
    {
      v59 = sub_22FA86B08(v43, 0);
      v60 = sub_22FA88270(&v77, v59 + 4, v43, v48);
      v6 = v77;
      v4 = v78;
      v5 = v79;

      sub_22FA37D64(v6);
      if (v60 != v43)
      {
        goto LABEL_78;
      }

      return v59;
    }

LABEL_60:

    return MEMORY[0x277D84F90];
  }

  v49 = __OFSUB__(v67, v47);
  v50 = v67 - v47;
  if (v49)
  {
    goto LABEL_77;
  }

  if (v43 >= v50)
  {
    v43 = v50;
  }

  if (v43 < 1)
  {
    v43 = sub_22FAB47D4(v67, v44);
    if ((v63 & 1) == 0)
    {
LABEL_62:
      sub_22FACAD64(v43, v61, v62, v63);

      swift_unknownObjectRelease();
      return MEMORY[0x277D84F90];
    }

    v5 = v63;
    v4 = v62;
    v6 = v61;
    sub_22FCC9724();
    swift_unknownObjectRetain_n();
    v64 = swift_dynamicCastClass();
    if (!v64)
    {
      swift_unknownObjectRelease();
      v64 = MEMORY[0x277D84F90];
    }

    v65 = *(v64 + 16);

    if (__OFSUB__(v5 >> 1, v4))
    {
      goto LABEL_80;
    }

    if (v65 != (v5 >> 1) - v4)
    {
LABEL_81:
      swift_unknownObjectRelease();
      v63 = v5;
      v62 = v4;
      v61 = v6;
      goto LABEL_62;
    }

    v66 = swift_dynamicCastClass();

    swift_unknownObjectRelease();
    if (!v66)
    {
      swift_unknownObjectRelease();
      return MEMORY[0x277D84F90];
    }

    return MEMORY[0x277D84F90];
  }

  sub_22FAC369C(v43, v48, &v83);

  v51 = v83;
  v52 = v84;
  v6 = v85;
  v53 = v86;
  v54 = v87;
  v75 = v88;
  v55 = sub_22FAC3294(v83, v84, v85, v86, v87, v88, v89);
  if (v55)
  {
    v56 = v55;
    v5 = sub_22FA86B08(v55, 0);
    sub_22FAC51CC(v51, v52, v6);
    v71 = v53;
    v57 = v53;
    v4 = v54;
    sub_22FAC51CC(v57, v54, v75);

    v43 = sub_22FAC3394(&v77, (v5 + 32), v56);
    sub_22FA2B420(&v77, &qword_27DAD8070, &qword_22FCDBCB0);
    if (v43 != v56)
    {
      goto LABEL_79;
    }

    sub_22FAC51D8(v51, v52, v6);
    sub_22FAC51D8(v71, v54, v75);

    return v5;
  }

  else
  {
    sub_22FAC51D8(v51, v52, v6);
    sub_22FAC51D8(v53, v54, v75);

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_22FBCD774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22FCC6904();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 8);
  if ([objc_opt_self() enableLocationPromptBinding])
  {
    v12 = objc_opt_self();
    v13 = [v12 allowedSearchIndexCategoriesForMemoriesLocationPromptBinding];
    sub_22FCC68F4();

    v14 = sub_22FCC8A54();
    v15 = sub_22FCC68E4();
    v16 = [v12 performLocationDisambiguationForFullQueryString:v14 allowedSearchIndexCategories:v15 maxNumberOfResults:v11 photoLibrary:a4];

    v17 = sub_22FCC8C44();
    (*(v7 + 8))(v10, v6);
    return v17;
  }

  else
  {
    if (qword_281480E18 != -1)
    {
      swift_once();
    }

    v19 = sub_22FCC8684();
    __swift_project_value_buffer(v19, qword_281487F98);
    v20 = sub_22FCC8664();
    v21 = sub_22FCC8F34();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22FA28000, v20, v21, "The location prompt binding is disabled", v22, 2u);
      MEMORY[0x23190A000](v22, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_22FBCD9D4()
{
  result = qword_27DAD8D38;
  if (!qword_27DAD8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8D38);
  }

  return result;
}

unint64_t sub_22FBCDA2C()
{
  result = qword_27DAD8D40;
  if (!qword_27DAD8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8D40);
  }

  return result;
}

unint64_t sub_22FBCDAB0()
{
  result = qword_27DAD8D48;
  if (!qword_27DAD8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8D48);
  }

  return result;
}

uint64_t sub_22FBCDB04(uint64_t a1)
{
  AnnotatorExecutionTools = type metadata accessor for QueryAnnotatorExecutionTools(0);
  (*(*(AnnotatorExecutionTools - 8) + 8))(a1, AnnotatorExecutionTools);
  return a1;
}

unint64_t sub_22FBCDB9C()
{
  result = qword_28147AFF8;
  if (!qword_28147AFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD8D80, &qword_22FCDBC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147AFF8);
  }

  return result;
}

uint64_t sub_22FBCDC00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t QueryAnnotatorSessionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  return v0;
}

uint64_t QueryAnnotatorClientIdentifier.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0x6E6E417972657551;
  }
}

uint64_t QueryAnnotatorClientIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_22FCC9844();
  MEMORY[0x231908CB0](v1);
  return sub_22FCC9894();
}

uint64_t sub_22FBCDD6C()
{
  if (*v0)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0x6E6E417972657551;
  }
}

uint64_t QueryAnnotatorSessionManager.QueryAnnotatorSessionManagerError.hashValue.getter()
{
  sub_22FCC9844();
  MEMORY[0x231908CB0](0);
  return sub_22FCC9894();
}

uint64_t sub_22FBCDE2C()
{
  sub_22FA812F8();
  result = sub_22FCC91C4();
  qword_281487D88 = result;
  return result;
}

uint64_t sub_22FBCDE94()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_281487D70);
  __swift_project_value_buffer(v0, qword_281487D70);
  if (qword_28147D890 != -1)
  {
    swift_once();
  }

  v1 = qword_281487D88;
  return sub_22FCC8694();
}

uint64_t QueryAnnotatorSessionManager.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  return v0;
}

uint64_t sub_22FBCDF54()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22FBCDFE8;

  return QueryAnnotatorSessionManager.endSessions()();
}

uint64_t sub_22FBCDFE8()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_22FBCE0F8, v1, 0);
}

uint64_t sub_22FBCE0F8()
{
  v1 = *(v0 + 16);
  *(v1 + 120) = 0;
  if (*(v1 + 128))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD86C8, &unk_22FCDB1B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    sub_22FCC8D54();
  }

  *(v1 + 128) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t QueryAnnotatorSessionManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t QueryAnnotatorSessionManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22FBCE250()
{
  result = qword_28147D108[0];
  if (!qword_28147D108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28147D108);
  }

  return result;
}

unint64_t sub_22FBCE2A8()
{
  result = qword_27DAD8D90;
  if (!qword_27DAD8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8D90);
  }

  return result;
}

uint64_t dispatch thunk of QueryAnnotatorSessionManager.shutdown()()
{
  v4 = (*(*v0 + 192) + **(*v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22FA2C030;

  return v4();
}

uint64_t sub_22FBCE47C(uint64_t a1, char a2, char a3)
{
  *(v4 + 249) = a3;
  *(v4 + 248) = a2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v3;
  v5 = sub_22FCC8CF4();
  *(v4 + 160) = v5;
  *(v4 + 168) = *(v5 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBCE550, v3, 0);
}

uint64_t sub_22FBCE550()
{
  v44 = v0;
  result = sub_22FCC8DA4();
  v2 = *(*(v0 + 152) + 136);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 192) = v2;
  *(v0 + 200) = v3;
  if (*(v2 + v3) != 2)
  {
    v35 = *(v2 + 16);
    v34 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v36 = v35;
    *(v36 + 8) = v34;
    *(v36 + 16) = 0;
    swift_willThrow();

LABEL_22:

    v40 = *(v0 + 8);

    return v40();
  }

  v4 = *(*(v0 + 144) + 16);
  v5 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger;
  *(v0 + 208) = v4;
  *(v0 + 216) = v5;
  if (!v4)
  {
    goto LABEL_22;
  }

  v6 = 0;
  v7 = 32;
  while (1)
  {
    if (v6 >= v4)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v9 = v6 + 1;
    *(v0 + 224) = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_29;
    }

    sub_22FA2D328(*(v0 + 144) + v7, v0 + 16);
    sub_22FCC8DA4();
    v10 = *(v0 + 192);
    if (*(v10 + *(v0 + 200)) != 2)
    {
      v38 = *(v10 + 16);
      v37 = *(v10 + 24);
      sub_22FAA1C84();
      swift_allocError();
      *v39 = v38;
      *(v39 + 8) = v37;
      *(v39 + 16) = 0;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      goto LABEL_22;
    }

    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
    if ((*(v12 + 112))(v11, v12))
    {
      break;
    }

    sub_22FA2D328(v0 + 16, v0 + 56);
    v15 = sub_22FCC8664();
    v26 = sub_22FCC8F04();
    if (os_log_type_enabled(v15, v26))
    {
      v17 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      v27 = v43[0];
      *v17 = 136446210;
      v28 = *(v0 + 80);
      v29 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v28);
      v30 = (*(v29 + 40))(v28, v29);
      v32 = v31;
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      v33 = sub_22FA2F600(v30, v32, v43);

      *(v17 + 4) = v33;
      _os_log_impl(&dword_22FA28000, v15, v26, "Skipping task %{public}s: does not support current platform", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v25 = v27;
      v9 = v6 + 1;
      goto LABEL_16;
    }

    v8 = (v0 + 56);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(v8);
LABEL_6:
    result = __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v4 = *(v0 + 208);
    v7 += 40;
    ++v6;
    if (v9 == v4)
    {
      goto LABEL_22;
    }
  }

  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  if (((*(v14 + 120))(v13, v14) & 1) == 0)
  {
    sub_22FA2D328(v0 + 16, v0 + 96);
    v15 = sub_22FCC8664();
    v16 = sub_22FCC8EF4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43[0] = v18;
      *v17 = 136446210;
      v20 = *(v0 + 120);
      v19 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v20);
      v21 = (*(v19 + 40))(v20, v19);
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      v24 = sub_22FA2F600(v21, v23, v43);
      v9 = v6 + 1;

      *(v17 + 4) = v24;
      _os_log_impl(&dword_22FA28000, v15, v16, "Skipping task %{public}s: reported that it shouldn't run.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      v25 = v18;
LABEL_16:
      MEMORY[0x23190A000](v25, -1, -1);
      MEMORY[0x23190A000](v17, -1, -1);

      goto LABEL_6;
    }

    v8 = (v0 + 96);
    goto LABEL_5;
  }

  sub_22FCC8DA4();
  v41 = swift_task_alloc();
  *(v0 + 232) = v41;
  *v41 = v0;
  v41[1] = sub_22FBCEA88;
  v42 = *(v0 + 248);

  return sub_22FBE7B4C(sub_22FBE7B4C, v0 + 16, v42);
}

uint64_t sub_22FBCEA88()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_22FBCF084;
  }

  else
  {
    v4 = sub_22FBCEBB4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FBCEBB4()
{
  v41 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  result = __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v2 == v3)
  {
LABEL_2:

    v5 = *(v0 + 8);
LABEL_22:

    return v5();
  }

  v6 = *(v0 + 224);
  v7 = *(v0 + 208);
  v8 = 40 * v6 + 32;
  while (v6 < v7)
  {
    v10 = v6 + 1;
    *(v0 + 224) = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_29;
    }

    sub_22FA2D328(*(v0 + 144) + v8, v0 + 16);
    sub_22FCC8DA4();
    if (v1)
    {
      goto LABEL_21;
    }

    v11 = *(v0 + 192);
    if (*(v11 + *(v0 + 200)) != 2)
    {
      v36 = *(v11 + 16);
      v35 = *(v11 + 24);
      sub_22FAA1C84();
      swift_allocError();
      *v37 = v36;
      *(v37 + 8) = v35;
      *(v37 + 16) = 0;
      swift_willThrow();

LABEL_21:
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));

      v5 = *(v0 + 8);
      goto LABEL_22;
    }

    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
    if ((*(v13 + 112))(v12, v13))
    {
      v14 = *(v0 + 40);
      v15 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
      if ((*(v15 + 120))(v14, v15))
      {
        sub_22FCC8DA4();
        v38 = swift_task_alloc();
        *(v0 + 232) = v38;
        *v38 = v0;
        v38[1] = sub_22FBCEA88;
        v39 = *(v0 + 248);

        return sub_22FBE7B4C(sub_22FBE7B4C, v0 + 16, v39);
      }

      sub_22FA2D328(v0 + 16, v0 + 96);
      v16 = sub_22FCC8664();
      v17 = sub_22FCC8EF4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v40[0] = v19;
        *v18 = 136446210;
        v21 = *(v0 + 120);
        v20 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), v21);
        v22 = (*(v20 + 40))(v21, v20);
        v24 = v23;
        __swift_destroy_boxed_opaque_existential_0((v0 + 96));
        v25 = sub_22FA2F600(v22, v24, v40);
        v10 = v6 + 1;

        *(v18 + 4) = v25;
        _os_log_impl(&dword_22FA28000, v16, v17, "Skipping task %{public}s: reported that it shouldn't run.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        v26 = v19;
LABEL_17:
        MEMORY[0x23190A000](v26, -1, -1);
        MEMORY[0x23190A000](v18, -1, -1);

        goto LABEL_6;
      }

      v9 = (v0 + 96);
    }

    else
    {
      sub_22FA2D328(v0 + 16, v0 + 56);
      v16 = sub_22FCC8664();
      v27 = sub_22FCC8F04();
      if (os_log_type_enabled(v16, v27))
      {
        v18 = swift_slowAlloc();
        v40[0] = swift_slowAlloc();
        v28 = v40[0];
        *v18 = 136446210;
        v29 = *(v0 + 80);
        v30 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v29);
        v31 = (*(v30 + 40))(v29, v30);
        v33 = v32;
        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
        v34 = sub_22FA2F600(v31, v33, v40);

        *(v18 + 4) = v34;
        _os_log_impl(&dword_22FA28000, v16, v27, "Skipping task %{public}s: does not support current platform", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        v26 = v28;
        v10 = v6 + 1;
        goto LABEL_17;
      }

      v9 = (v0 + 56);
    }

    __swift_destroy_boxed_opaque_existential_0(v9);
LABEL_6:
    result = __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v1 = 0;
    v7 = *(v0 + 208);
    v8 += 40;
    ++v6;
    if (v10 == v7)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22FBCF084()
{
  v66 = v0;
  v1 = *(v0 + 240);
  *(v0 + 136) = v1;
  v2 = (v0 + 16);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);

    (*(v6 + 32))(v4, v5, v7);
    sub_22FBD5BF0(&qword_28147AFC0, 255, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    (*(v6 + 16))(v8, v4, v7);
    swift_willThrow();
    (*(v6 + 8))(v4, v7);

LABEL_3:
    __swift_destroy_boxed_opaque_existential_0(v2);
    goto LABEL_6;
  }

  v9 = *(v0 + 249);

  v10 = *(v0 + 240);
  if (v9)
  {
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_6:

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = v10;
  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F14();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 240);
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    v20 = v17;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_22FA28000, v14, v15, "Task hit error: %{public}@", v18, 0xCu);
    sub_22FA2B420(v19, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v19, -1, -1);
    MEMORY[0x23190A000](v18, -1, -1);
  }

  else
  {
  }

  v22 = *(v0 + 224);
  v23 = *(v0 + 208);
  result = __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v22 == v23)
  {
    goto LABEL_6;
  }

  v24 = v0 + 56;
  v25 = v0 + 96;
  v26 = *(v0 + 224);
  v27 = *(v0 + 208);
  v28 = 40 * v26 + 32;
  v62 = (v0 + 96);
  v63 = (v0 + 56);
  while (1)
  {
    if (v26 >= v27)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    *(v0 + 224) = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_34;
    }

    sub_22FA2D328(*(v0 + 144) + v28, v2);
    sub_22FCC8DA4();
    v30 = *(v0 + 192);
    if (*(v30 + *(v0 + 200)) != 2)
    {
      v57 = *(v30 + 16);
      v58 = *(v30 + 24);
      sub_22FAA1C84();
      swift_allocError();
      *v59 = v57;
      *(v59 + 8) = v58;
      *(v59 + 16) = 0;
      swift_willThrow();

      goto LABEL_3;
    }

    v64 = v26 + 1;
    v31 = *(v0 + 40);
    v32 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1(v2, v31);
    if ((*(v32 + 112))(v31, v32))
    {
      break;
    }

    sub_22FA2D328(v2, v24);
    v35 = sub_22FCC8664();
    v47 = sub_22FCC8F04();
    if (os_log_type_enabled(v35, v47))
    {
      v37 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v65[0] = v48;
      *v37 = 136446210;
      v49 = *(v0 + 80);
      v50 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1(v63, v49);
      v51 = *(v50 + 40);
      v52 = v50;
      v2 = (v0 + 16);
      v53 = v51(v49, v52);
      v55 = v54;
      __swift_destroy_boxed_opaque_existential_0(v63);
      v56 = sub_22FA2F600(v53, v55, v65);
      v25 = v0 + 96;

      *(v37 + 4) = v56;
      _os_log_impl(&dword_22FA28000, v35, v47, "Skipping task %{public}s: does not support current platform", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      v46 = v48;
      v24 = v0 + 56;
      goto LABEL_27;
    }

    v29 = v24;
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0(v29);
LABEL_17:
    result = __swift_destroy_boxed_opaque_existential_0(v2);
    v27 = *(v0 + 208);
    v28 += 40;
    ++v26;
    if (v64 == v27)
    {
      goto LABEL_6;
    }
  }

  v33 = *(v0 + 40);
  v34 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1(v2, v33);
  if (((*(v34 + 120))(v33, v34) & 1) == 0)
  {
    sub_22FA2D328(v2, v25);
    v35 = sub_22FCC8664();
    v36 = sub_22FCC8EF4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v65[0] = v38;
      *v37 = 136446210;
      v40 = *(v0 + 120);
      v39 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1(v62, v40);
      v41 = v40;
      v25 = v0 + 96;
      v42 = (*(v39 + 40))(v41, v39);
      v44 = v43;
      __swift_destroy_boxed_opaque_existential_0(v62);
      v45 = sub_22FA2F600(v42, v44, v65);
      v24 = v0 + 56;

      *(v37 + 4) = v45;
      _os_log_impl(&dword_22FA28000, v35, v36, "Skipping task %{public}s: reported that it shouldn't run.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      v46 = v38;
      v2 = (v0 + 16);
LABEL_27:
      MEMORY[0x23190A000](v46, -1, -1);
      MEMORY[0x23190A000](v37, -1, -1);

      goto LABEL_17;
    }

    v29 = v25;
    goto LABEL_16;
  }

  sub_22FCC8DA4();
  v60 = swift_task_alloc();
  *(v0 + 232) = v60;
  *v60 = v0;
  v60[1] = sub_22FBCEA88;
  v61 = *(v0 + 248);

  return sub_22FBE7B4C(sub_22FBE7B4C, v2, v61);
}

uint64_t sub_22FBCF7C0(uint64_t a1)
{
  v2 = sub_22FBD6098();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22FBCF7FC(uint64_t a1)
{
  v2 = sub_22FBD6098();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22FBCF838()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22FCC9384();

  MEMORY[0x231907FA0](v1, v2);
  return 0xD000000000000014;
}

uint64_t sub_22FBCF8B4(uint64_t a1)
{
  v2 = sub_22FBD6144();

  return MEMORY[0x28219CB78](a1, v2);
}

void *sub_22FBCF8F0()
{
  type metadata accessor for InstanceCounter();
  result = swift_allocObject();
  result[2] = 0xD000000000000010;
  result[3] = 0x800000022FCDBF50;
  result[4] = 0;
  qword_27DAE29D8 = result;
  return result;
}

uint64_t sub_22FBCF940()
{
  if (qword_27DAD6F30 != -1)
  {
    swift_once();
  }

  sub_22FB5A80C();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FBCFB78(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  return MEMORY[0x2822009F8](sub_22FBCFB9C, v2, 0);
}

void sub_22FBCFB9C()
{
  *(v0 + 216) = MEMORY[0x277D84F90];
  v1 = v0 + 216;
  v2 = *(*(v0 + 248) + 128);
  *(v0 + 256) = v2;
  v3 = *(*(v2 + 136) + 16);
  *(v0 + 264) = v3;
  if (v3 >> 62)
  {
    v4 = sub_22FCC92C4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 272) = v4;

  v5 = *(v0 + 264);
  if (v4)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x231908810](0);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }
    }

    *(v0 + 280) = v6;
    *(v0 + 288) = 1;
    v7 = *(v0 + 256);
    v8 = *(v6 + 40);
    v9 = *(v6 + 48);
    v10 = *(v9 + 24);
    *(v0 + 40) = v8;
    *(v0 + 48) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    v10(v8, v9);
    v12 = type metadata accessor for ActivitySession(0);
    v15 = v7 + 120;
    v14 = *(v7 + 120);
    v13 = *(v15 + 8);
    v16 = *(v8 - 8);
    v17 = swift_task_alloc();
    (*(v16 + 16))(v17, boxed_opaque_existential_1, v8);

    v18 = sub_22FA62068(v17, v13, v14, v12, v8, v9);
    *(v0 + 296) = v18;

    v29 = (*(v9 + 32) + **(v9 + 32));
    v19 = swift_task_alloc();
    *(v0 + 304) = v19;
    *v19 = v0;
    v19[1] = sub_22FBD002C;

    v29(v18, v8, v9);
  }

  else
  {

    if (*(*v1 + 16))
    {
      v20 = (v0 + 136);
      sub_22FA2D328(*v1 + 32, v0 + 176);

      sub_22FA2CF78((v0 + 176), v0 + 136);
      v21 = *(v0 + 160);
      v22 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v21);
      if ((*(v22 + 120))(v21, v22))
      {
        *(v0 + 328) = *(*(v0 + 256) + 128);

        v23 = swift_task_alloc();
        *(v0 + 336) = v23;
        *v23 = v0;
        v23[1] = sub_22FBD07C4;

        sub_22FBE7B4C(sub_22FBE7B4C, v20, 2);
        return;
      }

      v25 = *(v0 + 232);
      v24 = *(v0 + 240);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v26 = 4;
    }

    else
    {
      v25 = *(v0 + 232);
      v24 = *(v0 + 240);

      v26 = 2;
    }

    sub_22FAE1210();
    swift_allocError();
    *v27 = v25;
    *(v27 + 8) = v24;
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = v26;
    swift_willThrow();

    v28 = *(v0 + 8);

    v28();
  }
}

uint64_t sub_22FBD002C(uint64_t a1)
{
  v3 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  if (v1)
  {
    v4 = v3[31];

    v5 = sub_22FBD0950;
    v6 = v4;
  }

  else
  {
    v6 = v3[31];
    v5 = sub_22FBD0154;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

void sub_22FBD0154()
{
  v4 = *(v1 + 312);
  v45 = *(v4 + 2);
  if (!v45)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_20:

    if (*(v7 + 16))
    {
      v16 = *(v1 + 280);

      sub_22FA68214(v7);
      v2 = *(v16 + 24);
      v0 = *(v16 + 32);

      v4 = sub_22FAC1D0C(0, 1, 1, MEMORY[0x277D84F90]);
      v3 = *(v4 + 2);
      v8 = *(v4 + 3);
      v7 = v3 + 1;
      if (v3 >= v8 >> 1)
      {
        goto LABEL_43;
      }

      goto LABEL_22;
    }

    v18 = *(v1 + 288);
    v19 = *(v1 + 272);

    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
    if (v18 == v19)
    {

      goto LABEL_25;
    }

    v29 = *(v1 + 288);
    v30 = *(v1 + 264);
    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x231908810](*(v1 + 288));
    }

    else
    {
      if (v29 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }
    }

    *(v1 + 280) = v31;
    *(v1 + 288) = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      v32 = *(v1 + 256);
      v33 = *(v31 + 40);
      v34 = *(v31 + 48);
      v35 = *(v34 + 24);
      *(v1 + 40) = v33;
      *(v1 + 48) = v34;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 16));
      v35(v33, v34);
      v37 = type metadata accessor for ActivitySession(0);
      v40 = v32 + 120;
      v39 = *(v32 + 120);
      v38 = *(v40 + 8);
      v41 = *(v33 - 8);
      v42 = swift_task_alloc();
      (*(v41 + 16))(v42, boxed_opaque_existential_1, v33);

      v43 = sub_22FA62068(v42, v38, v39, v37, v33, v34);
      *(v1 + 296) = v43;

      v46 = (*(v34 + 32) + **(v34 + 32));
      v44 = swift_task_alloc();
      *(v1 + 304) = v44;
      *v44 = v1;
      v44[1] = sub_22FBD002C;

      v46(v43, v33, v34);
      return;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    return;
  }

  v5 = 0;
  v6 = (v4 + 32);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *(v4 + 2);
    if (v5 >= v8)
    {
      break;
    }

    v9 = *(v1 + 232);
    v10 = *(v1 + 240);
    sub_22FA2D328(v6, v1 + 56);
    v11 = *(v1 + 80);
    v3 = *(v1 + 88);
    v0 = __swift_project_boxed_opaque_existential_1((v1 + 56), v11);
    if ((*(v3 + 40))(v11, v3) == v9 && v12 == v10)
    {

LABEL_13:
      sub_22FA2CF78((v1 + 56), v1 + 96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 224) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v0 = (v1 + 224);
        sub_22FA8713C(0, *(v7 + 16) + 1, 1);
        v7 = *(v1 + 224);
      }

      v3 = *(v7 + 16);
      v15 = *(v7 + 24);
      v2 = v3 + 1;
      if (v3 >= v15 >> 1)
      {
        v0 = (v1 + 224);
        sub_22FA8713C((v15 > 1), v3 + 1, 1);
        v7 = *(v1 + 224);
      }

      *(v7 + 16) = v2;
      sub_22FA2CF78((v1 + 96), v7 + 40 * v3 + 32);
      goto LABEL_4;
    }

    v0 = v12;
    v2 = sub_22FCC9704();

    if (v2)
    {
      goto LABEL_13;
    }

    __swift_destroy_boxed_opaque_existential_0((v1 + 56));
LABEL_4:
    ++v5;
    v6 += 40;
    if (v45 == v5)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_43:
  v4 = sub_22FAC1D0C((v8 > 1), v7, 1, v4);
LABEL_22:

  *(v4 + 2) = v7;
  v17 = &v4[16 * v3];
  *(v17 + 4) = v2;
  *(v17 + 5) = v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
LABEL_25:
  v20 = *(v1 + 216);
  if (*(v20 + 16))
  {
    sub_22FA2D328(v20 + 32, v1 + 176);

    sub_22FA2CF78((v1 + 176), v1 + 136);
    v21 = *(v1 + 160);
    v22 = *(v1 + 168);
    __swift_project_boxed_opaque_existential_1((v1 + 136), v21);
    if ((*(v22 + 120))(v21, v22))
    {
      *(v1 + 328) = *(*(v1 + 256) + 128);

      v23 = swift_task_alloc();
      *(v1 + 336) = v23;
      *v23 = v1;
      v23[1] = sub_22FBD07C4;

      sub_22FBE7B4C(sub_22FBE7B4C, v1 + 136, 2);
      return;
    }

    v25 = *(v1 + 232);
    v24 = *(v1 + 240);
    __swift_destroy_boxed_opaque_existential_0((v1 + 136));
    v26 = 4;
  }

  else
  {
    v25 = *(v1 + 232);
    v24 = *(v1 + 240);

    v26 = 2;
  }

  sub_22FAE1210();
  swift_allocError();
  *v27 = v25;
  *(v27 + 8) = v24;
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v26;
  swift_willThrow();

  v28 = *(v1 + 8);

  v28();
}

uint64_t sub_22FBD07C4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 248);
    v4 = sub_22FBD09C8;
  }

  else
  {
    v5 = *(v2 + 248);

    v4 = sub_22FBD08EC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FBD08EC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FBD0950()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FBD09C8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FBD0BC0(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_22FCC8A84();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22FBAC09C;

  return sub_22FBCFB78(v4, v6);
}

uint64_t sub_22FBD0C94(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = sub_22FCC8684();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBD0D80, v2, 0);
}

uint64_t sub_22FBD0D80()
{
  if (v0[3])
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  else
  {
    v1 = sub_22FCC8A84();
    v2 = v3;
  }

  v0[9] = v1;
  v0[10] = v2;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_22FBD0E5C;

  return sub_22FBD1634(v1, v2);
}

uint64_t sub_22FBD0E5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 32);

    return MEMORY[0x2822009F8](sub_22FBD0FB4, v7, 0);
  }
}

uint64_t sub_22FBD0FB4(uint64_t a1, uint64_t a2)
{
  v24 = v2;
  v3 = v2[5];
  v4 = sub_22FBD5BF0(&qword_27DAD7B38, a2, type metadata accessor for ExecutiveService, &unk_22FCDC008);
  sub_22FA2CEC4(v3, v4);

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v2[12];
  v9 = v2[10];
  if (v7)
  {
    v10 = v2[9];
    v22 = v2[8];
    v12 = v2[6];
    v11 = v2[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 134218242;
    *(v13 + 4) = *(v8 + 16);

    *(v13 + 12) = 2080;
    v15 = sub_22FA2F600(v10, v9, &v23);

    *(v13 + 14) = v15;
    _os_log_impl(&dword_22FA28000, v5, v6, "Submitting %ld tasks for scenario: %s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23190A000](v14, -1, -1);
    MEMORY[0x23190A000](v13, -1, -1);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    v17 = v2[7];
    v16 = v2[8];
    v18 = v2[6];

    (*(v17 + 8))(v16, v18);
  }

  v2[13] = *(*(v2[4] + 128) + 128);

  v19 = swift_task_alloc();
  v2[14] = v19;
  *v19 = v2;
  v19[1] = sub_22FBD124C;
  v20 = v2[12];

  return sub_22FBCE47C(v20, 2, 1);
}

uint64_t sub_22FBD124C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_22FBD1554(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_22FCC8A84();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22FA73900;

  return sub_22FBD0C94(a1, v6);
}

uint64_t sub_22FBD1634(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FBD1658, v2, 0);
}

uint64_t sub_22FBD1658()
{
  v2 = v0[2];
  v1 = v0[3];
  if (sub_22FCC8A84() == v2 && v3 == v1)
  {

    goto LABEL_15;
  }

  v5 = sub_22FCC9704();

  if (v5)
  {
LABEL_15:
    v15 = swift_task_alloc();
    v0[5] = v15;
    *v15 = v0;
    v15[1] = sub_22FBD1874;

    return sub_22FBD1A74();
  }

  v7 = v0[2];
  v6 = v0[3];
  if (sub_22FCC8A84() == v7 && v8 == v6)
  {
  }

  else
  {
    v10 = sub_22FCC9704();

    if ((v10 & 1) == 0)
    {
      v12 = v0[2];
      v11 = v0[3];
      sub_22FBD5B9C();
      swift_allocError();
      *v13 = v12;
      v13[1] = v11;
      swift_willThrow();
      v17 = v0[1];

      return v17();
    }
  }

  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_22FBD1974;

  return sub_22FBD2340();
}

uint64_t sub_22FBD1874(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_22FBD1974(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_22FBD1A94()
{
  v1 = *(v0[7] + 128);
  v0[8] = v1;
  v2 = *(*(v1 + 136) + 16);
  v0[9] = v2;
  if (v2 >> 62)
  {
    v3 = sub_22FCC92C4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[10] = v3;

  if (v3)
  {
    v0[11] = MEMORY[0x277D84F90];
    v4 = v0[9];
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x231908810](0);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }
    }

    v0[12] = v5;
    v0[13] = 1;
    v6 = v0[8];
    v7 = *(v5 + 40);
    v8 = *(v5 + 48);
    v9 = *(v8 + 24);
    v0[5] = v7;
    v0[6] = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    v9(v7, v8);
    v11 = type metadata accessor for ActivitySession(0);
    v14 = v6 + 120;
    v13 = *(v6 + 120);
    v12 = *(v14 + 8);
    v15 = *(v7 - 8);
    v16 = swift_task_alloc();
    (*(v15 + 16))(v16, boxed_opaque_existential_1, v7);

    v17 = sub_22FA62068(v16, v12, v13, v11, v7, v8);
    v0[14] = v17;

    v21 = (*(v8 + 32) + **(v8 + 32));
    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    v18[1] = sub_22FBD1DB4;

    v21(v17, v7, v8);
  }

  else
  {

    v19 = v0[1];
    v20 = MEMORY[0x277D84F90];

    v19(v20);
  }
}

uint64_t sub_22FBD1DB4(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v4 = v3[7];

    v5 = sub_22FBD22C8;
    v6 = v4;
  }

  else
  {
    v6 = v3[7];
    v5 = sub_22FBD1EE8;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

void sub_22FBD1EE8(__n128 a1)
{
  v2 = v1[16];
  v3 = *(v2 + 16);
  v4 = *(v1[11] + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v1[11];
  if (isUniquelyReferenced_nonNull_native)
  {
    v8 = v7[3] >> 1;
    if (v8 >= v5)
    {
      if (*(v2 + 16))
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  if (v4 <= v5)
  {
    v12 = v4 + v3;
  }

  else
  {
    v12 = v4;
  }

  v7 = sub_22FAC2350(isUniquelyReferenced_nonNull_native, v12, 1, v1[11]);
  v8 = v7[3] >> 1;
  if (!*(v2 + 16))
  {
LABEL_13:

    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_5:
  if (v8 - v7[2] < v3)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    v17 = MEMORY[0x231908810](v3);
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7560, &unk_22FCD29B0);
  swift_arrayInitWithCopy();

  if (v3)
  {
    v9 = v7[2];
    v10 = __OFADD__(v9, v3);
    v11 = v9 + v3;
    if (v10)
    {
LABEL_31:
      __break(1u);
      return;
    }

    v7[2] = v11;
  }

LABEL_14:
  v13 = v1[13];
  v14 = v1[10];

  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  if (v13 == v14)
  {

    v15 = v1[1];

    v15(v7);
    return;
  }

  v3 = v1[13];
  v1[11] = v7;
  v16 = v1[9];
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (v3 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  v1[12] = v17;
  v1[13] = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v18 = v1[8];
  v19 = *(v17 + 40);
  v20 = *(v17 + 48);
  v21 = *(v20 + 24);
  v1[5] = v19;
  v1[6] = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  v21(v19, v20);
  v23 = type metadata accessor for ActivitySession(0);
  v26 = v18 + 120;
  v25 = *(v18 + 120);
  v24 = *(v26 + 8);
  v27 = *(v19 - 8);
  v28 = swift_task_alloc();
  (*(v27 + 16))(v28, boxed_opaque_existential_1, v19);

  v29 = sub_22FA62068(v28, v24, v25, v23, v19, v20);
  v1[14] = v29;

  v31 = (*(v20 + 32) + **(v20 + 32));
  v30 = swift_task_alloc();
  v1[15] = v30;
  *v30 = v1;
  v30[1] = sub_22FBD1DB4;

  v31(v29, v19, v20);
}

uint64_t sub_22FBD22C8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FBD2360()
{
  v1 = *(v0[47] + 128);
  v0[48] = *(v1 + 120);
  v0[46] = v1;
  type metadata accessor for Executive(0);
  sub_22FBD5BF0(qword_28147B250, 255, type metadata accessor for Executive, &protocol conformance descriptor for Executive);

  sub_22FCC9324();
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_22FBD2494;

  return sub_22FAF9558((v0 + 21));
}

uint64_t sub_22FBD2494(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 400) = a1;
  *(v4 + 408) = v1;

  sub_22FA3A7C4(v4 + 168);

  v5 = *(v3 + 376);
  if (v1)
  {
    v6 = sub_22FBD2D84;
  }

  else
  {
    v6 = sub_22FBD25F4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FBD25F4()
{
  v47 = v0;
  v1 = *(v0 + 400);
  v42 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = *(v0 + 400);
LABEL_3:
  v4 = MEMORY[0x277D84F90];
  if (v2)
  {
    v39 = v1 & 0xC000000000000001;
    v41 = type metadata accessor for LegacyTask();
    v5 = 0;
    v36 = v3 + 32;
    v37 = v1 & 0xFFFFFFFFFFFFFF8;
    v38 = v2;
    while (1)
    {
      if (v39)
      {
        v6 = MEMORY[0x231908810](v5, *(v0 + 400));
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v5 >= *(v37 + 16))
        {
          goto LABEL_35;
        }

        v6 = *(v36 + 8 * v5);

        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v2 = sub_22FCC92C4();
          v3 = *(v0 + 400);
          goto LABEL_3;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22FCDBF20;
      *(inited + 32) = [objc_allocWithZone(PHAAssetRevGeocodeEnrichmentTask) init];
      *(inited + 40) = [objc_allocWithZone(PHAContactUpdateTask) init];
      *(inited + 48) = [objc_allocWithZone(PHAGraphRebuildTask) init];
      *(inited + 56) = [objc_allocWithZone(PHAGraphForceGraphRebuildTask) init];
      *(inited + 64) = [objc_allocWithZone(PHASyndicationTask) init];
      *(inited + 72) = [objc_allocWithZone(PHAExternalAssetsTask) init];
      *(inited + 80) = [objc_allocWithZone(PHAHighlightEnrichmentTask) init];
      *(inited + 88) = [objc_allocWithZone(PHAHighlightCollectionEnrichmentTask) init];
      *(inited + 96) = [objc_allocWithZone(PHASharedLibrarySuggestionGenerationTask) initWithTaskType_];
      *(inited + 104) = [objc_allocWithZone(PHAMemoryElectionTask) init];
      *(inited + 112) = [objc_allocWithZone(PHASuggestionGenerationTask) init];
      *(inited + 120) = [objc_allocWithZone(PHASearchEnrichmentTask) init];
      *(inited + 128) = [objc_allocWithZone(PHAMemoriesEnrichmentTask) init];
      *(inited + 136) = [objc_allocWithZone(PHAWallpaperSuggestionGenerationNightlyTask) init];
      *(inited + 144) = [objc_allocWithZone(PHAPhotosChallengeTask) init];
      v9 = *(v6 + 112);
      v43 = v4;
      v40 = v9;

      v1 = &v43;
      sub_22FA8713C(0, 15, 0);
      v10 = 0;
      v11 = v43;
      do
      {
        if ((inited & 0xC000000000000001) != 0)
        {
          v1 = MEMORY[0x231908810](v10, inited);
        }

        else
        {
          if (v10 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_34;
          }

          v1 = *(inited + 8 * v10 + 32);
          swift_unknownObjectRetain();
        }

        v46 = 0;
        v44 = 0u;
        v45 = 0u;
        swift_getObjectType();

        v12 = swift_unknownObjectRetain();
        v13 = sub_22FAE1408(v12, v6, &v44);

        *(v0 + 232) = v41;
        *(v0 + 240) = sub_22FBD5BF0(&qword_281481AE0, 255, type metadata accessor for LegacyTask, &unk_22FCD5A78);
        swift_unknownObjectRelease();
        *(v0 + 208) = v13;
        v43 = v11;
        v15 = *(v11 + 16);
        v14 = *(v11 + 24);
        if (v15 >= v14 >> 1)
        {
          v1 = &v43;
          sub_22FA8713C((v14 > 1), v15 + 1, 1);
          v11 = v43;
        }

        ++v10;
        *(v11 + 16) = v15 + 1;
        sub_22FA2CF78((v0 + 208), v11 + 40 * v15 + 32);
      }

      while (v10 != 15);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_22FA68214(v11);
      v16 = type metadata accessor for GraphSearchEntityRankingDonationTask();
      v44 = 0u;
      v45 = 0u;
      v46 = 0;
      v17 = swift_allocObject();

      v19 = sub_22FBD5714(v18, v40, &v44, v17);
      v1 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_22FAC2350(0, v42[2] + 1, 1, v42);
      }

      v4 = MEMORY[0x277D84F90];
      v21 = *(v1 + 16);
      v20 = *(v1 + 24);
      if (v21 >= v20 >> 1)
      {
        v1 = sub_22FAC2350((v20 > 1), v21 + 1, 1, v1);
      }

      *(v0 + 272) = v16;
      *(v0 + 280) = sub_22FBD5BF0(&qword_28147C788, 255, type metadata accessor for GraphSearchEntityRankingDonationTask, &unk_22FCDD190);
      *(v0 + 248) = v19;
      *(v1 + 16) = v21 + 1;
      sub_22FA2CF78((v0 + 248), v1 + 40 * v21 + 32);
      v22 = type metadata accessor for FeaturedCollectionElectionTask();
      v44 = 0u;
      v45 = 0u;
      v46 = 0;
      v23 = swift_allocObject();

      v25 = sub_22FBD5570(v24, v40, &v44, v23);
      v27 = *(v1 + 16);
      v26 = *(v1 + 24);
      if (v27 >= v26 >> 1)
      {
        v1 = sub_22FAC2350((v26 > 1), v27 + 1, 1, v1);
      }

      *(v0 + 312) = v22;
      *(v0 + 320) = sub_22FBD5BF0(&qword_28147D440, 255, type metadata accessor for FeaturedCollectionElectionTask, &unk_22FCD8EC8);
      *(v0 + 288) = v25;
      *(v1 + 16) = v27 + 1;
      sub_22FA2CF78((v0 + 288), v1 + 40 * v27 + 32);
      v28 = type metadata accessor for AlchemistGenerationTask(0);
      v44 = 0u;
      v45 = 0u;
      v46 = 0;
      v29 = swift_allocObject();

      v31 = sub_22FBD4F0C(v30, v40, &v44, v29);
      v33 = *(v1 + 16);
      v32 = *(v1 + 24);
      if (v33 >= v32 >> 1)
      {
        v1 = sub_22FAC2350((v32 > 1), v33 + 1, 1, v1);
      }

      *(v0 + 352) = v28;
      *(v0 + 360) = sub_22FBD5BF0(&qword_28147F498, 255, type metadata accessor for AlchemistGenerationTask, &unk_22FCD4F48);
      *(v0 + 328) = v31;
      *(v1 + 16) = v33 + 1;
      sub_22FA2CF78((v0 + 328), v1 + 40 * v33 + 32);
      v42 = v1;
      if (v5 == v38)
      {
        goto LABEL_30;
      }
    }
  }

  v1 = MEMORY[0x277D84F90];
LABEL_30:

  v34 = *(v0 + 8);

  return v34(v1);
}

uint64_t sub_22FBD2F14(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22FBD2F90, a2, 0);
}

uint64_t sub_22FBD2F90()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22FBD3024;

  return sub_22FC44D14();
}

uint64_t sub_22FBD3024(uint64_t a1)
{
  v4 = *v2;
  v4[5] = v1;

  v5 = v4[2];
  if (v1)
  {
    v6 = sub_22FBD3228;
  }

  else
  {
    v4[6] = a1;
    v6 = sub_22FBD3160;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FBD3160()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
  v1 = sub_22FCC89C4();

  v2 = *(v0 + 24);
  (v2)[2](v2, v1, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FBD3228()
{
  v1 = v0[5];

  v2 = sub_22FCC6504();

  v3 = v0[3];
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_22FBD3440(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22FBD34BC, 0, 0);
}

uint64_t sub_22FBD34BC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22FBD3550;

  return sub_22FC47A64();
}

uint64_t sub_22FBD3550(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FBD3650, 0, 0);
}

uint64_t sub_22FBD3650()
{
  v1 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
  v2 = sub_22FCC89C4();

  (v1)[2](v1, v2, 0);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FBD371C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v3[6] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBD3840, 0, 0);
}

uint64_t sub_22FBD3840(uint64_t a1, uint64_t a2)
{
  v3 = v2[5];
  v4 = sub_22FBD5BF0(&qword_27DAD7B38, a2, type metadata accessor for ExecutiveService, &unk_22FCDC008);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Executive - keepPADActive", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = v2[8];
  v8 = v2[9];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[4];
  v13 = v2[5];

  (*(v9 + 8))(v8, v11);
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v12;
  v15[5] = v13;

  v2[10] = sub_22FB22A48(0, 0, v10, &unk_22FCDC060, v15);
  v16 = *(v12 + 144);
  v2[11] = v16;

  return MEMORY[0x2822009F8](sub_22FBD3A30, v16, 0);
}

uint64_t sub_22FBD3A30()
{

  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_22FBD3AF8;
  v2 = v0[10];
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x277D84F90];

  return sub_22FBE5228(v1, 0x414441507065656BLL, 0xED00006576697463, v2, v5, v3, v4);
}

uint64_t sub_22FBD3AF8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_22FBD3D04;
  }

  else
  {
    v4 = sub_22FBD3C24;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FBD3C24()
{

  return MEMORY[0x2822009F8](sub_22FBD3C8C, 0, 0);
}

uint64_t sub_22FBD3C8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FBD3D04()
{

  return MEMORY[0x2822009F8](sub_22FBD3D6C, 0, 0);
}

uint64_t sub_22FBD3D6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FBD3DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_22FCC9444();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = sub_22FCC9464();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = sub_22FCC8684();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBD3F68, 0, 0);
}

uint64_t sub_22FBD3F68(uint64_t a1)
{
  v26 = v1;
  sub_22FCC8DA4();
  v2 = *(v1 + 64);
  v4 = sub_22FBD5BF0(&qword_27DAD7B38, v3, type metadata accessor for ExecutiveService, &unk_22FCDC008);
  sub_22FA2CEC4(v2, v4);

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v1 + 136);
    v7 = *(v1 + 144);
    v9 = *(v1 + 128);
    v10 = *(v1 + 56);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_22FA2F600(0xD000000000000010, 0x800000022FCDBF50, v25);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_22FA2F600(*(v10 + 112), *(v10 + 120), v25);
    _os_log_impl(&dword_22FA28000, v5, v6, "%s (%s): heartbeat, keeping PAD active", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v12, -1, -1);
    MEMORY[0x23190A000](v11, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v14 = *(v1 + 136);
    v13 = *(v1 + 144);
    v15 = *(v1 + 128);

    (*(v14 + 8))(v13, v15);
  }

  v17 = *(v1 + 80);
  v16 = *(v1 + 88);
  v18 = *(v1 + 72);
  sub_22FCC97A4();
  *(v1 + 40) = xmmword_22FCDBF30;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 1;
  v19 = sub_22FBD5BF0(&qword_28147AD70, 255, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_22FCC9784();
  sub_22FBD5BF0(&qword_28147AD78, 255, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_22FCC9474();
  v20 = *(v17 + 8);
  *(v1 + 152) = v20;
  *(v1 + 160) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v18);
  v21 = swift_task_alloc();
  *(v1 + 168) = v21;
  *v21 = v1;
  v21[1] = sub_22FBD4344;
  v23 = *(v1 + 96);
  v22 = *(v1 + 104);

  return MEMORY[0x2822008C8](v23, v1 + 16, v22, v19);
}

uint64_t sub_22FBD4344()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    (*(v2 + 152))(*(v2 + 96), *(v2 + 72));
    v3 = sub_22FBD484C;
  }

  else
  {
    v5 = *(v2 + 112);
    v4 = *(v2 + 120);
    v6 = *(v2 + 104);
    (*(v2 + 152))(*(v2 + 96), *(v2 + 72));
    (*(v5 + 8))(v4, v6);
    v3 = sub_22FBD449C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FBD449C(uint64_t a1)
{
  v26 = v1;
  v2 = *(v1 + 176);
  sub_22FCC8DA4();
  if (v2)
  {
    sub_22FBD4904(*(v1 + 64));

    v4 = *(v1 + 8);

    return v4();
  }

  else
  {
    v6 = *(v1 + 64);
    v7 = sub_22FBD5BF0(&qword_27DAD7B38, v3, type metadata accessor for ExecutiveService, &unk_22FCDC008);
    sub_22FA2CEC4(v6, v7);

    v8 = sub_22FCC8664();
    v9 = sub_22FCC8EF4();

    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v1 + 136);
    v11 = *(v1 + 144);
    v13 = *(v1 + 128);
    if (v10)
    {
      v14 = *(v1 + 56);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_22FA2F600(0xD000000000000010, 0x800000022FCDBF50, v25);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_22FA2F600(*(v14 + 112), *(v14 + 120), v25);
      _os_log_impl(&dword_22FA28000, v8, v9, "%s (%s): heartbeat, keeping PAD active", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v16, -1, -1);
      MEMORY[0x23190A000](v15, -1, -1);
    }

    (*(v12 + 8))(v11, v13);
    v18 = *(v1 + 80);
    v17 = *(v1 + 88);
    v19 = *(v1 + 72);
    sub_22FCC97A4();
    *(v1 + 40) = xmmword_22FCDBF30;
    *(v1 + 24) = 0;
    *(v1 + 16) = 0;
    *(v1 + 32) = 1;
    v20 = sub_22FBD5BF0(&qword_28147AD70, 255, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_22FCC9784();
    sub_22FBD5BF0(&qword_28147AD78, 255, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_22FCC9474();
    v21 = *(v18 + 8);
    *(v1 + 152) = v21;
    *(v1 + 160) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v17, v19);
    v22 = swift_task_alloc();
    *(v1 + 168) = v22;
    *v22 = v1;
    v22[1] = sub_22FBD4344;
    v24 = *(v1 + 96);
    v23 = *(v1 + 104);

    return MEMORY[0x2822008C8](v24, v1 + 16, v23, v20);
  }
}

uint64_t sub_22FBD484C()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  sub_22FBD4904(v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FBD4904(uint64_t a1)
{
  v2 = sub_22FCC8684();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FBD5BF0(&qword_27DAD7B38, v7, type metadata accessor for ExecutiveService, &unk_22FCDC008);
  sub_22FA2CEC4(a1, v8);
  v9 = sub_22FCC8664();
  v10 = sub_22FCC8EF4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22FA28000, v9, v10, "Executive - keepPADActive completed", v11, 2u);
    MEMORY[0x23190A000](v11, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22FBD4C2C(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_22FCC8A84();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22FA73900;

  return sub_22FBD371C(v4, v6);
}

uint64_t sub_22FBD4D70(uint64_t a1, uint64_t a2)
{
  result = sub_22FBD5BF0(&qword_27DAD8D98, a2, type metadata accessor for ExecutiveService, &unk_22FCDBFB8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FBD4DC8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FBD5BF0(&qword_27DAD8DA0, a2, type metadata accessor for ExecutiveService, &unk_22FCDBFE0);
  result = sub_22FBD5BF0(&qword_27DAD8DA8, v3, type metadata accessor for ExecutiveService, &unk_22FCDC024);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FBD4E4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22FA2C030;

  return sub_22FBD3DE4(a1, v4, v5, v7, v6);
}

uint64_t sub_22FBD4F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55[5] = *MEMORY[0x277D85DE8];
  v49 = *a4;
  v51 = sub_22FCC65F4();
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v50 = &v47 - v13;
  v14 = sub_22FCC67F4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[3] = type metadata accessor for MomentGraphWorker();
  v55[4] = sub_22FBD5BF0(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  v55[0] = a1;
  *(a4 + 56) = 0xD000000000000017;
  *(a4 + 64) = 0x800000022FCE7760;
  sub_22FCC67E4();
  v19 = sub_22FCC67B4();
  v21 = v20;
  v22 = *(v15 + 8);
  v22(v18, v14);
  *(a4 + 72) = v19;
  *(a4 + 80) = v21;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0x40E5180000000000;
  *(a4 + 104) = 3;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  *(a4 + 128) = 1;
  *(a4 + 176) = 0;
  sub_22FA2D328(v55, a4 + 16);
  *(a4 + 184) = a2;
  v52 = a3;
  sub_22FA2E6E4(a3, a4 + 136);
  v23 = *(a2 + 112);
  v53 = a2;

  v24 = [v23 analytics];
  type metadata accessor for AlchemistGenerationTask.AnalyticsHelper();
  v25 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v25 + 112) = v24;
  *(v25 + 120) = 0;
  *(a4 + OBJC_IVAR____TtC13PhotoAnalysis23AlchemistGenerationTask_analyticsHelper) = v25;
  v26 = NSTemporaryDirectory();
  sub_22FCC8A84();

  sub_22FCC6544();

  v54[0] = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8DB0, &qword_22FCDC068);
  v54[0] = sub_22FCC8AE4();
  v54[1] = v27;
  MEMORY[0x231907FA0](45, 0xE100000000000000);
  sub_22FCC67E4();
  sub_22FBD5BF0(&qword_281482508, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v28 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v28);

  v22(v18, v14);
  v29 = v50;
  sub_22FCC6574();

  v30 = v48;
  v31 = v51;
  (*(v48 + 8))(v10, v51);
  (*(v30 + 32))(a4 + OBJC_IVAR____TtC13PhotoAnalysis23AlchemistGenerationTask_tmpAssetDirectory, v29, v31);
  v32 = [objc_opt_self() defaultManager];
  v33 = sub_22FCC6564();
  v54[0] = 0;
  LODWORD(v30) = [v32 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:v54];

  if (v30)
  {
    v34 = v54[0];
    sub_22FA2B420(v52, &unk_27DAD83A0, &qword_22FCD1AC0);
  }

  else
  {
    v35 = v52;
    v36 = v54[0];
    v37 = sub_22FCC6514();

    swift_willThrow();
    if (qword_27DAD6E98 != -1)
    {
      swift_once();
    }

    v38 = sub_22FCC8684();
    __swift_project_value_buffer(v38, qword_27DAD81B8);
    v39 = v37;
    v40 = sub_22FCC8664();
    v41 = sub_22FCC8F14();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = v37;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_22FA28000, v40, v41, "Error creating temp asset directory: %@", v42, 0xCu);
      sub_22FA2B420(v43, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v43, -1, -1);
      MEMORY[0x23190A000](v42, -1, -1);
    }

    else
    {
    }

    sub_22FA2B420(v35, &unk_27DAD83A0, &qword_22FCD1AC0);
  }

  __swift_destroy_boxed_opaque_existential_0(v55);
  return a4;
}

uint64_t sub_22FBD5570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22FCC67F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MomentGraphWorker();
  v21 = sub_22FBD5BF0(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *&v19 = a1;
  *(a4 + 56) = 0xD00000000000001ELL;
  *(a4 + 64) = 0x800000022FCE7780;
  sub_22FCC67E4();
  v13 = sub_22FCC67B4();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  *(a4 + 72) = v13;
  *(a4 + 80) = v15;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0x40F5180000000000;
  *(a4 + 104) = 3;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  *(a4 + 128) = 1;
  sub_22FA2CF78(&v19, a4 + 16);
  v16 = *(a3 + 16);
  *(a4 + 136) = *a3;
  *(a4 + 152) = v16;
  *(a4 + 168) = *(a3 + 32);
  *(a4 + 176) = a2;
  return a4;
}

uint64_t sub_22FBD5714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22FCC67F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MomentGraphWorker();
  v21 = sub_22FBD5BF0(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *&v19 = a1;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  *(a4 + 32) = 0xD000000000000024;
  *(a4 + 40) = 0x800000022FCE77A0;
  sub_22FCC67E4();
  v13 = sub_22FCC67B4();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  *(a4 + 48) = v13;
  *(a4 + 56) = v15;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 64) = 0x4105180000000000;
  sub_22FA2CF78(&v19, a4 + 88);
  v16 = *(a3 + 16);
  *(a4 + 128) = *a3;
  *(a4 + 144) = v16;
  *(a4 + 160) = *(a3 + 32);
  *(a4 + 168) = a2;
  return a4;
}

uint64_t *sub_22FBD58B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v29 = a4;
  v9 = *v4;
  v10 = sub_22FCC8684();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v26 - v17;
  swift_defaultActor_initialize();
  v5[19] = MEMORY[0x277D84F90];
  v5[14] = a1;
  v5[15] = a2;
  v5[16] = a3;
  v27 = 0x800000022FCDBF50;
  v28 = a1;
  v20 = sub_22FBD5BF0(&qword_27DAD7B38, v19, type metadata accessor for ExecutiveService, &unk_22FCDC008);
  swift_bridgeObjectRetain_n();

  sub_22FA2CEC4(v9, v20);
  type metadata accessor for StateHolder(0);
  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) = 0;
  v21[2] = 0xD000000000000010;
  v21[3] = v27;
  v21[4] = a1;
  v21[5] = a2;
  v22 = *(v11 + 16);
  v22(v21 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger, v18, v10);
  v22(v14, v18, v10);
  sub_22FCC85E4();
  (*(v11 + 8))(v18, v10);
  v5[17] = v21;
  v23 = *(a3 + 128);
  type metadata accessor for ServiceOperationManager();
  v24 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v24 + 144) = MEMORY[0x277D84F98];
  *(v24 + 152) = 0;
  *(v24 + 112) = v28;
  *(v24 + 120) = a2;
  *(v24 + 128) = v23;
  *(v24 + 136) = v29;
  v5[18] = v24;
  if (qword_27DAD6F30 != -1)
  {
    swift_once();
  }

  sub_22FB5A674();
  return v5;
}

unint64_t sub_22FBD5B9C()
{
  result = qword_27DAD8DB8;
  if (!qword_27DAD8DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8DB8);
  }

  return result;
}

uint64_t sub_22FBD5BF0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22FBD5C38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C21C;

  return sub_22FBD4C2C(v2, v3, v4);
}

uint64_t sub_22FBD5CEC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22FA2C030;

  return sub_22FBD3440(v2, v3);
}

uint64_t sub_22FBD5D98()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22FA2C21C;

  return sub_22FBD2F14(v2, v3);
}

uint64_t sub_22FBD5E44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C21C;

  return sub_22FBD1554(v2, v3, v4);
}

uint64_t sub_22FBD5EF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C21C;

  return sub_22FBD0BC0(v2, v3, v4);
}

uint64_t sub_22FBD5FAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FBE4228(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_22FBD6098()
{
  result = qword_27DAD8DC0;
  if (!qword_27DAD8DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8DC0);
  }

  return result;
}

unint64_t sub_22FBD60F0()
{
  result = qword_27DAD8DC8;
  if (!qword_27DAD8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8DC8);
  }

  return result;
}

unint64_t sub_22FBD6144()
{
  result = qword_27DAD8DD0;
  if (!qword_27DAD8DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8DD0);
  }

  return result;
}

uint64_t sub_22FBD6198()
{
  sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
  result = sub_22FCC91C4();
  qword_28147B9F0 = result;
  return result;
}

uint64_t sub_22FBD6210()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_28147B9C8);
  __swift_project_value_buffer(v0, qword_28147B9C8);
  if (qword_28147B9E8 != -1)
  {
    swift_once();
  }

  v1 = qword_28147B9F0;
  return sub_22FCC8694();
}

uint64_t sub_22FBD629C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22FCC67F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 96) = 0x40F5180000000000;
  *(v4 + 104) = 0xD00000000000002BLL;
  *(v4 + 112) = 0x800000022FCDC260;
  sub_22FCC67E4();
  v13 = sub_22FCC67B4();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  *(v4 + 120) = v13;
  *(v4 + 128) = v15;
  *(v4 + 136) = xmmword_22FCD1F80;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 184) = 0;
  *(v4 + 40) = type metadata accessor for MomentGraphWorker();
  *(v4 + 48) = sub_22FBD8988(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *(v4 + 16) = a1;
  *(v4 + 176) = [*(*(a1 + 112) + 112) photoLibrary];
  v16 = *(a2 + 16);
  *(v4 + 56) = *a2;
  *(v4 + 72) = v16;
  *(v4 + 88) = *(a2 + 32);
  *(v4 + 192) = a3 & 1;
  return v4;
}

uint64_t sub_22FBD6464()
{
  if ([*(v0 + 176) isSystemPhotoLibrary])
  {

    return sub_22FBD86C8();
  }

  else
  {
    if (qword_28147B9C0 != -1)
    {
      swift_once();
    }

    v2 = sub_22FCC8684();
    __swift_project_value_buffer(v2, qword_28147B9C8);
    v3 = sub_22FCC8664();
    v4 = sub_22FCC8EF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22FA28000, v3, v4, "Task will not run: Task can only run on system library", v5, 2u);
      MEMORY[0x23190A000](v5, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_22FBD6574(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_22FCC7EE4();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v5 = sub_22FCC75E4();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v6 = sub_22FCC6E84();
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  v7 = sub_22FCC8494();
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBD67E8, 0, 0);
}

uint64_t sub_22FBD67E8()
{
  if (qword_28147B9E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v21 = *(v0 + 216);
  v22 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 184);
  v2 = *(v0 + 168);
  v20 = *(v0 + 160);
  v3 = *(v0 + 120);
  v4 = qword_28147B9F0;
  sub_22FCC76D4();
  swift_allocObject();
  v5 = v4;
  *(v0 + 328) = sub_22FCC76C4();

  sub_22FCC84A4();
  v6 = *(v3 + 176);
  sub_22FCC6E44();
  sub_22FCC8454();
  v7 = *MEMORY[0x277D3C1B8];
  *(v0 + 560) = v7;
  v8 = sub_22FCC75D4();
  *(v0 + 336) = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 104);
  *(v0 + 344) = v10;
  *(v0 + 352) = (v9 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v19, v7, v8);
  v11 = *MEMORY[0x277D3C1D0];
  v12 = *(v2 + 104);
  *(v0 + 360) = v12;
  *(v0 + 368) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v19, v11, v20);
  v13 = *(v1 + 32);
  *(v0 + 376) = v13;
  *(v0 + 384) = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v22, v18, v21);
  v14 = swift_task_alloc();
  *(v0 + 392) = v14;
  *v14 = v0;
  v14[1] = sub_22FBD6A58;
  v15 = *(v0 + 304);
  v16 = *(v0 + 184);

  return MEMORY[0x28219BB50](v16, v15);
}

uint64_t sub_22FBD6A58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v4[50] = v1;

  v6 = (v5 + 8);
  v4[51] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7 = v4[23];
  v8 = v4[20];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = sub_22FBD7A40;
  }

  else
  {
    v4[52] = a1;
    v10 = *v6;
    v4[53] = *v6;
    v10(v7, v8);
    v9 = sub_22FBD6BF4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22FBD6BF4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 416);
  v5 = *(v2 + 120);
  v6 = *(v5 + 184);
  v7 = __OFADD__(v6, v4);
  v8 = v6 + v4;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v20 = *(v2 + 376);
    v19 = *(v2 + 360);
    v9 = *(v2 + 344);
    v10 = *(v2 + 336);
    v11 = *(v2 + 560);
    v13 = *(v2 + 288);
    v12 = *(v2 + 296);
    v18 = *(v2 + 216);
    v14 = *(v2 + 176);
    v15 = *(v2 + 160);
    *(v5 + 184) = v8;
    sub_22FCC8454();
    v9(v14, v11, v10);
    v19(v14, *MEMORY[0x277D3C1D8], v15);
    v20(v13, v12, v18);
    v16 = swift_task_alloc();
    *(v2 + 432) = v16;
    *v16 = v2;
    v16[1] = sub_22FBD6D64;
    a2 = *(v2 + 288);
    a1 = *(v2 + 176);
  }

  return MEMORY[0x28219BB50](a1, a2);
}

uint64_t sub_22FBD6D64(uint64_t a1)
{
  v4 = *v2;
  v4[55] = v1;

  v5 = v4[53];
  v6 = v4[22];
  v7 = v4[20];
  if (v1)
  {
    v5(v6, v7);
    v8 = sub_22FBD7BC0;
  }

  else
  {
    v4[56] = a1;
    v5(v6, v7);
    v8 = sub_22FBD6EE8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22FBD6EE8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 448);
  v5 = *(v2 + 120);
  v6 = *(v5 + 184);
  v7 = __OFADD__(v6, v4);
  v8 = v6 + v4;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v2 + 376);
    v11 = *(v2 + 272);
    v10 = *(v2 + 280);
    v12 = *(v2 + 216);
    v13 = *(v2 + 152);
    v14 = *(v2 + 136);
    *(v5 + 184) = v8;
    *(v2 + 96) = MEMORY[0x277D84FA0];
    sub_22FCC8454();
    *(v2 + 564) = *MEMORY[0x277D3C5D8];
    v15 = *(v14 + 104);
    *(v2 + 456) = v15;
    *(v2 + 464) = (v14 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v15(v13);
    v9(v11, v10, v12);
    v16 = swift_task_alloc();
    *(v2 + 472) = v16;
    *v16 = v2;
    v16[1] = sub_22FBD704C;
    a2 = *(v2 + 272);
    a1 = *(v2 + 152);
  }

  return MEMORY[0x28219BB40](a1, a2);
}

uint64_t sub_22FBD704C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v4[60] = v1;

  v6 = (v5 + 8);
  v4[61] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7 = v4[19];
  v8 = v4[16];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = sub_22FBD7D40;
  }

  else
  {
    v4[62] = a1;
    v10 = *v6;
    v4[63] = *v6;
    v10(v7, v8);
    v9 = sub_22FBD71E8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22FBD71E8(__n128 a1)
{
  v2 = *(v1 + 456);
  v11 = *(v1 + 376);
  v4 = *(v1 + 256);
  v3 = *(v1 + 264);
  v5 = *(v1 + 216);
  v6 = *(v1 + 144);
  sub_22FC2E318(*(v1 + 496));
  sub_22FCC8454();
  *(v1 + 568) = *MEMORY[0x277D3C5E0];
  v2(v6);
  v11(v4, v3, v5);
  v7 = swift_task_alloc();
  *(v1 + 512) = v7;
  *v7 = v1;
  v7[1] = sub_22FBD7324;
  v8 = *(v1 + 256);
  v9 = *(v1 + 144);

  return MEMORY[0x28219BB40](v9, v8);
}

uint64_t sub_22FBD7324(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    (*(v4 + 504))(*(v4 + 144), *(v4 + 128));

    v5 = sub_22FBD7EC0;
  }

  else
  {
    v6 = *(v4 + 504);
    v7 = *(v4 + 144);
    v8 = *(v4 + 128);
    *(v4 + 528) = a1;
    v6(v7, v8);
    v5 = sub_22FBD7478;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FBD7478(__n128 a1)
{
  v2 = *(v1 + 120);
  sub_22FC2E318(*(v1 + 528));
  v3 = *(*(v1 + 96) + 16);

  v6 = *(v2 + 184);
  v7 = __OFSUB__(v6, v3);
  v8 = v6 - v3;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v1 + 120);
    *(v9 + 184) = v8;
    sub_22FA2E6E4(v9 + 56, v1 + 56);
    if (*(v1 + 80))
    {
      v10 = *(v1 + 120);
      sub_22FA2D89C((v1 + 56), v1 + 16);
      v11 = *(v1 + 40);
      v12 = *(v1 + 48);
      __swift_project_boxed_opaque_existential_1((v1 + 16), v11);
      (*(v12 + 16))(v8, *(v10 + 104), *(v10 + 112), v11, v12);
      __swift_destroy_boxed_opaque_existential_0((v1 + 16));
    }

    else
    {
      sub_22FA518B4(v1 + 56);
    }

    v26 = *(v1 + 568);
    v13 = *(v1 + 456);
    v14 = *(v1 + 564);
    v27 = *(v1 + 376);
    v16 = *(v1 + 240);
    v15 = *(v1 + 248);
    v25 = *(v1 + 216);
    v17 = *(v1 + 128);
    v18 = *(v1 + 136);
    sub_22FCC8454();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8DE8, &qword_22FCDC348);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v21 = swift_allocObject();
    *(v1 + 536) = v21;
    *(v21 + 16) = xmmword_22FCD17F0;
    v22 = v21 + v20;
    v13(v22, v14, v17);
    v13(v22 + v19, v26, v17);
    v27(v16, v15, v25);
    v23 = swift_task_alloc();
    *(v1 + 544) = v23;
    *v23 = v1;
    v23[1] = sub_22FBD7698;
    v5 = *(v1 + 240);
    v4 = v21;
  }

  return MEMORY[0x28219BB48](v4, v5);
}

uint64_t sub_22FBD7698()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_22FBD8040;
  }

  else
  {
    v2 = sub_22FBD77CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FBD77CC()
{
  (*(v0 + 376))(*(v0 + 232), *(v0 + 320), *(v0 + 216));
  sub_22FCC8484();
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  sub_22FCC76B4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FBD7A40()
{
  v1 = v0[40];
  v2 = v0[27];
  v3 = v0[28];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v3 + 8))(v1, v2);
  sub_22FCC76B4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FBD7BC0()
{
  v1 = v0[40];
  v2 = v0[27];
  v3 = v0[28];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v3 + 8))(v1, v2);
  sub_22FCC76B4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FBD7D40()
{
  v1 = v0[40];
  v2 = v0[27];
  v3 = v0[28];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v3 + 8))(v1, v2);
  sub_22FCC76B4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FBD7EC0()
{
  v1 = v0[40];
  v2 = v0[27];
  v3 = v0[28];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v3 + 8))(v1, v2);
  sub_22FCC76B4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FBD8040()
{
  v1 = v0[40];
  v2 = v0[27];
  v3 = v0[28];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v3 + 8))(v1, v2);
  sub_22FCC76B4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FBD81C0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_22FA518B4(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_22FBD8244()
{
  v1 = *(*v0 + 104);

  return v1;
}

uint64_t sub_22FBD8278()
{
  v1 = *(*v0 + 120);

  return v1;
}

uint64_t sub_22FBD82F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FBD6574(a2, a3);
}

uint64_t sub_22FBD8398()
{
  v0 = sub_22FCC77B4();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277D3C250], v0, v3);
  v6 = sub_22FCC7794();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_22FBD84AC()
{
  v1 = *(v0 + 16);
  if (*(v1 + 192) == 1)
  {
    return (*(v0 + 8))(*(v1 + 184) > 0);
  }

  else
  {
    return (*(v0 + 8))(0);
  }
}

uint64_t sub_22FBD8508()
{
  v1 = *(v0 + 16);
  if (*(v1 + 192))
  {
    return (*(v0 + 8))(0);
  }

  else
  {
    return (*(v0 + 8))(*(v1 + 184) > 0);
  }
}

uint64_t sub_22FBD853C(uint64_t result)
{
  if (result)
  {

    MEMORY[0x231907FA0](0x6375747320736920, 0xE90000000000006BLL);
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FBD85C0()
{
  v1 = *(*v0 + 152);

  return v1;
}

uint64_t sub_22FBD8618(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 120) == *(*a2 + 120) && *(*a1 + 128) == *(*a2 + 128))
  {
    return 1;
  }

  else
  {
    return sub_22FCC9704();
  }
}

uint64_t sub_22FBD8644(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FBD8988(&qword_27DAD8DD8, a2, type metadata accessor for FeaturedPhotosWidgetSpatial3DGenerationTask, &unk_22FCDC2D4);
  result = sub_22FBD8988(&qword_27DAD8DE0, v3, type metadata accessor for FeaturedPhotosWidgetSpatial3DGenerationTask, &unk_22FCDC2AC);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FBD86C8()
{
  if ((PLIsAlchemistAllowed() & 1) == 0)
  {
    if (qword_28147B9C0 != -1)
    {
      swift_once();
    }

    v3 = sub_22FCC8684();
    __swift_project_value_buffer(v3, qword_28147B9C8);
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8EF4();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_18;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Alchemist has been disabled from settings";
    goto LABEL_17;
  }

  v0 = sub_22FCC6DE4();
  v10[3] = v0;
  v10[4] = sub_22FBD8988(qword_28147B080, 255, MEMORY[0x277D3A838], MEMORY[0x277D3A7F0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A800], v0);
  LOBYTE(v0) = sub_22FCC6C74();
  __swift_destroy_boxed_opaque_existential_0(v10);
  if ((v0 & 1) == 0)
  {
    if (qword_28147B9C0 != -1)
    {
      swift_once();
    }

    v8 = sub_22FCC8684();
    __swift_project_value_buffer(v8, qword_28147B9C8);
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8EF4();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_18;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Task will not run: FF Photos/GyroWidget is not enabled";
    goto LABEL_17;
  }

  if (PFPosterDeviceSpatialPhotoSupportLevel())
  {
    return 1;
  }

  if (qword_28147B9C0 != -1)
  {
    swift_once();
  }

  v9 = sub_22FCC8684();
  __swift_project_value_buffer(v9, qword_28147B9C8);
  v4 = sub_22FCC8664();
  v5 = sub_22FCC8EF4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Device does not support Spatial3D";
LABEL_17:
    _os_log_impl(&dword_22FA28000, v4, v5, v7, v6, 2u);
    MEMORY[0x23190A000](v6, -1, -1);
  }

LABEL_18:

  return 0;
}

uint64_t sub_22FBD8988(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22FBD89D0(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_22FBD8A7C()
{
  v27 = sub_22FCC8F84();
  MEMORY[0x28223BE20](v27, v0);
  v26 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22FCC8F94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v25 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FCC8914();
  v24 = *(v6 - 8);
  v7 = v24;
  MEMORY[0x28223BE20](v6, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v23 - v13;
  v15 = type metadata accessor for MusicActivityTaskSource(0);
  v16 = sub_22FBDAE90(qword_28147F2A0, type metadata accessor for MusicActivityTaskSource, &unk_22FCDC3B0);
  v17 = type metadata accessor for BackgroundSystemTask();
  v18 = swift_allocObject();
  v18[1] = 0u;
  v18[2] = 0u;
  v18[3] = 0u;
  *(v18 + 57) = 0u;
  v29[3] = v17;
  v29[4] = &off_2844A92C8;
  v29[0] = v18;
  sub_22FCC88E4();
  type metadata accessor for Activity(0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_delegate + 8) = 0;
  swift_unknownObjectUnownedInit();
  *(v19 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_monitorTimer) = 0;
  v20 = v19 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralRequestTime;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v19 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralHasTimedOut) = 0;
  *(v19 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_taskSchedulingTask) = 0;
  *(v19 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_cancellationTask) = 0;
  *(v19 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_runtimeError) = 0;
  *(v19 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_isActive) = 0;
  *(v19 + 24) = 0xD00000000000001ELL;
  *(v19 + 32) = 0x800000022FCE79B0;
  *(v19 + 40) = v15;
  *(v19 + 48) = v16;
  *(v19 + 56) = 1;
  sub_22FA2D328(v29, v19 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask);
  sub_22FCC8674();
  v23[1] = sub_22FA5191C();
  (*(v7 + 16))(v10, v14, v6);
  (*(v3 + 104))(v25, *MEMORY[0x277D85268], v2);
  v28 = MEMORY[0x277D84F90];
  sub_22FBDAE90(&qword_28147AEA0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7360, &qword_22FCD58D0);
  sub_22FA2CF90(&qword_28147AF20, &qword_27DAD7360, &qword_22FCD58D0, MEMORY[0x277D83970]);
  sub_22FCC9264();
  v21 = sub_22FCC8FC4();
  (*(v24 + 8))(v14, v6);
  __swift_destroy_boxed_opaque_existential_0(v29);
  *(v19 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_queue) = v21;
  return v19;
}

uint64_t sub_22FBD8F40(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_22FCC65F4();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBD9000, v1, 0);
}

uint64_t sub_22FBD9000()
{
  v1 = v0[8];
  v2 = *(v1 + 168);
  v0[13] = v2;
  v0[7] = v1;
  type metadata accessor for ActivitySession(0);
  sub_22FBDAE90(&qword_281480D10, type metadata accessor for ActivitySession, &unk_22FCD2408);

  sub_22FCC9324();

  return MEMORY[0x2822009F8](sub_22FBD90E4, v2, 0);
}

uint64_t sub_22FBD90E4()
{
  v1 = v0[12];
  v2 = [objc_opt_self() systemPhotoLibraryURL];
  sub_22FCC65A4();

  v3 = sub_22FA90184(v1);
  v0[14] = v3;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_22FBD91D8;

  return sub_22FAFCE24(v3, (v0 + 2));
}

uint64_t sub_22FBD91D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  v5 = *(v3 + 104);
  if (v1)
  {
    v6 = sub_22FBD9578;
  }

  else
  {
    v6 = sub_22FBD9328;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FBD9328()
{
  v1 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  sub_22FA3A7C4((v0 + 2));

  return MEMORY[0x2822009F8](sub_22FBD93AC, v1, 0);
}

uint64_t sub_22FBD93AC()
{
  v1 = *(v0 + 72);
  *(v0 + 144) = [*(*(*(*(v0 + 128) + 112) + 120) + 112) isReadyForAnalysis];

  return MEMORY[0x2822009F8](sub_22FBD9430, v1, 0);
}

uint64_t sub_22FBD9430(uint64_t a1)
{
  if (*(v1 + 144) == 1)
  {
    v2 = *(v1 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_22FCD1F90;
    *(v3 + 32) = v2;
  }

  else
  {
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22FA28000, v4, v5, "Skipping all tasks to run: system photo library not ready for analysis", v6, 2u);
      MEMORY[0x23190A000](v6, -1, -1);
    }

    v3 = MEMORY[0x277D84F90];
  }

  v7 = *(v1 + 8);

  return v7(v3);
}

uint64_t sub_22FBD9578()
{
  v1 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  sub_22FA3A7C4((v0 + 2));

  return MEMORY[0x2822009F8](sub_22FBD95F8, v1, 0);
}

uint64_t sub_22FBD95F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FBD965C(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_22FCC8684();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v2[19] = *(v4 + 64);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBD9724, v1, 0);
}

uint64_t sub_22FBD9724()
{
  v1 = *(v0[15] + 112);
  v2 = *(*(v1 + 120) + 112);
  v0[21] = v2;
  v3 = *(v1 + 112);
  v0[22] = v3;
  v4 = v2;
  v5 = v3;
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_22FBD97DC;

  return sub_22FBDA370();
}

uint64_t sub_22FBD97DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v5 = *(v3 + 128);
  if (v1)
  {
    v6 = sub_22FBD9D68;
  }

  else
  {
    v6 = sub_22FBD9910;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FBD9910(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 192);
  if (v3 >> 62)
  {
    result = sub_22FCC92C4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v28 = *(v2 + 192) + 32;
  v31 = *(v2 + 144);
  v32 = v3 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F90];
  v29 = OBJC_IVAR____TtC13PhotoAnalysis23MusicActivityTaskSource_logger;
  v30 = *(v2 + 128);
  v33 = result;
  do
  {
    v38 = v6;
    v37 = v5;
    if (v32)
    {
      v7 = MEMORY[0x231908810](v5, *(v2 + 192));
    }

    else
    {
      v7 = *(v28 + 8 * v5);
      swift_unknownObjectRetain();
    }

    v8 = *(v2 + 168);
    v9 = *(v2 + 160);
    v10 = *(v2 + 136);
    v11 = *(v2 + 120);
    v36 = *(v2 + 176);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = sub_22FCC9904();
    v14 = v13;
    *(v2 + 96) = 0;
    *(v2 + 104) = 0xE000000000000000;
    *(v2 + 112) = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8E50, &qword_22FCDC408);
    sub_22FCC94A4();
    v34 = *(v2 + 104);
    v35 = *(v2 + 96);
    [v7 periodicity];
    v16 = v15;
    *(v2 + 40) = type metadata accessor for MomentGraphWorker();
    *(v2 + 48) = sub_22FBDAE90(&qword_281480230, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
    *(v2 + 16) = v11;
    (*(v31 + 16))(v9, v30 + v29, v10);
    v17 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v12;
    *(v18 + 24) = v14;
    (*(v31 + 32))(v18 + v17, v9, v10);
    v19 = swift_allocObject();
    v19[2] = v7;
    v19[3] = v8;
    v19[4] = v36;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD76C0, &qword_22FCD2C80);
    v21 = swift_allocObject();
    *(v21 + 16) = v12;
    *(v21 + 24) = v14;
    *(v21 + 32) = v35;
    *(v21 + 40) = v34;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    *(v21 + 48) = 0;
    *(v21 + 80) = 1;
    *(v21 + 72) = v16;
    *(v21 + 88) = 0u;
    *(v21 + 104) = 0u;
    *(v21 + 120) = 0;
    sub_22FA2CF78((v2 + 16), v21 + 144);
    *(v21 + 128) = &unk_22FCDC410;
    *(v21 + 136) = v19;
    *(v21 + 184) = sub_22FBDACC4;
    *(v21 + 192) = v18;
    v22 = v8;
    v23 = v36;
    swift_unknownObjectRetain();

    v6 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_22FAC2350(0, v38[2] + 1, 1, v38);
    }

    v25 = v6[2];
    v24 = v6[3];
    if (v25 >= v24 >> 1)
    {
      v6 = sub_22FAC2350((v24 > 1), v25 + 1, 1, v6);
    }

    v5 = v37 + 1;
    swift_unknownObjectRelease_n();
    *(v2 + 80) = v20;
    *(v2 + 88) = sub_22FA2CF90(&qword_281481680, &qword_27DAD76C0, &qword_22FCD2C80, &unk_22FCD9FA8);
    *(v2 + 56) = v21;
    v6[2] = v25 + 1;
    sub_22FA2CF78((v2 + 56), &v6[5 * v25 + 4]);
  }

  while (v33 != v37 + 1);
LABEL_16:
  v26 = *(v2 + 176);

  v27 = *(v2 + 8);

  return v27(v6);
}

uint64_t sub_22FBD9D68()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

void sub_22FBD9DDC(char a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {

    MEMORY[0x231907FA0](0x6375747320736920, 0xE90000000000006BLL);
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {

    oslog = sub_22FCC8664();
    v5 = sub_22FCC8F24();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_22FA2F600(a2, a3, &v9);
      _os_log_impl(&dword_22FA28000, oslog, v5, "%s is stuck", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23190A000](v7, -1, -1);
      MEMORY[0x23190A000](v6, -1, -1);
    }
  }
}

uint64_t sub_22FBD9F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  return MEMORY[0x2822009F8](sub_22FBD9F80, 0, 0);
}

uint64_t sub_22FBD9F80()
{
  if ([v0[20] shouldRunForLibrary:v0[21] graphManager:v0[22]])
  {
    v1 = v0[22];
    v3 = v0[19];
    v2 = v0[20];
    v4 = v0[18];
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v0[14] = sub_22FBDAE1C;
    v0[15] = v5;
    v6 = MEMORY[0x277D85DD0];
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22FB59114;
    v0[13] = &block_descriptor_31;
    v7 = _Block_copy(v0 + 10);
    v0[23] = v7;

    v0[2] = v0;
    v0[3] = sub_22FBDA188;
    v8 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD78D8, &qword_22FCDC420);
    v0[10] = v6;
    v0[11] = 1107296256;
    v0[12] = sub_22FBD89D0;
    v0[13] = &block_descriptor_17_1;
    v0[14] = v8;
    [v2 runWithGraphManager:v1 progressBlock:v7 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22FBDA188()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_22FBDA2FC;
  }

  else
  {
    v2 = sub_22FBDA298;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FBDA298()
{
  _Block_release(*(v0 + 184));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FBDA2FC(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();
  _Block_release(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_22FBDA390()
{
  *(v0 + 24) = [objc_allocWithZone(sub_22FCC6AF4()) init];
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22FBDA440;

  return MEMORY[0x28219BA30]();
}

uint64_t sub_22FBDA440(char a1)
{
  v4 = *v2;
  *(v4 + 40) = v1;

  v5 = *(v4 + 16);
  if (v1)
  {
    v6 = sub_22FBDA7E8;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v6 = sub_22FBDA580;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FBDA580(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8EF4();
  v5 = os_log_type_enabled(v3, v4);
  if (v2 == 1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22FA28000, v3, v4, "Device is eligibile to use Music catalog", v6, 2u);
      MEMORY[0x23190A000](v6, -1, -1);
    }

    v7 = *(v1 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_22FCDC350;
    *(v8 + 32) = [objc_allocWithZone(PHAMusicForTopicPrefetchJob) init];
    *(v8 + 40) = [objc_allocWithZone(PHAMusicForYouCacheJob) init];
    *(v8 + 48) = [objc_allocWithZone(PHAMusicForArtistCacheJob) init];
    *(v8 + 56) = [objc_allocWithZone(PHAMusicForMomentCacheJob) init];
    *(v8 + 64) = [objc_allocWithZone(PHAMusicForTimeBackfillCacheJob) init];
    *(v8 + 72) = [objc_allocWithZone(PHAMusicForTimeFrontfillCacheJob) init];
    *(v8 + 80) = [objc_allocWithZone(PHAMusicPruneCacheSourcesJob) init];
    *(v8 + 88) = [objc_allocWithZone(PHAMusicCacheMusicKitConsistencyJob) init];
    *(v8 + 96) = [objc_allocWithZone(PHAMusicEvictDisplayMetadataCacheJob) init];
    v3 = v7;
  }

  else
  {
    v9 = *(v1 + 24);
    if (v5)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22FA28000, v3, v4, "Device is not eligibile to use Music catalog", v10, 2u);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    v8 = MEMORY[0x277D84F90];
  }

  v11 = *(v1 + 8);

  return v11(v8);
}

uint64_t sub_22FBDA7E8()
{
  v1 = v0[5];
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8EF4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[5];
  v7 = v0[3];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22FA28000, v3, v4, "Attempt to determine eligibility to use Music catalog failed with error: %@", v8, 0xCu);
    sub_22FA3A56C(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];
  v13 = MEMORY[0x277D84F90];

  return v12(v13);
}

uint64_t sub_22FBDA95C()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis23MusicActivityTaskSource_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for MusicActivityTaskSource(uint64_t a1)
{
  result = qword_28147F288;
  if (!qword_28147F288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FBDAA28(uint64_t a1)
{
  result = sub_22FCC8684();
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

uint64_t sub_22FBDAB0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22FCC8684();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicActivityTaskSource(0);
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22FCC8674();
  result = (*(v3 + 32))(v7 + OBJC_IVAR____TtC13PhotoAnalysis23MusicActivityTaskSource_logger, v6, v2);
  *a1 = v7;
  return result;
}

uint64_t sub_22FBDAC2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA52F04;

  return sub_22FBD8F40(a1);
}

void sub_22FBDACC4(char a1)
{
  sub_22FCC8684();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  sub_22FBD9DDC(a1, v3, v4);
}

uint64_t sub_22FBDAD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C030;

  return sub_22FBD9F58(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_22FBDAE1C(BOOL *a1)
{
  result = (*(v1 + 16))();
  if (a1)
  {
    *a1 = (result & 1) == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22FBDAE90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22FBDAF00(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    v3 = sub_22FCC89C4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_22FBDAF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 176) = a5;
  *(v7 + 184) = v6;
  *(v7 + 160) = a3;
  *(v7 + 168) = a4;
  *(v7 + 152) = a2;
  *(v7 + 144) = a6;
  *(v7 + 136) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  *(v7 + 192) = swift_task_alloc();
  v8 = sub_22FCC8684();
  *(v7 + 200) = v8;
  *(v7 + 208) = *(v8 - 8);
  *(v7 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBDB09C, 0, 0);
}

uint64_t sub_22FBDB09C()
{
  v25 = v0;
  v23 = 0xD000000000000013;
  v24 = 0x800000022FCE36C0;
  MEMORY[0x231907FA0](0x6B726F576E757220, 0xEA00000000007265);
  *(v0 + 224) = 0xD000000000000013;
  *(v0 + 232) = 0x800000022FCE36C0;
  sub_22FCC8674();

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8EF4();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 200);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_22FA2F600(0xD000000000000013, 0x800000022FCE36C0, &v23);
    _os_log_impl(&dword_22FA28000, v1, v2, "Calling %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  v11 = *(v0 + 160);
  v22 = *(v0 + 168);
  v12 = *(v0 + 152);
  v13 = *(v0 + 144);
  v14 = *(v0 + 136);
  v15 = *(v9 + 120);
  v23 = *(v9 + 112);
  v24 = v15;

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v12, v11);
  v16 = v23;
  v17 = v24;
  sub_22FA2D328(v14, v0 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = 0xD000000000000013;
  *(v18 + 24) = 0x800000022FCE36C0;
  v19 = swift_allocObject();
  v19[2] = v22;
  v19[3] = v10;
  v19[4] = v13;
  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD76C0, &qword_22FCD2C80);
  v20 = swift_allocObject();
  *(v0 + 248) = v20;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0;
  *(v20 + 16) = 0xD000000000000013;
  *(v20 + 24) = 0x800000022FCE36C0;
  *(v20 + 32) = v16;
  *(v20 + 40) = v17;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0;
  *(v20 + 88) = 0u;
  *(v20 + 104) = 0u;
  *(v20 + 120) = 0;
  sub_22FA2CF78((v0 + 16), v20 + 144);
  *(v20 + 128) = &unk_22FCDCA50;
  *(v20 + 136) = v19;
  *(v20 + 184) = sub_22FC12758;
  *(v20 + 192) = v18;
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](sub_22FBDB3B4, v9, 0);
}

uint64_t sub_22FBDB3DC()
{
  v1 = v0[31];
  v2 = v0[32];
  v0[10] = v0[30];
  v0[11] = sub_22FA2CF90(&qword_281481680, &qword_27DAD76C0, &qword_22FCD2C80, &unk_22FCD9FA8);
  v0[7] = v1;

  return MEMORY[0x2822009F8](sub_22FBDB494, v2, 0);
}

uint64_t sub_22FBDB494()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 192);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 56, v0 + 96);
  v5 = sub_22FC11568(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 96), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB22A48(0, 0, v3, &unk_22FCDCA58, v6);
  *(v0 + 264) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v8 = swift_allocObject();
  *(v0 + 272) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + 40);
  *(v8 + 32) = *(v2 + 32);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 280) = v10;
  *v10 = v0;
  v10[1] = sub_22FBDB68C;
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  v13 = *(v0 + 152);
  v14 = *(v0 + 160);

  return sub_22FBE5228(v10, v11, v12, v7, v8, v13, v14);
}

uint64_t sub_22FBDB68C()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 256);
  if (v0)
  {
    v4 = sub_22FBDB840;
  }

  else
  {
    v4 = sub_22FBDB7B8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FBDB7B8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2822009F8](sub_22FC127B4, 0, 0);
}

uint64_t sub_22FBDB840()
{

  return MEMORY[0x2822009F8](sub_22FC127B8, 0, 0);
}

uint64_t sub_22FBDB8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 176) = a5;
  *(v7 + 184) = v6;
  *(v7 + 160) = a3;
  *(v7 + 168) = a4;
  *(v7 + 152) = a2;
  *(v7 + 144) = a6;
  *(v7 + 136) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  *(v7 + 192) = swift_task_alloc();
  v8 = sub_22FCC8684();
  *(v7 + 200) = v8;
  *(v7 + 208) = *(v8 - 8);
  *(v7 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBDB9C8, 0, 0);
}

uint64_t sub_22FBDB9C8()
{
  v25 = v0;
  v23 = 0xD000000000000012;
  v24 = 0x800000022FCE3760;
  MEMORY[0x231907FA0](0x6B726F576E757220, 0xEA00000000007265);
  *(v0 + 224) = 0xD000000000000012;
  *(v0 + 232) = 0x800000022FCE3760;
  sub_22FCC8674();

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8EF4();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 200);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE3760, &v23);
    _os_log_impl(&dword_22FA28000, v1, v2, "Calling %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  v11 = *(v0 + 160);
  v22 = *(v0 + 168);
  v12 = *(v0 + 152);
  v13 = *(v0 + 144);
  v14 = *(v0 + 136);
  v15 = *(v9 + 120);
  v23 = *(v9 + 112);
  v24 = v15;

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v12, v11);
  v16 = v23;
  v17 = v24;
  sub_22FA2D328(v14, v0 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = 0xD000000000000012;
  *(v18 + 24) = 0x800000022FCE3760;
  v19 = swift_allocObject();
  v19[2] = v22;
  v19[3] = v10;
  v19[4] = v13;
  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD76C0, &qword_22FCD2C80);
  v20 = swift_allocObject();
  *(v0 + 248) = v20;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0;
  *(v20 + 16) = 0xD000000000000012;
  *(v20 + 24) = 0x800000022FCE3760;
  *(v20 + 32) = v16;
  *(v20 + 40) = v17;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0;
  *(v20 + 88) = 0u;
  *(v20 + 104) = 0u;
  *(v20 + 120) = 0;
  sub_22FA2CF78((v0 + 16), v20 + 144);
  *(v20 + 128) = &unk_22FCDC980;
  *(v20 + 136) = v19;
  *(v20 + 184) = sub_22FC12500;
  *(v20 + 192) = v18;
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](sub_22FBDBCE0, v9, 0);
}

uint64_t sub_22FBDBD08()
{
  v1 = v0[31];
  v2 = v0[32];
  v0[10] = v0[30];
  v0[11] = sub_22FA2CF90(&qword_281481680, &qword_27DAD76C0, &qword_22FCD2C80, &unk_22FCD9FA8);
  v0[7] = v1;

  return MEMORY[0x2822009F8](sub_22FBDBDC0, v2, 0);
}

uint64_t sub_22FBDBDC0()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 192);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 56, v0 + 96);
  v5 = sub_22FC11568(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 96), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB22A48(0, 0, v3, &unk_22FCDC988, v6);
  *(v0 + 264) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v8 = swift_allocObject();
  *(v0 + 272) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + 40);
  *(v8 + 32) = *(v2 + 32);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 280) = v10;
  *v10 = v0;
  v10[1] = sub_22FBDBFB8;
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  v13 = *(v0 + 152);
  v14 = *(v0 + 160);

  return sub_22FBE5228(v10, v11, v12, v7, v8, v13, v14);
}

uint64_t sub_22FBDBFB8()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 256);
  if (v0)
  {
    v4 = sub_22FBDC1E8;
  }

  else
  {
    v4 = sub_22FBDC0E4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FBDC0E4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2822009F8](sub_22FBDC16C, 0, 0);
}

uint64_t sub_22FBDC16C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FBDC1E8()
{

  return MEMORY[0x2822009F8](sub_22FBDC268, 0, 0);
}

uint64_t sub_22FBDC268()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FBDC2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 176) = a5;
  *(v7 + 184) = v6;
  *(v7 + 160) = a3;
  *(v7 + 168) = a4;
  *(v7 + 152) = a2;
  *(v7 + 144) = a6;
  *(v7 + 136) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  *(v7 + 192) = swift_task_alloc();
  v8 = sub_22FCC8684();
  *(v7 + 200) = v8;
  *(v7 + 208) = *(v8 - 8);
  *(v7 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBDC3F4, 0, 0);
}

uint64_t sub_22FBDC3F4()
{
  v25 = v0;
  v23 = 0xD000000000000019;
  v24 = 0x800000022FCDC480;
  MEMORY[0x231907FA0](0x6B726F576E757220, 0xEA00000000007265);
  *(v0 + 224) = 0xD000000000000019;
  *(v0 + 232) = 0x800000022FCDC480;
  sub_22FCC8674();

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8EF4();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 200);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_22FA2F600(0xD000000000000019, 0x800000022FCDC480, &v23);
    _os_log_impl(&dword_22FA28000, v1, v2, "Calling %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  v11 = *(v0 + 160);
  v22 = *(v0 + 168);
  v12 = *(v0 + 152);
  v13 = *(v0 + 144);
  v14 = *(v0 + 136);
  v15 = *(v9 + 120);
  v23 = *(v9 + 112);
  v24 = v15;

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v12, v11);
  v16 = v23;
  v17 = v24;
  sub_22FA2D328(v14, v0 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = 0xD000000000000019;
  *(v18 + 24) = 0x800000022FCDC480;
  v19 = swift_allocObject();
  v19[2] = v22;
  v19[3] = v10;
  v19[4] = v13;
  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD76C0, &qword_22FCD2C80);
  v20 = swift_allocObject();
  *(v0 + 248) = v20;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0;
  *(v20 + 16) = 0xD000000000000019;
  *(v20 + 24) = 0x800000022FCDC480;
  *(v20 + 32) = v16;
  *(v20 + 40) = v17;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0;
  *(v20 + 88) = 0u;
  *(v20 + 104) = 0u;
  *(v20 + 120) = 0;
  sub_22FA2CF78((v0 + 16), v20 + 144);
  *(v20 + 128) = &unk_22FCDC678;
  *(v20 + 136) = v19;
  *(v20 + 184) = sub_22FC1167C;
  *(v20 + 192) = v18;
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](sub_22FBDC70C, v9, 0);
}

uint64_t sub_22FBDC734()
{
  v1 = v0[31];
  v2 = v0[32];
  v0[10] = v0[30];
  v0[11] = sub_22FA2CF90(&qword_281481680, &qword_27DAD76C0, &qword_22FCD2C80, &unk_22FCD9FA8);
  v0[7] = v1;

  return MEMORY[0x2822009F8](sub_22FBDC7EC, v2, 0);
}

uint64_t sub_22FBDC7EC()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 192);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 56, v0 + 96);
  v5 = sub_22FC11568(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 96), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB22A48(0, 0, v3, &unk_22FCDC680, v6);
  *(v0 + 264) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v8 = swift_allocObject();
  *(v0 + 272) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + 40);
  *(v8 + 32) = *(v2 + 32);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 280) = v10;
  *v10 = v0;
  v10[1] = sub_22FBDB68C;
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  v13 = *(v0 + 152);
  v14 = *(v0 + 160);

  return sub_22FBE5228(v10, v11, v12, v7, v8, v13, v14);
}

uint64_t sub_22FBDC9E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v23 - v7;
  v9 = sub_22FCC6794();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v23 - v16;
  v18 = *(*v0 + 168);
  swift_beginAccess();
  sub_22FA4FAA4(v0 + v18, v8, &qword_27DAD8730, &qword_22FCD1B20);
  v19 = v10[6];
  if (v19(v8, 1, v9) == 1)
  {
    return sub_22FA2B420(v8, &qword_27DAD8730, &qword_22FCD1B20);
  }

  v24 = v10[4];
  v24(v17, v8, v9);
  v21 = *(*v0 + 176);
  swift_beginAccess();
  sub_22FA4FAA4(v0 + v21, v4, &qword_27DAD8730, &qword_22FCD1B20);
  if (v19(v4, 1, v9) == 1)
  {
    sub_22FCC6784();
    if (v19(v4, 1, v9) != 1)
    {
      sub_22FA2B420(v4, &qword_27DAD8730, &qword_22FCD1B20);
    }
  }

  else
  {
    v24(v13, v4, v9);
  }

  sub_22FCC66D4();
  v22 = v10[1];
  v22(v13, v9);
  return (v22)(v17, v9);
}

uint64_t sub_22FBDCCEC(__int128 *a1, char a2, uint64_t a3)
{
  *(v3 + qword_281488018) = 0;
  *(v3 + qword_281488010) = 0;
  *(v3 + qword_281488020) = 0;
  *(v3 + qword_281488028) = 0;
  *(v3 + qword_281488030) = 0;
  *(v3 + *(*v3 + 152)) = 1;
  *(v3 + *(*v3 + 160)) = 0;
  v7 = *(*v3 + 168);
  v8 = sub_22FCC6794();
  v9 = *(*(v8 - 8) + 56);
  v9(v3 + v7, 1, 1, v8);
  v9(v3 + *(*v3 + 176), 1, 1, v8);
  *(v3 + *(*v3 + 184)) = 0;
  *(v3 + *(*v3 + 192)) = 0;
  sub_22FA2CF78(a1, v3 + 16);
  v10 = qword_281488008;
  v11 = sub_22FCC8684();
  (*(*(v11 - 8) + 32))(v3 + v10, a3, v11);
  *(v3 + qword_281488000) = a2;
  return v3;
}

uint64_t sub_22FBDCED0(__int128 *a1, char a2, uint64_t a3)
{
  *(v3 + qword_281488018) = 0;
  *(v3 + qword_281488010) = 0;
  *(v3 + qword_281488020) = 0;
  *(v3 + qword_281488028) = 0;
  *(v3 + qword_281488030) = 0;
  v7 = (v3 + *(*v3 + 152));
  *v7 = 0;
  v7[1] = 0;
  *(v3 + *(*v3 + 160)) = 0;
  v8 = *(*v3 + 168);
  v9 = sub_22FCC6794();
  v10 = *(*(v9 - 8) + 56);
  v10(v3 + v8, 1, 1, v9);
  v10(v3 + *(*v3 + 176), 1, 1, v9);
  *(v3 + *(*v3 + 184)) = 0;
  *(v3 + *(*v3 + 192)) = 0;
  sub_22FA2CF78(a1, v3 + 16);
  v11 = qword_281488008;
  v12 = sub_22FCC8684();
  (*(*(v12 - 8) + 32))(v3 + v11, a3, v12);
  *(v3 + qword_281488000) = a2;
  return v3;
}

uint64_t sub_22FBDD0B4(__int128 *a1, char a2, uint64_t a3)
{
  *(v3 + qword_281488018) = 0;
  *(v3 + qword_281488010) = 0;
  *(v3 + qword_281488020) = 0;
  *(v3 + qword_281488028) = 0;
  *(v3 + qword_281488030) = 0;
  *(v3 + *(*v3 + 152)) = xmmword_22FCDC430;
  *(v3 + *(*v3 + 160)) = 0;
  v7 = *(*v3 + 168);
  v8 = sub_22FCC6794();
  v9 = *(*(v8 - 8) + 56);
  v9(v3 + v7, 1, 1, v8);
  v9(v3 + *(*v3 + 176), 1, 1, v8);
  *(v3 + *(*v3 + 184)) = 0;
  *(v3 + *(*v3 + 192)) = 0;
  sub_22FA2CF78(a1, v3 + 16);
  v10 = qword_281488008;
  v11 = sub_22FCC8684();
  (*(*(v11 - 8) + 32))(v3 + v10, a3, v11);
  *(v3 + qword_281488000) = a2;
  return v3;
}

uint64_t sub_22FBDD29C(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBDD338, 0, 0);
}

uint64_t sub_22FBDD338()
{
  v72 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = sub_22FCC6794();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = *(*v1 + 176);
  swift_beginAccess();
  sub_22FA2F4C8(v2, v1 + v6);
  swift_endAccess();
  sub_22FBDC9E4();
  v8 = sub_22FC3B88C(v7);
  v10 = v9;
  v11 = qword_281488030;
  LODWORD(v2) = *(v1 + qword_281488030);

  if (v2 != 1)
  {

    v20 = sub_22FCC8664();
    v21 = sub_22FCC8F34();
    if (!os_log_type_enabled(v20, v21))
    {

      goto LABEL_27;
    }

    log = v20;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    p_isa = v23;
    *v22 = 136446978;
    v24 = sub_22FA310A0();
    v68 = v11;
    v26 = sub_22FA2F600(v24, v25, &p_isa);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v27 = sub_22FA2F600(v8, v10, &p_isa);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2082;
    v28 = *(v1 + v68);

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v40 = 0xE800000000000000;
        v29 = 0x74754F64656D6954;
        goto LABEL_23;
      }

      if (v28 != 4)
      {
        v40 = 0xE90000000000006ELL;
        v29 = 0x6F69747065637845;
        goto LABEL_23;
      }

      v29 = 0x656C6C65636E6143;
    }

    else
    {
      if (!v28)
      {
        v40 = 0xE700000000000000;
        v29 = 0x6E776F6E6B6E55;
        goto LABEL_23;
      }

      if (v28 != 1)
      {
        v40 = 0xE600000000000000;
        v29 = 0x64656C696146;
        goto LABEL_23;
      }

      v29 = 0x6564656563637553;
    }

    v40 = 0xE900000000000064;
LABEL_23:
    v41 = v0[15];
    v42 = sub_22FA2F600(v29, v40, &p_isa);

    *(v22 + 24) = v42;
    *(v22 + 32) = 2080;
    if (*(v41 + *(*v41 + 160)))
    {
      swift_getErrorValue();
      v43 = v0[10];
      v44 = v0[11];
      v45 = *(v44 - 8);
      v46 = swift_task_alloc();
      (*(v45 + 16))(v46, v43, v44);
      v47 = sub_22FCC97D4();
      v49 = v48;
      (*(v45 + 8))(v46, v44);
    }

    else
    {
      v49 = 0xE800000000000000;
      v47 = 0x726F727265206F6ELL;
    }

    v50 = sub_22FA2F600(v47, v49, &p_isa);

    *(v22 + 34) = v50;
    _os_log_impl(&dword_22FA28000, log, v21, "%{public}s failed in %{public}s: %{public}s (%s)", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v23, -1, -1);
    MEMORY[0x23190A000](v22, -1, -1);

    goto LABEL_27;
  }

  v12 = sub_22FCC8664();
  v13 = sub_22FCC8F34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    loga = swift_slowAlloc();
    p_isa = &loga->isa;
    *v14 = 136446466;
    v15 = sub_22FA310A0();
    v17 = v16;

    v18 = sub_22FA2F600(v15, v17, &p_isa);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = sub_22FA2F600(v8, v10, &p_isa);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_22FA28000, v12, v13, "%{public}s completed in %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](loga, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  else
  {
  }

  v30 = *(v0[15] + qword_281488028);
  if (v30)
  {

    v31 = sub_22FCC8664();
    v32 = sub_22FCC8F34();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      logb = swift_slowAlloc();
      v69 = swift_slowAlloc();
      p_isa = v69;
      *v33 = 136446466;
      v34 = sub_22FA310A0();
      v36 = v35;

      v37 = sub_22FA2F600(v34, v36, &p_isa);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2114;
      v38 = *(v30 + 16);
      *(v33 + 14) = v38;
      logb->isa = v38;
      v39 = v38;
      _os_log_impl(&dword_22FA28000, v31, v32, "New incremental token for %{public}s: %{public}@", v33, 0x16u);
      sub_22FA2B420(logb, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](logb, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x23190A000](v69, -1, -1);
      MEMORY[0x23190A000](v33, -1, -1);
    }

    else
    {
    }
  }

LABEL_27:
  v51 = v0[15];
  v52 = v51[5];
  v53 = v51[6];
  __swift_project_boxed_opaque_existential_1(v51 + 2, v52);
  if ((*(v53 + 96))(v52, v53))
  {
    v54 = v0[15];
    v55 = v51[5];
    v56 = v51[6];
    __swift_project_boxed_opaque_existential_1(v51 + 2, v55);
    (*(v56 + 32))(v55, v56);
    v57 = v0[5];
    v58 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v57);
    v0[17] = (*(v58 + 56))(v57, v58);
    v59 = v51[5];
    v70 = v51[6];
    __swift_project_boxed_opaque_existential_1(v51 + 2, v59);
    sub_22FBDC9E4();
    v60 = *(v54 + *(*v54 + 160));
    v0[18] = v60;
    v0[19] = *(v54 + qword_281488028);
    v61 = v60;

    v62 = swift_task_alloc();
    v0[20] = v62;
    *v62 = v0;
    v62[1] = sub_22FC127C8;
    v74 = v59;
    v75 = v70;

    JUMPOUT(0x22FC37E04);
  }

  v63 = v0[1];

  return v63();
}

uint64_t sub_22FBDDCE4(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBDDD80, 0, 0);
}

uint64_t sub_22FBDDD80()
{
  v72 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = sub_22FCC6794();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = *(*v1 + 176);
  swift_beginAccess();
  sub_22FA2F4C8(v2, v1 + v6);
  swift_endAccess();
  sub_22FBDC9E4();
  v8 = sub_22FC3B88C(v7);
  v10 = v9;
  v11 = qword_281488030;
  LODWORD(v2) = *(v1 + qword_281488030);

  if (v2 != 1)
  {

    v20 = sub_22FCC8664();
    v21 = sub_22FCC8F34();
    if (!os_log_type_enabled(v20, v21))
    {

      goto LABEL_27;
    }

    log = v20;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    p_isa = v23;
    *v22 = 136446978;
    v24 = sub_22FA310A0();
    v68 = v11;
    v26 = sub_22FA2F600(v24, v25, &p_isa);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v27 = sub_22FA2F600(v8, v10, &p_isa);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2082;
    v28 = *(v1 + v68);

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v40 = 0xE800000000000000;
        v29 = 0x74754F64656D6954;
        goto LABEL_23;
      }

      if (v28 != 4)
      {
        v40 = 0xE90000000000006ELL;
        v29 = 0x6F69747065637845;
        goto LABEL_23;
      }

      v29 = 0x656C6C65636E6143;
    }

    else
    {
      if (!v28)
      {
        v40 = 0xE700000000000000;
        v29 = 0x6E776F6E6B6E55;
        goto LABEL_23;
      }

      if (v28 != 1)
      {
        v40 = 0xE600000000000000;
        v29 = 0x64656C696146;
        goto LABEL_23;
      }

      v29 = 0x6564656563637553;
    }

    v40 = 0xE900000000000064;
LABEL_23:
    v41 = v0[15];
    v42 = sub_22FA2F600(v29, v40, &p_isa);

    *(v22 + 24) = v42;
    *(v22 + 32) = 2080;
    if (*(v41 + *(*v41 + 160)))
    {
      swift_getErrorValue();
      v43 = v0[10];
      v44 = v0[11];
      v45 = *(v44 - 8);
      v46 = swift_task_alloc();
      (*(v45 + 16))(v46, v43, v44);
      v47 = sub_22FCC97D4();
      v49 = v48;
      (*(v45 + 8))(v46, v44);
    }

    else
    {
      v49 = 0xE800000000000000;
      v47 = 0x726F727265206F6ELL;
    }

    v50 = sub_22FA2F600(v47, v49, &p_isa);

    *(v22 + 34) = v50;
    _os_log_impl(&dword_22FA28000, log, v21, "%{public}s failed in %{public}s: %{public}s (%s)", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v23, -1, -1);
    MEMORY[0x23190A000](v22, -1, -1);

    goto LABEL_27;
  }

  v12 = sub_22FCC8664();
  v13 = sub_22FCC8F34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    loga = swift_slowAlloc();
    p_isa = &loga->isa;
    *v14 = 136446466;
    v15 = sub_22FA310A0();
    v17 = v16;

    v18 = sub_22FA2F600(v15, v17, &p_isa);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = sub_22FA2F600(v8, v10, &p_isa);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_22FA28000, v12, v13, "%{public}s completed in %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](loga, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  else
  {
  }

  v30 = *(v0[15] + qword_281488028);
  if (v30)
  {

    v31 = sub_22FCC8664();
    v32 = sub_22FCC8F34();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      logb = swift_slowAlloc();
      v69 = swift_slowAlloc();
      p_isa = v69;
      *v33 = 136446466;
      v34 = sub_22FA310A0();
      v36 = v35;

      v37 = sub_22FA2F600(v34, v36, &p_isa);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2114;
      v38 = *(v30 + 16);
      *(v33 + 14) = v38;
      logb->isa = v38;
      v39 = v38;
      _os_log_impl(&dword_22FA28000, v31, v32, "New incremental token for %{public}s: %{public}@", v33, 0x16u);
      sub_22FA2B420(logb, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](logb, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x23190A000](v69, -1, -1);
      MEMORY[0x23190A000](v33, -1, -1);
    }

    else
    {
    }
  }

LABEL_27:
  v51 = v0[15];
  v52 = v51[5];
  v53 = v51[6];
  __swift_project_boxed_opaque_existential_1(v51 + 2, v52);
  if ((*(v53 + 96))(v52, v53))
  {
    v54 = v0[15];
    v55 = v51[5];
    v56 = v51[6];
    __swift_project_boxed_opaque_existential_1(v51 + 2, v55);
    (*(v56 + 32))(v55, v56);
    v57 = v0[5];
    v58 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v57);
    v0[17] = (*(v58 + 56))(v57, v58);
    v59 = v51[5];
    v70 = v51[6];
    __swift_project_boxed_opaque_existential_1(v51 + 2, v59);
    sub_22FBDC9E4();
    v60 = *(v54 + *(*v54 + 160));
    v0[18] = v60;
    v0[19] = *(v54 + qword_281488028);
    v61 = v60;

    v62 = swift_task_alloc();
    v0[20] = v62;
    *v62 = v0;
    v62[1] = sub_22FBDE72C;
    v74 = v59;
    v75 = v70;

    JUMPOUT(0x22FC37E04);
  }

  v63 = v0[1];

  return v63();
}

uint64_t sub_22FBDE72C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_22FBDE8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 67) = a6;
  *(v8 + 152) = a4;
  *(v8 + 160) = a5;
  v9 = sub_22FCC8CF4();
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBDE96C, 0, 0);
}

uint64_t sub_22FBDE96C()
{
  v54 = v0;
  if ((*(v0 + 152))(0.0))
  {
    v1 = *(v0 + 168);
    if (*(v0 + 67) != 1 || v1 == 0)
    {

      v3 = sub_22FCC8664();
      v4 = sub_22FCC8F34();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v53 = v6;
        *v5 = 136446210;

        v7 = sub_22FA310A0();
        v9 = v8;

        v10 = sub_22FA2F600(v7, v9, &v53);

        *(v5 + 4) = v10;
        _os_log_impl(&dword_22FA28000, v3, v4, "Starting %{public}s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x23190A000](v6, -1, -1);
        MEMORY[0x23190A000](v5, -1, -1);
      }

      else
      {
      }

      v38 = *(v0 + 176);
      v39 = v38[5];
      v40 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v39);
      v51 = (*(v40 + 128) + **(v40 + 128));
      v41 = swift_task_alloc();
      *(v0 + 224) = v41;
      *v41 = v0;
      v41[1] = sub_22FBDF43C;
      v42 = *(v0 + 152);
      v43 = *(v0 + 160);

      return v51(v0 + 65, v42, v43, v39, v40);
    }

    else
    {
      v23 = v1;

      v24 = sub_22FCC8664();
      v25 = sub_22FCC8F34();

      if (os_log_type_enabled(v24, v25))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v53 = v28;
        *v27 = 136446467;

        v29 = sub_22FA310A0();
        v31 = v30;

        v32 = sub_22FA2F600(v29, v31, &v53);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2081;
        v33 = [v23 description];
        v34 = sub_22FCC8A84();
        v36 = v35;

        v37 = sub_22FA2F600(v34, v36, &v53);

        *(v27 + 14) = v37;
        _os_log_impl(&dword_22FA28000, v24, v25, "Starting %{public}s with incremental change %{private}s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v28, -1, -1);
        MEMORY[0x23190A000](v27, -1, -1);
      }

      else
      {
      }

      v44 = *(v0 + 176);
      v45 = v44[5];
      v46 = v44[6];
      __swift_project_boxed_opaque_existential_1(v44 + 2, v45);
      v52 = (*(v46 + 200) + **(v46 + 200));
      v47 = swift_task_alloc();
      *(v0 + 208) = v47;
      *v47 = v0;
      v47[1] = sub_22FBDEF94;
      v48 = *(v0 + 152);
      v49 = *(v0 + 160);

      return v52(v0 + 66, v23, v48, v49, v45, v46);
    }
  }

  else
  {
    *(*(v0 + 176) + qword_281488030) = 4;
    v11 = *(v0 + 176);
    sub_22FAE11BC();
    v12 = swift_allocError();
    v14 = v13;
    v50 = *(v11 + 40);
    v15 = *(v11 + 40);
    v16 = __swift_project_boxed_opaque_existential_1((v11 + 16), v15);
    *(v14 + 24) = v50;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
    *(v14 + 48) = 1;
    v18 = *(v0 + 176);
    v19 = *(*v18 + 160);
    v20 = *(v18 + v19);
    *(v18 + v19) = v12;

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_22FBDEF94()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_22FBDF21C;
  }

  else
  {
    v2 = sub_22FBDF0A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FBDF0A8()
{
  v1 = *(v0 + 176);

  *(v1 + *(*v1 + 152)) = 0;
  v2 = *(v0 + 176);
  v3 = (*(v0 + 152))(1.0) & 1;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 4;
  }

  *(v2 + qword_281488030) = v4;
  if (!v3)
  {
    v5 = *(v0 + 176);
    sub_22FAE11BC();
    v6 = swift_allocError();
    v8 = v7;
    v17 = *(v5 + 40);
    v9 = *(v5 + 40);
    v10 = __swift_project_boxed_opaque_existential_1((v5 + 16), v9);
    *(v8 + 24) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v10, v9);
    *(v8 + 48) = 1;
    v12 = *(v0 + 176);
    v13 = *(*v12 + 160);
    v14 = *(v12 + v13);
    *(v12 + v13) = v6;
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_22FBDF21C()
{
  v1 = *(v0 + 216);
  *(v0 + 128) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  if (swift_dynamicCast())
  {
    v3 = (v0 + 16);
    if (*(v0 + 64) == 1)
    {
      __swift_destroy_boxed_opaque_existential_0(v3);
      v4 = (v0 + 128);
LABEL_7:

      *(*(v0 + 176) + qword_281488030) = 4;
      goto LABEL_12;
    }

    sub_22FC114A0(v3);
  }

  v4 = (v0 + 136);

  *(v0 + 136) = v1;
  v5 = v1;
  if (swift_dynamicCast())
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    goto LABEL_7;
  }

  *(v0 + 144) = v1;
  v6 = v1;
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  if (*(v0 + 120))
  {
    sub_22FC114A0(v0 + 72);
LABEL_11:
    v7 = *(v0 + 176);

    *(v7 + qword_281488030) = 2;
    goto LABEL_12;
  }

  v13 = *(v0 + 176);

  *(v13 + qword_281488030) = 5;
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

LABEL_12:
  v8 = *(v0 + 176);
  v9 = *(*v8 + 160);
  v10 = *(v8 + v9);
  *(v8 + v9) = v1;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22FBDF43C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_22FBDF6C0;
  }

  else
  {
    v2 = sub_22FBDF550;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FBDF550()
{
  *(*(v0 + 176) + *(**(v0 + 176) + 152)) = 0;
  v1 = *(v0 + 176);
  v2 = (*(v0 + 152))(1.0) & 1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 4;
  }

  *(v1 + qword_281488030) = v3;
  if (!v2)
  {
    v4 = *(v0 + 176);
    sub_22FAE11BC();
    v5 = swift_allocError();
    v7 = v6;
    v16 = *(v4 + 40);
    v8 = *(v4 + 40);
    v9 = __swift_project_boxed_opaque_existential_1((v4 + 16), v8);
    *(v7 + 24) = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
    *(v7 + 48) = 1;
    v11 = *(v0 + 176);
    v12 = *(*v11 + 160);
    v13 = *(v11 + v12);
    *(v11 + v12) = v5;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22FBDF6C0()
{
  v1 = *(v0 + 232);
  *(v0 + 128) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  if (swift_dynamicCast())
  {
    v3 = (v0 + 16);
    if (*(v0 + 64) == 1)
    {
      __swift_destroy_boxed_opaque_existential_0(v3);
      v4 = (v0 + 128);
LABEL_7:

      *(*(v0 + 176) + qword_281488030) = 4;
      goto LABEL_12;
    }

    sub_22FC114A0(v3);
  }

  v4 = (v0 + 136);

  *(v0 + 136) = v1;
  v5 = v1;
  if (swift_dynamicCast())
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    goto LABEL_7;
  }

  *(v0 + 144) = v1;
  v6 = v1;
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  if (*(v0 + 120))
  {
    sub_22FC114A0(v0 + 72);
LABEL_11:
    v7 = *(v0 + 176);

    *(v7 + qword_281488030) = 2;
    goto LABEL_12;
  }

  v13 = *(v0 + 176);

  *(v13 + qword_281488030) = 5;
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

LABEL_12:
  v8 = *(v0 + 176);
  v9 = *(*v8 + 160);
  v10 = *(v8 + v9);
  *(v8 + v9) = v1;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22FBDF8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 65) = a6;
  *(v8 + 184) = a4;
  *(v8 + 192) = a5;
  v9 = sub_22FCC8CF4();
  *(v8 + 216) = v9;
  *(v8 + 224) = *(v9 - 8);
  *(v8 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBDF9A0, 0, 0);
}

uint64_t sub_22FBDF9A0()
{
  v54 = v0;
  if ((*(v0 + 184))(0.0))
  {
    v1 = *(v0 + 200);
    if (*(v0 + 65) != 1 || v1 == 0)
    {

      v3 = sub_22FCC8664();
      v4 = sub_22FCC8F34();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v53 = v6;
        *v5 = 136446210;

        v7 = sub_22FA310A0();
        v9 = v8;

        v10 = sub_22FA2F600(v7, v9, &v53);

        *(v5 + 4) = v10;
        _os_log_impl(&dword_22FA28000, v3, v4, "Starting %{public}s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x23190A000](v6, -1, -1);
        MEMORY[0x23190A000](v5, -1, -1);
      }

      else
      {
      }

      v38 = *(v0 + 208);
      v39 = v38[5];
      v40 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v39);
      v51 = (*(v40 + 128) + **(v40 + 128));
      v41 = swift_task_alloc();
      *(v0 + 256) = v41;
      *v41 = v0;
      v41[1] = sub_22FBE0260;
      v42 = *(v0 + 184);
      v43 = *(v0 + 192);

      return v51(v0 + 128, v42, v43, v39, v40);
    }

    else
    {
      v23 = v1;

      v24 = sub_22FCC8664();
      v25 = sub_22FCC8F34();

      if (os_log_type_enabled(v24, v25))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v53 = v28;
        *v27 = 136446467;

        v29 = sub_22FA310A0();
        v31 = v30;

        v32 = sub_22FA2F600(v29, v31, &v53);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2081;
        v33 = [v23 description];
        v34 = sub_22FCC8A84();
        v36 = v35;

        v37 = sub_22FA2F600(v34, v36, &v53);

        *(v27 + 14) = v37;
        _os_log_impl(&dword_22FA28000, v24, v25, "Starting %{public}s with incremental change %{private}s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v28, -1, -1);
        MEMORY[0x23190A000](v27, -1, -1);
      }

      else
      {
      }

      v44 = *(v0 + 208);
      v45 = v44[5];
      v46 = v44[6];
      __swift_project_boxed_opaque_existential_1(v44 + 2, v45);
      v52 = (*(v46 + 200) + **(v46 + 200));
      v47 = swift_task_alloc();
      *(v0 + 240) = v47;
      *v47 = v0;
      v47[1] = sub_22FBDFFC8;
      v48 = *(v0 + 184);
      v49 = *(v0 + 192);

      return v52(v0 + 144, v23, v48, v49, v45, v46);
    }
  }

  else
  {
    *(*(v0 + 208) + qword_281488030) = 4;
    v11 = *(v0 + 208);
    sub_22FAE11BC();
    v12 = swift_allocError();
    v14 = v13;
    v50 = *(v11 + 40);
    v15 = *(v11 + 40);
    v16 = __swift_project_boxed_opaque_existential_1((v11 + 16), v15);
    *(v14 + 24) = v50;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
    *(v14 + 48) = 1;
    v18 = *(v0 + 208);
    v19 = *(*v18 + 160);
    v20 = *(v18 + v19);
    *(v18 + v19) = v12;

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_22FBDFFC8()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_22FC127A0;
  }

  else
  {
    v2 = sub_22FBE00DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FBE00DC()
{
  v1 = *(v0 + 208);

  *(v1 + *(*v1 + 152)) = *(v0 + 144);

  v3 = *(v0 + 208);
  v4 = (*(v0 + 184))(v2, 1.0) & 1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  *(v3 + qword_281488030) = v5;
  if (!v4)
  {
    v6 = *(v0 + 208);
    sub_22FAE11BC();
    v7 = swift_allocError();
    v9 = v8;
    v18 = *(v6 + 40);
    v10 = *(v6 + 40);
    v11 = __swift_project_boxed_opaque_existential_1((v6 + 16), v10);
    *(v9 + 24) = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
    *(v9 + 48) = 1;
    v13 = *(v0 + 208);
    v14 = *(*v13 + 160);
    v15 = *(v13 + v14);
    *(v13 + v14) = v7;
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22FBE0260()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_22FC127B0;
  }

  else
  {
    v2 = sub_22FBE0374;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FBE0374()
{
  *(*(v0 + 208) + *(**(v0 + 208) + 152)) = *(v0 + 128);

  v2 = *(v0 + 208);
  v3 = (*(v0 + 184))(v1, 1.0) & 1;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 4;
  }

  *(v2 + qword_281488030) = v4;
  if (!v3)
  {
    v5 = *(v0 + 208);
    sub_22FAE11BC();
    v6 = swift_allocError();
    v8 = v7;
    v17 = *(v5 + 40);
    v9 = *(v5 + 40);
    v10 = __swift_project_boxed_opaque_existential_1((v5 + 16), v9);
    *(v8 + 24) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v10, v9);
    *(v8 + 48) = 1;
    v12 = *(v0 + 208);
    v13 = *(*v12 + 160);
    v14 = *(v12 + v13);
    *(v12 + v13) = v6;
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_22FBE04F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = a7;
  *(v8 + 192) = a8;
  *(v8 + 65) = a6;
  *(v8 + 168) = a4;
  *(v8 + 176) = a5;
  v9 = sub_22FCC8CF4();
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBE05BC, 0, 0);
}

uint64_t sub_22FBE05BC()
{
  v54 = v0;
  if ((*(v0 + 168))(0.0))
  {
    v1 = *(v0 + 184);
    if (*(v0 + 65) != 1 || v1 == 0)
    {

      v3 = sub_22FCC8664();
      v4 = sub_22FCC8F34();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v53 = v6;
        *v5 = 136446210;

        v7 = sub_22FA310A0();
        v9 = v8;

        v10 = sub_22FA2F600(v7, v9, &v53);

        *(v5 + 4) = v10;
        _os_log_impl(&dword_22FA28000, v3, v4, "Starting %{public}s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x23190A000](v6, -1, -1);
        MEMORY[0x23190A000](v5, -1, -1);
      }

      else
      {
      }

      v38 = *(v0 + 192);
      v39 = v38[5];
      v40 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v39);
      v51 = (*(v40 + 128) + **(v40 + 128));
      v41 = swift_task_alloc();
      *(v0 + 240) = v41;
      *v41 = v0;
      v41[1] = sub_22FBE0E78;
      v42 = *(v0 + 168);
      v43 = *(v0 + 176);

      return v51(v0 + 128, v42, v43, v39, v40);
    }

    else
    {
      v23 = v1;

      v24 = sub_22FCC8664();
      v25 = sub_22FCC8F34();

      if (os_log_type_enabled(v24, v25))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v53 = v28;
        *v27 = 136446467;

        v29 = sub_22FA310A0();
        v31 = v30;

        v32 = sub_22FA2F600(v29, v31, &v53);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2081;
        v33 = [v23 description];
        v34 = sub_22FCC8A84();
        v36 = v35;

        v37 = sub_22FA2F600(v34, v36, &v53);

        *(v27 + 14) = v37;
        _os_log_impl(&dword_22FA28000, v24, v25, "Starting %{public}s with incremental change %{private}s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v28, -1, -1);
        MEMORY[0x23190A000](v27, -1, -1);
      }

      else
      {
      }

      v44 = *(v0 + 192);
      v45 = v44[5];
      v46 = v44[6];
      __swift_project_boxed_opaque_existential_1(v44 + 2, v45);
      v52 = (*(v46 + 200) + **(v46 + 200));
      v47 = swift_task_alloc();
      *(v0 + 224) = v47;
      *v47 = v0;
      v47[1] = sub_22FBE0BE4;
      v48 = *(v0 + 168);
      v49 = *(v0 + 176);

      return v52(v0 + 160, v23, v48, v49, v45, v46);
    }
  }

  else
  {
    *(*(v0 + 192) + qword_281488030) = 4;
    v11 = *(v0 + 192);
    sub_22FAE11BC();
    v12 = swift_allocError();
    v14 = v13;
    v50 = *(v11 + 40);
    v15 = *(v11 + 40);
    v16 = __swift_project_boxed_opaque_existential_1((v11 + 16), v15);
    *(v14 + 24) = v50;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
    *(v14 + 48) = 1;
    v18 = *(v0 + 192);
    v19 = *(*v18 + 160);
    v20 = *(v18 + v19);
    *(v18 + v19) = v12;

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_22FBE0BE4()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_22FC1279C;
  }

  else
  {
    v2 = sub_22FBE0CF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FBE0CF8()
{
  v1 = *(v0 + 192);

  *(v1 + *(*v1 + 152)) = *(v0 + 160);

  v3 = *(v0 + 192);
  v4 = (*(v0 + 168))(v2, 1.0) & 1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  *(v3 + qword_281488030) = v5;
  if (!v4)
  {
    v6 = *(v0 + 192);
    sub_22FAE11BC();
    v7 = swift_allocError();
    v9 = v8;
    v18 = *(v6 + 40);
    v10 = *(v6 + 40);
    v11 = __swift_project_boxed_opaque_existential_1((v6 + 16), v10);
    *(v9 + 24) = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
    *(v9 + 48) = 1;
    v13 = *(v0 + 192);
    v14 = *(*v13 + 160);
    v15 = *(v13 + v14);
    *(v13 + v14) = v7;
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22FBE0E78()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_22FC127AC;
  }

  else
  {
    v2 = sub_22FBE0F8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FBE0F8C()
{
  *(*(v0 + 192) + *(**(v0 + 192) + 152)) = *(v0 + 128);

  v2 = *(v0 + 192);
  v3 = (*(v0 + 168))(v1, 1.0) & 1;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 4;
  }

  *(v2 + qword_281488030) = v4;
  if (!v3)
  {
    v5 = *(v0 + 192);
    sub_22FAE11BC();
    v6 = swift_allocError();
    v8 = v7;
    v17 = *(v5 + 40);
    v9 = *(v5 + 40);
    v10 = __swift_project_boxed_opaque_existential_1((v5 + 16), v9);
    *(v8 + 24) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v10, v9);
    *(v8 + 48) = 1;
    v12 = *(v0 + 192);
    v13 = *(*v12 + 160);
    v14 = *(v12 + v13);
    *(v12 + v13) = v6;
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_22FBE1108()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_22FC1279C;
  }

  else
  {
    v2 = sub_22FC127A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FBE121C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_22FC127AC;
  }

  else
  {
    v2 = sub_22FC127D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FBE1330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = a7;
  *(v8 + 192) = a8;
  *(v8 + 65) = a6;
  *(v8 + 168) = a4;
  *(v8 + 176) = a5;
  v9 = sub_22FCC8CF4();
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBE13F8, 0, 0);
}

uint64_t sub_22FBE13F8()
{
  v53 = v0;
  if ((*(v0 + 168))(0.0))
  {
    v1 = *(v0 + 184);
    if (*(v0 + 65) != 1 || v1 == 0)
    {

      v3 = sub_22FCC8664();
      v4 = sub_22FCC8F34();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v52 = v6;
        *v5 = 136446210;

        v7 = sub_22FA310A0();
        v9 = v8;

        v10 = sub_22FA2F600(v7, v9, &v52);

        *(v5 + 4) = v10;
        _os_log_impl(&dword_22FA28000, v3, v4, "Starting %{public}s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x23190A000](v6, -1, -1);
        MEMORY[0x23190A000](v5, -1, -1);
      }

      else
      {
      }

      v37 = *(v0 + 192);
      v38 = v37[5];
      v39 = v37[6];
      __swift_project_boxed_opaque_existential_1(v37 + 2, v38);
      v50 = (*(v39 + 128) + **(v39 + 128));
      v40 = swift_task_alloc();
      *(v0 + 240) = v40;
      *v40 = v0;
      v40[1] = sub_22FBE1ED4;
      v41 = *(v0 + 168);
      v42 = *(v0 + 176);

      return v50(v0 + 128, v41, v42, v38, v39);
    }

    else
    {
      v23 = v1;

      v24 = sub_22FCC8664();
      v25 = sub_22FCC8F34();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v52 = v27;
        *v26 = 136446467;

        v28 = sub_22FA310A0();
        v30 = v29;

        v31 = sub_22FA2F600(v28, v30, &v52);

        *(v26 + 4) = v31;
        *(v26 + 12) = 2081;
        v32 = [v23 description];
        v33 = sub_22FCC8A84();
        v35 = v34;

        v36 = sub_22FA2F600(v33, v35, &v52);

        *(v26 + 14) = v36;
        _os_log_impl(&dword_22FA28000, v24, v25, "Starting %{public}s with incremental change %{private}s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v27, -1, -1);
        MEMORY[0x23190A000](v26, -1, -1);
      }

      else
      {
      }

      v43 = *(v0 + 192);
      v44 = v43[5];
      v45 = v43[6];
      __swift_project_boxed_opaque_existential_1(v43 + 2, v44);
      v51 = (*(v45 + 200) + **(v45 + 200));
      v46 = swift_task_alloc();
      *(v0 + 224) = v46;
      *v46 = v0;
      v46[1] = sub_22FBE1A20;
      v47 = *(v0 + 168);
      v48 = *(v0 + 176);

      return v51(v0 + 160, v23, v47, v48, v44, v45);
    }
  }

  else
  {
    *(*(v0 + 192) + qword_281488030) = 4;
    v11 = *(v0 + 192);
    sub_22FAE11BC();
    v12 = swift_allocError();
    v14 = v13;
    v49 = *(v11 + 40);
    v15 = *(v11 + 40);
    v16 = __swift_project_boxed_opaque_existential_1((v11 + 16), v15);
    *(v14 + 24) = v49;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
    *(v14 + 48) = 1;
    v18 = *(v0 + 192);
    v19 = *(*v18 + 160);
    v20 = *(v18 + v19);
    *(v18 + v19) = v12;

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_22FBE1A20()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_22FBE1CB4;
  }

  else
  {
    v2 = sub_22FBE1B34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FBE1B34()
{
  v1 = *(v0 + 192);

  *(v1 + *(*v1 + 152)) = *(v0 + 160);

  v3 = *(v0 + 192);
  v4 = (*(v0 + 168))(v2, 1.0) & 1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  *(v3 + qword_281488030) = v5;
  if (!v4)
  {
    v6 = *(v0 + 192);
    sub_22FAE11BC();
    v7 = swift_allocError();
    v9 = v8;
    v18 = *(v6 + 40);
    v10 = *(v6 + 40);
    v11 = __swift_project_boxed_opaque_existential_1((v6 + 16), v10);
    *(v9 + 24) = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
    *(v9 + 48) = 1;
    v13 = *(v0 + 192);
    v14 = *(*v13 + 160);
    v15 = *(v13 + v14);
    *(v13 + v14) = v7;
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22FBE1CB4()
{
  v1 = *(v0 + 232);
  *(v0 + 136) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  if (swift_dynamicCast())
  {
    v3 = (v0 + 16);
    if (*(v0 + 64) == 1)
    {
      __swift_destroy_boxed_opaque_existential_0(v3);
      v4 = (v0 + 136);
LABEL_7:

      *(*(v0 + 192) + qword_281488030) = 4;
      goto LABEL_12;
    }

    sub_22FC114A0(v3);
  }

  v4 = (v0 + 144);

  *(v0 + 144) = v1;
  v5 = v1;
  if (swift_dynamicCast())
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    goto LABEL_7;
  }

  *(v0 + 152) = v1;
  v6 = v1;
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  if (*(v0 + 120))
  {
    sub_22FC114A0(v0 + 72);
LABEL_11:
    v7 = *(v0 + 192);

    *(v7 + qword_281488030) = 2;
    goto LABEL_12;
  }

  v13 = *(v0 + 192);

  *(v13 + qword_281488030) = 5;
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

LABEL_12:
  v8 = *(v0 + 192);
  v9 = *(*v8 + 160);
  v10 = *(v8 + v9);
  *(v8 + v9) = v1;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22FBE1ED4()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_22FBE1FE8;
  }

  else
  {
    v2 = sub_22FBE0F8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FBE1FE8()
{
  v1 = *(v0 + 248);
  *(v0 + 136) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  if (swift_dynamicCast())
  {
    v3 = (v0 + 16);
    if (*(v0 + 64) == 1)
    {
      __swift_destroy_boxed_opaque_existential_0(v3);
      v4 = (v0 + 136);
LABEL_7:

      *(*(v0 + 192) + qword_281488030) = 4;
      goto LABEL_12;
    }

    sub_22FC114A0(v3);
  }

  v4 = (v0 + 144);

  *(v0 + 144) = v1;
  v5 = v1;
  if (swift_dynamicCast())
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    goto LABEL_7;
  }

  *(v0 + 152) = v1;
  v6 = v1;
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  if (*(v0 + 120))
  {
    sub_22FC114A0(v0 + 72);
LABEL_11:
    v7 = *(v0 + 192);

    *(v7 + qword_281488030) = 2;
    goto LABEL_12;
  }

  v13 = *(v0 + 192);

  *(v13 + qword_281488030) = 5;
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

LABEL_12:
  v8 = *(v0 + 192);
  v9 = *(*v8 + 160);
  v10 = *(v8 + v9);
  *(v8 + v9) = v1;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22FBE2200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 65) = a6;
  *(v8 + 184) = a4;
  *(v8 + 192) = a5;
  v9 = sub_22FCC8CF4();
  *(v8 + 216) = v9;
  *(v8 + 224) = *(v9 - 8);
  *(v8 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBE22C8, 0, 0);
}

uint64_t sub_22FBE22C8()
{
  v53 = v0;
  if ((*(v0 + 184))(0.0))
  {
    v1 = *(v0 + 200);
    if (*(v0 + 65) != 1 || v1 == 0)
    {

      v3 = sub_22FCC8664();
      v4 = sub_22FCC8F34();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v52 = v6;
        *v5 = 136446210;

        v7 = sub_22FA310A0();
        v9 = v8;

        v10 = sub_22FA2F600(v7, v9, &v52);

        *(v5 + 4) = v10;
        _os_log_impl(&dword_22FA28000, v3, v4, "Starting %{public}s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x23190A000](v6, -1, -1);
        MEMORY[0x23190A000](v5, -1, -1);
      }

      else
      {
      }

      v37 = *(v0 + 208);
      v38 = v37[5];
      v39 = v37[6];
      __swift_project_boxed_opaque_existential_1(v37 + 2, v38);
      v50 = (*(v39 + 128) + **(v39 + 128));
      v40 = swift_task_alloc();
      *(v0 + 256) = v40;
      *v40 = v0;
      v40[1] = sub_22FBE2DA8;
      v41 = *(v0 + 184);
      v42 = *(v0 + 192);

      return v50(v0 + 128, v41, v42, v38, v39);
    }

    else
    {
      v23 = v1;

      v24 = sub_22FCC8664();
      v25 = sub_22FCC8F34();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v52 = v27;
        *v26 = 136446467;

        v28 = sub_22FA310A0();
        v30 = v29;

        v31 = sub_22FA2F600(v28, v30, &v52);

        *(v26 + 4) = v31;
        *(v26 + 12) = 2081;
        v32 = [v23 description];
        v33 = sub_22FCC8A84();
        v35 = v34;

        v36 = sub_22FA2F600(v33, v35, &v52);

        *(v26 + 14) = v36;
        _os_log_impl(&dword_22FA28000, v24, v25, "Starting %{public}s with incremental change %{private}s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v27, -1, -1);
        MEMORY[0x23190A000](v26, -1, -1);
      }

      else
      {
      }

      v43 = *(v0 + 208);
      v44 = v43[5];
      v45 = v43[6];
      __swift_project_boxed_opaque_existential_1(v43 + 2, v44);
      v51 = (*(v45 + 200) + **(v45 + 200));
      v46 = swift_task_alloc();
      *(v0 + 240) = v46;
      *v46 = v0;
      v46[1] = sub_22FBE28F0;
      v47 = *(v0 + 184);
      v48 = *(v0 + 192);

      return v51(v0 + 144, v23, v47, v48, v44, v45);
    }
  }

  else
  {
    *(*(v0 + 208) + qword_281488030) = 4;
    v11 = *(v0 + 208);
    sub_22FAE11BC();
    v12 = swift_allocError();
    v14 = v13;
    v49 = *(v11 + 40);
    v15 = *(v11 + 40);
    v16 = __swift_project_boxed_opaque_existential_1((v11 + 16), v15);
    *(v14 + 24) = v49;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
    *(v14 + 48) = 1;
    v18 = *(v0 + 208);
    v19 = *(*v18 + 160);
    v20 = *(v18 + v19);
    *(v18 + v19) = v12;

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_22FBE28F0()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_22FBE2B88;
  }

  else
  {
    v2 = sub_22FBE2A04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FBE2A04()
{
  v1 = *(v0 + 208);

  v2 = (v1 + *(*v1 + 152));
  v3 = *v2;
  v4 = v2[1];
  *v2 = *(v0 + 144);
  v5 = sub_22FADAC14(v3, v4);
  v6 = *(v0 + 208);
  v7 = (*(v0 + 184))(v5, 1.0) & 1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = 4;
  }

  *(v6 + qword_281488030) = v8;
  if (!v7)
  {
    v9 = *(v0 + 208);
    sub_22FAE11BC();
    v10 = swift_allocError();
    v12 = v11;
    v21 = *(v9 + 40);
    v13 = *(v9 + 40);
    v14 = __swift_project_boxed_opaque_existential_1((v9 + 16), v13);
    *(v12 + 24) = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
    *(v12 + 48) = 1;
    v16 = *(v0 + 208);
    v17 = *(*v16 + 160);
    v18 = *(v16 + v17);
    *(v16 + v17) = v10;
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22FBE2B88()
{
  v1 = *(v0 + 248);
  *(v0 + 160) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  if (swift_dynamicCast())
  {
    v3 = (v0 + 16);
    if (*(v0 + 64) == 1)
    {
      __swift_destroy_boxed_opaque_existential_0(v3);
      v4 = (v0 + 160);
LABEL_7:

      *(*(v0 + 208) + qword_281488030) = 4;
      goto LABEL_12;
    }

    sub_22FC114A0(v3);
  }

  v4 = (v0 + 168);

  *(v0 + 168) = v1;
  v5 = v1;
  if (swift_dynamicCast())
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    goto LABEL_7;
  }

  *(v0 + 176) = v1;
  v6 = v1;
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  if (*(v0 + 120))
  {
    sub_22FC114A0(v0 + 72);
LABEL_11:
    v7 = *(v0 + 208);

    *(v7 + qword_281488030) = 2;
    goto LABEL_12;
  }

  v13 = *(v0 + 208);

  *(v13 + qword_281488030) = 5;
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

LABEL_12:
  v8 = *(v0 + 208);
  v9 = *(*v8 + 160);
  v10 = *(v8 + v9);
  *(v8 + v9) = v1;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22FBE2DA8()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_22FBE303C;
  }

  else
  {
    v2 = sub_22FBE2EBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FBE2EBC()
{
  v1 = (*(v0 + 208) + *(**(v0 + 208) + 152));
  v2 = *v1;
  v3 = v1[1];
  *v1 = *(v0 + 128);
  v4 = sub_22FADAC14(v2, v3);
  v5 = *(v0 + 208);
  v6 = (*(v0 + 184))(v4, 1.0) & 1;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = 4;
  }

  *(v5 + qword_281488030) = v7;
  if (!v6)
  {
    v8 = *(v0 + 208);
    sub_22FAE11BC();
    v9 = swift_allocError();
    v11 = v10;
    v20 = *(v8 + 40);
    v12 = *(v8 + 40);
    v13 = __swift_project_boxed_opaque_existential_1((v8 + 16), v12);
    *(v11 + 24) = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    *(v11 + 48) = 1;
    v15 = *(v0 + 208);
    v16 = *(*v15 + 160);
    v17 = *(v15 + v16);
    *(v15 + v16) = v9;
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_22FBE303C()
{
  v1 = *(v0 + 264);
  *(v0 + 160) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  if (swift_dynamicCast())
  {
    v3 = (v0 + 16);
    if (*(v0 + 64) == 1)
    {
      __swift_destroy_boxed_opaque_existential_0(v3);
      v4 = (v0 + 160);
LABEL_7:

      *(*(v0 + 208) + qword_281488030) = 4;
      goto LABEL_12;
    }

    sub_22FC114A0(v3);
  }

  v4 = (v0 + 168);

  *(v0 + 168) = v1;
  v5 = v1;
  if (swift_dynamicCast())
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    goto LABEL_7;
  }

  *(v0 + 176) = v1;
  v6 = v1;
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  if (*(v0 + 120))
  {
    sub_22FC114A0(v0 + 72);
LABEL_11:
    v7 = *(v0 + 208);

    *(v7 + qword_281488030) = 2;
    goto LABEL_12;
  }

  v13 = *(v0 + 208);

  *(v13 + qword_281488030) = 5;
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

LABEL_12:
  v8 = *(v0 + 208);
  v9 = *(*v8 + 160);
  v10 = *(v8 + v9);
  *(v8 + v9) = v1;

  v11 = *(v0 + 8);

  return v11();
}

void sub_22FBE3254()
{
  *(v0 + qword_281488018) = 1;
  if (*(v0 + qword_281488010))
  {

    sub_22FCC8D54();
  }

  *(v0 + qword_281488030) = 4;
  sub_22FCC8CF4();
  sub_22FC11568(&qword_28147AFC0, 255, MEMORY[0x277D85678], MEMORY[0x277D85680]);
  v1 = swift_allocError();
  sub_22FCC89B4();
  v2 = *(*v0 + 160);
  v3 = *(v0 + v2);
  *(v0 + v2) = v1;
}

uint64_t sub_22FBE3398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22FBE33BC, a4, 0);
}

uint64_t sub_22FBE33E4()
{
  v10 = v0;
  v1 = v0[3];
  v2 = v1[2];
  v0[7] = v2;
  if (v2)
  {
    v0[8] = 0;
    v4 = v1[4];
    v3 = v1[5];
    v0[9] = v3;

    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_22FBE3500;

    return sub_22FB273B0(v4, v3);
  }

  else
  {
    v7 = v0[4];
    v9 = 0;
    v7(&v9);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22FBE3500()
{

  return MEMORY[0x2822009F8](sub_22FBE3618, 0, 0);
}

uint64_t sub_22FBE3618()
{
  v10 = v0;
  v1 = v0[8] + 1;
  if (v1 == v0[7])
  {
    v2 = v0[4];
    v9 = 0;
    v2(&v9);
    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[8] = v1;
    v5 = v0[3] + 16 * v1;
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    v0[9] = v6;

    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_22FBE3500;

    return sub_22FB273B0(v7, v6);
  }
}

uint64_t sub_22FBE373C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22FBE3760, a4, 0);
}

uint64_t sub_22FBE3788()
{
  v10 = v0;
  v1 = v0[3];
  v2 = v1[2];
  v0[7] = v2;
  if (v2)
  {
    v0[8] = 0;
    v4 = v1[4];
    v3 = v1[5];
    v0[9] = v3;

    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_22FBE38A4;

    return sub_22FB273B0(v4, v3);
  }

  else
  {
    v7 = v0[4];
    v9 = 0;
    v7(&v9);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22FBE38A4()
{

  return MEMORY[0x2822009F8](sub_22FBE39BC, 0, 0);
}

uint64_t sub_22FBE39BC()
{
  v10 = v0;
  v1 = v0[8] + 1;
  if (v1 == v0[7])
  {
    v2 = v0[4];
    v9 = 0;
    v2(&v9);
    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[8] = v1;
    v5 = v0[3] + 16 * v1;
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    v0[9] = v6;

    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_22FBE38A4;

    return sub_22FB273B0(v7, v6);
  }
}

uint64_t sub_22FBE3AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22FBE3B04, a4, 0);
}

uint64_t sub_22FBE3B2C()
{
  v10 = v0;
  v1 = v0[3];
  v2 = v1[2];
  v0[7] = v2;
  if (v2)
  {
    v0[8] = 0;
    v4 = v1[4];
    v3 = v1[5];
    v0[9] = v3;

    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_22FBE3C48;

    return sub_22FB273B0(v4, v3);
  }

  else
  {
    v7 = v0[4];
    v9 = 0;
    v7(&v9);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22FBE3C48()
{

  return MEMORY[0x2822009F8](sub_22FBE3D60, 0, 0);
}

uint64_t sub_22FBE3D60()
{
  v10 = v0;
  v1 = v0[8] + 1;
  if (v1 == v0[7])
  {
    v2 = v0[4];
    v9 = 0;
    v2(&v9);
    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[8] = v1;
    v5 = v0[3] + 16 * v1;
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    v0[9] = v6;

    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_22FBE3C48;

    return sub_22FB273B0(v7, v6);
  }
}

uint64_t sub_22FBE3E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22FBE3EA8, a4, 0);
}

uint64_t sub_22FBE3ED0()
{
  v10 = v0;
  v1 = v0[3];
  v2 = v1[2];
  v0[7] = v2;
  if (v2)
  {
    v0[8] = 0;
    v4 = v1[4];
    v3 = v1[5];
    v0[9] = v3;

    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_22FBE3FEC;

    return sub_22FB273B0(v4, v3);
  }

  else
  {
    v7 = v0[4];
    v9 = 0;
    v7(&v9);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22FBE3FEC()
{

  return MEMORY[0x2822009F8](sub_22FBE4104, 0, 0);
}

uint64_t sub_22FBE4104()
{
  v10 = v0;
  v1 = v0[8] + 1;
  if (v1 == v0[7])
  {
    v2 = v0[4];
    v9 = 0;
    v2(&v9);
    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[8] = v1;
    v5 = v0[3] + 16 * v1;
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    v0[9] = v6;

    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_22FBE3FEC;

    return sub_22FB273B0(v7, v6);
  }
}

uint64_t sub_22FBE4228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22FBE424C, a4, 0);
}

uint64_t sub_22FBE4274()
{
  v10 = v0;
  v1 = v0[3];
  v2 = v1[2];
  v0[7] = v2;
  if (v2)
  {
    v0[8] = 0;
    v4 = v1[4];
    v3 = v1[5];
    v0[9] = v3;

    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_22FBE4390;

    return sub_22FB273B0(v4, v3);
  }

  else
  {
    v7 = v0[4];
    v9 = 0;
    v7(&v9);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22FBE4390()
{

  return MEMORY[0x2822009F8](sub_22FBE44A8, 0, 0);
}

uint64_t sub_22FBE44A8()
{
  v10 = v0;
  v1 = v0[8] + 1;
  if (v1 == v0[7])
  {
    v2 = v0[4];
    v9 = 0;
    v2(&v9);
    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[8] = v1;
    v5 = v0[3] + 16 * v1;
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    v0[9] = v6;

    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_22FBE4390;

    return sub_22FB273B0(v7, v6);
  }
}

uint64_t sub_22FBE45CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22FBE45F0, a4, 0);
}

uint64_t sub_22FBE4618()
{
  v10 = v0;
  v1 = v0[3];
  v2 = v1[2];
  v0[7] = v2;
  if (v2)
  {
    v0[8] = 0;
    v4 = v1[4];
    v3 = v1[5];
    v0[9] = v3;

    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_22FBE4734;

    return sub_22FB273B0(v4, v3);
  }

  else
  {
    v7 = v0[4];
    v9 = 0;
    v7(&v9);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22FBE4734()
{

  return MEMORY[0x2822009F8](sub_22FBE484C, 0, 0);
}

uint64_t sub_22FBE484C()
{
  v10 = v0;
  v1 = v0[8] + 1;
  if (v1 == v0[7])
  {
    v2 = v0[4];
    v9 = 0;
    v2(&v9);
    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[8] = v1;
    v5 = v0[3] + 16 * v1;
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    v0[9] = v6;

    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_22FBE4734;

    return sub_22FB273B0(v7, v6);
  }
}

uint64_t sub_22FBE4970(char a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22FCC8684();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16[0] = a2;
    v16[1] = a3;

    MEMORY[0x231907FA0](0x6375747320736920, 0xE90000000000006BLL);
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8674();

    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F24();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_22FA2F600(a2, a3, v16);
      _os_log_impl(&dword_22FA28000, v11, v12, "%s is stuck", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23190A000](v14, -1, -1);
      MEMORY[0x23190A000](v13, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_22FBE4BC0(char a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22FCC8684();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16[0] = a2;
    v16[1] = a3;

    MEMORY[0x231907FA0](0x6375747320736920, 0xE90000000000006BLL);
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8674();

    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F24();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_22FA2F600(a2, a3, v16);
      _os_log_impl(&dword_22FA28000, v11, v12, "%s is stuck", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23190A000](v14, -1, -1);
      MEMORY[0x23190A000](v13, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_22FBE4E10(char a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22FCC8684();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16[0] = a2;
    v16[1] = a3;

    MEMORY[0x231907FA0](0x6375747320736920, 0xE90000000000006BLL);
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8674();

    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F24();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_22FA2F600(a2, a3, v16);
      _os_log_impl(&dword_22FA28000, v11, v12, "%s is stuck", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23190A000](v14, -1, -1);
      MEMORY[0x23190A000](v13, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_22FBE5060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22FBE5084, a4, 0);
}

uint64_t sub_22FBE5084()
{
  v1 = *(v0[3] + 136);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22FBB226C;
  v3 = v0[4];
  v4 = v0[2];

  return sub_22FBE7B4C(v4, v3, v1);
}

uint64_t sub_22FBE5144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22FBE5168, a4, 0);
}

uint64_t sub_22FBE5168()
{
  v1 = *(v0[3] + 136);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22FBB0A20;
  v3 = v0[4];
  v4 = v0[2];

  return sub_22FBEF550(v4, v3, v1);
}

uint64_t sub_22FBE5228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[35] = a7;
  v8[36] = v7;
  v8[33] = a5;
  v8[34] = a6;
  v8[31] = a3;
  v8[32] = a4;
  v8[29] = a1;
  v8[30] = a2;
  return MEMORY[0x2822009F8](sub_22FBE5254, v7, 0);
}

uint64_t sub_22FBE5254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = v5;
  v6 = *(v5 + 288);
  v7 = *(v6 + 152);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v10 = *(v5 + 272);
  v11 = *(v5 + 280);
  *(v6 + 152) = v9;
  v12 = sub_22FA2D6F8(v10, v11);
  v14 = v13;
  *(v5 + 296) = v12;
  *(v5 + 304) = v13;
  swift_beginAccess();
  v15 = *(v6 + 144);
  if (!*(v15 + 16))
  {
LABEL_8:
    v22 = *(v5 + 256);
    v21 = *(v5 + 264);
    v24 = *(v5 + 240);
    v23 = *(v5 + 248);
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
    sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
    v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E70, &unk_22FCDC5C0);
    v27[4] = &off_2844AA6C8;
    v25 = swift_allocObject();
    v27[0] = v25;
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = v22;
    v25[5] = v21;
    swift_beginAccess();

    sub_22FA2D8A0(v27, v12, v14);
    swift_endAccess();
    v26 = swift_task_alloc();
    *(v5 + 312) = v26;
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v26 = v5;
    v26[1] = sub_22FBE54FC;
    a2 = *(v5 + 256);
    a1 = *(v5 + 232);
    a5 = MEMORY[0x277D84950];
    a3 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v16 = sub_22FA2DB54(v12, v14);
  if ((v17 & 1) == 0)
  {

    goto LABEL_8;
  }

  sub_22FA2D328(*(v15 + 56) + 40 * v16, v5 + 16);

  sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
  sub_22FC11360();
  swift_allocError();
  *v18 = v12;
  v18[1] = v14;
  swift_willThrow();
  v19 = *(v5 + 8);

  return v19();
}

uint64_t sub_22FBE54FC()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 288);
  if (v0)
  {
    v4 = sub_22FC127C4;
  }

  else
  {
    v4 = sub_22FC127CC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FBE5628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[36] = a6;
  v7[37] = v6;
  v7[34] = a4;
  v7[35] = a5;
  v7[32] = a2;
  v7[33] = a3;
  v7[31] = a1;
  return MEMORY[0x2822009F8](sub_22FBE5654, v6, 0);
}

uint64_t sub_22FBE5654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = v5;
  v6 = *(v5 + 296);
  v7 = *(v6 + 152);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v10 = *(v5 + 280);
  v11 = *(v5 + 288);
  *(v6 + 152) = v9;
  v12 = sub_22FA2D6F8(v10, v11);
  v14 = v13;
  *(v5 + 304) = v12;
  *(v5 + 312) = v13;
  swift_beginAccess();
  v15 = *(v6 + 144);
  if (!*(v15 + 16))
  {
LABEL_8:
    v22 = *(v5 + 264);
    v21 = *(v5 + 272);
    v24 = *(v5 + 248);
    v23 = *(v5 + 256);
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
    sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
    v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F50, &qword_22FCDC9A8);
    v27[4] = &off_2844AA6C8;
    v25 = swift_allocObject();
    v27[0] = v25;
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = v22;
    v25[5] = v21;
    swift_beginAccess();

    sub_22FA2D8A0(v27, v12, v14);
    swift_endAccess();
    v26 = swift_task_alloc();
    *(v5 + 320) = v26;
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v26 = v5;
    v26[1] = sub_22FBE58F8;
    a2 = *(v5 + 264);
    a3 = MEMORY[0x277D837D0];
    a5 = MEMORY[0x277D84950];
    a1 = v5 + 232;

    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v16 = sub_22FA2DB54(v12, v14);
  if ((v17 & 1) == 0)
  {

    goto LABEL_8;
  }

  sub_22FA2D328(*(v15 + 56) + 40 * v16, v5 + 16);

  sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
  sub_22FC11360();
  swift_allocError();
  *v18 = v12;
  v18[1] = v14;
  swift_willThrow();
  v19 = *(v5 + 8);

  return v19();
}

uint64_t sub_22FBE58F8()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 296);
  if (v0)
  {
    v4 = sub_22FBE5AE4;
  }

  else
  {
    v4 = sub_22FBE5A24;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FBE5A24()
{
  v2 = v0[38];
  v1 = v0[39];
  swift_beginAccess();
  sub_22FB0421C(v2, v1, (v0 + 12));
  sub_22FA2B420((v0 + 12), &qword_27DAD8E68, &qword_22FCDC5B8);
  swift_endAccess();

  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_22FBE5AE4()
{
  v2 = v0[38];
  v1 = v0[39];
  swift_beginAccess();
  sub_22FB0421C(v2, v1, (v0 + 7));
  sub_22FA2B420((v0 + 7), &qword_27DAD8E68, &qword_22FCDC5B8);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FBE5BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[35] = a6;
  v7[36] = v6;
  v7[33] = a4;
  v7[34] = a5;
  v7[31] = a2;
  v7[32] = a3;
  v7[30] = a1;
  return MEMORY[0x2822009F8](sub_22FBE5BCC, v6, 0);
}

uint64_t sub_22FBE5BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = v5;
  v6 = *(v5 + 288);
  v7 = *(v6 + 152);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v10 = *(v5 + 272);
  v11 = *(v5 + 280);
  *(v6 + 152) = v9;
  v12 = sub_22FA2D6F8(v10, v11);
  v14 = v13;
  *(v5 + 296) = v12;
  *(v5 + 304) = v13;
  swift_beginAccess();
  v15 = *(v6 + 144);
  if (!*(v15 + 16))
  {
LABEL_8:
    v22 = *(v5 + 256);
    v21 = *(v5 + 264);
    v24 = *(v5 + 240);
    v23 = *(v5 + 248);
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
    sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F68, &unk_22FCDCA00);
    v28[4] = &off_2844AA6C8;
    v25 = swift_allocObject();
    v28[0] = v25;
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = v22;
    v25[5] = v21;
    swift_beginAccess();

    sub_22FA2D8A0(v28, v12, v14);
    swift_endAccess();
    v26 = swift_task_alloc();
    *(v5 + 312) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448, &qword_22FCD2C50);
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v26 = v5;
    v26[1] = sub_22FBE5E84;
    a2 = *(v5 + 256);
    a5 = MEMORY[0x277D84950];
    a1 = v5 + 232;
    a3 = v27;

    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v16 = sub_22FA2DB54(v12, v14);
  if ((v17 & 1) == 0)
  {

    goto LABEL_8;
  }

  sub_22FA2D328(*(v15 + 56) + 40 * v16, v5 + 16);

  sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
  sub_22FC11360();
  swift_allocError();
  *v18 = v12;
  v18[1] = v14;
  swift_willThrow();
  v19 = *(v5 + 8);

  return v19();
}

uint64_t sub_22FBE5E84()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 288);
  if (v0)
  {
    v4 = sub_22FC127C4;
  }

  else
  {
    v4 = sub_22FC127C0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FBE5FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[35] = a6;
  v7[36] = v6;
  v7[33] = a4;
  v7[34] = a5;
  v7[31] = a2;
  v7[32] = a3;
  v7[30] = a1;
  return MEMORY[0x2822009F8](sub_22FBE5FDC, v6, 0);
}

uint64_t sub_22FBE5FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = v5;
  v6 = *(v5 + 288);
  v7 = *(v6 + 152);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v10 = *(v5 + 272);
  v11 = *(v5 + 280);
  *(v6 + 152) = v9;
  v12 = sub_22FA2D6F8(v10, v11);
  v14 = v13;
  *(v5 + 296) = v12;
  *(v5 + 304) = v13;
  swift_beginAccess();
  v15 = *(v6 + 144);
  if (!*(v15 + 16))
  {
LABEL_8:
    v22 = *(v5 + 256);
    v21 = *(v5 + 264);
    v24 = *(v5 + 240);
    v23 = *(v5 + 248);
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
    sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F38, &unk_22FCDC930);
    v28[4] = &off_2844AA6C8;
    v25 = swift_allocObject();
    v28[0] = v25;
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = v22;
    v25[5] = v21;
    swift_beginAccess();

    sub_22FA2D8A0(v28, v12, v14);
    swift_endAccess();
    v26 = swift_task_alloc();
    *(v5 + 312) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8210, &qword_22FCD4FC0);
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v26 = v5;
    v26[1] = sub_22FBE5E84;
    a2 = *(v5 + 256);
    a5 = MEMORY[0x277D84950];
    a1 = v5 + 232;
    a3 = v27;

    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v16 = sub_22FA2DB54(v12, v14);
  if ((v17 & 1) == 0)
  {

    goto LABEL_8;
  }

  sub_22FA2D328(*(v15 + 56) + 40 * v16, v5 + 16);

  sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
  sub_22FC11360();
  swift_allocError();
  *v18 = v12;
  v18[1] = v14;
  swift_willThrow();
  v19 = *(v5 + 8);

  return v19();
}

uint64_t sub_22FBE6294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[35] = a6;
  v7[36] = v6;
  v7[33] = a4;
  v7[34] = a5;
  v7[31] = a2;
  v7[32] = a3;
  v7[30] = a1;
  return MEMORY[0x2822009F8](sub_22FBE62C0, v6, 0);
}

uint64_t sub_22FBE62C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = v5;
  v6 = *(v5 + 288);
  v7 = *(v6 + 152);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v10 = *(v5 + 272);
  v11 = *(v5 + 280);
  *(v6 + 152) = v9;
  v12 = sub_22FA2D6F8(v10, v11);
  v14 = v13;
  *(v5 + 296) = v12;
  *(v5 + 304) = v13;
  swift_beginAccess();
  v15 = *(v6 + 144);
  if (!*(v15 + 16))
  {
LABEL_8:
    v22 = *(v5 + 256);
    v21 = *(v5 + 264);
    v24 = *(v5 + 240);
    v23 = *(v5 + 248);
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
    sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F20, &unk_22FCDC8E0);
    v28[4] = &off_2844AA6C8;
    v25 = swift_allocObject();
    v28[0] = v25;
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = v22;
    v25[5] = v21;
    swift_beginAccess();

    sub_22FA2D8A0(v28, v12, v14);
    swift_endAccess();
    v26 = swift_task_alloc();
    *(v5 + 312) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77F0, &qword_22FCD34E8);
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v26 = v5;
    v26[1] = sub_22FBE5E84;
    a2 = *(v5 + 256);
    a5 = MEMORY[0x277D84950];
    a1 = v5 + 232;
    a3 = v27;

    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v16 = sub_22FA2DB54(v12, v14);
  if ((v17 & 1) == 0)
  {

    goto LABEL_8;
  }

  sub_22FA2D328(*(v15 + 56) + 40 * v16, v5 + 16);

  sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
  sub_22FC11360();
  swift_allocError();
  *v18 = v12;
  v18[1] = v14;
  swift_willThrow();
  v19 = *(v5 + 8);

  return v19();
}

uint64_t sub_22FBE6578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[35] = a6;
  v7[36] = v6;
  v7[33] = a4;
  v7[34] = a5;
  v7[31] = a2;
  v7[32] = a3;
  v7[30] = a1;
  return MEMORY[0x2822009F8](sub_22FBE65A4, v6, 0);
}

uint64_t sub_22FBE65A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = v5;
  v6 = *(v5 + 288);
  v7 = *(v6 + 152);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v10 = *(v5 + 272);
  v11 = *(v5 + 280);
  *(v6 + 152) = v9;
  v12 = sub_22FA2D6F8(v10, v11);
  v14 = v13;
  *(v5 + 296) = v12;
  *(v5 + 304) = v13;
  swift_beginAccess();
  v15 = *(v6 + 144);
  if (!*(v15 + 16))
  {
LABEL_8:
    v22 = *(v5 + 256);
    v21 = *(v5 + 264);
    v24 = *(v5 + 240);
    v23 = *(v5 + 248);
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
    sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F08, &unk_22FCDC890);
    v28[4] = &off_2844AA6C8;
    v25 = swift_allocObject();
    v28[0] = v25;
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = v22;
    v25[5] = v21;
    swift_beginAccess();

    sub_22FA2D8A0(v28, v12, v14);
    swift_endAccess();
    v26 = swift_task_alloc();
    *(v5 + 312) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD86B8, &qword_22FCD71A0);
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v26 = v5;
    v26[1] = sub_22FBE5E84;
    a2 = *(v5 + 256);
    a5 = MEMORY[0x277D84950];
    a1 = v5 + 232;
    a3 = v27;

    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v16 = sub_22FA2DB54(v12, v14);
  if ((v17 & 1) == 0)
  {

    goto LABEL_8;
  }

  sub_22FA2D328(*(v15 + 56) + 40 * v16, v5 + 16);

  sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
  sub_22FC11360();
  swift_allocError();
  *v18 = v12;
  v18[1] = v14;
  swift_willThrow();
  v19 = *(v5 + 8);

  return v19();
}

uint64_t sub_22FBE685C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[35] = a6;
  v7[36] = v6;
  v7[33] = a4;
  v7[34] = a5;
  v7[31] = a2;
  v7[32] = a3;
  v7[30] = a1;
  return MEMORY[0x2822009F8](sub_22FBE6888, v6, 0);
}

uint64_t sub_22FBE6888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = v5;
  v6 = *(v5 + 288);
  v7 = *(v6 + 152);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v10 = *(v5 + 272);
  v11 = *(v5 + 280);
  *(v6 + 152) = v9;
  v12 = sub_22FA2D6F8(v10, v11);
  v14 = v13;
  *(v5 + 296) = v12;
  *(v5 + 304) = v13;
  swift_beginAccess();
  v15 = *(v6 + 144);
  if (!*(v15 + 16))
  {
LABEL_8:
    v22 = *(v5 + 256);
    v21 = *(v5 + 264);
    v24 = *(v5 + 240);
    v23 = *(v5 + 248);
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
    sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EF0, &unk_22FCDC840);
    v28[4] = &off_2844AA6C8;
    v25 = swift_allocObject();
    v28[0] = v25;
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = v22;
    v25[5] = v21;
    swift_beginAccess();

    sub_22FA2D8A0(v28, v12, v14);
    swift_endAccess();
    v26 = swift_task_alloc();
    *(v5 + 312) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD86B0, &qword_22FCD7198);
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v26 = v5;
    v26[1] = sub_22FBE6B40;
    a2 = *(v5 + 256);
    a5 = MEMORY[0x277D84950];
    a1 = v5 + 232;
    a3 = v27;

    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v16 = sub_22FA2DB54(v12, v14);
  if ((v17 & 1) == 0)
  {

    goto LABEL_8;
  }

  sub_22FA2D328(*(v15 + 56) + 40 * v16, v5 + 16);

  sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
  sub_22FC11360();
  swift_allocError();
  *v18 = v12;
  v18[1] = v14;
  swift_willThrow();
  v19 = *(v5 + 8);

  return v19();
}

uint64_t sub_22FBE6B40()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 288);
  if (v0)
  {
    v4 = sub_22FBE6D2C;
  }

  else
  {
    v4 = sub_22FBE6C6C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FBE6C6C()
{
  v2 = v0[37];
  v1 = v0[38];
  swift_beginAccess();
  sub_22FB0421C(v2, v1, (v0 + 12));
  sub_22FA2B420((v0 + 12), &qword_27DAD8E68, &qword_22FCDC5B8);
  swift_endAccess();

  v3 = v0[29];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_22FBE6D2C()
{
  v2 = v0[37];
  v1 = v0[38];
  swift_beginAccess();
  sub_22FB0421C(v2, v1, (v0 + 7));
  sub_22FA2B420((v0 + 7), &qword_27DAD8E68, &qword_22FCDC5B8);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FBE6DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[35] = a6;
  v7[36] = v6;
  v7[33] = a4;
  v7[34] = a5;
  v7[31] = a2;
  v7[32] = a3;
  v7[30] = a1;
  return MEMORY[0x2822009F8](sub_22FBE6E14, v6, 0);
}

uint64_t sub_22FBE6E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = v5;
  v6 = *(v5 + 288);
  v7 = *(v6 + 152);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v10 = *(v5 + 272);
  v11 = *(v5 + 280);
  *(v6 + 152) = v9;
  v12 = sub_22FA2D6F8(v10, v11);
  v14 = v13;
  *(v5 + 296) = v12;
  *(v5 + 304) = v13;
  swift_beginAccess();
  v15 = *(v6 + 144);
  if (!*(v15 + 16))
  {
LABEL_8:
    v22 = *(v5 + 256);
    v21 = *(v5 + 264);
    v24 = *(v5 + 240);
    v23 = *(v5 + 248);
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
    sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8ED8, &unk_22FCDC7F0);
    v28[4] = &off_2844AA6C8;
    v25 = swift_allocObject();
    v28[0] = v25;
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = v22;
    v25[5] = v21;
    swift_beginAccess();

    sub_22FA2D8A0(v28, v12, v14);
    swift_endAccess();
    v26 = swift_task_alloc();
    *(v5 + 312) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD86A8, &qword_22FCDA450);
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v26 = v5;
    v26[1] = sub_22FBE5E84;
    a2 = *(v5 + 256);
    a5 = MEMORY[0x277D84950];
    a1 = v5 + 232;
    a3 = v27;

    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v16 = sub_22FA2DB54(v12, v14);
  if ((v17 & 1) == 0)
  {

    goto LABEL_8;
  }

  sub_22FA2D328(*(v15 + 56) + 40 * v16, v5 + 16);

  sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
  sub_22FC11360();
  swift_allocError();
  *v18 = v12;
  v18[1] = v14;
  swift_willThrow();
  v19 = *(v5 + 8);

  return v19();
}

uint64_t sub_22FBE70CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[35] = a6;
  v7[36] = v6;
  v7[33] = a4;
  v7[34] = a5;
  v7[31] = a2;
  v7[32] = a3;
  v7[30] = a1;
  return MEMORY[0x2822009F8](sub_22FBE70F8, v6, 0);
}

uint64_t sub_22FBE70F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = v5;
  v6 = *(v5 + 288);
  v7 = *(v6 + 152);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v10 = *(v5 + 272);
  v11 = *(v5 + 280);
  *(v6 + 152) = v9;
  v12 = sub_22FA2D6F8(v10, v11);
  v14 = v13;
  *(v5 + 296) = v12;
  *(v5 + 304) = v13;
  swift_beginAccess();
  v15 = *(v6 + 144);
  if (!*(v15 + 16))
  {
LABEL_8:
    v22 = *(v5 + 256);
    v21 = *(v5 + 264);
    v24 = *(v5 + 240);
    v23 = *(v5 + 248);
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
    sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EC8, &unk_22FCDC7A0);
    v28[4] = &off_2844AA6C8;
    v25 = swift_allocObject();
    v28[0] = v25;
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = v22;
    v25[5] = v21;
    swift_beginAccess();

    sub_22FA2D8A0(v28, v12, v14);
    swift_endAccess();
    v26 = swift_task_alloc();
    *(v5 + 312) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD86A0, &qword_22FCD7190);
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v26 = v5;
    v26[1] = sub_22FBE5E84;
    a2 = *(v5 + 256);
    a5 = MEMORY[0x277D84950];
    a1 = v5 + 232;
    a3 = v27;

    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v16 = sub_22FA2DB54(v12, v14);
  if ((v17 & 1) == 0)
  {

    goto LABEL_8;
  }

  sub_22FA2D328(*(v15 + 56) + 40 * v16, v5 + 16);

  sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
  sub_22FC11360();
  swift_allocError();
  *v18 = v12;
  v18[1] = v14;
  swift_willThrow();
  v19 = *(v5 + 8);

  return v19();
}

uint64_t sub_22FBE73B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[35] = a7;
  v8[36] = v7;
  v8[33] = a5;
  v8[34] = a6;
  v8[31] = a3;
  v8[32] = a4;
  v8[29] = a1;
  v8[30] = a2;
  return MEMORY[0x2822009F8](sub_22FBE73DC, v7, 0);
}

uint64_t sub_22FBE73DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = v5;
  v6 = *(v5 + 288);
  v7 = *(v6 + 152);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v10 = *(v5 + 272);
  v11 = *(v5 + 280);
  *(v6 + 152) = v9;
  v12 = sub_22FA2D6F8(v10, v11);
  v14 = v13;
  *(v5 + 296) = v12;
  *(v5 + 304) = v13;
  swift_beginAccess();
  v15 = *(v6 + 144);
  if (!*(v15 + 16))
  {
LABEL_8:
    v22 = *(v5 + 256);
    v21 = *(v5 + 264);
    v24 = *(v5 + 240);
    v23 = *(v5 + 248);
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
    sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
    v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EA0, &qword_22FCDC700);
    v27[4] = &off_2844AA6C8;
    v25 = swift_allocObject();
    v27[0] = v25;
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = v22;
    v25[5] = v21;
    swift_beginAccess();

    sub_22FA2D8A0(v27, v12, v14);
    swift_endAccess();
    v26 = swift_task_alloc();
    *(v5 + 312) = v26;
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v26 = v5;
    v26[1] = sub_22FBE7680;
    a2 = *(v5 + 256);
    a1 = *(v5 + 232);
    a3 = MEMORY[0x277CC9318];
    a5 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v16 = sub_22FA2DB54(v12, v14);
  if ((v17 & 1) == 0)
  {

    goto LABEL_8;
  }

  sub_22FA2D328(*(v15 + 56) + 40 * v16, v5 + 16);

  sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
  sub_22FC11360();
  swift_allocError();
  *v18 = v12;
  v18[1] = v14;
  swift_willThrow();
  v19 = *(v5 + 8);

  return v19();
}

uint64_t sub_22FBE7680()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 288);
  if (v0)
  {
    v4 = sub_22FBE6D2C;
  }

  else
  {
    v4 = sub_22FBE77AC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FBE77AC()
{
  v2 = v0[37];
  v1 = v0[38];
  swift_beginAccess();
  sub_22FB0421C(v2, v1, (v0 + 12));
  sub_22FA2B420((v0 + 12), &qword_27DAD8E68, &qword_22FCDC5B8);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FBE7868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[35] = a6;
  v7[36] = v6;
  v7[33] = a4;
  v7[34] = a5;
  v7[31] = a2;
  v7[32] = a3;
  v7[30] = a1;
  return MEMORY[0x2822009F8](sub_22FBE7894, v6, 0);
}

uint64_t sub_22FBE7894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = v5;
  v6 = *(v5 + 288);
  v7 = *(v6 + 152);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v10 = *(v5 + 272);
  v11 = *(v5 + 280);
  *(v6 + 152) = v9;
  v12 = sub_22FA2D6F8(v10, v11);
  v14 = v13;
  *(v5 + 296) = v12;
  *(v5 + 304) = v13;
  swift_beginAccess();
  v15 = *(v6 + 144);
  if (!*(v15 + 16))
  {
LABEL_8:
    v22 = *(v5 + 256);
    v21 = *(v5 + 264);
    v24 = *(v5 + 240);
    v23 = *(v5 + 248);
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
    sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EB0, &unk_22FCDC750);
    v28[4] = &off_2844AA6C8;
    v25 = swift_allocObject();
    v28[0] = v25;
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = v22;
    v25[5] = v21;
    swift_beginAccess();

    sub_22FA2D8A0(v28, v12, v14);
    swift_endAccess();
    v26 = swift_task_alloc();
    *(v5 + 312) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8698, &qword_22FCDA380);
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v26 = v5;
    v26[1] = sub_22FBE5E84;
    a2 = *(v5 + 256);
    a5 = MEMORY[0x277D84950];
    a1 = v5 + 232;
    a3 = v27;

    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v16 = sub_22FA2DB54(v12, v14);
  if ((v17 & 1) == 0)
  {

    goto LABEL_8;
  }

  sub_22FA2D328(*(v15 + 56) + 40 * v16, v5 + 16);

  sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
  sub_22FC11360();
  swift_allocError();
  *v18 = v12;
  v18[1] = v14;
  swift_willThrow();
  v19 = *(v5 + 8);

  return v19();
}

uint64_t sub_22FBE7B4C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 440) = a3;
  *(v4 + 328) = a2;
  *(v4 + 336) = v3;
  v5 = sub_22FCC8684();
  *(v4 + 344) = v5;
  *(v4 + 352) = *(v5 - 8);
  *(v4 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBE7C10, v3, 0);
}

uint64_t sub_22FBE7C10(uint64_t a1)
{
  v64 = v1;
  sub_22FCC8DA4();
  *(v1 + 368) = 0;
  v2 = *(v1 + 336);
  v3 = *(v2 + 136);
  v4 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v1 + 376) = v3;
  *(v1 + 384) = v4;
  if (*(v3 + v4) != 2)
  {
    v22 = *(v3 + 16);
    v21 = *(v3 + 24);
LABEL_6:
    sub_22FAA1C84();
    swift_allocError();
    *v23 = v22;
    *(v23 + 8) = v21;
    *(v23 + 16) = 0;
    swift_willThrow();

LABEL_25:

    v50 = *(v1 + 8);

    return v50();
  }

  v5 = *(v1 + 328);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = (*(v7 + 48))(v6, v7);
  v10 = v9;
  *(v1 + 392) = v8;
  *(v1 + 400) = v9;
  v11 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  *(v1 + 408) = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v12 = *(v2 + v11);
  if (*(v12 + 16))
  {

    v13 = sub_22FA2DB54(v8, v10);
    if (v14)
    {
      v15 = v13;
      v16 = *(v1 + 328);

      sub_22FA2D328(*(v12 + 56) + 40 * v15, v1 + 16);

      sub_22FA2B420(v1 + 16, &unk_27DAD8720, &qword_22FCD77E0);
      sub_22FAE11BC();
      swift_allocError();
      v18 = v17;
      v60 = *(v5 + 3);
      v19 = __swift_project_boxed_opaque_existential_1(v16, v60);
      *(v18 + 24) = v60;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      (*(*(v60 - 8) + 16))(boxed_opaque_existential_1, v19, v60);
      *(v18 + 48) = 4;
LABEL_24:
      swift_willThrow();
      goto LABEL_25;
    }
  }

  v24 = *(v1 + 440);
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  sub_22FA2B420(v1 + 16, &unk_27DAD8720, &qword_22FCD77E0);
  if (v24)
  {
    if (v24 != 1)
    {
      v25 = swift_task_alloc();
      *(v1 + 416) = v25;
      *v25 = v1;
      v25[1] = sub_22FBE8360;

      return sub_22FB2D328();
    }
  }

  else if (sub_22FB2E34C())
  {
    v27 = *(v1 + 328);

    sub_22FA2D328(v27, v1 + 216);
    v28 = sub_22FCC8664();
    v29 = sub_22FCC8F34();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v63[0] = v31;
      *v30 = 136446210;
      v32 = *(v1 + 240);
      v33 = *(v1 + 248);
      __swift_project_boxed_opaque_existential_1((v1 + 216), v32);
      v34 = (*(v33 + 48))(v32, v33);
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_0((v1 + 216));
      v37 = sub_22FA2F600(v34, v36, v63);

      *(v30 + 4) = v37;
      _os_log_impl(&dword_22FA28000, v28, v29, "On-demand task(s) already running, dropping requested background task '%{public}s'", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x23190A000](v31, -1, -1);
      MEMORY[0x23190A000](v30, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v1 + 216));
    }

    v45 = *(v1 + 328);
    sub_22FAE11BC();
    swift_allocError();
    v47 = v46;
    v61 = *(v5 + 3);
    v48 = __swift_project_boxed_opaque_existential_1(v45, v61);
    *(v47 + 24) = v61;
    v49 = __swift_allocate_boxed_opaque_existential_1(v47);
    (*(*(v61 - 8) + 16))(v49, v48, v61);
    *(v47 + 48) = 2;
    goto LABEL_24;
  }

  v38 = *(v1 + 368);
  sub_22FCC8DA4();
  if (v38)
  {

    goto LABEL_25;
  }

  v39 = *(v1 + 376);
  if (*(v39 + *(v1 + 384)) != 2)
  {

    v22 = *(v39 + 16);
    v21 = *(v39 + 24);
    goto LABEL_6;
  }

  v40 = *(v1 + 328);
  v41 = v40[3];
  v42 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v41);
  (*(v42 + 104))(v41, v42);
  if (*(v1 + 120))
  {
    sub_22FA2CF78((v1 + 96), v1 + 56);
    v43 = *(v1 + 80);
    v44 = *(v1 + 88);
    __swift_project_boxed_opaque_existential_1((v1 + 56), v43);
    (*(v44 + 8))(v43, v44);
    __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  }

  else
  {
    sub_22FA2B420(v1 + 96, &unk_27DAD83A0, &qword_22FCD1AC0);
  }

  v51 = *(v1 + 400);
  v62 = *(v1 + 392);
  v53 = *(v1 + 352);
  v52 = *(v1 + 360);
  v54 = *(v1 + 336);
  v55 = *(v1 + 344);
  v56 = *(v1 + 440);
  sub_22FA2D328(*(v1 + 328), v1 + 136);
  (*(v53 + 16))(v52, v54 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v55);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E78, &qword_22FCDC5D8);
  swift_allocObject();
  v58 = sub_22FBDCCEC((v1 + 136), v56, v52);
  *(v1 + 424) = v58;
  v63[3] = v57;
  v63[4] = sub_22FA2CF90(&qword_2814813E8, &qword_27DAD8E78, &qword_22FCDC5D8, &unk_22FCD3420);
  v63[0] = v58;
  swift_beginAccess();

  sub_22FA2E954(v63, v62, v51);
  swift_endAccess();
  v59 = swift_task_alloc();
  *(v1 + 432) = v59;
  *v59 = v1;
  v59[1] = sub_22FBE8798;

  return sub_22FBF1578(v58);
}

uint64_t sub_22FBE8360()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_22FBE8470, v1, 0);
}

uint64_t sub_22FBE8470(uint64_t a1)
{
  v25 = v1;
  v2 = *(v1 + 368);
  sub_22FCC8DA4();
  if (v2)
  {

LABEL_7:

    v12 = *(v1 + 8);

    return v12();
  }

  v3 = *(v1 + 376);
  if (*(v3 + *(v1 + 384)) != 2)
  {

    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v11 = v10;
    *(v11 + 8) = v9;
    *(v11 + 16) = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v4 = *(v1 + 328);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 104))(v5, v6);
  if (*(v1 + 120))
  {
    sub_22FA2CF78((v1 + 96), v1 + 56);
    v7 = *(v1 + 80);
    v8 = *(v1 + 88);
    __swift_project_boxed_opaque_existential_1((v1 + 56), v7);
    (*(v8 + 8))(v7, v8);
    __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  }

  else
  {
    sub_22FA2B420(v1 + 96, &unk_27DAD83A0, &qword_22FCD1AC0);
  }

  v14 = *(v1 + 400);
  v23 = *(v1 + 392);
  v16 = *(v1 + 352);
  v15 = *(v1 + 360);
  v17 = *(v1 + 336);
  v18 = *(v1 + 344);
  v19 = *(v1 + 440);
  sub_22FA2D328(*(v1 + 328), v1 + 136);
  (*(v16 + 16))(v15, v17 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E78, &qword_22FCDC5D8);
  swift_allocObject();
  v21 = sub_22FBDCCEC((v1 + 136), v19, v15);
  *(v1 + 424) = v21;
  v24[3] = v20;
  v24[4] = sub_22FA2CF90(&qword_2814813E8, &qword_27DAD8E78, &qword_22FCDC5D8, &unk_22FCD3420);
  v24[0] = v21;
  swift_beginAccess();

  sub_22FA2E954(v24, v23, v14);
  swift_endAccess();
  v22 = swift_task_alloc();
  *(v1 + 432) = v22;
  *v22 = v1;
  v22[1] = sub_22FBE8798;

  return sub_22FBF1578(v21);
}