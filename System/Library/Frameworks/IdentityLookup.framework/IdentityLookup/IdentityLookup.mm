uint64_t static LiveCallerIDLookupManager.shared.getter()
{
  v0 = type metadata accessor for LiveCallerIDLookupManager();

  return MEMORY[0x2821FEAF0](v0, &unk_280B27828);
}

uint64_t LiveLookupStore.activeExtensions()()
{
  type metadata accessor for LiveLookupDBExtension();
  v0 = [swift_getObjCClassFromMetadata() entityName];
  if (!v0)
  {
    sub_238A61BAC();
    v0 = sub_238A61B9C();
  }

  v1 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  v2 = sub_238A61CBC();
  [v1 setPredicate_];

  v3 = v1;
  v4 = LiveLookupStore.fetchExtensions(_:context:)(v1, 0);

  return v4;
}

uint64_t sub_238A42AB4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t LiveLookupStore.fetchExtensions(_:context:)(void *a1, uint64_t a2)
{
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v4 = sub_238A61B7C();
  __swift_project_value_buffer(v4, qword_280B278D8);
  v5 = sub_238A61B5C();
  v6 = sub_238A61CDC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_238A41000, v5, v6, "fetching extensions", v7, 2u);
    MEMORY[0x23EE6F590](v7, -1, -1);
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    type metadata accessor for LiveLookupDBExtension();
    v9 = [swift_getObjCClassFromMetadata() entityName];
    if (!v9)
    {
      sub_238A61BAC();
      v9 = sub_238A61B9C();
    }

    v10 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

    v8 = v10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3E8, &unk_238A63BD0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_238A638C0;
  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v13 = a1;
  v14 = sub_238A61B9C();
  v15 = [v12 initWithKey:v14 ascending:1];

  *(v11 + 32) = v15;
  sub_238A42AB4(0, &qword_280B27730, 0x277CCAC98);
  v16 = sub_238A61BEC();

  [v8 setSortDescriptors_];

  if (a2)
  {
    v17 = sub_238A43010(v8, a2, type metadata accessor for LiveLookupDBExtension);
    v18 = v8;
  }

  else
  {
    sub_238A43290(v8, sub_238A42FC4, &qword_27DF4B430, &qword_238A63AA8, sub_238A5790C);
    v17 = v19;
  }

  v20 = v8;

  v21 = sub_238A61B5C();
  v22 = sub_238A61CDC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v23 = 138412546;
    *(v23 + 4) = v20;
    *v24 = v20;
    *(v23 + 12) = 2080;
    v26 = type metadata accessor for LiveLookupDBExtension();
    v27 = MEMORY[0x23EE6EAF0](v17, v26);
    v29 = sub_238A4398C(v27, v28, &v31);

    *(v23 + 14) = v29;
    _os_log_impl(&dword_238A41000, v21, v22, "fetchExtensions: request: %@ extensions: %s", v23, 0x16u);
    sub_238A42F4C(v24, &qword_27DF4B3C8, &qword_238A638F0);
    MEMORY[0x23EE6F590](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x23EE6F590](v25, -1, -1);
    MEMORY[0x23EE6F590](v23, -1, -1);
  }

  else
  {
  }

  return v17;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_238A42F4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_238A42FC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_238A43010(*(v2 + 24), a1, type metadata accessor for LiveLookupDBExtension);
  *a2 = result;
  return result;
}

uint64_t sub_238A431BC(char a1)
{
  v4 = *(v1 + 32);

  os_unfair_lock_lock(v4 + 9);
  sub_238A43628(&v4[4], &v7);
  v5 = v4 + 9;
  if (v2)
  {
    os_unfair_lock_unlock(v5);

    if (a1)
    {
      swift_willThrow();
    }

    else
    {
      v1 = sub_238A431BC(1);
    }
  }

  else
  {
    os_unfair_lock_unlock(v5);
    v1 = v7;
  }

  return v1;
}

void sub_238A43290(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (*(v5 + 24))
  {
    MEMORY[0x28223BE20](a1);

    v8 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_238A61D0C();
  }

  else
  {
    __break(1u);
  }
}

id sub_238A433E4(uint64_t a1, unint64_t a2)
{
  v5 = sub_238A431BC(0);
  v7 = v2;
  if (v2)
  {
    if (a2)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0xD00000000000001ALL;
    }

    if (a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0x8000000238A659E0;
    }

    v10 = qword_280B27740;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_238A61B7C();
    __swift_project_value_buffer(v11, qword_280B278D8);

    v12 = v7;
    v13 = sub_238A61B5C();
    v14 = sub_238A61CCC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v15 = 136315394;
      v18 = sub_238A4398C(v8, v9, &v25);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2112;
      v19 = v7;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v20;
      *v16 = v20;
      _os_log_impl(&dword_238A41000, v13, v14, "%s: %@", v15, 0x16u);
      sub_238A5933C(v16);
      MEMORY[0x23EE6F590](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23EE6F590](v17, -1, -1);
      MEMORY[0x23EE6F590](v15, -1, -1);
    }

    else
    {
    }

    return swift_willThrow();
  }

  else
  {
    v21 = v5;
    v22 = v6;
    v23 = [v6 viewContext];

    return v23;
  }
}

id sub_238A4365C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v7 == 1)
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v10 = sub_238A61B7C();
    __swift_project_value_buffer(v10, qword_280B278D8);
    v11 = v6;
    v12 = sub_238A61B5C();
    v13 = sub_238A61CDC();
    sub_238A593A4(v6, v5, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v6;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_238A41000, v12, v13, "Attempting to recover from error %@", v14, 0xCu);
      sub_238A5933C(v15);
      MEMORY[0x23EE6F590](v15, -1, -1);
      MEMORY[0x23EE6F590](v14, -1, -1);
      sub_238A593A4(v6, v5, 1);
    }

    else
    {

      sub_238A593A4(v6, v5, 1);
    }
  }

  else
  {
    if (!*(a1 + 16))
    {
      *a2 = v6;
      a2[1] = v5;
      v8 = v6;
      return v5;
    }

    sub_238A593A4(*a1, v5, v7);
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v18 = sub_238A61B7C();
    __swift_project_value_buffer(v18, qword_280B278D8);
    v19 = sub_238A61B5C();
    v20 = sub_238A61CDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_238A41000, v19, v20, "Attempting initial store load", v21, 2u);
      MEMORY[0x23EE6F590](v21, -1, -1);
    }
  }

  v22 = sub_238A57F40();
  if (v2)
  {
    *a1 = v2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    swift_willThrow();
    return v2;
  }

  else
  {
    *a1 = v22;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    *a2 = v22;
    a2[1] = v23;
    v24 = v23;
    v25 = v22;
    return v24;
  }
}

uint64_t sub_238A43930(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_238A4398C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238A43C4C(v11, 0, 0, 1, a1, a2);
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
    sub_238A43930(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

void *sub_238A43A5C(uint64_t a1, unint64_t a2)
{
  v3 = sub_238A43B1C(a1, a2);
  sub_238A43DA4(&unk_284B5C1F0);
  return v3;
}

void *sub_238A43AA8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B428, &qword_238A63AA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_238A43B1C(uint64_t a1, unint64_t a2)
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

  v6 = sub_238A43AA8(v5, 0);
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

  result = sub_238A61D9C();
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
        v10 = sub_238A61BCC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_238A43AA8(v10, 0);
        result = sub_238A61D5C();
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

unint64_t sub_238A43C4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_238A43A5C(a5, a6);
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
    result = sub_238A61D9C();
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

uint64_t sub_238A43DA4(uint64_t result)
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

  result = sub_238A56C7C(result, v11, 1, v3);
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

id ILDefaultLog(uint64_t a1)
{
  if (ILDefaultLog_onceToken != -1)
  {
    ILDefaultLog_cold_1();
  }

  v2 = ILDefaultLog_log;

  return v2;
}

uint64_t __ILDefaultLog_block_invoke()
{
  ILDefaultLog_log = os_log_create("com.apple.calls.identitylookup", "Default");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_238A4420C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238A4427C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_238A442C0(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_238A61B9C();
  [v2 setIdentifier_];
}

id sub_238A44324@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isAppStoreVendable];
  *a2 = result;
  return result;
}

id sub_238A4436C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEnabled];
  *a2 = result;
  return result;
}

id sub_238A443B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isInstalled];
  *a2 = result;
  return result;
}

id sub_238A443FC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 priority];
  *a2 = result;
  return result;
}

id sub_238A44444@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldRemove];
  *a2 = result;
  return result;
}

uint64_t sub_238A445CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238A61A1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_238A4469C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238A61A1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

char *sub_238A44764@<X0>(char **a1@<X8>)
{
  result = ILMessageFilterCapabilitiesQueryResponse.transactionalSubActions.getter();
  *a1 = result;
  return result;
}

char *sub_238A447A8@<X0>(char **a1@<X8>)
{
  result = ILMessageFilterCapabilitiesQueryResponse.promotionalSubActions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_238A447EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _LiveLookupConfiguration(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_238A44834()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_238A4487C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldBlock];
  *a2 = result;
  return result;
}

id sub_238A448C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dbExtension];
  *a2 = result;
  return result;
}

id sub_238A449DC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_238A44A24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dbExtension];
  *a2 = result;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_238A45FB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_238A49330(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_238A4AA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238A4ACA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_238A4B164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_238A4B294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

IdentityLookup::IdentityType_optional __swiftcall IdentityType.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_238A4D918()
{
  sub_238A61E9C();
  sub_238A61EBC();
  return sub_238A61ECC();
}

uint64_t sub_238A4D98C(uint64_t a1)
{
  sub_238A61E9C();
  sub_238A61EBC();
  return sub_238A61ECC();
}

uint64_t ExtensionUpdate.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier);

  return v1;
}

id ExtensionUpdate.__allocating_init(identifier:isAppStoreVendable:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier];
  *v8 = a1;
  v8[1] = a2;
  v7[OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_isAppStoreVendable] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id ExtensionUpdate.init(identifier:isAppStoreVendable:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = &v3[OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier];
  *v4 = a1;
  v4[1] = a2;
  v3[OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_isAppStoreVendable] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for ExtensionUpdate();
  return objc_msgSendSuper2(&v6, sel_init);
}

id ExtensionUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExtensionUpdate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionUpdate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_238A4DC50()
{
  result = sub_238A61B9C();
  qword_280B27488 = result;
  return result;
}

id static NSNotificationName.LiveLookupStoreExtensionsChangedNotification.getter()
{
  if (qword_280B274B8 != -1)
  {
    swift_once();
  }

  v1 = qword_280B27488;

  return v1;
}

uint64_t sub_238A4DD00()
{
  type metadata accessor for LiveLookupStore();
  v0 = swift_allocObject();
  result = LiveLookupStore.init(storeLocation:)(0xD000000000000034, 0x8000000238A65820);
  qword_280B27890 = v0;
  return result;
}

uint64_t LiveLookupStore.__allocating_init(storeLocation:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LiveLookupStore.init(storeLocation:)(a1, a2);
  return v4;
}

uint64_t static LiveLookupStore.shared.getter()
{
  if (qword_280B27888 != -1)
  {
    swift_once();
  }
}

uint64_t LiveLookupStore.init(storeLocation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B0, &qword_238A638E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-v7];
  v9 = sub_238A61A1C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v22[-v14];
  *(v3 + 16) = 5;
  *(v3 + 24) = 0;
  sub_238A4E0A8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    __break(1u);
    (*(v10 + 8))(v13, v9);

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v16 = sub_238A56DD4(a1, a2);

    (*(v10 + 16))(v13, v15, v9);
    v17 = v16;
    v18 = sub_238A58ED0(v13);
    type metadata accessor for StoreWrapper();
    swift_allocObject();
    v19 = StoreWrapper.init(containerName:model:storeDescription:)(0x6B6F6F4C6576694CLL, 0xEF65726F74537075, v18, v17);
    v20 = *(v10 + 8);
    v20(v13, v9);
    v20(v15, v9);

    *(v3 + 24) = v19;

    return v3;
  }

  return result;
}

uint64_t sub_238A4E0A8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LiveLookupStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_238A61B9C();
  v5 = sub_238A61B9C();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_238A619DC();
    v7 = 0;
  }

  else
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v8 = sub_238A61B7C();
    __swift_project_value_buffer(v8, qword_280B278D8);
    v6 = sub_238A61B5C();
    v9 = sub_238A61CDC();
    if (os_log_type_enabled(v6, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_238A41000, v6, v9, "Failed to find LiveLookupStore model file", v10, 2u);
      MEMORY[0x23EE6F590](v10, -1, -1);
    }

    v7 = 1;
  }

  v11 = sub_238A61A1C();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v7, 1, v11);
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

void sub_238A4E2DC(uint64_t a1)
{
  if (*(v1 + 24))
  {
    MEMORY[0x28223BE20](a1);

    v2 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v2);
    sub_238A61D0C();
  }

  else
  {
    __break(1u);
  }
}

