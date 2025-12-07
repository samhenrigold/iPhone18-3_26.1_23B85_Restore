void *sub_2680878A8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, void *(*a3)(uint64_t *__return_ptr)@<X1>)
{
  result = sub_2680878F0(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

void *sub_2680878F0(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t static SiriNLOverridePrimaryStore.sharedTrieStore.getter(uint64_t a1)
{
  if (qword_281319248 != -1)
  {
    a1 = OUTLINED_FUNCTION_9_2(&qword_281319248);
  }

  v1 = qword_281319250;
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_17_1();
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_268087B04(&v5, v3);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

uint64_t sub_2680879E4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_281319230 != -1)
  {
    swift_once();
  }

  result = swift_weakLoadStrong();
  v3 = result;
  if (!result)
  {
    type metadata accessor for SiriNLOverridePrimaryStore();
    v3 = swift_allocObject();
    *(v3 + 16) = 0;
    result = swift_weakAssign();
  }

  *a1 = v3;
  return result;
}

void OUTLINED_FUNCTION_16_2()
{
  *(v3 - 120) = v1;
  *(v3 - 112) = v0;
  *(v3 - 128) = v2;
}

BOOL sub_268087B20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_268087C68(0, &qword_281318F40, &off_279C327C0);

  v6 = sub_268087CF4(a1, a2);
  v7 = v6;
  if (v6)
  {
    v8 = *(v3 + 16);
    *(v3 + 16) = v6;
    v9 = v6;

    v10 = sub_2680B424C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    sub_2680B406C(v10, &dword_268086000, off_2813194A8, "TrieOverrides: Trie bundle successfully initialized", 51, 2, MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    sub_2680B406C(v11, &dword_268086000, off_2813194A8, "TrieOverrides: Trie bundle not initialized", 42, 2, MEMORY[0x277D84F90]);
  }

  return v7 != 0;
}

uint64_t sub_268087C68(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_268087CF4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2680B40BC();

  v4 = [v2 init_];

  return v4;
}

void sub_268087DC0(uint64_t a1)
{
  OUTLINED_FUNCTION_54();
  v3 = v2;
  v109 = sub_2680B37BC();
  OUTLINED_FUNCTION_4();
  v112 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6();
  v108 = v7 - v6;
  OUTLINED_FUNCTION_21();
  v107 = sub_2680B386C();
  OUTLINED_FUNCTION_4();
  v111 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14_1();
  v10 = sub_2680B38AC();
  OUTLINED_FUNCTION_4();
  v86 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6();
  v85 = v14 - v13;
  OUTLINED_FUNCTION_21();
  v15 = sub_2680B403C();
  v16 = OUTLINED_FUNCTION_7(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6();
  v84 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
  v20 = OUTLINED_FUNCTION_7(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v92 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v84 - v23;
  v88 = sub_2680B3E9C();
  OUTLINED_FUNCTION_4();
  v110 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v87 = v27;
  MEMORY[0x28223BE20](v28);
  v101 = &v84 - v29;
  v30 = OUTLINED_FUNCTION_21();
  v31 = type metadata accessor for SiriNLOverride(v30);
  OUTLINED_FUNCTION_4();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6();
  v99 = v36 - v35;
  OUTLINED_FUNCTION_21();
  v37 = sub_2680B3B8C();
  OUTLINED_FUNCTION_4();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6();
  v43 = v42 - v41;
  (*(v39 + 104))(v42 - v41, *MEMORY[0x277D5DCD0], v37);
  sub_268088E4C(v3, v43);
  v45 = v44;
  (*(v39 + 8))(v43, v37);
  v98 = *(v45 + 16);
  if (!v98)
  {
LABEL_16:

    OUTLINED_FUNCTION_53();
    return;
  }

  OUTLINED_FUNCTION_33();
  v96 = *(v31 + 60);
  v95 = v46 + v47;
  v100 = (v110 + 32);
  v105 = (v112 + 8);
  v106 = v86 + 16;
  v103 = v86 + 8;
  v104 = v111 + 8;
  v89 = (v110 + 8);
  v48 = v92;
  OUTLINED_FUNCTION_13_1();
  *(v51 - 256) = v31;
  v94 = v33;
  v52 = v99;
  v90 = v24;
  v97 = v49;
  while (v50 < *(v49 + 16))
  {
    v102 = v50;
    OUTLINED_FUNCTION_6_3();
    sub_2680898A4(v53, v52, v54);
    sub_26808B53C(v52 + v96, v48);
    if (__swift_getEnumTagSinglePayload(v48, 1, v33) != 1)
    {
      v83 = *v100;
      v60 = v87;
      (*v100)(v87, v48, v33);
      v83(v24, v60, v33);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v33);
      goto LABEL_9;
    }

    sub_26808C18C(v48, &qword_2802492A8, &unk_2680B5680);
    if (*(v52 + *(v31 + 56) + 8) >> 60 != 15)
    {
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
      v55 = OUTLINED_FUNCTION_15_1();
      sub_2680A155C(v55, v56);
      v57 = OUTLINED_FUNCTION_15_1();
      sub_26808A6DC(v57, v58);
      sub_2680B402C();
      sub_26808A748();
      OUTLINED_FUNCTION_15_1();
      sub_2680B404C();
      v81 = OUTLINED_FUNCTION_15_1();
      sub_26808A734(v81, v82);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v33);
      v83 = *v100;
      v31 = v91;
LABEL_9:
      v83(v101, v24, v33);
      v61 = sub_2680B36FC();
      v62 = *(v61 + 16);
      if (v62)
      {
        v112 = sub_268087C68(0, &unk_281318F50, 0x277CCAC68);
        v63 = v86;
        OUTLINED_FUNCTION_33();
        v93 = v61;
        v33 = v61 + v64;
        v65 = *(v63 + 72);
        v110 = *(v63 + 16);
        v111 = v65;
        v66 = v85;
        do
        {
          (v110)(v66, v33, v10);
          sub_2680B387C();
          v67 = v1;
          v68 = sub_2680B385C();
          v70 = v69;
          v71 = v10;
          v72 = v108;
          sub_2680B37DC();
          v73 = sub_2680B378C();
          (*v105)(v72, v109);
          v74 = sub_268089678(v68, v70, v73 & 1, 0);

          v75 = OUTLINED_FUNCTION_21_1();
          v76(v75);
          v77 = OUTLINED_FUNCTION_20_1();
          v78(v77);
          v1 = v67;
          v10 = v71;
          v33 += v111;
          --v62;
        }

        while (v62);

        v48 = v92;
        OUTLINED_FUNCTION_13_1();
        v31 = *(v79 - 256);
      }

      else
      {

        v48 = v92;
      }

      (*v89)(v101, v33);
      OUTLINED_FUNCTION_4_4();
      v52 = v99;
      sub_26808984C(v99, v80);
      v24 = v90;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_4_4();
    v52 = v99;
    sub_26808984C(v99, v59);
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v33);
    sub_26808C18C(v24, &qword_2802492A8, &unk_2680B5680);
LABEL_15:
    v50 = v102 + 1;
    v49 = v97;
    if (v102 + 1 == v98)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t SiriNLOverridePrimaryStore.__deallocating_deinit()
{
  SiriNLOverridePrimaryStore.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t SiriNLOverridePrimaryStore.deinit()
{
  v1 = sub_2680B423C();
  if (qword_2813194A0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  sub_2680B406C(v1, &dword_268086000, off_2813194A8, "SiriNLUTrieOverridesStore deinit called", 39, 2, MEMORY[0x277D84F90]);

  return v0;
}

uint64_t *marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x26D610280](v7, 0x1000C8077774924);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x26D610280](v4 - 8, 0x10C80436913F5);
  }

  return a1;
}

uint64_t type metadata accessor for SiriNLOverride(uint64_t a1)
{
  result = qword_281319630;
  if (!qword_281319630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 68);

  return sub_2680B406C(v8, a2, v4, a4, 57, 2, v5);
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_5_5()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 200);

  return sub_2680915A8(v2, v3, type metadata accessor for SiriNLOverride);
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return sub_2680B2F5C();
}

uint64_t sub_268088C60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_281319160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_281319168 + 2) && (sub_26808CAC0(a1), (v4 & 1) != 0))
  {
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return sub_2680A3D04(v0, type metadata accessor for OverrideMatchResult);
}

uint64_t OUTLINED_FUNCTION_8_3()
{
  result = v0;
  *(v1 - 120) = *(*(v1 - 120) + 8);
  return result;
}

uint64_t sub_268088DF0(uint64_t a1)
{
  v2 = type metadata accessor for CacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_268088E4C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_54();
  v60 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492C0, &unk_2680B56F0);
  OUTLINED_FUNCTION_7(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v12 = sub_2680B2F3C();
  OUTLINED_FUNCTION_4();
  v59 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14_1();
  v15 = sub_2680B2EFC();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6();
  v21 = v20 - v19;
  v22 = type metadata accessor for RegexOverrideCache();
  v23 = sub_268089390(v7, v5);
  if (v23)
  {
    v24 = v23;
    v25 = sub_2680B423C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v26 = off_2813194A8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    OUTLINED_FUNCTION_12_0();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_2680B4FE0;
    v28 = *(v24 + 16);
    v29 = MEMORY[0x277D83C10];
    *(v27 + 56) = MEMORY[0x277D83B88];
    *(v27 + 64) = v29;
    *(v27 + 32) = v28;
    sub_2680B406C(v25, &dword_268086000, v26, "TrieOverrides: Returning %d cached regex match overrides", v52);
  }

  else
  {
    v55 = v11;
    v56 = v12;
    v53 = v21;
    v54 = v17;
    v57 = v22;
    v58 = v5;
    v30 = *(v60 + 16);
    if (v30)
    {
      v31 = v7;
      sub_2680B2EDC();
      v32 = v30;
      v33 = sub_2680B40BC();

      v34 = [v32 fetchRegexRuleIds:v33 overrideNamespace:sub_2680B3B4C()];

      v35 = sub_2680B41DC();
      v61 = v35;
      sub_2680B2F4C();
      v36 = v55;
      sub_2680B2F2C();
      (*(v59 + 8))(v3, v56);
      v37 = v15;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v15);
      v52 = v32;
      if (EnumTagSinglePayload == 1)
      {
        sub_26808C18C(v36, &qword_2802492C0, &unk_2680B56F0);
      }

      else
      {
        v41 = v53;
        v40 = v54;
        (*(v54 + 32))(v53, v36, v37);
        sub_2680B2EEC();
        v42 = sub_2680B40BC();

        v43 = [v32 fetchRegexRuleIds:v42 overrideNamespace:{sub_2680B3B4C(), v52}];

        v44 = sub_2680B41DC();
        sub_26808ADB0(v44);
        (*(v40 + 8))(v41, v37);
      }

      v45 = v61;

      v46 = sub_26808AFEC(v45);

      v47 = sub_2680B423C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v48 = off_2813194A8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
      OUTLINED_FUNCTION_12_0();
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_2680B4FE0;
      v50 = *(v46 + 16);
      v51 = MEMORY[0x277D83C10];
      *(v49 + 56) = MEMORY[0x277D83B88];
      *(v49 + 64) = v51;
      *(v49 + 32) = v50;
      sub_2680B406C(v47, &dword_268086000, v48, "TrieOverrides: Adding and caching %d regex match overrides", v52);

      sub_26808EE0C(v31, v58);
    }

    else
    {
      v39 = sub_2680B425C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      sub_2680B406C(v39, &dword_268086000, off_2813194A8, "TrieOverrides: Regex match failed because trie bundle not loaded", 64, 2, MEMORY[0x277D84F90]);
    }
  }

  OUTLINED_FUNCTION_53();
}

uint64_t sub_268089390(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CacheKey(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_1();
  (*(v7 + 16))(v2, a1);
  v8 = *(v6 + 28);
  sub_2680B3B8C();
  OUTLINED_FUNCTION_1_1();
  v10 = (*(v9 + 16))(v2 + v8, a2);
  if (qword_281319218 != -1)
  {
    v10 = OUTLINED_FUNCTION_0_1(&qword_281319218);
  }

  v11 = qword_281319220;
  v12 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  os_unfair_lock_lock(v11 + 4);
  sub_268087B04(&v16, v13);
  os_unfair_lock_unlock(v11 + 4);
  v14 = v16;
  sub_268088DF0(v2);
  return v14;
}

uint64_t type metadata accessor for CacheKey(uint64_t a1)
{
  result = qword_281319000;
  if (!qword_281319000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return sub_2680A28B4();
}

void *OUTLINED_FUNCTION_21_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_26808B1B8(v5, a2, a3, a4, v4);
}

id sub_268089678(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1;
  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  if (qword_281319330 != -1)
  {
    OUTLINED_FUNCTION_1_4();
    a1 = swift_once();
  }

  OUTLINED_FUNCTION_2_4(a1);
  os_unfair_lock_lock(&dword_281318FA0);
  swift_endAccess();
  if (qword_281319348 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  swift_beginAccess();
  v9 = sub_26808B4F4(v7, a2, v8, qword_281319350);
  if (v9)
  {
    v5 = v9;
    v10 = swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v11 = objc_allocWithZone(MEMORY[0x277CCAC68]);

    v10 = sub_26808B680(v7, a2, v8);
    if (!v4)
    {
      v13 = v10;
      swift_beginAccess();
      v5 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = qword_281319350;
      sub_268089994(v5, v7, a2, v8, isUniquelyReferenced_nonNull_native);
      qword_281319350 = v15;
      v10 = swift_endAccess();
    }
  }

  OUTLINED_FUNCTION_2_4(v10);
  os_unfair_lock_unlock(&dword_281318FA0);
  swift_endAccess();
  return v5;
}

uint64_t sub_26808984C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2680898A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_268089904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2680B452C();
  sub_2680B410C();
  MEMORY[0x26D6100D0](a3);
  sub_2680B454C();
  v4 = OUTLINED_FUNCTION_24();

  return sub_26808B75C(v4, v5, a3, v6);
}

void sub_268089994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_268089904(a2, a3, a4);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249288, &qword_2680B55B8);
  if ((sub_2680B43AC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_268089904(a2, a3, a4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    sub_2680B44AC();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v14);
    *(v19 + 8 * v14) = a1;
  }

  else
  {
    sub_26808B838(v14, a2, a3, a4, a1, v18);
  }
}

unint64_t OUTLINED_FUNCTION_12()
{
  v4 = *(v3 - 520);
  *(v4 + 16) = v0;
  return v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v2;
}

void OUTLINED_FUNCTION_6_4()
{
  v2 = *(v0 - 424);
  v3 = *(v0 - 416);

  sub_26808A734(v2, v3);
}

uint64_t static NSRegularExpression.resetCache()()
{
  if (qword_281319330 != -1)
  {
    OUTLINED_FUNCTION_1_4();
    swift_once();
  }

  swift_beginAccess();
  os_unfair_lock_lock(&dword_281318FA0);
  swift_endAccess();
  if (qword_281319348 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  swift_beginAccess();
  qword_281319350 = MEMORY[0x277D84F98];

  swift_beginAccess();
  os_unfair_lock_unlock(&dword_281318FA0);
  return swift_endAccess();
}

void static RegexOverrideCache.reset()()
{
  if (qword_281319218 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_281319218);
  }

  v0 = qword_281319220;
  os_unfair_lock_lock((qword_281319220 + 16));
  if (qword_281319160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_281319168 = MEMORY[0x277D84F98];

  os_unfair_lock_unlock(v0 + 4);
}

uint64_t sub_268089E88@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v82 = a6;
  v78 = a5;
  v71 = a3;
  v72 = a4;
  v8 = sub_2680B403C();
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v64 - v11;
  v83 = type metadata accessor for SiriNLOverride(0);
  MEMORY[0x28223BE20](v83);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2680B3B5C();
  v75 = *(v14 - 8);
  v76 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2680B3B8C();
  v77 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = a1[1];
  v22 = sub_2680B40BC();
  v23 = [a2 fetchSerializedNluRequestRule_];

  if (!v23)
  {
    v60 = sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      swift_once();
    }

    sub_2680B406C(v60, &dword_268086000, off_2813194A8, "TrieOverrides: did not fetch any rule", 37, 2, MEMORY[0x277D84F90]);
    return __swift_storeEnumTagSinglePayload(v82, 1, 1, v83);
  }

  v79 = sub_2680B2E4C();
  v80 = v24;

  v25 = sub_2680B40BC();
  v26 = [a2 fetchOverrideId_];

  if (!v26)
  {
    v36 = sub_2680B425C();
    if (qword_2813194A0 == -1)
    {
LABEL_16:
      sub_2680B406C(v36, &dword_268086000, off_2813194A8, "TrieOverrides: did not fetch any overrideId", 43, 2, MEMORY[0x277D84F90]);
LABEL_20:
      sub_26808A810(v79, v80);
      return __swift_storeEnumTagSinglePayload(v82, 1, 1, v83);
    }

LABEL_28:
    swift_once();
    goto LABEL_16;
  }

  v70 = v20;
  v69 = sub_2680B40CC();
  v28 = v27;
  v29 = [a2 fetchSerializedUserParse_];
  if (!v29)
  {

    v61 = sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      swift_once();
    }

    sub_2680B406C(v61, &dword_268086000, off_2813194A8, "TrieOverrides: did not fetch any userParse", 42, 2, MEMORY[0x277D84F90]);
    goto LABEL_20;
  }

  v30 = v29;
  v68 = v28;
  v67 = sub_2680B2E4C();
  v66 = v31;

  v32 = [a2 fetchOverrideTimeStamp_];
  v78 = sub_2680B2EDC();
  v65 = v33;
  v34 = v77;
  v77[13](v19, *MEMORY[0x277D5DCD0], v17);

  v35 = sub_2680B3B4C();
  v37 = v34[1];
  v36 = (v34 + 1);
  v37(v19, v17);
  if (v35 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_25;
  }

  v77 = v32;
  v36 = v70;
  if (v35 > 0x7FFFFFFF)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v39 = v75;
  v38 = v76;
  (*(v75 + 104))(v16, *MEMORY[0x277D5DCA8], v76);
  v40 = sub_2680B3B4C();
  (*(v39 + 8))(v16, v38);
  if (v40 < 0xFFFFFFFF80000000)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v40 > 0x7FFFFFFF)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v41 = v83;
  v42 = &v13[v83[14]];
  *v42 = xmmword_2680B5660;
  v43 = v41[15];
  v44 = sub_2680B3E9C();
  v76 = v43;
  __swift_storeEnumTagSinglePayload(&v13[v43], 1, 1, v44);
  v45 = v72;
  *(v13 + 2) = v71;
  *(v13 + 3) = v45;
  *v13 = v36;
  *(v13 + 1) = v21;
  v46 = v65;
  *(v13 + 4) = v78;
  *(v13 + 5) = v46;
  *(v13 + 12) = v35;
  *(v13 + 13) = v40;
  v47 = v41[9];

  sub_2680B2E6C();
  v48 = sub_2680B2E9C();
  __swift_storeEnumTagSinglePayload(&v13[v47], 0, 1, v48);
  v13[v41[10]] = 1;
  v49 = &v13[v41[11]];
  v50 = v68;
  *v49 = v69;
  v49[1] = v50;
  v51 = &v13[v41[12]];
  v52 = v66;
  *v51 = v67;
  v51[1] = v52;
  *&v13[v41[13]] = 1;
  v53 = *v42;
  v54 = *(v42 + 1);
  v56 = v79;
  v55 = v80;
  sub_26808A6DC(v79, v80);
  sub_26808A734(v53, v54);
  *v42 = v56;
  *(v42 + 1) = v55;
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_26808A6DC(v56, v55);
  sub_2680B402C();
  sub_26808A748();
  v57 = v74;
  v58 = v81;
  sub_2680B404C();
  if (v58)
  {
    v59 = sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      swift_once();
    }

    sub_2680B406C(v59, &dword_268086000, off_2813194A8, "Unable to deserialize archived Siri_Nlu_Internal_NluRequestRule", 63, 2, MEMORY[0x277D84F90]);
    sub_26808A810(v56, v55);
  }

  else
  {
    sub_26808A810(v56, v55);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v44);
    sub_26808A7A0(v57, &v13[v76]);
  }

  v63 = v82;
  sub_26808A868(v13, v82, type metadata accessor for SiriNLOverride);
  return __swift_storeEnumTagSinglePayload(v63, 0, 1, v83);
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1)
{

  return sub_26808C12C(a1, v1, v2);
}

void sub_26808A6DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_26808A734(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_26808A810(result, a2);
  }
}

unint64_t sub_26808A748()
{
  result = qword_281319640[0];
  if (!qword_281319640[0])
  {
    sub_2680B3E9C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281319640);
  }

  return result;
}

uint64_t sub_26808A7A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_26808A810(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_26808A868(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_26808A8DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
      v10 = *(a4 + 60);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_26808A9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_27_1();
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249300, &unk_2680B58A0);
  OUTLINED_FUNCTION_7(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  v33 = type metadata accessor for SiriNLOverride(0);
  OUTLINED_FUNCTION_4();
  v29[1] = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v31 = v14;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v15);
  v17 = v29 - v16;
  v18 = *(v5 + 16);
  v19 = (v5 + 40);
  v20 = MEMORY[0x277D84F90];
  v30 = v7;
  if (v18)
  {
    while (1)
    {
      v21 = *v19;
      v32[0] = *(v19 - 1);
      v32[1] = v21;

      v7(v32);
      if (v3)
      {
        break;
      }

      OUTLINED_FUNCTION_17_3(v11, 1, v33);
      if (v22)
      {
        sub_26808C18C(v11, &qword_280249300, &unk_2680B58A0);
      }

      else
      {
        sub_26808AC2C(v11, v17);
        sub_26808AC2C(v17, v31);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_18();
          sub_26808B2B0();
          v20 = v27;
        }

        v24 = *(v20 + 16);
        if (v24 >= *(v20 + 24) >> 1)
        {
          sub_26808B2B0();
          v20 = v28;
        }

        *(v20 + 16) = v24 + 1;
        OUTLINED_FUNCTION_33();
        sub_26808AC2C(v31, v20 + v25 + *(v26 + 72) * v24);
        v7 = v30;
      }

      v19 += 2;
      if (!--v18)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_26808AC2C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_52();
  v5(v4);
  OUTLINED_FUNCTION_9();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_26808AC9C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
      v10 = *(a3 + 60);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_26808ADB0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_39_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26808AE98(result, 1, sub_26808AF10);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26808AE98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_26808AF10()
{
  OUTLINED_FUNCTION_28_0();
  if (v3)
  {
    OUTLINED_FUNCTION_17();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491C0, &qword_2680B5418);
    v9 = OUTLINED_FUNCTION_32_0();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_14_0();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_26808AFEC(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x28223BE20](a1);
    v12[2] = v4;
    v12[3] = v3;
    v12[4] = v5;
    v12[5] = v6;
    v7 = v4;
    sub_26808A9BC(sub_26808A6BC, v12, a1);
    v9 = v8;
  }

  else
  {
    v10 = sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v9 = MEMORY[0x277D84F90];
    sub_2680B406C(v10, &dword_268086000, off_2813194A8, "TrieOverrides: BuildNLOverrideFromTrieId failed because trie bundle not loaded", 78, 2, MEMORY[0x277D84F90]);
  }

  return v9;
}

uint64_t OUTLINED_FUNCTION_23_1(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return sub_2680B406C(v4, a2, a3, a4, 66, 0, v5);
}

void OUTLINED_FUNCTION_17_0()
{

  sub_26809F080();
}

uint64_t OUTLINED_FUNCTION_17_2@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

void *sub_26808B1B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_11_0();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_26808B2B0()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_21_0(v2, v5, &qword_2802491B0, "0%");
  v8 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for SiriNLOverride(v8);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_1_2(v9);
    sub_26808B38C(v10, v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void sub_26808B38C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_26_1();
  if (v8 && (a4(0), OUTLINED_FUNCTION_9(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_6_2();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_6_2();

    swift_arrayInitWithTakeFrontToBack();
  }
}

uint64_t OUTLINED_FUNCTION_10_4(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_2680B410C();
}

void *sub_26808B4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v5 = sub_268089904(a1, a2, a3);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a4 + 56) + 8 * v5);
  v8 = v7;
  return v7;
}

