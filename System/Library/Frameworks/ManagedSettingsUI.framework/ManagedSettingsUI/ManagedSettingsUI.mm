double sub_238DA5378@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_238DAA4C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF6DC30 != -1)
  {
    swift_once();
  }

  v8 = sub_238DAA584();
  __swift_project_value_buffer(v8, qword_27DF6DCF8);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_238DAA564();
  v10 = sub_238DAA614();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136642819;
    sub_238DA67A0(&qword_27DF6DC48, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AC8]);
    v13 = sub_238DAA654();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_238DA61AC(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_238DA4000, v9, v10, "Returning default configuration for application: %{sensitive}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23EE77670](v12, -1, -1);
    MEMORY[0x23EE77670](v11, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  return result;
}

double sub_238DA5610@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_238DAA4E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238DAA4C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF6DC30 != -1)
  {
    swift_once();
  }

  v14 = sub_238DAA584();
  __swift_project_value_buffer(v14, qword_27DF6DCF8);
  (*(v11 + 16))(v13, a1, v10);
  (*(v7 + 16))(v9, a2, v6);
  v15 = sub_238DAA564();
  v16 = sub_238DAA614();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v16;
    v18 = v17;
    v32 = swift_slowAlloc();
    v33 = v32;
    *v18 = 136643075;
    sub_238DA67A0(&qword_27DF6DC48, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AC8]);
    v30 = v15;
    v19 = sub_238DAA654();
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v22 = sub_238DA61AC(v19, v21, &v33);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2085;
    sub_238DA67A0(&qword_27DF6DC50, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AE8]);
    v23 = sub_238DAA654();
    v25 = v24;
    (*(v7 + 8))(v9, v6);
    v26 = sub_238DA61AC(v23, v25, &v33);

    *(v18 + 14) = v26;
    v27 = v30;
    _os_log_impl(&dword_238DA4000, v30, v31, "Returning default configuration for application: %{sensitive}s in category: %{sensitive}s", v18, 0x16u);
    v28 = v32;
    swift_arrayDestroy();
    MEMORY[0x23EE77670](v28, -1, -1);
    MEMORY[0x23EE77670](v18, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }

  *a3 = 0;
  *(a3 + 8) = 1;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  return result;
}

double sub_238DA5A08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_238DAA524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF6DC30 != -1)
  {
    swift_once();
  }

  v8 = sub_238DAA584();
  __swift_project_value_buffer(v8, qword_27DF6DCF8);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_238DAA564();
  v10 = sub_238DAA614();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136642819;
    sub_238DA67A0(&qword_27DF6DC58, MEMORY[0x277CD4B20], MEMORY[0x277CD4B38]);
    v13 = sub_238DAA654();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_238DA61AC(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_238DA4000, v9, v10, "Returning default configuration for web domain: %{sensitive}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23EE77670](v12, -1, -1);
    MEMORY[0x23EE77670](v11, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  return result;
}

double sub_238DA5CA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_238DAA4E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238DAA524();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF6DC30 != -1)
  {
    swift_once();
  }

  v14 = sub_238DAA584();
  __swift_project_value_buffer(v14, qword_27DF6DCF8);
  (*(v11 + 16))(v13, a1, v10);
  (*(v7 + 16))(v9, a2, v6);
  v15 = sub_238DAA564();
  v16 = sub_238DAA614();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v16;
    v18 = v17;
    v32 = swift_slowAlloc();
    v33 = v32;
    *v18 = 136643075;
    sub_238DA67A0(&qword_27DF6DC58, MEMORY[0x277CD4B20], MEMORY[0x277CD4B38]);
    v30 = v15;
    v19 = sub_238DAA654();
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v22 = sub_238DA61AC(v19, v21, &v33);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2085;
    sub_238DA67A0(&qword_27DF6DC50, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AE8]);
    v23 = sub_238DAA654();
    v25 = v24;
    (*(v7 + 8))(v9, v6);
    v26 = sub_238DA61AC(v23, v25, &v33);

    *(v18 + 14) = v26;
    v27 = v30;
    _os_log_impl(&dword_238DA4000, v30, v31, "Returning default configuration for web domain: %{sensitive}s in category: %{sensitive}s", v18, 0x16u);
    v28 = v32;
    swift_arrayDestroy();
    MEMORY[0x23EE77670](v28, -1, -1);
    MEMORY[0x23EE77670](v18, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }

  *a3 = 0;
  *(a3 + 8) = 1;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  return result;
}

id ShieldConfigurationDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ShieldConfigurationDataSource.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShieldConfigurationDataSource();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ShieldConfigurationDataSource.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ShieldConfigurationDataSource();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_238DA61AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238DA6278(v11, 0, 0, 1, a1, a2);
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
    sub_238DA6908(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_238DA6278(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_238DA6384(a5, a6);
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
    result = sub_238DAA644();
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

void *sub_238DA6384(uint64_t a1, unint64_t a2)
{
  v3 = sub_238DA63D0(a1, a2);
  sub_238DA6500(&unk_284BA7AD8);
  return v3;
}

void *sub_238DA63D0(uint64_t a1, unint64_t a2)
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

  v6 = sub_238DA65EC(v5, 0);
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

  result = sub_238DAA644();
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
        v10 = sub_238DAA5C4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_238DA65EC(v10, 0);
        result = sub_238DAA634();
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

uint64_t sub_238DA6500(uint64_t result)
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

  result = sub_238DA6660(result, v11, 1, v3);
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

void *sub_238DA65EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DC68, &unk_238DAAC90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_238DA6660(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DC68, &unk_238DAAC90);
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

uint64_t sub_238DA67A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of ShieldConfigurationDataSource.configuration(shielding:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x50))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
}

uint64_t dispatch thunk of ShieldConfigurationDataSource.configuration(shielding:in:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
}