void sub_238A4E434()
{
  v1 = v0;
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v2 = sub_238A61B7C();
  __swift_project_value_buffer(v2, qword_280B278D8);
  v3 = sub_238A61B5C();
  v4 = sub_238A61CDC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238A41000, v3, v4, "saving", v5, 2u);
    MEMORY[0x23EE6F590](v5, -1, -1);
  }

  if (*(v1 + 24))
  {

    v6 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v6);
    sub_238A61D0C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_238A4E614(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_238A579BC;
  *(v3 + 24) = v2;
  v7[4] = sub_238A579E0;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_238A527B0;
  v7[3] = &block_descriptor;
  v4 = _Block_copy(v7);
  v5 = a1;

  [v5 performBlockAndWait_];
  _Block_release(v4);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238A4E774(uint64_t result)
{
  if (*(v1 + 24))
  {
    MEMORY[0x28223BE20](result);
    sub_238A61C4C();

    sub_238A58ABC();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LiveLookupStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_238A4E8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for LiveLookupStore();
  v6 = swift_allocObject();
  result = LiveLookupStore.init(storeLocation:)(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t LiveLookupStore.installedExtensions()()
{
  type metadata accessor for LiveLookupDBExtension();
  v0 = [swift_getObjCClassFromMetadata() entityName];
  if (!v0)
  {
    sub_238A61BAC();
    v0 = sub_238A61B9C();
  }

  v1 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  v2 = sub_238A61CBC();
  [v1 setPredicate_];

  v3 = v1;
  v4 = LiveLookupStore.fetchExtensions(_:context:)(v1, 0);

  return v4;
}

Swift::Bool __swiftcall LiveLookupStore.isAppStoreVendable(forExtensionWith:)(Swift::String forExtensionWith)
{
  object = forExtensionWith._object;
  countAndFlagsBits = forExtensionWith._countAndFlagsBits;
  v3 = type metadata accessor for LiveLookupDBExtension();
  v4 = [swift_getObjCClassFromMetadata() entityName];
  if (!v4)
  {
    sub_238A61BAC();
    v4 = sub_238A61B9C();
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_238A63890;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_238A57194();
  *(v6 + 32) = countAndFlagsBits;
  *(v6 + 40) = object;

  v7 = sub_238A61CBC();
  [v5 setPredicate_];

  sub_238A43290(v5, sub_238A42FC4, &qword_27DF4B430, &qword_238A63AA8, sub_238A5790C);
  v9 = v8;
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v10 = sub_238A61B7C();
  __swift_project_value_buffer(v10, qword_280B278D8);

  v11 = sub_238A61B5C();
  v12 = sub_238A61CDC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_238A4398C(countAndFlagsBits, object, &v23);
    *(v13 + 12) = 2080;
    v15 = MEMORY[0x23EE6EAF0](v9, v3);
    v17 = sub_238A4398C(v15, v16, &v23);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_238A41000, v11, v12, "identifier %s extensions %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE6F590](v14, -1, -1);
    MEMORY[0x23EE6F590](v13, -1, -1);
  }

  if (v9 >> 62)
  {
    v18 = sub_238A61E0C();
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_14:

    v21 = 0;
    goto LABEL_15;
  }

  v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x23EE6EC60](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v18;
    }

    v19 = *(v9 + 32);
  }

  v20 = v19;

  v21 = [v20 isAppStoreVendable];

LABEL_15:
  LOBYTE(v18) = v21;
  return v18;
}

Swift::Void __swiftcall LiveLookupStore.resetExtension(with:)(Swift::String with)
{
  v2 = v1;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_238A63890;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_238A57194();
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;

  v6 = sub_238A61CBC();
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_238A61B9C();
  v9 = [v7 initWithEntityName_];

  v25 = v6;
  [v9 setPredicate_];
  v24 = v9;
  v32 = v2;
  sub_238A43290(v9, sub_238A57938, &qword_27DF4B420, &qword_238A63A98, sub_238A5790C);
  v12 = v10;
  if (!(v10 >> 62))
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_15:

    v23 = v25;
    sub_238A527D8(v25);

    return;
  }

LABEL_14:
  v13 = sub_238A61E0C();
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_3:
  v14 = 0;
  v30 = v12 & 0xFFFFFFFFFFFFFF8;
  v31 = v12 & 0xC000000000000001;
  v27 = "iveLookupStore.swift";
  *&v11 = 136315394;
  v26 = v11;
  v28 = v12;
  v29 = v13;
  while (1)
  {
    if (v31)
    {
      v15 = MEMORY[0x23EE6EC60](v14, v12);
    }

    else
    {
      if (v14 >= *(v30 + 16))
      {
        goto LABEL_13;
      }

      v15 = *(v12 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (!*(v32 + 24))
    {
      break;
    }

    v33 = &v24;
    MEMORY[0x28223BE20](v15);

    v18 = sub_238A431BC(0);
    v20 = v19;
    v21 = [v19 viewContext];

    MEMORY[0x28223BE20](v22);
    sub_238A61D0C();

    ++v14;
    if (v17 == v29)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall LiveLookupStore.updateExtensions(with:)(Swift::OpaquePointer with)
{
  v6 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  if (*(v1 + 24))
  {
    v5 = MEMORY[0x28223BE20](with._rawValue);
    MEMORY[0x28223BE20](v5);

    v2 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D0, &qword_238A638F8);
    sub_238A61D0C();

    v3 = v6;
    with._rawValue = v7;
  }

  else
  {
    __break(1u);
  }

  result._1._rawValue = v3;
  result._0 = with;
  return result;
}

uint64_t LiveLookupStore.fetchBlockingInfo(for:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_238A61A9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v8 = sub_238A61B7C();
  __swift_project_value_buffer(v8, qword_280B278D8);

  v9 = sub_238A61B5C();
  v10 = sub_238A61CDC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_238A4398C(a1, a2, &v23);
    _os_log_impl(&dword_238A41000, v9, v10, "fetchBlockingInfo for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23EE6F590](v12, -1, -1);
    MEMORY[0x23EE6F590](v11, -1, -1);
  }

  v13 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v14 = sub_238A61B9C();
  v15 = [v13 initWithEntityName_];

  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_238A638A0;
  sub_238A61A8C();
  v17 = sub_238A61A6C();
  (*(v5 + 8))(v7, v4);
  *(v16 + 56) = sub_238A42AB4(0, &qword_280B27480, 0x277CBEAA8);
  *(v16 + 64) = sub_238A57250();
  *(v16 + 32) = v17;
  *(v16 + 96) = MEMORY[0x277D837D0];
  *(v16 + 104) = sub_238A57194();
  *(v16 + 72) = a1;
  *(v16 + 80) = a2;

  v18 = sub_238A61CBC();
  [v15 setPredicate_];

  sub_238A43290(v15, sub_238A57938, &qword_27DF4B420, &qword_238A63A98, sub_238A5790C);
  v20 = v19;

  return v20;
}

id LiveLookupStore.fetchBlockingInfo(for:with:expiration:context:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v68 - v10;
  v12 = sub_238A61A9C();
  v72 = *(v12 - 8);
  v73 = v12;
  MEMORY[0x28223BE20](v12);
  v69 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v14 = sub_238A61B7C();
  v15 = __swift_project_value_buffer(v14, qword_280B278D8);

  v16 = a3;
  v74 = v15;
  v17 = sub_238A61B5C();
  v18 = sub_238A61CDC();

  v19 = os_log_type_enabled(v17, v18);
  v70 = a1;
  v71 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v76 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_238A4398C(a1, a2, &v76);
    *(v20 + 12) = 2080;
    v22 = [v16 identifier];
    v23 = v11;
    v24 = sub_238A61BAC();
    v25 = a2;
    v26 = a4;
    v28 = v27;

    v29 = v24;
    v11 = v23;
    v30 = sub_238A4398C(v29, v28, &v76);
    a4 = v26;
    a2 = v25;

    *(v20 + 14) = v30;
    _os_log_impl(&dword_238A41000, v17, v18, "fetchBlockingInfo for %s with %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE6F590](v21, -1, -1);
    MEMORY[0x23EE6F590](v20, -1, -1);
  }

  v31 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v32 = sub_238A61B9C();
  v33 = [v31 initWithEntityName_];

  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_238A638A0;
  *(v34 + 56) = type metadata accessor for LiveLookupDBExtension();
  *(v34 + 64) = sub_238A572B8(&qword_27DF4B3E0, type metadata accessor for LiveLookupDBExtension, MEMORY[0x277D85388]);
  v35 = v71;
  *(v34 + 32) = v71;
  *(v34 + 96) = MEMORY[0x277D837D0];
  *(v34 + 104) = sub_238A57194();
  *(v34 + 72) = v70;
  *(v34 + 80) = a2;

  v36 = v35;
  v37 = sub_238A61CBC();
  sub_238A57858(a4, v11, &qword_27DF4B3D8, &unk_238A63900);
  v39 = v72;
  v38 = v73;
  if ((*(v72 + 48))(v11, 1, v73) == 1)
  {
    sub_238A42F4C(v11, &qword_27DF4B3D8, &unk_238A63900);
  }

  else
  {
    v40 = v69;
    (*(v39 + 32))(v69, v11, v38);
    v41 = v38;
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_238A63890;
    v43 = v39;
    v44 = sub_238A61A6C();
    *(v42 + 56) = sub_238A42AB4(0, &qword_280B27480, 0x277CBEAA8);
    *(v42 + 64) = sub_238A57250();
    *(v42 + 32) = v44;
    v45 = sub_238A61CBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3E8, &unk_238A63BD0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_238A638B0;
    *(v46 + 32) = v37;
    *(v46 + 40) = v45;
    v47 = v37;
    v48 = v45;
    v49 = sub_238A61BEC();

    v37 = [objc_opt_self() andPredicateWithSubpredicates_];

    (*(v43 + 8))(v40, v41);
  }

  [v33 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3E8, &unk_238A63BD0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_238A638C0;
  v51 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v52 = sub_238A61B9C();
  v53 = [v51 initWithKey:v52 ascending:1];

  *(v50 + 32) = v53;
  sub_238A42AB4(0, &qword_280B27730, 0x277CCAC98);
  v54 = sub_238A61BEC();

  [v33 setSortDescriptors_];

  if (v75)
  {
    v55 = sub_238A43010(v33, v75, type metadata accessor for BlockingInfo);
  }

  else
  {
    sub_238A43290(v33, sub_238A57938, &qword_27DF4B420, &qword_238A63A98, sub_238A5790C);
  }

  v56 = v55;

  v57 = sub_238A61B5C();
  v58 = sub_238A61CDC();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v76 = v60;
    *v59 = 136315138;
    v61 = type metadata accessor for BlockingInfo();
    v62 = MEMORY[0x23EE6EAF0](v56, v61);
    v64 = sub_238A4398C(v62, v63, &v76);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_238A41000, v57, v58, "blockingInfo %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x23EE6F590](v60, -1, -1);
    MEMORY[0x23EE6F590](v59, -1, -1);
  }

  if (!(v56 >> 62))
  {
    result = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_15;
    }

LABEL_20:

    v67 = 0;
    goto LABEL_21;
  }

  result = sub_238A61E0C();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((v56 & 0xC000000000000001) != 0)
  {
    v66 = MEMORY[0x23EE6EC60](0, v56);
    goto LABEL_18;
  }

  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v66 = *(v56 + 32);
LABEL_18:
    v67 = v66;

LABEL_21:

    return v67;
  }

  __break(1u);
  return result;
}

uint64_t LiveLookupStore.updateBlockingInfo(for:with:shouldBlock:)(uint64_t result)
{
  if (*(v1 + 24))
  {
    MEMORY[0x28223BE20](result);

    v2 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D0, &qword_238A638F8);
    sub_238A61D0C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LiveLookupStore.fetchIdentityInfo(for:from:canBeEmpty:)(uint64_t result)
{
  if (*(v1 + 24))
  {
    MEMORY[0x28223BE20](result);

    v2 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3F0, &qword_238A63910);
    sub_238A61D0C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id LiveLookupStore.fetchIdentityInfo(for:with:expiration:context:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v68 - v10;
  v12 = sub_238A61A9C();
  v72 = *(v12 - 8);
  v73 = v12;
  MEMORY[0x28223BE20](v12);
  v69 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v14 = sub_238A61B7C();
  v15 = __swift_project_value_buffer(v14, qword_280B278D8);

  v16 = a3;
  v74 = v15;
  v17 = sub_238A61B5C();
  v18 = sub_238A61CDC();

  v19 = os_log_type_enabled(v17, v18);
  v70 = a1;
  v71 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v76 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_238A4398C(a1, a2, &v76);
    *(v20 + 12) = 2080;
    v22 = [v16 identifier];
    v23 = v11;
    v24 = sub_238A61BAC();
    v25 = a2;
    v26 = a4;
    v28 = v27;

    v29 = v24;
    v11 = v23;
    v30 = sub_238A4398C(v29, v28, &v76);
    a4 = v26;
    a2 = v25;

    *(v20 + 14) = v30;
    _os_log_impl(&dword_238A41000, v17, v18, "fetchIdentityInfo for %s with %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE6F590](v21, -1, -1);
    MEMORY[0x23EE6F590](v20, -1, -1);
  }

  v31 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v32 = sub_238A61B9C();
  v33 = [v31 initWithEntityName_];

  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_238A638A0;
  *(v34 + 56) = type metadata accessor for LiveLookupDBExtension();
  *(v34 + 64) = sub_238A572B8(&qword_27DF4B3E0, type metadata accessor for LiveLookupDBExtension, MEMORY[0x277D85388]);
  v35 = v71;
  *(v34 + 32) = v71;
  *(v34 + 96) = MEMORY[0x277D837D0];
  *(v34 + 104) = sub_238A57194();
  *(v34 + 72) = v70;
  *(v34 + 80) = a2;

  v36 = v35;
  v37 = sub_238A61CBC();
  sub_238A57858(a4, v11, &qword_27DF4B3D8, &unk_238A63900);
  v39 = v72;
  v38 = v73;
  if ((*(v72 + 48))(v11, 1, v73) == 1)
  {
    sub_238A42F4C(v11, &qword_27DF4B3D8, &unk_238A63900);
  }

  else
  {
    v40 = v69;
    (*(v39 + 32))(v69, v11, v38);
    v41 = v38;
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_238A63890;
    v43 = v39;
    v44 = sub_238A61A6C();
    *(v42 + 56) = sub_238A42AB4(0, &qword_280B27480, 0x277CBEAA8);
    *(v42 + 64) = sub_238A57250();
    *(v42 + 32) = v44;
    v45 = sub_238A61CBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3E8, &unk_238A63BD0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_238A638B0;
    *(v46 + 32) = v37;
    *(v46 + 40) = v45;
    v47 = v37;
    v48 = v45;
    v49 = sub_238A61BEC();

    v37 = [objc_opt_self() andPredicateWithSubpredicates_];

    (*(v43 + 8))(v40, v41);
  }

  [v33 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3E8, &unk_238A63BD0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_238A638C0;
  v51 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v52 = sub_238A61B9C();
  v53 = [v51 initWithKey:v52 ascending:1];

  *(v50 + 32) = v53;
  sub_238A42AB4(0, &qword_280B27730, 0x277CCAC98);
  v54 = sub_238A61BEC();

  [v33 setSortDescriptors_];

  if (v75)
  {
    v55 = sub_238A43010(v33, v75, type metadata accessor for IdentityInfo);
  }

  else
  {
    sub_238A43290(v33, sub_238A578C0, &qword_27DF4B410, &qword_238A63A90, sub_238A5790C);
  }

  v56 = v55;

  v57 = sub_238A61B5C();
  v58 = sub_238A61CDC();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v76 = v60;
    *v59 = 136315138;
    v61 = type metadata accessor for IdentityInfo();
    v62 = MEMORY[0x23EE6EAF0](v56, v61);
    v64 = sub_238A4398C(v62, v63, &v76);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_238A41000, v57, v58, "identityInfo %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x23EE6F590](v60, -1, -1);
    MEMORY[0x23EE6F590](v59, -1, -1);
  }

  if (!(v56 >> 62))
  {
    result = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_15;
    }

LABEL_20:

    v67 = 0;
    goto LABEL_21;
  }

  result = sub_238A61E0C();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((v56 & 0xC000000000000001) != 0)
  {
    v66 = MEMORY[0x23EE6EC60](0, v56);
    goto LABEL_18;
  }

  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v66 = *(v56 + 32);
LABEL_18:
    v67 = v66;

LABEL_21:

    return v67;
  }

  __break(1u);
  return result;
}

uint64_t LiveLookupStore.updateIdentityInfo(for:with:name:iconURL:type:ttlMinutes:)(uint64_t result)
{
  if (*(v1 + 24))
  {
    v3 = MEMORY[0x28223BE20](result);
    MEMORY[0x28223BE20](v3);

    v2 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D0, &qword_238A638F8);
    sub_238A61D0C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *LiveLookupStore.removeStaleRecords()()
{
  v1 = v0;
  v130 = *MEMORY[0x277D85DE8];
  v109 = sub_238A6198C();
  v115 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B0, &qword_238A638E0);
  MEMORY[0x28223BE20](v3 - 8);
  v107 = &v98 - v4;
  v5 = sub_238A61A1C();
  v114 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v106 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v119 = &v98 - v8;
  v9 = sub_238A61A9C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_238A63890;
  sub_238A61A8C();
  v14 = sub_238A61A6C();
  (*(v10 + 8))(v12, v9);
  *(v13 + 56) = sub_238A42AB4(0, &qword_280B27480, 0x277CBEAA8);
  *(v13 + 64) = sub_238A57250();
  *(v13 + 32) = v14;
  v15 = sub_238A61CBC();
  v16 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v17 = sub_238A61B9C();
  v18 = [v16 initWithEntityName_];

  v99 = v15;
  [v18 setPredicate_];
  v116 = v18;
  v125 = v1;
  sub_238A43290(v18, sub_238A57938, &qword_27DF4B420, &qword_238A63A98, sub_238A5790C);
  v21 = v19;
  if (v19 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_238A61E0C())
  {
    v118 = v5;
    if (i)
    {
      v5 = 0;
      v123 = v21 & 0xFFFFFFFFFFFFFF8;
      v124 = (v21 & 0xC000000000000001);
      v120 = "iveLookupStore.swift";
      *&v20 = 136315394;
      v117 = v20;
      v121 = v21;
      v122 = i;
      while (1)
      {
        if (v124)
        {
          v23 = MEMORY[0x23EE6EC60](v5, v21);
        }

        else
        {
          if (v5 >= *(v123 + 16))
          {
            goto LABEL_54;
          }

          v23 = *(v21 + 8 * v5 + 32);
        }

        v24 = v23;
        v25 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v26 = *(v125 + 24);
        if (!v26)
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
        }

        v126 = &v98;
        MEMORY[0x28223BE20](v23);
        *(&v98 - 2) = v24;

        v27 = sub_238A431BC(0);
        v29 = v28;
        v30 = [v28 viewContext];

        MEMORY[0x28223BE20](v31);
        *(&v98 - 4) = v26;
        *(&v98 - 3) = sub_238A57A90;
        *(&v98 - 2) = &v98 - 2;
        *(&v98 - 1) = v30;
        sub_238A61D0C();

        ++v5;
        if (v25 == v122)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_13:

    sub_238A527D8(v99);
    v32 = LiveLookupStore.fetchExtensions(_:context:)(0, 0);
    v5 = v32;
    if (!(v32 >> 62))
    {
      v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v34)
      {
        break;
      }

      goto LABEL_15;
    }

    v34 = sub_238A61E0C();
    if (!v34)
    {
      break;
    }

LABEL_15:
    v35 = 0;
    v126 = (v5 & 0xC000000000000001);
    v121 = v5 & 0xFFFFFFFFFFFFFF8;
    v105 = "xtensionUpdate";
    v104 = (v114 + 56);
    v103 = *MEMORY[0x277CC91D8];
    v102 = (v115 + 104);
    v101 = (v115 + 8);
    *&v117 = v114 + 8;
    v123 = "iveLookupStore.swift";
    v124 = MEMORY[0x277D84F90];
    v21 = 0x278A5E000uLL;
    *&v33 = 138412290;
    v110 = v33;
    *&v33 = 136315138;
    v98 = v33;
    v100 = v5;
    v120 = v34;
    while (1)
    {
      if (v126)
      {
        v36 = MEMORY[0x23EE6EC60](v35, v5);
      }

      else
      {
        if (v35 >= *(v121 + 16))
        {
          goto LABEL_56;
        }

        v36 = *(v5 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v39 = [v36 *(v21 + 2696)];
      v40 = sub_238A61BAC();
      v42 = v41;

      v43 = HIBYTE(v42) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v43 = v40 & 0xFFFFFFFFFFFFLL;
      }

      if (v43)
      {
        if ([v37 shouldRemove] && (objc_msgSend(v37, sel_isInstalled) & 1) == 0)
        {
          if (qword_280B27740 != -1)
          {
            swift_once();
          }

          v53 = sub_238A61B7C();
          __swift_project_value_buffer(v53, qword_280B278D8);
          v54 = v37;
          v55 = sub_238A61B5C();
          v56 = sub_238A61CDC();

          v57 = os_log_type_enabled(v55, v56);
          v122 = v54;
          v115 = v35 + 1;
          v113 = v35;
          v111 = 0;
          if (v57)
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v127 = v59;
            *v58 = v98;
            v60 = [v54 identifier];
            v61 = sub_238A61BAC();
            v63 = v62;

            v128 = v61;
            v129 = v63;
            v64 = v118;
            v65 = sub_238A61BBC();
            v67 = sub_238A4398C(v65, v66, &v127);

            *(v58 + 4) = v67;
            v54 = v122;
            _os_log_impl(&dword_238A41000, v55, v56, "removing %s", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v59);
            MEMORY[0x23EE6F590](v59, -1, -1);
            v68 = v58;
            v21 = 0x278A5E000;
            MEMORY[0x23EE6F590](v68, -1, -1);
          }

          else
          {

            v64 = v118;
          }

          v71 = [v54 *(v21 + 2696)];
          v72 = sub_238A61BAC();
          v74 = v73;

          (*v104)(v107, 1, 1, v64);
          v75 = *v102;
          v76 = v108;
          v77 = v103;
          v78 = v109;
          (*v102)(v108, v103, v109);
          v79 = v106;
          sub_238A619FC();
          v116 = v72;
          v128 = v72;
          v129 = v74;
          v114 = v74;
          v75(v76, v77, v78);
          sub_238A573C0();
          sub_238A61A0C();
          (*v101)(v76, v78);
          v112 = *v117;
          v112(v79, v64);
          v80 = [objc_opt_self() defaultManager];
          v81 = sub_238A619BC();
          v128 = 0;
          LODWORD(v78) = [v80 removeItemAtURL:v81 error:&v128];

          if (v78)
          {
            v82 = v128;
            v5 = v100;
            v83 = v111;
          }

          else
          {
            v84 = v128;
            v85 = sub_238A6197C();

            swift_willThrow();
            v83 = 0;
            v5 = v100;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = v120;
          v38 = v115;
          v35 = v113;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_238A56B70(0, *(v124 + 2) + 1, 1, v124);
            v124 = isUniquelyReferenced_nonNull_native;
          }

          v88 = *(v124 + 2);
          v87 = *(v124 + 3);
          if (v88 >= v87 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_238A56B70((v87 > 1), v88 + 1, 1, v124);
            v124 = isUniquelyReferenced_nonNull_native;
          }

          v89 = v124;
          *(v124 + 2) = v88 + 1;
          v90 = &v89[16 * v88];
          v91 = v114;
          *(v90 + 4) = v116;
          *(v90 + 5) = v91;
          v92 = *(v125 + 24);
          if (!v92)
          {
            goto LABEL_63;
          }

          MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
          v93 = v122;
          *(&v98 - 2) = v122;

          v94 = sub_238A433E4(0xD00000000000001CLL, v123 | 0x8000000000000000);
          if (v83)
          {
          }

          else
          {
            v95 = v94;
            v96 = MEMORY[0x28223BE20](v94);
            *(&v98 - 4) = v92;
            *(&v98 - 3) = sub_238A57A90;
            *(&v98 - 2) = &v98 - 2;
            *(&v98 - 1) = v96;
            sub_238A61D0C();

            v34 = v120;
          }

          v112(v119, v118);
          v21 = 0x278A5E000;
        }

        else
        {
          if (([v37 isInstalled] & 1) == 0)
          {
            [v37 setShouldRemove_];
            [v37 setIsEnabled_];
          }
        }
      }

      else
      {
        if (qword_280B27740 != -1)
        {
          swift_once();
        }

        v44 = sub_238A61B7C();
        __swift_project_value_buffer(v44, qword_280B278D8);
        v45 = v37;
        v46 = sub_238A61B5C();
        v47 = sub_238A61CDC();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = v110;
          *(v48 + 4) = v45;
          *v49 = v45;
          v50 = v45;
          _os_log_impl(&dword_238A41000, v46, v47, "removing extension with nil/empty identifier: %@", v48, 0xCu);
          sub_238A42F4C(v49, &qword_27DF4B3C8, &qword_238A638F0);
          MEMORY[0x23EE6F590](v49, -1, -1);
          MEMORY[0x23EE6F590](v48, -1, -1);
        }

        v52 = *(v125 + 24);
        if (!v52)
        {
          goto LABEL_62;
        }

        MEMORY[0x28223BE20](v51);
        *(&v98 - 2) = v45;

        v69 = sub_238A433E4(0xD00000000000001CLL, v123 | 0x8000000000000000);
        v70 = MEMORY[0x28223BE20](v69);
        *(&v98 - 4) = v52;
        *(&v98 - 3) = sub_238A57A90;
        *(&v98 - 2) = &v98 - 2;
        *(&v98 - 1) = v70;
        sub_238A61D0C();

        v34 = v120;
        v21 = 0x278A5E000;
      }

      ++v35;
      if (v38 == v34)
      {
        goto LABEL_60;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v124 = MEMORY[0x277D84F90];
LABEL_60:

  sub_238A4E434();

  return v124;
}

uint64_t LiveLookupStore.setEnabled(_:for:)(uint64_t result)
{
  if (*(v1 + 24))
  {
    v2 = MEMORY[0x28223BE20](result);
    MEMORY[0x28223BE20](v2);

    v3 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D0, &qword_238A638F8);
    sub_238A61D0C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238A52394(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 24))
  {
    v6 = MEMORY[0x28223BE20](result);
    MEMORY[0x28223BE20](v6);

    v5 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);
    MEMORY[0x28223BE20](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D0, &qword_238A638F8);
    sub_238A61D0C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_238A524E4()
{
  v1 = v0;
  v19[1] = *MEMORY[0x277D85DE8];
  if ([v0 hasChanges])
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v2 = sub_238A61B7C();
    __swift_project_value_buffer(v2, qword_280B278D8);
    v3 = sub_238A61B5C();
    v4 = sub_238A61CDC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_238A41000, v3, v4, "Saving", v5, 2u);
      MEMORY[0x23EE6F590](v5, -1, -1);
    }

    v19[0] = 0;
    if ([v0 save_])
    {
      v6 = v19[0];
      v7 = sub_238A61B5C();
      v8 = sub_238A61CDC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_238A41000, v7, v8, "Save Successful", v9, 2u);
        MEMORY[0x23EE6F590](v9, -1, -1);
      }
    }

    else
    {
      v10 = v19[0];
      v11 = sub_238A6197C();

      swift_willThrow();
      v12 = v11;
      v13 = sub_238A61B5C();
      v14 = sub_238A61CDC();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        v17 = v11;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v18;
        *v16 = v18;
        _os_log_impl(&dword_238A41000, v13, v14, "Could not save. %@", v15, 0xCu);
        sub_238A42F4C(v16, &qword_27DF4B3C8, &qword_238A638F0);
        MEMORY[0x23EE6F590](v16, -1, -1);
        MEMORY[0x23EE6F590](v15, -1, -1);
      }

      [v1 reset];
    }
  }
}

