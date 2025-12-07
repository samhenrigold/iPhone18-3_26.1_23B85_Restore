uint64_t sub_22D7BAD88()
{
  if (qword_27DA01A10 != -1)
  {
    swift_once();
  }

  if (qword_27DA0D3A8 && (v1 = [qword_27DA0D3A8 allCities]) != 0)
  {
    v2 = v1;
    sub_22D7BB7F8();
    v3 = sub_22D81B438();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 16);
  v5 = sub_22D7BB18C(v3);

  *v4 = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22D7BAE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_22D756614;

  return sub_22D7BB6D0(a2, a3);
}

unint64_t sub_22D7BAF40()
{
  result = qword_27DA03210;
  if (!qword_27DA03210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03210);
  }

  return result;
}

unint64_t sub_22D7BAF98()
{
  result = qword_27DA03218;
  if (!qword_27DA03218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA024F8, &qword_22D820ED0);
    sub_22D78A554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03218);
  }

  return result;
}

uint64_t sub_22D7BB01C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_22D7BA214();
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return MEMORY[0x28210B618](a1, a2, v6);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22D7BB0F4(uint64_t a1, int a2)
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

uint64_t sub_22D7BB13C(uint64_t result, int a2, int a3)
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

char *sub_22D7BB18C(unint64_t a1)
{
  v38 = sub_22D81A748();
  v2 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A958();
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v6 - 8);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D81A768();
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  if (a1 >> 62)
  {
    v10 = sub_22D81B938();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v41 = MEMORY[0x277D84F90];
  result = sub_22D7E8ACC(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = v41;
    v33 = a1 & 0xC000000000000001;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02700, &qword_22D821770);
    v13 = 0;
    v31 = *MEMORY[0x277CC9110];
    v29 = v10;
    v30 = (v2 + 104);
    while (1)
    {
      v14 = v33 ? MEMORY[0x2318D1F70](v13, a1) : *(a1 + 8 * v13 + 32);
      v15 = v14;
      sub_22D81B228();
      sub_22D81A948();
      (*v30)(v37, v31, v38);
      sub_22D81A778();
      v16 = sub_22D81A048();
      sub_22D81A198();
      result = [v15 alCityId];
      if (!result)
      {
        break;
      }

      v17 = result;
      v18 = [result stringValue];

      v19 = sub_22D81B2C8();
      v21 = v20;

      sub_22D81A398();
      result = [v15 name];
      if (!result)
      {
        goto LABEL_21;
      }

      v22 = result;
      v23 = sub_22D81B2C8();
      v25 = v24;

      v39 = v23;
      v40 = v25;
      sub_22D819FF8();

      v41 = v11;
      v27 = *(v11 + 16);
      v26 = *(v11 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_22D7E8ACC((v26 > 1), v27 + 1, 1);
        v11 = v41;
      }

      ++v13;
      *(v11 + 16) = v27 + 1;
      v28 = (v11 + 24 * v27);
      v28[4] = v19;
      v28[5] = v21;
      v28[6] = v16;
      if (v29 == v13)
      {
        return v11;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22D7BB5C0()
{
  if (qword_27DA01A10 != -1)
  {
    swift_once();
  }

  v1 = qword_27DA0D3A8;
  if (qword_27DA0D3A8 && (v2 = sub_22D81B418(), v3 = [v1 citiesMatchingIdentifiers_], v2, v3))
  {
    sub_22D7BB7F8();
    v4 = sub_22D81B438();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_22D7BB18C(v4);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_22D7BB6D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22D7BB6F0, 0, 0);
}

uint64_t sub_22D7BB6F0()
{
  if (qword_27DA01A10 != -1)
  {
    swift_once();
  }

  v1 = qword_27DA0D3A8;
  if (qword_27DA0D3A8 && (v2 = sub_22D81B2B8(), v3 = [v1 citiesMatchingName_], v2, v3))
  {
    sub_22D7BB7F8();
    v4 = sub_22D81B438();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_22D7BB18C(v4);

  v6 = *(v0 + 8);

  return v6(v5);
}

unint64_t sub_22D7BB7F8()
{
  result = qword_27DA03220;
  if (!qword_27DA03220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA03220);
  }

  return result;
}

uint64_t MobileTimerFeatureFlags.isFeatureEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for MobileTimerFeatureFlags;
  v4[4] = sub_22D76B44C();
  LOBYTE(v4[0]) = v1;
  v2 = sub_22D81AC78();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

const char *MobileTimerFeatureFlags.domain.getter()
{
  if (*v0 >= 2u)
  {
    return "Clock";
  }

  else
  {
    return "MobileTimerFlags";
  }
}

const char *MobileTimerFeatureFlags.feature.getter()
{
  v1 = "LiveActivityAlertingWithTone";
  if (*v0 != 1)
  {
    v1 = "live_activity_banners";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "LiveActivityAlerting";
  }
}

uint64_t MobileTimerFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_22D81BBC8();
  MEMORY[0x2318D22E0](v1);
  return sub_22D81BC18();
}

unint64_t sub_22D7BB9AC()
{
  result = qword_27DA03228;
  if (!qword_27DA03228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03228);
  }

  return result;
}

const char *sub_22D7BBA00()
{
  if (*v0 >= 2u)
  {
    return "Clock";
  }

  else
  {
    return "MobileTimerFlags";
  }
}

const char *sub_22D7BBA30()
{
  v1 = "LiveActivityAlertingWithTone";
  if (*v0 != 1)
  {
    v1 = "live_activity_banners";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "LiveActivityAlerting";
  }
}

uint64_t sub_22D7BBACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22D744B0C;

  return v9(a1, a2, a3);
}

void sub_22D7BBBF4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03230, &unk_22D823B90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  if (a2)
  {
    (*(v5 + 16))(v7, a1, v4);
    v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v9 = swift_allocObject();
    (*(v5 + 32))(v9 + v8, v7, v4);
    aBlock[4] = sub_22D7BBE30;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D78A760;
    aBlock[3] = &block_descriptor_11;
    v10 = _Block_copy(aBlock);

    v11 = [a2 addCompletionBlock_];
    _Block_release(v10);
  }
}

uint64_t sub_22D7BBDB8(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03230, &unk_22D823B90);
    return sub_22D81B4A8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03230, &unk_22D823B90);
    return sub_22D81B4B8();
  }
}

uint64_t sub_22D7BBE30(int a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03230, &unk_22D823B90);

  return sub_22D7BBDB8(a1, a2);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

id sub_22D7BBED4()
{
  type metadata accessor for IntentWorldClockManager();
  v0 = swift_allocObject();
  result = sub_22D7BBF10();
  qword_27DA0D3B0 = v0;
  return result;
}

id sub_22D7BBF10()
{
  v1 = v0;
  v2 = sub_22D81A958();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D81AAB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    *(v1 + 16) = result;
    v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    *(v1 + 24) = v11;
    v12 = v11;
    sub_22D81AAA8();
    v13 = sub_22D81AA88();
    (*(v7 + 8))(v9, v6);
    [v12 setTimeZone_];

    v14 = *(v1 + 24);
    sub_22D81A948();
    v15 = sub_22D81A928();
    (*(v3 + 8))(v5, v2);
    [v14 setLocale_];

    v16 = *(v1 + 24);
    v17 = sub_22D81B2B8();
    [v16 setLocalizedDateFormatFromTemplate_];

    [*(v1 + 24) setDateStyle_];
    [*(v1 + 24) setTimeStyle_];
    [*(v1 + 24) setDoesRelativeDateFormatting_];
    [*(v1 + 24) setFormattingContext_];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_22D7BC1BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D81A8C8();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - v8;
  MEMORY[0x28223BE20](v7);
  v44 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02958, &qword_22D822EC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  v14 = sub_22D81AAB8();
  v47 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = *(v2 + 16);
  v21 = sub_22D81B2B8();
  v22 = [v20 citiesMatchingName_];

  if (!v22)
  {
    return 0;
  }

  sub_22D7BB7F8();
  v23 = sub_22D81B438();

  if (!(v23 >> 62))
  {
    result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_13:

    return 0;
  }

  result = sub_22D81B938();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x2318D1F70](0, v23);
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v25 = *(v23 + 32);
  }

  v43 = v25;
  result = [v25 timeZone];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v26 = result;

  sub_22D81B2C8();

  sub_22D81AA58();

  v27 = v47;
  if ((*(v47 + 48))(v13, 1, v14) != 1)
  {
    v41 = v2;
    (*(v27 + 32))(v19, v13, v14);
    sub_22D81A888();
    sub_22D81A8B8();
    v42 = sub_22D81AA68();
    v28 = v46;
    v29 = v9;
    v30 = *(v45 + 8);
    v30(v6, v46);
    sub_22D81AAA8();
    sub_22D81A8B8();
    v31 = sub_22D81AA68();
    v32 = v6;
    v33 = v30;
    v30(v32, v28);
    v34 = *(v27 + 8);
    v47 = v27 + 8;
    result = v34(v17, v14);
    if (!__OFSUB__(v42, v31))
    {
      v35 = v44;
      sub_22D81A808();
      v33(v29, v28);
      v36 = *(v41 + 24);
      v37 = sub_22D81A818();
      v38 = [v36 stringFromDate_];

      v39 = sub_22D81B2C8();
      v33(v35, v28);
      v34(v19, v14);
      return v39;
    }

    goto LABEL_18;
  }

  sub_22D7BC6DC(v13);
  return 0;
}

uint64_t sub_22D7BC678()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22D7BC6DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02958, &qword_22D822EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22D7BC764()
{
  v1 = *v0;
  sub_22D81BBC8();
  MEMORY[0x2318D22E0](v1);
  return sub_22D81BC18();
}

uint64_t sub_22D7BC7AC(uint64_t a1)
{
  v2 = *v1;
  sub_22D81BBC8();
  MEMORY[0x2318D22E0](v2);
  return sub_22D81BC18();
}

unint64_t sub_22D7BC7F0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22D7BD034(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id MTAppIntentsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static MTAppIntentsManager.sharedManager.getter()
{
  if (qword_280CD1F18 != -1)
  {
    swift_once();
  }

  v1 = qword_280CD1F20;

  return v1;
}

uint64_t sub_22D7BC958(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_22D7BC9B8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18MobileTimerSupport19MTAppIntentsManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_22D7BCA50;
}

void sub_22D7BCA50(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *sub_22D7BCAD0(uint64_t a1)
{
  v3 = objc_opt_self();
  sub_22D81B838();
  MEMORY[0x2318D1A50](0x63656C6553646964, 0xED00002062615474);
  sub_22D81B908();
  MEMORY[0x2318D1A50](0x6564206874697720, 0xEF2065746167656CLL);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03240, &qword_22D823BF8);
  v4 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v4);

  v5 = sub_22D81B2B8();

  [v3 logInfo_];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didSelectTabWithManager:v1 tab:a1];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_22D7BCCBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  sub_22D81B838();

  MEMORY[0x2318D1A50](a1, a2);
  v7 = sub_22D81B2B8();

  [v6 logInfo_];

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_22D81B2B8();
    [v9 didAddNewWorldClockWithNameWithManager:v3 name:v10];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_22D7BCDFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  sub_22D81B838();

  MEMORY[0x2318D1A50](a1, a2);
  v7 = sub_22D81B2B8();

  [v6 logInfo_];

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_22D81B2B8();
    [v9 didRemoveWorldClockWithNameWithManager:v3 name:v10];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22D7BCF3C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_22D81B2C8();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

id MTAppIntentsManager.init()()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTAppIntentsManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MTAppIntentsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTAppIntentsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22D7BD034(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22D7BD048()
{
  result = qword_27DA03248;
  if (!qword_27DA03248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03248);
  }

  return result;
}

uint64_t sub_22D7BD21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[10] = type metadata accessor for AlarmActivityAttributes(0);
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7BD2B4, 0, 0);
}

uint64_t sub_22D7BD2B4(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[7];
  v5 = *(v1[6] + OBJC_IVAR____TtC18MobileTimerSupport26AlarmActivityProviderProxy_activityActor);
  v1[12] = v5;
  sub_22D81A8B8();
  *(v2 + *(v3 + 20)) = v4;
  v6 = v4;

  return MEMORY[0x2822009F8](sub_22D7BD34C, v5, 0);
}

uint64_t sub_22D7BD34C()
{
  sub_22D7F0FC8(*(v0 + 56), *(v0 + 88));
  *(v0 + 104) = 0;
  v1 = *(v0 + 88);

  sub_22D7C6250(v1, type metadata accessor for AlarmActivityAttributes);

  return MEMORY[0x2822009F8](sub_22D7CD948, 0, 0);
}

uint64_t sub_22D7BD41C(uint64_t a1)
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
  v10[1] = sub_22D744B08;

  return sub_22D7BD21C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22D7BD52C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_22D81B4F8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v12 = v3;
  v13 = a1;
  sub_22D81A198();
  sub_22D7BD9C8(0, 0, v9, &unk_22D823D10, v11);

  return sub_22D764440(v9, &unk_27DA01FF0, &qword_22D81FC70);
}

uint64_t sub_22D7BD674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0);
  v7[10] = swift_task_alloc();
  v7[11] = type metadata accessor for AlarmActivityAttributes(0);
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7BD744, 0, 0);
}

uint64_t sub_22D7BD744(uint64_t a1)
{
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  v5 = v1[7];
  v6 = *(v1[6] + OBJC_IVAR____TtC18MobileTimerSupport26AlarmActivityProviderProxy_activityActor);
  v1[13] = v6;
  sub_22D81A8B8();
  *(v2 + *(v3 + 20)) = v5;
  v7 = sub_22D81AC68();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = v5;

  return MEMORY[0x2822009F8](sub_22D7BD828, v6, 0);
}

uint64_t sub_22D7BD828()
{
  sub_22D7EE164(*(v0 + 56), *(v0 + 96), *(v0 + 80));
  *(v0 + 112) = 0;
  v1 = *(v0 + 96);
  sub_22D764440(*(v0 + 80), &qword_27DA03368, &qword_22D824BF0);
  sub_22D7C6250(v1, type metadata accessor for AlarmActivityAttributes);

  return MEMORY[0x2822009F8](sub_22D7CD950, 0, 0);
}

uint64_t sub_22D7BD8F4(uint64_t a1)
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
  v10[1] = sub_22D744B08;

  return sub_22D7BD674(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22D7BD9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22D7640C4(a3, v25 - v10, &unk_27DA01FF0, &qword_22D81FC70);
  v12 = sub_22D81B4F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_22D81A198();
  if (v14 == 1)
  {
    sub_22D764440(v11, &unk_27DA01FF0, &qword_22D81FC70);
  }

  else
  {
    sub_22D81B4E8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22D81B498();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22D81B308() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_22D81A198();
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

uint64_t sub_22D7BDC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22D7640C4(a3, v25 - v10, &unk_27DA01FF0, &qword_22D81FC70);
  v12 = sub_22D81B4F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_22D81A198();
  if (v14 == 1)
  {
    sub_22D764440(v11, &unk_27DA01FF0, &qword_22D81FC70);
  }

  else
  {
    sub_22D81B4E8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22D81B498();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22D81B308() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_22D81A198();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BC0, &unk_22D822460);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BC0, &unk_22D822460);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_22D7BE108(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_22D81B4F8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v14 = v4;
  v15 = a1;
  v16 = a2;
  sub_22D81A198();
  sub_22D7BD9C8(0, 0, v11, &unk_22D823D20, v13);

  return sub_22D764440(v11, &unk_27DA01FF0, &qword_22D81FC70);
}

uint64_t sub_22D7BE264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v8[11] = type metadata accessor for AlarmActivityAttributes(0);
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7BE300, 0, 0);
}