uint64_t sub_238DA6908(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void sub_238DA69C4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_238DA6A10()
{
  v0 = sub_238DAA584();
  __swift_allocate_value_buffer(v0, qword_27DF6DCF8);
  __swift_project_value_buffer(v0, qword_27DF6DCF8);
  return sub_238DAA574();
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

__n128 ShieldConfiguration.init(backgroundBlurStyle:backgroundColor:icon:title:subtitle:primaryButtonLabel:primaryButtonBackgroundColor:secondaryButtonLabel:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 *a10)
{
  v10 = *(a5 + 16);
  v11 = *(a6 + 16);
  v12 = *(a7 + 16);
  v13 = a10[1].n128_u64[0];
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = *a5;
  *(a9 + 48) = v10;
  *(a9 + 56) = *a6;
  *(a9 + 72) = v11;
  *(a9 + 80) = *a7;
  *(a9 + 96) = v12;
  *(a9 + 104) = a8;
  result = *a10;
  *(a9 + 112) = *a10;
  *(a9 + 128) = v13;
  return result;
}

uint64_t ShieldConfiguration.Label.text.getter()
{
  v1 = *v0;

  return v1;
}

ManagedSettingsUI::ShieldConfiguration::Label __swiftcall ShieldConfiguration.Label.init(text:color:)(Swift::String text, UIColor color)
{
  *v2 = text;
  *(v2 + 16) = color;
  result.text = text;
  result.color = color;
  return result;
}

void *ShieldConfiguration.backgroundColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *ShieldConfiguration.icon.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void ShieldConfiguration.title.getter(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_238DA6C00(v2, v3, v4);
}

void sub_238DA6C00(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

void ShieldConfiguration.subtitle.getter(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_238DA6C00(v2, v3, v4);
}

void ShieldConfiguration.primaryButtonLabel.getter(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_238DA6C00(v2, v3, v4);
}

void *ShieldConfiguration.primaryButtonBackgroundColor.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

void ShieldConfiguration.secondaryButtonLabel.getter(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_238DA6C00(v2, v3, v4);
}

uint64_t get_enum_tag_for_layout_string_17ManagedSettingsUI19ShieldConfigurationV5LabelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_238DA6CF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_238DA6D50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
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

uint64_t sub_238DA6DE8(uint64_t a1, int a2)
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

uint64_t sub_238DA6E30(uint64_t result, int a2, int a3)
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

void sub_238DA6EA8(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

id sub_238DA6F5C(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

uint64_t sub_238DA6FD8()
{
  v1 = *v0;
  sub_238DAA6B4();
  MEMORY[0x23EE772B0](v1);
  return sub_238DAA6D4();
}

uint64_t sub_238DA704C(uint64_t a1)
{
  v2 = *v1;
  sub_238DAA6B4();
  MEMORY[0x23EE772B0](v2);
  return sub_238DAA6D4();
}

void *sub_238DA70A0()
{
  v1 = OBJC_IVAR____TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext____lazy_storage___shieldConfigurationDataSource;
  v2 = *&v0[OBJC_IVAR____TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext____lazy_storage___shieldConfigurationDataSource];
  v3 = v2;
  if (v2 == 1)
  {
    if ([v0 _principalObject])
    {
      type metadata accessor for ShieldConfigurationDataSource();
      v3 = swift_dynamicCastClass();
      if (!v3)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v3 = 0;
    }

    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_238DA81AC(v4);
  }

  sub_238DA81BC(v2);
  return v3;
}

uint64_t sub_238DA739C(void *a1, int a2, uint64_t a3, void *a4, void *a5, void *aBlock, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v11 = _Block_copy(aBlock);
  v12 = sub_238DAA5A4();
  v14 = v13;
  v15 = a4;
  v16 = a5;
  v17 = a1;
  v18 = sub_238DAA474();
  v20 = v19;

  v21 = sub_238DAA5A4();
  v23 = v22;

  _Block_copy(v11);
  a7(v12, v14, v18, v20, v21, v23, v17, v11);
  _Block_release(v11);
  _Block_release(v11);

  sub_238DA9F54(v18, v20);
}

NSData *sub_238DA74B4(double a1, double a2)
{
  v3 = v2;
  v6 = sub_238DAA554();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [(UIImage *)v3 size];
  if (v10 <= a1 && ([(UIImage *)v3 size], v11 <= a2))
  {
    result = UIImagePNGRepresentation(v3);
    if (result)
    {
      v35 = result;
      v36 = sub_238DAA474();

      return v36;
    }
  }

  else
  {
    v12 = [(UIImage *)v3 CGImage];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
      sub_238DAA544();
      sub_238DAA534();
      (*(v7 + 8))(v9, v6);
      v15 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v16 = sub_238DAA594();

      v17 = [v15 initWithString_];

      v18 = CGImageDestinationCreateWithData(v14, v17, 1uLL, 0);
      if (v18)
      {
        v19 = v18;
        if (a2 < a1)
        {
          a1 = a2;
        }

        v20 = [objc_opt_self() mainScreen];
        [v20 scale];
        v22 = v21;

        sub_238DAA170(0, &qword_27DF6DCC0, 0x277CBEAC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DCC8, &qword_238DAAE90);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_238DAAE30;
        v24 = *MEMORY[0x277CD2D40];
        type metadata accessor for CFString(0);
        *(v23 + 56) = v25;
        *(v23 + 32) = v24;
        *(v23 + 88) = MEMORY[0x277D85048];
        *(v23 + 64) = a1 * v22;
        v26 = v24;
        v27 = sub_238DAA604();
        v28 = sub_238DAA5F4();

        CGImageDestinationAddImage(v19, v13, v28);
        if (CGImageDestinationFinalize(v19))
        {
          v29 = v14;
          v30 = sub_238DAA474();

          return v30;
        }

        if (qword_27DF6DC30 != -1)
        {
          swift_once();
        }

        v41 = sub_238DAA584();
        __swift_project_value_buffer(v41, qword_27DF6DCF8);
        v42 = sub_238DAA564();
        v43 = sub_238DAA624();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_238DA4000, v42, v43, "Failed to finalize image destination", v44, 2u);
          MEMORY[0x23EE77670](v44, -1, -1);
        }
      }

      else
      {
        if (qword_27DF6DC30 != -1)
        {
          swift_once();
        }

        v37 = sub_238DAA584();
        __swift_project_value_buffer(v37, qword_27DF6DCF8);
        v38 = sub_238DAA564();
        v39 = sub_238DAA624();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_238DA4000, v38, v39, "Failed to create image destination", v40, 2u);
          MEMORY[0x23EE77670](v40, -1, -1);
        }
      }
    }

    else
    {
      if (qword_27DF6DC30 != -1)
      {
        swift_once();
      }

      v32 = sub_238DAA584();
      __swift_project_value_buffer(v32, qword_27DF6DCF8);
      v14 = sub_238DAA564();
      v33 = sub_238DAA624();
      if (os_log_type_enabled(v14, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_238DA4000, v14, v33, "Failed to get CGImage from UImage", v34, 2u);
        MEMORY[0x23EE77670](v34, -1, -1);
      }
    }

    return 0;
  }

  return result;
}