uint64_t sub_238A527D8(uint64_t a1)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B0, &qword_238A638E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_238A61A1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v10 = sub_238A61B9C();
  v11 = [v9 initWithEntityName_];

  [v11 setPredicate_];
  v46 = v1;
  sub_238A43290(v11, sub_238A578C0, &qword_27DF4B410, &qword_238A63A90, sub_238A5790C);
  v14 = v12;
  if (v12 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_238A61E0C())
  {
    v34 = v11;
    v16 = 0;
    v11 = 0;
    v45 = v14 & 0xC000000000000001;
    v41 = (v7 + 48);
    v38 = (v7 + 32);
    v39 = v14 & 0xFFFFFFFFFFFFFF8;
    v36 = "iveLookupStore.swift";
    v37 = (v7 + 8);
    *&v13 = 136315394;
    v35 = v13;
    v43 = v6;
    v44 = i;
    v40 = v5;
    while (1)
    {
      if (v45)
      {
        v17 = MEMORY[0x23EE6EC60](v16, v14);
      }

      else
      {
        if (v16 >= *(v39 + 16))
        {
          goto LABEL_21;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v19 = [v17 iconURL];
      v48 = v16 + 1;
      if (v19)
      {
        v20 = v19;
        sub_238A61BAC();

        sub_238A619EC();

        if ((*v41)(v5, 1, v6) == 1)
        {
          v19 = sub_238A42F4C(v5, &qword_27DF4B3B0, &qword_238A638E0);
        }

        else
        {
          (*v38)(v42, v5, v6);
          v21 = [objc_opt_self() defaultManager];
          v22 = sub_238A619BC();
          v49[0] = 0;
          v23 = [v21 removeItemAtURL:v22 error:v49];

          if (v23)
          {
            v24 = v49[0];
          }

          else
          {
            v25 = v49[0];
            v26 = sub_238A6197C();

            swift_willThrow();
          }

          v19 = (*v37)(v42, v6);
        }
      }

      v7 = *(v46 + 24);
      if (!v7)
      {
        __break(1u);
      }

      v47 = &v33;
      MEMORY[0x28223BE20](v19);
      *(&v33 - 2) = v18;

      v27 = sub_238A431BC(0);
      v29 = v28;
      v30 = [v28 viewContext];

      MEMORY[0x28223BE20](v31);
      *(&v33 - 4) = v7;
      *(&v33 - 3) = sub_238A57A90;
      *(&v33 - 2) = (&v33 - 4);
      *(&v33 - 1) = v30;
      v11 = 0;
      sub_238A61D0C();

      v6 = v43;
      ++v16;
      if (v48 == v44)
      {
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }
}

char *sub_238A52F2C(void *a1, uint64_t a2, unint64_t a3, _BYTE *a4, void *a5, unint64_t a6)
{
  v8 = LiveLookupStore.fetchExtensions(_:context:)(0, 0);
  v164 = v8;
  if (qword_280B27740 != -1)
  {
    goto LABEL_115;
  }

  while (1)
  {
    v9 = sub_238A61B7C();
    __swift_project_value_buffer(v9, qword_280B278D8);

    v10 = sub_238A61B5C();
    v11 = sub_238A61CDC();

    v145 = a3;
    v12 = a3 >> 62;
    v13 = v8 >> 62;
    a3 = 0x278A5E000;
    v148 = a6;
    if (os_log_type_enabled(v10, v11))
    {
      LOBYTE(v146) = v11;
      v14 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v163[0] = v144;
      buf = v14;
      *v14 = 136315394;
      log = v10;
      if (v12)
      {
        goto LABEL_158;
      }

      v15 = v145;
      v16 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v17 = MEMORY[0x277D84F90];
      v150 = v12;
      v152 = v13;
      if (v16)
      {
        v162[0] = MEMORY[0x277D84F90];
        result = sub_238A5E5C0(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          __break(1u);
          return result;
        }

        v19 = v8;
        v17 = v162[0];
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = 0;
          do
          {
            v21 = MEMORY[0x23EE6EC60](v20, v15);
            v22 = *(v21 + OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier);
            v23 = *(v21 + OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier + 8);

            swift_unknownObjectRelease();
            v162[0] = v17;
            v25 = *(v17 + 16);
            v24 = *(v17 + 24);
            if (v25 >= v24 >> 1)
            {
              sub_238A5E5C0((v24 > 1), v25 + 1, 1);
              v17 = v162[0];
            }

            ++v20;
            *(v17 + 16) = v25 + 1;
            v26 = v17 + 16 * v25;
            *(v26 + 32) = v22;
            *(v26 + 40) = v23;
          }

          while (v16 != v20);
        }

        else
        {
          v27 = (v15 + 32);
          do
          {
            v28 = (*v27 + OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier);
            v30 = *v28;
            v29 = v28[1];
            v162[0] = v17;
            v31 = *(v17 + 16);
            v32 = *(v17 + 24);

            if (v31 >= v32 >> 1)
            {
              sub_238A5E5C0((v32 > 1), v31 + 1, 1);
              v17 = v162[0];
            }

            *(v17 + 16) = v31 + 1;
            v33 = v17 + 16 * v31;
            *(v33 + 32) = v30;
            *(v33 + 40) = v29;
            ++v27;
            --v16;
          }

          while (v16);
        }

        v8 = v19;
        v13 = v152;
      }

      v34 = MEMORY[0x23EE6EAF0](v17, MEMORY[0x277D837D0]);
      v36 = v35;

      v37 = sub_238A4398C(v34, v36, v163);

      *(buf + 4) = v37;
      *(buf + 6) = 2080;
      if (v13)
      {
        a3 = sub_238A61E0C();
      }

      else
      {
        a3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a3)
      {
        a6 = 0;
        v158 = v8 & 0xC000000000000001;
        v38 = v8 & 0xFFFFFFFFFFFFFF8;
        v39 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v158)
          {
            v40 = MEMORY[0x23EE6EC60](a6, v8);
          }

          else
          {
            if (a6 >= *(v38 + 16))
            {
              goto LABEL_107;
            }

            v40 = *(v8 + 8 * a6 + 32);
          }

          v41 = v40;
          v42 = a6 + 1;
          if (__OFADD__(a6, 1))
          {
            break;
          }

          v43 = v8;
          v44 = [v40 identifier];
          v45 = sub_238A61BAC();
          v47 = v46;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_238A56B70(0, *(v39 + 2) + 1, 1, v39);
          }

          v49 = *(v39 + 2);
          v48 = *(v39 + 3);
          if (v49 >= v48 >> 1)
          {
            v39 = sub_238A56B70((v48 > 1), v49 + 1, 1, v39);
          }

          *(v39 + 2) = v49 + 1;
          v50 = &v39[16 * v49];
          *(v50 + 4) = v45;
          *(v50 + 5) = v47;
          ++a6;
          v8 = v43;
          if (v42 == a3)
          {
            goto LABEL_35;
          }
        }

LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v39 = MEMORY[0x277D84F90];
LABEL_35:

      v51 = MEMORY[0x23EE6EAF0](v39, MEMORY[0x277D837D0]);
      v53 = v52;

      v54 = sub_238A4398C(v51, v53, v163);

      *(buf + 14) = v54;
      _os_log_impl(&dword_238A41000, log, v146, "updatingExtensions: on device: %s in db: %s", buf, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE6F590](v144, -1, -1);
      MEMORY[0x23EE6F590](buf, -1, -1);

      a6 = v148;
      a3 = 0x278A5E000;
      v12 = v150;
      v13 = v152;
    }

    else
    {
    }

    v55 = v13 ? sub_238A61E0C() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v144 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v12)
    {
      goto LABEL_118;
    }

    v56 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v56)
    {
      goto LABEL_119;
    }

