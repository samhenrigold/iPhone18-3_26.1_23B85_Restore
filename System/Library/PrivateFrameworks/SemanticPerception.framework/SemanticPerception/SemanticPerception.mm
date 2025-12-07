Swift::Void __swiftcall SPPeriodicTaskScheduler.registerForPeriodicContextLogging()()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v0 = sub_2653C1290();
  v51 = *(v0 - 8);
  v52 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v50 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v49 - v4;
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v49 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  v11 = objc_opt_self();
  v12 = [v11 sharedScheduler];
  v13 = sub_2653C12A0();
  aBlock[4] = sub_2653C039C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2653C0898;
  aBlock[3] = &block_descriptor;
  v14 = _Block_copy(aBlock);
  v15 = [v12 registerForTaskWithIdentifier:v13 usingQueue:0 launchHandler:v14];
  _Block_release(v14);

  if (v15)
  {
    v16 = [v11 sharedScheduler];
    v17 = sub_2653C12A0();
    v18 = [v16 taskRequestForIdentifier_];

    if (v18)
    {
      sub_2653C1280();
      v19 = v18;
      v20 = sub_2653C1270();
      v21 = sub_2653C12E0();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        aBlock[0] = v23;
        *v22 = 136315138;
        v24 = [v19 identifier];
        v25 = sub_2653C12B0();
        v27 = v26;

        v28 = sub_2653C0A4C(v25, v27, aBlock);

        *(v22 + 4) = v28;
        _os_log_impl(&dword_2653BF000, v20, v21, "On-screen context refresh (%s) was already scheduled with dasd", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x266758510](v23, -1, -1);
        MEMORY[0x266758510](v22, -1, -1);
      }

      else
      {
      }

      (*(v51 + 8))(v10, v52);
    }

    else
    {
      v32 = [v11 sharedScheduler];
      v33 = objc_allocWithZone(MEMORY[0x277CF07D8]);
      v34 = sub_2653C12A0();
      v35 = [v33 initWithIdentifier_];

      v36 = v35;
      [v36 setPriority_];
      [v36 setInterval_];
      [v36 setMinDurationBetweenInstances_];
      [v36 setRequiresProtectionClass_];

      aBlock[0] = 0;
      LODWORD(v34) = [v32 submitTaskRequest:v36 error:aBlock];

      if (v34)
      {
        v37 = aBlock[0];
        sub_2653C1280();
        v38 = sub_2653C1270();
        v39 = sub_2653C12E0();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_2653BF000, v38, v39, "Scheduled on-screen context refresh with dasd", v40, 2u);
          MEMORY[0x266758510](v40, -1, -1);
        }

        (*(v51 + 8))(v8, v52);
      }

      else
      {
        v41 = aBlock[0];
        v42 = sub_2653C1260();

        swift_willThrow();
        v43 = v50;
        sub_2653C1280();
        MEMORY[0x2667584A0](v42);
        v44 = sub_2653C1270();
        v45 = sub_2653C12D0();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v46 = 138412290;
          MEMORY[0x2667584A0](v42);
          v48 = _swift_stdlib_bridgeErrorToNSError();
          *(v46 + 4) = v48;
          *v47 = v48;
          _os_log_impl(&dword_2653BF000, v44, v45, "Failed to register on-screen context refresh with dasd due to error: %@", v46, 0xCu);
          sub_2653C0FF4(v47);
          MEMORY[0x266758510](v47, -1, -1);
          MEMORY[0x266758510](v46, -1, -1);
        }

        else
        {
        }

        (*(v51 + 8))(v43, v52);
      }
    }
  }

  else
  {
    sub_2653C1280();
    v29 = sub_2653C1270();
    v30 = sub_2653C12D0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2653BF000, v29, v30, "Could not register on-screen context refresh with dasd", v31, 2u);
      MEMORY[0x266758510](v31, -1, -1);
    }

    (*(v51 + 8))(v5, v52);
  }
}