uint64_t sub_22D7BE300(uint64_t a1)
{
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[7];
  v5 = *(v1[6] + OBJC_IVAR____TtC18MobileTimerSupport26AlarmActivityProviderProxy_activityActor);
  v1[13] = v5;
  sub_22D81A8B8();
  *(v2 + *(v3 + 20)) = v4;
  v6 = v4;

  return MEMORY[0x2822009F8](sub_22D7BE398, v5, 0);
}

uint64_t sub_22D7BE398()
{
  sub_22D7EF198(v0[7], v0[12], v0[8]);
  v0[14] = 0;
  sub_22D7C6250(v0[12], type metadata accessor for AlarmActivityAttributes);

  return MEMORY[0x2822009F8](sub_22D7CD94C, 0, 0);
}

uint64_t sub_22D7BE444(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7BE264(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7BE6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_22D81B4F8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v14 = v4;
  sub_22D81A398();
  sub_22D81A198();
  sub_22D7BD9C8(0, 0, v11, &unk_22D823D30, v13);

  return sub_22D764440(v11, &unk_27DA01FF0, &qword_22D81FC70);
}

uint64_t sub_22D7BE844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  return MEMORY[0x2822009F8](sub_22D7BE86C, 0, 0);
}

uint64_t sub_22D7BE86C()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC18MobileTimerSupport26AlarmActivityProviderProxy_activityActor);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22D7BE898, v1, 0);
}

uint64_t sub_22D7BE898()
{
  sub_22D7EFDB0(v0[7], v0[8]);
  v0[12] = 0;

  return MEMORY[0x2822009F8](sub_22D7CD968, 0, 0);
}

uint64_t sub_22D7BE928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7BE844(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7BEBF0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport26AlarmActivityProviderProxy_activityActor);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7BEC1C, v1, 0);
}

uint64_t sub_22D7BEC1C()
{
  sub_22D7BED30();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7BEC7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D7BEBD0(a1, v4, v5, v6);
}

uint64_t sub_22D7BED30()
{
  v23 = sub_22D81AB88();
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03370, &unk_22D824C60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = objc_opt_self();
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_22D81B838();

  v24 = 0xD00000000000001FLL;
  v25 = 0x800000022D82B6B0;
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v8, v9);

  v10 = sub_22D81B2B8();

  [v7 logInfo_];

  v12 = sub_22D7C506C(&qword_280CD1F00, v11, type metadata accessor for AlarmActivityProvider, &unk_22D8248E8);
  v13 = *(v12 + 208);
  v14 = type metadata accessor for AlarmActivityProvider();
  v15 = v13(v14, v12);
  v16 = v15;
  if (v15 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22D81B938())
  {
    v18 = 0;
    ++v1;
    while ((v16 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2318D1F70](v18, v16);
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      sub_22D81AB08();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F8, &qword_22D823E40);
      (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
      sub_22D81AB78();
      sub_22D81AB28();

      (*v1)(v3, v23);
      sub_22D764440(v6, &qword_27DA03370, &unk_22D824C60);
      ++v18;
      if (v19 == i)
      {
      }
    }

    if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    sub_22D81A198();
    v19 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_22D7BF06C()
{
  v23 = sub_22D81AB88();
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03360, &unk_22D826890);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = objc_opt_self();
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_22D81B838();

  v24 = 0xD00000000000001FLL;
  v25 = 0x800000022D82B6B0;
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v8, v9);

  v10 = sub_22D81B2B8();

  [v7 logInfo_];

  v12 = sub_22D7C506C(&qword_280CD28C8, v11, type metadata accessor for TimerActivityProvider, &unk_22D8248A4);
  v13 = *(v12 + 208);
  v14 = type metadata accessor for TimerActivityProvider();
  v15 = v13(v14, v12);
  v16 = v15;
  if (v15 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22D81B938())
  {
    v18 = 0;
    ++v1;
    while ((v16 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2318D1F70](v18, v16);
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      sub_22D81AB08();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032E8, &qword_22D823E28);
      (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
      sub_22D81AB78();
      sub_22D81AB28();

      (*v1)(v3, v23);
      sub_22D764440(v6, &qword_27DA03360, &unk_22D826890);
      ++v18;
      if (v19 == i)
      {
      }
    }

    if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    sub_22D81A198();
    v19 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_22D7BF3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_22D7BF40C, 0, 0);
}

uint64_t sub_22D7BF434()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03300, &qword_22D823E48);
  *(v0 + 64) = sub_22D81AAC8();

  return MEMORY[0x2822009F8](sub_22D7BF4B4, 0, 0);
}

char *sub_22D7BF4B4()
{
  v1 = *(v0 + 64);
  swift_getKeyPath();
  if (v1 >> 62)
  {
    v2 = sub_22D81B938();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v5 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v14 = MEMORY[0x277D84F90];
  result = sub_22D7E8A08(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v14;
  v13 = *(v0 + 64) + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2318D1F70](v4, *(v0 + 64));
    }

    else
    {
      v6 = *(v13 + 8 * v4);
      sub_22D81A198();
    }

    *(v0 + 32) = v6;
    sub_22D81A198();
    swift_getAtKeyPath();

    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v10 = *(v14 + 16);
    v9 = *(v14 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_22D7E8A08((v9 > 1), v10 + 1, 1);
    }

    ++v4;
    *(v14 + 16) = v10 + 1;
    v11 = v14 + 16 * v10;
    *(v11 + 32) = v8;
    *(v11 + 40) = v7;
  }

  while (v2 != v4);

LABEL_14:
  (*(v0 + 48))(v5);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22D7BF69C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D7BF3E8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D7BF7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 128) = a5;
  *(v7 + 72) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F8, &qword_22D823E40);
  *(v7 + 96) = v8;
  *(v7 + 104) = *(v8 - 8);
  *(v7 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7BF894, 0, 0);
}

uint64_t sub_22D7BF8BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03300, &qword_22D823E48);
  v1 = sub_22D81AAC8();
  v2 = v1;
  v14 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_16:
    v3 = sub_22D81B938();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v13 = (*(v0 + 104) + 8);
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2318D1F70](v4, v2);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v11 = v14;
            goto LABEL_18;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          sub_22D81A198();
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v6 = *(v0 + 112);
        v7 = *(v0 + 96);
        v8 = *(v0 + 128);
        sub_22D81AB08();
        sub_22D81ABF8();
        (*v13)(v6, v7);
        v9 = *(v0 + 56);
        v10 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
        swift_beginAccess();
        LODWORD(v10) = v9[v10];

        if (v8 == v10)
        {
          sub_22D81B888();
          sub_22D81B8A8();
          sub_22D81B8B8();
          sub_22D81B898();
        }

        else
        {
        }

        ++v4;
        if (v5 == v3)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_18:
  *(v0 + 120) = v11;

  return MEMORY[0x2822009F8](sub_22D7BFAE0, 0, 0);
}

char *sub_22D7BFAE0()
{
  v1 = *(v0 + 120);
  swift_getKeyPath();
  if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    v2 = sub_22D81B938();
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_14:

    v5 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v2 = *(*(v0 + 120) + 16);
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_4:
  v14 = MEMORY[0x277D84F90];
  result = sub_22D7E8A08(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v14;
  v13 = *(v0 + 120) + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2318D1F70](v4, *(v0 + 120));
    }

    else
    {
      v6 = *(v13 + 8 * v4);
      sub_22D81A198();
    }

    *(v0 + 64) = v6;
    sub_22D81A198();
    swift_getAtKeyPath();

    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v10 = *(v14 + 16);
    v9 = *(v14 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_22D7E8A08((v9 > 1), v10 + 1, 1);
    }

    ++v4;
    *(v14 + 16) = v10 + 1;
    v11 = v14 + 16 * v10;
    *(v11 + 32) = v8;
    *(v11 + 40) = v7;
  }

  while (v2 != v4);

LABEL_15:
  (*(v0 + 80))(v5);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22D7BFCC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22D744B08;

  return sub_22D7BF7C0(a1, v4, v5, v6, v7, v9, v8);
}

id AlarmActivityProviderProxy.init()()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport26AlarmActivityProviderProxy_activityActor;
  type metadata accessor for AlarmActivityProvider();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v2[14] = 0x6D72616C61;
  v2[15] = 0xE500000000000000;
  v2[16] = 0xD000000000000014;
  v2[17] = 0x800000022D829320;
  v2[18] = 0xD000000000000016;
  v2[19] = 0x800000022D82B260;
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AlarmActivityProviderProxy();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_22D7BFFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[10] = type metadata accessor for TimerActivityAttributes(0);
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7C0064, 0, 0);
}

uint64_t sub_22D7C0064(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[7];
  v5 = *(v1[6] + OBJC_IVAR____TtC18MobileTimerSupport26TimerActivityProviderProxy_activityActor);
  v1[12] = v5;
  sub_22D81A8B8();
  *(v2 + *(v3 + 20)) = v4;
  v6 = v4;

  return MEMORY[0x2822009F8](sub_22D7C00FC, v5, 0);
}

uint64_t sub_22D7C00FC()
{
  sub_22D7F0768(*(v0 + 56), *(v0 + 88));
  *(v0 + 104) = 0;
  v1 = *(v0 + 88);

  sub_22D7C6250(v1, type metadata accessor for TimerActivityAttributes);

  return MEMORY[0x2822009F8](sub_22D7C01CC, 0, 0);
}

uint64_t sub_22D7C01CC()
{
  (*(v0 + 64))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7C023C()
{
  v1 = v0[13];
  v2 = v0[8];
  swift_getErrorValue();
  v3 = sub_22D81BB78();
  v5 = sub_22D7CDE20(v3, v4);

  v2(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22D7C0300(uint64_t a1)
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
  v10[1] = sub_22D744B08;

  return sub_22D7BFFCC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22D7C0430(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_22D81B4F8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v5;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v15 = v5;
  v16 = a1;
  sub_22D81A198();
  sub_22D75D890(0, 0, v12, a5, v14);
}

uint64_t sub_22D7C0554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0);
  v7[10] = swift_task_alloc();
  v7[11] = type metadata accessor for TimerActivityAttributes(0);
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7C0624, 0, 0);
}

uint64_t sub_22D7C0624(uint64_t a1)
{
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  v5 = v1[7];
  v6 = *(v1[6] + OBJC_IVAR____TtC18MobileTimerSupport26TimerActivityProviderProxy_activityActor);
  v1[13] = v6;
  sub_22D81A8B8();
  *(v2 + *(v3 + 20)) = v5;
  v7 = sub_22D81AC68();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = v5;

  return MEMORY[0x2822009F8](sub_22D7C0708, v6, 0);
}

uint64_t sub_22D7C0708()
{
  sub_22D7EE6EC(*(v0 + 56), *(v0 + 96), *(v0 + 80));
  *(v0 + 112) = 0;
  v1 = *(v0 + 96);
  sub_22D764440(*(v0 + 80), &qword_27DA03368, &qword_22D824BF0);
  sub_22D7C6250(v1, type metadata accessor for TimerActivityAttributes);

  return MEMORY[0x2822009F8](sub_22D7C07D4, 0, 0);
}

uint64_t sub_22D7C07D4()
{
  (*(v0 + 64))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7C0850()
{
  v1 = v0[14];
  v2 = v0[8];
  swift_getErrorValue();
  v3 = sub_22D81BB78();
  v5 = sub_22D7CDE20(v3, v4);

  v2(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22D7C0920(uint64_t a1)
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
  v10[1] = sub_22D744B08;

  return sub_22D7C0554(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22D7C0A30(void *a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = _Block_copy(a4);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = sub_22D81B4F8();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = a3;
  v19[6] = a7;
  v19[7] = v17;
  v20 = a3;
  v21 = a1;
  sub_22D75D890(0, 0, v15, a8, v19);
}

uint64_t sub_22D7C0B78(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_22D81B4F8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v14 = v4;
  v15 = a1;
  v16 = a2;
  sub_22D81A198();
  sub_22D75D890(0, 0, v11, &unk_22D823D90, v13);
}

uint64_t sub_22D7C0CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v8[11] = type metadata accessor for TimerActivityAttributes(0);
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7C0D50, 0, 0);
}

uint64_t sub_22D7C0D50(uint64_t a1)
{
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[7];
  v5 = *(v1[6] + OBJC_IVAR____TtC18MobileTimerSupport26TimerActivityProviderProxy_activityActor);
  v1[13] = v5;
  sub_22D81A8B8();
  *(v2 + *(v3 + 20)) = v4;
  v6 = v4;

  return MEMORY[0x2822009F8](sub_22D7C0DE8, v5, 0);
}

uint64_t sub_22D7C0DE8()
{
  sub_22D7EF1CC(v0[7], v0[12], v0[8]);
  v0[14] = 0;
  sub_22D7C6250(v0[12], type metadata accessor for TimerActivityAttributes);

  return MEMORY[0x2822009F8](sub_22D7C0E94, 0, 0);
}

uint64_t sub_22D7C0E94()
{
  (*(v0 + 72))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7C0F04()
{
  v1 = v0[14];
  v2 = v0[9];
  swift_getErrorValue();
  v3 = sub_22D81BB78();
  v5 = sub_22D7CDE20(v3, v4);

  v2(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22D7C0FC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7C0CB4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7C1208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_22D81B4F8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v14 = v4;
  sub_22D81A398();
  sub_22D81A198();
  sub_22D75D890(0, 0, v11, &unk_22D823DA0, v13);
}

uint64_t sub_22D7C1344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  return MEMORY[0x2822009F8](sub_22D7C136C, 0, 0);
}

uint64_t sub_22D7C136C()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC18MobileTimerSupport26TimerActivityProviderProxy_activityActor);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22D7C1398, v1, 0);
}

uint64_t sub_22D7C1398()
{
  sub_22D7F028C(v0[7], v0[8]);
  v0[12] = 0;

  return MEMORY[0x2822009F8](sub_22D7C1428, 0, 0);
}

uint64_t sub_22D7C1428()
{
  (*(v0 + 72))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7C1490()
{
  v1 = v0[12];
  v2 = v0[9];
  swift_getErrorValue();
  v3 = sub_22D81BB78();
  v5 = sub_22D7CDE20(v3, v4);

  v2(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22D7C154C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7C1344(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7C17B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_22D81B4F8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v9 = v2;
  sub_22D75D890(0, 0, v6, a2, v8);
}

uint64_t sub_22D7C18C8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport26TimerActivityProviderProxy_activityActor);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7C18F4, v1, 0);
}

uint64_t sub_22D7C18F4()
{
  sub_22D7BF06C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7C1954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D7C18A8(a1, v4, v5, v6);
}

uint64_t sub_22D7C1A28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_22D81B4F8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v11 = a1;
  sub_22D75D890(0, 0, v8, a4, v10);
}

uint64_t sub_22D7C1B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_22D81B4F8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v4;
  v12[5] = a1;
  v12[6] = a2;
  v13 = v4;
  sub_22D81A198();
  sub_22D75D890(0, 0, v10, a4, v12);
}

uint64_t sub_22D7C1C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_22D7C1C7C, 0, 0);
}

uint64_t sub_22D7C1CA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F0, &unk_22D823E30);
  *(v0 + 64) = sub_22D81AAC8();

  return MEMORY[0x2822009F8](sub_22D7C1D24, 0, 0);
}

char *sub_22D7C1D24()
{
  v1 = *(v0 + 64);
  swift_getKeyPath();
  if (v1 >> 62)
  {
    v2 = sub_22D81B938();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v5 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v14 = MEMORY[0x277D84F90];
  result = sub_22D7E8A08(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v14;
  v13 = *(v0 + 64) + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2318D1F70](v4, *(v0 + 64));
    }

    else
    {
      v6 = *(v13 + 8 * v4);
      sub_22D81A198();
    }

    *(v0 + 32) = v6;
    sub_22D81A198();
    swift_getAtKeyPath();

    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v10 = *(v14 + 16);
    v9 = *(v14 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_22D7E8A08((v9 > 1), v10 + 1, 1);
    }

    ++v4;
    *(v14 + 16) = v10 + 1;
    v11 = v14 + 16 * v10;
    *(v11 + 32) = v8;
    *(v11 + 40) = v7;
  }

  while (v2 != v4);