LABEL_41:
    log = (v145 & 0xC000000000000001);
    swift_beginAccess();
    v12 = 0;
    v146 = v56;
    while (1)
    {
      if (log)
      {
        v60 = MEMORY[0x23EE6EC60](v12, v145);
        v61 = __OFADD__(v12, 1);
        v62 = v12 + 1;
        if (v61)
        {
          goto LABEL_105;
        }
      }

      else
      {
        if (v12 >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_108;
        }

        v60 = *(v145 + 32 + 8 * v12);
        v61 = __OFADD__(v12, 1);
        v62 = v12 + 1;
        if (v61)
        {
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }
      }

      v151 = v62;
      v153 = v60;
      v63 = &v60[OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier];
      v64 = *&v60[OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier + 8];
      v65 = *&v60[OBJC_IVAR____TtC14IdentityLookup15ExtensionUpdate_identifier] & 0xFFFFFFFFFFFFLL;
      if ((v64 & 0x2000000000000000) != 0)
      {
        v65 = HIBYTE(v64) & 0xF;
      }

      if (v65)
      {
        break;
      }

      v13 = sub_238A61B5C();
      v75 = sub_238A61CCC();
      if (os_log_type_enabled(v13, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_238A41000, v13, v75, "Skipping extension update with empty identifier", v76, 2u);
        v77 = v76;
        a3 = 0x278A5E000;
        MEMORY[0x23EE6F590](v77, -1, -1);
      }

LABEL_45:
      v59 = v146;
      v12 = v151;
      v8 = v153;
LABEL_46:

      if (v12 == v59)
      {
        goto LABEL_119;
      }
    }

    v66 = v164;
    bufa = (v164 & 0xFFFFFFFFFFFFFF8);
    if (v164 >> 62)
    {
      v67 = sub_238A61E0C();
    }

    else
    {
      v67 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v159 = v66 & 0xC000000000000001;

    a6 = 0;
    while (1)
    {
      if (v67 == a6)
      {

        v13 = v153;
        v78 = sub_238A61B5C();
        v79 = sub_238A61CDC();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v162[0] = v81;
          *v80 = 136315138;
          v82 = *v63;
          v83 = v63[1];

          v8 = sub_238A4398C(v82, v83, v162);

          *(v80 + 4) = v8;
          _os_log_impl(&dword_238A41000, v78, v79, "adding extensionIdentifier: %s", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v81);
          MEMORY[0x23EE6F590](v81, -1, -1);
          MEMORY[0x23EE6F590](v80, -1, -1);
        }

        a6 = v148;
        v84 = *v63;
        v85 = v63[1];
        objc_allocWithZone(type metadata accessor for LiveLookupDBExtension());

        v86 = LiveLookupDBExtension.init(identifier:context:)(v84, v85, a1);
        [v86 setIsAppStoreVendable_];
        a3 = v144;
        if (v144 < -32768)
        {
          goto LABEL_109;
        }

        if (v144 >= 0x8000)
        {
          goto LABEL_110;
        }

        [v86 setPriority_];
        [v86 setIsInstalled_];
        [v86 setShouldRemove_];
        *a4 = 1;
        v8 = v86;
        MEMORY[0x23EE6EAC0]();
        if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_238A61C1C();
          a3 = v144;
        }

        v144 = a3 + 1;
        sub_238A61C3C();
        a3 = 0x278A5E000;
        v59 = v146;
        v12 = v151;
        goto LABEL_46;
      }

      v68 = v66 + 8 * a6;
      if (v159)
      {
        v69 = MEMORY[0x23EE6EC60](a6, v66);
      }

      else
      {
        if (a6 >= *(bufa + 2))
        {
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v69 = *(v68 + 32);
      }

      v70 = v69;
      v71 = [v69 *(a3 + 2696)];
      v8 = sub_238A61BAC();
      v73 = v72;

      if (v8 == *v63 && v73 == v63[1])
      {
        break;
      }

      v8 = sub_238A61E4C();

      if (v8)
      {
        goto LABEL_82;
      }

      v61 = __OFADD__(a6++, 1);
      if (v61)
      {
        goto LABEL_104;
      }
    }

LABEL_82:

    a3 = v153;
    v87 = sub_238A61B5C();
    v88 = sub_238A61CDC();
    v153 = a3;

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v162[0] = v8;
      *v89 = 136315138;
      v90 = *v63;
      a3 = v63[1];

      v91 = sub_238A4398C(v90, a3, v162);

      *(v89 + 4) = v91;
      _os_log_impl(&dword_238A41000, v87, v88, "extensionIdentifier in db: %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x23EE6F590](v8, -1, -1);
      MEMORY[0x23EE6F590](v89, -1, -1);
    }

    if (v159)
    {
      v92 = MEMORY[0x23EE6EC60](a6, v66);
      goto LABEL_88;
    }

    if (a6 >= *(bufa + 2))
    {
      goto LABEL_111;
    }

    v92 = *(v68 + 32);
LABEL_88:
    v93 = v92;
    v94 = [v92 isInstalled];

    if (v94)
    {
      goto LABEL_44;
    }

    a3 = v153;
    v95 = sub_238A61B5C();
    v96 = sub_238A61CDC();

    if (os_log_type_enabled(v95, v96))
    {
      v141 = a3;
      v97 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v162[0] = v8;
      *v97 = 136315138;
      v99 = *v63;
      v98 = v63[1];

      v100 = sub_238A4398C(v99, v98, v162);

      *(v97 + 4) = v100;
      _os_log_impl(&dword_238A41000, v95, v96, "setting extensionIdentifier to available %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x23EE6F590](v8, -1, -1);
      v101 = v97;
      a3 = v141;
      MEMORY[0x23EE6F590](v101, -1, -1);
    }

    if (v159)
    {
      v102 = MEMORY[0x23EE6EC60](a6, v66);
      goto LABEL_95;
    }

    if (a6 >= *(bufa + 2))
    {
      goto LABEL_112;
    }

    v102 = *(v68 + 32);
LABEL_95:
    v103 = v102;
    [v102 setIsInstalled_];

    if (v159)
    {
      v104 = MEMORY[0x23EE6EC60](a6, v66);
      goto LABEL_99;
    }

    if (a6 >= *(bufa + 2))
    {
      goto LABEL_113;
    }

    v104 = *(v68 + 32);
LABEL_99:
    v105 = v104;
    [v104 setShouldRemove_];

    if (v159)
    {
      v57 = MEMORY[0x23EE6EC60](a6, v66);
      goto LABEL_43;
    }

    if (a6 < *(bufa + 2))
    {
      v57 = *(v68 + 32);
LABEL_43:
      v58 = v57;
      [v57 setIsAppStoreVendable_];

      *a4 = 1;
LABEL_44:
      swift_beginAccess();
      v13 = sub_238A5411C(a6);
      swift_endAccess();
      a6 = v148;
      a3 = 0x278A5E000uLL;
      goto LABEL_45;
    }

LABEL_114:
    __break(1u);
LABEL_115:
    swift_once();
  }

  __break(1u);
LABEL_118:
  v56 = sub_238A61E0C();
  if (v56)
  {
    goto LABEL_41;
  }

LABEL_119:
  v106 = sub_238A61B5C();
  v107 = sub_238A61CDC();
  buf = v106;
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    log = swift_slowAlloc();
    v162[0] = log;
    v154 = v108;
    *v108 = 136315138;
    swift_beginAccess();
    v109 = v164;
    if (v164 >> 62)
    {
      v110 = sub_238A61E0C();
    }

    else
    {
      v110 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v110)
    {
      a6 = 0;
      v111 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v109 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x23EE6EC60](a6, v109);
          v112 = 0x278A5E000;
          v113 = a6 + 1;
          if (__OFADD__(a6, 1))
          {
            goto LABEL_153;
          }
        }

        else
        {
          v112 = 0x278A5E000uLL;
          if (a6 >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_154;
          }

          v13 = *(v109 + 8 * a6 + 32);
          v113 = a6 + 1;
          if (__OFADD__(a6, 1))
          {
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            v8 = sub_238A61E0C();
            v124 = 0x278A5E000;
            if (!v8)
            {
            }

LABEL_141:
            if (v8 >= 1)
            {
              v125 = v13 & 0xC000000000000001;

              v126 = 0;
              bufb = (v13 & 0xC000000000000001);
              v160 = v13;
              do
              {
                if (v125)
                {
                  v127 = MEMORY[0x23EE6EC60](v126, v13);
                }

                else
                {
                  v127 = *(v13 + 8 * v126 + 32);
                }

                v128 = v127;
                [(objc_class *)v127 setIsInstalled:0];
                v129 = v128;
                v130 = sub_238A61B5C();
                v131 = sub_238A61CDC();

                if (os_log_type_enabled(v130, v131))
                {
                  v132 = swift_slowAlloc();
                  v133 = swift_slowAlloc();
                  v161 = v133;
                  *v132 = 136315138;
                  v134 = [v129 *(v124 + 2696)];
                  sub_238A61BAC();
                  v135 = v8;

                  a6 = v148;
                  v136 = sub_238A61BBC();
                  v138 = sub_238A4398C(v136, v137, &v161);
                  v124 = 0x278A5E000;

                  *(v132 + 4) = v138;
                  v8 = v135;
                  v13 = v160;
                  _os_log_impl(&dword_238A41000, v130, v131, "setting dbExtension to not installed: %s", v132, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v133);
                  MEMORY[0x23EE6F590](v133, -1, -1);
                  v139 = v132;
                  v125 = bufb;
                  MEMORY[0x23EE6F590](v139, -1, -1);
                }

                *a4 = 1;
                v140 = v129;
                MEMORY[0x23EE6EAC0]();
                if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_238A61C1C();
                  v124 = 0x278A5E000;
                }

                ++v126;
                sub_238A61C3C();
              }

              while (v8 != v126);
            }

            __break(1u);
LABEL_158:
            v15 = v145;
            v16 = sub_238A61E0C();
            goto LABEL_5;
          }
        }

        v114 = [v13 *(v112 + 2696)];
        v12 = sub_238A61BAC();
        v116 = v115;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_238A56B70(0, *(v111 + 2) + 1, 1, v111);
        }

        v118 = *(v111 + 2);
        v117 = *(v111 + 3);
        v13 = v118 + 1;
        if (v118 >= v117 >> 1)
        {
          v111 = sub_238A56B70((v117 > 1), v118 + 1, 1, v111);
        }

        *(v111 + 2) = v13;
        v119 = &v111[16 * v118];
        *(v119 + 4) = v12;
        *(v119 + 5) = v116;
        ++a6;
        if (v113 == v110)
        {
          goto LABEL_138;
        }
      }
    }

    v111 = MEMORY[0x277D84F90];
LABEL_138:

    v120 = MEMORY[0x23EE6EAF0](v111, MEMORY[0x277D837D0]);
    v122 = v121;

    v123 = sub_238A4398C(v120, v122, v162);

    *(v154 + 1) = v123;
    _os_log_impl(&dword_238A41000, buf, v107, "dbExtensions: %s)", v154, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(log);
    MEMORY[0x23EE6F590](log, -1, -1);
    MEMORY[0x23EE6F590](v154, -1, -1);

    a6 = v148;
  }

  else
  {
  }

  swift_beginAccess();
  v13 = v164;
  if (v164 >> 62)
  {
    goto LABEL_155;
  }

  v8 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v124 = 0x278A5E000uLL;
  if (v8)
  {
    goto LABEL_141;
  }
}

unint64_t sub_238A5411C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_238A56D70(v3);
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

void sub_238A541AC(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, _BYTE *a7@<X8>)
{
  v72 = a6;
  v68 = a5;
  v74 = a1;
  v75 = a7;
  v78[1] = *MEMORY[0x277D85DE8];
  v10 = sub_238A61A9C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v70 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = &v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  MEMORY[0x28223BE20](v15 - 8);
  v67 = &v66 - v16;
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v17 = sub_238A61B7C();
  v18 = __swift_project_value_buffer(v17, qword_280B278D8);

  v19 = a4;
  v20 = sub_238A61B5C();
  v21 = sub_238A61CDC();

  v22 = os_log_type_enabled(v20, v21);
  v76 = v19;
  v69 = a2;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v73 = v18;
    v66 = v24;
    v78[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_238A4398C(a2, a3, v78);
    *(v23 + 12) = 2080;
    v25 = [v19 identifier];
    v26 = v11;
    v27 = v25;
    v28 = a3;
    v29 = sub_238A61BAC();
    v31 = v30;

    v32 = v29;
    a3 = v28;
    v33 = sub_238A4398C(v32, v31, v78);

    *(v23 + 14) = v33;
    v11 = v26;
    v19 = v76;
    _os_log_impl(&dword_238A41000, v20, v21, "updateBlockingInfo for %s with %s", v23, 0x16u);
    v34 = v66;
    swift_arrayDestroy();
    v35 = v34;
    v18 = v73;
    MEMORY[0x23EE6F590](v35, -1, -1);
    MEMORY[0x23EE6F590](v23, -1, -1);
  }

  v36 = [v19 objectID];
  v78[0] = 0;
  v37 = v74;
  v38 = [v74 existingObjectWithID:v36 error:v78];

  v39 = v78[0];
  if (v38)
  {
    type metadata accessor for LiveLookupDBExtension();
    v40 = swift_dynamicCastClass();
    if (v40)
    {
      v41 = v40;
      v73 = v18;
      v42 = v67;
      (*(v11 + 56))(v67, 1, 1, v10);
      v43 = v39;
      v44 = LiveLookupStore.fetchBlockingInfo(for:with:expiration:context:)(v69, a3, v41, v42, v37);
      sub_238A42F4C(v42, &qword_27DF4B3D8, &unk_238A63900);
      v45 = v44;
      v46 = v10;
      if (!v44)
      {
        type metadata accessor for BlockingInfo();
        v45 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      }

      v76 = v45;
      v47 = v45;
      v48 = sub_238A61B9C();
      [v47 setHandle_];

      [v47 setShouldBlock_];
      v49 = v70;
      sub_238A61A8C();
      v50 = v71;
      sub_238A61A5C();
      v51 = *(v11 + 8);
      v51(v49, v46);
      v52 = sub_238A61A6C();
      v51(v50, v46);
      [v47 setExpiration_];

      [v47 setDbExtension_];
      v53 = sub_238A61B5C();
      v54 = sub_238A61CDC();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        *(v55 + 4) = v47;
        *v56 = v76;
        v57 = v47;
        _os_log_impl(&dword_238A41000, v53, v54, "saving blockingInfo %@", v55, 0xCu);
        sub_238A42F4C(v56, &qword_27DF4B3C8, &qword_238A638F0);
        MEMORY[0x23EE6F590](v56, -1, -1);
        MEMORY[0x23EE6F590](v55, -1, -1);

        v38 = v57;
      }

      else
      {
      }

      goto LABEL_16;
    }

    v60 = v39;
  }

  else
  {
    v58 = v78[0];
    v59 = sub_238A6197C();

    swift_willThrow();
    v77 = 0;
  }

  v61 = v76;
  v38 = sub_238A61B5C();
  v62 = sub_238A61CCC();

  if (os_log_type_enabled(v38, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 138412290;
    v65 = [v61 objectID];
    *(v63 + 4) = v65;
    *v64 = v65;
    _os_log_impl(&dword_238A41000, v38, v62, "Failed to get extension in context for objectID: %@", v63, 0xCu);
    sub_238A42F4C(v64, &qword_27DF4B3C8, &qword_238A638F0);
    MEMORY[0x23EE6F590](v64, -1, -1);
    MEMORY[0x23EE6F590](v63, -1, -1);
  }

LABEL_16:

  *v75 = 0;
}