id sub_238DA7A60(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext____lazy_storage___shieldConfigurationDataSource] = 1;
  if (a1)
  {
    v2 = sub_238DAA5D4();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShieldConfigurationExtensionContext();
  v3 = objc_msgSendSuper2(&v5, sel_initWithInputItems_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_238DA7B44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DC90, &qword_238DAAE78);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  *&v3[OBJC_IVAR____TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext____lazy_storage___shieldConfigurationDataSource] = 1;
  if (a1)
  {
    v9 = sub_238DAA5D4();
  }

  else
  {
    v9 = 0;
  }

  sub_238DAA1B8(a2, v8, &qword_27DF6DC90, &qword_238DAAE78);
  v10 = sub_238DAA4A4();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_238DAA484();
    (*(v11 + 8))(v8, v10);
  }

  v13 = type metadata accessor for ShieldConfigurationExtensionContext();
  v17.receiver = v3;
  v17.super_class = v13;
  v14 = objc_msgSendSuper2(&v17, sel_initWithInputItems_contextUUID_, v9, v12);

  v15 = v14;
  sub_238DAA0A4(a2, &qword_27DF6DC90, &qword_238DAAE78);
  if (v15)
  {
  }

  return v15;
}

id sub_238DA7E34(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DC90, &qword_238DAAE78);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  *&v4[OBJC_IVAR____TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext____lazy_storage___shieldConfigurationDataSource] = 1;
  if (a1)
  {
    v11 = sub_238DAA5D4();
  }

  else
  {
    v11 = 0;
  }

  sub_238DAA1B8(a3, v10, &qword_27DF6DC90, &qword_238DAAE78);
  v12 = sub_238DAA4A4();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_238DAA484();
    (*(v13 + 8))(v10, v12);
  }

  v15 = type metadata accessor for ShieldConfigurationExtensionContext();
  v19.receiver = v4;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, sel_initWithInputItems_listenerEndpoint_contextUUID_, v11, a2, v14);

  v17 = v16;
  sub_238DAA0A4(a3, &qword_27DF6DC90, &qword_238DAAE78);
  if (v17)
  {
  }

  return v17;
}