LABEL_14:
  (*(v0 + 48))(v5);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22D7C1F0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D7C1C58(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D7C1FF8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032E8, &qword_22D823E28);
  result = sub_22D81ABF8();
  *a1 = v3;
  return result;
}

uint64_t sub_22D7C2048@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_22D81A398();
}

uint64_t sub_22D7C20E8(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = sub_22D81B4F8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a6;
  v17[6] = v15;
  v18 = a1;
  sub_22D75D890(0, 0, v13, a7, v17);
}

uint64_t sub_22D7C2248(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_22D81B4F8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v5;
  *(v14 + 40) = a1;
  *(v14 + 48) = a2;
  *(v14 + 56) = a3;
  v15 = v5;
  sub_22D81A198();
  sub_22D75D890(0, 0, v12, a5, v14);
}

uint64_t sub_22D7C236C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 128) = a5;
  *(v7 + 72) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032E8, &qword_22D823E28);
  *(v7 + 96) = v8;
  *(v7 + 104) = *(v8 - 8);
  *(v7 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7C2440, 0, 0);
}

uint64_t sub_22D7C2468()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F0, &unk_22D823E30);
  v1 = sub_22D81AAC8();
  v2 = v1;
  v14 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_16:
    v3 = sub_22D81B938();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v13 = (*(v0 + 104) + 8);
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2318D1F70](v4, v2);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v11 = v14;
            goto LABEL_18;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          sub_22D81A198();
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v6 = *(v0 + 112);
        v7 = *(v0 + 96);
        v8 = *(v0 + 128);
        sub_22D81AB08();
        sub_22D81ABF8();
        (*v13)(v6, v7);
        v9 = *(v0 + 56);
        v10 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing;
        swift_beginAccess();
        LODWORD(v10) = v9[v10];

        if (v8 == v10)
        {
          sub_22D81B888();
          sub_22D81B8A8();
          sub_22D81B8B8();
          sub_22D81B898();
        }

        else
        {
        }

        ++v4;
        if (v5 == v3)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_18:
  *(v0 + 120) = v11;

  return MEMORY[0x2822009F8](sub_22D7C268C, 0, 0);
}

char *sub_22D7C268C()
{
  v1 = *(v0 + 120);
  swift_getKeyPath();
  if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    v2 = sub_22D81B938();
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_14:

    v5 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v2 = *(*(v0 + 120) + 16);
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_4:
  v14 = MEMORY[0x277D84F90];
  result = sub_22D7E8A08(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v14;
  v13 = *(v0 + 120) + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2318D1F70](v4, *(v0 + 120));
    }

    else
    {
      v6 = *(v13 + 8 * v4);
      sub_22D81A198();
    }

    *(v0 + 64) = v6;
    sub_22D81A198();
    swift_getAtKeyPath();

    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v10 = *(v14 + 16);
    v9 = *(v14 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_22D7E8A08((v9 > 1), v10 + 1, 1);
    }

    ++v4;
    *(v14 + 16) = v10 + 1;
    v11 = v14 + 16 * v10;
    *(v11 + 32) = v8;
    *(v11 + 40) = v7;
  }

  while (v2 != v4);

LABEL_15:
  (*(v0 + 80))(v5);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22D7C2870(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22D744B08;

  return sub_22D7C236C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22D7C2984(void *a1, uint64_t a2, char a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  v16 = _Block_copy(a4);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = sub_22D81B4F8();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = a1;
  *(v19 + 40) = a3;
  *(v19 + 48) = a7;
  *(v19 + 56) = v17;
  v20 = a1;
  sub_22D75D890(0, 0, v15, a8, v19);
}

id TimerActivityProviderProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TimerActivityProviderProxy.init()()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport26TimerActivityProviderProxy_activityActor;
  type metadata accessor for TimerActivityProvider();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v2[14] = 0x72656D6974;
  v2[15] = 0xE500000000000000;
  v2[16] = 0xD000000000000014;
  v2[17] = 0x800000022D829320;
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TimerActivityProviderProxy();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_22D7C2C94(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22D7C2CDC()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_22D7C2D5C()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t AlarmContext.hour.getter()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_hour;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AlarmContext.hour.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_hour;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AlarmContext.min.getter()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_min;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AlarmContext.min.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_min;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AlarmContext.isSnoozed.getter()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AlarmContext.isSnoozed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AlarmContext.isFiring.getter()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AlarmContext.isFiring.setter(char a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AlarmContext.requestedStyle.getter()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AlarmContext.requestedStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id AlarmContext.__allocating_init(title:alarmId:hour:min:isSnoozed:snoozeFireDate:isFiring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  v16 = objc_allocWithZone(v9);
  v17 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed] = 0;
  v18 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate;
  v19 = sub_22D81A8C8();
  (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring] = 0;
  *&v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle] = 0;
  v21 = &v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_title];
  *v21 = a1;
  v21[1] = a2;
  v22 = &v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId];
  *v22 = a3;
  v22[1] = a4;
  *&v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_hour] = a5;
  *&v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_min] = a6;
  swift_beginAccess();
  v16[v17] = a7;
  swift_beginAccess();
  sub_22D81A398();
  sub_22D7C38B8(a8, &v16[v18]);
  swift_endAccess();
  swift_beginAccess();
  v16[v20] = a9;
  v23 = &v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_id];
  *v23 = a3;
  v23[1] = a4;
  v29.receiver = v16;
  v29.super_class = v28;
  v24 = objc_msgSendSuper2(&v29, sel_init);
  sub_22D764440(a8, &qword_27DA02000, &qword_22D81F160);
  return v24;
}

id AlarmContext.init(title:alarmId:hour:min:isSnoozed:snoozeFireDate:isFiring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  ObjectType = swift_getObjectType();
  v16 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed] = 0;
  v17 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate;
  v18 = sub_22D81A8C8();
  (*(*(v18 - 8) + 56))(&v9[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring] = 0;
  *&v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle] = 0;
  v20 = &v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_title];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId];
  *v21 = a3;
  v21[1] = a4;
  *&v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_hour] = a5;
  *&v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_min] = a6;
  swift_beginAccess();
  v9[v16] = a7;
  swift_beginAccess();
  sub_22D81A398();
  sub_22D7C38B8(a8, &v9[v17]);
  swift_endAccess();
  swift_beginAccess();
  v9[v19] = a9;
  v22 = &v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_id];
  *v22 = a3;
  v22[1] = a4;
  v28.receiver = v9;
  v28.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v28, sel_init);
  sub_22D764440(a8, &qword_27DA02000, &qword_22D81F160);
  return v23;
}

uint64_t sub_22D7C38B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id static AlarmContext.mock()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_22D81A8C8();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = objc_allocWithZone(v0);
  v7 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  v6[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed] = 0;
  v8 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate;
  v5(&v6[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate], 1, 1, v4);
  v9 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  v6[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring] = 0;
  *&v6[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle] = 0;
  v10 = &v6[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_title];
  *v10 = 0x68636E754CLL;
  v10[1] = 0xE500000000000000;
  v11 = &v6[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId];
  *v11 = 0x706134333231;
  v11[1] = 0xE600000000000000;
  *&v6[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_hour] = 12;
  *&v6[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_min] = 30;
  swift_beginAccess();
  v6[v7] = 0;
  swift_beginAccess();
  sub_22D7C38B8(v3, &v6[v8]);
  swift_endAccess();
  swift_beginAccess();
  v6[v9] = 0;
  v12 = &v6[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_id];
  *v12 = 0x706134333231;
  v12[1] = 0xE600000000000000;
  v15.receiver = v6;
  v15.super_class = v0;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_22D764440(v3, &qword_27DA02000, &qword_22D81F160);
  return v13;
}

uint64_t AlarmContext.description.getter()
{
  v1 = v0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v24);
  v3 = &v23 - v2;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_22D81B838();
  v29 = v27;
  v30 = v28;
  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D82B280);
  v4 = (v0 + OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v5, v6);

  MEMORY[0x2318D1A50](0x3A656C746974202CLL, 0xE800000000000000);
  v7 = (v1 + OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_title);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v8, v9);

  MEMORY[0x2318D1A50](0x3A72756F68202CLL, 0xE700000000000000);
  v10 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_hour;
  swift_beginAccess();
  v26[3] = *(v1 + v10);
  v11 = sub_22D81BAD8();
  MEMORY[0x2318D1A50](v11);

  MEMORY[0x2318D1A50](0x3A6E696D202CLL, 0xE600000000000000);
  v12 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_min;
  swift_beginAccess();
  v26[0] = *(v1 + v12);
  v13 = sub_22D81BAD8();
  MEMORY[0x2318D1A50](v13);

  MEMORY[0x2318D1A50](0x6F6F6E537369202CLL, 0xED0000203A64657ALL);
  v14 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  swift_beginAccess();
  if (*(v1 + v14))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  v16 = 0xE500000000000000;
  if (*(v1 + v14))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x2318D1A50](v15, v17);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82B2A0);
  v18 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate;
  swift_beginAccess();
  sub_22D7640C4(v1 + v18, v3, &qword_27DA02000, &qword_22D81F160);
  sub_22D81B908();
  sub_22D764440(v3, &qword_27DA02000, &qword_22D81F160);
  MEMORY[0x2318D1A50](0x697269467369202CLL, 0xEC000000203A676ELL);
  v19 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  swift_beginAccess();
  if (*(v1 + v19))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v1 + v19))
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x2318D1A50](v20, v16);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82B2C0);
  v21 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
  swift_beginAccess();
  v25 = *(v1 + v21);
  sub_22D81B908();
  return v29;
}