void sub_238A548A0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  LODWORD(v132) = a5;
  v137 = a3;
  p_isa = &a4->isa;
  v10 = sub_238A61A9C();
  v136 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v134 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 objectID];
  v13 = [a1 objectWithID_];

  v133 = type metadata accessor for LiveLookupDBExtension();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v69 = sub_238A61B7C();
    __swift_project_value_buffer(v69, qword_280B278D8);
    v70 = a2;
    v71 = sub_238A61B5C();
    v72 = sub_238A61CCC();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412290;
      v75 = [v70 objectID];
      *(v73 + 4) = v75;
      *v74 = v75;
      _os_log_impl(&dword_238A41000, v71, v72, "Failed to get extension in context for objectID: %@", v73, 0xCu);
      sub_238A42F4C(v74, &qword_27DF4B3C8, &qword_238A638F0);
      MEMORY[0x23EE6F590](v74, -1, -1);
      MEMORY[0x23EE6F590](v73, -1, -1);
    }

    v58 = 0;
    goto LABEL_26;
  }

  v15 = v14;
  v129 = v10;
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v16 = sub_238A61B7C();
  v17 = __swift_project_value_buffer(v16, qword_280B278D8);
  v18 = p_isa;

  v19 = v13;
  v20 = sub_238A61B5C();
  v21 = sub_238A61CDC();

  v22 = os_log_type_enabled(v20, v21);
  v130 = a1;
  v135 = v6;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v139 = v128;
    *v23 = 136315394;
    *(v23 + 4) = sub_238A4398C(v137, v18, &v139);
    *(v23 + 12) = 2080;
    v24 = [v15 identityInfo];
    v131 = v17;
    v25 = v19;
    v26 = v24;
    type metadata accessor for IdentityInfo();
    LODWORD(v127) = v21;
    sub_238A572B8(&qword_27DF4B418, type metadata accessor for IdentityInfo, MEMORY[0x277D85378]);
    sub_238A61C8C();

    v27 = sub_238A61C9C();
    v29 = v28;

    v30 = sub_238A4398C(v27, v29, &v139);
    v19 = v25;
    v17 = v131;

    *(v23 + 14) = v30;
    _os_log_impl(&dword_238A41000, v20, v127, "fetchIdentityInfo for %s from %s", v23, 0x16u);
    v31 = v128;
    swift_arrayDestroy();
    MEMORY[0x23EE6F590](v31, -1, -1);
    MEMORY[0x23EE6F590](v23, -1, -1);
  }

  if (![v15 isEnabled] || !objc_msgSend(v15, sel_isInstalled))
  {
    v59 = v19;
    v60 = sub_238A61B5C();
    v61 = sub_238A61CDC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v139 = v63;
      *v62 = 136315138;
      v64 = [v15 identityInfo];
      type metadata accessor for IdentityInfo();
      sub_238A572B8(&qword_27DF4B418, type metadata accessor for IdentityInfo, MEMORY[0x277D85378]);
      sub_238A61C8C();
      p_isa = v59;

      v65 = sub_238A61C9C();
      v67 = v66;

      v68 = sub_238A4398C(v65, v67, &v139);

      *(v62 + 4) = v68;
      _os_log_impl(&dword_238A41000, v60, v61, "%s not enabled and installed", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x23EE6F590](v63, -1, -1);
      MEMORY[0x23EE6F590](v62, -1, -1);
    }

    else
    {
    }

    v58 = 0;
    goto LABEL_26;
  }

  v32 = v19;
  v128 = v15;
  v131 = v17;
  v33 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v34 = sub_238A61B9C();
  v35 = [v33 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3E8, &unk_238A63BD0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_238A638C0;
  v37 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v38 = sub_238A61B9C();
  v39 = [v37 initWithKey:v38 ascending:1];

  *(v36 + 32) = v39;
  sub_238A42AB4(0, &qword_280B27730, 0x277CCAC98);
  v40 = sub_238A61BEC();

  [v35 setSortDescriptors_];

  if (v132)
  {
    sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
    v41 = swift_allocObject();
    *(v41 + 1) = xmmword_238A638D0;
    v41[7] = MEMORY[0x277D837D0];
    v41[8] = sub_238A57194();
    v42 = p_isa;
    v41[4] = v137;
    v41[5] = v42;

    v43 = v134;
    sub_238A61A8C();
    v44 = sub_238A61A6C();
    (*(v136 + 8))(v43, v129);
    v41[12] = sub_238A42AB4(0, &qword_280B27480, 0x277CBEAA8);
    v41[13] = sub_238A57250();
    v41[9] = v44;
    v41[17] = v133;
    v41[18] = sub_238A572B8(&qword_27DF4B3E0, type metadata accessor for LiveLookupDBExtension, MEMORY[0x277D85388]);
    v41[14] = v128;
    v45 = v32;
    v46 = sub_238A61CBC();
    [v35 setPredicate_];

    v47 = sub_238A43010(v35, v130, type metadata accessor for IdentityInfo);
    v48 = sub_238A61B5C();
    v49 = sub_238A61CDC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      p_isa = swift_slowAlloc();
      v139 = p_isa;
      *v50 = 136315138;
      v51 = type metadata accessor for IdentityInfo();
      v52 = MEMORY[0x23EE6EAF0](v47, v51);
      v41 = &v45->isa;
      v54 = sub_238A4398C(v52, v53, &v139);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_238A41000, v48, v49, "identityInfo %s", v50, 0xCu);
      v55 = p_isa;
      __swift_destroy_boxed_opaque_existential_0(p_isa);
      MEMORY[0x23EE6F590](v55, -1, -1);
      MEMORY[0x23EE6F590](v50, -1, -1);
    }

    if (v47 >> 62)
    {
      v56 = sub_238A61E0C();
      if (v56)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v56 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v56)
      {
LABEL_13:
        if ((v47 & 0xC000000000000001) != 0)
        {
          v57 = MEMORY[0x23EE6EC60](0, v47);
          goto LABEL_16;
        }

        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v57 = *(v47 + 32);
LABEL_16:
          v58 = v57;

LABEL_53:

          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_47;
      }
    }

    v58 = 0;
LABEL_26:
    *a6 = v58;
    return;
  }

  v132 = a6;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_238A638B0;
  v77 = sub_238A42AB4(0, &qword_280B27738, 0x277CCAC30);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B8, &qword_238A638E8);
  v78 = swift_allocObject();
  v124 = xmmword_238A638D0;
  *(v78 + 16) = xmmword_238A638D0;
  *(v78 + 56) = MEMORY[0x277D837D0];
  v122 = sub_238A57194();
  *(v78 + 64) = v122;
  v79 = p_isa;
  *(v78 + 32) = v137;
  *(v78 + 40) = v79;

  v80 = v134;
  sub_238A61A8C();
  v81 = sub_238A61A6C();
  v82 = *(v136 + 8);
  v136 += 8;
  v123 = v82;
  v82(v80, v129);
  v121 = sub_238A42AB4(0, &qword_280B27480, 0x277CBEAA8);
  *(v78 + 96) = v121;
  v120 = sub_238A57250();
  *(v78 + 104) = v120;
  *(v78 + 72) = v81;
  *(v78 + 136) = v133;
  v119 = sub_238A572B8(&qword_27DF4B3E0, type metadata accessor for LiveLookupDBExtension, MEMORY[0x277D85388]);
  *(v78 + 144) = v119;
  *(v78 + 112) = v128;
  v83 = v32;
  v126 = "rming save error";
  v127 = v83;
  *(v76 + 32) = sub_238A61CBC();
  *(v76 + 40) = sub_238A61CBC();
  v84 = sub_238A61BEC();

  v85 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v35 setPredicate_];
  v86 = v130;
  v87 = sub_238A43010(v35, v130, type metadata accessor for IdentityInfo);
  v88 = sub_238A61B5C();
  v41 = sub_238A61CDC();
  if (os_log_type_enabled(v88, v41))
  {
    v89 = swift_slowAlloc();
    v118 = v77;
    v90 = v85;
    v91 = v89;
    v92 = swift_slowAlloc();
    v139 = v92;
    *v91 = 136315138;
    v93 = type metadata accessor for IdentityInfo();
    v94 = MEMORY[0x23EE6EAF0](v87, v93);
    v96 = sub_238A4398C(v94, v95, &v139);
    v86 = v130;

    *(v91 + 4) = v96;
    _os_log_impl(&dword_238A41000, v88, v41, "identityInfo %s", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v92);
    MEMORY[0x23EE6F590](v92, -1, -1);
    v97 = v91;
    v85 = v90;
    MEMORY[0x23EE6F590](v97, -1, -1);
  }

  if (v87 >> 62)
  {
    v56 = sub_238A61E0C();
    if (v56)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v56 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v56)
    {
LABEL_31:
      if ((v87 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x23EE6EC60](0, v87);
        a6 = v132;
      }

      else
      {
        a6 = v132;
        if (!*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          v107 = v56;
          v108 = sub_238A61E0C();
          v56 = v107;
          a6 = v132;
          if (!v108)
          {
            goto LABEL_49;
          }

          goto LABEL_40;
        }

        v58 = *(v87 + 32);
      }

      goto LABEL_26;
    }
  }

  v131 = v85;

  v98 = swift_allocObject();
  *(v98 + 16) = v124;
  v99 = v122;
  *(v98 + 56) = MEMORY[0x277D837D0];
  *(v98 + 64) = v99;
  *(v98 + 32) = v137;
  *(v98 + 40) = p_isa;

  v100 = v134;
  sub_238A61A8C();
  v101 = sub_238A61A6C();
  v123(v100, v129);
  v102 = v120;
  *(v98 + 96) = v121;
  *(v98 + 104) = v102;
  *(v98 + 72) = v101;
  v103 = v119;
  *(v98 + 136) = v133;
  *(v98 + 144) = v103;
  v104 = v127;
  *(v98 + 112) = v128;
  v41 = v104;
  v105 = sub_238A61CBC();
  [v35 setPredicate_];

  v56 = sub_238A43010(v35, v86, type metadata accessor for IdentityInfo);
  if (v56 >> 62)
  {
    goto LABEL_48;
  }

  a6 = v132;
  if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_49:

    v58 = 0;
    goto LABEL_50;
  }

LABEL_40:
  if ((v56 & 0xC000000000000001) != 0)
  {
    v106 = MEMORY[0x23EE6EC60](0);
    goto LABEL_43;
  }

  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v106 = *(v56 + 32);
LABEL_43:
    v58 = v106;

LABEL_50:
    v109 = v58;
    v45 = sub_238A61B5C();
    v110 = sub_238A61CDC();

    if (os_log_type_enabled(v45, v110))
    {
      v111 = swift_slowAlloc();
      p_isa = v41;
      v112 = v111;
      v113 = v35;
      v114 = swift_slowAlloc();
      *v112 = 138412290;
      *(v112 + 4) = v109;
      *v114 = v58;
      v115 = v109;
      _os_log_impl(&dword_238A41000, v45, v110, "Got %@ for empty identityInfo", v112, 0xCu);
      sub_238A42F4C(v114, &qword_27DF4B3C8, &qword_238A638F0);
      v116 = v114;
      v35 = v113;
      MEMORY[0x23EE6F590](v116, -1, -1);
      v117 = v112;
      v41 = p_isa;
      MEMORY[0x23EE6F590](v117, -1, -1);
    }

    goto LABEL_53;
  }

  __break(1u);
}

uint64_t sub_238A55924(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unsigned int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v70[1] = a8;
  LODWORD(v74) = a7;
  v81 = a6;
  v84 = a1;
  v85 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B0, &qword_238A638E0);
  MEMORY[0x28223BE20](v13 - 8);
  v76 = v70 - v14;
  v79 = sub_238A61A1C();
  v15 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v70[0] = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v70 - v18;
  v82 = sub_238A61A9C();
  v20 = *(v82 - 8);
  v21 = MEMORY[0x28223BE20](v82);
  v23 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v83 = v70 - v24;
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v25 = sub_238A61B7C();
  v26 = __swift_project_value_buffer(v25, qword_280B278D8);

  v27 = a4;
  v80 = v26;
  v28 = sub_238A61B5C();
  v29 = sub_238A61CDC();

  v30 = os_log_type_enabled(v28, v29);
  v77 = v15;
  v78 = a3;
  v75 = v27;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    LODWORD(v73) = a5;
    v33 = v32;
    v86 = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_238A4398C(v85, a3, &v86);
    *(v31 + 12) = 2080;
    v34 = v20;
    v35 = [v27 identifier];
    v36 = sub_238A61BAC();
    v38 = v37;

    v39 = sub_238A4398C(v36, v38, &v86);

    *(v31 + 14) = v39;
    v20 = v34;
    _os_log_impl(&dword_238A41000, v28, v29, "updateIdentityInfo for %s with %s", v31, 0x16u);
    swift_arrayDestroy();
    v40 = v33;
    a5 = v73;
    MEMORY[0x23EE6F590](v40, -1, -1);
    MEMORY[0x23EE6F590](v31, -1, -1);
  }

  if (a5)
  {
    v41 = a5;
  }

  else
  {
    v41 = 5;
  }

  result = sub_238A61A8C();
  if (((60 * v41) & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_238A61A5C();
    v43 = v82;
    v72 = *(v20 + 8);
    v72(v23, v82);
    v44 = *(v20 + 56);
    v73 = v20 + 56;
    v71 = v44;
    v44(v19, 1, 1, v43);
    v45 = v78;
    v46 = v75;
    v47 = LiveLookupStore.fetchIdentityInfo(for:with:expiration:context:)(v85, v78, v75, v19, v84);
    sub_238A42F4C(v19, &qword_27DF4B3D8, &unk_238A63900);
    if (!v47)
    {
      type metadata accessor for IdentityInfo();
      v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v47 = [v48 initWithContext_];
    }

    v49 = v47;
    v50 = sub_238A61B9C();
    [v49 setHandle_];

    [v49 setType_];
    if (a9)
    {
      v51 = sub_238A61B9C();
      [v49 setName_];
    }

    v52 = sub_238A61B9C();
    [v49 setHandle_];

    v53 = v76;
    sub_238A57858(a10, v76, &qword_27DF4B3B0, &qword_238A638E0);
    v54 = v77;
    v55 = v79;
    if ((*(v77 + 48))(v53, 1, v79) == 1)
    {
      sub_238A42F4C(v53, &qword_27DF4B3B0, &qword_238A638E0);
    }

    else
    {
      v56 = *(v54 + 32);
      v74 = v47;
      v57 = v46;
      v58 = v70[0];
      v56(v70[0], v53, v55);
      sub_238A6199C();
      v59 = sub_238A61B9C();

      [v49 setIconURL_];

      v60 = v58;
      v46 = v57;
      v47 = v74;
      (*(v54 + 8))(v60, v55);
    }

    v61 = sub_238A61A6C();
    [v49 setExpiration_];

    [v49 setDbExtension_];
    sub_238A61A8C();
    v71(v19, 0, 1, v82);
    v62 = LiveLookupStore.fetchBlockingInfo(for:with:expiration:context:)(v85, v45, v46, v19, v84);
    sub_238A42F4C(v19, &qword_27DF4B3D8, &unk_238A63900);
    if (v62)
    {
      if (([v62 shouldBlock] & 1) == 0)
      {
        v63 = sub_238A61A6C();
        [v62 setExpiration_];

        v62 = v63;
      }
    }

    v64 = v49;
    v65 = sub_238A61B5C();
    v66 = sub_238A61CDC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      *(v67 + 4) = v64;
      *v68 = v47;
      v69 = v64;
      _os_log_impl(&dword_238A41000, v65, v66, "saving identityInfo %@", v67, 0xCu);
      sub_238A42F4C(v68, &qword_27DF4B3C8, &qword_238A638F0);
      MEMORY[0x23EE6F590](v68, -1, -1);
      MEMORY[0x23EE6F590](v67, -1, -1);
    }

    sub_238A524E4();
    return (v72)(v83, v82);
  }

  return result;
}

void sub_238A56110(int a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v7 = a4;
  a2();
  if (v4)
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v8 = sub_238A61B7C();
    __swift_project_value_buffer(v8, qword_280B278D8);
    v9 = v4;
    v10 = sub_238A61B5C();
    v11 = sub_238A61CCC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_238A4398C(0xD00000000000001BLL, 0x8000000238A65790, &v25);
      *(v12 + 12) = 2112;
      v15 = v4;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&dword_238A41000, v10, v11, "%s: %@", v12, 0x16u);
      sub_238A42F4C(v13, &qword_27DF4B3C8, &qword_238A638F0);
      MEMORY[0x23EE6F590](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23EE6F590](v14, -1, -1);
      MEMORY[0x23EE6F590](v12, -1, -1);
    }

    swift_willThrow();
  }

  else
  {

    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v17 = sub_238A61B7C();
    __swift_project_value_buffer(v17, qword_280B278D8);
    v18 = v7;
    v19 = sub_238A61B5C();
    v20 = sub_238A61CDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = [v18 hasChanges];

      _os_log_impl(&dword_238A41000, v19, v20, "viewContextPerforming context.hasChanges: %{BOOL}d", v21, 8u);
      MEMORY[0x23EE6F590](v21, -1, -1);
    }

    else
    {

      v19 = v18;
    }

    if ([v18 hasChanges])
    {
      v22 = sub_238A61B5C();
      v23 = sub_238A61CDC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_238A41000, v22, v23, "viewContextPerforming saving", v24, 2u);
        MEMORY[0x23EE6F590](v24, -1, -1);
      }

      sub_238A5862C(0xD000000000000020, 0x8000000238A657B0, a1, v18);
    }
  }
}