uint64_t sub_26808B53C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_20_0()
{

  sub_26809F080();
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{

  return MEMORY[0x28217E408](0, v1, a1);
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return sub_2680B384C();
}

id sub_26808B680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2680B40BC();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2680B2E1C();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_26808B75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = v13[2];
      v15 = *v13 == a1 && v13[1] == a2;
      if (v15 || (sub_2680B447C()) && v14 == a3)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_26808B838(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_26808B888(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2680B452C();
  sub_2680B410C();
  MEMORY[0x26D6100D0](v2);
  return sub_2680B454C();
}

BOOL sub_26808B904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v9 = sub_2680B447C();
  result = 0;
  if (v9)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2680B31FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B3DEC() & 1) != 0 && (sub_2680B3DDC(), v6 = sub_2680B31EC(), v7 = *(v3 + 8), v7(v5, v2), (v6))
  {
    sub_2680B3DDC();
    sub_2680B31CC();
    v7(v5, v2);
    sub_2680B2ECC();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_2680B2F5C();
  return __swift_storeEnumTagSinglePayload(a1, v8, 1, v9);
}

uint64_t sub_26808BAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492C0, &unk_2680B56F0);
  OUTLINED_FUNCTION_7(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_1();
  sub_2680B2F3C();
  OUTLINED_FUNCTION_4();
  v69 = v13;
  v70 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6();
  v16 = v15 - v14;
  v71 = sub_2680B2EFC();
  OUTLINED_FUNCTION_4();
  v67 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6();
  v66 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249258, &qword_2680B54E8);
  OUTLINED_FUNCTION_7(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v22);
  v24 = v65 - v23;
  v25 = *(v4 + 16);
  if (v25)
  {
    v65[3] = v4;
    v65[4] = v5;
    v65[1] = a2;
    v65[2] = a3;
    v73 = a2;
    v74 = a3;
    v26 = sub_2680B2F5C();
    OUTLINED_FUNCTION_9();
    (*(v27 + 16))(v24, a1, v26);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v26);
    sub_26808CA6C();
    v28 = v25;
    v65[0] = v6;
    v29 = v28;
    v30 = sub_2680B42EC();
    v32 = v31;
    sub_26808C18C(v24, &qword_280249258, &qword_2680B54E8);
    v73 = v30;
    v74 = v32;
    sub_2680B42CC();

    v33 = sub_2680B40BC();
    sub_2680B2EDC();
    v34 = sub_2680B40BC();

    v35 = sub_2680B3B4C();
    v68 = v29;
    v36 = v29;
    v37 = v65[0];
    v38 = [v36 fetchRuleId:v33 locale:v34 overrideNamespace:v35];

    v39 = sub_2680B41DC();
    v75 = v39;
    v40 = a1;
    sub_2680B2F4C();
    sub_2680B2F2C();
    (*(v69 + 8))(v16, v70);
    v41 = v71;
    if (__swift_getEnumTagSinglePayload(v37, 1, v71) == 1)
    {

      sub_26808C18C(v37, &qword_2802492C0, &unk_2680B56F0);
    }

    else
    {
      v45 = v66;
      v44 = v67;
      (*(v67 + 32))(v66, v37, v41);
      v46 = sub_2680B40BC();

      sub_2680B2EEC();
      v47 = sub_2680B40BC();

      v48 = [v68 fetchRuleId:v46 locale:v47 overrideNamespace:sub_2680B3B4C()];

      v49 = sub_2680B41DC();
      sub_26808ADB0(v49);
      (*(v44 + 8))(v45, v41);
    }

    v50 = sub_26808AFEC(v75);

    v51 = sub_2680B423C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v52 = off_2813194A8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_2680B5350;
    v54 = *(v50 + 16);
    v55 = MEMORY[0x277D83C10];
    *(v53 + 56) = MEMORY[0x277D83B88];
    *(v53 + 64) = v55;
    *(v53 + 32) = v54;
    v56 = type metadata accessor for SiriNLOverride(0);
    v57 = MEMORY[0x26D60FD80](v50, v56);
    v59 = v58;
    *(v53 + 96) = MEMORY[0x277D837D0];
    *(v53 + 104) = sub_26808C1E4();
    *(v53 + 72) = v57;
    *(v53 + 80) = v59;
    sub_2680B406C(v51, &dword_268086000, v52, "TrieOverrides: Adding %d exact match overrides, %@", 50, 2, v53);

    sub_268088E4C(v40, v72);
    v73 = v50;
    sub_26808CEB8(v60);
    v61 = sub_2680B423C();
    OUTLINED_FUNCTION_12_0();
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_2680B4FE0;
    v43 = v73;
    v63 = *(v73 + 16);
    *(v62 + 56) = MEMORY[0x277D83B88];
    *(v62 + 64) = MEMORY[0x277D83C10];
    *(v62 + 32) = v63;
    sub_2680B406C(v61, &dword_268086000, v52, "TrieOverrides: Override candidates found total number: %d", LODWORD(v65[0]));
  }

  else
  {
    v42 = sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v43 = MEMORY[0x277D84F90];
    sub_2680B406C(v42, &dword_268086000, off_2813194A8, "TrieOverrides: Exact match failed because trie bundle not loaded", 64, 2, MEMORY[0x277D84F90]);
  }

  return v43;
}

uint64_t sub_26808C12C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26808C18C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_26808C1E4()
{
  result = qword_281319320;
  if (!qword_281319320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281319320);
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

uint64_t sub_26808C24C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26808C284()
{
  OUTLINED_FUNCTION_54();
  v74 = v1;
  v75 = v0;
  v3 = v2;
  v4 = type metadata accessor for SiriNLOverride(0);
  OUTLINED_FUNCTION_4();
  v72 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249258, &qword_2680B54E8);
  OUTLINED_FUNCTION_7(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  v14 = sub_2680B2F5C();
  OUTLINED_FUNCTION_4();
  v76 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492B0, &unk_2680B5690);
  OUTLINED_FUNCTION_7(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_4();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6();
  v28 = v27 - v26;
  v73 = v3;
  Array<A>.currentTurn.getter(v3, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v22) == 1)
  {
    v29 = &qword_2802492B0;
    v30 = &unk_2680B5690;
    v31 = v0;
LABEL_5:
    sub_26808C18C(v31, v29, v30);
    v32 = sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      v32 = swift_once();
    }

    OUTLINED_FUNCTION_23_1(v32, &dword_268086000, off_2813194A8, "Aborting – no request input was provided to match rules against");
    goto LABEL_21;
  }

  (*(v24 + 32))(v28, v0, v22);
  Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.locale.getter(v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    (*(v24 + 8))(v28, v22);
    v29 = &qword_280249258;
    v30 = &qword_2680B54E8;
    v31 = v13;
    goto LABEL_5;
  }

  v71 = v24;
  (*(v76 + 32))(v19, v13, v14);
  v69 = v28;
  v33 = sub_2680B3E0C();
  v34 = v19;
  v35 = v33;
  v37 = v36;
  v70 = v34;
  v38 = sub_26808BAD4(v34, v33, v36, v74);
  v39 = v71;
  if (v38)
  {

    v40 = *(v38 + 16);
    if (v40)
    {
      v74 = v22;
      v75 = v14;
      v77 = MEMORY[0x277D84F90];
      sub_26808D0A8(0, v40, 0);
      v41 = v77;
      OUTLINED_FUNCTION_33();
      v68 = v38;
      v43 = v38 + v42;
      v45 = *(v44 + 72);
      v72 = v40;
      do
      {
        OUTLINED_FUNCTION_6_3();
        sub_2680898A4(v43, v9, v46);
        v47 = (v9 + *(v4 + 44));
        if (v47[1])
        {
          v48 = *v47;
          v49 = v47[1];
        }

        else
        {
          v49 = 0xE500000000000000;
          v48 = 0x296C696E28;
        }

        OUTLINED_FUNCTION_4_4();
        sub_26808984C(v9, v50);
        v77 = v41;
        v52 = *(v41 + 16);
        v51 = *(v41 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_26808D0A8(v51 > 1, v52 + 1, 1);
          v41 = v77;
        }

        *(v41 + 16) = v52 + 1;
        v53 = v41 + 16 * v52;
        *(v53 + 32) = v48;
        *(v53 + 40) = v49;
        v43 += v45;
        --v40;
      }

      while (v40);

      v22 = v74;
      v39 = v71;
      v40 = v72;
    }

    v54 = sub_2680B424C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v55 = off_2813194A8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    OUTLINED_FUNCTION_12_0();
    v56 = swift_allocObject();
    v57 = MEMORY[0x277D83B88];
    *(v56 + 16) = xmmword_2680B4FE0;
    v58 = MEMORY[0x277D83C10];
    *(v56 + 56) = v57;
    *(v56 + 64) = v58;
    *(v56 + 32) = v40;
    sub_2680B406C(v54, &dword_268086000, v55, "%d candidate overrides matched", v67);

    sub_26808D0C8();

    v59 = OUTLINED_FUNCTION_10_0();
    v60(v59);
    (*(v39 + 8))(v69, v22);
  }

  else
  {
    v61 = sub_2680B423C();
    v62 = v69;
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v63 = off_2813194A8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    OUTLINED_FUNCTION_12_0();
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_2680B4FE0;
    *(v64 + 56) = MEMORY[0x277D837D0];
    *(v64 + 64) = sub_26808C1E4();
    *(v64 + 32) = v35;
    *(v64 + 40) = v37;
    sub_2680B406C(v61, &dword_268086000, v63, "No overrides matched to utterance: '%@'", 39, 2, v64);

    v65 = OUTLINED_FUNCTION_10_0();
    v66(v65);
    (*(v39 + 8))(v62, v22);
  }

LABEL_21:
  OUTLINED_FUNCTION_53();
}

uint64_t Array<A>.currentTurn.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2680B3E1C();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

unint64_t sub_26808CA6C()
{
  result = qword_281319328;
  if (!qword_281319328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281319328);
  }

  return result;
}