id sub_2653C039C(void *a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2653C1290();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35[-v8];
  MEMORY[0x28223BE20](v7);
  v11 = &v35[-v10];
  sub_2653C1280();
  v12 = sub_2653C1270();
  v13 = sub_2653C12E0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2653BF000, v12, v13, "Performing on-screen context refresh", v14, 2u);
    MEMORY[0x266758510](v14, -1, -1);
  }

  v15 = *(v3 + 8);
  v15(v11, v2);
  v16 = [objc_opt_self() clientWithDefaultRequestType_];
  v17 = [v16 newRequest];
  [v17 setIncludeStructuredExtractionResults_];
  [v17 setIncludeRequestInResponse_];
  [v17 setDebug_];

  v18 = [objc_opt_self() sharedScheduler];
  v19 = objc_allocWithZone(MEMORY[0x277CF07D8]);
  v20 = sub_2653C12A0();
  v21 = [v19 initWithIdentifier_];

  v22 = v21;
  [v22 setPriority_];
  [v22 setInterval_];
  [v22 setMinDurationBetweenInstances_];
  [v22 setRequiresProtectionClass_];

  v36[0] = 0;
  LODWORD(v20) = [v18 submitTaskRequest:v22 error:v36];

  if (v20)
  {
    v23 = v36[0];
    sub_2653C1280();
    v24 = sub_2653C1270();
    v25 = sub_2653C12E0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2653BF000, v24, v25, "Scheduled on-screen context refresh with dasd", v26, 2u);
      MEMORY[0x266758510](v26, -1, -1);
    }
  }

  else
  {
    v27 = v36[0];
    v28 = sub_2653C1260();

    swift_willThrow();
    sub_2653C1280();
    MEMORY[0x2667584A0](v28);
    v29 = sub_2653C1270();
    v30 = sub_2653C12D0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      MEMORY[0x2667584A0](v28);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&dword_2653BF000, v29, v30, "Failed to register on-screen context refresh with dasd due to error: %@", v31, 0xCu);
      sub_2653C0FF4(v32);
      MEMORY[0x266758510](v32, -1, -1);
      MEMORY[0x266758510](v31, -1, -1);
    }

    else
    {
    }

    v9 = v6;
  }

  v15(v9, v2);
  return [a1 setTaskCompleted];
}

void sub_2653C0898(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall SPPeriodicTaskScheduler.ping()()
{
  v0 = sub_2653C1290();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2653C1280();
  v4 = sub_2653C1270();
  v5 = sub_2653C12E0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2653BF000, v4, v5, "pong", v6, 2u);
    MEMORY[0x266758510](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
}

unint64_t sub_2653C0A4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2653C0B18(v11, 0, 0, 1, a1, a2);
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
    sub_2653C11D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2653C0B18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2653C0C24(a5, a6);
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
    result = sub_2653C1300();
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

void *sub_2653C0C24(uint64_t a1, unint64_t a2)
{
  v3 = sub_2653C0C70(a1, a2);
  sub_2653C0DA0(&unk_2876EE440);
  return v3;
}

void *sub_2653C0C70(uint64_t a1, unint64_t a2)
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

  v6 = sub_2653C0E8C(v5, 0);
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

  result = sub_2653C1300();
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
        v10 = sub_2653C12C0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2653C0E8C(v10, 0);
        result = sub_2653C12F0();
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

uint64_t sub_2653C0DA0(uint64_t result)
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

  result = sub_2653C0F00(result, v11, 1, v3);
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

void *sub_2653C0E8C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280017828, &qword_2653C1638);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2653C0F00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280017828, &qword_2653C1638);
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

uint64_t sub_2653C0FF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280017820, &unk_2653C15F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t getEnumTagSinglePayload for SPPeriodicTaskScheduler(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SPPeriodicTaskScheduler(_WORD *result, int a2, int a3)
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

uint64_t sub_2653C11D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}