uint64_t sub_238A5649C(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(unint64_t, unint64_t, uint64_t, uint64_t, id))
{
  v10 = a4;
  v11 = a5(0xD00000000000001BLL, 0x8000000238A65790, a2, a3, v10);

  if (!v5)
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v12 = sub_238A61B7C();
    __swift_project_value_buffer(v12, qword_280B278D8);
    v13 = v10;
    v14 = sub_238A61B5C();
    v15 = sub_238A61CDC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = [v13 hasChanges];

      _os_log_impl(&dword_238A41000, v14, v15, "viewContextPerforming context.hasChanges: %{BOOL}d", v16, 8u);
      MEMORY[0x23EE6F590](v16, -1, -1);
    }

    else
    {

      v14 = v13;
    }

    if ([v13 hasChanges])
    {
      v17 = sub_238A61B5C();
      v18 = sub_238A61CDC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_238A41000, v17, v18, "viewContextPerforming saving", v19, 2u);
        MEMORY[0x23EE6F590](v19, -1, -1);
      }

      sub_238A5862C(0xD000000000000020, 0x8000000238A657B0, a1, v13);
    }
  }

  return v11;
}

void sub_238A566E8(int a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, void *a4)
{
  v8 = a4;
  sub_238A59620(0xD00000000000001BLL, 0x8000000238A65790, a2, a3, v8);

  if (!v4)
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v9 = sub_238A61B7C();
    __swift_project_value_buffer(v9, qword_280B278D8);
    v10 = v8;
    v11 = sub_238A61B5C();
    v12 = sub_238A61CDC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = [v10 hasChanges];

      _os_log_impl(&dword_238A41000, v11, v12, "viewContextPerforming context.hasChanges: %{BOOL}d", v13, 8u);
      MEMORY[0x23EE6F590](v13, -1, -1);
    }

    else
    {

      v11 = v10;
    }

    if ([v10 hasChanges])
    {
      v14 = sub_238A61B5C();
      v15 = sub_238A61CDC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_238A41000, v14, v15, "viewContextPerforming saving", v16, 2u);
        MEMORY[0x23EE6F590](v16, -1, -1);
      }

      sub_238A5862C(0xD000000000000020, 0x8000000238A657B0, a1, v10);
    }
  }
}

void *sub_238A56930(int a1, void (*a2)(void **__return_ptr, uint64_t), uint64_t a3, void *a4)
{
  v8 = a4;
  v9 = sub_238A59400(0xD00000000000001BLL, 0x8000000238A65790, a2, a3, v8);

  if (!v4)
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v10 = sub_238A61B7C();
    __swift_project_value_buffer(v10, qword_280B278D8);
    v11 = v8;
    v12 = sub_238A61B5C();
    v13 = sub_238A61CDC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = [v11 hasChanges];

      _os_log_impl(&dword_238A41000, v12, v13, "viewContextPerforming context.hasChanges: %{BOOL}d", v14, 8u);
      MEMORY[0x23EE6F590](v14, -1, -1);
    }

    else
    {

      v12 = v11;
    }

    if ([v11 hasChanges])
    {
      v15 = sub_238A61B5C();
      v16 = sub_238A61CDC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_238A41000, v15, v16, "viewContextPerforming saving", v17, 2u);
        MEMORY[0x23EE6F590](v17, -1, -1);
      }

      sub_238A5862C(0xD000000000000020, 0x8000000238A657B0, a1, v11);
    }
  }

  return v9;
}

char *sub_238A56B70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B408, &qword_238A63A88);
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

char *sub_238A56C7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B428, &qword_238A63AA0);
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

uint64_t sub_238A56D70(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_238A61E0C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

id sub_238A56DD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_238A61A1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A619AC();
  v6 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
  v7 = sub_238A619BC();
  v8 = [v6 initWithURL_];

  [v8 setShouldInferMappingModelAutomatically_];
  [v8 setShouldMigrateStoreAutomatically_];
  [v8 setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
  sub_238A42AB4(0, &qword_280B27718, 0x277CCABB0);
  v9 = sub_238A61D3C();
  [v8 setOption:v9 forKey:*MEMORY[0x277CBE210]];

  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t sub_238A56FD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_238A57010(*(v2 + 32), a1, *(v2 + 16));
  *a2 = result;
  return result;
}

unint64_t sub_238A57194()
{
  result = qword_27DF4B3C0;
  if (!qword_27DF4B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B3C0);
  }

  return result;
}

uint64_t sub_238A571F8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 0;
  return result;
}

unint64_t sub_238A57250()
{
  result = qword_280B27478;
  if (!qword_280B27478)
  {
    sub_238A42AB4(255, &qword_280B27480, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B27478);
  }

  return result;
}

uint64_t sub_238A572B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_238A5734C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238A56930(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_238A573C0()
{
  result = qword_27DF4B3F8;
  if (!qword_27DF4B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B3F8);
  }

  return result;
}

void sub_238A57450()
{
  v1 = *(v0 + 16);
  [v1 setIsInstalled_];
  [v1 setShouldRemove_];
  sub_238A524E4();
}

void sub_238A574E0(_BYTE *a1@<X8>)
{
  sub_238A566E8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *a1 = v4 & 1;
  }
}

unint64_t sub_238A5751C()
{
  result = qword_27DF4B400;
  if (!qword_27DF4B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B400);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IdentityType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_238A577FC(uint64_t a1, int a2)
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

uint64_t sub_238A5781C(uint64_t result, int a2, int a3)
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

uint64_t sub_238A57858(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_238A578C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_238A43010(*(v2 + 24), a1, type metadata accessor for IdentityInfo);
  *a2 = result;
  return result;
}

uint64_t sub_238A57938@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_238A43010(*(v2 + 24), a1, type metadata accessor for BlockingInfo);
  *a2 = result;
  return result;
}

uint64_t sub_238A57984@<X0>(uint64_t (*a1)(unint64_t, unint64_t, uint64_t, uint64_t, id)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_238A5649C(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_238A57A2C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_238A57AD8()
{
  v0 = sub_238A61B7C();
  __swift_allocate_value_buffer(v0, qword_280B278D8);
  __swift_project_value_buffer(v0, qword_280B278D8);
  return sub_238A61B6C();
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

uint64_t StoreWrapper.__allocating_init(containerName:modelURL:storeDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = sub_238A58ED0(a3);
  if (v4)
  {
    v11 = sub_238A61A1C();
    (*(*(v11 - 8) + 8))(a3, v11);
  }

  else
  {
    v12 = v10;
    type metadata accessor for StoreWrapper();
    v5 = swift_allocObject();
    StoreWrapper.init(containerName:model:storeDescription:)(a1, a2, v12, a4);
    v13 = sub_238A61A1C();
    (*(*(v13 - 8) + 8))(a3, v13);
  }

  return v5;
}

uint64_t sub_238A57CDC()
{
  v1 = *v0;
  sub_238A61E9C();
  MEMORY[0x23EE6ED90](v1);
  return sub_238A61ECC();
}

uint64_t sub_238A57D50(uint64_t a1)
{
  v2 = *v1;
  sub_238A61E9C();
  MEMORY[0x23EE6ED90](v2);
  return sub_238A61ECC();
}

uint64_t StoreWrapper.__allocating_init(containerName:model:storeDescription:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  StoreWrapper.init(containerName:model:storeDescription:)(a1, a2, a3, a4);
  return v8;
}

void *StoreWrapper.init(containerName:model:storeDescription:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4[2] = 0;
  v4[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B440, &qword_238A63AE0);
  v9 = swift_allocObject();
  *(v9 + 36) = 0;
  v10 = (v9 + 36);
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  v11 = v9 + 16;
  *(v9 + 32) = 2;
  v4[4] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B448, &qword_238A63AE8);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v4[5] = v12;
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  v13 = a3;
  v14 = a4;

  os_unfair_lock_lock(v10);
  sub_238A43640(v11, v18);
  os_unfair_lock_unlock(v10);

  v15 = v18[0];
  v16 = v18[1];

  return v4;
}

id sub_238A57F40()
{
  v2 = *(v0 + 64);
  v3 = sub_238A5818C(v2);
  if (!v1)
  {
    v4 = v3;
    v5 = v2;
    v6 = v4;
    v7 = [v6 viewContext];
    [v7 setAutomaticallyMergesChangesFromParent_];

    v8 = [v6 viewContext];
    [v8 setShouldRefreshAfterSave_];

    v9 = [v6 viewContext];
    [v9 setMergePolicy_];

    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v10 = sub_238A61B7C();
    __swift_project_value_buffer(v10, qword_280B278D8);
    v2 = v5;
    v11 = v6;
    v12 = sub_238A61B5C();
    v13 = sub_238A61CDC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v16 = v2;
      v17 = v11;
      v18 = sub_238A61BBC();
      v20 = sub_238A4398C(v18, v19, &v22);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_238A41000, v12, v13, "Loaded container wrapper: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x23EE6F590](v15, -1, -1);
      MEMORY[0x23EE6F590](v14, -1, -1);
    }
  }

  return v2;
}

id sub_238A5818C(void *a1)
{
  v2 = v1;
  v35[1] = *MEMORY[0x277D85DE8];
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v4 = sub_238A61B7C();
  __swift_project_value_buffer(v4, qword_280B278D8);

  v5 = a1;
  v6 = sub_238A61B5C();
  v7 = sub_238A61CDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = *(v2 + 72);
    *(v8 + 4) = v10;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v10;
    v9[1] = v5;
    v11 = v5;
    v12 = v10;
    _os_log_impl(&dword_238A41000, v6, v7, "Loading container with storeDescription: %@ model: %@", v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3C8, &qword_238A638F0);
    swift_arrayDestroy();
    MEMORY[0x23EE6F590](v9, -1, -1);
    MEMORY[0x23EE6F590](v8, -1, -1);
  }

  v13 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v14 = sub_238A61B9C();
  v15 = [v13 initWithName:v14 managedObjectModel:v5];

  v16 = *(v2 + 72);
  sub_238A42AB4(0, &qword_280B27718, 0x277CCABB0);
  v17 = sub_238A61D3C();
  [v16 setOption:v17 forKey:*MEMORY[0x277CBE210]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3E8, &unk_238A63BD0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_238A638C0;
  *(v18 + 32) = v16;
  sub_238A42AB4(0, &qword_280B27720, 0x277CBE4E0);
  v19 = v16;
  v20 = sub_238A61BEC();

  [v15 setPersistentStoreDescriptions_];

  v21 = sub_238A61B5C();
  v22 = sub_238A61CDC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138543362;
    *(v23 + 4) = v19;
    *v24 = v19;
    v25 = v19;
    _os_log_impl(&dword_238A41000, v21, v22, "MessageContainer: Attempting to load persistent store with description: %{public}@", v23, 0xCu);
    sub_238A5933C(v24);
    MEMORY[0x23EE6F590](v24, -1, -1);
    MEMORY[0x23EE6F590](v23, -1, -1);
  }

  v35[0] = 0;
  if ([v15 load_])
  {
    v26 = v35[0];
    v27 = v15;
    v28 = sub_238A61B5C();
    v29 = sub_238A61CDC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_238A41000, v28, v29, "Loaded container: %@", v30, 0xCu);
      sub_238A5933C(v31);
      MEMORY[0x23EE6F590](v31, -1, -1);
      MEMORY[0x23EE6F590](v30, -1, -1);
    }
  }

  else
  {
    v33 = v35[0];
    sub_238A6197C();

    swift_willThrow();
  }

  return v15;
}

void sub_238A5862C(uint64_t a1, unint64_t a2, int a3, id a4)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v23[0] = 0;
  if ([a4 save_])
  {
    v7 = v23[0];
  }

  else
  {
    v8 = v23[0];
    v9 = sub_238A6197C();

    swift_willThrow();
    if (a2)
    {
      v10 = a1;
    }

    else
    {
      v10 = 0xD00000000000001ALL;
    }

    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = 0x8000000238A659E0;
    }

    v12 = qword_280B27740;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_238A61B7C();
    __swift_project_value_buffer(v13, qword_280B278D8);

    v14 = v9;
    v15 = sub_238A61B5C();
    v16 = sub_238A61CCC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23[0] = v19;
      *v17 = 136315394;
      v20 = sub_238A4398C(v10, v11, v23);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2112;
      v21 = v9;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v22;
      *v18 = v22;
      _os_log_impl(&dword_238A41000, v15, v16, "%s: %@", v17, 0x16u);
      sub_238A5933C(v18);
      MEMORY[0x23EE6F590](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23EE6F590](v19, -1, -1);
      MEMORY[0x23EE6F590](v17, -1, -1);
    }

    else
    {
    }

    swift_willThrow();
  }
}

uint64_t sub_238A588AC(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  v7 = v3;
  if (v3)
  {
    if (a2)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0xD00000000000001ALL;
    }

    if (a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0x8000000238A659E0;
    }

    v10 = qword_280B27740;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_238A61B7C();
    __swift_project_value_buffer(v11, qword_280B278D8);

    v12 = v7;
    v13 = sub_238A61B5C();
    v14 = sub_238A61CCC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v15 = 136315394;
      v18 = sub_238A4398C(v8, v9, &v21);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2112;
      v19 = v7;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v20;
      *v16 = v20;
      _os_log_impl(&dword_238A41000, v13, v14, "%s: %@", v15, 0x16u);
      sub_238A5933C(v16);
      MEMORY[0x23EE6F590](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23EE6F590](v17, -1, -1);
      MEMORY[0x23EE6F590](v15, -1, -1);
    }

    else
    {
    }

    return swift_willThrow();
  }

  return result;
}

void sub_238A58ABC()
{

  v5 = sub_238A433E4(0xD00000000000001CLL, 0x8000000238A654B0);

  if (!v4)
  {
    MEMORY[0x28223BE20](v6);
    sub_238A61D0C();
  }
}

void sub_238A58BAC(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_238A588AC(0xD00000000000001BLL, 0x8000000238A65790, sub_238A59864);
  if (!v4)
  {
    if (qword_280B27740 != -1)
    {
      swift_once();
    }

    v7 = sub_238A61B7C();
    __swift_project_value_buffer(v7, qword_280B278D8);
    v8 = a4;
    v9 = sub_238A61B5C();
    v10 = sub_238A61CDC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = [v8 hasChanges];

      _os_log_impl(&dword_238A41000, v9, v10, "viewContextPerforming context.hasChanges: %{BOOL}d", v11, 8u);
      MEMORY[0x23EE6F590](v11, -1, -1);
    }

    else
    {

      v9 = v8;
    }

    if ([v8 hasChanges])
    {
      v12 = sub_238A61B5C();
      v13 = sub_238A61CDC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_238A41000, v12, v13, "viewContextPerforming saving", v14, 2u);
        MEMORY[0x23EE6F590](v14, -1, -1);
      }

      sub_238A5862C(0xD000000000000020, 0x8000000238A657B0, a1, v8);
    }
  }
}