unint64_t sub_26808CAC0(uint64_t a1)
{
  sub_2680B452C();
  sub_2680B2F5C();
  sub_26808CB90(&qword_2813192F0, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_2680B408C();
  type metadata accessor for CacheKey(0);
  v2 = sub_2680B3B4C();
  MEMORY[0x26D6100D0](v2);
  v3 = sub_2680B454C();

  return sub_26808CBD8(a1, v3);
}

uint64_t sub_26808CB90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26808CBD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v16 = type metadata accessor for CacheKey(0);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3 + 64;
  v10 = -1 << *(v3 + 32);
  v11 = a2 & ~v10;
  if ((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v6 + 72);
    v15 = v3;
    do
    {
      sub_26808CDD4(*(v3 + 48) + v13 * v11, v8, type metadata accessor for CacheKey);
      if (MEMORY[0x26D60EAB0](v8, a1))
      {
        sub_2680B3B8C();
        sub_26808CB90(qword_2813192B8, MEMORY[0x277D5DCD8], MEMORY[0x277D5DCE0]);
        sub_2680B41CC();
        v3 = v15;
        sub_2680B41CC();
        sub_268088DF0(v8);
        if (v18 == v17)
        {
          return v11;
        }
      }

      else
      {
        sub_268088DF0(v8);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_26808CDD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_55()
{

  return sub_2680B37CC();
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return sub_2680B3E1C();
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return swift_allocObject();
}

uint64_t sub_26808CEB8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_39_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26808AE98(result, 1, sub_26808B2B0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for SiriNLOverride(0);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_26808CFBC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_17();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491C0, &qword_2680B5418);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      *(v11 + 16) = v9;
      *(v11 + 24) = 2 * ((v12 - 32) / 16);
      if (a1)
      {
LABEL_12:
        sub_26809E9D0((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_25_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_15();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26808D0C8()
{
  OUTLINED_FUNCTION_54();
  v77 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492B8, &qword_2680B56A0);
  OUTLINED_FUNCTION_7(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  v7 = &v72 - v6;
  matched = type metadata accessor for OverrideMatchResult(0);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v78 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v72 - v14;
  MEMORY[0x28223BE20](v13);
  v84 = &v72 - v16;
  v17 = OUTLINED_FUNCTION_21();
  v18 = type metadata accessor for SiriNLOverride(v17);
  v76 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_6();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249258, &qword_2680B54E8);
  OUTLINED_FUNCTION_7(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492B0, &unk_2680B5690);
  OUTLINED_FUNCTION_7(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v27);
  v28 = OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_4();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6();
  v34 = v33 - v32;
  v85 = v3;
  Array<A>.currentTurn.getter(v3, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v28) == 1)
  {
    v35 = &qword_2802492B0;
    v36 = &unk_2680B5690;
    v37 = v0;
LABEL_5:
    sub_26808C18C(v37, v35, v36);
    v39 = sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
LABEL_39:
      OUTLINED_FUNCTION_0_0();
      v39 = swift_once();
    }

    OUTLINED_FUNCTION_23_1(v39, &dword_268086000, off_2813194A8, "Aborting – no request input was provided to match rules against");
    goto LABEL_37;
  }

  (*(v30 + 32))(v34, v0, v28);
  Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.locale.getter(v25);
  v38 = sub_2680B2F5C();
  if (__swift_getEnumTagSinglePayload(v25, 1, v38) == 1)
  {
    (*(v30 + 8))(v34, v28);
    v35 = &qword_280249258;
    v36 = &qword_2680B54E8;
    v37 = v25;
    goto LABEL_5;
  }

  v75 = v30;
  sub_26808C18C(v25, &qword_280249258, &qword_2680B54E8);
  v73 = v34;
  sub_2680B3DFC();
  static MatchingSpanUtils.getSpanLabelDict(_:)();
  v83 = v40;

  if (qword_2813194D8 != -1)
  {
    swift_once();
  }

  v74 = v28;
  v80 = sub_26808DCA4(byte_281319958);
  v82 = v41;
  v79 = sub_26808DC84();
  v81 = v42;
  v43 = *(v77 + 16);
  if (v43)
  {
    OUTLINED_FUNCTION_33();
    v46 = v45 + v44;
    v48 = *(v47 + 72);
    v49 = MEMORY[0x277D84F90];
    do
    {
      sub_2680898A4(v46, v21, type metadata accessor for SiriNLOverride);
      SiriNLOverride.matches(inputs:spanDict:deviceType:userInterfaceIdiom:)();
      sub_26808984C(v21, type metadata accessor for SiriNLOverride);
      if (__swift_getEnumTagSinglePayload(v7, 1, matched) == 1)
      {
        sub_26808C18C(v7, &qword_2802492B8, &qword_2680B56A0);
      }

      else
      {
        OUTLINED_FUNCTION_2_5();
        sub_26808A868(v7, v84, v50);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2680917A4();
          v49 = v54;
        }

        v51 = *(v49 + 16);
        if (v51 >= *(v49 + 24) >> 1)
        {
          sub_2680917A4();
          v49 = v55;
        }

        *(v49 + 16) = v51 + 1;
        OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_2_5();
        sub_26808A868(v84, v52, v53);
      }

      v46 += v48;
      --v43;
    }

    while (v43);
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
  }

  v56 = 0;
  v57 = *(v49 + 16);
  v58 = MEMORY[0x277D84F90];
LABEL_22:
  v59 = v75;
  while (v57 != v56)
  {
    if (v56 >= *(v49 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    sub_2680898A4(v49 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v56, v15, type metadata accessor for OverrideMatchResult);
    if (v15[*(matched + 20)] == 1)
    {
      OUTLINED_FUNCTION_2_5();
      sub_26808A868(v15, v78, v60);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = v58;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2680A1474(0, *(v58 + 16) + 1, 1);
        v58 = v87;
      }

      v63 = *(v58 + 16);
      v62 = *(v58 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_2680A1474(v62 > 1, v63 + 1, 1);
        v58 = v87;
      }

      ++v56;
      *(v58 + 16) = v63 + 1;
      OUTLINED_FUNCTION_2_5();
      sub_26808A868(v78, v64, v65);
      goto LABEL_22;
    }

    sub_26808984C(v15, type metadata accessor for OverrideMatchResult);
    ++v56;
  }

  v66 = sub_2680B424C();
  if (qword_2813194A0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v67 = off_2813194A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
  OUTLINED_FUNCTION_12_0();
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_2680B4FE0;
  v69 = *(v58 + 16);
  v70 = MEMORY[0x277D83C10];
  *(v68 + 56) = MEMORY[0x277D83B88];
  *(v68 + 64) = v70;
  *(v68 + 32) = v69;
  sub_2680B406C(v66, &dword_268086000, v67, "Further filtering has finished. Request was matched to %d overrides", v72);

  if (!*(v58 + 16))
  {
    v71 = sub_2680B424C();
    sub_2680B406C(v71, &dword_268086000, v67, "All candidate overrides were filtered out based on request context", 66, 2, MEMORY[0x277D84F90]);
  }

  (*(v59 + 8))(v73, v74);
LABEL_37:
  OUTLINED_FUNCTION_53();
}

void static MatchingSpanUtils.getSpanLabelDict(_:)()
{
  OUTLINED_FUNCTION_54();
  v1 = v0;
  v2 = sub_2680B33EC();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20();
  v59 = (v6 - v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v11 = *(v1 + 16);
  if (!v11)
  {
LABEL_22:
    OUTLINED_FUNCTION_53();
    return;
  }

  v12 = 0;
  v15 = *(v4 + 16);
  v13 = v4 + 16;
  v14 = v15;
  OUTLINED_FUNCTION_33();
  v53 = v16;
  v17 = v1 + v16;
  v18 = *(v13 + 56);
  v57 = (v13 - 8);
  v19 = MEMORY[0x277D84F98];
  v52 = (v13 + 16);
  v55 = v13;
  v56 = v2;
  v54 = v10;
  v58 = v18;
  while (1)
  {
    v14(v10, v17, v2);
    v20 = sub_2680B339C();
    v22 = v21;

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {
      (*v57)(v10, v2);
      v36 = v58;
      goto LABEL_20;
    }

    v24 = sub_2680B339C();
    v25 = v14;
    v27 = v26;
    v28 = v10;
    v29 = v25;
    v25(v59, v28, v2);
    sub_268093C70(v12, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v60 = v19;
    v30 = sub_26809EB44(v24, v27);
    if (__OFADD__(v19[2], (v31 & 1) == 0))
    {
      break;
    }

    v32 = v30;
    v33 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491A8, &qword_2680B53E8);
    if (sub_2680B43AC())
    {
      v34 = sub_26809EB44(v24, v27);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_25;
      }

      v32 = v34;
    }

    v19 = v60;
    if (v33)
    {
    }

    else
    {
      OUTLINED_FUNCTION_22_0(&v60[v32 >> 6]);
      v37 = (v19[6] + 16 * v32);
      *v37 = v24;
      v37[1] = v27;
      *(v19[7] + 8 * v32) = MEMORY[0x277D84F90];
      v38 = v19[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_24;
      }

      v19[2] = v40;
    }

    v41 = v19[7];
    v42 = *(v41 + 8 * v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v41 + 8 * v32) = v42;
    v14 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_18();
      sub_26809EDEC();
      v42 = v49;
      *(v41 + 8 * v32) = v49;
    }

    v10 = v54;
    v45 = *(v42 + 16);
    v44 = *(v42 + 24);
    if (v45 >= v44 >> 1)
    {
      OUTLINED_FUNCTION_27(v44);
      OUTLINED_FUNCTION_23_0();
      sub_26809EDEC();
      *(v41 + 8 * v32) = v50;
    }

    v46 = v56;
    (*v57)(v10, v56);
    v47 = *(v41 + 8 * v32);
    *(v47 + 16) = v45 + 1;
    v36 = v58;
    v48 = v47 + v53 + v45 * v58;
    v2 = v46;
    (*v52)(v48, v59, v46);
    v12 = sub_26809674C;
LABEL_20:
    v17 += v36;
    if (!--v11)
    {
      sub_268093C70(v12, 0);
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_2680B44AC();
  __break(1u);
}

uint64_t sub_26808DC18(uint64_t a1, uint64_t a2)
{
  sub_26808DD9C(a1, a2, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_2680A61E0(v4);
  }

  return 0;
}

uint64_t sub_26808DCA4(char a1)
{
  result = 0x454E4F4850;
  switch(a1)
  {
    case 1:
      result = 4473168;
      break;
    case 2:
      result = 0x4E414D4553524F48;
      break;
    case 3:
      result = 1398097242;
      break;
    case 4:
      result = 0x4F454D4143;
      break;
    case 5:
      result = 0x4843544157;
      break;
    case 6:
      result = 5390659;
      break;
    case 7:
      result = 0x544952414752414DLL;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

double sub_26808DD9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = sub_2680B40BC();
  v7 = MGCopyAnswerWithError();

  if (v7)
  {
    *(a3 + 24) = swift_getObjectType();
    *a3 = v7;
  }

  else
  {
    v9 = sub_2680B425C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2680B5350;
    v11 = MEMORY[0x277D837D0];
    *(v10 + 56) = MEMORY[0x277D837D0];
    v12 = sub_26808C1E4();
    *(v10 + 64) = v12;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;

    v13 = sub_2680B445C();
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 72) = v13;
    *(v10 + 80) = v14;
    sub_26809F900();
    v15 = sub_2680B428C();
    sub_2680B406C(v9, &dword_268086000, v15, "MGCopyAnswerWithError error for key: %@ -> %@", 45, 2, v10, 0, v16);

    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void SiriNLOverride.matches(inputs:spanDict:deviceType:userInterfaceIdiom:)()
{
  OUTLINED_FUNCTION_54();
  v110 = v2;
  v111 = v3;
  v112 = v4;
  v113 = v5;
  v109 = v6;
  v118 = v7;
  v9 = v8;
  matched = type metadata accessor for TurnInputRuleMatchResult(0);
  v107 = *(matched - 8);
  MEMORY[0x28223BE20](matched - 8);
  OUTLINED_FUNCTION_6();
  v108 = (v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249258, &qword_2680B54E8);
  OUTLINED_FUNCTION_7(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v14);
  v16 = v104 - v15;
  v17 = sub_2680B2F5C();
  OUTLINED_FUNCTION_4();
  v114 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492B0, &unk_2680B5690);
  OUTLINED_FUNCTION_7(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v24);
  v26 = v104 - v25;
  v119 = sub_2680B3E1C();
  OUTLINED_FUNCTION_4();
  v115 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6();
  v117 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
  OUTLINED_FUNCTION_7(v31);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_45_0();
  v33 = sub_2680B3E9C();
  OUTLINED_FUNCTION_4();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6();
  v39 = v38 - v37;
  v116 = v0;
  SiriNLOverride.nluRequestRule.getter(v1);
  OUTLINED_FUNCTION_17_3(v1, 1, v33);
  if (v51)
  {
    sub_26808C12C(v1, &qword_2802492A8, &unk_2680B5680);
    type metadata accessor for OverrideMatchResult(0);
  }

  else
  {
    v106 = v9;
    (*(v35 + 32))(v39, v1, v33);
    v105 = v39;
    v40 = *(sub_2680B36FC() + 16);

    v41 = v35;
    if (v40)
    {
      Array<A>.currentTurn.getter(v118, v26);
      v42 = v119;
      OUTLINED_FUNCTION_17_3(v26, 1, v119);
      if (v51)
      {
        sub_26808C12C(v26, &qword_2802492B0, &unk_2680B5690);
      }

      else
      {
        v104[1] = v41;
        v48 = v115;
        v49 = v117;
        (*(v115 + 32))(v117, v26, v42);
        Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.locale.getter(v16);
        v50 = v17;
        OUTLINED_FUNCTION_17_3(v16, 1, v17);
        if (v51)
        {
          (*(v48 + 8))(v49, v42);
          sub_26808C12C(v16, &qword_280249258, &qword_2680B54E8);
        }

        else
        {
          v52 = v114;
          v53 = OUTLINED_FUNCTION_42_0();
          v54(v53);
          v55 = sub_26808F308();
          if (v55)
          {
            if (sub_2680B3E4C())
            {
              if (sub_2680B3E2C() == v112 && v56 == v113)
              {
              }

              else
              {
                v58 = sub_2680B447C();

                if ((v58 & 1) == 0)
                {
                  v59 = sub_2680B424C();
                  if (qword_2813194A0 != -1)
                  {
                    OUTLINED_FUNCTION_0(&qword_2813194A0);
                  }

                  v60 = MEMORY[0x277D84F90];
                  sub_2680B406C(v59, &dword_268086000, off_2813194A8, "Device type was not matched", 27, 2, MEMORY[0x277D84F90]);
                  OUTLINED_FUNCTION_5_5();
                  (*(v48 + 8))(v117, v119);
                  goto LABEL_51;
                }
              }
            }

            if ((sub_2680B3E7C() & 1) == 0)
            {
              goto LABEL_46;
            }

            v68 = sub_2680B3E6C();
            v70 = sub_2680956CC(v68, v69);
            v71 = v111;

            v72 = sub_2680956CC(v110, v71);
            v73 = v72;
            if (v70 == 9)
            {
              if (v72 == 9)
              {
                goto LABEL_46;
              }
            }

            else if (v72 != 9)
            {
              v74 = sub_26808DCA4(v70);
              v76 = v75;
              if (v74 == sub_26808DCA4(v73) && v76 == v77)
              {

LABEL_46:
                v80 = *(v118 + 16);
                v81 = *(sub_2680B36FC() + 16);

                if (v80 >= v81)
                {
                  v89 = sub_2680B36FC();
                  v112 = v104;
                  MEMORY[0x28223BE20](v89);
                  v113 = v22;
                  v90 = v109;
                  v104[-2] = v22;
                  v104[-1] = v90;

                  sub_26808F45C(v91, v89, sub_2680906C0, &v104[-4]);
                  v93 = v92;

                  v118 = v93;
                  v94 = *(v93 + 16);
                  if (v94)
                  {
                    v95 = v108;
                    v96 = v118 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
                    v97 = *(v107 + 72);
                    v98 = 1;
                    do
                    {
                      sub_2680915A8(v96, v95, type metadata accessor for TurnInputRuleMatchResult);
                      if (v98)
                      {
                        v98 = *v95;
                      }

                      else
                      {
                        v98 = 0;
                      }

                      sub_26809170C(v95);
                      v96 += v97;
                      --v94;
                    }

                    while (v94);
                  }

                  else
                  {
                    v98 = 1;
                  }

                  (*(v115 + 8))(v117, v42);
                  v99 = OUTLINED_FUNCTION_28_1();
                  v100(v99);
                  OUTLINED_FUNCTION_5_5();
                  v101 = type metadata accessor for OverrideMatchResult(0);
                  *(v42 + *(v101 + 20)) = v98;
                  *(v42 + *(v101 + 24)) = v118;
                  OUTLINED_FUNCTION_51_0(v101, v102, v103, v101);
                  v88 = v113;
                  goto LABEL_61;
                }

                v59 = sub_2680B424C();
                if (qword_2813194A0 != -1)
                {
                  OUTLINED_FUNCTION_0(&qword_2813194A0);
                }

                v60 = MEMORY[0x277D84F90];
                sub_2680B406C(v59, &dword_268086000, off_2813194A8, "Disqualifying NluRequestRule(id=%@) as it has more TurnInputRule rules than there are TurnInputs", 96, 2, MEMORY[0x277D84F90]);
                goto LABEL_50;
              }

              OUTLINED_FUNCTION_49_0();
              v79 = sub_2680B447C();

              if (v79)
              {
                goto LABEL_46;
              }
            }

            v59 = sub_2680B424C();
            if (qword_2813194A0 != -1)
            {
              OUTLINED_FUNCTION_0(&qword_2813194A0);
            }

            v60 = MEMORY[0x277D84F90];
            sub_2680B406C(v59, &dword_268086000, off_2813194A8, "UI Idiom was not matched", 24, 2, MEMORY[0x277D84F90]);
LABEL_50:
            OUTLINED_FUNCTION_5_5();
            (*(v115 + 8))(v117, v119);
LABEL_51:
            v82 = OUTLINED_FUNCTION_28_1();
            v83(v82);
            v84 = type metadata accessor for OverrideMatchResult(0);
            *(v59 + *(v84 + 20)) = 0;
            *(v59 + *(v84 + 24)) = v60;
            OUTLINED_FUNCTION_51_0(v84, v85, v86, v84);
            v88 = v22;
LABEL_61:
            v87(v88, v50);
            goto LABEL_29;
          }

          (*(v48 + 8))(v117, v42);
          (*(v52 + 8))(v22, v50);
        }
      }

      v61 = sub_2680B425C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2813194A0);
      }

      sub_2680B406C(v61, &dword_268086000, off_2813194A8, "Aborting – either locale was nil or locale of NluRequestRule did not match request", 85, 0, MEMORY[0x277D84F90]);
      v62 = OUTLINED_FUNCTION_28_1();
      v63(v62);
      type metadata accessor for OverrideMatchResult(0);
    }

    else
    {
      v43 = sub_2680B425C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2813194A0);
      }

      v44 = off_2813194A8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_2680B4FE0;
      v47 = *v116;
      v46 = v116[1];
      *(v45 + 56) = MEMORY[0x277D837D0];
      *(v45 + 64) = sub_26808C1E4();
      *(v45 + 32) = v47;
      *(v45 + 40) = v46;

      sub_2680B406C(v43, &dword_268086000, v44, "NluRequestRule(id=%@) has no TurnInputRule rules.", 49, 2, v45);

      (*(v41 + 8))(v105, v33);
      type metadata accessor for OverrideMatchResult(0);
    }
  }

  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
LABEL_29:
  OUTLINED_FUNCTION_53();
}

uint64_t OUTLINED_FUNCTION_48()
{
}

uint64_t SiriNLOverride.nluRequestRule.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2680B403C();
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v8 = &v29[-v7];
  v9 = sub_2680B3E9C();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6();
  v15 = v14 - v13;
  v16 = type metadata accessor for SiriNLOverride(0);
  sub_26808ED8C(v1 + *(v16 + 60), v8, &qword_2802492A8, &unk_2680B5680);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v24 = *(v11 + 32);
    v25 = OUTLINED_FUNCTION_24();
    v24(v25);
    (v24)(a1, v15, v9);
    goto LABEL_6;
  }

  sub_26808C18C(v8, &qword_2802492A8, &unk_2680B5680);
  if (*(v1 + *(v16 + 56) + 8) >> 60 != 15)
  {
    v30 = 0;
    memset(&v29[16], 0, 32);
    v17 = OUTLINED_FUNCTION_24();
    sub_2680A155C(v17, v18);
    v19 = OUTLINED_FUNCTION_24();
    sub_26808A6DC(v19, v20);
    sub_2680B402C();
    OUTLINED_FUNCTION_2_6();
    sub_2680AFD28(v21, v22, MEMORY[0x277D5DD90]);
    OUTLINED_FUNCTION_24();
    sub_2680B404C();
    v27 = OUTLINED_FUNCTION_24();
    sub_26808A734(v27, v28);
LABEL_6:
    v23 = 0;
    return __swift_storeEnumTagSinglePayload(a1, v23, 1, v9);
  }

  v23 = 1;
  return __swift_storeEnumTagSinglePayload(a1, v23, 1, v9);
}

void sub_26808ECF4()
{
  OUTLINED_FUNCTION_8_1();
  type metadata accessor for SiriNLOverride(0);
  OUTLINED_FUNCTION_13_0();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_26808ED8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_3_6();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_45()
{
}

uint64_t sub_26808EE0C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CacheKey(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_1();
  (*(v7 + 16))(v2, a1);
  v8 = *(v6 + 28);
  sub_2680B3B8C();
  OUTLINED_FUNCTION_1_1();
  v10 = (*(v9 + 16))(v2 + v8, a2);
  if (qword_281319218 != -1)
  {
    v10 = OUTLINED_FUNCTION_0_1(&qword_281319218);
  }

  v11 = qword_281319220;
  v12 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  os_unfair_lock_lock(v11 + 4);
  sub_26808F2E0();
  os_unfair_lock_unlock(v11 + 4);
  return sub_268088DF0(v2);
}

uint64_t sub_26808EF9C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_10_1();
  type metadata accessor for SiriNLOverride(v4);
  OUTLINED_FUNCTION_13_0();
  if (*(v6 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v2, a2, v5);
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
    return (v8 + 1);
  }
}

uint64_t sub_26808F034(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = type metadata accessor for CacheKey(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = sub_26808CAC0(a2);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249290, &qword_2680B55C0);
  if ((sub_2680B43AC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_26808CAC0(a2);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_2680B44AC();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v4;
  if (v14)
  {
    *(v17[7] + 8 * v13) = a1;
  }

  else
  {
    sub_26808FCAC(a2, v9);
    return sub_26808FDC4(v13, v9, a1, v17);
  }
}

uint64_t sub_26808F214(uint64_t a1, uint64_t a2)
{
  if (qword_281319160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = off_281319168;
  sub_26808F034(a2, a1, isUniquelyReferenced_nonNull_native);
  off_281319168 = v6;
  return swift_endAccess();
}

uint64_t sub_26808F308()
{
  if (sub_2680B3E3C())
  {
    v0 = sub_2680B3E8C();
    v2 = v1;

    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = v0 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = sub_2680B3E8C();
      v6 = v5;
      if (v4 == sub_2680B2EDC() && v6 == v7)
      {
LABEL_16:

        return 1;
      }

      v9 = sub_2680B447C();

      if (v9)
      {
        return 1;
      }

      v10 = sub_2680B3E8C();
      v12 = v11;
      v13 = sub_2680B2F0C();
      if (v14)
      {
        if (v10 != v13 || v14 != v12)
        {
          v16 = sub_2680B447C();

          return v16 & 1;
        }

        goto LABEL_16;
      }
    }
  }

  return 0;
}

void sub_26808F45C(uint64_t a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4)
{
  v71 = a3;
  v72 = a4;
  matched = type metadata accessor for TurnInputRuleMatchResult(0);
  v69 = *(matched - 8);
  v7 = MEMORY[0x28223BE20](matched - 8);
  v62 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v55 - v9;
  v10 = sub_2680B3E1C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v64 = &v55 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249330, &qword_2680B59B8);
  v16 = MEMORY[0x28223BE20](v67);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v57 = &v55 - v20;
  MEMORY[0x28223BE20](v19);
  v56 = &v55 - v21;
  v73 = a1;
  v22 = *(a1 + 16);
  v70 = a2;
  v23 = *(a2 + 16);
  if (v23 >= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  v74 = MEMORY[0x277D84F90];
  sub_26808FC8C(0, v24, 0);
  v25 = v74;
  v68 = v10;
  v65 = v23;
  v66 = v22;
  v63 = v24;
  if (v24)
  {
    v26 = 0;
    v60 = v11 + 16;
    v61 = v14;
    v59 = (v11 + 32);
    v27 = v11;
    while (v22 != v26)
    {
      v28 = v73 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v26;
      v29 = v27;
      v30 = *(v27 + 16);
      v31 = v61;
      v30(v61, v28, v10);
      if (v23 == v26)
      {
        goto LABEL_25;
      }

      v32 = sub_2680B38AC();
      v33 = *(v32 - 8);
      v34 = v70 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v26;
      v35 = v10;
      v36 = *(v67 + 48);
      (*v59)(v18, v31, v35);
      (*(v33 + 16))(&v18[v36], v34, v32);
      v37 = &v18[v36];
      v38 = v62;
      v71(v18, v37);
      sub_26808C12C(v18, &qword_280249330, &qword_2680B59B8);
      v74 = v25;
      v40 = *(v25 + 16);
      v39 = *(v25 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_26808FC8C(v39 > 1, v40 + 1, 1);
        v25 = v74;
      }

      ++v26;
      *(v25 + 16) = v40 + 1;
      sub_268091544(v38, v25 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v40);
      v10 = v68;
      v23 = v65;
      v22 = v66;
      v27 = v29;
      if (v63 == v26)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v27 = v11;
LABEL_13:
    v61 = (v27 + 32);
    v62 = (v27 + 16);
    v41 = v63;
    while (v22 != v41)
    {
      if (v41 >= v22)
      {
        goto LABEL_26;
      }

      (*(v27 + 16))(v64, v73 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v41, v10);
      if (__OFADD__(v41, 1))
      {
        goto LABEL_27;
      }

      if (v23 == v41)
      {
        (*(v27 + 8))(v64, v10);
        return;
      }

      if (v41 >= v23)
      {
        goto LABEL_28;
      }

      v42 = sub_2680B38AC();
      v43 = v10;
      v44 = *(v42 - 8);
      v45 = v70 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v41;
      v46 = v67;
      v47 = *(v67 + 48);
      v48 = v57;
      (*v61)(v57, v64, v43);
      v49 = &v48[v47];
      v50 = v58;
      (*(v44 + 16))(v49, v45, v42);
      v51 = v48;
      v52 = v56;
      sub_2680ADF74(v51, v56, &qword_280249330, &qword_2680B59B8);
      v71(v52, (v52 + *(v46 + 48)));
      sub_26808C12C(v52, &qword_280249330, &qword_2680B59B8);
      v74 = v25;
      v54 = *(v25 + 16);
      v53 = *(v25 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_26808FC8C(v53 > 1, v54 + 1, 1);
        v25 = v74;
      }

      *(v25 + 16) = v54 + 1;
      sub_268091544(v50, v25 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v54);
      ++v41;
      v10 = v68;
      v23 = v65;
      v22 = v66;
    }
  }
}

void sub_26808FAAC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_17();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_25_0();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_19_2(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  a7(0);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_33();
  if (a1)
  {
    a8(a4 + v25, v15, v22 + v25);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_26808FCAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26808FD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26808FDC4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CacheKey(0);
  result = sub_26808FD60(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_26808FE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v78 = a3;
  v82 = a1;
  v93 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249258, &qword_2680B54E8);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = &v76 - v7;
  sub_2680B37BC();
  OUTLINED_FUNCTION_4();
  v80 = v9;
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6();
  v12 = v11 - v10;
  v13 = sub_2680B37CC();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6();
  v19 = v18 - v17;
  sub_2680B31FC();
  OUTLINED_FUNCTION_4();
  v89 = v21;
  v90 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6();
  v24 = v23 - v22;
  sub_2680B386C();
  OUTLINED_FUNCTION_4();
  v87 = v26;
  v88 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6();
  matched = type metadata accessor for UtteranceRuleMatchResult(0);
  v27 = MEMORY[0x28223BE20](matched);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v91 = &v76 - v30;
  v84 = v4;
  sub_2680B387C();
  v83 = sub_2680B3E0C();
  v32 = v31;
  v85 = a2;
  v86 = v24;
  sub_2680B3DDC();
  sub_2680B384C();
  v33 = (*(v15 + 88))(v19, v13);
  v34 = &qword_281319000;
  v35 = &qword_281319000;
  if (v33 == *MEMORY[0x277D5DB98])
  {

    v36 = sub_2680B423C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2813194A0);
    }

    sub_2680B406C(v36, &dword_268086000, off_2813194A8, "Asked to evaluate an UtteranceRule of type .unspecified – this is unexpected and likely a data problem", 105, 0, MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_4_3();
    (*(v89 + 8))(v86, v90);
    v37 = OUTLINED_FUNCTION_3_4();
    v38(v37);
    v39 = *(v32 + 24);
    *v29 = 0;
    *&v29[v39] = 0;
    *&v29[*(v32 + 28)] = 0;
    goto LABEL_14;
  }

  v77 = v32;
  if (v33 == *MEMORY[0x277D5DBA0])
  {
    sub_2680B37DC();
    sub_2680B378C();
    v40 = v81;
    v41 = *(v80 + 8);
    v41(v12, v81);
    sub_2680B37DC();
    sub_2680B37AC();
    v41(v12, v40);
    sub_2680B37DC();
    sub_2680B379C();
    v41(v12, v40);
    v94 = sub_2680B385C();
    v95 = v42;
    v43 = sub_2680B2F5C();
    v80 = *(*(v43 - 8) + 16);
    v44 = v79;
    v45 = v82;
    (v80)(v79, v82, v43);
    OUTLINED_FUNCTION_5_3();
    sub_26808CA6C();
    v81 = sub_2680B42EC();
    v78 = v46;
    sub_2680A0460(v44);

    v32 = v77;
    v94 = v83;
    v95 = v77;
    (v80)(v44, v45, v43);
    OUTLINED_FUNCTION_5_3();
    v47 = 1;
    v48 = sub_2680B42EC();
    v50 = v49;
    v51 = v44;
    v52 = v78;
    sub_2680A0460(v51);

    if (v81 != v48 || v52 != v50)
    {
      v47 = sub_2680B447C();
    }

    OUTLINED_FUNCTION_4_3();
    (*(v89 + 8))(v86, v90);
    v54 = OUTLINED_FUNCTION_3_4();
    v55(v54);
    v56 = *(v32 + 24);
    *v29 = v47 & 1;
    *&v29[v56] = 0;
    *&v29[*(v32 + 28)] = 0;
    v34 = &qword_281319000;
    v35 = &qword_281319000;
LABEL_14:
    v60 = v91;
    sub_268091440(v29, v91);
    if (*v60 == 1)
    {
      v61 = *(sub_2680B36FC() + 16);

      if (v61)
      {
        v62 = sub_2680B36FC();
        MEMORY[0x28223BE20](v62);
        v63 = v85;
        *(&v76 - 2) = v85;
        v64 = sub_268093CB0(sub_268093FA4, (&v76 - 4), v62);

        if (!v64)
        {
          v65 = sub_2680B424C();
          if (v34[148] != -1)
          {
            OUTLINED_FUNCTION_0(&qword_2813194A0);
          }

          sub_2680B406C(v65, &dword_268086000, v35[149], "Override disqualified because no positive turn context rules were matched", 73, 2, MEMORY[0x277D84F90]);
          goto LABEL_27;
        }
      }

      else
      {
        v63 = v85;
      }

      v66 = *(sub_2680B388C() + 16);

      if (!v66 || (v67 = sub_2680B388C(), MEMORY[0x28223BE20](v67), *(&v76 - 2) = v63, v68 = sub_2680983F0(), , v68))
      {
        v69 = 1;
LABEL_28:
        v71 = type metadata accessor for TurnInputRuleMatchResult(0);
        v72 = *(v71 + 20);
        v73 = v93;
        sub_268091440(v60, &v93[v72]);
        result = __swift_storeEnumTagSinglePayload(&v73[v72], 0, 1, v32);
        v75 = *(v71 + 24);
        *v73 = v69;
        *&v73[v75] = 0;
        return result;
      }

      v70 = sub_2680B424C();
      if (v34[148] != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2813194A0);
      }

      sub_2680B406C(v70, &dword_268086000, v35[149], "Override disqualified because a negative turn context rule was matched", 70, 2, MEMORY[0x277D84F90]);
    }

LABEL_27:
    v69 = 0;
    goto LABEL_28;
  }

  if (v33 == *MEMORY[0x277D5DBA8])
  {
    v57 = v86;
    sub_268090710();

    (*(v89 + 8))(v57, v90);
    v58 = OUTLINED_FUNCTION_3_4();
    v59(v58);
    v32 = matched;
    goto LABEL_14;
  }

  result = sub_2680B446C();
  __break(1u);
  return result;
}

void sub_268090710()
{
  OUTLINED_FUNCTION_54();
  v110 = v0;
  v116 = v1;
  v117 = v2;
  v112 = v3;
  v113 = v4;
  sub_2680B377C();
  OUTLINED_FUNCTION_4();
  v111 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6();
  v8 = v7 - v6;
  matched = type metadata accessor for UtteranceRuleMatchResult(0);
  MEMORY[0x28223BE20](matched);
  OUTLINED_FUNCTION_6();
  v11 = (v10 - v9);
  v12 = sub_2680B37BC();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6();
  v18 = v17 - v16;
  v19 = sub_2680B385C();
  v21 = v20;
  sub_2680B37DC();
  v22 = sub_2680B378C();
  (*(v14 + 8))(v18, v12);
  v23 = sub_268087C68(0, &unk_281318F50, 0x277CCAC68);
  v24 = 0;
  v25 = sub_268089678(v19, v21, v22 & 1, 0);
  v26 = MEMORY[0x277D5DBA8];
  v31 = v25;
  v108 = v8;
  v109 = v11;

  v32 = v31;
  v33 = sub_2680B40BC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249170, &qword_2680B53B0);
  sub_268091340();
  sub_26808CA6C();
  v34 = MEMORY[0x277D837D0];
  v35 = sub_2680B427C();
  v37 = [v32 matchesInString:v33 options:0 range:{v35, v36}];

  sub_268087C68(0, &qword_281319310, 0x277CCACC0);
  v38 = sub_2680B41DC();

  v39 = sub_2680913FC(v38);
  if (v39 != 1)
  {
    v86 = v39;

    if (v86 >= 2)
    {
      v38 = sub_2680B425C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2813194A0);
      }

      v24 = off_2813194A8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_2680B5350;
      *(v87 + 56) = v23;
      *(v87 + 64) = sub_26809DC0C();
      *(v87 + 32) = v32;
      *(v87 + 96) = v34;
      *(v87 + 104) = sub_26808C1E4();
      *(v87 + 72) = v112;
      *(v87 + 80) = v113;
      v88 = v32;

      OUTLINED_FUNCTION_57(v38, &dword_268086000, v24, "Regex matched the input more than once. Regex: %@, Input: %@.", 61);
    }

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_1_1();
    (*(v89 + 104))(&v117[v23], v38);
    v90 = v24[6];
    *v117 = 0;
    *&v117[v90] = 0;
    *&v117[v24[7]] = 0;
    goto LABEL_57;
  }

  v40 = v117;
  if (!sub_2680913FC(v38))
  {

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_1_1();
    (*(v91 + 104))(&v117[v23], v38);
    v92 = MEMORY[0x18];
    *v117 = 0;
    *&v117[v92] = 0;
    *&v117[MEMORY[0x1C]] = 0;
LABEL_57:
    OUTLINED_FUNCTION_53();
    return;
  }

  v104 = 0;
  sub_268091880(0, (v38 & 0xC000000000000001) == 0, v38);
  if ((v38 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x26D60FED0](0, v38);
  }

  else
  {
    v41 = *(v38 + 32);
  }

  v42 = v41;
  v43 = v108;
  v44 = v116;

  v45 = matched[5];
  v46 = *v26;
  sub_2680B37CC();
  OUTLINED_FUNCTION_1_1();
  v48 = &v109[v45];
  v49 = v109;
  (*(v47 + 104))(v48, v46);
  v50 = matched[6];
  *v109 = 0;
  v105 = v50;
  *&v109[v50] = 0;
  *&v109[matched[7]] = v42;
  v107 = v42;
  v51 = sub_2680B36FC();
  isUniquelyReferenced_nonNull_native = 0;
  v53 = 0;
  v106 = *(v51 + 16);
  v123 = MEMORY[0x277D84F98];
  v54 = v111;
LABEL_6:
  if (v53 == v106)
  {

    OUTLINED_FUNCTION_59();

    *v49 = 1;
    *(v49 + v105) = v123;
LABEL_50:
    OUTLINED_FUNCTION_27_0();
    sub_2680931D0(v49, v40);
    v94 = v49;
LABEL_56:
    sub_268093BF8(v94, v53);
    sub_268093C70(isUniquelyReferenced_nonNull_native, 0);
    goto LABEL_57;
  }

  if (v53 >= *(v51 + 16))
  {
LABEL_65:
    __break(1u);
    OUTLINED_FUNCTION_0(&qword_2813194A0);
    sub_2680B406C(v53, &dword_268086000, off_2813194A8, "Error encountered while retrieving cached NSRegularExpression", 61, 2, MEMORY[0x277D84F90], v104);

    v27 = *(v123 + 20);
    v28 = *v26;
    sub_2680B37CC();
    OUTLINED_FUNCTION_1_1();
    (*(v29 + 104))(&v117[v27], v28);
    v30 = *(v123 + 24);
    *v117 = 0;
    *&v117[v30] = 0;
    *&v117[*(v123 + 28)] = 0;
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_33();
  (*(v57 + 16))(v43, v55 + v56 + *(v57 + 72) * v53, v54);
  if ((sub_2680B375C() & 1) == 0)
  {

    OUTLINED_FUNCTION_49();

    v53 = sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2813194A0);
    }

    sub_2680B406C(v53, &dword_268086000, off_2813194A8, "Regex override without capture group name", 41, 2, MEMORY[0x277D84F90], v104);
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_19();
    v93(v43, v54);
    goto LABEL_50;
  }

  v118 = v53;
  v58 = v40;
  v59 = v49;
  sub_2680B374C();
  v49 = sub_2680B40BC();

  v53 = [v107 rangeWithName_];
  v61 = v60;

  if (v53 == sub_2680B2DAC())
  {

    OUTLINED_FUNCTION_49();

    v124 = sub_2680B424C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2813194A0);
    }

    v121 = off_2813194A8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_2680B5350;
    v96 = sub_2680B374C();
    v98 = v97;
    v53 = MEMORY[0x277D837D0];
    *(v95 + 56) = MEMORY[0x277D837D0];
    v99 = sub_26808C1E4();
    *(v95 + 64) = v99;
    *(v95 + 32) = v96;
    *(v95 + 40) = v98;
    v100 = sub_2680B385C();
    *(v95 + 96) = v53;
    *(v95 + 104) = v99;
    *(v95 + 72) = v100;
    *(v95 + 80) = v101;
    OUTLINED_FUNCTION_57(v124, &dword_268086000, v121, "Failed to match regex group: %@, in regex: %@", 45);
    OUTLINED_FUNCTION_59();

    OUTLINED_FUNCTION_19();
    v102(v43, v54);
    goto LABEL_55;
  }

  v62 = sub_268091888(v43, v53, v61, v44, v110, v112, v113);
  if (!v62)
  {
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_49();

    OUTLINED_FUNCTION_19();
    v103(v43, v54);

LABEL_55:
    OUTLINED_FUNCTION_27_0();
    sub_2680931D0(v59, v58);
    v94 = v59;
    goto LABEL_56;
  }

  v53 = v62;
  v26 = 0;
  v119 = v118 + 1;
  v120 = v62;
  v115 = v62 + 8;
  v63 = 1 << *(v62 + 32);
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  else
  {
    v64 = -1;
  }

  v65 = v64 & v62[8];
  v114 = (v63 + 63) >> 6;
  while (1)
  {
    if (!v65)
    {
      v44 = v116;
      while (1)
      {
        v66 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v66 >= v114)
        {
          OUTLINED_FUNCTION_19();
          v43 = v108;
          v54 = v111;
          v85(v108, v111);

          v40 = v117;
          v53 = v119;
          v49 = v109;
          v51 = OUTLINED_FUNCTION_49();
          goto LABEL_6;
        }

        v65 = v115[v66];
        ++v26;
        if (v65)
        {
          v26 = v66;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_21:
    v67 = (v26 << 9) | (8 * __clz(__rbit64(v65)));
    v49 = *(*(v53 + 48) + v67);
    v68 = *(*(v53 + 56) + v67);

    sub_268093C70(isUniquelyReferenced_nonNull_native, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v69 = sub_268093DAC(v49);
    if (__OFADD__(*(v123 + 16), (v70 & 1) == 0))
    {
      goto LABEL_59;
    }

    v71 = v69;
    v72 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249180, &qword_2680B53B8);
    if (sub_2680B43AC())
    {
      break;
    }

LABEL_25:
    if ((v72 & 1) == 0)
    {
      *(v123 + 8 * (v71 >> 6) + 64) |= 1 << v71;
      *(*(v123 + 48) + 8 * v71) = v49;
      *(*(v123 + 56) + 8 * v71) = MEMORY[0x277D84F90];
      v75 = *(v123 + 16);
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (v76)
      {
        goto LABEL_63;
      }

      *(v123 + 16) = v77;
    }

    v78 = *(v123 + 56);
    v79 = *(v68 + 16);
    v49 = *(v78 + 8 * v71);
    v80 = v49[2];
    v53 = v80 + v79;
    if (__OFADD__(v80, v79))
    {
      goto LABEL_60;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v78 + 8 * v71) = v49;
    if (!isUniquelyReferenced_nonNull_native || v53 > v49[3] >> 1)
    {

      sub_268095454();
      *(v78 + 8 * v71) = v81;

      v49 = *(v78 + 8 * v71);
    }

    v65 &= v65 - 1;
    if (*(v68 + 16))
    {
      isUniquelyReferenced_nonNull_native = v49[2];
      v53 = (v49[3] >> 1) - isUniquelyReferenced_nonNull_native;
      type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanForNode(0);
      if (v53 < v79)
      {
        goto LABEL_62;
      }

      swift_arrayInitWithCopy();

      OUTLINED_FUNCTION_10();
      v53 = v120;
      if (v79)
      {
        v82 = *(v78 + 8 * v71);
        v83 = *(v82 + 16);
        v76 = __OFADD__(v83, v79);
        v84 = v83 + v79;
        if (v76)
        {
          goto LABEL_64;
        }

        *(v82 + 16) = v84;
        OUTLINED_FUNCTION_10();
      }
    }

    else
    {

      OUTLINED_FUNCTION_10();
      v53 = v120;
      if (v79)
      {
        goto LABEL_61;
      }
    }
  }

  v73 = sub_268093DAC(v49);
  if ((v72 & 1) == (v74 & 1))
  {
    v71 = v73;
    goto LABEL_25;
  }

  sub_2680B44AC();
  __break(1u);
}

unint64_t sub_268091340()
{
  result = qword_281319300;
  if (!qword_281319300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280249170, &qword_2680B53B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281319300);
  }

  return result;
}