id sub_238DA8144(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShieldConfigurationExtensionContext();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_238DA81AC(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_238DA81BC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_238DA81CC(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  sub_238DAA1B8(a1, &v25, &qword_27DF6DCA8, &qword_238DAAE88);
  if (v26)
  {
    sub_238DAA220(&v25, v27);
    v1 = objc_opt_self();
    __swift_project_boxed_opaque_existential_0(v27, v28);
    v2 = sub_238DAA664();
    *&v25 = 0;
    v3 = [v1 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v25];
    swift_unknownObjectRelease();
    v4 = v25;
    if (v3)
    {
      v5 = sub_238DAA474();

      __swift_destroy_boxed_opaque_existential_0(v27);
      return v5;
    }

    v7 = v4;
    v8 = sub_238DAA454();

    swift_willThrow();
    if (qword_27DF6DC30 != -1)
    {
      swift_once();
    }

    v9 = sub_238DAA584();
    __swift_project_value_buffer(v9, qword_27DF6DCF8);
    sub_238DA6908(v27, &v25);
    v10 = v8;
    v11 = sub_238DAA564();
    v12 = sub_238DAA624();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136446466;
      sub_238DA6908(&v25, &v23);
      v15 = sub_238DAA5B4();
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_0(&v25);
      v18 = sub_238DA61AC(v15, v17, &v24);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2082;
      v23 = v8;
      v19 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DCD0, &qword_238DAAE98);
      v20 = sub_238DAA5B4();
      v22 = sub_238DA61AC(v20, v21, &v24);

      *(v13 + 14) = v22;
      _os_log_impl(&dword_238DA4000, v11, v12, "Failed to archive %{public}s: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE77670](v14, -1, -1);
      MEMORY[0x23EE77670](v13, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v25);
    }

    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    sub_238DAA0A4(&v25, &qword_27DF6DCA8, &qword_238DAAE88);
  }

  return 0;
}

void sub_238DA8504(uint64_t *a1, uint64_t a2)
{
  v107 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v10 = a1[8];
  v9 = a1[9];
  v86 = a1[11];
  v87 = a1[10];
  v11 = a1[13];
  v98 = a1[12];
  v88 = a1[14];
  v95 = a1[15];
  v90 = a1[7];
  log = a1[16];
  if (v5)
  {
    v12 = sub_238DAA170(0, &qword_27DF6DCB0, 0x277D75348);
  }

  else
  {
    v12 = 0;
    v104 = 0;
    v105 = 0;
  }

  v103 = v5;
  v106 = v12;
  v13 = v5;
  v93 = sub_238DA81CC(&v103);
  v97 = v14;
  sub_238DAA0A4(&v103, &qword_27DF6DCA8, &qword_238DAAE88);
  if (v3)
  {
    v15 = 0;
    v102 = 0xF000000000000000;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v30 = [objc_opt_self() effectWithStyle_];
    v106 = sub_238DAA170(0, &qword_27DF6DCB8, 0x277D75210);
    v103 = v30;
    v15 = sub_238DA81CC(&v103);
    v102 = v31;
    sub_238DAA0A4(&v103, &qword_27DF6DCA8, &qword_238DAAE88);
    if (v4)
    {
LABEL_6:
      v100 = sub_238DA74B4(120.0, 120.0);
      v101 = v16;
      v94 = v15;
      if (v6)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  v100 = 0;
  v101 = 0xF000000000000000;
  v94 = v15;
  if (v6)
  {
LABEL_7:
    v106 = sub_238DAA170(0, &qword_27DF6DCB0, 0x277D75348);
    v103 = v8;
    v17 = v8;
    sub_238DA6C00(v7, v6, v8);
    v18 = sub_238DA81CC(&v103);
    v20 = v19;
    sub_238DAA0A4(&v103, &qword_27DF6DCA8, &qword_238DAAE88);
    v21 = sub_238DAA594();
    v22 = 0;
    if (v20 >> 60 != 15)
    {
      v22 = sub_238DAA464();
      sub_238DAA118(v18, v20);
    }

    v89 = [objc_allocWithZone(MEMORY[0x277D26588]) initWithText:v21 colorData:v22];

    sub_238DAA12C(v7, v6, v8);
    v15 = v94;
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_16:
    v29 = 0;
    goto LABEL_17;
  }

LABEL_15:
  v89 = 0;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_10:
  v106 = sub_238DAA170(0, &qword_27DF6DCB0, 0x277D75348);
  v103 = v9;
  v23 = v9;
  sub_238DA6C00(v90, v10, v9);
  v24 = sub_238DA81CC(&v103);
  v26 = v25;
  sub_238DAA0A4(&v103, &qword_27DF6DCA8, &qword_238DAAE88);
  v27 = sub_238DAA594();
  v28 = 0;
  if (v26 >> 60 != 15)
  {
    v28 = sub_238DAA464();
    sub_238DAA118(v24, v26);
  }

  v29 = [objc_allocWithZone(MEMORY[0x277D26588]) initWithText:v27 colorData:v28];

  sub_238DAA12C(v90, v10, v9);
LABEL_17:
  if (v86)
  {
    v106 = sub_238DAA170(0, &qword_27DF6DCB0, 0x277D75348);
    v103 = v98;
    v32 = v98;
    sub_238DA6C00(v87, v86, v98);
    v33 = sub_238DA81CC(&v103);
    v35 = v34;
    sub_238DAA0A4(&v103, &qword_27DF6DCA8, &qword_238DAAE88);
    v36 = sub_238DAA594();
    v37 = 0;
    if (v35 >> 60 != 15)
    {
      v37 = sub_238DAA464();
      sub_238DAA118(v33, v35);
    }

    v38 = [objc_allocWithZone(MEMORY[0x277D26588]) initWithText:v36 colorData:v37];

    sub_238DAA12C(v87, v86, v98);
    v39 = v95;
    if (v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v38 = 0;
    v39 = v95;
    if (v11)
    {
LABEL_21:
      v40 = sub_238DAA170(0, &qword_27DF6DCB0, 0x277D75348);
      goto LABEL_24;
    }
  }

  v40 = 0;
  v104 = 0;
  v105 = 0;
LABEL_24:
  v103 = v11;
  v106 = v40;
  v41 = v11;
  v99 = sub_238DA81CC(&v103);
  v43 = v42;
  sub_238DAA0A4(&v103, &qword_27DF6DCA8, &qword_238DAAE88);
  if (v39)
  {
    v106 = sub_238DAA170(0, &qword_27DF6DCB0, 0x277D75348);
    v103 = log;
    v44 = log;
    sub_238DA6C00(v88, v39, log);
    v45 = sub_238DA81CC(&v103);
    v47 = v46;
    sub_238DAA0A4(&v103, &qword_27DF6DCA8, &qword_238DAAE88);
    v48 = sub_238DAA594();
    v49 = 0;
    if (v47 >> 60 != 15)
    {
      v49 = sub_238DAA464();
      sub_238DAA118(v45, v47);
    }

    v50 = [objc_allocWithZone(MEMORY[0x277D26588]) initWithText:v48 colorData:v49];

    sub_238DAA12C(v88, v95, log);
  }

  else
  {
    v50 = 0;
  }

  sub_238DAA104(v15, v102);
  sub_238DAA104(v100, v101);
  v51 = v89;
  v52 = v29;
  v53 = v38;
  sub_238DAA104(v99, v43);
  v54 = v50;
  if (v97 >> 60 == 15)
  {
    v55 = 0;
  }

  else
  {
    sub_238DAA104(v93, v97);
    v55 = sub_238DAA464();
    sub_238DAA118(v93, v97);
  }

  if (v102 >> 60 == 15)
  {
    v56 = 0;
  }

  else
  {
    v56 = sub_238DAA464();
    sub_238DAA118(v15, v102);
  }

  if (v101 >> 60 == 15)
  {
    v57 = 0;
  }

  else
  {
    v57 = sub_238DAA464();
    sub_238DAA118(v100, v101);
  }

  if (v43 >> 60 == 15)
  {
    v58 = 0;
  }

  else
  {
    v58 = sub_238DAA464();
    sub_238DAA118(v99, v43);
  }

  v59 = [objc_allocWithZone(MEMORY[0x277D26580]) initWithBackgroundColorData:v55 backgroundEffectData:v56 iconData:v57 title:v51 subtitle:v52 primaryButtonLabel:v53 primaryButtonColorData:v58 secondaryButtonLabel:v54];

  v60 = objc_opt_self();
  v103 = 0;
  v61 = [v60 archivedDataWithRootObject:v59 requiringSecureCoding:1 error:&v103];
  v62 = v103;
  if (v61)
  {
    v63 = sub_238DAA474();
    v65 = v64;

    v66 = v65 >> 62;
    if ((v65 >> 62) > 1)
    {
      if (v66 != 2)
      {
        goto LABEL_56;
      }

      v71 = *(v63 + 16);
      v70 = *(v63 + 24);
      v72 = __OFSUB__(v70, v71);
      v67 = v70 - v71;
      if (!v72)
      {
LABEL_49:
        if (v67 < 1000001)
        {
          goto LABEL_56;
        }

        if (qword_27DF6DC30 == -1)
        {
          goto LABEL_51;
        }

        goto LABEL_65;
      }
    }

    else
    {
      if (!v66)
      {
        goto LABEL_56;
      }

      LODWORD(v67) = HIDWORD(v63) - v63;
      if (!__OFSUB__(HIDWORD(v63), v63))
      {
        v67 = v67;
        goto LABEL_49;
      }

      __break(1u);
    }

    __break(1u);
LABEL_65:
    swift_once();
LABEL_51:
    v73 = sub_238DAA584();
    __swift_project_value_buffer(v73, qword_27DF6DCF8);
    sub_238DA9FFC(v63, v65);
    v74 = sub_238DAA564();
    v96 = sub_238DAA624();
    if (!os_log_type_enabled(v74, v96))
    {
      sub_238DA9F54(v63, v65);
LABEL_61:

      sub_238DA9FA8();
      v69 = swift_allocError();
      *v82 = 1;
      swift_willThrow();
      sub_238DA9F54(v63, v65);
      goto LABEL_62;
    }

    loga = v74;
    v75 = swift_slowAlloc();
    v76 = v75;
    *v75 = 134349056;
    if (v66 != 2)
    {
      LODWORD(v79) = HIDWORD(v63) - v63;
      if (__OFSUB__(HIDWORD(v63), v63))
      {
        __break(1u);
      }

      v79 = v79;
      goto LABEL_60;
    }

    v78 = *(v63 + 16);
    v77 = *(v63 + 24);
    v72 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if (!v72)
    {
LABEL_60:
      *(v75 + 4) = v79;
      sub_238DA9F54(v63, v65);
      _os_log_impl(&dword_238DA4000, loga, v96, "Serialized shield configuration too large:  %{public}ld bytes", v76, 0xCu);
      v81 = v76;
      v74 = loga;
      MEMORY[0x23EE77670](v81, -1, -1);
      goto LABEL_61;
    }

    __break(1u);
LABEL_56:
    sub_238DA9FFC(v63, v65);
    v80 = sub_238DAA464();
    (*(a2 + 16))(a2, v80, 0);

    sub_238DAA118(v94, v102);
    sub_238DAA118(v93, v97);
    sub_238DAA118(v100, v101);
    sub_238DAA118(v99, v43);

    sub_238DA9F54(v63, v65);
    sub_238DA9F54(v63, v65);
    return;
  }

  v68 = v62;
  v69 = sub_238DAA454();

  swift_willThrow();
LABEL_62:
  v83 = v69;
  v84 = sub_238DAA444();
  (*(a2 + 16))(a2, 0, v84);

  sub_238DAA118(v94, v102);
  sub_238DAA118(v93, v97);
  sub_238DAA118(v100, v101);
  sub_238DAA118(v99, v43);
}

void sub_238DA8F6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v33 = a5;
  v34 = a6;
  v30 = a4;
  v31 = a1;
  v32 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DCE0, &qword_238DAAEA8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_238DAA4C4();
  v35 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DCE8, &qword_238DAAEB0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  v36 = a8;
  _Block_copy(a8);
  v20 = sub_238DA70A0();
  if (v20)
  {
    v21 = v20;
    v29 = v13;
    sub_238DA9FFC(a3, v30);
    sub_238DAA4F4();
    v22 = v19;
    (*(v17 + 16))(v12, v19, v16);
    (*(v17 + 56))(v12, 0, 1, v16);
    v23 = v16;
    v24 = v36;

    sub_238DAA4B4();
    (*((*MEMORY[0x277D85000] & *v21) + 0x50))(v39, v15);
    v37[6] = v39[6];
    v37[7] = v39[7];
    v38 = v40;
    v37[2] = v39[2];
    v37[3] = v39[3];
    v37[4] = v39[4];
    v37[5] = v39[5];
    v37[0] = v39[0];
    v37[1] = v39[1];
    _Block_copy(v24);
    sub_238DA8504(v37, v24);
    _Block_release(v24);

    (*(v35 + 8))(v15, v29);
    (*(v17 + 8))(v22, v23);
    sub_238DAA050(v39);
    _Block_release(v24);
  }

  else
  {
    sub_238DA9FA8();
    v25 = swift_allocError();
    *v26 = 0;
    v27 = sub_238DAA444();
    v28 = v36;
    (*(v36 + 2))(v36, 0, v27);

    _Block_release(v28);
  }
}

void sub_238DA932C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10)
{
  v45 = a7;
  v46 = a8;
  v41 = a5;
  v42 = a6;
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v10 = sub_238DAA4E4();
  v48 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DC98, &qword_238DAAE80);
  v40 = *(v47 - 8);
  v13 = MEMORY[0x28223BE20](v47);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DCE0, &qword_238DAAEA8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v34 - v19;
  v21 = sub_238DAA4C4();
  v43 = *(v21 - 8);
  v44 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a10;
  _Block_copy(a10);
  v24 = sub_238DA70A0();
  if (v24)
  {
    v25 = v24;
    v35 = v15;
    v36 = v10;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DCE8, &qword_238DAAEB0);
    (*(*(v26 - 8) + 56))(v20, 1, 1, v26);

    sub_238DAA4B4();
    sub_238DA9FFC(v41, v42);
    sub_238DAA4F4();
    v27 = v40;
    v28 = v47;
    (*(v40 + 16))(v35, v17, v47);
    v29 = v49;
    v42 = v17;

    sub_238DAA4D4();
    (*((*MEMORY[0x277D85000] & *v25) + 0x58))(v52, v23, v12);
    v50[6] = v52[6];
    v50[7] = v52[7];
    v51 = v53;
    v50[2] = v52[2];
    v50[3] = v52[3];
    v50[4] = v52[4];
    v50[5] = v52[5];
    v50[0] = v52[0];
    v50[1] = v52[1];
    _Block_copy(v29);
    sub_238DA8504(v50, v29);
    _Block_release(v29);

    (*(v48 + 8))(v12, v36);
    (*(v27 + 8))(v42, v28);
    (*(v43 + 8))(v23, v44);
    sub_238DAA050(v52);
    _Block_release(v29);
  }

  else
  {
    sub_238DA9FA8();
    v30 = swift_allocError();
    *v31 = 0;
    v32 = sub_238DAA444();
    v33 = v49;
    (*(v49 + 2))(v49, 0, v32);

    _Block_release(v33);
  }
}