uint64_t sub_22D7C4178(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C746974;
    v6 = 1920298856;
    if (a1 != 2)
    {
      v6 = 7235949;
    }

    if (a1)
    {
      v5 = 0x64496D72616C61;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x676E697269467369;
    v2 = 25705;
    if (a1 != 7)
    {
      v2 = 0x6574736575716572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x657A6F6F6E537369;
    if (a1 != 4)
    {
      v3 = 0x6946657A6F6F6E73;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22D7C4298@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22D7CAB7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22D7C42CC(uint64_t a1)
{
  v2 = sub_22D7C4910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D7C4308(uint64_t a1)
{
  v2 = sub_22D7C4910();

  return MEMORY[0x2821FE720](a1, v2);
}

id AlarmContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AlarmContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03288, &qword_22D823DE0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15[-v10];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7C4910();
  sub_22D81BC38();
  swift_beginAccess();
  v15[184] = 0;
  sub_22D81A398();
  sub_22D81BA78();
  if (v2)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {

    swift_beginAccess();
    v15[160] = 1;
    sub_22D81A398();
    sub_22D81BA78();

    swift_beginAccess();
    v15[136] = 2;
    sub_22D81BAA8();
    swift_beginAccess();
    v15[112] = 3;
    sub_22D81BAA8();
    swift_beginAccess();
    v15[88] = 4;
    sub_22D81BA88();
    v12 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate;
    swift_beginAccess();
    sub_22D7640C4(v3 + v12, v7, &qword_27DA02000, &qword_22D81F160);
    v15[64] = 5;
    sub_22D81A8C8();
    sub_22D7C506C(&unk_280CD2900, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_22D81BA68();
    sub_22D764440(v7, &qword_27DA02000, &qword_22D81F160);
    swift_beginAccess();
    v15[40] = 6;
    sub_22D81BA88();
    swift_beginAccess();
    v15[16] = 7;
    sub_22D81A398();
    sub_22D81BA78();

    v14 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
    swift_beginAccess();
    v16 = *(v3 + v14);
    v15[15] = 8;
    sub_22D7C4964();
    sub_22D81BAB8();
    return (*(v9 + 8))(v11, v8);
  }
}

unint64_t sub_22D7C4910()
{
  result = qword_280CD2C38[0];
  if (!qword_280CD2C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CD2C38);
  }

  return result;
}

unint64_t sub_22D7C4964()
{
  result = qword_280CD2358[0];
  if (!qword_280CD2358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CD2358);
  }

  return result;
}

void *AlarmContext.init(from:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v39 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03290, &qword_22D823DE8);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v7 = &v39 - v6;
  v8 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  v1[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed] = 0;
  v9 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate;
  v10 = sub_22D81A8C8();
  v11 = *(*(v10 - 8) + 56);
  v46 = v9;
  v11(&v2[v9], 1, 1, v10);
  v12 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  v2[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring] = 0;
  v13 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
  v48 = v2;
  *&v2[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle] = 0;
  v14 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v14);
  sub_22D7C4910();
  v15 = v44;
  sub_22D81BC28();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0(v45);
    v38 = v48;
    sub_22D764440(v48 + v46, &qword_27DA02000, &qword_22D81F160);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v8;
    v44 = v10;
    v39 = v13;
    v40 = v12;
    v18 = v41;
    v17 = v42;
    v52 = 0;
    v19 = v43;
    v20 = sub_22D81B9E8();
    v22 = v48;
    v23 = (v48 + OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_title);
    *v23 = v20;
    v23[1] = v24;
    v52 = 1;
    v25 = sub_22D81B9E8();
    v26 = &v22[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId];
    *v26 = v25;
    v26[1] = v27;
    v52 = 2;
    *&v22[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_hour] = sub_22D81BA18();
    v52 = 3;
    *&v22[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_min] = sub_22D81BA18();
    v52 = 4;
    v28 = sub_22D81B9F8();
    swift_beginAccess();
    v22[v16] = v28 & 1;
    v51 = 5;
    sub_22D7C506C(&unk_280CD2E60, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_22D81B9D8();
    v29 = v46;
    swift_beginAccess();
    sub_22D77FD70(v17, &v22[v29]);
    swift_endAccess();
    v51 = 6;
    v30 = v22;
    v31 = sub_22D81B9F8();
    v32 = v40;
    swift_beginAccess();
    v30[v32] = v31 & 1;
    v50 = 7;
    v33 = sub_22D81B9E8();
    v34 = &v30[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_id];
    *v34 = v33;
    v34[1] = v35;
    v50 = 8;
    sub_22D7C50B4();
    sub_22D81BA28();
    v36 = v53;
    v37 = v39;
    swift_beginAccess();
    *&v30[v37] = v36;
    v49.receiver = v30;
    v49.super_class = ObjectType;
    v38 = objc_msgSendSuper2(&v49, sel_init);
    (*(v18 + 8))(v7, v19);
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  return v38;
}

uint64_t sub_22D7C506C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_22D7C50B4()
{
  result = qword_280CD2C00;
  if (!qword_280CD2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2C00);
  }

  return result;
}

void *sub_22D7C5108@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = AlarmContext.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id AlarmActivityAttributes.context.getter()
{
  v1 = *(v0 + *(type metadata accessor for AlarmActivityAttributes(0) + 20));

  return v1;
}

void AlarmActivityAttributes.context.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlarmActivityAttributes(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t sub_22D7C528C(uint64_t a1)
{
  v2 = sub_22D7C5514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D7C52C8(uint64_t a1)
{
  v2 = sub_22D7C5514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AlarmActivityAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03298, &qword_22D823DF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7C5514();
  sub_22D81BC38();
  v12 = 0;
  sub_22D81A8C8();
  sub_22D7C506C(&unk_280CD2900, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_22D81BAB8();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for AlarmActivityAttributes(0) + 20));
    v10[15] = 1;
    type metadata accessor for AlarmContext(0);
    sub_22D7C506C(qword_280CD23E8, 255, type metadata accessor for AlarmContext, &protocol conformance descriptor for AlarmContext);
    sub_22D81BAB8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_22D7C5514()
{
  result = qword_280CD2BA0;
  if (!qword_280CD2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BA0);
  }

  return result;
}

uint64_t AlarmActivityAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = sub_22D81A8C8();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032A0, &qword_22D823DF8);
  v15 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AlarmActivityAttributes(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D81A8B8();
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7C5514();
  sub_22D81BC28();
  if (v2)
  {
    v11 = v18;
    __swift_destroy_boxed_opaque_existential_0(a1);
    return (*(v11 + 8))(v10, v4);
  }

  else
  {
    v12 = v15;
    v21 = 0;
    sub_22D7C506C(&unk_280CD2E60, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_22D81BA28();
    (*(v18 + 40))(v10, v16, v4);
    type metadata accessor for AlarmContext(0);
    v20 = 1;
    sub_22D7C506C(&qword_280CD2C20, 255, type metadata accessor for AlarmContext, &protocol conformance descriptor for AlarmContext);
    sub_22D81BA28();
    (*(v12 + 8))(v7, v17);
    *&v10[*(v8 + 20)] = v19;
    sub_22D7C61E8(v10, v14, type metadata accessor for AlarmActivityAttributes);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_22D7C6250(v10, type metadata accessor for AlarmActivityAttributes);
  }
}

uint64_t sub_22D7C5970@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D81A8C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22D7C59DC(uint64_t a1)
{
  v3 = sub_22D81A8C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

id TimerActivityAttributes.context.getter()
{
  v1 = *(v0 + *(type metadata accessor for TimerActivityAttributes(0) + 20));

  return v1;
}

void TimerActivityAttributes.context.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TimerActivityAttributes(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t sub_22D7C5B40(uint64_t a1)
{
  v2 = sub_22D7C5DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D7C5B7C(uint64_t a1)
{
  v2 = sub_22D7C5DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimerActivityAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032A8, &qword_22D823E00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7C5DC8();
  sub_22D81BC38();
  v12 = 0;
  sub_22D81A8C8();
  sub_22D7C506C(&unk_280CD2900, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_22D81BAB8();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for TimerActivityAttributes(0) + 20));
    v10[15] = 1;
    type metadata accessor for TimerContext(0);
    sub_22D7C506C(&qword_280CD27B0, 255, type metadata accessor for TimerContext, &protocol conformance descriptor for TimerContext);
    sub_22D81BAB8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_22D7C5DC8()
{
  result = qword_280CD2D28;
  if (!qword_280CD2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2D28);
  }

  return result;
}

uint64_t TimerActivityAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = sub_22D81A8C8();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032B0, &qword_22D823E08);
  v15 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TimerActivityAttributes(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D81A8B8();
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7C5DC8();
  sub_22D81BC28();
  if (v2)
  {
    v11 = v18;
    __swift_destroy_boxed_opaque_existential_0(a1);
    return (*(v11 + 8))(v10, v4);
  }

  else
  {
    v12 = v15;
    v21 = 0;
    sub_22D7C506C(&unk_280CD2E60, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_22D81BA28();
    (*(v18 + 40))(v10, v16, v4);
    type metadata accessor for TimerContext(0);
    v20 = 1;
    sub_22D7C506C(&qword_280CD2DA8, 255, type metadata accessor for TimerContext, &protocol conformance descriptor for TimerContext);
    sub_22D81BA28();
    (*(v12 + 8))(v7, v17);
    *&v10[*(v8 + 20)] = v19;
    sub_22D7C61E8(v10, v14, type metadata accessor for TimerActivityAttributes);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_22D7C6250(v10, type metadata accessor for TimerActivityAttributes);
  }
}

uint64_t sub_22D7C61E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D7C6250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22D7C62E0()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22D7C6324(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_22D7C644C()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_duration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22D7C6490(double a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_duration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_22D7C6540()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_remainingTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22D7C6584(double a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_remainingTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22D7C6640@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_22D7640C4(v2 + v4, a2, &qword_27DA02000, &qword_22D81F160);
}

uint64_t sub_22D7C6710(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_22D7640C4(a1, &v14 - v9, &qword_27DA02000, &qword_22D81F160);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  sub_22D77FD70(v10, v11 + v12);
  return swift_endAccess();
}

uint64_t sub_22D7C6878(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_22D77FD70(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_22D7C6934()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22D7C6978(char a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22D7C6AA0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
  sub_22D81A398();
}

uint64_t sub_22D7C6B14(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_22D81A398();
  return v3;
}

uint64_t sub_22D7C6B74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_22D7C6C78()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22D7C6D10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id TimerContext.__allocating_init(state:timerId:duration:remainingTime:firing:fireDate:title:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v16 = objc_allocWithZone(v9);
  v17 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firedDate;
  v18 = sub_22D81A8C8();
  v19 = *(*(v18 - 8) + 56);
  v19(&v16[v17], 1, 1, v18);
  v20 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate;
  v19(&v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate], 1, 1, v18);
  v19(&v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_dismissedDate], 1, 1, v18);
  *&v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle] = 0;
  *&v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state] = a1;
  v21 = &v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId];
  *v21 = a2;
  v21[1] = a3;
  *&v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_duration] = a8;
  *&v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_remainingTime] = a9;
  v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing] = a4;
  swift_beginAccess();
  sub_22D81A398();
  sub_22D7C38B8(a5, &v16[v20]);
  swift_endAccess();
  v22 = &v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_title];
  *v22 = a6;
  v22[1] = a7;
  v23 = &v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_id];
  *v23 = a2;
  v23[1] = a3;
  v29.receiver = v16;
  v29.super_class = v9;
  v24 = objc_msgSendSuper2(&v29, sel_init);
  sub_22D764440(a5, &qword_27DA02000, &qword_22D81F160);
  return v24;
}

id TimerContext.init(state:timerId:duration:remainingTime:firing:fireDate:title:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v17 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firedDate;
  v18 = sub_22D81A8C8();
  v19 = *(*(v18 - 8) + 56);
  v19(&v9[v17], 1, 1, v18);
  v20 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate;
  v19(&v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate], 1, 1, v18);
  v19(&v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_dismissedDate], 1, 1, v18);
  *&v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle] = 0;
  *&v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state] = a1;
  v21 = &v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId];
  *v21 = a2;
  v21[1] = a3;
  *&v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_duration] = a8;
  *&v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_remainingTime] = a9;
  v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing] = a4;
  swift_beginAccess();
  sub_22D81A398();
  sub_22D7C38B8(a5, &v9[v20]);
  swift_endAccess();
  v22 = &v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_title];
  *v22 = a6;
  v22[1] = a7;
  v23 = &v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_id];
  *v23 = a2;
  v23[1] = a3;
  v28.receiver = v9;
  v28.super_class = type metadata accessor for TimerContext(0);
  v24 = objc_msgSendSuper2(&v28, sel_init);
  sub_22D764440(a5, &qword_27DA02000, &qword_22D81F160);
  return v24;
}

id sub_22D7C72F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_22D81A8C8();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v5 = type metadata accessor for TimerContext(0);
  v6 = objc_allocWithZone(v5);
  v4(&v6[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firedDate], 1, 1, v3);
  v7 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate;
  v4(&v6[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate], 1, 1, v3);
  v4(&v6[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_dismissedDate], 1, 1, v3);
  *&v6[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle] = 0;
  *&v6[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state] = 0;
  v8 = &v6[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId];
  *v8 = 875770417;
  v8[1] = 0xE400000000000000;
  *&v6[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_duration] = 0x404E000000000000;
  *&v6[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_remainingTime] = 0x4014000000000000;
  v6[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing] = 0;
  swift_beginAccess();
  sub_22D7C38B8(v2, &v6[v7]);
  swift_endAccess();
  v9 = &v6[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_title];
  *v9 = 6513249;
  v9[1] = 0xE300000000000000;
  v10 = &v6[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_id];
  *v10 = 875770417;
  v10[1] = 0xE400000000000000;
  v14.receiver = v6;
  v14.super_class = v5;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  sub_22D764440(v2, &qword_27DA02000, &qword_22D81F160);
  return v11;
}

id sub_22D7C7544(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_22D81B2B8();

  return v5;
}

uint64_t sub_22D7C75B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v2);
  v4 = v20 - v3;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_22D81B838();
  v23 = v21;
  v24 = v22;
  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D82B310);
  v5 = (v0 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v6, v7);

  MEMORY[0x2318D1A50](0x3A6574617473202CLL, 0xE800000000000000);
  v8 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (v9)
  {
    if (v9 == 2)
    {
      v10 = 0xE600000000000000;
      v11 = 0x646573756150;
    }

    else
    {
      v10 = 0xE700000000000000;
      if (v9 == 1)
      {
        v11 = 0x676E696E6E7552;
      }

      else
      {
        v11 = 0x6E776F6E6B6E55;
      }
    }
  }

  else
  {
    v10 = 0xE700000000000000;
    v11 = 0x646570706F7453;
  }

  MEMORY[0x2318D1A50](v11, v10);

  MEMORY[0x2318D1A50](0x697461727564202CLL, 0xEB000000003A6E6FLL);
  swift_beginAccess();
  sub_22D81B5C8();
  MEMORY[0x2318D1A50](0xD000000000000010, 0x800000022D82B330);
  swift_beginAccess();
  sub_22D81B5C8();
  MEMORY[0x2318D1A50](0x614465726966202CLL, 0xEC000000203A6574);
  v12 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate;
  swift_beginAccess();
  sub_22D7640C4(v1 + v12, v4, &qword_27DA02000, &qword_22D81F160);
  sub_22D81B908();
  sub_22D764440(v4, &qword_27DA02000, &qword_22D81F160);
  MEMORY[0x2318D1A50](0x446465726966202CLL, 0xEC0000003A657461);
  v13 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firedDate;
  swift_beginAccess();
  sub_22D7640C4(v1 + v13, v4, &qword_27DA02000, &qword_22D81F160);
  sub_22D81B908();
  sub_22D764440(v4, &qword_27DA02000, &qword_22D81F160);
  MEMORY[0x2318D1A50](0x697269467369202CLL, 0xEB000000003A676ELL);
  v14 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing;
  swift_beginAccess();
  if (*(v1 + v14))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(v1 + v14))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x2318D1A50](v15, v16);

  MEMORY[0x2318D1A50](0xD000000000000010, 0x800000022D82B350);
  v17 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_dismissedDate;
  swift_beginAccess();
  sub_22D7640C4(v1 + v17, v4, &qword_27DA02000, &qword_22D81F160);
  sub_22D81B908();
  sub_22D764440(v4, &qword_27DA02000, &qword_22D81F160);
  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82B2C0);
  v18 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  swift_beginAccess();
  v20[1] = *(v1 + v18);
  sub_22D81B908();
  return v23;
}

uint64_t sub_22D7C7AF4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6574617473;
    v7 = 0x6E6F697461727564;
    v8 = 0x6E696E69616D6572;
    if (a1 != 3)
    {
      v8 = 0x7461446465726966;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x644972656D6974;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x656C746974;
    v2 = 25705;
    if (a1 != 9)
    {
      v2 = 0x6574736575716572;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6574614465726966;
    v4 = 0x657373696D736964;
    if (a1 != 6)
    {
      v4 = 0x676E69726966;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22D7C7C64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22D7CAE68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22D7C7C98(uint64_t a1)
{
  v2 = sub_22D7C8F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D7C7CD4(uint64_t a1)
{
  v2 = sub_22D7C8F98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22D7C7DF4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v33 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032D8, &qword_22D823E10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7C8F98();
  sub_22D81BC38();
  v15 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state;
  swift_beginAccess();
  v36 = v2;
  v48 = *(v2 + v15);
  v47 = 0;
  sub_22D7C8FEC();
  v16 = v14;
  v17 = v37;
  sub_22D81BAB8();
  if (v17)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v19 = v10;
  v20 = v12;
  v21 = v36;
  swift_beginAccess();
  v47 = 1;
  sub_22D81A398();
  v22 = v16;
  sub_22D81BA78();

  swift_beginAccess();
  v46 = 2;
  sub_22D81BA98();
  swift_beginAccess();
  v45 = 3;
  sub_22D81BA98();
  v23 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firedDate;
  swift_beginAccess();
  sub_22D7640C4(v21 + v23, v19, &qword_27DA02000, &qword_22D81F160);
  v44 = 4;
  sub_22D81A8C8();
  sub_22D7C506C(&unk_280CD2900, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_22D81BA68();
  sub_22D764440(v19, &qword_27DA02000, &qword_22D81F160);
  v24 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate;
  swift_beginAccess();
  v25 = v36 + v24;
  v26 = v35;
  sub_22D7640C4(v25, v35, &qword_27DA02000, &qword_22D81F160);
  v43 = 5;
  sub_22D81BA68();
  sub_22D764440(v26, &qword_27DA02000, &qword_22D81F160);
  v27 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_dismissedDate;
  swift_beginAccess();
  v28 = v36 + v27;
  v29 = v36;
  v30 = v34;
  sub_22D7640C4(v28, v34, &qword_27DA02000, &qword_22D81F160);
  v42 = 6;
  sub_22D81BA68();
  v31 = v20;
  sub_22D764440(v30, &qword_27DA02000, &qword_22D81F160);
  swift_beginAccess();
  v41 = 7;
  sub_22D81BA88();
  swift_beginAccess();
  v40[0] = 8;
  sub_22D81A398();
  sub_22D81BA78();

  swift_beginAccess();
  v39[0] = 9;
  sub_22D81A398();
  sub_22D81BA78();

  v32 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  swift_beginAccess();
  v49 = *(v29 + v32);
  v38 = 10;
  sub_22D7C4964();
  sub_22D81BAB8();
  return (*(v31 + 8))(v22, 0);
}

void *TimerContext.init(from:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v48 = &v46 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032E0, &unk_22D823E18);
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firedDate;
  v15 = sub_22D81A8C8();
  v16 = *(*(v15 - 8) + 56);
  v54 = v14;
  v16(&v2[v14], 1, 1, v15);
  v56 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate;
  v16(&v2[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate], 1, 1, v15);
  v53 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_dismissedDate;
  v16(&v2[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_dismissedDate], 1, 1, v15);
  v17 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  v55 = v2;
  *&v2[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle] = 0;
  v18 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v18);
  sub_22D7C8F98();
  v19 = v51;
  sub_22D81BC28();
  if (v19)
  {
    v20 = v54;
    v24 = v55;
    __swift_destroy_boxed_opaque_existential_0(v52);
    v25 = v53;
    sub_22D764440(v24 + v20, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v24 + v56, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v24 + v25, &qword_27DA02000, &qword_22D81F160);
    type metadata accessor for TimerContext(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v10;
    v51 = v17;
    v22 = v49;
    LOBYTE(v59) = 0;
    sub_22D7C9040();
    sub_22D81BA28();
    v23 = v54;
    v27 = v55;
    *(v55 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state) = v58;
    LOBYTE(v58) = 1;
    v28 = sub_22D81B9E8();
    v29 = (v27 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId);
    *v29 = v28;
    v29[1] = v30;
    LOBYTE(v58) = 2;
    sub_22D81BA08();
    *(v27 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_duration) = v31;
    LOBYTE(v58) = 3;
    sub_22D81BA08();
    *(v27 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_remainingTime) = v32;
    LOBYTE(v58) = 4;
    v46 = sub_22D7C506C(&unk_280CD2E60, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_22D81B9D8();
    swift_beginAccess();
    sub_22D77FD70(v21, v27 + v23);
    swift_endAccess();
    LOBYTE(v58) = 5;
    v33 = v48;
    sub_22D81B9D8();
    v34 = v56;
    swift_beginAccess();
    sub_22D77FD70(v33, v27 + v34);
    swift_endAccess();
    LOBYTE(v58) = 6;
    sub_22D81B9D8();
    v35 = v53;
    swift_beginAccess();
    sub_22D77FD70(v47, v27 + v35);
    swift_endAccess();
    LOBYTE(v58) = 7;
    *(v27 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing) = sub_22D81B9F8() & 1;
    LOBYTE(v58) = 8;
    v36 = sub_22D81B9E8();
    v37 = (v27 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_title);
    *v37 = v36;
    v37[1] = v38;
    LOBYTE(v58) = 9;
    v39 = sub_22D81B9E8();
    v40 = (v55 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_id);
    *v40 = v39;
    v40[1] = v41;
    LOBYTE(v58) = 10;
    sub_22D7C50B4();
    sub_22D81BA28();
    v42 = v59;
    v43 = v51;
    v44 = v55;
    swift_beginAccess();
    *&v44[v43] = v42;
    v45 = type metadata accessor for TimerContext(0);
    v57.receiver = v44;
    v57.super_class = v45;
    v24 = objc_msgSendSuper2(&v57, sel_init);
    (*(v22 + 8))(v13, v50);
    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  return v24;
}

void *sub_22D7C8D00@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for TimerContext(0));
  result = TimerContext.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22D7C8D88@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  v4 = (*v2 + *a1);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
  return sub_22D81A398();
}

uint64_t TimerState.description.getter(uint64_t a1)
{
  v1 = 0x646573756150;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v2 = 0x676E696E6E7552;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x646570706F7453;
  }
}

uint64_t sub_22D7C8F20()
{
  v1 = *v0;
  v2 = 0x646573756150;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v3 = 0x676E696E6E7552;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x646570706F7453;
  }
}

unint64_t sub_22D7C8F98()
{
  result = qword_280CD2D00;
  if (!qword_280CD2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2D00);
  }

  return result;
}

unint64_t sub_22D7C8FEC()
{
  result = qword_280CD27B8;
  if (!qword_280CD27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD27B8);
  }

  return result;
}