unint64_t sub_2680913A4()
{
  result = qword_280249280;
  if (!qword_280249280)
  {
    sub_2680B32DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280249280);
  }

  return result;
}

uint64_t sub_268091404(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2680B43CC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{

  return sub_2680B406C(a1, a2, a3, a4, a5, 2, v5);
}

uint64_t sub_268091440(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for UtteranceRuleMatchResult(0);
  (*(*(matched - 8) + 32))(a2, a1, matched);
  return a2;
}

void sub_2680914B8()
{
  OUTLINED_FUNCTION_8_1();
  sub_2680B37CC();
  OUTLINED_FUNCTION_13_0();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_14_2();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0;
  }
}

uint64_t sub_268091544(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for TurnInputRuleMatchResult(0);
  (*(*(matched - 8) + 32))(a2, a1, matched);
  return a2;
}

uint64_t sub_2680915A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_268091618(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_10_1();
  sub_2680B37CC();
  OUTLINED_FUNCTION_13_0();
  if (*(v3 + 84) == a2)
  {
    v4 = OUTLINED_FUNCTION_15_2();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
    return OUTLINED_FUNCTION_17_2(v8);
  }
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1)
{

  return sub_2680B447C();
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_26809170C(uint64_t a1)
{
  matched = type metadata accessor for TurnInputRuleMatchResult(0);
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

uint64_t OUTLINED_FUNCTION_37_0(uint64_t a1)
{

  return sub_2680A5EF0(a1, v1);
}

void sub_2680917A4()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_21_0(v2, v5, &qword_280249220, &qword_2680B5478);
  v8 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for OverrideMatchResult(v8);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_1_2(v9);
    sub_26808B38C(v10, v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void *sub_268091888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v175 = a7;
  v174 = a6;
  v170 = a5;
  v203 = a4;
  v161 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanForNode(0);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v166 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2680B2FCC();
  v12 = *(v11 - 8);
  v195 = v11;
  v196 = v12;
  MEMORY[0x28223BE20](v11);
  v194 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_2680B33EC();
  v185 = *(v199 - 8);
  v14 = MEMORY[0x28223BE20](v199);
  v186 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v159 - v16;
  v18 = sub_2680B383C();
  v177 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v179 = &v159 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v159 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249188, &qword_2680B53C0);
  MEMORY[0x28223BE20](v23);
  v172 = (&v159 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249190, &qword_2680B53C8);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v168 = &v159 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v162 = &v159 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v159 - v31;
  MEMORY[0x28223BE20](v30);
  v181 = &v159 - v33;
  v34 = *(sub_2680B36FC() + 16);

  if (!v34)
  {
    v17 = sub_2680B424C();
    if (qword_2813194A0 == -1)
    {
LABEL_67:
      sub_2680B406C(v17, &dword_268086000, off_2813194A8, "Regex override without SpanDataForNamedCaptureGroup", 51, 2, MEMORY[0x277D84F90], v159);
      return MEMORY[0x277D84F98];
    }

LABEL_123:
    swift_once();
    goto LABEL_67;
  }

  v169 = a3;
  v35 = __OFADD__(a2, a3);
  v36 = a2 + a3;
  if (v35)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v200 = a2;
  v187 = sub_2680B36FC();
  v37 = 0;
  v167 = v177 + 16;
  v184 = (v177 + 32);
  v202 = v185 + 16;
  v192 = v196 + 8;
  v193 = v196 + 16;
  v198 = (v185 + 8);
  v171 = (v185 + 32);
  v183 = (v177 + 8);
  v190 = v36;
  v164 = v36 - 1;
  v38 = MEMORY[0x277D84F90];
  v39 = __OFSUB__(v36, 1);
  v165 = v39;
  v163 = xmmword_2680B4FE0;
  v182 = v18;
  v180 = v23;
  v191 = a1;
  v176 = v22;
  v178 = v32;
  while (1)
  {
    v40 = *(v187 + 16);
    if (v37 == v40)
    {
      v188 = v37;
      v41 = 1;
    }

    else
    {
      if (v37 >= v40)
      {
        goto LABEL_115;
      }

      v42 = v37 + 1;
      v43 = v177;
      v44 = v187 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v37;
      v45 = *(v23 + 48);
      v46 = v172;
      *v172 = v37;
      (*(v43 + 16))(v46 + v45, v44, v18);
      sub_26809315C(v46, v32, &qword_280249188, &qword_2680B53C0);
      v41 = 0;
      v188 = v42;
    }

    __swift_storeEnumTagSinglePayload(v32, v41, 1, v23);
    v47 = v181;
    sub_26809315C(v32, v181, &qword_280249190, &qword_2680B53C8);
    if (__swift_getEnumTagSinglePayload(v47, 1, v23) == 1)
    {
      break;
    }

    v197 = *v47;
    (*v184)(v22, &v47[*(v23 + 48)], v18);
    v48 = sub_2680B382C();
    v189 = v38;
    if ((v48 & 1) == 0)
    {
      goto LABEL_51;
    }

    v49 = sub_2680B381C();
    v51 = v50;

    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      v53 = sub_2680B381C();
      if (!*(v170 + 16) || (v55 = sub_26809EB44(v53, v54), (v56 & 1) == 0))
      {

        (*v183)(v22, v18);
        goto LABEL_107;
      }

      v57 = *(*(v170 + 56) + 8 * v55);

      v58 = *(v57 + 16);
      if (v58)
      {
        v59 = (*(v185 + 80) + 32) & ~*(v185 + 80);
        v159 = v57;
        v173 = v59;
        v60 = v57 + v59;
        v201 = *(v185 + 72);
        v61 = *(v185 + 16);
        v62 = MEMORY[0x277D84F90];
        v63 = v199;
        v64 = v190;
        while (1)
        {
          v61(v17, v60, v63);
          v65 = sub_2680B332C();
          v66 = *(sub_2680B31DC() + 16);

          if (v66 <= v65)
          {
            v73 = -1;
          }

          else
          {
            v67 = sub_2680B31DC();
            if (*(v67 + 16) <= v65)
            {
              __break(1u);
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
LABEL_114:
              __break(1u);
LABEL_115:
              __break(1u);
LABEL_116:
              __break(1u);
              goto LABEL_117;
            }

            v68 = v196;
            v69 = v67 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v65;
            v71 = v194;
            v70 = v195;
            (*(v196 + 16))(v194, v69, v195);

            v72 = sub_2680B2FBC();
            (*(v68 + 8))(v71, v70);
            v73 = v72;
          }

          v74 = sub_2680B32FC();
          if (v74 && (v75 = v74, v76 = *(sub_2680B31DC() + 16), , v76 >= v75))
          {
            v80 = sub_2680B31DC();
            if (*(v80 + 16) < v75)
            {
              goto LABEL_112;
            }

            v81 = v75 - 1;
            v83 = v195;
            v82 = v196;
            v84 = v194;
            (*(v196 + 16))(v194, v80 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v196 + 72) * v81, v195);

            v85 = sub_2680B2FAC();
            v86 = v84;
            v64 = v190;
            (*(v82 + 8))(v86, v83);
            v79 = v85;
            v77 = v200;
            if (v73 < v200 || v64 < v85)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v77 = v200;
            if (v73 < v200 || v64 < -1)
            {
              goto LABEL_48;
            }

            v79 = -1;
          }

          if (v197 || v73 == v77)
          {
            v88 = *(sub_2680B36FC() + 16);

            if (v197 != v88 - 1 || v79 == v64)
            {
              v63 = v199;
              v61(v186, v17, v199);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_26809EDEC();
                v62 = v91;
              }

              v90 = *(v62 + 16);
              if (v90 >= *(v62 + 24) >> 1)
              {
                sub_26809EDEC();
                v62 = v92;
              }

              (*v198)(v17, v63);
              *(v62 + 16) = v90 + 1;
              (*v171)(v62 + v173 + v90 * v201, v186, v63);
              goto LABEL_49;
            }
          }

LABEL_48:
          v63 = v199;
          (*v198)(v17, v199);
LABEL_49:
          v60 += v201;
          if (!--v58)
          {

            v18 = v182;
            v23 = v180;
            v22 = v176;
            goto LABEL_60;
          }
        }
      }

      v62 = MEMORY[0x277D84F90];
LABEL_60:
      v38 = v189;
      if (!*(v62 + 16))
      {
        (*v183)(v22, v18);

LABEL_107:

LABEL_108:

        return 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26809304C();
        v38 = v109;
      }
    }

    else
    {
LABEL_51:
      v93 = v174;
      v94 = v175;
      sub_2680B422C();
      if (v95)
      {

LABEL_97:
        v151 = sub_2680B424C();
        v152 = v190;
        if (qword_2813194A0 != -1)
        {
          swift_once();
        }

        v153 = off_2813194A8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
        v154 = swift_allocObject();
        v155 = MEMORY[0x277D83B88];
        *(v154 + 16) = xmmword_2680B5360;
        v156 = MEMORY[0x277D83C10];
        *(v154 + 56) = v155;
        *(v154 + 64) = v156;
        *(v154 + 32) = v200;
        *(v154 + 96) = v155;
        *(v154 + 104) = v156;
        *(v154 + 72) = v152;
        *(v154 + 136) = MEMORY[0x277D837D0];
        *(v154 + 144) = sub_26808C1E4();
        *(v154 + 112) = v93;
        *(v154 + 120) = v94;

        sub_2680B406C(v151, &dword_268086000, v153, "Unable to match no span label to regexGroup range. Range: %d-%d. Utterance: %@", 78, 2, v154);

        (*v183)(v22, v18);
        return 0;
      }

      v96 = sub_2680B41BC();
      v98 = v97;
      v100 = v99;
      v102 = v101;
      sub_268092C24();
      if ((v103 & 0x100000000) != 0)
      {
        goto LABEL_68;
      }

      if (v165)
      {
        goto LABEL_113;
      }

      sub_268092C24();
      if ((v104 & 0x100000000) != 0)
      {
LABEL_68:

        v18 = v182;
        v94 = v175;
        v93 = v174;
        v22 = v176;
        goto LABEL_97;
      }

      v105 = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249198, &unk_2680B53D0);
      v62 = swift_allocObject();
      *(v62 + 16) = v163;
      sub_2680B33DC();
      sub_2680B33AC();
      sub_2680B333C();
      if (v105 == -1)
      {
        goto LABEL_114;
      }

      sub_2680B330C();
      MEMORY[0x26D60FC80](v96, v98, v100, v102);

      sub_2680B338C();
      v38 = v189;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26809304C();
        v38 = v108;
      }

      v18 = v182;
      v23 = v180;
      v22 = v176;
    }

    v106 = *(v38 + 16);
    if (v106 >= *(v38 + 24) >> 1)
    {
      sub_26809304C();
      v38 = v107;
    }

    (*v183)(v22, v18);
    *(v38 + 16) = v106 + 1;
    *(v38 + 8 * v106 + 32) = v62;
    v32 = v178;
    v37 = v188;
  }

  static MatchingSpanUtils.getAdjacentSpanLists(from:usingTokens:)();
  v112 = v111;

  v113 = *(v112 + 16);
  if (v113 >= 2)
  {
    v114 = sub_2680B424C();
    if (qword_2813194A0 != -1)
    {
      swift_once();
    }

    sub_2680B406C(v114, &dword_268086000, off_2813194A8, "More than 1 adjacent span group found, selecting the first", 58, 2, MEMORY[0x277D84F90], v159, v160);
    v113 = *(v112 + 16);
  }

  if (!v113)
  {
    goto LABEL_108;
  }

  v17 = *(v112 + 32);

  v115 = *(v17 + 2);
  v116 = *(sub_2680B36FC() + 16);

  if (v115 != v116)
  {

    v157 = sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      swift_once();
    }

    sub_2680B406C(v157, &dword_268086000, off_2813194A8, "AdjacentSpanGroup not matching regexGroupData", 45, 2, MEMORY[0x277D84F90], v159);
    return 0;
  }

  v117 = sub_2680B36FC();
  v118 = 0;
  v119 = 0;
  v110 = MEMORY[0x277D84F98];
  v120 = *(v117 + 16);
  while (1)
  {
    v121 = v168;
    if (v119 == v120)
    {
      v122 = 1;
      v119 = v120;
    }

    else
    {
      if ((v119 & 0x8000000000000000) != 0)
      {
        goto LABEL_119;
      }

      if (v119 >= *(v117 + 16))
      {
        goto LABEL_120;
      }

      v123 = v177;
      v124 = v117 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v119;
      v125 = *(v23 + 48);
      v126 = v172;
      *v172 = v119;
      (*(v123 + 16))(v126 + v125, v124, v18);
      sub_26809315C(v126, v168, &qword_280249188, &qword_2680B53C0);
      v122 = 0;
      ++v119;
      v121 = v168;
    }

    __swift_storeEnumTagSinglePayload(v121, v122, 1, v23);
    v127 = v121;
    v128 = v162;
    sub_26809315C(v127, v162, &qword_280249190, &qword_2680B53C8);
    if (__swift_getEnumTagSinglePayload(v128, 1, v23) == 1)
    {

      sub_268093C70(v118, 0);
      return v110;
    }

    v129 = *v128;
    (*v184)(v179, &v128[*(v23 + 48)], v18);
    v130 = sub_2680B37FC();
    if ((v129 & 0x8000000000000000) != 0)
    {
      goto LABEL_116;
    }

    if (v129 >= *(v17 + 2))
    {
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v131 = v130;
    v132 = &v17[((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v129];
    v133 = v166;
    (*(v185 + 16))(v166, v132, v199);
    *(v133 + *(v161 + 20)) = sub_2680B380C();
    sub_268093C70(v118, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v204 = v110;
    v134 = sub_268093DAC(v131);
    if (__OFADD__(v110[2], (v135 & 1) == 0))
    {
      goto LABEL_118;
    }

    v136 = v134;
    v137 = v135;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249180, &qword_2680B53B8);
    v138 = sub_2680B43AC();
    v110 = v204;
    if (v138)
    {
      break;
    }

LABEL_88:
    if ((v137 & 1) == 0)
    {
      v110[(v136 >> 6) + 8] |= 1 << v136;
      *(v110[6] + 8 * v136) = v131;
      *(v110[7] + 8 * v136) = MEMORY[0x277D84F90];
      v141 = v110[2];
      v35 = __OFADD__(v141, 1);
      v142 = v141 + 1;
      if (v35)
      {
        goto LABEL_121;
      }

      v110[2] = v142;
    }

    v143 = v110[7];
    v144 = *(v143 + 8 * v136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v143 + 8 * v136) = v144;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_268095454();
      v144 = v149;
      *(v143 + 8 * v136) = v149;
    }

    v146 = *(v144 + 16);
    if (v146 >= *(v144 + 24) >> 1)
    {
      sub_268095454();
      *(v143 + 8 * v136) = v150;
    }

    v147 = v182;
    (*v183)(v179, v182);
    v148 = *(v143 + 8 * v136);
    *(v148 + 16) = v146 + 1;
    v18 = v147;
    sub_268095638(v166, v148 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v146);
    v118 = sub_26809DC74;
    v23 = v180;
  }

  v139 = sub_268093DAC(v131);
  if ((v137 & 1) == (v140 & 1))
  {
    v136 = v139;
    goto LABEL_88;
  }

  result = sub_2680B44AC();
  __break(1u);
  return result;
}

unint64_t sub_268092BCC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void sub_268092C24()
{
  OUTLINED_FUNCTION_54();
  v1 = v0;
  v2 = sub_2680B2FCC();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491F0, &qword_2680B5448);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v42 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491F8, &unk_2680B5450);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_20();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = sub_2680B31DC();
  v20 = v1;
  v21 = 0;
  v43 = v4;
  v44 = v19;
  v22 = *(v19 + 16);
  v41 = v4 + 16;
  v45 = v4 + 8;
  v46 = (v4 + 32);
  v47 = v22;
  do
  {
    while (1)
    {
      if (v21 == v22)
      {
        v23 = 1;
        v21 = v22;
      }

      else
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        if (v21 >= *(v44 + 16))
        {
          goto LABEL_17;
        }

        v24 = v42;
        OUTLINED_FUNCTION_33();
        v28 = v26 + v25 + *(v27 + 72) * v21;
        v29 = *(v9 + 48);
        *v24 = v21;
        (*(v27 + 16))(&v24[v29], v28, v2);
        sub_268092F64(v24, v15, &qword_2802491F0, &qword_2680B5448);
        v23 = 0;
        ++v21;
      }

      __swift_storeEnumTagSinglePayload(v15, v23, 1, v9);
      sub_268092F64(v15, v18, &qword_2802491F8, &unk_2680B5450);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v9);
      if (EnumTagSinglePayload == 1)
      {
        goto LABEL_14;
      }

      v31 = *v18;
      (*v46)(v8, &v18[*(v9 + 48)], v2);
      v32 = v2;
      v33 = v20;
      if (sub_2680B2FBC() <= v20)
      {
        break;
      }

      v34 = OUTLINED_FUNCTION_24();
      v35(v34);
      v2 = v32;
      v22 = v47;
    }

    v36 = sub_2680B2FAC();
    v37 = OUTLINED_FUNCTION_24();
    v38(v37);
    v39 = v36;
    v20 = v33;
    v40 = v39 <= v33;
    v2 = v32;
    v22 = v47;
  }

  while (v40);

  if ((v31 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(v31))
    {
      __break(1u);
LABEL_14:
    }

    v48 = EnumTagSinglePayload == 1;
    OUTLINED_FUNCTION_53();
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_268092F64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_9();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanForNode(uint64_t a1)
{
  result = qword_2813196A0;
  if (!qword_2813196A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26809304C()
{
  OUTLINED_FUNCTION_28_0();
  if (v3)
  {
    OUTLINED_FUNCTION_17();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = v0[2];
  if (v4 <= v7)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249238, &qword_2680B5490);
    v9 = OUTLINED_FUNCTION_32_0();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v7;
    v9[3] = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[v7 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 8 * v7);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249230, &qword_2680B5488);
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_26809315C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1_1();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2680931D0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_52();
  v5(v4);
  OUTLINED_FUNCTION_1_1();
  (*(v6 + 16))(a2, v2);
  return a2;
}

void static MatchingSpanUtils.getAdjacentSpanLists(from:usingTokens:)()
{
  OUTLINED_FUNCTION_54();
  v98 = v0;
  v2 = v1;
  v88 = sub_2680B2FCC();
  OUTLINED_FUNCTION_4();
  v90 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6();
  v87 = v6 - v5;
  v7 = sub_2680B33EC();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v73 - v11;
  MEMORY[0x28223BE20](v10);
  if (!*(v2 + 16))
  {
    goto LABEL_59;
  }

  v89 = &v73 - v13;
  v96 = *(v2 + 32);
  v16 = *(v96 + 16);
  if (!v16)
  {
    goto LABEL_59;
  }

  v94 = v2;
  v95 = v14;
  v17 = *(v15 + 80);
  v92 = v15;
  v93 = (v17 + 32) & ~v17;
  v18 = v96 + v93;
  v19 = *(v15 + 72);
  v101 = (v15 + 16);

  v20 = MEMORY[0x277D84F90];
  v97 = xmmword_2680B4FE0;
  v99 = v19;
  do
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249198, &unk_2680B53D0);
    v21 = v93;
    v22 = swift_allocObject();
    *(v22 + 16) = v97;
    v100 = *v101;
    v100(v22 + v21, v18, v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_18();
      sub_26809304C();
      v20 = v28;
    }

    v23 = v20;
    v24 = *(v20 + 16);
    v25 = v23;
    v26 = *(v23 + 24);
    if (v24 >= v26 >> 1)
    {
      OUTLINED_FUNCTION_27(v26);
      sub_26809304C();
      v25 = v29;
    }

    *(v25 + 16) = v24 + 1;
    v27 = v25 + 8 * v24;
    v20 = v25;
    *(v27 + 32) = v22;
    v18 += v99;
    --v16;
  }

  while (v16);

  v102 = v94;
  if (!sub_268093C80(v94))
  {
    goto LABEL_62;
  }

  sub_268093AF8(0, 1);

  v30 = v102;
  v31 = *(v102 + 16);
  v32 = v89;
  v33 = v99;
  if (!v31)
  {
LABEL_55:

    goto LABEL_59;
  }

  v34 = 0;
  v76 = v102 + 32;
  v85 = v90 + 8;
  v86 = v90 + 16;
  *&v97 = v92 + 8;
  v91 = (v92 + 32);
  v81 = xmmword_2680B5360;
  v75 = v102;
  v74 = v31;
  while (1)
  {
    if (v34 >= *(v30 + 16))
    {
      goto LABEL_61;
    }

    v80 = *(v20 + 16);
    v77 = v34;
    if (v80)
    {
      break;
    }

    v20 = MEMORY[0x277D84F90];
LABEL_53:
    if (!*(v20 + 16))
    {
      goto LABEL_58;
    }

    v34 = v77 + 1;
    if (v77 + 1 == v31)
    {
      goto LABEL_55;
    }
  }

  v35 = *(v76 + 8 * v34);
  v79 = v20 + 32;
  v94 = v35 + v93;

  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  v83 = v35;
  v78 = v20;
  while (1)
  {
    if (v36 >= *(v20 + 16))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      return;
    }

    v38 = *(v79 + 8 * v36);
    v39 = *(v38 + 16);
    if (v39)
    {
      break;
    }

LABEL_50:
    if (++v36 == v80)
    {

      v20 = v37;
      v30 = v75;
      v31 = v74;
      goto LABEL_53;
    }
  }

  v82 = v36;
  v100(v32, v38 + v93 + (v39 - 1) * v33, v7);
  v96 = *(v35 + 16);
  if (!v96)
  {
    v46 = *v97;
LABEL_49:
    (v46)(v32, v7);
    v36 = v82;
    goto LABEL_50;
  }

  v92 = v38;

  v40 = 0;
  while (v40 < *(v35 + 16))
  {
    v100(v12, v94 + v40 * v33, v7);
    v41 = sub_2680B31DC();
    v42 = sub_2680B32FC();
    if (v42 == sub_2680B332C())
    {

LABEL_22:
      v100(v95, v12, v7);
      v43 = v92;

      v44 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_18();
        sub_26809EDEC();
        v44 = v69;
      }

      v46 = *(v44 + 16);
      v45 = *(v44 + 24);
      if (v46 >= v45 >> 1)
      {
        OUTLINED_FUNCTION_27(v45);
        OUTLINED_FUNCTION_23_0();
        sub_26809EDEC();
        v44 = v70;
      }

      *(v44 + 16) = v46 + 1;
      (*v91)(v44 + v93 + v46 * v33, v95, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_18();
        sub_26809304C();
        v37 = v71;
      }

      v48 = *(v37 + 16);
      v47 = *(v37 + 24);
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_27(v47);
        sub_26809304C();
        v37 = v72;
      }

      v49 = OUTLINED_FUNCTION_7_3();
      (v46)(v49);
      *(v37 + 16) = v48 + 1;
      *(v37 + 8 * v48 + 32) = v44;
      v33 = v99;
      goto LABEL_45;
    }

    v46 = sub_2680B32FC();
    if (sub_2680B332C() >= v46)
    {
      v50 = sub_2680B32FC();
      v46 = *(v41 + 16);
      if (v46 != v50)
      {
        if (v46 < sub_2680B32FC() || v46 <= sub_2680B332C())
        {

          v84 = sub_2680B425C();
          if (qword_2813194A0 != -1)
          {
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          v46 = off_2813194A8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
          v60 = swift_allocObject();
          *(v60 + 16) = v81;
          v61 = sub_2680B31BC();
          v63 = v62;
          *(v60 + 56) = MEMORY[0x277D837D0];
          *(v60 + 64) = sub_26808C1E4();
          *(v60 + 32) = v61;
          *(v60 + 40) = v63;
          v64 = sub_2680B32FC();
          v65 = MEMORY[0x277D84CC0];
          *(v60 + 96) = MEMORY[0x277D84CC0];
          v66 = MEMORY[0x277D84D30];
          *(v60 + 104) = MEMORY[0x277D84D30];
          *(v60 + 72) = v64;
          v67 = sub_2680B332C();
          *(v60 + 136) = v65;
          *(v60 + 144) = v66;
          *(v60 + 112) = v67;
          sub_2680B406C(v84, &dword_268086000, v46, "Spans outside of TokenChain: %@. First end index: %d, Second start index: %d", 76, 2, v60);

          v68 = OUTLINED_FUNCTION_7_3();
          (v46)(v68);
          v33 = v99;
LABEL_44:
          v35 = v83;
          goto LABEL_45;
        }

        v46 = sub_2680B32FC();
        while (v46 < sub_2680B332C())
        {
          if (v46 >= *(v41 + 16))
          {
            goto LABEL_57;
          }

          v52 = v90;
          OUTLINED_FUNCTION_33();
          v54 = v87;
          v55 = v88;
          (*(v52 + 16))(v87, v41 + v53 + *(v52 + 72) * v46, v88);
          v56 = sub_2680B2F9C();
          v57 = *(v52 + 8);
          v32 = v89;
          v58 = v55;
          v33 = v99;
          v57(v54, v58);
          ++v46;
          if (v56)
          {
            v59 = OUTLINED_FUNCTION_7_3();
            (v46)(v59);

            goto LABEL_44;
          }
        }

        v35 = v83;
        goto LABEL_22;
      }
    }

    v51 = OUTLINED_FUNCTION_7_3();
    (v46)(v51);

LABEL_45:
    if (++v40 == v96)
    {

      v20 = v78;
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:

LABEL_59:
  OUTLINED_FUNCTION_53();
}

uint64_t sub_268093AF8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_268093C58(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249230, &qword_2680B5488);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 8 * a2);
  if (v5 != a2 || v12 + 8 * v11 <= v9 + 8 * v5)
  {
    result = memmove((v9 + 8 * v5), v12, 8 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_268093BF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_268093C70(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_268093C80(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

BOOL sub_268093CE0()
{
  OUTLINED_FUNCTION_1_0();
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    v7 = *(v1(0) - 8);
    v8 = v3(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6);
    if (v0)
    {
      break;
    }

    v5 = v6 + 1;
  }

  while ((v8 & 1) == 0);
  return v4 != v6;
}

unint64_t sub_268093DAC(uint64_t a1)
{
  v2 = sub_2680B451C();

  return sub_268093FC4(a1, v2);
}

uint64_t sub_268093DF0()
{
  v0 = sub_2680B324C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2680B313C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2680B3DCC();
  sub_2680B312C();
  (*(v5 + 8))(v7, v4);
  sub_2680B3DFC();
  sub_268094024();
  v9 = v8;

  (*(v1 + 8))(v3, v0);
  return v9 & 1;
}

unint64_t sub_268093FC4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_268094024()
{
  OUTLINED_FUNCTION_54();
  v77 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249258, &qword_2680B54E8);
  OUTLINED_FUNCTION_7(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  v76 = v67 - v6;
  OUTLINED_FUNCTION_21();
  sub_2680B33EC();
  OUTLINED_FUNCTION_4();
  v78 = v8;
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6();
  v11 = v10 - v9;
  v12 = sub_2680B372C();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6();
  v18 = v17 - v16;
  v19 = sub_2680B324C();
  OUTLINED_FUNCTION_4();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_45_0();
  if (sub_2680B36DC() & 1) == 0 || (sub_2680B36EC(), sub_2680B370C(), v23 = sub_268094734(v3, v18), (*(v14 + 8))(v18, v12), (*(v21 + 8))(v0, v19), (v23))
  {
    if (sub_2680B373C())
    {
      v24 = sub_2680B371C() & 1;
      if (v24 != (sub_2680A6EA0() & 1))
      {
        v25 = sub_2680B424C();
        if (qword_2813194A0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2813194A0);
        }

        sub_2680B406C(v25, &dword_268086000, off_2813194A8, "Applicability to prompt scenarios was not matched", 49, 2, MEMORY[0x277D84F90]);
        goto LABEL_52;
      }
    }

    v26 = *(sub_2680B36FC() + 16);

    if (!v26)
    {
      goto LABEL_52;
    }

    v27 = sub_2680B36FC();
    v28 = 0;
    v29 = *(v27 + 16);
    v71 = v78 + 8;
    v72 = v27;
    v67[1] = v78 + 16;
    v68 = v29;
LABEL_10:
    if (v28 == v29)
    {

      goto LABEL_52;
    }

    if (v28 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_54;
    }

    v30 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v31 = *(v78 + 72);
    (*(v78 + 16))(v11, v27 + v30 + v31 * v28, v79);
    v69 = v28 + 1;
    v32 = *(v77 + 16);
    v33 = v77 + v30;
    if (!v32)
    {
LABEL_46:
      v64 = OUTLINED_FUNCTION_46_0();
      v65(v64);

      v26 = sub_2680B424C();
      if (qword_2813194A0 == -1)
      {
LABEL_47:
        sub_2680B406C(v26, &dword_268086000, off_2813194A8, "Spans were not matched", 22, 2, MEMORY[0x277D84F90]);
        goto LABEL_52;
      }

LABEL_54:
      OUTLINED_FUNCTION_0(&qword_2813194A0);
      goto LABEL_47;
    }

    while (1)
    {
      if ((sub_2680B33CC() & 1) == 0)
      {
        goto LABEL_43;
      }

      if ((sub_2680B33CC() & 1) == 0)
      {
        goto LABEL_43;
      }

      if ((sub_2680B336C() & 1) == 0)
      {
        goto LABEL_43;
      }

      if ((sub_2680B334C() & 1) == 0)
      {
        goto LABEL_43;
      }

      v34 = *(sub_2680B32EC() + 16);

      if (!v34)
      {
        goto LABEL_43;
      }

      if (sub_2680B336C())
      {
        v35 = sub_2680B332C();
        v75 = v35 != sub_2680B332C();
      }

      else
      {
        v75 = 0;
      }

      if (sub_2680B334C())
      {
        v36 = sub_2680B32FC();
        v74 = v36 != sub_2680B32FC();
      }

      else
      {
        v74 = 0;
      }

      if (sub_2680B33BC())
      {
        v82 = sub_2680B337C();
        v83 = v37;
        v80 = sub_2680B337C();
        v81 = v38;
        sub_2680B2F5C();
        v39 = v76;
        OUTLINED_FUNCTION_23_3();
        __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
        sub_26808CA6C();
        v44 = sub_2680B42DC();
        sub_26808C12C(v39, &qword_280249258, &qword_2680B54E8);

        v73 = v44 != 0;
      }

      else
      {
        v73 = 0;
      }

      if (sub_2680B335C())
      {
        v45 = sub_2680B331C();
        v47 = v46;
        if (v45 != sub_2680B331C() || v47 != v48)
        {
          v50 = sub_2680B447C();

          v51 = v50 ^ 1;
          goto LABEL_35;
        }
      }

      v51 = 0;
LABEL_35:
      v52 = sub_2680B32EC();
      MEMORY[0x28223BE20](v52);
      v70 = sub_268098420();

      v53 = sub_2680B339C();
      v55 = v54;
      v56 = sub_2680B339C();
      v26 = v57;
      if (v53 == v56 && v55 == v57)
      {

        v60 = v75 || v74;
        v61 = v73;
      }

      else
      {
        v59 = sub_2680B447C();

        v60 = v75 | ~v59;
        v61 = v74 || v73;
      }

      if (((v60 | v61 | v51) & 1) == 0 && v70)
      {
        v62 = OUTLINED_FUNCTION_46_0();
        v63(v62);
        v27 = v72;
        v29 = v68;
        v28 = v69;
        goto LABEL_10;
      }

LABEL_43:
      v33 += v31;
      if (!--v32)
      {
        goto LABEL_46;
      }
    }
  }

  v66 = sub_2680B424C();
  if (qword_2813194A0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2813194A0);
  }

  sub_2680B406C(v66, &dword_268086000, off_2813194A8, "Turn context was not matched", 28, 2, MEMORY[0x277D84F90]);
LABEL_52:
  OUTLINED_FUNCTION_53();
}

uint64_t sub_268094734(uint64_t a1, uint64_t a2)
{
  v96 = a1;
  v82 = sub_2680B3A1C();
  v81 = *(v82 - 8);
  v4 = MEMORY[0x28223BE20](v82);
  v80 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v79 = &v77 - v6;
  v97 = sub_2680B30CC();
  v86 = *(v97 - 8);
  v7 = MEMORY[0x28223BE20](v97);
  v85 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v99 = &v77 - v9;
  v100 = sub_2680B395C();
  v87 = *(v100 - 8);
  v10 = MEMORY[0x28223BE20](v100);
  v98 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v88 = &v77 - v12;
  v13 = sub_2680B311C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v84 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v95 = (&v77 - v18);
  MEMORY[0x28223BE20](v17);
  v20 = &v77 - v19;
  v21 = sub_2680B372C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, a2, v21);
  LODWORD(a2) = (*(v22 + 88))(v24, v21);
  v25 = *MEMORY[0x277D5DB88];
  v90 = v2;
  sub_2680B321C();
  sub_2680B310C();
  v26 = *(v14 + 8);
  v91 = v13;
  v89 = v14 + 8;
  v26(v20, v13);
  v101 = v96;
  if (a2 == v25)
  {
    v27 = sub_268095608();

    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    v28 = sub_268095608();

    (*(v22 + 8))(v24, v21);
    if (!v28)
    {
      return 0;
    }
  }

  sub_2680B321C();
  sub_2680B30DC();
  v29 = v91;
  v30 = (v26)(v20, v91);
  MEMORY[0x28223BE20](v30);
  v31 = v96;
  *(&v77 - 2) = v96;
  v32 = sub_26809569C();

  if (!v32)
  {
    return 0;
  }

  sub_2680B321C();
  sub_2680B30EC();
  v33 = (v26)(v20, v29);
  MEMORY[0x28223BE20](v33);
  *(&v77 - 2) = v31;
  v34 = sub_26809569C();

  if (!v34)
  {
    return 0;
  }

  sub_2680B321C();
  v35 = sub_2680B30FC();
  v26(v20, v29);
  v36 = *(v35 + 16);

  if (!v36)
  {
LABEL_53:
    if ((sub_2680B320C() & 1) == 0)
    {
      return 1;
    }

    if (sub_2680B320C())
    {
      v71 = v79;
      sub_2680B323C();
      v72 = v80;
      sub_2680B323C();
      v73 = sub_2680AC54C();
      v74 = *(v81 + 8);
      v75 = v72;
      v76 = v82;
      v74(v75, v82);
      v74(v71, v76);
      return v73;
    }

    return 0;
  }

  v37 = v95;
  sub_2680B321C();
  v38 = sub_2680B30FC();
  v78 = v26;
  v26(v37, v29);
  v39 = *(v38 + 16);
  if (v39)
  {
    v102 = MEMORY[0x277D84F90];
    sub_26808D0A8(0, v39, 0);
    v40 = v102;
    v94 = *(v87 + 16);
    v41 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v77 = v38;
    v42 = v38 + v41;
    v93 = *(v87 + 72);
    v83 = 0x80000002680B5FC0;
    v92 = (v86 + 8);
    v95 = (v87 + 16);
    v43 = (v87 + 8);
    while (1)
    {
      (v94)(v98, v42, v100);
      sub_2680B394C();
      sub_2680B3EBC();

      v45 = MEMORY[0x26D60FA70](v44);

      if (v45 >> 62)
      {
        result = sub_2680B43CC();
        if (result)
        {
LABEL_12:
          if ((v45 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26D60FED0](0, v45);
          }

          else
          {
            if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_60;
            }
          }

          v47 = sub_2680B3FAC();
          v49 = v48;

          goto LABEL_19;
        }
      }

      else
      {
        result = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_12;
        }
      }

      if (!sub_2680B3EFC())
      {

        v47 = 0x69746E65206F6E5BLL;
        v49 = 0xEB000000005D7974;
        goto LABEL_20;
      }

      v47 = sub_2680B3F9C();
      v49 = v50;

LABEL_19:

LABEL_20:
      (*v92)(v99, v97);
      (*v43)(v98, v100);
      v102 = v40;
      v52 = *(v40 + 16);
      v51 = *(v40 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_26808D0A8(v51 > 1, v52 + 1, 1);
        v40 = v102;
      }

      *(v40 + 16) = v52 + 1;
      v53 = v40 + 16 * v52;
      *(v53 + 32) = v47;
      *(v53 + 40) = v49;
      v42 += v93;
      if (!--v39)
      {

        goto LABEL_27;
      }
    }
  }

  v40 = MEMORY[0x277D84F90];