void sub_238DA97F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, const void *a6)
{
  v27[1] = a1;
  v27[2] = a2;
  v9 = sub_238DAA524();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DCD8, &qword_238DAAEA0);
  v12 = *(v28 - 8);
  v13 = MEMORY[0x28223BE20](v28);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v30 = a6;
  _Block_copy(a6);
  v18 = sub_238DA70A0();
  if (v18)
  {
    v19 = v18;
    sub_238DA9FFC(a3, a4);
    v20 = v9;
    sub_238DAA4F4();
    v21 = v28;
    (*(v12 + 16))(v15, v17, v28);

    sub_238DAA504();
    (*((*MEMORY[0x277D85000] & *v19) + 0x60))(v33, v11);
    v31[6] = v33[6];
    v31[7] = v33[7];
    v32 = v34;
    v31[2] = v33[2];
    v31[3] = v33[3];
    v31[4] = v33[4];
    v31[5] = v33[5];
    v31[0] = v33[0];
    v31[1] = v33[1];
    v22 = v30;
    _Block_copy(v30);
    sub_238DA8504(v31, v22);
    _Block_release(v22);

    (*(v29 + 8))(v11, v20);
    (*(v12 + 8))(v17, v21);
    sub_238DAA050(v33);
    _Block_release(v22);
  }

  else
  {
    sub_238DA9FA8();
    v23 = swift_allocError();
    *v24 = 0;
    v25 = sub_238DAA444();
    v26 = v30;
    (*(v30 + 2))(v30, 0, v25);

    _Block_release(v26);
  }
}