unint64_t sub_22D7C9040()
{
  result = qword_280CD2DB0;
  if (!qword_280CD2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2DB0);
  }

  return result;
}

uint64_t sub_22D7C91A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v3[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032E8, &qword_22D823E28);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for TimerActivityAttributes(0);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7C92F4, 0, 0);
}

uint64_t sub_22D7C92F4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = objc_opt_self();
  sub_22D81B838();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x2318D1A50](0xD00000000000001CLL, 0x800000022D82B390);
  MEMORY[0x2318D1A50](v3, v1);
  MEMORY[0x2318D1A50](0x3A656C797473202CLL, 0xE900000000000020);
  v0[10] = v2;
  sub_22D81B908();
  v5 = sub_22D81B2B8();

  [v4 logInfo_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F0, &unk_22D823E30);
  v6 = sub_22D81AAC8();
  v7 = v6;
  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_23:

    v35 = v0[1];

    return v35();
  }

LABEL_22:
  v8 = sub_22D81B938();
  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_3:
  v9 = 0;
  v36 = v0[20];
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2318D1F70](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v10 = sub_22D81A198();
    }

    v0[23] = v10;
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v12 = v0[22];
    v13 = v0[12];
    v37 = v0[13];
    sub_22D81AAD8();
    v14 = *(v12 + *(v36 + 20));
    sub_22D7C6250(v12, type metadata accessor for TimerActivityAttributes);
    v15 = &v14[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId];
    swift_beginAccess();
    v17 = *v15;
    v16 = *(v15 + 1);
    sub_22D81A398();

    if (v17 == v13 && v16 == v37)
    {
      break;
    }

    v19 = sub_22D81BB08();

    if (v19)
    {
      goto LABEL_17;
    }

    ++v9;
    if (v11 == v8)
    {
      goto LABEL_23;
    }
  }

LABEL_17:
  v20 = v0[21];
  v21 = v0[18];
  v22 = v0[16];
  v23 = v0[17];
  v25 = v0[14];
  v24 = v0[15];

  sub_22D81AAD8();
  v26 = *(v20 + *(v36 + 20));
  v0[24] = v26;
  v27 = v26;
  sub_22D7C6250(v20, type metadata accessor for TimerActivityAttributes);
  v28 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  swift_beginAccess();
  *&v27[v28] = v25;
  v0[11] = v27;
  v29 = sub_22D81A8C8();
  (*(*(v29 - 8) + 56))(v24, 1, 1, v29);
  v30 = v27;
  sub_22D81AB08();
  sub_22D81ABD8();
  v31 = *(v23 + 8);
  v0[25] = v31;
  v0[26] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v21, v22);
  type metadata accessor for TimerContext(0);
  sub_22D7C506C(&qword_280CD2DA8, 255, type metadata accessor for TimerContext, &protocol conformance descriptor for TimerContext);
  sub_22D7C506C(&qword_280CD27B0, 255, type metadata accessor for TimerContext, &protocol conformance descriptor for TimerContext);
  sub_22D7C506C(&qword_280CD27A8, 255, type metadata accessor for TimerContext, MEMORY[0x277D85378]);
  sub_22D81ABE8();
  v38 = (*MEMORY[0x277CB92A8] + MEMORY[0x277CB92A8]);
  v32 = swift_task_alloc();
  v0[27] = v32;
  *v32 = v0;
  v32[1] = sub_22D7C9874;
  v33 = v0[19];

  return v38(v33);
}

uint64_t sub_22D7C9874()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 128);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_22D7C99D4, 0, 0);
}

uint64_t sub_22D7C99D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7C9A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v3[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F8, &qword_22D823E40);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for AlarmActivityAttributes(0);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7C9BC4, 0, 0);
}

uint64_t sub_22D7C9BC4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = objc_opt_self();
  sub_22D81B838();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x2318D1A50](0xD00000000000001CLL, 0x800000022D82B3B0);
  MEMORY[0x2318D1A50](v3, v1);
  MEMORY[0x2318D1A50](0x3A656C797473202CLL, 0xE900000000000020);
  v0[10] = v2;
  sub_22D81B908();
  v5 = sub_22D81B2B8();

  [v4 logInfo_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03300, &qword_22D823E48);
  v6 = sub_22D81AAC8();
  v7 = v6;
  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_23:

    v35 = v0[1];

    return v35();
  }

LABEL_22:
  v8 = sub_22D81B938();
  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_3:
  v9 = 0;
  v36 = v0[20];
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2318D1F70](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v10 = sub_22D81A198();
    }

    v0[23] = v10;
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v12 = v0[22];
    v13 = v0[12];
    v37 = v0[13];
    sub_22D81AAD8();
    v14 = *(v12 + *(v36 + 20));
    sub_22D7C6250(v12, type metadata accessor for AlarmActivityAttributes);
    v15 = &v14[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId];
    swift_beginAccess();
    v17 = *v15;
    v16 = *(v15 + 1);
    sub_22D81A398();

    if (v17 == v13 && v16 == v37)
    {
      break;
    }

    v19 = sub_22D81BB08();

    if (v19)
    {
      goto LABEL_17;
    }

    ++v9;
    if (v11 == v8)
    {
      goto LABEL_23;
    }
  }

LABEL_17:
  v20 = v0[21];
  v21 = v0[18];
  v22 = v0[16];
  v23 = v0[17];
  v25 = v0[14];
  v24 = v0[15];

  sub_22D81AAD8();
  v26 = *(v20 + *(v36 + 20));
  v0[24] = v26;
  v27 = v26;
  sub_22D7C6250(v20, type metadata accessor for AlarmActivityAttributes);
  v28 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
  swift_beginAccess();
  *&v27[v28] = v25;
  v0[11] = v27;
  v29 = sub_22D81A8C8();
  (*(*(v29 - 8) + 56))(v24, 1, 1, v29);
  v30 = v27;
  sub_22D81AB08();
  sub_22D81ABD8();
  v31 = *(v23 + 8);
  v0[25] = v31;
  v0[26] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v21, v22);
  type metadata accessor for AlarmContext(0);
  sub_22D7C506C(&qword_280CD2C20, 255, type metadata accessor for AlarmContext, &protocol conformance descriptor for AlarmContext);
  sub_22D7C506C(qword_280CD23E8, 255, type metadata accessor for AlarmContext, &protocol conformance descriptor for AlarmContext);
  sub_22D7C506C(&qword_280CD23E0, 255, type metadata accessor for AlarmContext, MEMORY[0x277D85378]);
  sub_22D81ABE8();
  v38 = (*MEMORY[0x277CB92A8] + MEMORY[0x277CB92A8]);
  v32 = swift_task_alloc();
  v0[27] = v32;
  *v32 = v0;
  v32[1] = sub_22D7CA144;
  v33 = v0[19];

  return v38(v33);
}

uint64_t sub_22D7CA144()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 128);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_22D7CD9BC, 0, 0);
}

uint64_t sub_22D7CA2F4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_22D7CA3E8;

  return v5(v2 + 32);
}

uint64_t sub_22D7CA3E8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

double sub_22D7CA4FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_22D81A8C8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  swift_beginAccess();
  v13 = 0.0;
  if (*(a1 + v12) == 1)
  {
    v14 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate;
    swift_beginAccess();
    sub_22D7640C4(a1 + v14, v4, &qword_27DA02000, &qword_22D81F160);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_22D764440(v4, &qword_27DA02000, &qword_22D81F160);
    }

    else
    {
      (*(v6 + 32))(v11, v4, v5);
      sub_22D81A7E8();
      sub_22D81A858();
      v16 = v15;
      v17 = *(v6 + 8);
      v17(v9, v5);
      sub_22D81A858();
      v13 = v16 - v18;
      v19 = objc_opt_self();
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_22D81B838();
      v28 = v26;
      v29 = v27;
      MEMORY[0x2318D1A50](0xD00000000000001DLL, 0x800000022D82B6F0);
      sub_22D81B5C8();
      MEMORY[0x2318D1A50](0xD000000000000013, 0x800000022D82B710);
      v20 = (a1 + OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId);
      swift_beginAccess();
      v21 = *v20;
      v22 = v20[1];
      sub_22D81A398();
      MEMORY[0x2318D1A50](v21, v22);

      v23 = sub_22D81B2B8();

      [v19 logInfo_];

      v17(v11, v5);
    }
  }

  return v13;
}

double sub_22D7CA83C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_22D81A8C8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state;
  swift_beginAccess();
  v13 = 0.0;
  if (*(a1 + v12) == 1)
  {
    v14 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate;
    swift_beginAccess();
    sub_22D7640C4(a1 + v14, v4, &qword_27DA02000, &qword_22D81F160);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_22D764440(v4, &qword_27DA02000, &qword_22D81F160);
    }

    else
    {
      (*(v6 + 32))(v11, v4, v5);
      sub_22D81A7E8();
      sub_22D81A858();
      v16 = v15;
      v17 = *(v6 + 8);
      v17(v9, v5);
      sub_22D81A858();
      v13 = v16 - v18;
      v19 = objc_opt_self();
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_22D81B838();
      v28 = v26;
      v29 = v27;
      MEMORY[0x2318D1A50](0xD00000000000001CLL, 0x800000022D82B6D0);
      sub_22D81B5C8();
      MEMORY[0x2318D1A50](0x6D697420726F6620, 0xEB00000000207265);
      v20 = (a1 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId);
      swift_beginAccess();
      v21 = *v20;
      v22 = v20[1];
      sub_22D81A398();
      MEMORY[0x2318D1A50](v21, v22);

      v23 = sub_22D81B2B8();

      [v19 logInfo_];

      v17(v11, v5);
    }
  }

  return v13;
}

uint64_t sub_22D7CAB7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_22D81BB08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496D72616C61 && a2 == 0xE700000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1920298856 && a2 == 0xE400000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7235949 && a2 == 0xE300000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657A6F6F6E537369 && a2 == 0xE900000000000064 || (sub_22D81BB08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6946657A6F6F6E73 && a2 == 0xEE00657461446572 || (sub_22D81BB08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E697269467369 && a2 == 0xE800000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xEE00656C79745364)
  {

    return 8;
  }

  else
  {
    v6 = sub_22D81BB08();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22D7CAE68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_22D81BB08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644972656D6974 && a2 == 0xE700000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E696E69616D6572 && a2 == 0xED0000656D695467 || (sub_22D81BB08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461446465726966 && a2 == 0xE900000000000065 || (sub_22D81BB08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6574614465726966 && a2 == 0xE800000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xED00006574614464 || (sub_22D81BB08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x676E69726966 && a2 == 0xE600000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xEE00656C79745364)
  {

    return 10;
  }

  else
  {
    v6 = sub_22D81BB08();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_22D7CB1EC(uint64_t a1)
{
  result = sub_22D7C506C(&qword_27DA03308, 255, type metadata accessor for AlarmContext, &protocol conformance descriptor for AlarmContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22D7CB378(uint64_t a1)
{
  result = sub_22D7C506C(&qword_27DA03310, 255, type metadata accessor for TimerContext, &protocol conformance descriptor for TimerContext);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22D7CB3D8()
{
  result = qword_27DA03318;
  if (!qword_27DA03318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03318);
  }

  return result;
}

unint64_t sub_22D7CB42C()
{
  result = qword_27DA03320;
  if (!qword_27DA03320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03320);
  }

  return result;
}

double keypath_get_72Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_set_73Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_76Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_22D7640C4(v4 + v5, a3, &qword_27DA02000, &qword_22D81F160);
}

uint64_t keypath_get_70Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
  return sub_22D81A398();
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_22D7CBC14(uint64_t a1)
{
  sub_22D7CBD34(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22D7CBD34(uint64_t a1)
{
  if (!qword_280CD2E58)
  {
    sub_22D81A8C8();
    v1 = sub_22D81B718();
    if (!v2)
    {
      atomic_store(v1, &qword_280CD2E58);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D81A8C8();
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22D81A8C8();
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

uint64_t sub_22D7CBF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_22D81A8C8();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22D7CC014(uint64_t a1)
{
  sub_22D7CBD34(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of static MTActivitiesUpdater.requestTimerStyle(timer:style:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 80) + **(v3 + 80));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22D744B08;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of static MTActivitiesUpdater.requestAlarmStyle(alarm:style:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 88) + **(v3 + 88));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22D744B08;

  return v10(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for TimerContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22D7CCE68()
{
  result = qword_27DA03328;
  if (!qword_27DA03328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03328);
  }

  return result;
}

unint64_t sub_22D7CCEC0()
{
  result = qword_27DA03330;
  if (!qword_27DA03330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03330);
  }

  return result;
}

unint64_t sub_22D7CCF18()
{
  result = qword_27DA03338;
  if (!qword_27DA03338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03338);
  }

  return result;
}

unint64_t sub_22D7CCF70()
{
  result = qword_27DA03340;
  if (!qword_27DA03340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03340);
  }

  return result;
}

uint64_t sub_22D7CD068(uint64_t a1, uint64_t a2)
{
  result = sub_22D7C506C(&qword_280CD28D0, a2, type metadata accessor for TimerActivityProvider, &unk_22D8248C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22D7CD164(uint64_t a1, uint64_t a2)
{
  result = sub_22D7C506C(&qword_280CD1F08, a2, type metadata accessor for AlarmActivityProvider, &unk_22D824904);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22D7CD1C0()
{
  result = qword_280CD2CF0;
  if (!qword_280CD2CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2CF0);
  }

  return result;
}

unint64_t sub_22D7CD218()
{
  result = qword_280CD2CF8;
  if (!qword_280CD2CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2CF8);
  }

  return result;
}

unint64_t sub_22D7CD270()
{
  result = qword_280CD2D18;
  if (!qword_280CD2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2D18);
  }

  return result;
}

unint64_t sub_22D7CD2C8()
{
  result = qword_280CD2D20;
  if (!qword_280CD2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2D20);
  }

  return result;
}

unint64_t sub_22D7CD320()
{
  result = qword_280CD2B90;
  if (!qword_280CD2B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2B90);
  }

  return result;
}

unint64_t sub_22D7CD378()
{
  result = qword_280CD2B98;
  if (!qword_280CD2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2B98);
  }

  return result;
}

unint64_t sub_22D7CD3D0()
{
  result = qword_280CD2C28;
  if (!qword_280CD2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2C28);
  }

  return result;
}

unint64_t sub_22D7CD428()
{
  result = qword_280CD2C30;
  if (!qword_280CD2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2C30);
  }

  return result;
}

uint64_t sub_22D7CD484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B0C;

  return sub_22D7C1344(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_19Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_11Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_7Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_22D7CD6E8()
{
  result = qword_280CD2C08;
  if (!qword_280CD2C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2C08);
  }

  return result;
}

unint64_t sub_22D7CD73C()
{
  result = qword_280CD2DB8[0];
  if (!qword_280CD2DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CD2DB8);
  }

  return result;
}

uint64_t sub_22D7CD790(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B08;

  return sub_22D7CA2F4(a1, v4);
}

uint64_t sub_22D7CD848(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return sub_22D7CA2F4(a1, v4);
}

uint64_t keypath_get_354Tm@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = sub_22D81ABF8();
  *a3 = v5;
  return result;
}