LABEL_27:
  v54 = sub_2680A8654(v40);
  v55 = v84;
  sub_2680B321C();
  v56 = sub_2680B30FC();
  result = v78(v55, v91);
  v93 = *(v56 + 16);
  if (!v93)
  {
LABEL_52:

    goto LABEL_53;
  }

  v57 = 0;
  v99 = (v56 + ((*(v87 + 80) + 32) & ~*(v87 + 80)));
  v98 = (v87 + 16);
  v92 = 0x80000002680B5FC0;
  v94 = (v86 + 8);
  v95 = (v87 + 8);
  v58 = v85;
LABEL_29:
  if (v57 >= *(v56 + 16))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  (*(v87 + 16))(v88, &v99[*(v87 + 72) * v57], v100);
  sub_2680B394C();
  sub_2680B3EBC();

  v60 = MEMORY[0x26D60FA70](v59);

  if (v60 >> 62)
  {
    result = sub_2680B43CC();
    if (result)
    {
      goto LABEL_32;
    }

LABEL_37:

    if (sub_2680B3EFC())
    {
      v61 = sub_2680B3F9C();
      v63 = v64;
    }

    else
    {

      v61 = 0x69746E65206F6E5BLL;
      v63 = 0xEB000000005D7974;
    }

    goto LABEL_40;
  }

  result = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_37;
  }

LABEL_32:
  if ((v60 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D60FED0](0, v60);
    goto LABEL_35;
  }

  if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_35:

    v61 = sub_2680B3FAC();
    v63 = v62;

    v58 = v85;
LABEL_40:
    (*v94)(v58, v97);
    if (*(v54 + 16))
    {
      ++v57;
      sub_2680B452C();
      sub_2680B410C();
      v65 = sub_2680B454C();
      v66 = ~(-1 << *(v54 + 32));
      while (1)
      {
        v67 = v65 & v66;
        if (((*(v54 + 56 + (((v65 & v66) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v65 & v66)) & 1) == 0)
        {
          break;
        }

        v68 = (*(v54 + 48) + 16 * v67);
        if (*v68 != v61 || v68[1] != v63)
        {
          v70 = sub_2680B447C();
          v65 = v67 + 1;
          if ((v70 & 1) == 0)
          {
            continue;
          }
        }

        result = (*v95)(v88, v100);
        if (v57 != v93)
        {
          goto LABEL_29;
        }

        goto LABEL_52;
      }
    }

    (*v95)(v88, v100);

    return 0;
  }

LABEL_61:
  __break(1u);
  return result;
}

void sub_268095454()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_21_0(v2, v5, &qword_2802491E8, &qword_2680B5440);
  v8 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanForNode(v8);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_1_2(v9);
    sub_26808B38C(v10, v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

BOOL sub_26809553C()
{
  OUTLINED_FUNCTION_1_0();
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    v7 = *(v1(0) - 8);
    v8 = v3(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6);
    if (v0)
    {
      break;
    }

    v5 = v6 + 1;
  }

  while ((v8 & 1) != 0);
  return v4 == v6;
}

uint64_t sub_268095638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanForNode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2680956CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2680B43EC();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_268095760(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, _BYTE *, uint64_t))
{
  v9 = sub_2680B311C();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6();
  v15 = v14 - v13;
  v16 = sub_2680B321C();
  v17 = a3(v16);
  (*(v11 + 8))(v15, v9);
  v20 = a1;
  LOBYTE(a5) = a5(a4, v19, v17);

  return a5 & 1;
}