uint64_t StoreWrapper.deinit()
{
  sub_238A5921C(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t StoreWrapper.__deallocating_deinit()
{
  sub_238A5921C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

id sub_238A58ED0(uint64_t a1)
{
  v2 = sub_238A61A1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v6 = sub_238A61B7C();
  __swift_project_value_buffer(v6, qword_280B278D8);
  v7 = sub_238A61B5C();
  v8 = sub_238A61CDC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_238A41000, v7, v8, "MessageContainer: Attempting to load managed object model", v9, 2u);
    MEMORY[0x23EE6F590](v9, -1, -1);
  }

  v10 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v11 = sub_238A619BC();
  v12 = [v10 initWithContentsOfURL_];

  if (!v12)
  {
    (*(v3 + 16))(v5, a1, v2);
    v13 = sub_238A61B5C();
    v14 = sub_238A61CCC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136446210;
      sub_238A598E8();
      v17 = sub_238A61E3C();
      v18 = v3;
      v20 = v19;
      (*(v18 + 8))(v5, v2);
      v21 = sub_238A4398C(v17, v20, &v25);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_238A41000, v13, v14, "MessageContainer: Error initializing mom from: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23EE6F590](v16, -1, -1);
      MEMORY[0x23EE6F590](v15, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    sub_238A59894();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_238A5921C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14IdentityLookup12StoreWrapperC5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_238A59288(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_238A592D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_238A59314(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_238A5933C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3C8, &qword_238A638F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_238A593A4(void *a1, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else
  {
    if (a3)
    {
      return;
    }

    a1 = a2;
  }
}

void *sub_238A59400(uint64_t a1, unint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v23, a5);
  v8 = v5;
  if (!v5)
  {
    return v23;
  }

  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0x8000000238A659E0;
  }

  v11 = qword_280B27740;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_238A61B7C();
  __swift_project_value_buffer(v12, qword_280B278D8);

  v13 = v8;
  v14 = sub_238A61B5C();
  v15 = sub_238A61CCC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v16 = 136315394;
    v19 = sub_238A4398C(v9, v10, &v23);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    v20 = v8;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    _os_log_impl(&dword_238A41000, v14, v15, "%s: %@", v16, 0x16u);
    sub_238A5933C(v17);
    MEMORY[0x23EE6F590](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23EE6F590](v18, -1, -1);
    MEMORY[0x23EE6F590](v16, -1, -1);
  }

  else
  {
  }

  return swift_willThrow();
}

uint64_t sub_238A59620(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v24, a5);
  v8 = v5;
  if (!v5)
  {
    return v24;
  }

  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0x8000000238A659E0;
  }

  v11 = qword_280B27740;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_238A61B7C();
  __swift_project_value_buffer(v12, qword_280B278D8);

  v13 = v8;
  v14 = sub_238A61B5C();
  v15 = sub_238A61CCC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v16 = 136315394;
    v19 = sub_238A4398C(v9, v10, &v23);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    v20 = v8;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    _os_log_impl(&dword_238A41000, v14, v15, "%s: %@", v16, 0x16u);
    sub_238A5933C(v17);
    MEMORY[0x23EE6F590](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23EE6F590](v18, -1, -1);
    MEMORY[0x23EE6F590](v16, -1, -1);
  }

  else
  {
  }

  return swift_willThrow();
}

unint64_t sub_238A59894()
{
  result = qword_27DF4B450;
  if (!qword_27DF4B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B450);
  }

  return result;
}

unint64_t sub_238A598E8()
{
  result = qword_27DF4B458;
  if (!qword_27DF4B458)
  {
    sub_238A61A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B458);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoreWrapperError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StoreWrapperError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238A59AA0()
{
  result = qword_27DF4B460;
  if (!qword_27DF4B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B460);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_238A59B18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_238A59B60(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t CallLookupExtensionStatus.hashValue.getter()
{
  v1 = *v0;
  sub_238A61E9C();
  MEMORY[0x23EE6ED90](v1);
  return sub_238A61ECC();
}

uint64_t sub_238A59C4C@<X0>(_BYTE *a2@<X8>)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = [objc_opt_self() sharedInstance];
  v6 = sub_238A61B9C();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  v11[4] = sub_238A59F84;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_238A59F8C;
  v11[3] = &block_descriptor_0;
  v8 = _Block_copy(v11);
  v9 = v4;

  [v5 getEnabledForExtensionWithIdentifier:v6 completionHandler:v8];
  _Block_release(v8);

  sub_238A61CEC();
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_238A59DE4(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v7 = sub_238A61B7C();
  __swift_project_value_buffer(v7, qword_280B278D8);
  v8 = a2;
  v9 = sub_238A61B5C();
  v10 = sub_238A61CDC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 67109378;
    *(v11 + 4) = a1 & 1;
    *(v11 + 8) = 2112;
    if (a2)
    {
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v11 + 10) = v14;
    *v12 = v15;
    _os_log_impl(&dword_238A41000, v9, v10, "status = %{BOOL}d error = %@", v11, 0x12u);
    sub_238A5933C(v12);
    MEMORY[0x23EE6F590](v12, -1, -1);
    MEMORY[0x23EE6F590](v11, -1, -1);
  }

  swift_beginAccess();
  *(a4 + 16) = a1 & 1;
  return sub_238A61CFC();
}

void sub_238A59F8C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238A5A030()
{
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v1 = sub_238A61B7C();
  __swift_project_value_buffer(v1, qword_280B278D8);
  v2 = sub_238A61B5C();
  v3 = sub_238A61CDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238A41000, v2, v3, "openSettings", v4, 2u);
    MEMORY[0x23EE6F590](v4, -1, -1);
  }

  v5 = [objc_opt_self() sharedInstance];
  v0[18] = v5;
  v0[2] = v0;
  v0[3] = sub_238A5A218;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B468, qword_238A63D28);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_238A5A3FC;
  v0[13] = &block_descriptor_6;
  v0[14] = v6;
  [v5 openSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238A5A218()
{
  v1 = *(*v0 + 48);
  *(*v0 + 152) = v1;
  if (v1)
  {
    v2 = sub_238A5A38C;
  }

  else
  {
    v2 = sub_238A5A328;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238A5A328()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238A5A38C(uint64_t a1)
{
  v2 = *(v1 + 144);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_238A5A3FC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B478, &unk_238A63E48);
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

uint64_t sub_238A5A4A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_238A5A4C8, 0, 0);
}

uint64_t sub_238A5A4C8()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[20] = v1;
  v2 = sub_238A61B9C();
  v0[21] = v2;
  v0[2] = v0;
  v0[3] = sub_238A5A624;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B468, qword_238A63D28);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_238A5A3FC;
  v0[13] = &block_descriptor_10;
  v0[14] = v3;
  [v1 resetExtensionWithIdentier:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238A5A624()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_238A5BC08;
  }

  else
  {
    v2 = sub_238A5BC04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238A5A734(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_238A5A754, 0, 0);
}

uint64_t sub_238A5A754()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[20] = v1;
  v2 = sub_238A61B9C();
  v0[21] = v2;
  v0[2] = v0;
  v0[3] = sub_238A5A8B0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B468, qword_238A63D28);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_238A5A3FC;
  v0[13] = &block_descriptor_14;
  v0[14] = v3;
  [v1 refreshPIRParametersForLiveLookupExtensionWithIdentifier:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238A5A8B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_238A5AA28;
  }

  else
  {
    v2 = sub_238A5A9C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238A5A9C0()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238A5AA28(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_238A5AAA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_238A5AAC0, 0, 0);
}

uint64_t sub_238A5AAC0()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[20] = v1;
  v2 = sub_238A61B9C();
  v0[21] = v2;
  v0[2] = v0;
  v0[3] = sub_238A5A624;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B468, qword_238A63D28);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_238A5A3FC;
  v0[13] = &block_descriptor_18;
  v0[14] = v3;
  [v1 refreshExtensionContextForLiveLookupExtensionWithIdentifier:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238A5AC1C()
{
  if (qword_280B27888 != -1)
  {
    swift_once();
  }

  return LiveLookupStore.installedExtensions()();
}

uint64_t sub_238A5AC74(char a1, uint64_t a2)
{
  *(v2 + 144) = a2;
  *(v2 + 176) = a1;
  return MEMORY[0x2822009F8](sub_238A5AC98, 0, 0);
}

uint64_t sub_238A5AC98()
{
  v26 = v0;
  v1 = v0;
  v2 = v0 + 80;
  if (qword_280B27740 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 144);
  v4 = sub_238A61B7C();
  __swift_project_value_buffer(v4, qword_280B278D8);
  v5 = v3;
  v6 = sub_238A61B5C();
  v7 = sub_238A61CDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 144);
    v9 = *(v1 + 176);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315394;
    v12 = [v8 identifier];
    v13 = sub_238A61BAC();
    v15 = v14;

    *(v1 + 80) = v13;
    *(v1 + 88) = v15;
    v16 = sub_238A61BBC();
    v18 = sub_238A4398C(v16, v17, &v25);

    *(v10 + 4) = v18;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v9;
    _os_log_impl(&dword_238A41000, v6, v7, "setting extension %s enabled=%{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EE6F590](v11, -1, -1);
    MEMORY[0x23EE6F590](v10, -1, -1);
  }

  v19 = *(v1 + 144);
  v20 = *(v1 + 176);
  v21 = [objc_opt_self() sharedInstance];
  *(v1 + 152) = v21;
  v22 = [v19 identifier];
  *(v1 + 160) = v22;
  *(v1 + 16) = v1;
  *(v1 + 24) = sub_238A5AF80;
  v23 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B468, qword_238A63D28);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_238A5A3FC;
  *(v1 + 104) = &block_descriptor_22;
  *(v1 + 112) = v23;
  [v21 setEnabled:v20 forExtensionWithIdentifier:v22 completionHandler:v2];

  return MEMORY[0x282200938](v1 + 16);
}

uint64_t sub_238A5AF80()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_238A5B11C;
  }

  else
  {
    v2 = sub_238A5B090;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238A5B090()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 176);

  [v2 setIsEnabled_];
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_238A5B11C(uint64_t a1)
{
  v2 = v1[20];
  v3 = v1[19];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

void sub_238A5B194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    if (qword_280B27888 != -1)
    {
LABEL_31:
      swift_once();
    }

    v3 = LiveLookupStore.installedExtensions()();
    v4 = v3;
    v20 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      v21 = sub_238A61E0C();
    }

    else
    {
      v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v18 = v1;
    v19 = v2 + 32;
    v17 = 1;
    while (1)
    {
      if (v5 == v1)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v6 = (v19 + 16 * v5);
      v7 = *v6;
      v2 = v6[1];

      if (v21)
      {
        break;
      }

LABEL_6:

      v1 = v18;
LABEL_7:
      if (++v5 == v1)
      {
        goto LABEL_26;
      }
    }

    v8 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EE6EC60](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_29;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v1 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v11 = [v9 identifier];
      v12 = sub_238A61BAC();
      v14 = v13;

      if (v12 == v7 && v14 == v2)
      {
        break;
      }

      v16 = sub_238A61E4C();

      if (v16)
      {
        goto LABEL_24;
      }

      ++v8;
      if (v1 == v21)
      {
        goto LABEL_6;
      }
    }

LABEL_24:

    v2 = v17;
    [v10 setPriority_];

    ++v17;
    v1 = v18;
    if (v2 + 1 == (v2 + 1))
    {
      goto LABEL_7;
    }

    __break(1u);
LABEL_26:

    sub_238A4E434();
  }
}

unint64_t sub_238A5B414()
{
  result = qword_27DF4B470;
  if (!qword_27DF4B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B470);
  }

  return result;
}

uint64_t dispatch thunk of LiveCallerIDLookupManager.openSettings()()
{
  v4 = (*(*v0 + 88) + **(*v0 + 88));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_238A5B5C4;

  return v4();
}