id MTActivityError.__allocating_init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_22D81B2B8();

  if (a4)
  {
    v9 = sub_22D81B158();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v8 code:a3 userInfo:v9];

  return v10;
}

id MTActivityError.init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = &v4[OBJC_IVAR____TtC18MobileTimerSupport15MTActivityError_descriptionString];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = sub_22D81B2B8();

  if (a4)
  {
    v9 = sub_22D81B158();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = type metadata accessor for MTActivityError();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_code_userInfo_, v8, a3, v9);

  return v10;
}

id MTActivityError.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MTActivityError.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18MobileTimerSupport15MTActivityError_descriptionString];
  v4 = type metadata accessor for MTActivityError();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id MTActivityError.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MTActivityError();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_22D7CDE20(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03380, &qword_22D824CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D81DF60;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0x800000022D82B7D0;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_22D81A398();
  sub_22D818700(inited);
  swift_setDeallocating();
  sub_22D7CDFE0(inited + 32);
  v5 = objc_allocWithZone(type metadata accessor for MTActivityError());
  v6 = sub_22D81B2B8();
  v7 = sub_22D81B158();

  v8 = [v5 initWithDomain:v6 code:0 userInfo:v7];

  v9 = &v8[OBJC_IVAR____TtC18MobileTimerSupport15MTActivityError_descriptionString];
  *v9 = a1;
  *(v9 + 1) = a2;
  sub_22D81A398();

  return v8;
}

uint64_t sub_22D7CDFE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03388, &qword_22D824CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22D7CE05C()
{
  result = qword_27DA03390;
  if (!qword_27DA03390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03390);
  }

  return result;
}

uint64_t sub_22D7CE0B0@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v1 - 8);
  v17 = &v16 - v2;
  v3 = sub_22D81A748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v8 - 8);
  v16 = sub_22D81A768();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  sub_22D81B228();
  sub_22D81A948();
  v10 = *MEMORY[0x277CC9110];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v11(v6, v10, v3);
  v12 = v17;
  sub_22D81A778();
  (*(v9 + 56))(v12, 0, 1, v16);
  v13 = v18;
  sub_22D81A2C8();
  v14 = sub_22D81A2B8();
  return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
}

uint64_t sub_22D7CE434()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_22D81A748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_22D81A768();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  sub_22D81B228();
  sub_22D81A948();
  (*(v4 + 104))(v6, *MEMORY[0x277CC9110], v3);
  sub_22D81A778();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_22D81A488();
}

uint64_t sub_22D7CE6E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E696E69616D6572;
  }

  else
  {
    v3 = 0x6E6F697461727564;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xED0000656D695467;
  }

  if (*a2)
  {
    v5 = 0x6E696E69616D6572;
  }

  else
  {
    v5 = 0x6E6F697461727564;
  }

  if (*a2)
  {
    v6 = 0xED0000656D695467;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22D81BB08();
  }

  return v8 & 1;
}

unint64_t sub_22D7CE7A0()
{
  result = qword_27DA03398;
  if (!qword_27DA03398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03398);
  }

  return result;
}

uint64_t sub_22D7CE7F4()
{
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D7CE884(uint64_t a1)
{
  sub_22D81B328();
}

uint64_t sub_22D7CE900(uint64_t a1)
{
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D7CE98C@<X0>(char *a2@<X8>)
{
  v3 = sub_22D81B998();

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

void sub_22D7CE9EC(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F697461727564;
  if (*v1)
  {
    v2 = 0x6E696E69616D6572;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xED0000656D695467;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_22D7CEA3C()
{
  result = qword_27DA033A0;
  if (!qword_27DA033A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033A0);
  }

  return result;
}

unint64_t sub_22D7CEA94()
{
  result = qword_27DA033A8;
  if (!qword_27DA033A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033A8);
  }

  return result;
}

unint64_t sub_22D7CEAEC()
{
  result = qword_27DA033B0;
  if (!qword_27DA033B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033B0);
  }

  return result;
}

unint64_t sub_22D7CEB44()
{
  result = qword_27DA033B8;
  if (!qword_27DA033B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033B8);
  }

  return result;
}

unint64_t sub_22D7CEB98()
{
  result = qword_27DA033C0;
  if (!qword_27DA033C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033C0);
  }

  return result;
}

unint64_t sub_22D7CEBEC()
{
  result = qword_27DA033C8;
  if (!qword_27DA033C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033C8);
  }

  return result;
}

unint64_t sub_22D7CEC44()
{
  result = qword_27DA033D0;
  if (!qword_27DA033D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033D0);
  }

  return result;
}

unint64_t sub_22D7CECEC()
{
  result = qword_27DA033D8;
  if (!qword_27DA033D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033D8);
  }

  return result;
}

uint64_t sub_22D7CED40(uint64_t a1)
{
  v2 = sub_22D7CECEC();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_22D7CED90()
{
  result = qword_27DA033E0;
  if (!qword_27DA033E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033E0);
  }

  return result;
}

unint64_t sub_22D7CEDE8()
{
  result = qword_27DA033E8;
  if (!qword_27DA033E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033E8);
  }

  return result;
}

unint64_t sub_22D7CEE40()
{
  result = qword_27DA033F0;
  if (!qword_27DA033F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033F0);
  }

  return result;
}

uint64_t sub_22D7CEE98(uint64_t a1)
{
  v2 = sub_22D7CEC44();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_22D7CEF3C()
{
  result = qword_27DA03408;
  if (!qword_27DA03408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03408);
  }

  return result;
}

unint64_t sub_22D7CEF94()
{
  result = qword_27DA03410;
  if (!qword_27DA03410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03410);
  }

  return result;
}

uint64_t sub_22D7CF038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03448, &qword_22D8251A8);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7CF0DC, 0, 0);
}

uint64_t sub_22D7CF0DC()
{
  v1 = [*(v0 + 32) timersSync];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() firstActiveTimerFromTimers_];

    sub_22D81A0B8();
    v4 = *(v0 + 48);
    if (*(v0 + 56) == 1)
    {
      [v3 remainingTime];
    }

    else
    {
      [v3 duration];
    }

    v6 = [objc_opt_self() seconds];
    sub_22D7D03FC();
    sub_22D81A5C8();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03180, &qword_22D8251B0);
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    sub_22D7D02E4();
    sub_22D819FC8();
  }

  else
  {
    v4 = *(v0 + 48);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03180, &qword_22D8251B0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_22D7D02E4();
    sub_22D819FC8();
  }

  sub_22D7D0394(v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22D7CF324()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A958();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D7CF4E0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03468, &qword_22D8251B8);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03470, &qword_22D8251C0);
  MEMORY[0x28223BE20](v3);
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03478, &unk_22D8251F0);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  return sub_22D81A3B8();
}

uint64_t sub_22D7CF690(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B0C;

  return sub_22D7CF038(a1, v5, v4);
}

uint64_t sub_22D7CF73C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D7CFDA4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22D7CF764(uint64_t a1)
{
  v2 = sub_22D7CF7C0();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_22D7CF7C0()
{
  result = qword_27DA03438;
  if (!qword_27DA03438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03438);
  }

  return result;
}

unint64_t sub_22D7CF814()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D80, &qword_22D823370);
  MEMORY[0x28223BE20](v0 - 8);
  v38 = &v25 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v25 - v3;
  v40 = sub_22D81A748();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_22D81A768();
  v27 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v35 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03480, &unk_22D825200);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03488, &qword_22D8275A0);
  v39 = v11;
  v12 = *(v11 - 8);
  v36 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v31 = v14;
  *(v14 + 16) = xmmword_22D821040;
  v15 = v14 + v13;
  v30 = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_22D81B228();
  sub_22D81A948();
  v32 = *MEMORY[0x277CC9110];
  v16 = *(v4 + 104);
  v33 = v4 + 104;
  v34 = v16;
  v26 = v6;
  v16(v6);
  sub_22D81A778();
  v17 = *(v41 + 56);
  v41 += 56;
  v28 = v17;
  v18 = v37;
  v17(v37, 1, 1, v9);
  v19 = sub_22D81A328();
  v25 = *(*(v19 - 8) + 56);
  v20 = v38;
  v25(v38, 1, 1, v19);
  v29 = v15;
  v21 = v20;
  sub_22D81A338();
  v22 = (v15 + v36);
  v36 = *(v39 + 48);
  *v22 = 1;
  sub_22D81B228();
  sub_22D81A948();
  v34(v26, v32, v40);
  sub_22D81A778();
  v28(v18, 1, 1, v27);
  v25(v21, 1, 1, v19);
  sub_22D81A338();
  v23 = sub_22D818830(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

uint64_t sub_22D7CFDA4()
{
  v0 = sub_22D81A428();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x28223BE20](v0);
  v27 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v26 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v25 = v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v6 - 8);
  v31 = v24 - v7;
  v30 = sub_22D81A748();
  v8 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D81A958();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_22D81A768();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v24[0] = v24 - v16;
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03440, &qword_22D825198);
  sub_22D81B228();
  sub_22D81A948();
  v17 = *MEMORY[0x277CC9110];
  v18 = *(v8 + 104);
  v18(v10, v17, v30);
  sub_22D81A778();
  (*(v14 + 56))(v31, 1, 1, v13);
  v32[0] = 1;
  sub_22D81B228();
  sub_22D81A948();
  v18(v10, v17, v30);
  sub_22D81A778();
  v19 = v25;
  sub_22D819F88();
  v20 = sub_22D819F78();
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 0, 1, v20);
  v21(v26, 1, 1, v20);
  (*(v28 + 104))(v27, *MEMORY[0x277CBA308], v29);
  sub_22D7CECEC();
  v22 = sub_22D81A0F8();
  [objc_allocWithZone(MEMORY[0x277D29740]) init];
  return v22;
}

unint64_t sub_22D7D02E4()
{
  result = qword_27DA03450;
  if (!qword_27DA03450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA03448, &qword_22D8251A8);
    sub_22D7548B0(&qword_27DA03458, &qword_27DA03180, &qword_22D8251B0, MEMORY[0x277CBA4D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03450);
  }

  return result;
}

uint64_t sub_22D7D0394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03448, &qword_22D8251A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22D7D03FC()
{
  result = qword_27DA03460;
  if (!qword_27DA03460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA03460);
  }

  return result;
}

uint64_t sub_22D7D0454@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CB9FD8];
  v3 = sub_22D81A2D8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22D7D04D8()
{
  v61 = sub_22D81A748();
  v66 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v48 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_22D81A958();
  MEMORY[0x28223BE20](v1 - 8);
  v68 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D81A768();
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22D819F48();
  v69 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70[0] = sub_22D7B99DC();
  v70[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03490, &qword_22D825298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03498, &qword_22D8252A0);
  v11 = swift_allocObject();
  v57 = xmmword_22D81E6C0;
  *(v11 + 16) = xmmword_22D81E6C0;
  sub_22D7B9748();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v12 = *MEMORY[0x277CC9110];
  v13 = *(v66 + 104);
  v66 += 104;
  v63 = v13;
  v62 = v12;
  v13(v60, v12, v61);
  sub_22D81A778();
  v64 = v9;
  sub_22D819F38();
  v55 = sub_22D819EA8();
  v58 = *(v69 + 8);
  v69 += 8;
  v14 = v65;
  v58(v9, v65);
  v70[0] = [objc_allocWithZone(MEMORY[0x277D29740]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034A0, &qword_22D8252A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034A8, &qword_22D8252B0);
  v15 = swift_allocObject();
  v56 = xmmword_22D81DF60;
  *(v15 + 16) = xmmword_22D81DF60;
  sub_22D76E040();
  sub_22D819E88();
  v59 = v5;
  sub_22D81B228();
  sub_22D81A948();
  v17 = v60;
  v16 = v61;
  v18 = v12;
  v19 = v63;
  v63(v60, v18, v61);
  v20 = v17;
  sub_22D81A778();
  v21 = v64;
  sub_22D819F38();
  v54 = sub_22D819EA8();
  v22 = v58;
  v58(v21, v14);
  v70[0] = [objc_allocWithZone(MEMORY[0x277D29740]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034B0, &qword_22D8252B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034B8, &qword_22D8252C0);
  *(swift_allocObject() + 16) = v56;
  sub_22D7D1D78();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v23 = v62;
  v19(v20, v62, v16);
  sub_22D81A778();
  v24 = v64;
  sub_22D819F38();
  v53 = sub_22D819EA8();
  v25 = v65;
  v26 = v22;
  v22(v24, v65);
  v70[0] = [objc_allocWithZone(MEMORY[0x277D29740]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034C8, &qword_22D8252C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034D0, &qword_22D8252D0);
  *(swift_allocObject() + 16) = v56;
  sub_22D7D1DCC();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v27 = v60;
  v28 = v61;
  v63(v60, v23, v61);
  v29 = v27;
  sub_22D81A778();
  v30 = v64;
  sub_22D819F38();
  v52 = sub_22D819EA8();
  v26(v30, v25);
  sub_22D7568F4(v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034E0, &qword_22D8252D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034E8, &qword_22D8252E0);
  *(swift_allocObject() + 16) = v57;
  sub_22D755F18();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v63(v29, v62, v28);
  sub_22D81A778();
  v31 = v64;
  sub_22D819F38();
  v51 = sub_22D819EA8();
  v58(v31, v65);
  v70[0] = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034F0, &qword_22D8252E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034F8, &qword_22D8252F0);
  *(swift_allocObject() + 16) = xmmword_22D825210;
  sub_22D76C23C();
  sub_22D819E88();
  v49 = 0xD000000000000011;
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  *&v56 = 0xD000000000000010;
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v32 = v61;
  v63(v60, v62, v61);
  sub_22D81A778();
  v33 = v64;
  sub_22D819F38();
  v50 = sub_22D819EA8();
  v34 = v58;
  v58(v33, v65);
  v70[0] = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03500, &qword_22D8252F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03508, &qword_22D825300);
  *(swift_allocObject() + 16) = xmmword_22D821050;
  sub_22D7663DC();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v35 = v32;
  v36 = v63;
  v63(v60, v62, v35);
  sub_22D81A778();
  v37 = v64;
  sub_22D819F38();
  v49 = sub_22D819EA8();
  v34(v37, v65);
  v70[0] = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03510, &qword_22D825308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03518, &qword_22D825310);
  *(swift_allocObject() + 16) = v57;
  sub_22D758764();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v38 = v60;
  v36(v60, v62, v61);
  sub_22D81A778();
  v39 = v64;
  sub_22D819F38();
  *&v57 = sub_22D819EA8();
  v58(v39, v65);
  v70[0] = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03520, &qword_22D825318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03528, &qword_22D825320);
  *(swift_allocObject() + 16) = xmmword_22D81E100;
  sub_22D75B7E0();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v63(v38, v62, v61);
  sub_22D81A778();
  sub_22D819F38();
  v40 = sub_22D819EA8();
  v58(v39, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DA03530, &unk_22D825328);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_22D825220;
  v42 = v54;
  *(v41 + 32) = v55;
  *(v41 + 40) = v42;
  v43 = v52;
  *(v41 + 48) = v53;
  *(v41 + 56) = v43;
  v44 = v50;
  *(v41 + 64) = v51;
  *(v41 + 72) = v44;
  v45 = v57;
  *(v41 + 80) = v49;
  *(v41 + 88) = v45;
  *(v41 + 96) = v40;
  v46 = sub_22D819E98();

  return v46;
}