uint64_t OverrideResult.init(matches:turnInputAndPreprocessing:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v87 = sub_2680B31AC();
  OUTLINED_FUNCTION_4();
  v92 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6();
  v83[0] = (v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492F0, &unk_2680B5830);
  OUTLINED_FUNCTION_7(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  v88 = v83 - v13;
  v14 = OUTLINED_FUNCTION_21();
  matched = type metadata accessor for OverrideMatchResultAndParse(v14);
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v91 = v18;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_51();
  v93 = v20;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_51();
  v90 = v22;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_51();
  v89 = v24;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v25);
  v27 = v83 - v26;
  v28 = type metadata accessor for OverrideResult(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v84 = v30;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v31);
  v33 = v83 - v32;
  v97 = a2;
  v34 = sub_268096204(sub_2680A3320, v96, a1);

  v35 = *(v34 + 16);
  if (v35)
  {
    v83[1] = v28;
    v85 = a3;
    v86 = a2;
    a3 = 0;
    v94 = MEMORY[0x277D84F90];
    while (v35 != a3)
    {
      if (a3 >= *(v34 + 16))
      {
        __break(1u);
LABEL_43:
        OUTLINED_FUNCTION_0(&qword_2813194A0);
LABEL_25:
        v60 = off_2813194A8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_2680B4FE0;
        *(v61 + 56) = MEMORY[0x277D837D0];
        *(v61 + 64) = sub_26808C1E4();
        *(v61 + 32) = v3;
        *(v61 + 40) = v28;
        sub_2680B406C(a1, &dword_268086000, v60, "Override %s was selected to override all parses.", v83[0]);

        goto LABEL_26;
      }

      a2 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v3 = *(v16 + 72);
      sub_2680A5EF0(v34 + a2 + v3 * a3, v27);
      a1 = &v27[*(matched + 20)];
      if (sub_2680B315C())
      {
        OUTLINED_FUNCTION_7_5();
        sub_2680A3D04(v27, v36);
        ++a3;
      }

      else
      {
        OUTLINED_FUNCTION_3_5();
        sub_26808AC2C(v27, v90);
        v37 = v94;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v37;
        v98[0] = v37;
        v28 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          a1 = v98;
          sub_2680A14B4(0, *(v39 + 16) + 1, 1);
          v39 = v98[0];
        }

        v41 = *(v39 + 16);
        v40 = *(v39 + 24);
        v42 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          a1 = v98;
          v94 = v41 + 1;
          sub_2680A14B4(v40 > 1, v41 + 1, 1);
          v42 = v94;
          v39 = v98[0];
        }

        ++a3;
        *(v39 + 16) = v42;
        v94 = v39;
        OUTLINED_FUNCTION_3_5();
        sub_26808AC2C(v90, v43);
        v33 = v28;
      }
    }

    v44 = v88;
    sub_2680A367C(v94, sub_2680A3D5C, sub_26809DE28);

    if (__swift_getEnumTagSinglePayload(v44, 1, matched) != 1)
    {

      OUTLINED_FUNCTION_3_5();
      v57 = v44;
      v58 = v89;
      sub_26808AC2C(v57, v89);
      v59 = (v58 + *(type metadata accessor for SiriNLOverride(0) + 44));
      v28 = v59[1];
      a3 = v85;
      a2 = v86;
      v16 = v87;
      if (v28)
      {
        v3 = *v59;

        a1 = sub_2680B423C();
        if (qword_2813194A0 != -1)
        {
          goto LABEL_43;
        }

        goto LABEL_25;
      }

LABEL_26:
      v62 = v89;
      (*(v92 + 16))(v33, v89 + *(matched + 20), v16);
      sub_2680B314C();
      OUTLINED_FUNCTION_7_5();
      sub_2680A3D04(v62, v63);
      goto LABEL_27;
    }

    v90 = v33;
    sub_26808C18C(v44, &qword_2802492F0, &unk_2680B5830);
    v45 = (v93 + *(type metadata accessor for SiriNLOverride(0) + 44));
    OUTLINED_FUNCTION_33();
    v47 = v34 + v46;
    v94 = *(v16 + 72);
    v48 = MEMORY[0x277D84F90];
    v49 = v34 + v46;
    do
    {
      v50 = v93;
      sub_2680A5EF0(v49, v93);
      v52 = *v45;
      v51 = v45[1];

      sub_2680A3D04(v50, type metadata accessor for OverrideMatchResultAndParse);
      if (v51)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_18();
          sub_26808AF10();
          v48 = v55;
        }

        v53 = *(v48 + 16);
        if (v53 >= *(v48 + 24) >> 1)
        {
          sub_26808AF10();
          v48 = v56;
        }

        *(v48 + 16) = v53 + 1;
        v54 = v48 + 16 * v53;
        *(v54 + 32) = v52;
        *(v54 + 40) = v51;
      }

      v49 += v94;
      --v35;
    }

    while (v35);
    if (*(v48 + 16))
    {
      v64 = sub_2680B424C();
      a3 = v85;
      a2 = v86;
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2813194A0);
      }

      v65 = off_2813194A8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_2680B4FE0;
      v98[0] = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249120, &qword_2680B5840);
      sub_268099CC4();
      v67 = sub_2680B409C();
      v69 = v68;

      *(v66 + 56) = MEMORY[0x277D837D0];
      *(v66 + 64) = sub_26808C1E4();
      *(v66 + 32) = v67;
      *(v66 + 40) = v69;
      sub_2680B406C(v64, &dword_268086000, v65, "Override(s) %s selected to append to parses.", v83[0]);
    }

    else
    {

      a3 = v85;
      a2 = v86;
    }

    v70 = *(v34 + 16);
    if (v70)
    {
      v98[0] = MEMORY[0x277D84F90];
      sub_2680A1494(0, v70, 0);
      v71 = v98[0];
      v72 = (v92 + 16);
      v93 = v92 + 32;
      v73 = v83[0];
      v74 = v87;
      do
      {
        v75 = v91;
        sub_2680A5EF0(v47, v91);
        (*v72)(v73, v75 + *(matched + 20), v74);
        sub_2680A3D04(v75, type metadata accessor for OverrideMatchResultAndParse);
        v98[0] = v71;
        v77 = *(v71 + 16);
        v76 = *(v71 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_2680A1494(v76 > 1, v77 + 1, 1);
          v71 = v98[0];
        }

        *(v71 + 16) = v77 + 1;
        OUTLINED_FUNCTION_33();
        (*(v79 + 32))(v71 + v78 + *(v79 + 72) * v77, v73, v74);
        v47 += v94;
        --v70;
      }

      while (v70);

      a3 = v85;
      a2 = v86;
    }

    else
    {

      v71 = MEMORY[0x277D84F90];
    }

    v80 = v84;
    *v84 = v71;
    swift_storeEnumTagMultiPayload();
    v33 = v90;
    sub_26808AC2C(v80, v90);
  }

  else
  {

LABEL_27:
    swift_storeEnumTagMultiPayload();
  }

  sub_26808AC2C(v33, a3);
  sub_2680B3E1C();
  OUTLINED_FUNCTION_9();
  return (*(v81 + 8))(a2);
}

uint64_t sub_268096204(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492F0, &unk_2680B5830);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  matched = type metadata accessor for OverrideMatchResultAndParse(0);
  v28 = *(matched - 8);
  v10 = MEMORY[0x28223BE20](matched);
  v29 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v27 = &v26 - v12;
  v13 = 0;
  v14 = *(a3 + 16);
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v13)
    {
      return v30;
    }

    v15 = *(type metadata accessor for OverrideMatchResult(0) - 8);
    a1(a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, matched) == 1)
    {
      sub_26808C18C(v8, &qword_2802492F0, &unk_2680B5830);
      ++v13;
    }

    else
    {
      v26 = type metadata accessor for OverrideMatchResultAndParse;
      v16 = v27;
      sub_26808AC2C(v8, v27);
      sub_26808AC2C(v16, v29);
      v17 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26809F15C();
        v17 = v22;
      }

      v18 = v17;
      v19 = *(v17 + 16);
      v30 = v18;
      v20 = (v19 + 1);
      if (v19 >= *(v18 + 24) >> 1)
      {
        v26 = (v19 + 1);
        sub_26809F15C();
        v20 = v26;
        v30 = v23;
      }

      ++v13;
      v21 = v30;
      *(v30 + 16) = v20;
      sub_26808AC2C(v29, v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v19);
    }
  }

  v24 = v30;

  return v24;
}

uint64_t sub_268096580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2680B2F5C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2680B3B8C();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26809661C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2680B2F5C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2680B3B8C();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2680966C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_52();
  v4 = sub_2680B33EC();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_268096704(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_52();
  v4 = sub_2680B33EC();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

id sub_2680967CC(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0_2(a1) enabled];
  *v1 = result;
  return result;
}

id sub_2680968D0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0_2(a1) namespace];
  *v1 = result;
  return result;
}

id sub_268096954(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0_2(a1) source];
  *v1 = result;
  return result;
}

id sub_2680969D8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0_2(a1) utteranceComparisonType];
  *v1 = result;
  return result;
}

BOOL sub_268096A24(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_268096A70(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492C8, &qword_2680B5710);
  OUTLINED_FUNCTION_13_0();
  if (*(v3 + 84) == a2)
  {
    v4 = OUTLINED_FUNCTION_15_2();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
    return OUTLINED_FUNCTION_17_2(v8);
  }
}

void sub_268096B10()
{
  OUTLINED_FUNCTION_8_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492C8, &qword_2680B5710);
  OUTLINED_FUNCTION_13_0();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_14_2();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0;
  }
}

uint64_t sub_268096BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_52();
  type metadata accessor for OverrideMatchResult(v6);
  OUTLINED_FUNCTION_13_0();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v9 = sub_2680B31AC();
    v10 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_268096C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_52();
  type metadata accessor for OverrideMatchResult(v8);
  OUTLINED_FUNCTION_13_0();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v11 = sub_2680B31AC();
    v12 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t Siri_Nlu_Internal_ComponentOverride.serializedOverrideValue.getter()
{
  sub_2680B3BFC();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_0();
  if (sub_2680B3C8C() & 1) != 0 && (sub_2680B3C3C())
  {
    sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2813194A0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2680B4FE0;
    v3 = sub_2680B3C4C();
    v5 = v4;
    *(v2 + 56) = MEMORY[0x277D837D0];
    v6 = sub_26808C1E4();
    *(v2 + 64) = v6;
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    OUTLINED_FUNCTION_5(v6, &dword_268086000, v7, "Override %s has both serialized and non-serialized value.");
  }

  if (sub_2680B3C3C())
  {
    sub_2680B3C1C();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    sub_2680B3C6C();
    v8 = sub_26809735C(&qword_2813192B0, MEMORY[0x277D5DD18], MEMORY[0x277D5DD10]);
    OUTLINED_FUNCTION_4_0(v8);
    if (!v0)
    {
      OUTLINED_FUNCTION_7_0();
    }

    v9 = OUTLINED_FUNCTION_1();
    v10(v9);
  }

  return OUTLINED_FUNCTION_6_0();
}

uint64_t Siri_Nlu_Internal_ParseOverride.namespace.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D5DCD0];
  v3 = sub_2680B3B8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t Siri_Nlu_Internal_ParseOverride.serializedOverrideValue.getter()
{
  sub_2680B31AC();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_0();
  if (sub_2680B367C() & 1) != 0 && (sub_2680B366C())
  {
    sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2813194A0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2680B4FE0;
    v3 = sub_2680B369C();
    v5 = v4;
    *(v2 + 56) = MEMORY[0x277D837D0];
    v6 = sub_26808C1E4();
    *(v2 + 64) = v6;
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    OUTLINED_FUNCTION_5(v6, &dword_268086000, v7, "Override %s has both serialized and non-serialized parse.");
  }

  if (sub_2680B366C())
  {
    sub_2680B365C();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    sub_2680B36BC();
    v8 = sub_26809735C(&qword_2813192E8, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
    OUTLINED_FUNCTION_4_0(v8);
    if (!v0)
    {
      OUTLINED_FUNCTION_7_0();
    }

    v9 = OUTLINED_FUNCTION_1();
    v10(v9);
  }

  return OUTLINED_FUNCTION_6_0();
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

uint64_t sub_26809735C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268097440(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_268097464(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_2680974C8@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_19_1();
  *a1 = result;
  return result;
}

uint64_t sub_2680974F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268097430(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_268097520@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2680A15E4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_268097550@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268097438(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_268097588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_268097440(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2680975BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_268097464(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268097608@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26809748C(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_268097678@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2680976A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2680976C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_268097714(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_268097760@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2680978A8(a2);
  *a1 = result;
  return result;
}

uint64_t sub_2680978A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void static SiriNLOverride.overrideValuesNilOrEqual(overrideValues:otherValues:)(unint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_54;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v6 = a2 >> 62 ? sub_2680B43CC() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 == v6)
    {
      if (v5 < 0)
      {
LABEL_59:
        __break(1u);
        return;
      }

      if (!v5)
      {
        return;
      }

      v50 = a2 & 0xC000000000000001;
      v51 = v3 & 0xC000000000000001;
      v46 = a2 & 0xFFFFFFFFFFFFFF8;
      v47 = v4;
      v7 = 4;
      v48 = v3;
      v49 = a2;
      do
      {
        v4 = v7 - 4;
        if (v51)
        {
          v3 = MEMORY[0x26D60FED0](v7 - 4, v3);
        }

        else
        {
          if (v4 >= *(v47 + 16))
          {
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            v5 = sub_2680B43CC();
            goto LABEL_4;
          }

          v3 = *(v3 + 8 * v7);
          swift_unknownObjectRetain();
        }

        v52 = v5;
        if (v50)
        {
          v8 = MEMORY[0x26D60FED0](v7 - 4, a2);
        }

        else
        {
          if (v4 >= *(v46 + 16))
          {
            goto LABEL_53;
          }

          v8 = *(a2 + 8 * v7);
          swift_unknownObjectRetain();
        }

        v9 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
        swift_unknownObjectRetain();
        v10 = [v9 initRequiringSecureCoding_];
        [v10 encodeObject_];
        v53 = v10;
        v11 = [v10 encodedData];
        v12 = sub_2680B2E4C();
        v14 = v13;

        v15 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
        [v15 encodeObject_];
        v16 = [v15 encodedData];
        v17 = sub_2680B2E4C();
        v19 = v18;

        v20 = v14 >> 62;
        if (v14 >> 62 == 3)
        {
          v21 = 0;
          if (!v12 && v14 == 0xC000000000000000 && v19 >> 62 == 3)
          {
            v21 = 0;
            if (!v17 && v19 == 0xC000000000000000)
            {
LABEL_47:
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v38 = OUTLINED_FUNCTION_7_1();
              sub_26808A810(v38, v39);

              v40 = OUTLINED_FUNCTION_5_0();
              sub_26808A810(v40, v41);
              swift_unknownObjectRelease();

              goto LABEL_48;
            }
          }
        }

        else if (v20)
        {
          if (v20 == 1)
          {
            LODWORD(v21) = HIDWORD(v12) - v12;
            if (__OFSUB__(HIDWORD(v12), v12))
            {
              goto LABEL_58;
            }

            v21 = v21;
          }

          else
          {
            v24 = *(v12 + 16);
            v23 = *(v12 + 24);
            v25 = __OFSUB__(v23, v24);
            v21 = v23 - v24;
            if (v25)
            {
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }
          }
        }

        else
        {
          v21 = BYTE6(v14);
        }

        switch(v19 >> 62)
        {
          case 1uLL:
            LODWORD(v26) = HIDWORD(v17) - v17;
            if (__OFSUB__(HIDWORD(v17), v17))
            {
              goto LABEL_56;
            }

            v26 = v26;
            goto LABEL_43;
          case 2uLL:
            v28 = *(v17 + 16);
            v27 = *(v17 + 24);
            v25 = __OFSUB__(v27, v28);
            v26 = v27 - v28;
            if (!v25)
            {
              goto LABEL_43;
            }

            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          case 3uLL:
            if (!v21)
            {
              goto LABEL_47;
            }

            goto LABEL_50;
          default:
            v26 = BYTE6(v19);
LABEL_43:
            if (v21 != v26)
            {
LABEL_50:
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v42 = OUTLINED_FUNCTION_7_1();
              sub_26808A810(v42, v43);

              v44 = OUTLINED_FUNCTION_5_0();
              sub_26808A810(v44, v45);
              swift_unknownObjectRelease();

              return;
            }

            if (v21 < 1)
            {
              goto LABEL_47;
            }

            v29 = OUTLINED_FUNCTION_7_1();
            sub_26808A6DC(v29, v30);
            v31 = OUTLINED_FUNCTION_5_0();
            v33 = sub_268099858(v31, v32, v17, v19);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v34 = OUTLINED_FUNCTION_7_1();
            sub_26808A810(v34, v35);

            v36 = OUTLINED_FUNCTION_5_0();
            sub_26808A810(v36, v37);
            swift_unknownObjectRelease();

            if ((v33 & 1) == 0)
            {
              return;
            }

            break;
        }

LABEL_48:
        ++v7;
        v5 = v52 - 1;
        v3 = v48;
        a2 = v49;
      }

      while (v52 != 1);
    }
  }
}

uint64_t static SiriNLOverride.overrideValueNilOrEqual(overrideValue:otherValue:)(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  v4 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
  swift_unknownObjectRetain();
  v5 = [v4 initRequiringSecureCoding_];
  [v5 encodeObject_];
  v6 = [v5 encodedData];
  v7 = sub_2680B2E4C();
  v9 = v8;

  v10 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  [v10 encodeObject_];
  v11 = [v10 encodedData];
  v12 = sub_2680B2E4C();
  v14 = v13;

  LOBYTE(v11) = MEMORY[0x26D60E9D0](v7, v9, v12, v14);
  sub_26808A810(v12, v14);

  sub_26808A810(v7, v9);
  swift_unknownObjectRelease();

  return v11 & 1;
}

uint64_t static SiriNLOverride.subsetOfOther(subset:other:)(unint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return 1;
  }

  while (1)
  {
    v5 = sub_268091404(v3);
    if (sub_268091404(a2) < v5)
    {
      return 0;
    }

    v6 = 0;
    v36 = v3 & 0xC000000000000001;
    v39 = a2 & 0xFFFFFFFFFFFFFF8;
    v40 = a2 & 0xC000000000000001;
    v38 = a2;
    v34 = v4;
    v35 = v3;
LABEL_6:
    if (v6 == v4)
    {
      return 1;
    }

    sub_268092BCC(v6, v36 == 0, v3);
    result = v36 ? MEMORY[0x26D60FED0](v6, v3) : swift_unknownObjectRetain();
    v8 = __OFADD__(v6, 1);
    v9 = v6 + 1;
    if (v8)
    {
      break;
    }

    v37 = v9;
    v41 = sub_268091404(a2);
    v10 = 0;
    while (1)
    {
      if (v41 == v10)
      {
        swift_unknownObjectRelease();
        return 0;
      }

      if (v40)
      {
        MEMORY[0x26D60FED0](v10, a2);
      }

      else
      {
        if (v10 >= *(v39 + 16))
        {
          goto LABEL_31;
        }

        swift_unknownObjectRetain();
      }

      if (__OFADD__(v10, 1))
      {
        break;
      }

      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_268098BD8(ObjectType);
      v3 = v12;
      v14 = v13;
      v15 = swift_getObjectType();
      sub_268098BD8(v15);
      v17 = v16;
      v19 = v18;
      sub_2680B424C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
      v21 = OUTLINED_FUNCTION_2(v20);
      *(v21 + 16) = xmmword_2680B4FE0;
      *(v21 + 56) = MEMORY[0x277D837D0];
      v22 = sub_26808C1E4();
      *(v21 + 64) = v22;
      *(v21 + 32) = v3;
      *(v21 + 40) = v14;

      OUTLINED_FUNCTION_8();
      sub_2680B406C(v23, v24, v25, v26);

      sub_2680B424C();
      v27 = OUTLINED_FUNCTION_2(v20);
      *(v27 + 16) = xmmword_2680B4FE0;
      *(v27 + 56) = MEMORY[0x277D837D0];
      *(v27 + 64) = v22;
      *(v27 + 32) = v17;
      *(v27 + 40) = v19;

      OUTLINED_FUNCTION_6_1();
      sub_2680B406C(v28, v29, v30, v31);

      if (v3 == v17 && v14 == v19)
      {
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        a2 = v38;
LABEL_26:
        swift_unknownObjectRelease();
        v4 = v34;
        v3 = v35;
        v6 = v37;
        goto LABEL_6;
      }

      v33 = OUTLINED_FUNCTION_9_0(v3);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      ++v10;
      a2 = v38;
      if (v33)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v4 = sub_2680B43CC();
    if (!v4)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t static SiriNLOverride.sdaNilOrEqual(override:other:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_268098BD8(ObjectType);
    v4 = v3;
    v6 = v5;
    v7 = swift_getObjectType();
    sub_268098BD8(v7);
    v9 = v8;
    v11 = v10;
    sub_2680B424C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    v13 = OUTLINED_FUNCTION_2(v12);
    *(v13 + 16) = xmmword_2680B4FE0;
    *(v13 + 56) = MEMORY[0x277D837D0];
    v14 = sub_26808C1E4();
    *(v13 + 64) = v14;
    *(v13 + 32) = v4;
    *(v13 + 40) = v6;

    OUTLINED_FUNCTION_8();
    sub_2680B406C(v15, v16, v17, v18);

    sub_2680B424C();
    v19 = OUTLINED_FUNCTION_2(v12);
    *(v19 + 16) = xmmword_2680B4FE0;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = v14;
    *(v19 + 32) = v9;
    *(v19 + 40) = v11;

    OUTLINED_FUNCTION_6_1();
    sub_2680B406C(v20, v21, v22, v23);

    if (v4 == v9 && v6 == v11)
    {
      v25 = 1;
    }

    else
    {
      v25 = OUTLINED_FUNCTION_9_0(v4);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 1;
  }

  return v25 & 1;
}

uint64_t static SiriNLOverride.subsetOfOther(subset:other:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249110, &unk_2680B5288);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v49 - v8;
  v10 = sub_2680B3AEC();
  OUTLINED_FUNCTION_4();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = v49 - v16;
  if (!a1)
  {
    return 1;
  }

  v17 = *(a1 + 16);
  if (!v17)
  {
    return 1;
  }

  v18 = *(a2 + 16);
  if (v18 >= v17)
  {
    v19 = 0;
    v62 = *(v15 + 16);
    v63 = v15 + 16;
    v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v52 = a2 + v20;
    v53 = a1 + v20;
    v21 = *(v15 + 72);
    v55 = (v15 + 32);
    v51 = v18 + 1;
    v60 = (v15 + 8);
    v61 = v21;
    v49[1] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v66 = xmmword_2680B4FE0;
    v58 = v9;
    v59 = v7;
    v56 = v14;
    v57 = v10;
    v50 = v17;
LABEL_5:
    if (v19 != v17)
    {
      v62(v64, v53 + v61 * v19, v10);
      v54 = v19 + 1;
      v22 = v51;
      v23 = v52;
      while (1)
      {
        v24 = v22 - 1;
        if (!v24)
        {
          break;
        }

        v62(v9, v64, v10);
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
        sub_268099978(v9, v7);
        if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
        {
          sub_2680999E8(v7);
          sub_2680999E8(v9);
          v32 = *v60;
LABEL_19:
          v19 = v54;
          v32(v64, v10);
          v17 = v50;
          goto LABEL_5;
        }

        v65 = v24;
        (*v55)(v14, v7, v10);
        sub_2680A64F0();
        v26 = v25;
        v28 = v27;
        sub_2680A64F0();
        v30 = v29;
        v32 = v31;
        sub_2680B424C();
        if (qword_2813194A0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v14 = off_2813194A8;
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
        v33 = OUTLINED_FUNCTION_2(v10);
        *(v33 + 16) = v66;
        *(v33 + 56) = MEMORY[0x277D837D0];
        v34 = sub_26808C1E4();
        *(v33 + 64) = v34;
        *(v33 + 32) = v26;
        *(v33 + 40) = v28;

        OUTLINED_FUNCTION_8();
        sub_2680B406C(v35, v36, v37, v38);

        sub_2680B424C();
        v39 = OUTLINED_FUNCTION_2(v10);
        *(v39 + 16) = v66;
        *(v39 + 56) = MEMORY[0x277D837D0];
        *(v39 + 64) = v34;
        *(v39 + 32) = v30;
        *(v39 + 40) = v32;

        OUTLINED_FUNCTION_6_1();
        sub_2680B406C(v40, v41, v42, v43);

        if (v26 == v30 && v28 == v32)
        {

          v47 = OUTLINED_FUNCTION_3_1();
          (v32)(v47);
          v9 = v58;
          sub_2680999E8(v58);
          v7 = v59;
          goto LABEL_19;
        }

        v23 += v61;
        v45 = OUTLINED_FUNCTION_9_0(v26);

        v46 = OUTLINED_FUNCTION_3_1();
        (v32)(v46);
        v9 = v58;
        sub_2680999E8(v58);
        v7 = v59;
        v22 = v65;
        if (v45)
        {
          goto LABEL_19;
        }
      }

      (*v60)(v64, v10);
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t static SiriNLOverride.sdaNilOrEqual(override:other:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249110, &unk_2680B5288);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_2680B3AEC();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268099978(a1, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2680999E8(v4);
    v11 = 1;
  }

  else
  {
    v37 = v7;
    (*(v7 + 32))(v10, v4, v5);
    sub_2680A64F0();
    v36 = v12;
    v14 = v13;
    sub_2680A64F0();
    v35 = v15;
    v17 = v16;
    sub_2680B424C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    v19 = OUTLINED_FUNCTION_2(v18);
    v34 = xmmword_2680B4FE0;
    *(v19 + 16) = xmmword_2680B4FE0;
    *(v19 + 56) = MEMORY[0x277D837D0];
    v20 = sub_26808C1E4();
    *(v19 + 64) = v20;
    v21 = v36;
    *(v19 + 32) = v36;
    *(v19 + 40) = v14;

    OUTLINED_FUNCTION_8();
    sub_2680B406C(v22, v23, v24, v25);

    sub_2680B424C();
    v26 = OUTLINED_FUNCTION_2(v18);
    *(v26 + 16) = v34;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = v20;
    v27 = v35;
    *(v26 + 32) = v35;
    *(v26 + 40) = v17;

    OUTLINED_FUNCTION_6_1();
    sub_2680B406C(v28, v29, v30, v31);

    if (v21 == v27 && v14 == v17)
    {
      v11 = 1;
    }

    else
    {
      v11 = OUTLINED_FUNCTION_9_0(v21);
    }

    (*(v37 + 8))(v10, v5);
  }

  return v11 & 1;
}

void sub_268098BD8(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    sub_2680B432C();

    v3 = [v2 reference];
    sub_268099500();
    v5 = v4;
    v7 = v6;

LABEL_3:
    MEMORY[0x26D60FCB0](v5, v7);
LABEL_18:

    MEMORY[0x26D60FCB0](93, 0xE100000000000000);
    swift_unknownObjectRelease();
    return;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    v10 = [v9 choices];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249130, &qword_2680B5298);
    v11 = sub_2680B41DC();

    v12 = sub_268091404(v11);
    if (v12)
    {
      v13 = v12;
      v64 = MEMORY[0x277D84F90];
      sub_26808D0A8(0, v12 & ~(v12 >> 63), 0);
      if ((v13 & 0x8000000000000000) == 0)
      {
        v14 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26D60FED0](v14, v11);
          }

          else
          {
            swift_unknownObjectRetain();
          }

          swift_getObjectType();
          sub_26809931C();
          v16 = v15;
          v18 = v17;
          swift_unknownObjectRelease();
          v20 = *(v64 + 16);
          v19 = *(v64 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_26808D0A8(v19 > 1, v20 + 1, 1);
          }

          ++v14;
          *(v64 + 16) = v20 + 1;
          v21 = v64 + 16 * v20;
          *(v21 + 32) = v16;
          *(v21 + 40) = v18;
        }

        while (v13 != v14);
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_17:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249120, &qword_2680B5840);
    sub_268099CC4();
    v27 = sub_2680B409C();
    v29 = v28;

    sub_2680B432C();

    MEMORY[0x26D60FCB0](v27, v29);
    goto LABEL_18;
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    swift_unknownObjectRetain();
    sub_2680B432C();

    v24 = [v23 offeredAct];
    swift_getObjectType();
    sub_26809931C();
    v5 = v25;
    v7 = v26;
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (!v30)
  {
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46)
    {
      v47 = v46;
      swift_unknownObjectRetain();
      v48 = [v47 task];
      if (v48)
      {
        v49 = v48;
        sub_268099500();
        v51 = v50;
        v53 = v52;
      }

      else
      {
        v51 = 0x296C696E28;
        v53 = 0xE500000000000000;
      }

      sub_2680B432C();
    }

    else
    {
      objc_opt_self();
      v54 = swift_dynamicCastObjCClass();
      if (!v54)
      {
        swift_unknownObjectRetain();
        sub_2680B40DC();
        return;
      }

      v55 = v54;
      swift_unknownObjectRetain();
      v56 = [v55 task];
      if (v56)
      {
        v57 = v56;
        sub_268099500();
        v51 = v58;
        v53 = v59;
      }

      else
      {
        v51 = 0x296C696E28;
        v53 = 0xE500000000000000;
      }

      sub_2680B432C();

      v60 = [v55 description];
      v61 = sub_2680B40CC();
      v63 = v62;

      MEMORY[0x26D60FCB0](v61, v63);
    }

    MEMORY[0x26D60FCB0](v51, v53);
    goto LABEL_18;
  }

  v31 = v30;
  swift_unknownObjectRetain();
  v32 = [v31 entities];
  sub_268099A50();
  v33 = sub_2680B41DC();

  v34 = sub_268091404(v33);
  if (!v34)
  {
    goto LABEL_17;
  }

  v35 = v34;
  v65 = MEMORY[0x277D84F90];
  sub_26808D0A8(0, v34 & ~(v34 >> 63), 0);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D60FED0](v36, v33);
      }

      else
      {
        v37 = *(v33 + 8 * v36 + 32);
      }

      v38 = v37;
      sub_268099500();
      v40 = v39;
      v42 = v41;

      v44 = *(v65 + 16);
      v43 = *(v65 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_26808D0A8(v43 > 1, v44 + 1, 1);
      }

      ++v36;
      *(v65 + 16) = v44 + 1;
      v45 = v65 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v42;
    }

    while (v35 != v36);
    goto LABEL_17;
  }

LABEL_44:
  __break(1u);
}

void sub_26809931C()
{
  v0 = sub_2680B3EEC();
  v1 = sub_268091404(v0);
  if (!v1)
  {
LABEL_10:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249120, &qword_2680B5840);
    sub_268099CC4();
    sub_2680B409C();

    return;
  }

  v2 = v1;
  v11 = MEMORY[0x277D84F90];
  sub_26808D0A8(0, v1 & ~(v1 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D60FED0](v3, v0);
      }

      else
      {
      }

      v9 = sub_2680B3F9C();
      v10 = v4;
      MEMORY[0x26D60FCB0](14906, 0xE200000000000000);
      v5 = sub_2680B3FAC();
      MEMORY[0x26D60FCB0](v5);

      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_26808D0A8(v6 > 1, v7 + 1, 1);
      }

      ++v3;
      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v9;
      *(v8 + 40) = v10;
    }

    while (v2 != v3);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_268099500()
{
  if (sub_2680B426C())
  {
    v0 = MEMORY[0x26D60FA70]();
    v1 = sub_268091404(v0);
    if (!v1)
    {
LABEL_13:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249120, &qword_2680B5840);
      sub_268099CC4();
      sub_2680B409C();

      return;
    }

    v2 = v1;
    v11 = MEMORY[0x277D84F90];
    sub_26808D0A8(0, v1 & ~(v1 >> 63), 0);
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = 0;
      do
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D60FED0](v3, v0);
        }

        else
        {
        }

        v9 = sub_2680B3F9C();
        v10 = v4;
        MEMORY[0x26D60FCB0](14906, 0xE200000000000000);
        v5 = sub_2680B3FAC();
        MEMORY[0x26D60FCB0](v5);

        v7 = *(v11 + 16);
        v6 = *(v11 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_26808D0A8(v6 > 1, v7 + 1, 1);
        }

        ++v3;
        *(v11 + 16) = v7 + 1;
        v8 = v11 + 16 * v7;
        *(v8 + 32) = v9;
        *(v8 + 40) = v10;
      }

      while (v2 != v3);
      goto LABEL_13;
    }

    __break(1u);
  }
}