uint64_t sub_238A5B5C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of LiveCallerIDLookupManager.reset(forExtensionWithIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 96) + **(*v2 + 96));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_238A5BC0C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of LiveCallerIDLookupManager.refreshPIRParameters(forExtensionWithIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_238A5BC0C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of LiveCallerIDLookupManager.refreshExtensionContext(forExtensionWithIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 112) + **(*v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_238A5BC0C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of LiveCallerIDLookupManager.set(enabled:for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_238A5BC0C;

  return v8(a1, a2);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id BlockingInfo.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id BlockingInfo.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BlockingInfo();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id BlockingInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlockingInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id IdentityInfo.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id IdentityInfo.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for IdentityInfo();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id IdentityInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_238A5BF34(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_238A61BAC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_238A5BF8C(id *a1@<X0>, SEL *a2@<X3>, uint64_t (*a3)(void)@<X4>, unint64_t *a4@<X5>, uint64_t (*a5)(uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  v10 = [*a1 *a2];
  a3(0);
  sub_238A5C674(a4, a5);
  v11 = sub_238A61C8C();

  *a6 = v11;
}

void sub_238A5C018(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), SEL *a8)
{
  v11 = *a2;
  a5(0);
  sub_238A5C674(a6, a7);
  v12 = sub_238A61C7C();
  [v11 *a8];
}

id sub_238A5C0B4()
{
  v0 = [swift_getObjCClassFromMetadata() entityName];
  if (!v0)
  {
    sub_238A61BAC();
    v0 = sub_238A61B9C();
  }

  v1 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  return v1;
}

id LiveLookupDBExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LiveLookupDBExtension.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id LiveLookupDBExtension.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for LiveLookupDBExtension();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id LiveLookupDBExtension.__allocating_init(context:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithContext_];

  return v3;
}

id LiveLookupDBExtension.init(identifier:context:)(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v6 = objc_opt_self();
    v7 = sub_238A61B9C();
    v8 = [v6 entityForName:v7 inManagedObjectContext:a3];

    if (v8)
    {
      v12.receiver = v3;
      v12.super_class = type metadata accessor for LiveLookupDBExtension();
      v9 = objc_msgSendSuper2(&v12, sel_initWithEntity_insertIntoManagedObjectContext_, v8, a3);
      v10 = sub_238A61B9C();

      [v9 setIdentifier_];

      return v9;
    }

    __break(1u);
  }

  result = sub_238A61DFC();
  __break(1u);
  return result;
}

id LiveLookupDBExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveLookupDBExtension();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_238A5C674(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t LiveCallerIDLookupExtensionContext.serviceURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238A61A1C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LiveCallerIDLookupExtensionContext.tokenIssuerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveCallerIDLookupExtensionContext(0) + 20);
  v4 = sub_238A61A1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LiveCallerIDLookupExtensionContext(uint64_t a1)
{
  result = qword_27DF4B4D0;
  if (!qword_27DF4B4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LiveCallerIDLookupExtensionContext.userTierToken.getter()
{
  v1 = v0 + *(type metadata accessor for LiveCallerIDLookupExtensionContext(0) + 24);
  v2 = *v1;
  sub_238A5C83C(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_238A5C83C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t LiveCallerIDLookupExtensionContext.init(serviceURL:tokenIssuerURL:userTierToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_238A61A1C();
  v11 = *(*(v10 - 8) + 32);
  v11(a5, a1, v10);
  v12 = type metadata accessor for LiveCallerIDLookupExtensionContext(0);
  result = (v11)(a5 + *(v12 + 20), a2, v10);
  v14 = (a5 + *(v12 + 24));
  *v14 = a3;
  v14[1] = a4;
  return result;
}

BOOL static LiveCallerIDLookupExtensionContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_238A619CC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LiveCallerIDLookupExtensionContext(0);
  if ((sub_238A619CC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *v8;
  v10 = v8[1];

  return sub_238A5DA84(v6, v7, v9, v10);
}

uint64_t sub_238A5C9D8()
{
  v1 = 0x7373496E656B6F74;
  if (*v0 != 1)
  {
    v1 = 0x7265695472657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5565636976726573;
  }
}

uint64_t sub_238A5CA50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_238A5E048(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238A5CA90(uint64_t a1)
{
  v2 = sub_238A5DBEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238A5CACC(uint64_t a1)
{
  v2 = sub_238A5DBEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveCallerIDLookupExtensionContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B488, &qword_238A63ED0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_238A5DBEC();
  sub_238A61EEC();
  LOBYTE(v13) = 0;
  sub_238A61A1C();
  sub_238A5DE44(&qword_27DF4B498, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_238A61E2C();
  if (!v2)
  {
    v9 = type metadata accessor for LiveCallerIDLookupExtensionContext(0);
    LOBYTE(v13) = 1;
    sub_238A61E2C();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 2;
    sub_238A5C83C(v13, v11);
    sub_238A5DC40();
    sub_238A61E2C();
    sub_238A5DC94(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t LiveCallerIDLookupExtensionContext.hash(into:)(uint64_t a1)
{
  sub_238A61A1C();
  sub_238A5DE44(&qword_27DF4B4A8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_238A61B8C();
  type metadata accessor for LiveCallerIDLookupExtensionContext(0);
  sub_238A61B8C();

  return sub_238A61A4C();
}

uint64_t LiveCallerIDLookupExtensionContext.hashValue.getter()
{
  sub_238A61E9C();
  sub_238A61A1C();
  sub_238A5DE44(&qword_27DF4B4A8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_238A61B8C();
  type metadata accessor for LiveCallerIDLookupExtensionContext(0);
  sub_238A61B8C();
  sub_238A61A4C();
  return sub_238A61ECC();
}

uint64_t LiveCallerIDLookupExtensionContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_238A61A1C();
  v23 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v24 = &v21 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B4B0, &qword_238A63ED8);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for LiveCallerIDLookupExtensionContext(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_238A5DBEC();
  v27 = v10;
  v14 = v28;
  sub_238A61EDC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v11;
  v28 = v13;
  LOBYTE(v29) = 0;
  sub_238A5DE44(&qword_27DF4B4B8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v15 = v24;
  sub_238A61E1C();
  v24 = *(v23 + 32);
  (v24)(v28, v15, v3);
  LOBYTE(v29) = 1;
  v16 = v6;
  sub_238A61E1C();
  v17 = v21;
  v18 = v28;
  (v24)(&v28[*(v21 + 20)], v16, v3);
  v30 = 2;
  sub_238A5DCE8();
  v19 = v27;
  sub_238A61E1C();
  (*(v25 + 8))(v19, v26);
  *(v18 + *(v17 + 24)) = v29;
  sub_238A5DD3C(v18, v22);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_238A5DDA0(v18);
}

uint64_t sub_238A5D2F8(uint64_t a1)
{
  sub_238A61E9C();
  sub_238A61A1C();
  sub_238A5DE44(&qword_27DF4B4A8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_238A61B8C();
  sub_238A61B8C();
  sub_238A61A4C();
  return sub_238A61ECC();
}

uint64_t sub_238A5D3C8(uint64_t a1, uint64_t a2)
{
  sub_238A61A1C();
  sub_238A5DE44(&qword_27DF4B4A8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_238A61B8C();
  sub_238A61B8C();

  return sub_238A61A4C();
}

uint64_t sub_238A5D48C(uint64_t a1, uint64_t a2)
{
  sub_238A61E9C();
  sub_238A61A1C();
  sub_238A5DE44(&qword_27DF4B4A8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_238A61B8C();
  sub_238A61B8C();
  sub_238A61A4C();
  return sub_238A61ECC();
}

BOOL sub_238A5D588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_238A619CC() & 1) == 0 || (sub_238A619CC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = v9[1];

  return sub_238A5DA84(v7, v8, v10, v11);
}

uint64_t sub_238A5D60C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_238A6194C();
    if (v10)
    {
      v11 = sub_238A6196C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_238A6195C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_238A6194C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_238A6196C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_238A6195C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_238A5D83C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_238A5D9CC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_238A5DC94(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_238A5D60C(v13, a3, a4, &v12);
  v10 = v4;
  sub_238A5DC94(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_238A5D9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_238A6194C();
  v11 = result;
  if (result)
  {
    result = sub_238A6196C();
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

  sub_238A6195C();
  sub_238A5D60C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_238A5DA84(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_238A5C83C(a3, a4);
          return sub_238A5D83C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_238A5DBEC()
{
  result = qword_27DF4B490;
  if (!qword_27DF4B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B490);
  }

  return result;
}

unint64_t sub_238A5DC40()
{
  result = qword_27DF4B4A0;
  if (!qword_27DF4B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B4A0);
  }

  return result;
}

uint64_t sub_238A5DC94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_238A5DCE8()
{
  result = qword_27DF4B4C0;
  if (!qword_27DF4B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B4C0);
  }

  return result;
}

uint64_t sub_238A5DD3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveCallerIDLookupExtensionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A5DDA0(uint64_t a1)
{
  v2 = type metadata accessor for LiveCallerIDLookupExtensionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238A5DE44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238A5DEB4(uint64_t a1)
{
  result = sub_238A61A1C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_238A5DF44()
{
  result = qword_27DF4B4E0;
  if (!qword_27DF4B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B4E0);
  }

  return result;
}

unint64_t sub_238A5DF9C()
{
  result = qword_27DF4B4E8;
  if (!qword_27DF4B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B4E8);
  }

  return result;
}

unint64_t sub_238A5DFF4()
{
  result = qword_27DF4B4F0;
  if (!qword_27DF4B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4B4F0);
  }

  return result;
}

uint64_t sub_238A5E048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5565636976726573 && a2 == 0xEA00000000004C52;
  if (v4 || (sub_238A61E4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7373496E656B6F74 && a2 == 0xEE004C5255726575 || (sub_238A61E4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265695472657375 && a2 == 0xED00006E656B6F54)
  {

    return 2;
  }

  else
  {
    v6 = sub_238A61E4C();

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

unint64_t sub_238A5E184()
{
  result = qword_280B27718;
  if (!qword_280B27718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B27718);
  }

  return result;
}

uint64_t (*ILMessageFilterCapabilitiesQueryResponse.transactionalSubActions.modify(char **a1))()
{
  a1[1] = v1;
  *a1 = ILMessageFilterCapabilitiesQueryResponse.transactionalSubActions.getter();
  return sub_238A5E224;
}

char *sub_238A5E248(SEL *a1)
{
  v2 = [v1 *a1];
  sub_238A5E184();
  v3 = sub_238A61BFC();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v4 = sub_238A61E0C();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v13 = MEMORY[0x277D84F90];
  result = sub_238A5E5E0(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v13;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EE6EC60](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 integerValue];

      v12 = *(v13 + 16);
      v11 = *(v13 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_238A5E5E0((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v13 + 16) = v12 + 1;
      *(v13 + 8 * v12 + 32) = v10;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

void sub_238A5E3D4(uint64_t a1, SEL *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_238A61DCC();
    v5 = 32;
    do
    {
      sub_238A61CAC();
      sub_238A61DAC();
      sub_238A61DDC();
      sub_238A61DEC();
      sub_238A61DBC();
      v5 += 8;
      --v4;
    }

    while (v4);
  }

  sub_238A5E184();
  v6 = sub_238A61BEC();

  [v2 *a2];
}

uint64_t (*ILMessageFilterCapabilitiesQueryResponse.promotionalSubActions.modify(char **a1))()
{
  a1[1] = v1;
  *a1 = ILMessageFilterCapabilitiesQueryResponse.promotionalSubActions.getter();
  return sub_238A5E538;
}

uint64_t sub_238A5E550(void *a1, char a2, void (*a3)(__n128))
{
  if ((a2 & 1) == 0)
  {
    return (a3)(*a1);
  }

  (a3)(v4);
}

char *sub_238A5E5C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A5E634(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_238A5E5E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A5E740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_238A5E634(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B408, &qword_238A63A88);
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

char *sub_238A5E740(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B4F8, &qword_238A640F8);
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

id sub_238A5EA28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_238A5EA94()
{
  result = qword_27DF4B518;
  if (!qword_27DF4B518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF4B518);
  }

  return result;
}

uint64_t LiveLookupStoreProtocol.fetchBlockingInfo(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  sub_238A61A8C();
  v13 = sub_238A61A9C();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  v14 = (*(a5 + 88))(a1, a2, a3, v12, 0, a4, a5);
  sub_238A5EC00(v12);
  return v14;
}

uint64_t sub_238A5EC00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LiveLookupStoreProtocol.fetchIdentityInfo(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  sub_238A61A8C();
  v13 = sub_238A61A9C();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  v14 = (*(a5 + 112))(a1, a2, a3, v12, 0, a4, a5);
  sub_238A5EC00(v12);
  return v14;
}

id LiveCallerIDLookupProtocol.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for _LiveLookupConfiguration(0, a1, a2, a4);
  result = sub_238A60758(v4, v6, v7, v8);
  *a3 = result;
  return result;
}

void sub_238A5EF94(void (*a1)(id))
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = type metadata accessor for LiveCallerIDLookupExtensionContext(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*((v4 & v3) + 0x58) + 16))(*((v4 & v3) + 0x50));
  v8 = type metadata accessor for XPCWrapper();
  v9 = objc_allocWithZone(v8);
  sub_238A6193C();
  swift_allocObject();
  sub_238A6192C();
  sub_238A609A4(&qword_27DF4B618, type metadata accessor for LiveCallerIDLookupExtensionContext, &protocol conformance descriptor for LiveCallerIDLookupExtensionContext);
  v10 = sub_238A6191C();
  v12 = v11;

  v13 = &v9[OBJC_IVAR____TtC14IdentityLookup10XPCWrapper_data];
  *v13 = v10;
  v13[1] = v12;
  v16.receiver = v9;
  v16.super_class = v8;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_238A5DDA0(v7);
  a1(v14);
}

uint64_t sub_238A5F1A0(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v4;
  v5 = a1;
  sub_238A5EF94(sub_238A60990);
}

uint64_t sub_238A5F22C(void *a1)
{
  [a1 setExportedObject_];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 resume];
  return 1;
}

id sub_238A5F2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _LiveLookupConfiguration(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t static Host.context()(uint64_t a1)
{
  v1[23] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B0, &qword_238A638E0);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v2 = sub_238A61B3C();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v3 = sub_238A61B0C();
  v1[29] = v3;
  v1[30] = *(v3 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v4 = sub_238A61ABC();
  v1[33] = v4;
  v1[34] = *(v4 - 8);
  v1[35] = swift_task_alloc();
  v5 = sub_238A61B4C();
  v1[36] = v5;
  v1[37] = *(v5 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v6 = sub_238A61ACC();
  v1[41] = v6;
  v1[42] = *(v6 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v7 = sub_238A61AEC();
  v1[45] = v7;
  v1[46] = *(v7 - 8);
  v1[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238A5F6F4, 0, 0);
}

uint64_t sub_238A5F6F4()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[41];
  v4 = v0[42];
  sub_238A61AAC();
  sub_238A61ADC();
  (*(v4 + 16))(v2, v1, v3);
  sub_238A609A4(&qword_27DF4B580, MEMORY[0x277CC5D98], MEMORY[0x277CC5DA0]);
  sub_238A61C6C();
  v5 = sub_238A609A4(&qword_27DF4B588, MEMORY[0x277CC5D88], MEMORY[0x277CC5D90]);
  v6 = swift_task_alloc();
  v0[48] = v6;
  *v6 = v0;
  v6[1] = sub_238A5F87C;
  v7 = v0[33];

  return MEMORY[0x282200308](v0 + 21, v7, v5);
}

uint64_t sub_238A5F87C()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    (*(v2[34] + 8))(v2[35], v2[33]);
    v3 = sub_238A5FBC8;
  }

  else
  {
    v3 = sub_238A5F9A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238A5F9A8()
{
  v1 = v0[21];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  if (!v1)
  {
    (*(v3 + 8))(v2, v4);
    return sub_238A61DFC();
  }

  (*(v3 + 8))(v2, v4);
  if (!*(v1 + 16))
  {

    return sub_238A61DFC();
  }

  v6 = v0[39];
  v5 = v0[40];
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  v18 = v0[31];
  v10 = v0[30];
  v16 = v0[32];
  v17 = v0[29];
  v11 = *(v8 + 16);
  v11(v6, v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v9);

  (*(v8 + 32))(v5, v6, v9);
  v11(v7, v5, v9);
  sub_238A61AFC();
  (*(v10 + 16))(v18, v16, v17);
  v12 = swift_task_alloc();
  v0[50] = v12;
  *v12 = v0;
  v12[1] = sub_238A5FBE4;
  v13 = v0[31];
  v14 = v0[28];

  return MEMORY[0x282116960](v14, v13);
}

uint64_t sub_238A5FBE4()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_238A6024C;
  }

  else
  {
    v2 = sub_238A5FCF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238A5FCF8()
{
  v1 = v0[51];
  v2 = sub_238A61B2C();
  if (v1)
  {

    return swift_unexpectedError();
  }

  v4 = v2;
  v5 = v0[25];
  v6 = [objc_opt_self() interfaceWithProtocol_];
  [v4 setRemoteObjectInterface_];

  [v4 resume];
  v0[6] = nullsub_1;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238A60268;
  v0[5] = &block_descriptor_1;
  v7 = _Block_copy(v0 + 2);
  v8 = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_238A61D4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF4B590, &qword_238A64158);
  swift_dynamicCast();
  v9 = v0[22];
  sub_238A619EC();
  v10 = sub_238A61A1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  result = v12(v5, 1, v10);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v39 = v9;
  v40 = v4;
  v13 = v0[24];
  sub_238A619EC();
  result = v12(v13, 1, v10);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v36 = v0[46];
  v37 = v0[45];
  v38 = v0[47];
  v33 = v0[41];
  v34 = v0[44];
  v31 = v0[40];
  v32 = v0[42];
  v29 = v0[37];
  v30 = v0[36];
  v28 = v0[32];
  v26 = v0[30];
  v27 = v0[29];
  v14 = v0[27];
  v15 = v0[25];
  v24 = v0[26];
  v25 = v0[28];
  v16 = v0[24];
  v35 = v0[23];
  v17 = type metadata accessor for LiveCallerIDLookupExtensionContext(0);
  v18 = swift_allocBox();
  v20 = v19;
  v21 = *(v11 + 32);
  v21(v19, v15, v10);
  v21(v20 + *(v17 + 20), v16, v10);
  *(v20 + *(v17 + 24)) = xmmword_238A64130;
  v0[12] = sub_238A607A4;
  v0[13] = v18;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_238A60620;
  v0[11] = &block_descriptor_4;
  v22 = _Block_copy(v0 + 8);

  [v39 contextWithReply_];
  _Block_release(v22);

  swift_unknownObjectRelease();
  (*(v14 + 8))(v25, v24);
  (*(v26 + 8))(v28, v27);
  (*(v29 + 8))(v31, v30);
  (*(v32 + 8))(v34, v33);
  (*(v36 + 8))(v38, v37);
  swift_beginAccess();
  sub_238A5DD3C(v20, v35);

  v23 = v0[1];

  return v23();
}

void sub_238A60268(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_238A602D0(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3B0, &qword_238A638E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v15[1] = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = type metadata accessor for LiveCallerIDLookupExtensionContext(0);
  v7 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  result = swift_projectBox();
  if (a1)
  {
    v11 = result;
    sub_238A6190C();
    swift_allocObject();
    v12 = a1;
    sub_238A618FC();
    v14 = *&v12[OBJC_IVAR____TtC14IdentityLookup10XPCWrapper_data];
    v13 = *&v12[OBJC_IVAR____TtC14IdentityLookup10XPCWrapper_data + 8];
    sub_238A5C83C(v14, v13);
    sub_238A609A4(&unk_27DF4B620, type metadata accessor for LiveCallerIDLookupExtensionContext, &protocol conformance descriptor for LiveCallerIDLookupExtensionContext);
    sub_238A618EC();
    sub_238A5DC94(v14, v13);

    swift_beginAccess();
    return sub_238A609EC(v9, v11);
  }

  return result;
}

void sub_238A60620(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_238A6068C(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  (*(*(v4 - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1, v4);
  v6 = type metadata accessor for _LiveLookupConfiguration(0, v4, *((v3 & v2) + 0x58), v5);
  v8.receiver = v1;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238A607B0(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for Host(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Host(_WORD *result, int a2, int a3)
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

uint64_t sub_238A60924(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_238A609A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238A609EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveCallerIDLookupExtensionContext(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id static BlockingInfo.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_238A61B9C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_238A60B04@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 expiration];
  if (v3)
  {
    v4 = v3;
    sub_238A61A7C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_238A61A9C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_238A60BA8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_238A60E20(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_238A61A9C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_238A61A6C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setExpiration_];
}

void sub_238A60CD4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 handle];
  if (v3)
  {
    v4 = v3;
    v5 = sub_238A61BAC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_238A60D3C(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_238A61B9C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setHandle_];
}

uint64_t sub_238A60DAC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BlockingInfo();
  result = sub_238A61D6C();
  *a2 = result;
  return result;
}

uint64_t sub_238A60E20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id static IdentityInfo.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_238A61B9C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_238A60F00(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4B3D8, &unk_238A63900);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_238A60E20(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_238A61A9C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_238A61A6C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setExpiration_];
}

void sub_238A6102C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_238A61BAC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_238A61090(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_238A61B9C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_238A61100@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for IdentityInfo();
  result = sub_238A61D6C();
  *a2 = result;
  return result;
}