unint64_t sub_22D7D1D78()
{
  result = qword_27DA034C0;
  if (!qword_27DA034C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA034C0);
  }

  return result;
}

unint64_t sub_22D7D1DCC()
{
  result = qword_27DA034D8;
  if (!qword_27DA034D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA034D8);
  }

  return result;
}

uint64_t Atomic.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Atomic.init(wrappedValue:)(a1);
  return v2;
}

uint64_t sub_22D7D1E60(uint64_t (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_22D7D281C();
  v5 = sub_22D81B678();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_22D7A8878;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_22D75BA3C;
  v8[3] = &block_descriptor_12;
  v7 = _Block_copy(v8);
  sub_22D81A198();

  dispatch_sync(v5, v7);

  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D7D1FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_22D7D2054(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

char *Atomic.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for MTSUnfairLock();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 2) = v4;
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v3 + 96)], a1);
  return v1;
}

uint64_t sub_22D7D21C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v3 + 4);
  sub_22D7D1FB4(a1);
  os_unfair_lock_unlock(v3 + 4);
  return swift_endAccess();
}

uint64_t sub_22D7D2228(uint64_t a1)
{
  v3 = *v1;
  sub_22D7D257C(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_22D7D22A4(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_22D7D21C0(v9);
  return sub_22D7D23B8;
}

void sub_22D7D23B8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_22D7D257C(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_22D7D257C(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

char *Atomic.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t Atomic.__deallocating_deinit()
{
  Atomic.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22D7D257C(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - v5;
  v7 = v1[2];
  swift_beginAccess();
  os_unfair_lock_lock(v7 + 4);
  swift_endAccess();
  (*(v4 + 16))(v6, a1, v3);
  sub_22D7D2054(v6);
  swift_beginAccess();
  os_unfair_lock_unlock(v7 + 4);
  return swift_endAccess();
}

uint64_t sub_22D7D26A0(uint64_t a1)
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

unint64_t sub_22D7D281C()
{
  result = qword_280CD2D60;
  if (!qword_280CD2D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CD2D60);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

id sub_22D7D2880()
{
  result = [objc_allocWithZone(type metadata accessor for MTWatchActivityManager()) init];
  qword_27DA035B8 = result;
  return result;
}

id MTWatchActivityManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static MTWatchActivityManager.shared.getter()
{
  if (qword_27DA01A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27DA035B8;

  return v0;
}

void static MTWatchActivityManager.shared.setter(uint64_t a1)
{
  if (qword_27DA01A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27DA035B8;
  qword_27DA035B8 = a1;
}

uint64_t (*static MTWatchActivityManager.shared.modify(uint64_t a1))(void)
{
  if (qword_27DA01A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_22D7D2B6C@<X0>(void *a1@<X8>)
{
  if (qword_27DA01A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27DA035B8;
  *a1 = qword_27DA035B8;

  return v2;
}

void sub_22D7D2BF8(id *a1)
{
  v1 = qword_27DA01A20;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27DA035B8;
  qword_27DA035B8 = v2;
}

id MTWatchActivityManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18MobileTimerSupport22MTWatchActivityManager_activityManager;
  if (qword_27DA019C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&v0[v2] = qword_27DA02490;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  sub_22D81A198();
  return objc_msgSendSuper2(&v4, sel_init);
}

id MTWatchActivityManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22D7D3094()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - v2;
  v5[0] = &unk_22D825408;
  v5[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_22D7D31CC()
{
  sub_22D81B0B8();
  sub_22D81B088();
  sub_22D81B098();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7D34F8(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_22D81A918();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_22D81AE08();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  sub_22D81AC38();
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03650, &qword_22D825568);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03658, &qword_22D825570);
  v2[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03660, &qword_22D825578);
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7D3750, 0, 0);
}

uint64_t sub_22D7D3750()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {
    v3 = v0[17];
    v2 = v0[18];
    v4 = v0[8];
    sub_22D7D5CD8();
    v0[6] = [v4 snoozeDuration];
    sub_22D7D9E00();
    sub_22D7D9E54();
    sub_22D7D9EA8();
    sub_22D81B148();
    sub_22D81AD98();
    v5 = sub_22D81ADA8();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    sub_22D7D6998(v4);
    v6 = *MEMORY[0x277CB9960];
    v7 = sub_22D81ADF8();
    v8 = *(v7 - 8);
    (*(v8 + 104))(v3, v6, v7);
    (*(v8 + 56))(v3, 0, 1, v7);
    sub_22D7D6524(v4);
    sub_22D81AC28();
    v9 = sub_22D7D9CF4();
    sub_22D81B008();
    sub_22D81B0B8();
    v0[23] = sub_22D81B088();
    v10 = [v4 alarmID];
    sub_22D81A8F8();

    v17 = (*MEMORY[0x277CB9AE0] + MEMORY[0x277CB9AE0]);
    v11 = swift_task_alloc();
    v0[24] = v11;
    *v11 = v0;
    v11[1] = sub_22D7D3AE0;
    v12 = v0[21];
    v13 = v0[14];
    v14 = v0[11];

    return v17(v13, v14, v12, &type metadata for MTAlarmCustomContent, v9);
  }

  else
  {

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_22D7D3AE0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v3 = sub_22D7D3D54;
  }

  else
  {
    v5 = v2[13];
    v4 = v2[14];
    v7 = v2[11];
    v6 = v2[12];
    v10 = v2 + 9;
    v8 = v2[9];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v3 = sub_22D7D3C84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D7D3C84()
{
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7D3D54()
{
  if (qword_27DA01A28 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_22D81ACA8();
  __swift_project_value_buffer(v2, qword_27DA0D3B8);
  v3 = v1;
  v4 = sub_22D81AC88();
  v5 = sub_22D81B608();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  v8 = v0[22];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22D741000, v4, v5, "Error encountered while scheduling alarm: %@", v9, 0xCu);
    sub_22D764440(v10, &qword_27DA03628, &qword_22D825548);
    MEMORY[0x2318D2D80](v10, -1, -1);
    MEMORY[0x2318D2D80](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[20] + 8))(v0[21], v0[19]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_22D7D4008(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = v12;
  v18 = v17;
  v19 = v13;
  sub_22D81A198();
  v14 = a1;
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_22D7D41B4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22D81A918();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_22D81AE08();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  sub_22D81AC38();
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03650, &qword_22D825568);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03658, &qword_22D825570);
  v2[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03660, &qword_22D825578);
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7D440C, 0, 0);
}

uint64_t sub_22D7D440C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  v2 = v0[15];
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[6];
    sub_22D7D5CD8();
    [v4 duration];
    [v4 duration];
    sub_22D81AD98();
    v5 = sub_22D81ADA8();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    v6 = sub_22D81ADF8();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    sub_22D7D6738(v4);
    sub_22D81AC28();
    v7 = sub_22D7D9CF4();
    sub_22D81B008();
    sub_22D81B0B8();
    v0[21] = sub_22D81B088();
    v8 = [v4 timerID];
    sub_22D81A8F8();

    v15 = (*MEMORY[0x277CB9AE0] + MEMORY[0x277CB9AE0]);
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_22D7D4704;
    v10 = v0[19];
    v11 = v0[12];
    v12 = v0[9];

    return v15(v11, v12, v10, &type metadata for MTAlarmCustomContent, v7);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_22D7D4704()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    (*(v2[8] + 8))(v2[9], v2[7]);

    v3 = sub_22D7D4978;
  }

  else
  {
    v5 = v2[11];
    v4 = v2[12];
    v7 = v2[9];
    v6 = v2[10];
    v10 = v2 + 7;
    v8 = v2[7];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v3 = sub_22D7D48A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D7D48A8()
{
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7D4978()
{
  if (qword_27DA01A28 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_22D81ACA8();
  __swift_project_value_buffer(v2, qword_27DA0D3B8);
  v3 = v1;
  v4 = sub_22D81AC88();
  v5 = sub_22D81B608();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[23];
  v8 = v0[20];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22D741000, v4, v5, "Error encountered while scheduling timer: %@", v9, 0xCu);
    sub_22D764440(v10, &qword_27DA03628, &qword_22D825548);
    MEMORY[0x2318D2D80](v10, -1, -1);
    MEMORY[0x2318D2D80](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[18] + 8))(v0[19], v0[17]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_22D7D4C2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22D7D4C4C, 0, 0);
}

uint64_t sub_22D7D4C4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_22D7D5CD8();
    sub_22D81B0B8();
    sub_22D81B088();
    sub_22D81A398();
    sub_22D81B0A8();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22D7D4EE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22D7D4F04, 0, 0);
}

uint64_t sub_22D7D4F04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_22D7D5CD8();
    sub_22D81B0B8();
    sub_22D81B088();
    sub_22D81A398();
    sub_22D81B058();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22D7D5160(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_22D81A918();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D81A8F8();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22D7D528C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22D7D52AC, 0, 0);
}

uint64_t sub_22D7D52AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_22D7D5CD8();
    sub_22D81B0B8();
    sub_22D81B088();
    sub_22D81A398();
    sub_22D81B078();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22D7D5544(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22D7D5564, 0, 0);
}

uint64_t sub_22D7D5564()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_22D7D5CD8();
    sub_22D81B0B8();
    sub_22D81B088();
    sub_22D81A398();
    sub_22D81B048();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22D7D57FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v21 = a5;
  v19[1] = a2;
  v19[2] = a3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = v19 - v7;
  v9 = sub_22D81A918();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v10 + 32))(v15 + v14, v12, v9);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v20;
  *(v16 + 24) = v15;
  v23 = v17;
  v24 = v16;
  sub_22D81A198();
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  (*(v6 + 8))(v8, v22);
}

uint64_t sub_22D7D5A5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22D7D5A7C, 0, 0);
}

uint64_t sub_22D7D5A7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_22D7D5CD8();
    sub_22D81B0B8();
    sub_22D81B088();
    sub_22D81A398();
    sub_22D81B068();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22D7D5CD8()
{
  v1 = sub_22D81B018();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v57 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v67 = &v57 - v6;
  MEMORY[0x28223BE20](v5);
  v58 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03618, &qword_22D825538);
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03620, &qword_22D825540);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v57 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  v66 = sub_22D81B0B8();
  sub_22D81B088();
  v59 = v0;
  v20 = *&v0[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_daemonBundleID];
  v21 = *&v0[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_daemonBundleID + 8];
  v68 = v19;
  v22 = v21;
  v65 = v20;
  sub_22D81B028();
  v64 = v22;
  v63 = 0;

  v23 = v2;
  v24 = *(v2 + 56);
  v25 = v68;
  v24(v68, 0, 1, v1);
  v26 = *(v23 + 104);
  v61 = *MEMORY[0x277CB9AB0];
  v62 = v23 + 104;
  v60 = v26;
  (v26)(v17);
  v24(v17, 0, 1, v1);
  v27 = v23;
  v28 = *(v8 + 48);
  sub_22D7D9D48(v25, v10);
  sub_22D7D9D48(v17, &v10[v28]);
  v29 = *(v23 + 48);
  if (v29(v10, 1, v1) == 1)
  {
    sub_22D764440(v17, &qword_27DA03620, &qword_22D825540);
    if (v29(&v10[v28], 1, v1) == 1)
    {
      sub_22D764440(v10, &qword_27DA03620, &qword_22D825540);
      return sub_22D764440(v68, &qword_27DA03620, &qword_22D825540);
    }
  }

  else
  {
    sub_22D7D9D48(v10, v14);
    if (v29(&v10[v28], 1, v1) != 1)
    {
      v43 = v58;
      (*(v23 + 32))(v58, &v10[v28], v1);
      sub_22D7D9DB8(&qword_27DA03630, MEMORY[0x277CB9AC8], MEMORY[0x277CB9AD0]);
      v44 = sub_22D81B1F8();
      v45 = *(v23 + 8);
      v45(v43, v1);
      sub_22D764440(v17, &qword_27DA03620, &qword_22D825540);
      v45(v14, v1);
      v27 = v23;
      sub_22D764440(v10, &qword_27DA03620, &qword_22D825540);
      if (v44)
      {
        return sub_22D764440(v68, &qword_27DA03620, &qword_22D825540);
      }

      goto LABEL_7;
    }

    sub_22D764440(v17, &qword_27DA03620, &qword_22D825540);
    (*(v23 + 8))(v14, v1);
  }

  sub_22D764440(v10, &qword_27DA03618, &qword_22D825538);
LABEL_7:
  if (qword_27DA01A28 != -1)
  {
    swift_once();
  }

  v30 = sub_22D81ACA8();
  v31 = __swift_project_value_buffer(v30, qword_27DA0D3B8);
  v32 = v59;
  v59 = v31;
  v33 = sub_22D81AC88();
  v34 = sub_22D81B5F8();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v67;
  v37 = v65;
  v58 = v32;
  if (v35)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v69[0] = v39;
    *v38 = 136315394;
    *(v38 + 4) = sub_22D7D7C10(v37, v64, v69);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_22D7D7C10(*&v32[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID], *&v32[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID + 8], v69);
    _os_log_impl(&dword_22D741000, v33, v34, "Requesting authorization for %s and %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318D2D80](v39, -1, -1);
    MEMORY[0x2318D2D80](v38, -1, -1);
  }

  v40 = v61;
  sub_22D81B088();
  v41 = v60;
  v60(v36, v40, v1);
  v42 = v63;
  sub_22D81B038();
  if (v42)
  {
    (*(v27 + 8))(v36, v1);

    v49 = v42;
    v50 = sub_22D81AC88();
    v51 = sub_22D81B608();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      v54 = v42;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v55;
      *v53 = v55;
      _os_log_impl(&dword_22D741000, v50, v51, "Error encountered while requesting authorization: %@", v52, 0xCu);
      sub_22D764440(v53, &qword_27DA03628, &qword_22D825548);
      MEMORY[0x2318D2D80](v53, -1, -1);
      MEMORY[0x2318D2D80](v52, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v46 = v40;
    v47 = *(v27 + 8);
    v47(v36, v1);

    sub_22D81B088();
    v48 = v57;
    v41(v57, v46, v1);
    sub_22D81B038();

    v47(v48, v1);
  }

  return sub_22D764440(v68, &qword_27DA03620, &qword_22D825540);
}