void sub_2680996EC(char *__s1@<X0>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a4 >> 62)
  {
    case 1uLL:
      v10 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v9 = a3;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a3 + 16);
      v10 = *(a3 + 24);
LABEL_9:
      v8 = sub_268099B60(v9, v10, a4 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v8 = 1;
LABEL_10:
        *a5 = v8 & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a3;
      v12 = a4;
      v13 = BYTE2(a4);
      v14 = BYTE3(a4);
      v15 = BYTE4(a4);
      v16 = BYTE5(a4);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v8 = memcmp(__s1, &__s2, BYTE6(a4)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_268099858(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      v16 = result >> 32;
      if (result >> 32 >= result)
      {
        v17 = result;
        sub_26808A6DC(a3, a4);
        v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v13 = v17;
        v14 = v16;
        goto LABEL_8;
      }

      __break(1u);
      return result;
    case 2uLL:
      v11 = *(result + 16);
      v10 = *(result + 24);
      sub_26808A6DC(a3, a4);
      v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = v11;
      v14 = v10;
LABEL_8:
      v15 = sub_268099A94(v13, v14, v12, a3, a4);
      goto LABEL_9;
    case 3uLL:
      sub_26808A6DC(a3, a4);
      v9 = 0;
      v8 = 0;
      goto LABEL_5;
    default:
      sub_26808A6DC(a3, a4);
      v8 = a2 & 0xFFFFFFFFFFFFFFLL;
      v9 = v7;
LABEL_5:
      v15 = sub_268099C18(v9, v8, a3, a4);
LABEL_9:
      v18 = v15;
      sub_26808A810(a3, a4);
      return v18 & 1;
  }
}

uint64_t sub_268099978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249110, &unk_2680B5288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2680999E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249110, &unk_2680B5288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268099A50()
{
  result = qword_280249118;
  if (!qword_280249118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280249118);
  }

  return result;
}

char *sub_268099A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2680B2DBC();
  v11 = result;
  if (result)
  {
    result = sub_2680B2DDC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2680B2DCC();
  sub_2680996EC(v11, a4, a5, &v13);
  sub_26808A810(a4, a5);
  if (!v5)
  {
    v12 = v13;
  }

  return (v12 & 1);
}

char *sub_268099B60(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_2680B2DBC();
  v8 = result;
  if (result)
  {
    result = sub_2680B2DDC();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_2680B2DCC();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t sub_268099C18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  __s1 = a1;
  v12 = WORD2(a2);
  v11 = a2;
  sub_2680996EC(&__s1, a3, a4, &v9);
  sub_26808A810(a3, a4);
  if (!v4)
  {
    v7 = v9;
  }

  return v7 & 1;
}

unint64_t sub_268099CC4()
{
  result = qword_281318F78;
  if (!qword_281318F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280249120, &qword_2680B5840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281318F78);
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

uint64_t sub_268099D84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249140, &qword_2680B52C8);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_281319220 = result;
  return result;
}

uint64_t sub_268099DC4(uint64_t a1)
{
  sub_2680B2F5C();
  OUTLINED_FUNCTION_2_1();
  sub_26809A228(v1, v2, MEMORY[0x277CC9798]);
  sub_2680B408C();
  type metadata accessor for CacheKey(0);
  v3 = sub_2680B3B4C();
  return MEMORY[0x26D6100D0](v3);
}

BOOL sub_268099E48()
{
  if ((MEMORY[0x26D60EAB0]() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CacheKey(0);
  sub_2680B3B8C();
  sub_26809A228(qword_2813192B8, MEMORY[0x277D5DCD8], MEMORY[0x277D5DCE0]);
  sub_2680B41CC();
  sub_2680B41CC();
  return v2 == v1;
}

uint64_t sub_268099F18()
{
  sub_2680B452C();
  sub_2680B2F5C();
  sub_26809A228(&qword_2813192F0, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_2680B408C();
  type metadata accessor for CacheKey(0);
  v0 = sub_2680B3B4C();
  MEMORY[0x26D6100D0](v0);
  return sub_2680B454C();
}

uint64_t sub_268099FC4(uint64_t a1)
{
  sub_2680B452C();
  sub_2680B2F5C();
  OUTLINED_FUNCTION_2_1();
  sub_26809A228(v1, v2, MEMORY[0x277CC9798]);
  sub_2680B408C();
  v3 = sub_2680B3B4C();
  MEMORY[0x26D6100D0](v3);
  return sub_2680B454C();
}

id RegexOverrideCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RegexOverrideCache.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RegexOverrideCache();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RegexOverrideCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RegexOverrideCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26809A15C(uint64_t a1)
{
  result = sub_2680B2F5C();
  if (v2 <= 0x3F)
  {
    result = sub_2680B3B8C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26809A228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_26809A2B8(uint64_t a1)
{
  result = sub_2680B33EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26809A32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_52();
  v112 = sub_2680B3BEC();
  OUTLINED_FUNCTION_4();
  v111 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_14(v25);
  v114 = sub_2680B3D5C();
  OUTLINED_FUNCTION_4();
  v118 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_26_0();
  v113 = v29;
  OUTLINED_FUNCTION_21();
  v117 = sub_2680B3B2C();
  OUTLINED_FUNCTION_4();
  v121 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_26_0();
  v116 = v33;
  OUTLINED_FUNCTION_21();
  v120 = sub_2680B3CCC();
  OUTLINED_FUNCTION_4();
  v124 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_26_0();
  v119 = v37;
  OUTLINED_FUNCTION_21();
  v123 = sub_2680B345C();
  OUTLINED_FUNCTION_4();
  v127 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_26_0();
  v122 = v41;
  OUTLINED_FUNCTION_21();
  v126 = sub_2680B32CC();
  OUTLINED_FUNCTION_4();
  v133 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  v115 = v44;
  MEMORY[0x28223BE20](v45);
  v47 = v110 - v46;
  v128 = sub_2680B328C();
  OUTLINED_FUNCTION_4();
  v125 = v48;
  v50 = MEMORY[0x28223BE20](v49);
  v52 = v110 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v54 = v110 - v53;
  sub_2680B30CC();
  OUTLINED_FUNCTION_4();
  v131 = v55;
  v132 = v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_3();
  v130 = v57;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_26_0();
  v129 = v59;
  OUTLINED_FUNCTION_21();
  v60 = sub_2680B393C();
  OUTLINED_FUNCTION_4();
  v62 = v61;
  v64 = MEMORY[0x28223BE20](v63);
  v66 = v110 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v68 = v110 - v67;
  v69 = v21;
  if ((sub_2680B346C() & 1) == 0 || (sub_2680B34FC(), v70 = sub_2680B390C(), v20 = *(v62 + 8), v20(v68, v60), (v70 & 1) == 0))
  {
    if (sub_2680B347C())
    {
      sub_2680B359C();
      v74 = sub_2680B325C();
      v20 = *(v125 + 8);
      v20(v54, v128);
      if (v74)
      {
        sub_2680B359C();
        v75 = v129;
        sub_2680B327C();
        v76 = v128;
        v20(v54, v128);
        v133 = sub_2680B30AC();
        v77 = v131;
        v78 = *(v132 + 8);
        v78(v75, v131);
        OUTLINED_FUNCTION_28();
        sub_2680B359C();
        OUTLINED_FUNCTION_39();
        sub_2680B327C();
        v20(v52, v76);
        sub_2680B308C();
        v78(v69, v77);
        goto LABEL_25;
      }
    }

    v79 = sub_2680B348C();
    v80 = v133;
    if (v79)
    {
      sub_2680B35BC();
      v81 = sub_2680B329C();
      v20 = *(v80 + 8);
      v20(v47, v126);
      if (v81)
      {
        sub_2680B35BC();
        v82 = v129;
        sub_2680B32BC();
        v83 = v47;
        v84 = v126;
        v20(v83, v126);
        v133 = sub_2680B30AC();
        v85 = *(v132 + 8);
        v86 = v82;
        v66 = v131;
        v85(v86, v131);
        v87 = v115;
        sub_2680B35BC();
        OUTLINED_FUNCTION_39();
        sub_2680B32BC();
        v20(v87, v84);
LABEL_24:
        sub_2680B308C();
        v85(v69, v66);
        goto LABEL_25;
      }
    }

    if (sub_2680B34BC() & 1) != 0 && (v88 = v122, OUTLINED_FUNCTION_28(), sub_2680B35DC(), sub_2680B342C(), v89 = OUTLINED_FUNCTION_31(), v20(v89, v123), (v88))
    {
      v85 = v122;
      OUTLINED_FUNCTION_28();
      sub_2680B35DC();
      OUTLINED_FUNCTION_23();
      sub_2680B344C();
      v90 = v123;
      v20(v85, v123);
      v91 = sub_2680B30AC();
      v92 = OUTLINED_FUNCTION_8_0(v91);
      (v85)(v92);
      OUTLINED_FUNCTION_36();
      sub_2680B35DC();
      OUTLINED_FUNCTION_38();
      sub_2680B344C();
    }

    else if (sub_2680B356C() & 1) != 0 && (v93 = v119, OUTLINED_FUNCTION_28(), sub_2680B351C(), sub_2680B3C9C(), v94 = OUTLINED_FUNCTION_31(), v20(v94, v120), (v93))
    {
      v85 = v119;
      OUTLINED_FUNCTION_28();
      sub_2680B351C();
      OUTLINED_FUNCTION_23();
      sub_2680B3CBC();
      v90 = v120;
      v20(v85, v120);
      v95 = sub_2680B30AC();
      v96 = OUTLINED_FUNCTION_8_0(v95);
      (v85)(v96);
      OUTLINED_FUNCTION_36();
      sub_2680B351C();
      OUTLINED_FUNCTION_38();
      sub_2680B3CBC();
    }

    else if (sub_2680B352C() & 1) != 0 && (v97 = v116, OUTLINED_FUNCTION_28(), sub_2680B34AC(), sub_2680B3AFC(), v98 = OUTLINED_FUNCTION_31(), v20(v98, v117), (v97))
    {
      v85 = v116;
      OUTLINED_FUNCTION_28();
      sub_2680B34AC();
      OUTLINED_FUNCTION_23();
      sub_2680B3B1C();
      v90 = v117;
      v20(v85, v117);
      v99 = sub_2680B30AC();
      v100 = OUTLINED_FUNCTION_8_0(v99);
      (v85)(v100);
      OUTLINED_FUNCTION_36();
      sub_2680B34AC();
      OUTLINED_FUNCTION_38();
      sub_2680B3B1C();
    }

    else
    {
      if ((sub_2680B357C() & 1) == 0 || (v101 = v113, OUTLINED_FUNCTION_28(), sub_2680B354C(), sub_2680B3D2C(), v102 = OUTLINED_FUNCTION_31(), v20(v102, v114), (v101 & 1) == 0))
      {
        if ((sub_2680B355C() & 1) == 0 || (v85 = v110[3], OUTLINED_FUNCTION_28(), sub_2680B34DC(), v106 = sub_2680B3BBC(), v20 = *(v111 + 8), v90 = v112, v20(v85, v112), (v106 & 1) == 0))
        {
          v133 = 0;
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_28();
        sub_2680B34DC();
        OUTLINED_FUNCTION_23();
        sub_2680B3BDC();
        v20(v85, v90);
        v107 = sub_2680B30AC();
        v108 = OUTLINED_FUNCTION_8_0(v107);
        (v85)(v108);
        v109 = v110[0];
        sub_2680B34DC();
        OUTLINED_FUNCTION_39();
        sub_2680B3BDC();
        v105 = v109;
        goto LABEL_23;
      }

      v85 = v113;
      OUTLINED_FUNCTION_28();
      sub_2680B354C();
      OUTLINED_FUNCTION_23();
      sub_2680B3D4C();
      v90 = v114;
      v20(v85, v114);
      v103 = sub_2680B30AC();
      v104 = OUTLINED_FUNCTION_8_0(v103);
      (v85)(v104);
      OUTLINED_FUNCTION_36();
      sub_2680B354C();
      OUTLINED_FUNCTION_38();
      sub_2680B3D4C();
    }

    v105 = v47;
LABEL_23:
    v20(v105, v90);
    goto LABEL_24;
  }

  sub_2680B34FC();
  v71 = v129;
  sub_2680B392C();
  v20(v68, v60);
  v133 = sub_2680B30AC();
  v72 = v131;
  v73 = *(v132 + 8);
  v73(v71, v131);
  sub_2680B34FC();
  OUTLINED_FUNCTION_39();
  sub_2680B392C();
  v20(v66, v60);
  sub_2680B308C();
  v73(v69, v72);
LABEL_25:
  OUTLINED_FUNCTION_53();
}

void sub_26809ADF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_54();
  v21 = v20;
  v103 = v22;
  v91 = sub_2680B3BEC();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14(v24);
  v92 = sub_2680B3D5C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14(v26);
  v93 = sub_2680B3B2C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14(v28);
  sub_2680B3CCC();
  OUTLINED_FUNCTION_4();
  v95 = v30;
  v96 = v29;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_1();
  v94 = v31;
  OUTLINED_FUNCTION_21();
  sub_2680B345C();
  OUTLINED_FUNCTION_4();
  v98 = v33;
  v99 = v32;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_1();
  v97 = v34;
  OUTLINED_FUNCTION_21();
  v35 = sub_2680B32CC();
  OUTLINED_FUNCTION_4();
  v100 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6();
  v40 = v39 - v38;
  v41 = sub_2680B328C();
  OUTLINED_FUNCTION_4();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6();
  v47 = v46 - v45;
  v48 = sub_2680B393C();
  OUTLINED_FUNCTION_4();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6();
  v54 = v53 - v52;
  sub_2680B35EC();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6();
  v58 = v57 - v56;
  v101 = v60;
  v102 = v59;
  (*(v60 + 16))(v57 - v56, v21);
  if (sub_2680B346C())
  {
    sub_2680B34FC();
    v61 = sub_2680B390C();
    (*(v50 + 8))(v54, v48);
    if (v61)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B34EC();
      OUTLINED_FUNCTION_5_1();
      sub_2680B391C();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v62 = OUTLINED_FUNCTION_29();
      v35(v62);
      v63 = OUTLINED_FUNCTION_30();
      (v41)(v63);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B34EC();
      OUTLINED_FUNCTION_16();
      sub_2680B391C();
LABEL_25:
      OUTLINED_FUNCTION_13();
      sub_2680B309C();
      v85 = OUTLINED_FUNCTION_29();
      v35(v85);
      v86 = OUTLINED_FUNCTION_30();
      (v41)(v86);
      v87 = v102;
      v88 = v103;
      (*(v101 + 32))(v103, v58, v102);
      v89 = 0;
      goto LABEL_26;
    }
  }

  if (sub_2680B347C())
  {
    sub_2680B359C();
    v64 = sub_2680B325C();
    (*(v43 + 8))(v47, v41);
    if (v64)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B358C();
      OUTLINED_FUNCTION_5_1();
      sub_2680B326C();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v65 = OUTLINED_FUNCTION_29();
      v35(v65);
      v66 = OUTLINED_FUNCTION_30();
      (v41)(v66);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B358C();
      OUTLINED_FUNCTION_16();
      sub_2680B326C();
      goto LABEL_25;
    }
  }

  if (sub_2680B348C())
  {
    sub_2680B35BC();
    v41 = sub_2680B329C();
    (*(v100 + 8))(v40, v35);
    if (v41)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B35AC();
      OUTLINED_FUNCTION_5_1();
      sub_2680B32AC();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v67 = OUTLINED_FUNCTION_29();
      v35(v67);
      v68 = OUTLINED_FUNCTION_30();
      (v41)(v68);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B35AC();
      OUTLINED_FUNCTION_16();
      sub_2680B32AC();
      goto LABEL_25;
    }
  }

  if (sub_2680B34BC())
  {
    v35 = v97;
    sub_2680B35DC();
    v41 = sub_2680B342C();
    (*(v98 + 8))(v97, v99);
    if (v41)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B35CC();
      OUTLINED_FUNCTION_5_1();
      sub_2680B343C();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v69 = OUTLINED_FUNCTION_29();
      v97(v69);
      v70 = OUTLINED_FUNCTION_30();
      (v41)(v70);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B35CC();
      OUTLINED_FUNCTION_16();
      sub_2680B343C();
      goto LABEL_25;
    }
  }

  if (sub_2680B356C())
  {
    v35 = v94;
    sub_2680B351C();
    v41 = sub_2680B3C9C();
    (*(v95 + 8))(v94, v96);
    if (v41)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B350C();
      OUTLINED_FUNCTION_5_1();
      sub_2680B3CAC();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v71 = OUTLINED_FUNCTION_29();
      v94(v71);
      v72 = OUTLINED_FUNCTION_30();
      (v41)(v72);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B350C();
      OUTLINED_FUNCTION_16();
      sub_2680B3CAC();
      goto LABEL_25;
    }
  }

  if (sub_2680B352C())
  {
    OUTLINED_FUNCTION_43();
    sub_2680B34AC();
    v41 = sub_2680B3AFC();
    v73 = OUTLINED_FUNCTION_42();
    v74(v73, v93);
    if (v41)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B349C();
      OUTLINED_FUNCTION_5_1();
      sub_2680B3B0C();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v75 = OUTLINED_FUNCTION_29();
      v35(v75);
      v76 = OUTLINED_FUNCTION_30();
      (v41)(v76);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B349C();
      OUTLINED_FUNCTION_16();
      sub_2680B3B0C();
      goto LABEL_25;
    }
  }

  if (sub_2680B357C())
  {
    OUTLINED_FUNCTION_43();
    sub_2680B354C();
    v41 = sub_2680B3D2C();
    v77 = OUTLINED_FUNCTION_42();
    v78(v77, v92);
    if (v41)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B353C();
      OUTLINED_FUNCTION_5_1();
      sub_2680B3D3C();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v79 = OUTLINED_FUNCTION_29();
      v35(v79);
      v80 = OUTLINED_FUNCTION_30();
      (v41)(v80);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B353C();
      OUTLINED_FUNCTION_16();
      sub_2680B3D3C();
      goto LABEL_25;
    }
  }

  if (sub_2680B355C())
  {
    OUTLINED_FUNCTION_43();
    sub_2680B34DC();
    v41 = sub_2680B3BBC();
    v81 = OUTLINED_FUNCTION_42();
    v82(v81, v91);
    if (v41)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B34CC();
      OUTLINED_FUNCTION_5_1();
      sub_2680B3BCC();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v83 = OUTLINED_FUNCTION_29();
      v35(v83);
      v84 = OUTLINED_FUNCTION_30();
      (v41)(v84);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B34CC();
      OUTLINED_FUNCTION_16();
      sub_2680B3BCC();
      goto LABEL_25;
    }
  }

  v90 = sub_2680B425C();
  if (qword_2813194A0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2813194A0);
  }

  sub_2680B406C(v90, &dword_268086000, off_2813194A8, "No known UserDialogAct type was present and patching couldn't be performed", 74, 2, MEMORY[0x277D84F90]);
  v87 = v102;
  (*(v101 + 8))(v58, v102);
  v89 = 1;
  v88 = v103;