void sub_238DA9B48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void, void))
{
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v9 = sub_238DAA4E4();
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DC98, &qword_238DAAE80);
  v31 = *(v38 - 8);
  v12 = MEMORY[0x28223BE20](v38);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = sub_238DAA524();
  v36 = *(v17 - 8);
  v37 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a8);
  v20 = sub_238DA70A0();
  if (v20)
  {
    v21 = v20;
    v40 = v9;

    sub_238DAA514();
    v29 = a8;
    v30 = v16;
    v22 = v31;
    sub_238DA9FFC(v32, v33);
    sub_238DAA4F4();
    v23 = v16;
    v24 = v38;
    (*(v22 + 16))(v14, v23, v38);

    sub_238DAA4D4();
    (*((*MEMORY[0x277D85000] & *v21) + 0x68))(v43, v19, v11);
    v41[6] = v43[6];
    v41[7] = v43[7];
    v42 = v44;
    v41[2] = v43[2];
    v41[3] = v43[3];
    v41[4] = v43[4];
    v41[5] = v43[5];
    v41[0] = v43[0];
    v41[1] = v43[1];
    v25 = v29;
    _Block_copy(v29);
    sub_238DA8504(v41, v25);
    _Block_release(v25);

    (*(v39 + 8))(v11, v40);
    (*(v22 + 8))(v30, v24);
    (*(v36 + 8))(v19, v37);
    sub_238DAA050(v43);
    _Block_release(v25);
  }

  else
  {
    sub_238DA9FA8();
    v26 = swift_allocError();
    *v27 = 0;
    v28 = sub_238DAA444();
    (a8)[2](a8, 0, v28);

    _Block_release(a8);
  }
}

uint64_t sub_238DA9F54(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_238DA9FA8()
{
  result = qword_27DF6DCA0;
  if (!qword_27DF6DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6DCA0);
  }

  return result;
}

void sub_238DA9FFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_238DAA0A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_238DAA104(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_238DA9FFC(a1, a2);
  }
}

uint64_t sub_238DAA118(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238DA9F54(result, a2);
  }

  return result;
}

void sub_238DAA12C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_238DAA170(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_238DAA1B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_238DAA220(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShieldConfigurationExtensionContext.ExtensionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ShieldConfigurationExtensionContext.ExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238DAA3F0()
{
  result = qword_27DF6DCF0;
  if (!qword_27DF6DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6DCF0);
  }

  return result;
}