uint64_t sub_22D7D6524(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03608, &qword_22D825528);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03610, &qword_22D825530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_22D81AE58();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D81AEB8();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = a1;
  sub_22D7F5208(v12, v10);
  v13 = v12;
  sub_22D7F58B0(v13, v7);
  v14 = sub_22D81AE88();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_22D81AE68();
  v15 = [v13 isSleepAlarm];
  v17 = 0;
  v18 = v15;
  sub_22D81AD68();
  sub_22D7D9CF4();
  return sub_22D81AE18();
}

uint64_t sub_22D7D6738(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03608, &qword_22D825528);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03610, &qword_22D825530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_22D81AE58();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D81AEB8();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = a1;
  sub_22D7F5CE0(v12, v10);
  v13 = v12;
  sub_22D7F62F8(v13, v7);
  v14 = sub_22D81AEA8();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  sub_22D7F66D4(v13, v4);
  v15 = sub_22D81AE88();
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
  sub_22D81AE68();
  v17 = 1;
  v18 = 2;
  sub_22D81AD68();
  sub_22D7D9CF4();
  return sub_22D81AE18();
}

uint64_t sub_22D7D6998(void *a1)
{
  v2 = sub_22D81ADB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22D81ADD8();
  MEMORY[0x28223BE20](v6 - 8);
  result = [a1 hour];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = [a1 minute];
  if (result < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_22D81ADC8();
  if ([a1 repeats])
  {
    *v5 = sub_22D7D6B44([a1 repeatSchedule]);
    v8 = MEMORY[0x277CB9958];
  }

  else
  {
    v8 = MEMORY[0x277CB9950];
  }

  (*(v3 + 104))(v5, *v8, v2);
  return sub_22D81ADE8();
}

uint64_t sub_22D7D6B44(char a1)
{
  LOBYTE(v1) = a1;
  v2 = ~a1;
  v3 = sub_22D81A938();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  if ((v2 & 0x7F) != 0)
  {
    v18 = MEMORY[0x277D84FA0];
    if (v1)
    {
      goto LABEL_14;
    }

    if ((v1 & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_5:
    if ((v1 & 4) == 0)
    {
LABEL_6:
      if ((v1 & 8) != 0)
      {
        goto LABEL_17;
      }

LABEL_7:
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_18;
      }

LABEL_8:
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_19;
      }

LABEL_9:
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_11;
      }

LABEL_10:
      (*(v4 + 104))(v7, *MEMORY[0x277CC96E0], v3);
      sub_22D7D8474(v9, v7);
      (*(v4 + 8))(v9, v3);
      goto LABEL_11;
    }

    while (1)
    {
      (*(v4 + 104))(v7, *MEMORY[0x277CC9700], v3);
      sub_22D7D8474(v9, v7);
      (*(v4 + 8))(v9, v3);
      if ((v1 & 8) == 0)
      {
        goto LABEL_7;
      }

LABEL_17:
      (*(v4 + 104))(v7, *MEMORY[0x277CC96F8], v3);
      sub_22D7D8474(v9, v7);
      (*(v4 + 8))(v9, v3);
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_8;
      }

LABEL_18:
      (*(v4 + 104))(v7, *MEMORY[0x277CC96D0], v3);
      sub_22D7D8474(v9, v7);
      (*(v4 + 8))(v9, v3);
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_9;
      }

LABEL_19:
      (*(v4 + 104))(v7, *MEMORY[0x277CC96F0], v3);
      sub_22D7D8474(v9, v7);
      (*(v4 + 8))(v9, v3);
      if ((v1 & 0x40) != 0)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = v18;
      v3 = *(v18 + 16);
      if (!v3)
      {
        break;
      }

      v12 = sub_22D7E8800(*(v18 + 16), 0);
      v1 = sub_22D7E9878(&v17, (v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v3, v15);
      sub_22D792FD0(v17);
      if (v1 == v3)
      {
        return v12;
      }

      __break(1u);
LABEL_14:
      (*(v4 + 104))(v7, *MEMORY[0x277CC96D8], v3);
      sub_22D7D8474(v9, v7);
      (*(v4 + 8))(v9, v3);
      if ((v1 & 2) == 0)
      {
        goto LABEL_5;
      }

LABEL_15:
      (*(v4 + 104))(v7, *MEMORY[0x277CC96E8], v3);
      sub_22D7D8474(v9, v7);
      (*(v4 + 8))(v9, v3);
      if ((v1 & 4) == 0)
      {
        goto LABEL_6;
      }
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA03870, &unk_22D825C90);
    v10 = *(v4 + 72);
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_22D821050;
    v13 = v12 + v11;
    v14 = *(v4 + 104);
    v14(v13, *MEMORY[0x277CC96D8], v3);
    v14(v13 + v10, *MEMORY[0x277CC96E8], v3);
    v14(v13 + 2 * v10, *MEMORY[0x277CC9700], v3);
    v14(v13 + 3 * v10, *MEMORY[0x277CC96F8], v3);
    v14(v13 + 4 * v10, *MEMORY[0x277CC96D0], v3);
    v14(v13 + 5 * v10, *MEMORY[0x277CC96F0], v3);
    v14(v13 + 6 * v10, *MEMORY[0x277CC96E0], v3);
  }

  return v12;
}

id AlarmKitAdoptionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AlarmKitAdoptionManager.init()()
{
  v1 = &v0[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID];
  *v1 = 0xD000000000000015;
  *(v1 + 1) = 0x800000022D828220;
  v2 = &v0[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_daemonBundleID];
  *v2 = 0xD000000000000016;
  *(v2 + 1) = 0x800000022D82B260;
  v3 = OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_queue;
  type metadata accessor for SerialTaskQueue(0);
  swift_allocObject();
  *&v0[v3] = SerialTaskQueue.init()();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AlarmKitAdoptionManager();
  return objc_msgSendSuper2(&v5, sel_init);
}

id AlarmKitAdoptionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlarmKitAdoptionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22D7D72B0()
{
  v0 = sub_22D81ACA8();
  __swift_allocate_value_buffer(v0, qword_27DA0D3B8);
  __swift_project_value_buffer(v0, qword_27DA0D3B8);
  return sub_22D81AC98();
}

uint64_t sub_22D7D7330()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22D744B0C;

  return sub_22D7D31B0();
}

uint64_t sub_22D7D73BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22D744B08;

  return sub_22D7D34F8(v2, v3);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D7D7494()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22D744B08;

  return sub_22D7D41B4(v2, v3);
}

uint64_t sub_22D7D752C()
{
  v2 = *(sub_22D81A918() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22D744B08;

  return sub_22D7D4C2C(v4, v0 + v3);
}

uint64_t sub_22D7D7604()
{
  v2 = *(sub_22D81A918() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22D744B08;

  return sub_22D7D4EE4(v4, v0 + v3);
}

uint64_t sub_22D7D76DC()
{
  v2 = *(sub_22D81A918() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22D744B08;

  return sub_22D7D528C(v4, v0 + v3);
}

uint64_t sub_22D7D77B4()
{
  v2 = *(sub_22D81A918() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22D744B08;

  return sub_22D7D5544(v4, v0 + v3);
}

uint64_t sub_22D7D788C()
{
  v2 = *(sub_22D81A918() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22D744B0C;

  return sub_22D7D5A5C(v4, v0 + v3);
}

uint64_t sub_22D7D7B40(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22D7D7BB4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_22D7D7C10(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_22D7D7C10(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_22D81A398();
  v6 = sub_22D7D7CDC(v11, 0, 0, 1, a1, a2);
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
    sub_22D7507C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22D7D7CDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22D7D7DE8(a5, a6);
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
    result = sub_22D81B878();
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

void *sub_22D7D7DE8(uint64_t a1, unint64_t a2)
{
  v3 = sub_22D7D7E34(a1, a2);
  sub_22D7D7F64(&unk_2840D4EF0);
  return v3;
}

void *sub_22D7D7E34(uint64_t a1, unint64_t a2)
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

  v6 = sub_22D7D8050(v5, 0);
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

  result = sub_22D81B878();
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
        v10 = sub_22D81B358();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22D7D8050(v10, 0);
        result = sub_22D81B828();
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

uint64_t sub_22D7D7F64(uint64_t result)
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

  result = sub_22D7D80C4(result, v11, 1, v3);
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

void *sub_22D7D8050(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03638, &qword_22D825550);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22D7D80C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03638, &qword_22D825550);
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

_BYTE **sub_22D7D81B8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_22D7D81C8(_BYTE *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = sub_22D8038C4(*(*v2 + 40), a2);
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v26 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      if (v8 <= 2)
      {
        if (*(*(v4 + 48) + v7))
        {
          if (v8 == 1)
          {
            v9 = 0x7961646E6F6DLL;
          }

          else
          {
            v9 = 0x79616473657574;
          }

          if (v8 == 1)
          {
            v10 = 0xE600000000000000;
          }

          else
          {
            v10 = 0xE700000000000000;
          }
        }

        else
        {
          v9 = 0x7961646E7573;
          v10 = 0xE600000000000000;
        }
      }

      else if (*(*(v4 + 48) + v7) > 4u)
      {
        if (v8 == 5)
        {
          v10 = 0xE600000000000000;
          v9 = 0x796164697266;
        }

        else
        {
          v10 = 0xE800000000000000;
          v9 = 0x7961647275746173;
        }
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x616473656E646577;
        }

        else
        {
          v9 = 0x7961647372756874;
        }

        if (v8 == 3)
        {
          v10 = 0xE900000000000079;
        }

        else
        {
          v10 = 0xE800000000000000;
        }
      }

      v11 = 0x7961646E7573;
      v12 = 0x7961647275746173;
      if (v3 == 5)
      {
        v12 = 0x796164697266;
        v13 = 0xE600000000000000;
      }

      else
      {
        v13 = 0xE800000000000000;
      }

      v14 = 0x7961647372756874;
      if (v3 == 3)
      {
        v14 = 0x616473656E646577;
      }

      v15 = 0xE900000000000079;
      if (v3 != 3)
      {
        v15 = 0xE800000000000000;
      }

      if (v3 <= 4u)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0x79616473657574;
      if (v3 == 1)
      {
        v16 = 0x7961646E6F6DLL;
      }

      v17 = 0xE700000000000000;
      if (v3 == 1)
      {
        v17 = 0xE600000000000000;
      }

      if (v3)
      {
        v11 = v16;
        v18 = v17;
      }

      else
      {
        v18 = 0xE600000000000000;
      }

      v19 = v3 <= 2u ? v11 : v12;
      v20 = v3 <= 2u ? v18 : v13;
      if (v9 == v19 && v10 == v20)
      {
        break;
      }

      v21 = sub_22D81BB08();

      if (v21)
      {
        goto LABEL_50;
      }

      v7 = (v7 + 1) & v26;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

LABEL_50:
    result = 0;
    LOBYTE(v3) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_48:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    sub_22D7D8DD4(v3, v7, isUniquelyReferenced_nonNull_native);
    *v24 = v27;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_22D7D8474(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22D81A938();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22D7D9DB8(&qword_27DA035F0, MEMORY[0x277CC9708], MEMORY[0x277CC9710]);
  v33 = a2;
  v11 = sub_22D81B1C8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_22D7D9DB8(&qword_27DA035F8, MEMORY[0x277CC9708], MEMORY[0x277CC9718]);
      v21 = sub_22D81B1F8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_22D7D90C8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22D7D8754(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03640, &qword_22D825558);
  result = sub_22D81B808();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_22D81BBC8();
      sub_22D81B328();

      result = sub_22D81BC18();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22D7D8A78(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22D81A938();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03600, &qword_22D825520);
  result = sub_22D81B808();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_22D7D9DB8(&qword_27DA035F0, MEMORY[0x277CC9708], MEMORY[0x277CC9710]);
      result = sub_22D81B1C8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_22D7D8DD4(uint64_t result, unint64_t a2, char a3)
{
  v29 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_55;
  }

  if (a3)
  {
    sub_22D7D8754(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_22D7D936C();
      goto LABEL_55;
    }

    sub_22D7D96E4(v5 + 1);
  }

  v7 = *v3;
  result = sub_22D8038C4(*(*v3 + 40), v29);
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 <= 2)
      {
        if (*(*(v7 + 48) + a2))
        {
          if (v10 == 1)
          {
            v11 = 0x7961646E6F6DLL;
          }

          else
          {
            v11 = 0x79616473657574;
          }

          if (v10 == 1)
          {
            v12 = 0xE600000000000000;
          }

          else
          {
            v12 = 0xE700000000000000;
          }
        }

        else
        {
          v11 = 0x7961646E7573;
          v12 = 0xE600000000000000;
        }
      }

      else if (*(*(v7 + 48) + a2) > 4u)
      {
        if (v10 == 5)
        {
          v12 = 0xE600000000000000;
          v11 = 0x796164697266;
        }

        else
        {
          v12 = 0xE800000000000000;
          v11 = 0x7961647275746173;
        }
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0x616473656E646577;
        }

        else
        {
          v11 = 0x7961647372756874;
        }

        if (v10 == 3)
        {
          v12 = 0xE900000000000079;
        }

        else
        {
          v12 = 0xE800000000000000;
        }
      }

      v13 = 0x7961646E7573;
      v14 = 0x7961647275746173;
      if (v29 == 5)
      {
        v14 = 0x796164697266;
        v15 = 0xE600000000000000;
      }

      else
      {
        v15 = 0xE800000000000000;
      }

      v16 = 0x7961647372756874;
      if (v29 == 3)
      {
        v16 = 0x616473656E646577;
      }

      v17 = 0xE900000000000079;
      if (v29 != 3)
      {
        v17 = 0xE800000000000000;
      }

      if (v29 <= 4u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0x79616473657574;
      if (v29 == 1)
      {
        v18 = 0x7961646E6F6DLL;
      }

      v19 = 0xE700000000000000;
      if (v29 == 1)
      {
        v19 = 0xE600000000000000;
      }

      if (v29)
      {
        v13 = v18;
        v20 = v19;
      }

      else
      {
        v20 = 0xE600000000000000;
      }

      v21 = v29 <= 2u ? v13 : v14;
      v22 = v29 <= 2u ? v20 : v15;
      if (v11 == v21 && v12 == v22)
      {
        goto LABEL_58;
      }

      v23 = sub_22D81BB08();

      if (v23)
      {
        goto LABEL_59;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_55:
  v24 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + a2) = v29;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_58:

LABEL_59:
  result = sub_22D81BB48();
  __break(1u);
  return result;
}

uint64_t sub_22D7D90C8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_22D81A938();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22D7D8A78(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22D7D94AC();
      goto LABEL_12;
    }

    sub_22D7D99D8(v10 + 1);
  }

  v12 = *v3;
  sub_22D7D9DB8(&qword_27DA035F0, MEMORY[0x277CC9708], MEMORY[0x277CC9710]);
  v13 = sub_22D81B1C8();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_22D7D9DB8(&qword_27DA035F8, MEMORY[0x277CC9708], MEMORY[0x277CC9718]);
      v21 = sub_22D81B1F8();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22D81BB48();
  __break(1u);
  return result;
}

void *sub_22D7D936C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03640, &qword_22D825558);
  v2 = *v0;
  v3 = sub_22D81B7F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_22D7D94AC()
{
  v1 = v0;
  v2 = sub_22D81A938();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03600, &qword_22D825520);
  v6 = *v0;
  v7 = sub_22D81B7F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_22D7D96E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03640, &qword_22D825558);
  result = sub_22D81B808();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_22D81BBC8();
      sub_22D81B328();

      result = sub_22D81BC18();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22D7D99D8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22D81A938();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03600, &qword_22D825520);
  v7 = sub_22D81B808();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_22D7D9DB8(&qword_27DA035F0, MEMORY[0x277CC9708], MEMORY[0x277CC9710]);
      result = sub_22D81B1C8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}