LABEL_26:
  __swift_storeEnumTagSinglePayload(v88, v89, 1, v87);
  OUTLINED_FUNCTION_53();
}

void sub_26809B764()
{
  OUTLINED_FUNCTION_54();
  v319 = v0;
  v276 = v1;
  v328 = v2;
  v326 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249148, &qword_2680B5380);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_14(&v262 - v5);
  v324 = sub_2680B364C();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14(v9);
  v323 = sub_2680B3D1C();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v322 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26_0();
  v325 = v15;
  OUTLINED_FUNCTION_21();
  v287 = sub_2680B3FEC();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_14(v20);
  v292 = sub_2680B401C();
  OUTLINED_FUNCTION_4();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_14(v25);
  v318 = sub_2680B307C();
  v26 = *(v318 - 8);
  MEMORY[0x28223BE20](v318 - 8);
  OUTLINED_FUNCTION_4_1();
  v327 = v27;
  OUTLINED_FUNCTION_21();
  v298 = sub_2680B2FCC();
  OUTLINED_FUNCTION_4();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_1();
  v32 = OUTLINED_FUNCTION_14(v31);
  v312 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanForNode(v32);
  OUTLINED_FUNCTION_4();
  v315 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6();
  v37 = v36 - v35;
  v38 = sub_2680B35EC();
  OUTLINED_FUNCTION_4();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_26_0();
  v293 = v47;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249150, &qword_2680B5388);
  MEMORY[0x28223BE20](v280);
  v270 = &v262 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249158, &unk_2680B5390);
  MEMORY[0x28223BE20](v49 - 8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_26_0();
  v279 = v51;
  v52 = sub_2680B30DC();
  v317 = static MatchingSpanUtils.utf16CodeUnitsToCodePointsMapping(_:)(v326, v328);
  v53 = v52;
  v54 = 0;
  v55 = *(v52 + 16);
  v272 = v40 + 16;
  v282 = (v40 + 32);
  v295 = v29 + 16;
  v297 = v29;
  v294 = v29 + 8;
  v309 = v26 + 16;
  v274 = v330 + 1;
  v284 = v17 + 16;
  v283 = v17 + 8;
  v290 = v22 + 16;
  v289 = v22 + 8;
  v307 = (v26 + 24);
  v303 = v7 + 16;
  v302 = v11 + 16;
  v305 = v7;
  v56 = v276;
  v301 = v7 + 8;
  v300 = v11 + 8;
  v310 = v26;
  v57 = v26 + 8;
  v58 = v319;
  v308 = v57;
  v304 = v11;
  v299 = v11 + 32;
  v273 = v40;
  v277 = v40 + 8;
  v281 = MEMORY[0x277D84F90];
  v314 = xmmword_2680B4FE0;
  v329 = v37;
  v275 = v38;
  v278 = v53;
  v268 = v55;
  while (1)
  {
LABEL_2:
    v59 = v288;
LABEL_3:
    if (v54 == v55)
    {
      v60 = 1;
      v271 = v55;
      v61 = v280;
    }

    else
    {
      v61 = v280;
      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_177;
      }

      if (v54 >= *(v53 + 16))
      {
        goto LABEL_178;
      }

      v62 = v54 + 1;
      OUTLINED_FUNCTION_33();
      v67 = v64 + v63 + *(v65 + 72) * v66;
      v68 = *(v61 + 48);
      v69 = v58;
      v70 = v270;
      *v270 = v66;
      (*(v65 + 16))(&v70[v68], v67, v38);
      v71 = v70;
      v58 = v69;
      sub_26809315C(v71, v288, &qword_280249150, &qword_2680B5388);
      v60 = 0;
      v271 = v62;
      v59 = v288;
    }

    __swift_storeEnumTagSinglePayload(v59, v60, 1, v61);
    v72 = v59;
    v73 = v279;
    sub_26809315C(v72, v279, &qword_280249158, &unk_2680B5390);
    if (__swift_getEnumTagSinglePayload(v73, 1, v61) == 1)
    {

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_40();
      goto LABEL_155;
    }

    v74 = v73;
    v75 = *v73;
    v76 = v74 + *(v61 + 48);
    v269 = *v282;
    v269(v293, v76, v38);
    if (*(v56 + 16))
    {
      v77 = sub_268093DAC(v75);
      if (v78)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_19();
    v190 = OUTLINED_FUNCTION_35();
    v191(v190);
    if ((OUTLINED_FUNCTION_41() & 1) == 0)
    {
      OUTLINED_FUNCTION_20_0();
    }

    OUTLINED_FUNCTION_24_0();
    v192 = v58;
    if (v138)
    {
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_34(v205);
    }

LABEL_137:
    OUTLINED_FUNCTION_18_0();
    v197();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_32();
    v198();
    OUTLINED_FUNCTION_37();
    v58 = v192;
  }

  v79 = *(*(v56 + 56) + 8 * v77);
  v316 = *(v79 + 16);
  if (!v316)
  {
    OUTLINED_FUNCTION_19();
    v193 = OUTLINED_FUNCTION_35();
    v194(v193);
    if ((OUTLINED_FUNCTION_41() & 1) == 0)
    {
      OUTLINED_FUNCTION_20_0();
    }

    OUTLINED_FUNCTION_24_0();
    v192 = v58;
    if (v138)
    {
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_34(v206);
    }

    goto LABEL_137;
  }

  sub_26809A32C(v293, v80, v81, v82, v83, v84, v85, v86, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273);
  v326 = v88;
  if (!v88)
  {

    OUTLINED_FUNCTION_19();
    v195 = OUTLINED_FUNCTION_35();
    v196(v195);
    if ((OUTLINED_FUNCTION_41() & 1) == 0)
    {
      OUTLINED_FUNCTION_20_0();
    }

    OUTLINED_FUNCTION_24_0();
    v192 = v58;
    if (v138)
    {
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_34(v207);
    }

    goto LABEL_137;
  }

  v89 = v87;
  v328 = 0;
  v313 = v79;
  while (1)
  {
    if (v328 == v316)
    {
      v29 = v58;

      v181 = v267;
      v182 = v293;
      sub_26809ADF8(v293, v326, v89, v183, v184, v185, v186, v187, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273);

      v38 = v275;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v181, 1, v275);
      v56 = v276;
      if (EnumTagSinglePayload == 1)
      {
        OUTLINED_FUNCTION_19();
        v189(v182, v38);
        sub_26809D6A8(v181);

        v59 = v288;
        OUTLINED_FUNCTION_37();
        goto LABEL_3;
      }

      v199 = v262;
      OUTLINED_FUNCTION_32();
      v200();
      OUTLINED_FUNCTION_19();
      v201(v263, v199, v38);
      if ((OUTLINED_FUNCTION_41() & 1) == 0)
      {
        OUTLINED_FUNCTION_20_0();
        v181 = v208;
      }

      v281 = v181;
      v7 = *(v181 + 16);
      if (v7 >= *(v181 + 24) >> 1)
      {
        OUTLINED_FUNCTION_17_0();
        v281 = v209;
      }

      v202 = *(v273 + 8);
      v203 = v275;
      v202(v262, v275);
      v202(v293, v203);
      v38 = v203;
      *(v281 + 16) = v7 + 1;
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_32();
      v204();

      OUTLINED_FUNCTION_37();
      v58 = v29;
      goto LABEL_2;
    }

    if (v328 >= *(v79 + 16))
    {
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      OUTLINED_FUNCTION_40();

      OUTLINED_FUNCTION_48();

      OUTLINED_FUNCTION_58();
      goto LABEL_160;
    }

    OUTLINED_FUNCTION_33();
    sub_2680931D0(v79 + v90 + *(v91 + 72) * v328, v329);
    if ((sub_2680B33BC() & 1) == 0)
    {
      OUTLINED_FUNCTION_40();

      OUTLINED_FUNCTION_48();
      v218 = sub_2680B425C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2813194A0);
      }

      v219 = off_2813194A8;
      v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
      v221 = OUTLINED_FUNCTION_2(v220);
      OUTLINED_FUNCTION_47(v221);
      v222 = v329;
      v223 = sub_2680B339C();
      v225 = v224;
      v221[3].n128_u64[1] = MEMORY[0x277D837D0];
      v221[4].n128_u64[0] = sub_26808C1E4();
      v221[2].n128_u64[0] = v223;
      v221[2].n128_u64[1] = v225;
      v226 = "Span with no input: %@";
      v227 = v218;
      v228 = v219;
      v229 = 22;
      goto LABEL_151;
    }

    v92 = static MatchingSpanUtils.getUnicodeScalarIndexes(_:_:_:)(v329, v58, v317);
    if (v94)
    {
      OUTLINED_FUNCTION_40();

      OUTLINED_FUNCTION_48();
      v230 = sub_2680B425C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2813194A0);
      }

      v231 = off_2813194A8;
      v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
      v233 = OUTLINED_FUNCTION_2(v232);
      OUTLINED_FUNCTION_47(v233);
      v222 = v329;
      v234 = sub_2680B339C();
      v236 = v235;
      v233[3].n128_u64[1] = MEMORY[0x277D837D0];
      v233[4].n128_u64[0] = sub_26808C1E4();
      v233[2].n128_u64[0] = v234;
      v233[2].n128_u64[1] = v236;
      v226 = "Unable to extract unicode scalar indexes from span: %@";
      v227 = v230;
      v228 = v231;
      v229 = 54;
LABEL_151:
      OUTLINED_FUNCTION_57(v227, &dword_268086000, v228, v226, v229);

      OUTLINED_FUNCTION_2_2();
      v217 = v222;
      goto LABEL_152;
    }

    v29 = *(v329 + *(v312 + 20));
    if (v29 < 1 || v29 >= *(v326 + 16))
    {
      break;
    }

    v95 = v92;
    v96 = v93;
    v97 = sub_2680B332C();
    v98 = *(sub_2680B31DC() + 16);

    if (v98 <= v97)
    {
      v59 = -1;
    }

    else
    {
      if (*(sub_2680B31DC() + 16) <= v97)
      {
        goto LABEL_174;
      }

      v99 = v297;
      OUTLINED_FUNCTION_33();
      v102 = v100 + v101 + *(v99 + 72) * v97;
      v103 = v89;
      v104 = v296;
      v105 = v298;
      (*(v99 + 16))(v296, v102, v298);

      v106 = sub_2680B2FBC();
      v107 = v104;
      v89 = v103;
      (*(v99 + 8))(v107, v105);
      v59 = v106;
    }

    v108 = sub_2680B32FC();
    v109 = v311;
    v321 = v89;
    if (v108 && (v110 = v108, v111 = *(sub_2680B31DC() + 16), , v111 >= v110))
    {
      v113 = sub_2680B31DC();
      if (*(v113 + 16) < v110)
      {
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        OUTLINED_FUNCTION_0(&qword_2813194A0);
        goto LABEL_144;
      }

      v114 = v297;
      v115 = v113 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v297 + 72) * (v110 - 1);
      v116 = v59;
      v117 = v296;
      v118 = v298;
      (*(v297 + 16))(v296, v115, v298);

      v119 = sub_2680B2FAC();
      v120 = v117;
      v59 = v116;
      (*(v114 + 8))(v120, v118);
      v112 = v119;
    }

    else
    {
      v112 = -1;
    }

    v121 = v326;
    v7 = v318;
    if (v29 >= *(v326 + 16))
    {
      goto LABEL_165;
    }

    v122 = (*(v310 + 80) + 32) & ~*(v310 + 80);
    v123 = *(v310 + 16);
    v320 = *(v310 + 72) * v29;
    v123(v327, v326 + v122 + v320, v318);
    if ((sub_2680B305C() & 1) == 0)
    {
      if ((sub_2680B306C() & 1) == 0)
      {
        OUTLINED_FUNCTION_40();

        OUTLINED_FUNCTION_58();

        OUTLINED_FUNCTION_48();
        v239 = sub_2680B425C();
        if (qword_2813194A0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2813194A0);
        }

        v240 = off_2813194A8;
        v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
        v242 = OUTLINED_FUNCTION_2(v241);
        OUTLINED_FUNCTION_47(v242);
        v243 = MEMORY[0x277D83C10];
        v244[7] = v245;
        v244[8] = v243;
        v244[4] = v29;
        sub_2680B406C(v239, &dword_268086000, v240, "Node: %d in the UserDialogAct is not a string or int node.", v262);

        OUTLINED_FUNCTION_19();
        v246(v327, v7);
        OUTLINED_FUNCTION_2_2();
        sub_268093BF8(v329, v247);
        OUTLINED_FUNCTION_19();
        v248 = OUTLINED_FUNCTION_50();
        v249(v248);
        goto LABEL_154;
      }

      v130 = sub_2680B337C();
      v132 = v131;
      v133 = HIBYTE(v131) & 0xF;
      v134 = v130 & 0xFFFFFFFFFFFFLL;
      if ((v132 & 0x2000000000000000) != 0)
      {
        v135 = v133;
      }

      else
      {
        v135 = v130 & 0xFFFFFFFFFFFFLL;
      }

      if (!v135)
      {
        goto LABEL_175;
      }

      if ((v132 & 0x1000000000000000) != 0)
      {
        v154 = v122;
        v331 = 0;
        sub_26809D10C(v130, v132, 10);
        v155 = v180;
        goto LABEL_102;
      }

      if ((v132 & 0x2000000000000000) != 0)
      {
        v330[0] = v130;
        v330[1] = v132 & 0xFFFFFFFFFFFFFFLL;
        if (v130 == 43)
        {
          if (!v133)
          {
            goto LABEL_181;
          }

          if (v133 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_25();
              if (!v139 & v138)
              {
                break;
              }

              OUTLINED_FUNCTION_9_1();
              if (!v139 || __OFADD__(v148, v147))
              {
                break;
              }

              OUTLINED_FUNCTION_46();
              if (v139)
              {
                goto LABEL_101;
              }
            }
          }
        }

        else if (v130 == 45)
        {
          if (!v133)
          {
            goto LABEL_182;
          }

          if (v133 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_25();
              if (!v139 & v138)
              {
                break;
              }

              OUTLINED_FUNCTION_9_1();
              if (!v139 || __OFSUB__(v144, v143))
              {
                break;
              }

              OUTLINED_FUNCTION_46();
              if (v139)
              {
                goto LABEL_101;
              }
            }
          }
        }

        else if (v133)
        {
          while (1)
          {
            OUTLINED_FUNCTION_25();
            if (!v139 & v138)
            {
              break;
            }

            OUTLINED_FUNCTION_9_1();
            if (!v139 || __OFADD__(v153, v152))
            {
              break;
            }

            OUTLINED_FUNCTION_46();
            if (v139)
            {
              goto LABEL_101;
            }
          }
        }
      }

      else
      {
        if ((v130 & 0x1000000000000000) != 0)
        {
          v136 = ((v132 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v136 = sub_2680B434C();
        }

        v137 = *v136;
        if (v137 == 43)
        {
          if (v134 < 1)
          {
            goto LABEL_180;
          }

          if (v134 != 1)
          {
            if (!v136)
            {
              goto LABEL_91;
            }

            while (1)
            {
              OUTLINED_FUNCTION_25();
              if (!v139 & v138)
              {
                break;
              }

              OUTLINED_FUNCTION_9_1();
              if (!v139 || __OFADD__(v146, v145))
              {
                break;
              }

              OUTLINED_FUNCTION_46();
              if (v139)
              {
                goto LABEL_101;
              }
            }
          }
        }

        else if (v137 == 45)
        {
          if (v134 < 1)
          {
            goto LABEL_179;
          }

          if (v134 != 1)
          {
            if (v136)
            {
              while (1)
              {
                OUTLINED_FUNCTION_25();
                if (!v139 & v138)
                {
                  goto LABEL_100;
                }

                OUTLINED_FUNCTION_9_1();
                if (!v139 || __OFSUB__(v141, v140))
                {
                  goto LABEL_100;
                }

                OUTLINED_FUNCTION_46();
                if (v139)
                {
                  goto LABEL_101;
                }
              }
            }

LABEL_91:
            v142 = 0;
LABEL_101:
            v154 = v122;
            v331 = v142;
            v155 = v142;
LABEL_102:

            if ((v155 & 1) == 0)
            {
              v157 = v285;
              MEMORY[0x26D60FB70](v156);
              sub_2680B3FCC();
              OUTLINED_FUNCTION_19();
              v158 = v287;
              v159(v286, v157, v287);
              sub_2680B304C();
              OUTLINED_FUNCTION_19();
              v160(v157, v158);
              v7 = v318;
              v122 = v154;
              goto LABEL_104;
            }

            OUTLINED_FUNCTION_40();

            OUTLINED_FUNCTION_48();

            OUTLINED_FUNCTION_58();
            v7 = v318;
LABEL_160:
            v250 = sub_2680B425C();
            v251 = v327;
            if (qword_2813194A0 != -1)
            {
              OUTLINED_FUNCTION_0(&qword_2813194A0);
            }

            v252 = off_2813194A8;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
            v253 = swift_allocObject();
            *(v253 + 16) = xmmword_2680B5350;
            v254 = v329;
            v255 = sub_2680B337C();
            v257 = v256;
            *(v253 + 56) = MEMORY[0x277D837D0];
            v258 = sub_26808C1E4();
            *(v253 + 32) = v255;
            *(v253 + 40) = v257;
            v259 = MEMORY[0x277D83C10];
            *(v253 + 96) = MEMORY[0x277D83B88];
            *(v253 + 104) = v259;
            *(v253 + 64) = v258;
            *(v253 + 72) = v29;
            OUTLINED_FUNCTION_57(v250, &dword_268086000, v252, "Got a non-int span value: %@ for an int node: %d.", 49);

            OUTLINED_FUNCTION_19();
            v260(v251, v7);
            OUTLINED_FUNCTION_2_2();
            sub_268093BF8(v254, v261);
            OUTLINED_FUNCTION_19();
            v237 = v293;
            goto LABEL_153;
          }
        }

        else
        {
          if (!v134)
          {
            goto LABEL_100;
          }

          v149 = 0;
          if (!v136)
          {
            goto LABEL_91;
          }

          while (1)
          {
            v150 = *v136 - 48;
            if (v150 > 9)
            {
              break;
            }

            v151 = 10 * v149;
            if ((v149 * 10) >> 64 != (10 * v149) >> 63)
            {
              break;
            }

            v149 = v151 + v150;
            if (__OFADD__(v151, v150))
            {
              break;
            }

            ++v136;
            if (!--v134)
            {
              goto LABEL_91;
            }
          }
        }
      }

LABEL_100:
      v142 = 1;
      goto LABEL_101;
    }

    sub_2680B400C();
    sub_26809E574(v59, v112);
    if (!v124)
    {
      sub_2680B337C();
    }

    sub_2680B3FFC();
    OUTLINED_FUNCTION_19();
    v125 = v109;
    v126 = v109;
    v127 = v292;
    v128(v291, v125, v292);
    sub_2680B303C();
    OUTLINED_FUNCTION_19();
    v129(v126, v127);
    v121 = v326;
LABEL_104:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26809D694(v121);
      v121 = v177;
    }

    if (v29 >= *(v121 + 16))
    {
      goto LABEL_166;
    }

    (*v307)(v121 + v122 + v320, v327, v7);
    sub_2680B3D0C();
    if (v29 > 0xFFFFFFFFLL)
    {
      goto LABEL_167;
    }

    sub_2680B3CFC();
    sub_2680B3CDC();
    v29 = v306;
    sub_2680B363C();
    if (v59 < 0)
    {
      goto LABEL_168;
    }

    sub_2680B35FC();
    if (v112 < 0)
    {
      goto LABEL_169;
    }

    sub_2680B362C();
    if ((v95 & 0x8000000000000000) != 0)
    {
      goto LABEL_170;
    }

    if (HIDWORD(v95))
    {
      goto LABEL_171;
    }

    sub_2680B361C();
    if ((v96 & 0x8000000000000000) != 0)
    {
      goto LABEL_172;
    }

    if (HIDWORD(v96))
    {
      goto LABEL_173;
    }

    v326 = v121;
    sub_2680B360C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249160, &qword_2680B53A0);
    v161 = v305;
    v162 = (*(v305 + 80) + 32) & ~*(v305 + 80);
    v163 = swift_allocObject();
    v164 = OUTLINED_FUNCTION_47(v163);
    (*(v161 + 16))(v165 + v162, v29, v324, v164);
    v166 = v325;
    sub_2680B3CEC();
    OUTLINED_FUNCTION_19();
    v167(v322, v166, v323);
    v89 = v321;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26809EEC8();
      v89 = v178;
    }

    v168 = v327;
    v169 = v319;
    v170 = *(v89 + 16);
    if (v170 >= *(v89 + 24) >> 1)
    {
      sub_26809EEC8();
      v89 = v179;
    }

    ++v328;
    OUTLINED_FUNCTION_19();
    v171(v29, v324);
    v29 = v304;
    v172 = v166;
    v173 = v323;
    (*(v304 + 8))(v172, v323);
    OUTLINED_FUNCTION_19();
    v174(v168, v7);
    OUTLINED_FUNCTION_2_2();
    sub_268093BF8(v329, v175);
    *(v89 + 16) = v170 + 1;
    OUTLINED_FUNCTION_33();
    (*(v29 + 32))(v89 + v176 + *(v29 + 72) * v170, v322, v173);
    v79 = v313;
    v58 = v169;
  }

  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_40();

  v59 = sub_2680B425C();
  if (qword_2813194A0 != -1)
  {
    goto LABEL_183;
  }

LABEL_144:
  v210 = off_2813194A8;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
  v212 = OUTLINED_FUNCTION_2(v211);
  OUTLINED_FUNCTION_47(v212);
  v213 = MEMORY[0x277D83C10];
  v214[7] = v215;
  v214[8] = v213;
  v214[4] = v29;
  sub_2680B406C(v59, &dword_268086000, v210, "NodeIndex: %d not in the UserDialogAct nodes.", v262);

  OUTLINED_FUNCTION_2_2();
  v217 = v329;
LABEL_152:
  sub_268093BF8(v217, v216);
  OUTLINED_FUNCTION_19();
  v237 = OUTLINED_FUNCTION_50();
LABEL_153:
  v238(v237);
LABEL_154:

LABEL_155:
  OUTLINED_FUNCTION_53();
}