uint64_t sub_2708423D0()
{

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_270842440@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_270842490()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2708424C8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_270842500()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_270842550()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_270842588()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2708425C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_270842600()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_270842638()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_270842678()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2708426B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2708426EC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_270842724()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_27084276C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2708427AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

char *UserDomainConceptChangeProvider.init(conceptStore:)(void *a1)
{
  v3 = OBJC_IVAR____TtC25UserDomainConceptsSupport31UserDomainConceptChangeProvider_udcChangesSubject;
  v10 = 0;
  LOBYTE(v11) = 3;
  sub_27084290C();
  swift_allocObject();
  *&v1[v3] = sub_27084C81C();
  *&v1[OBJC_IVAR____TtC25UserDomainConceptsSupport31UserDomainConceptChangeProvider_udcStore] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for UserDomainConceptChangeProvider();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  v6 = *&v5[OBJC_IVAR____TtC25UserDomainConceptsSupport31UserDomainConceptChangeProvider_udcStore];
  v7 = v5;
  [v6 setDelegate_];

  return v7;
}

void sub_27084290C()
{
  if (!qword_280CF7DC8)
  {
    v0 = sub_27084C80C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CF7DC8);
    }
  }
}

char *UserDomainConceptChangeProvider.__allocating_init(with:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCDB48]) initWithHealthStore_];
  v3 = objc_allocWithZone(type metadata accessor for UserDomainConceptChangeProvider());
  v4 = UserDomainConceptChangeProvider.init(conceptStore:)(v2);

  return v4;
}

uint64_t sub_270842A6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_270842E08();
  sub_27084C9DC();
  v6 = a1;

  sub_27084C7FC();
}

id UserDomainConceptChangeProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserDomainConceptChangeProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserDomainConceptChangeProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_25UserDomainConceptsSupport0aB13ConceptChangeO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_270842BEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_270842C34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_270842C7C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

void type metadata accessor for HKListUserDomainType()
{
  if (!qword_280CF79F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280CF79F0);
    }
  }
}

unint64_t sub_270842E08()
{
  result = qword_280CF7A68;
  if (!qword_280CF7A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CF7A68);
  }

  return result;
}

id ListConceptManagerState.listUDC.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t ListConceptManagerState.listName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ListConceptManagerState.init(concepts:list:)@<X0>(id a1@<X1>, unint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = [a1 listType];
  v7 = [a1 listName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_27084C94C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = a1;
  v13 = sub_270843048(a2);

  v14 = sub_270843368(a2);

  result = sub_270847FD8(v15);
  *a3 = a1;
  *(a3 + 8) = v6;
  *(a3 + 16) = v9;
  *(a3 + 24) = v11;
  *(a3 + 32) = v13;
  *(a3 + 40) = v13;
  *(a3 + 48) = v14;
  *(a3 + 56) = 0;
  return result;
}

uint64_t ListConceptManagerState.init(concepts:listType:listName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];

  result = sub_270847FD8(v11);
  *a5 = 0;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v13;
  *(a5 + 40) = v10;
  *(a5 + 48) = a1;
  *(a5 + 56) = 0;
  return result;
}

uint64_t sub_270843048(unint64_t a1)
{
  v2 = [v1 linkCollection];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
    v5 = [v2 links];

    sub_27084A62C(0, &unk_280CF79E0, 0x277CCDB00);
    v6 = sub_27084C9DC();

    v15 = v3;
    if (v6 >> 62)
    {
LABEL_19:
      v7 = sub_27084CB5C();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    while (v7 != v8)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2743AB6A0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = sub_2708470B8(v9, a1);

      ++v8;
      if (v12)
      {
        MEMORY[0x2743AB540]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_27084C9FC();
        }

        sub_27084CA2C();
        v3 = v15;
        v8 = v11;
      }
    }
  }

  return v3;
}

uint64_t HKListUserDomainConcept.linkElements<A>(from:)(uint64_t a1, uint64_t a2)
{
  v3 = [v2 linkCollection];
  if (!v3)
  {
    return sub_27084CA0C();
  }

  v4 = v3;
  v5 = [v3 links];

  sub_27084A62C(0, &unk_280CF79E0, 0x277CCDB00);
  sub_27084C9DC();

  MEMORY[0x28223BE20](v6);
  sub_270849FE4(0, &qword_280CF7A08, &unk_280CF79E0, 0x277CCDB00, MEMORY[0x277D83940]);
  sub_2708480E4();
  v7 = sub_27084C98C();

  return v7;
}

uint64_t sub_270843368(unint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_27084C74C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = [v2 linkCollection];
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = v10;
    v13 = [v10 links];

    sub_27084A62C(0, &unk_280CF79E0, 0x277CCDB00);
    v14 = sub_27084C9DC();

    if (v14 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_27084CB5C())
    {
      v16 = 0;
      v39 = v14 & 0xFFFFFFFFFFFFFF8;
      v40 = v14 & 0xC000000000000001;
      v37 = (v4 + 32);
      v17 = MEMORY[0x277D84F90];
      v38 = i;
      while (1)
      {
        if (v40)
        {
          v18 = MEMORY[0x2743AB6A0](v16, v14);
        }

        else
        {
          if (v16 >= *(v39 + 16))
          {
            goto LABEL_18;
          }

          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        v20 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v21 = [v18 targetUUID];
        sub_27084C73C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_27084782C(0, v17[2] + 1, 1, v17);
        }

        v23 = v17[2];
        v22 = v17[3];
        if (v23 >= v22 >> 1)
        {
          v17 = sub_27084782C((v22 > 1), v23 + 1, 1, v17);
        }

        v17[2] = v23 + 1;
        (*(v4 + 32))(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23, v9, v3);
        ++v16;
        if (v20 == v38)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    v17 = MEMORY[0x277D84F90];
LABEL_21:

    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v42 = v11;
  if (!(v35 >> 62))
  {
    result = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_24;
    }

LABEL_40:
    v36 = MEMORY[0x277D84F90];
LABEL_41:

    return v36;
  }

  result = sub_27084CB5C();
  if (!result)
  {
    goto LABEL_40;
  }

LABEL_24:
  if (result >= 1)
  {
    v25 = 0;
    v34 = v35 + 32;
    v37 = (v4 + 8);
    v38 = v35 & 0xC000000000000001;
    v36 = MEMORY[0x277D84F90];
    v39 = result;
    do
    {
      if (v38)
      {
        v26 = MEMORY[0x2743AB6A0](v25, v35);
      }

      else
      {
        v26 = *(v34 + 8 * v25);
      }

      v27 = v26;
      v40 = v25 + 1;
      v28 = [v26 UUID];
      sub_27084C73C();

      v30 = 0;
      v31 = v17[2];
      while (v31 != v30)
      {
        v32 = v30 + 1;
        sub_27084A6D8(&qword_280CF7A48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v29 = sub_27084C92C();
        v30 = v32;
        if (v29)
        {
          goto LABEL_26;
        }
      }

      v41 = v27;
      MEMORY[0x28223BE20](v29);
      *(&v34 - 2) = &v41;
      if (sub_270848208(sub_27084A868, (&v34 - 4), v36))
      {
LABEL_26:
        (*v37)(v7, v3);

        goto LABEL_27;
      }

      v33 = v27;
      MEMORY[0x2743AB540]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27084C9FC();
      }

      sub_27084CA2C();

      (*v37)(v7, v3);
      v36 = v42;
LABEL_27:
      v25 = v40;
    }

    while (v40 != v39);
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

id HKListUserDomainConcept.nonlinkElements<A>(from:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = sub_27084C74C();
  v5 = *(v37 - 8);
  v6 = MEMORY[0x28223BE20](v37);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = [v3 linkCollection];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 links];

    sub_27084A62C(0, &unk_280CF79E0, 0x277CCDB00);
    v14 = sub_27084C9DC();

    if (v14 >> 62)
    {
      goto LABEL_19;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v8; v15; i = v8)
    {
      v16 = 0;
      v35 = v14 & 0xFFFFFFFFFFFFFF8;
      v36 = (v14 & 0xC000000000000001);
      v33 = v5 + 32;
      v17 = MEMORY[0x277D84F90];
      v34 = v15;
      while (1)
      {
        if (v36)
        {
          v18 = MEMORY[0x2743AB6A0](v16, v14);
        }

        else
        {
          if (v16 >= *(v35 + 16))
          {
            goto LABEL_18;
          }

          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        v20 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v8 = v14;
        v21 = [v18 targetUUID];
        sub_27084C73C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_27084782C(0, v17[2] + 1, 1, v17);
        }

        v23 = v17[2];
        v22 = v17[3];
        if (v23 >= v22 >> 1)
        {
          v17 = sub_27084782C((v22 > 1), v23 + 1, 1, v17);
        }

        v17[2] = v23 + 1;
        (*(v5 + 32))(v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v10, v37);
        ++v16;
        v14 = v8;
        if (v20 == v34)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v15 = sub_27084CB5C();
    }

    v17 = MEMORY[0x277D84F90];
LABEL_21:

    v8 = i;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v40 = sub_27084C91C();
  if (sub_27084CA4C())
  {
    v36 = (v5 + 8);
    v24 = 4;
    v25 = 0x279E0C000uLL;
    while (1)
    {
      v26 = sub_27084CA1C();
      sub_27084C9EC();
      result = (v26 & 1) != 0 ? *(a1 + 8 * v24) : sub_27084CB0C();
      v28 = result;
      v29 = v24 - 3;
      if (__OFADD__(v24 - 4, 1))
      {
        break;
      }

      v30 = [result *(v25 + 2344)];
      sub_27084C73C();

      if (sub_270846C14(v8, v17))
      {
        (*v36)(v8, v37);
      }

      else
      {
        v38 = v28;
        v39 = v40;
        sub_27084CA5C();
        swift_getWitnessTable();
        swift_getWitnessTable();
        if (sub_27084C9AC())
        {
          (*v36)(v8, v37);
        }

        else
        {
          v39 = v28;
          sub_27084CA3C();
          (*v36)(v8, v37);
        }

        v25 = 0x279E0C000;
      }

      ++v24;
      if (v29 == sub_27084CA4C())
      {
        goto LABEL_35;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_35:

    return v40;
  }

  return result;
}

double sub_270843D58()
{
  v0 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D84F90];
  sub_270847FD8(MEMORY[0x277D84F90]);
  result = 0.0;
  xmmword_28083BCE0 = 0u;
  *algn_28083BCF0 = 0u;
  *&xmmword_28083BD00 = v2;
  *(&xmmword_28083BD00 + 1) = v0;
  qword_28083BD10 = v0;
  byte_28083BD18 = 0;
  return result;
}

uint64_t static ListConceptManagerState.empty.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_28083BBF0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28083BCF0;
  v7[0] = xmmword_28083BCE0;
  v7[1] = *algn_28083BCF0;
  v2 = xmmword_28083BD00;
  v8[0] = xmmword_28083BD00;
  v3 = *(&xmmword_28083BD00 + 9);
  *(v8 + 9) = *(&xmmword_28083BD00 + 9);
  *a1 = xmmword_28083BCE0;
  a1[1] = v1;
  a1[2] = v2;
  *(a1 + 41) = v3;
  return sub_27084865C(v7, &v6);
}

double sub_270843E48()
{
  v0 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D84F90];
  sub_270847FD8(MEMORY[0x277D84F90]);
  result = 0.0;
  xmmword_280CF7B60 = 0u;
  *algn_280CF7B70 = 0u;
  *&xmmword_280CF7B80 = v2;
  *(&xmmword_280CF7B80 + 1) = v0;
  qword_280CF7B90 = v0;
  byte_280CF7B98 = 1;
  return result;
}

uint64_t sub_270843EA8()
{
  sub_270848694(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *(v0 + 40);
  sub_27084A554(0, &qword_280CF7AE8, &type metadata for ListConceptManagerState);
  sub_270848728(&qword_280CF7A28, &qword_280CF7AE8, &type metadata for ListConceptManagerState);

  sub_27084C89C();

  sub_27084A6D8(&qword_280CF7A38, sub_270848694, MEMORY[0x277CBCC90]);
  v6 = sub_27084C87C();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_270844050@<X0>(uint64_t a1@<X8>)
{
  sub_27084C7EC();
  v10[0] = v7;
  v10[1] = v8;
  v11[0] = *v9;
  *(v11 + 9) = *&v9[9];
  v2 = v7;
  sub_270848778(v10);
  if (v7)
  {
    v3 = [v2 UUID];

    sub_27084C73C();
    v4 = sub_27084C74C();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }

  else
  {
    v6 = sub_27084C74C();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_270844160()
{
  sub_27084C7EC();
  v5[0] = v2;
  v5[1] = v3;
  v6[0] = *v4;
  *(v6 + 9) = *&v4[9];
  v0 = v2;
  sub_270848778(v5);
  return v2;
}

BOOL sub_2708441BC()
{
  sub_27084C7EC();
  v4[0] = v1;
  v4[1] = v2;
  *v5 = *v3;
  *&v5[9] = *&v3[9];
  sub_270848778(v4);
  return (v5[24] & 1) == 0;
}

uint64_t sub_27084423C()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_270844290()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_2708442E4()
{
  v1 = v0;
  v2 = sub_27084CBAC();
  MEMORY[0x2743AB4F0](v2);

  MEMORY[0x2743AB4F0](8285, 0xE200000000000000);
  v3 = v0[12];
  v4 = v0[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  (*(v4 + 8))(v3, v4);
  v5 = HKStringFromListUserDomainType();
  v6 = sub_27084C94C();
  v8 = v7;

  MEMORY[0x2743AB4F0](v6, v8);

  MEMORY[0x2743AB4F0](8736, 0xE200000000000000);
  v9 = v1[12];
  v10 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v9);
  v11 = (*(v10 + 16))(v9, v10);
  MEMORY[0x2743AB4F0](v11);

  MEMORY[0x2743AB4F0](34, 0xE100000000000000);
  return 91;
}

void *ListConceptManager.__allocating_init(healthStore:provider:udcChangeProvider:test_skipInitialLoad:)(void *a1, void *a2, char *a3, uint64_t a4)
{
  v5 = a4;
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = sub_27084988C(a1, v11, a3, v5, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v12;
}

void *ListConceptManager.init(healthStore:provider:udcChangeProvider:test_skipInitialLoad:)(void *a1, void *a2, char *a3, uint64_t a4)
{
  v5 = a4;
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_270849054(a1, v13, a3, v5, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v15;
}

uint64_t sub_2708445D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_270844E04();
  }

  return result;
}

uint64_t sub_270844630(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_270844E04();
  }

  return result;
}

uint64_t sub_270844688(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2708446CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_270844764(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_270844800()
{
  v1 = sub_27084C8CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_27084C8EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_270844B88();
  aBlock[4] = sub_27084A844;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_270844688;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  sub_27084C8DC();
  v12[1] = MEMORY[0x277D84F90];
  sub_27084A6D8(&qword_280CF7AB8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2708499B8(0, &qword_280CF7AB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_270849A1C();
  sub_27084CACC();
  MEMORY[0x2743AB620](0, v8, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t ListConceptManager.deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 32);

    v2(v4);
    sub_270849AA4(v2, v3);
  }

  sub_270849AA4(*(v1 + 24), *(v1 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 72));

  return v1;
}

uint64_t ListConceptManager.__deallocating_deinit()
{
  ListConceptManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

id sub_270844B88()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = sub_27084C93C();
    v4 = HKCreateSerialDispatchQueue();

    v5 = *(v0 + 48);
    *(v0 + 48) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_270844C18@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_27084C8FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = sub_270844B88();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_27084C90C();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (a2)
    {
      v14 = a2;

      return ListConceptManagerState.init(concepts:list:)(v14, v15, a3);
    }

    else
    {
      v16 = v4[12];
      v17 = v4[13];
      __swift_project_boxed_opaque_existential_1(v4 + 9, v16);
      v18 = (*(v17 + 8))(v16, v17);
      v19 = v4[12];
      v20 = v4[13];
      __swift_project_boxed_opaque_existential_1(v4 + 9, v19);
      v21 = (*(v20 + 16))(v19, v20);
      v23 = v22;
      v24 = MEMORY[0x277D84F90];
      v27 = MEMORY[0x277D84F90];
      swift_bridgeObjectRetain_n();
      result = sub_270847FD8(a1);
      v25 = v27;
      *a3 = 0;
      *(a3 + 8) = v18;
      *(a3 + 16) = v21;
      *(a3 + 24) = v23;
      *(a3 + 32) = v25;
      *(a3 + 40) = v24;
      *(a3 + 48) = a1;
      *(a3 + 56) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_270844E04()
{
  v1 = v0;
  sub_2708499B8(0, &qword_280CF7A80, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  sub_27084A144(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_27084C8FC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = sub_270844B88();
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v14 = sub_27084C90C();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v16 = *v1;
    v33 = v6;
    v17 = v1[12];
    v18 = v1[13];
    v31 = v16;
    __swift_project_boxed_opaque_existential_1(v1 + 9, v17);
    v19 = (*(v18 + 24))(v1[7], v17, v18);
    v34 = v1[6];
    v20 = v34;
    v35 = v19;
    v21 = sub_27084CA8C();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    sub_27084A210(0);
    sub_27084A62C(0, &qword_280CF7A70, 0x277D85C78);
    v32 = v7;
    sub_27084A6D8(&qword_280CF7B20, sub_27084A210, MEMORY[0x277CBCD90]);
    sub_27084A354();
    v22 = v20;
    sub_27084C8AC();
    sub_27084A3BC(v4);

    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v25 = v31;
    *(v24 + 16) = v23;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_27084A450;
    *(v27 + 24) = v26;
    sub_27084A6D8(&qword_280CF7B40, sub_27084A144, MEMORY[0x277CBCD60]);
    v28 = v33;
    v29 = sub_27084C88C();

    (*(v32 + 8))(v9, v28);
    v1[16] = v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2708452AC(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v3)
    {
      v5 = sub_27084CA6C();
      v6 = HKLogHealthOntology();
      sub_270849E90(0, &qword_280CF79C8, &qword_280CF79C0, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_27084D3D0;
      sub_270849DF8();
      v8 = sub_27084C95C();
      v10 = v9;
      v11 = MEMORY[0x277D837D0];
      *(v7 + 56) = MEMORY[0x277D837D0];
      v12 = sub_270849E3C();
      *(v7 + 64) = v12;
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      *&v18[0] = v3;
      v13 = v3;
      sub_270849EF8(0, &qword_280CF7A50, MEMORY[0x277D84948]);
      v14 = sub_27084C95C();
      *(v7 + 96) = v11;
      *(v7 + 104) = v12;
      *(v7 + 72) = v14;
      *(v7 + 80) = v15;
      sub_27084C77C(v5, &dword_270841000, v6, "[%{public}@] failed to fetch concepts %{public}@", 48, 2, v7);

      sub_270844C18(MEMORY[0x277D84F90], 0, v16);
      sub_27084C7DC();
      v18[0] = v16[0];
      v18[1] = v16[1];
      v19[0] = v17[0];
      *(v19 + 9) = *(v17 + 9);
      sub_270848778(v18);
    }
  }

  return result;
}

uint64_t sub_270845484(unint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = sub_270845574(a2);
    if (v6)
    {
      v7 = v6;
      sub_270844C18(a1, v6, v8);
      sub_27084C7DC();
    }

    else
    {
      sub_270844C18(a1, 0, v8);
      sub_27084C7DC();
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11[0] = v9[0];
    *(v11 + 9) = *(v9 + 9);
    sub_270848778(v10);
  }

  return result;
}

void *sub_270845574(unint64_t a1)
{
  v2 = a1;
  v3 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v4 = sub_27084CB5C();
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x2743AB6A0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v6 = *(v2 + 32);
  }

  v1 = v6;
  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (!v3)
  {
    v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  if (v2 < 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_27084CB5C() < 1)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v7 = sub_27084CB5C();
LABEL_15:
  if (v7 < v4)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v5 || v4 == 1)
  {

    if (!v3)
    {
      goto LABEL_21;
    }

LABEL_24:

    v2 = sub_27084CB6C();
    v8 = v12;
    v4 = v13;
    if (v13)
    {
      goto LABEL_26;
    }

LABEL_25:
    sub_2708484D8(v2, v11, v8, v4);
    v4 = v14;
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  sub_27084A62C(0, &qword_280CF7A60, 0x277CCD580);

  v9 = 1;
  do
  {
    v10 = v9 + 1;
    sub_27084CAFC();
    v9 = v10;
  }

  while (v4 != v10);
  if (v3)
  {
    goto LABEL_24;
  }

LABEL_21:
  v2 &= 0xFFFFFFFFFFFFFF8uLL;
  v11 = v2 + 32;
  v8 = 1;
  v4 = (2 * v4) | 1;
  if ((v4 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_26:
  v5 = v11;
  sub_27084CB9C();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v15 + 16);

  if (__OFSUB__(v4 >> 1, v8))
  {
    goto LABEL_48;
  }

  if (v16 != (v4 >> 1) - v8)
  {
LABEL_49:
    swift_unknownObjectRelease();
    v11 = v5;
    goto LABEL_25;
  }

  v4 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v4)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

LABEL_33:
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_45:
    if (!sub_27084CB5C())
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (*(v4 + 16))
  {
LABEL_36:
    v17 = sub_2708457F4(v1, v4);

    v1 = v17;
  }

LABEL_37:

  return v1;
}

id sub_2708457F4(void *a1, unint64_t a2)
{
  v5 = sub_27084CA7C();
  v6 = HKLogHealthOntology();
  v7 = a2 >> 62;
  if (os_log_type_enabled(v6, v5))
  {
    swift_bridgeObjectRetain_n();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock = v38;
    *v8 = 136446722;
    v10 = sub_2708442E4();
    v12 = sub_270847A28(v10, v11, &aBlock);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2050;
    if (v7)
    {
      v13 = sub_27084CB5C();
    }

    else
    {
      v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 14) = v13;

    *(v8 + 22) = 2114;
    *(v8 + 24) = a1;
    *v9 = a1;
    v14 = a1;
    _os_log_impl(&dword_270841000, v6, v5, "%{public}s merge %{public}ld duplicate lists into %{public}@", v8, 0x20u);
    sub_270849F5C(v9);
    MEMORY[0x2743ABBC0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x2743ABBC0](v38, -1, -1);
    MEMORY[0x2743ABBC0](v8, -1, -1);
  }

  v36 = swift_allocObject();
  *(v36 + 16) = a1;
  if (v7)
  {
LABEL_21:
    v15 = sub_27084CB5C();
  }

  else
  {
    v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v2;
  v16 = a1;
  a1 = v16;
  if (v15)
  {
    v17 = 0;
    v18 = a2 & 0xC000000000000001;
    v19 = a2;
    a2 &= 0xFFFFFFFFFFFFFF8uLL;
    while (1)
    {
      if (v18)
      {
        v20 = MEMORY[0x2743AB6A0](v17, v19);
      }

      else
      {
        if (v17 >= *(a2 + 16))
        {
          goto LABEL_20;
        }

        v20 = *(v19 + 8 * v17 + 32);
      }

      v21 = v20;
      v2 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v22 = [a1 copyUserDomainConceptByMergingInConcept_];
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (!v23)
      {
        break;
      }

      v24 = v23;

      *(v36 + 16) = v24;
      ++v17;
      a1 = v24;
      if (v2 == v15)
      {
        goto LABEL_18;
      }
    }

    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_27084CAEC();

    aBlock = 0x7420656C62616E55;
    v40 = 0xEF2074736163206FLL;
    v31 = a1;
    v32 = [v31 description];
    v33 = sub_27084C94C();
    v35 = v34;

    MEMORY[0x2743AB4F0](v33, v35);

    MEMORY[0x2743AB4F0](0xD00000000000001BLL, 0x800000027084D7E0);
    result = sub_27084CB4C();
    __break(1u);
  }

  else
  {
    v24 = v16;
LABEL_18:
    v25 = *(v37 + 64);
    v26 = swift_allocObject();
    *(v26 + 16) = v37;
    *(v26 + 24) = v36;
    v43 = sub_270849F54;
    v44 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_270845F94;
    v42 = &block_descriptor_42;
    v27 = _Block_copy(&aBlock);

    v28 = v24;

    [v25 saveOrUpdateUserDomainConcept:v28 completion:v27];
    _Block_release(v27);

    swift_beginAccess();
    v29 = *(v36 + 16);

    return v29;
  }

  return result;
}

uint64_t sub_270845C70(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_27084C74C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v11 = sub_27084CA6C();
    v12 = HKLogHealthOntology();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32[0] = v30;
      *v13 = 136446722;
      v29 = v11;
      v14 = sub_2708442E4();
      v16 = sub_270847A28(v14, v15, v32);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      swift_beginAccess();
      v17 = [*(a4 + 16) UUID];
      sub_27084C73C();

      sub_27084A6D8(&qword_28083BD38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_27084CB7C();
      v20 = v19;
      (*(v8 + 8))(v10, v7);
      v21 = sub_270847A28(v18, v20, v32);

      *(v13 + 14) = v21;
      *(v13 + 22) = 2082;
      v31 = a2;
      v22 = a2;
      sub_270849E90(0, &qword_28083BD20, &qword_280CF7A50, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
      v23 = sub_27084C95C();
      v25 = sub_270847A28(v23, v24, v32);

      *(v13 + 24) = v25;
      _os_log_impl(&dword_270841000, v12, v29, "%{public}s error persisting merged list %{public}s: %{public}s", v13, 0x20u);
      v26 = v30;
      swift_arrayDestroy();
      MEMORY[0x2743ABBC0](v26, -1, -1);
      MEMORY[0x2743ABBC0](v13, -1, -1);
    }
  }

  swift_beginAccess();
  LOBYTE(v31) = 1;

  sub_27084C7DC();
}

void sub_270845F94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_27084600C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  v10 = v4[8];
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = v9;
  v12[6] = v11;
  v15[4] = sub_270849DE8;
  v15[5] = v12;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_270845F94;
  v15[3] = &block_descriptor_30;
  v13 = _Block_copy(v15);

  sub_270849AC4(a2, a3);

  [v10 saveOrUpdateUserDomainConcept:a1 completion:v13];
  _Block_release(v13);
}

uint64_t sub_270846198(char a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_27084C8CC();
  v40 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v38 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_27084C8EC();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v34 = sub_27084CA6C();
    v33 = HKLogHealthOntology();
    sub_270849E90(0, &qword_280CF79C8, &qword_280CF79C0, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v16 = swift_allocObject();
    v35 = a5;
    v17 = v16;
    *(v16 + 16) = xmmword_27084D3D0;
    aBlock[0] = a3;
    sub_270849DF8();
    v18 = sub_27084C95C();
    v20 = v19;
    v17[7] = MEMORY[0x277D837D0];
    v21 = sub_270849E3C();
    v17[8] = v21;
    v17[4] = v18;
    v17[5] = v20;
    aBlock[0] = a2;
    v22 = a2;
    sub_270849E90(0, &qword_28083BD20, &qword_280CF7A50, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
    v23 = sub_27084C95C();
    v17[12] = MEMORY[0x277D837D0];
    v17[13] = v21;
    v17[9] = v23;
    v17[10] = v24;
    v25 = v33;
    sub_27084C77C(v34, &dword_270841000, v33, "list state save error %{public}@", 32, 2, v17);
  }

  if (a4)
  {
    a4(a1 & 1);
  }

  swift_beginAccess();
  swift_beginAccess();
  *(a6 + 16) = 0;

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    v28 = sub_270844B88();
    aBlock[4] = sub_27084A844;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_270844688;
    aBlock[3] = &block_descriptor_33;
    v29 = _Block_copy(aBlock);

    v30 = v36;
    sub_27084C8DC();
    v41 = MEMORY[0x277D84F90];
    sub_27084A6D8(&qword_280CF7AB8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_2708499B8(0, &qword_280CF7AB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_270849A1C();
    v31 = v38;
    sub_27084CACC();
    MEMORY[0x2743AB620](0, v30, v31, v29);
    _Block_release(v29);

    (*(v40 + 8))(v31, v13);
    (*(v37 + 8))(v30, v39);
  }

  return result;
}

uint64_t sub_270846654(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_27084C8CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_27084C8EC();
  v11 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v24[0] = *a1;
  v24[1] = v14;
  v25[0] = a1[2];
  *(v25 + 9) = *(a1 + 41);
  v15 = sub_270844B88();
  v16 = swift_allocObject();
  v17 = a1[1];
  *(v16 + 24) = *a1;
  *(v16 + 16) = v3;
  *(v16 + 40) = v17;
  *(v16 + 56) = a1[2];
  *(v16 + 65) = *(a1 + 41);
  *(v16 + 88) = a2;
  *(v16 + 96) = a3;
  aBlock[4] = sub_270849AB4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_270844688;
  aBlock[3] = &block_descriptor_3;
  v18 = _Block_copy(aBlock);

  sub_27084865C(v24, v22);
  sub_270849AC4(a2, a3);
  sub_27084C8DC();
  v22[0] = MEMORY[0x277D84F90];
  sub_27084A6D8(&qword_280CF7AB8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2708499B8(0, &qword_280CF7AB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_270849A1C();
  sub_27084CACC();
  MEMORY[0x2743AB620](0, v13, v10, v18);
  _Block_release(v18);

  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v21);
}

void sub_270846984(uint64_t a1, void **a2, void (*a3)(uint64_t), uint64_t a4)
{
  sub_27084C7EC();
  v22[0] = v19;
  v22[1] = v20;
  v23[0] = *v21;
  *(v23 + 9) = *&v21[9];
  v7 = v19;
  sub_270848778(v22);
  v8 = *a2;
  if (v19)
  {
    if (!v8)
    {
LABEL_13:
      if (a3)
      {
        a3(1);
      }

      return;
    }

    v9 = v8;
    v10 = [v9 linkCollection];
    v11 = [v7 linkCollection];
    v12 = v11;
    if (v10)
    {
      if (v11)
      {
        sub_27084A62C(0, &qword_28083BD40, 0x277CCDB08);
        v13 = sub_27084CAAC();

        if ((v13 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_12;
      }

      v12 = v10;
    }

    else if (!v11)
    {
LABEL_12:

      goto LABEL_13;
    }

LABEL_21:
    v18 = [v7 copyUserDomainConceptByMergingInConcept_];
    sub_27084600C(v18, a3, a4);

    return;
  }

  if (v8)
  {
    v14 = v8;
    v15 = [v14 linkCollection];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 count];

      if (v17 >= 1)
      {
        sub_27084600C(v14, a3, a4);

        return;
      }
    }
  }

  if (a3)
  {
    a3(1);
  }
}

uint64_t ListConceptManager.contains(_:)(uint64_t a1)
{
  sub_27084C7EC();
  v9[1] = v7;
  v10[0] = v8[0];
  *(v10 + 9) = *(v8 + 9);
  v9[0] = v6;
  v2 = *(&v10[0] + 1);

  sub_270848778(v9);
  v5 = a1;
  v4[2] = &v5;
  LOBYTE(a1) = sub_270848208(sub_270849AD4, v4, v2);

  return a1 & 1;
}

BOOL sub_270846C14(uint64_t a1, uint64_t a2)
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

    sub_27084C74C();
    ++v2;
    sub_27084A6D8(&qword_280CF7A48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  }

  while ((sub_27084C92C() & 1) == 0);
  return v3 != v4;
}

BOOL ListConceptManager.isListItemsEmpty.getter()
{
  sub_27084C7EC();
  v6[1] = v4;
  v7[0] = *v5;
  *(v7 + 9) = *&v5[9];
  v6[0] = v3;
  v0 = *(&v7[0] + 1);

  sub_270848778(v6);
  if (v0 >> 62)
  {
    v1 = sub_27084CB5C();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

BOOL ListConceptManager.isNonlistItemsEmpty.getter()
{
  sub_27084C7EC();
  *&v7[9] = *&v5[9];
  v6[0] = v3;
  v6[1] = v4;
  *v7 = *v5;
  v0 = *&v5[9] >> 56;

  sub_270848778(v6);
  if (v0 >> 62)
  {
    v1 = sub_27084CB5C();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

BOOL ListConceptManager.hasNoItems.getter()
{
  sub_27084C7EC();
  v11[1] = v9;
  v12[0] = *v10;
  *(v12 + 9) = *&v10[9];
  v11[0] = v8;
  v0 = *(&v12[0] + 1);

  sub_270848778(v11);
  if (v0 >> 62)
  {
    v1 = sub_27084CB5C();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1)
  {
    return 0;
  }

  sub_27084C7EC();
  *&v10[9] = *&v7[9];
  v8 = v5;
  v9 = v6;
  *v10 = *v7;
  v3 = *&v7[9] >> 56;

  sub_270848778(&v8);
  if (v3 >> 62)
  {
    v4 = sub_27084CB5C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 == 0;
}

uint64_t ListConceptManager.listElements.getter()
{
  sub_27084C7EC();
  v5[1] = v3;
  v6[0] = *v4;
  *(v6 + 9) = *&v4[9];
  v5[0] = v2;
  v0 = *(&v6[0] + 1);

  sub_270848778(v5);
  return v0;
}

uint64_t ListConceptManager.nonListElements.getter()
{
  sub_27084C7EC();
  *&v5[9] = *&v3[9];
  v4[0] = v1;
  v4[1] = v2;
  *v5 = *v3;

  sub_270848778(v4);
  return *&v3[9] >> 56;
}

void *static ListConceptManager.pinnedLabs(for:udcChangeProvider:)(void *a1, void *a2)
{
  v4 = HKStringFromListUserDomainType();
  v5 = sub_27084C94C();
  v7 = v6;

  type metadata accessor for ListConceptManager();
  v8 = swift_allocObject();
  v9 = a1;
  v10 = a2;

  return sub_27084883C(v9, 1, v5, v7, v10, 0, v8);
}

void *sub_2708470B8(void *a1, unint64_t a2)
{
  v4 = v2;
  v30 = a1;
  v29 = sub_27084C74C();
  v6 = *(v29 - 8);
  v7 = MEMORY[0x28223BE20](v29);
  v28 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v27 = &v22 - v9;
  if (a2 >> 62)
  {
LABEL_15:
    v10 = sub_27084CB5C();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v22 = v4;
      v23 = a2;
      v11 = 0;
      v25 = a2 & 0xFFFFFFFFFFFFFF8;
      v26 = a2 & 0xC000000000000001;
      v24 = ++v6;
      while (1)
      {
        if (v26)
        {
          v12 = MEMORY[0x2743AB6A0](v11, a2);
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_12:
            __break(1u);
            return v3;
          }
        }

        else
        {
          if (v11 >= *(v25 + 16))
          {
            __break(1u);
            goto LABEL_15;
          }

          v12 = *(a2 + 8 * v11 + 32);
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_12;
          }
        }

        v3 = v12;
        v14 = [v12 UUID];
        v15 = v27;
        sub_27084C73C();

        v16 = [v30 targetUUID];
        v17 = v28;
        sub_27084C73C();

        v4 = sub_27084C72C();
        v18 = *v6;
        v19 = v17;
        v20 = v29;
        (*v6)(v19, v29);
        v18(v15, v20);
        if (v4)
        {
          return v3;
        }

        ++v11;
        a2 = v23;
        if (v13 == v10)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_270847310(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_27084CA5C();
  swift_getWitnessTable();
  return sub_27084C99C();
}

uint64_t sub_2708473AC(id *a1, void *a2)
{
  v4 = sub_27084C74C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = [*a1 UUID];
  sub_27084C73C();

  v12 = [a2 targetUUID];
  sub_27084C73C();

  LOBYTE(v12) = sub_27084C72C();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  return v12 & 1;
}

uint64_t ListConceptManagerState.state(byMoving:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3[1];
  *v12 = *v3;
  v13 = v5;
  v14[0] = v3[2];
  *(v14 + 9) = *(v3 + 41);
  if (a1 != a2 && v12[0] && (v6 = [v12[0] listByMovingUserDomainConceptFromIndex:a1 toIndex:a2]) != 0)
  {
    v7 = v6;

    return ListConceptManagerState.init(concepts:list:)(v7, v8, a3);
  }

  else
  {
    v10 = v3[1];
    *a3 = *v3;
    a3[1] = v10;
    a3[2] = v3[2];
    *(a3 + 41) = *(v3 + 41);
    return sub_27084865C(v12, &v11);
  }
}

uint64_t ListConceptManagerState.state(byRemoving:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  return sub_270847608(a1, &selRef_listByRemovingUserDomainConcept_, a2);
}

{
  return sub_270847608(a1, &selRef_listByRemovingUserDomainConceptAtIndex_, a2);
}

uint64_t sub_270847608@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3[1];
  *v12 = *v3;
  v13 = v5;
  v14[0] = v3[2];
  *(v14 + 9) = *(v3 + 41);
  if (v12[0] && (v6 = [v12[0] *a2]) != 0)
  {
    v7 = v6;

    return ListConceptManagerState.init(concepts:list:)(v7, v8, a3);
  }

  else
  {
    v10 = v3[1];
    *a3 = *v3;
    a3[1] = v10;
    a3[2] = v3[2];
    *(a3 + 41) = *(v3 + 41);
    return sub_27084865C(v12, &v11);
  }
}

uint64_t ListConceptManagerState.state(byAdding:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  if (!*v2 || (v8 = [*v2 listByAddingUserDomainConcept_]) == 0)
  {
    if (v6)
    {
      v9 = sub_27084C93C();
    }

    else
    {
      v9 = 0;
    }

    v10 = [objc_allocWithZone(MEMORY[0x277CCD580]) initWithListType:v5 listName:v9];

    v8 = [v10 listByAddingUserDomainConcept_];
  }

  v11 = a1;
  MEMORY[0x2743AB540]();
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_27084C9FC();
  }

  sub_27084CA2C();

  return ListConceptManagerState.init(concepts:list:)(v8, v7, a2);
}

void *sub_27084782C(void *result, int64_t a2, char a3, void *a4)
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

  sub_2708499B8(0, &qword_280CF79D0, MEMORY[0x277CC95F0], MEMORY[0x277D84560]);
  v10 = *(sub_27084C74C() - 8);
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
  v15 = *(sub_27084C74C() - 8);
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

unint64_t sub_270847A28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_270847AF4(v11, 0, 0, 1, a1, a2);
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
    sub_27084A098(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_270847AF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_270847C00(a5, a6);
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
    result = sub_27084CB3C();
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

void *sub_270847C00(uint64_t a1, unint64_t a2)
{
  v3 = sub_270847C4C(a1, a2);
  sub_270847D7C(&unk_2880890D8);
  return v3;
}

void *sub_270847C4C(uint64_t a1, unint64_t a2)
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

  v6 = sub_270847E68(v5, 0);
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

  result = sub_27084CB3C();
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
        v10 = sub_27084C97C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_270847E68(v10, 0);
        result = sub_27084CADC();
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

uint64_t sub_270847D7C(uint64_t result)
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

  result = sub_270847EE0(result, v11, 1, v3);
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

void *sub_270847E68(uint64_t a1, uint64_t a2)
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

  sub_27084A0F8(0, &qword_28083BD30, MEMORY[0x277D84B78]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_270847EE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_27084A0F8(0, &qword_28083BD30, MEMORY[0x277D84B78]);
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

uint64_t sub_270847FD8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_27084CB5C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_27084CB5C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_270848168(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_270848330(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_2708480E4()
{
  result = qword_280CF7A00;
  if (!qword_280CF7A00)
  {
    sub_270849FE4(255, &qword_280CF7A08, &unk_280CF79E0, 0x277CCDB00, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF7A00);
  }

  return result;
}

uint64_t sub_270848168(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_27084CB5C();
LABEL_9:
  result = sub_27084CB2C();
  *v2 = result;
  return result;
}

uint64_t sub_270848208(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x2743AB6A0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_27084CB5C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_270848330(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_27084CB5C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_27084CB5C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_270849FE4(0, &qword_280CF7AA0, &qword_280CF7A68, 0x277CCDAF0, MEMORY[0x277D83940]);
          sub_27084A740();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2708485D4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_27084A62C(0, &qword_280CF7A68, 0x277CCDAF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2708484D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_27084A62C(0, &qword_280CF7A60, 0x277CCD580);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_27084A0F8(0, &qword_280CF7A58, MEMORY[0x277D84F68] + 8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void (*sub_2708485D4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2743AB6A0](a2, a3);
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
    return sub_270848654;
  }

  __break(1u);
  return result;
}

void sub_270848694(uint64_t a1)
{
  if (!qword_280CF7A30)
  {
    sub_27084A554(255, &qword_280CF7AE8, &type metadata for ListConceptManagerState);
    sub_270848728(&qword_280CF7A28, &qword_280CF7AE8, &type metadata for ListConceptManagerState);
    v1 = sub_27084C7AC();
    if (!v2)
    {
      atomic_store(v1, &qword_280CF7A30);
    }
  }
}

uint64_t sub_270848728(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_27084A554(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *sub_27084883C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, void *a7)
{
  v45 = a6;
  v42 = sub_27084C8CC();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_27084C8EC();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2708499B8(0, &qword_280CF7A80, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  sub_27084A488(0);
  v43 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[3] = &type metadata for LabsListDataProvider;
  v51[4] = &off_2880896D8;
  v51[0] = a2;
  v51[1] = a3;
  v51[2] = a4;
  LOBYTE(v52[0]) = 0;
  sub_27084A554(0, &qword_280CF7AE0, MEMORY[0x277D839B0]);
  swift_allocObject();
  v22 = sub_27084C81C();
  a7[3] = 0;
  a7[4] = 0;
  a7[2] = v22;
  if (qword_280CF7B58 != -1)
  {
    swift_once();
  }

  v52[0] = xmmword_280CF7B60;
  v52[1] = *algn_280CF7B70;
  *v53 = xmmword_280CF7B80;
  *&v53[9] = *(&xmmword_280CF7B80 + 9);
  aBlock = xmmword_280CF7B60;
  v49 = *algn_280CF7B70;
  v50[0] = xmmword_280CF7B80;
  *(v50 + 9) = *(&xmmword_280CF7B80 + 9);
  sub_27084A554(0, &qword_280CF7AE8, &type metadata for ListConceptManagerState);
  swift_allocObject();
  sub_27084865C(v52, v47);
  a7[5] = sub_27084C81C();
  a7[6] = 0;
  a7[15] = 0;
  a7[16] = 0;
  a7[14] = 0;
  a7[7] = a1;
  v23 = objc_allocWithZone(MEMORY[0x277CCDB48]);
  v44 = a1;
  a7[8] = [v23 initWithHealthStore_];
  sub_27084A5B4(v51, (a7 + 9));
  v46 = a5;
  *&aBlock = *&a5[OBJC_IVAR____TtC25UserDomainConceptsSupport31UserDomainConceptChangeProvider_udcChangesSubject];

  v24 = sub_270844B88();
  v47[0] = v24;
  v25 = sub_27084CA8C();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  sub_27084A554(0, &qword_280CF7DC8, &type metadata for UserDomainConceptChange);
  sub_27084A62C(0, &qword_280CF7A70, 0x277D85C78);
  sub_270848728(&qword_280CF7AF0, &qword_280CF7DC8, &type metadata for UserDomainConceptChange);
  sub_27084A354();
  sub_27084C8AC();
  sub_27084A3BC(v17);

  swift_allocObject();
  swift_weakInit();
  sub_27084A6D8(&qword_280CF7B30, sub_27084A488, MEMORY[0x277CBCD60]);

  v26 = v43;
  v27 = sub_27084C8BC();

  (*(v19 + 8))(v21, v26);
  a7[15] = v27;

  sub_27084C76C();
  v28 = a7[6];
  swift_allocObject();
  swift_weakInit();
  v29 = v28;

  a7[14] = sub_27084C75C();

  if (v45 == 2 || (v45 & 1) == 0)
  {
    v30 = a7[6];
    *&v50[0] = sub_27084A628;
    *(&v50[0] + 1) = a7;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v49 = sub_270844688;
    *(&v49 + 1) = &block_descriptor_55;
    v31 = _Block_copy(&aBlock);

    v32 = v30;
    v33 = v37;
    sub_27084C8DC();
    v47[0] = MEMORY[0x277D84F90];
    sub_27084A6D8(&qword_280CF7AB8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_2708499B8(0, &qword_280CF7AB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_270849A1C();
    v34 = v39;
    v35 = v42;
    sub_27084CACC();
    MEMORY[0x2743AB620](0, v33, v34, v31);
    _Block_release(v31);

    (*(v41 + 8))(v34, v35);
    (*(v38 + 8))(v33, v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  return a7;
}

void *sub_270849054(void *a1, uint64_t a2, char *a3, int a4, void *a5, uint64_t a6, uint64_t a7)
{
  v46 = a4;
  v43 = sub_27084C8CC();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_27084C8EC();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2708499B8(0, &qword_280CF7A80, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v38 - v16;
  sub_27084A488(0);
  v44 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[3] = a6;
  v52[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a2, a6);
  LOBYTE(v53[0]) = 0;
  sub_27084A554(0, &qword_280CF7AE0, MEMORY[0x277D839B0]);
  swift_allocObject();
  v23 = sub_27084C81C();
  a5[3] = 0;
  a5[4] = 0;
  a5[2] = v23;
  if (qword_280CF7B58 != -1)
  {
    swift_once();
  }

  v53[0] = xmmword_280CF7B60;
  v53[1] = *algn_280CF7B70;
  *v54 = xmmword_280CF7B80;
  *&v54[9] = *(&xmmword_280CF7B80 + 9);
  aBlock = xmmword_280CF7B60;
  v50 = *algn_280CF7B70;
  v51[0] = xmmword_280CF7B80;
  *(v51 + 9) = *(&xmmword_280CF7B80 + 9);
  sub_27084A554(0, &qword_280CF7AE8, &type metadata for ListConceptManagerState);
  swift_allocObject();
  sub_27084865C(v53, v48);
  a5[5] = sub_27084C81C();
  a5[6] = 0;
  a5[15] = 0;
  a5[16] = 0;
  a5[14] = 0;
  a5[7] = a1;
  v24 = objc_allocWithZone(MEMORY[0x277CCDB48]);
  v45 = a1;
  a5[8] = [v24 initWithHealthStore_];
  sub_27084A5B4(v52, (a5 + 9));
  v47 = a3;
  *&aBlock = *&a3[OBJC_IVAR____TtC25UserDomainConceptsSupport31UserDomainConceptChangeProvider_udcChangesSubject];

  v25 = sub_270844B88();
  v48[0] = v25;
  v26 = sub_27084CA8C();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  sub_27084A554(0, &qword_280CF7DC8, &type metadata for UserDomainConceptChange);
  sub_27084A62C(0, &qword_280CF7A70, 0x277D85C78);
  sub_270848728(&qword_280CF7AF0, &qword_280CF7DC8, &type metadata for UserDomainConceptChange);
  sub_27084A354();
  sub_27084C8AC();
  sub_27084A3BC(v17);

  swift_allocObject();
  swift_weakInit();
  sub_27084A6D8(&qword_280CF7B30, sub_27084A488, MEMORY[0x277CBCD60]);

  v27 = v44;
  v28 = sub_27084C8BC();

  (*(v19 + 8))(v21, v27);
  a5[15] = v28;

  sub_27084C76C();
  v29 = a5[6];
  swift_allocObject();
  swift_weakInit();
  v30 = v29;

  a5[14] = sub_27084C75C();

  if (v46 == 2 || (v46 & 1) == 0)
  {
    v31 = a5[6];
    *&v51[0] = sub_27084A844;
    *(&v51[0] + 1) = a5;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v50 = sub_270844688;
    *(&v50 + 1) = &block_descriptor_63;
    v32 = _Block_copy(&aBlock);

    v33 = v31;
    v34 = v38;
    sub_27084C8DC();
    v48[0] = MEMORY[0x277D84F90];
    sub_27084A6D8(&qword_280CF7AB8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_2708499B8(0, &qword_280CF7AB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_270849A1C();
    v35 = v40;
    v36 = v43;
    sub_27084CACC();
    MEMORY[0x2743AB620](0, v34, v35, v32);
    _Block_release(v32);

    (*(v42 + 8))(v35, v36);
    (*(v39 + 8))(v34, v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

  return a5;
}

void *sub_27084988C(void *a1, uint64_t a2, char *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ListConceptManager();
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a2, a6);
  return sub_270849054(a1, v15, a3, a4, v16, a6, a7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2708499B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_270849A1C()
{
  result = qword_280CF7AA8;
  if (!qword_280CF7AA8)
  {
    sub_2708499B8(255, &qword_280CF7AB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF7AA8);
  }

  return result;
}

uint64_t sub_270849AA4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_270849AC4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_270849B30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_270849B78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_270849DF8()
{
  result = qword_280CF7A40;
  if (!qword_280CF7A40)
  {
    type metadata accessor for ListConceptManager();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280CF7A40);
  }

  return result;
}

unint64_t sub_270849E3C()
{
  result = qword_280CF7A10;
  if (!qword_280CF7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF7A10);
  }

  return result;
}

void sub_270849E90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_270849EF8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_270849EF8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_270849F5C(uint64_t a1)
{
  sub_270849FE4(0, &qword_28083BD28, &qword_280CF79D8, 0x277D82BB8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_270849FE4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_27084A62C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_27084A098(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_27084A0F8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_27084CB8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_27084A144(uint64_t a1)
{
  if (!qword_280CF7B38)
  {
    sub_27084A210(255);
    sub_27084A62C(255, &qword_280CF7A70, 0x277D85C78);
    sub_27084A6D8(&qword_280CF7B20, sub_27084A210, MEMORY[0x277CBCD90]);
    sub_27084A354();
    v1 = sub_27084C7BC();
    if (!v2)
    {
      atomic_store(v1, &qword_280CF7B38);
    }
  }
}

void sub_27084A210(uint64_t a1)
{
  if (!qword_280CF7B18)
  {
    sub_27084A290(255);
    sub_270849EF8(255, &qword_280CF7A50, MEMORY[0x277D84948]);
    v1 = sub_27084C7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_280CF7B18);
    }
  }
}

void sub_27084A290(uint64_t a1)
{
  if (!qword_280CF7A98)
  {
    v1 = MEMORY[0x277D83940];
    sub_270849FE4(255, &qword_280CF7AA0, &qword_280CF7A68, 0x277CCDAF0, MEMORY[0x277D83940]);
    sub_270849FE4(255, &qword_280CF7A90, &qword_280CF7A60, 0x277CCD580, v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_280CF7A98);
    }
  }
}

unint64_t sub_27084A354()
{
  result = qword_280CF7A78;
  if (!qword_280CF7A78)
  {
    sub_27084A62C(255, &qword_280CF7A70, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF7A78);
  }

  return result;
}

uint64_t sub_27084A3BC(uint64_t a1)
{
  sub_2708499B8(0, &qword_280CF7A80, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_27084A488(uint64_t a1)
{
  if (!qword_280CF7B28)
  {
    sub_27084A554(255, &qword_280CF7DC8, &type metadata for UserDomainConceptChange);
    sub_27084A62C(255, &qword_280CF7A70, 0x277D85C78);
    sub_270848728(&qword_280CF7AF0, &qword_280CF7DC8, &type metadata for UserDomainConceptChange);
    sub_27084A354();
    v1 = sub_27084C7BC();
    if (!v2)
    {
      atomic_store(v1, &qword_280CF7B28);
    }
  }
}

void sub_27084A554(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_27084C80C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_27084A5B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_27084A62C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_27084A6D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27084A740()
{
  result = qword_28083BD48;
  if (!qword_28083BD48)
  {
    sub_270849FE4(255, &qword_280CF7AA0, &qword_280CF7A68, 0x277CCDAF0, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083BD48);
  }

  return result;
}

uint64_t static HKHealthStore.makeConceptPublisher<A>(with:entity:predicate:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_27084CA5C();
  sub_27084A984();
  sub_27084C82C();
  v7 = swift_allocObject();
  v7[2] = a4;
  v7[3] = a3;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  sub_27084C83C();
  swift_getWitnessTable();
  v10 = sub_27084C87C();

  return v10;
}

unint64_t sub_27084A984()
{
  result = qword_280CF7A50;
  if (!qword_280CF7A50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280CF7A50);
  }

  return result;
}

void sub_27084A9E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  sub_27084BD08();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_27084D4E0;
  sub_27084C94C();
  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);

  v12 = sub_27084C93C();

  v13 = [v11 initWithKey:v12 ascending:0];

  *(v10 + 32) = v13;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = sub_27084C728;
  v14[4] = v8;
  v14[5] = v9;
  v15 = objc_allocWithZone(MEMORY[0x277CCDB30]);
  sub_27084A62C(0, &qword_280CF7A88, 0x277CCAC98);
  v16 = a4;

  v17 = sub_27084C9CC();

  v27 = sub_27084BD5C;
  v28 = v14;
  v23 = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_27084BDCC;
  v26 = &block_descriptor_0;
  v18 = _Block_copy(&v23);
  v19 = [v15 initWithPredicate:a3 anchor:0 limit:0 sortDescriptors:v17 resultsHandler:v18];

  _Block_release(v18);

  v23 = 0;
  v24 = 0xE000000000000000;
  v20 = v19;
  sub_27084CAEC();

  v23 = 0xD000000000000011;
  v24 = 0x800000027084D8A0;
  sub_27084A62C(0, &qword_280CF7A60, 0x277CCD580);
  v21 = sub_27084CBAC();
  MEMORY[0x2743AB4F0](v21);

  v22 = sub_27084C93C();

  [v20 setDebugIdentifier_];

  [v16 executeQuery_];
}

void sub_27084ACF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  sub_27084BD08();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_27084D4E0;
  sub_27084C94C();
  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);

  v12 = sub_27084C93C();

  v13 = [v11 initWithKey:v12 ascending:0];

  *(v10 + 32) = v13;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = sub_27084C654;
  v14[4] = v8;
  v14[5] = v9;
  v15 = objc_allocWithZone(MEMORY[0x277CCDB30]);
  sub_27084A62C(0, &qword_280CF7A88, 0x277CCAC98);
  v16 = a4;

  v17 = sub_27084C9CC();

  v27 = sub_27084C6E0;
  v28 = v14;
  v23 = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_27084BDCC;
  v26 = &block_descriptor_46;
  v18 = _Block_copy(&v23);
  v19 = [v15 initWithPredicate:a3 anchor:0 limit:0 sortDescriptors:v17 resultsHandler:v18];

  _Block_release(v18);

  v23 = 0;
  v24 = 0xE000000000000000;
  v20 = v19;
  sub_27084CAEC();

  v23 = 0xD000000000000011;
  v24 = 0x800000027084D8A0;
  sub_27084A62C(0, &qword_280CF7A68, 0x277CCDAF0);
  v21 = sub_27084CBAC();
  MEMORY[0x2743AB4F0](v21);

  v22 = sub_27084C93C();

  [v20 setDebugIdentifier_];

  [v16 executeQuery_];
}

void sub_27084B008(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();

  *(v11 + 16) = sub_27084C91C();
  sub_27084BD08();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_27084D4E0;
  sub_27084C94C();
  v13 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v14 = sub_27084C93C();

  v15 = [v13 initWithKey:v14 ascending:0];

  *(v12 + 32) = v15;
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a4;
  v16[4] = sub_27084BEB0;
  v16[5] = v10;
  v16[6] = v11;
  v17 = objc_allocWithZone(MEMORY[0x277CCDB30]);
  sub_27084A62C(0, &qword_280CF7A88, 0x277CCAC98);
  v18 = a4;

  v19 = sub_27084C9CC();

  v29 = sub_27084BEF0;
  v30 = v16;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_27084BDCC;
  v28 = &block_descriptor_27;
  v20 = _Block_copy(&v25);
  v21 = [v17 initWithPredicate:a3 anchor:0 limit:0 sortDescriptors:v19 resultsHandler:v20];

  _Block_release(v20);

  v25 = 0;
  v26 = 0xE000000000000000;
  v22 = v21;
  sub_27084CAEC();

  v25 = 0xD000000000000011;
  v26 = 0x800000027084D8A0;
  v23 = sub_27084CBAC();
  MEMORY[0x2743AB4F0](v23);

  v24 = sub_27084C93C();

  [v22 setDebugIdentifier_];

  [v18 executeQuery_];
}

uint64_t sub_27084B31C(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, id a6, uint64_t (*a7)(uint64_t, uint64_t), int a8, uint64_t a9, void *a10)
{
  if (a5)
  {
    [a6 stopQuery_];
    return a7(a5, 1);
  }

  else
  {
    v15 = a4;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      swift_beginAccess();
      MEMORY[0x2743AB540](a2);
      if (*((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27084C9FC();
      }

      sub_27084CA2C();
      result = swift_endAccess();
    }

    if (v15)
    {
      [a6 stopQuery_];
      swift_beginAccess();

      a7(v17, 0);
    }
  }

  return result;
}

id sub_27084B484(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, void *a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v41 = a2;
  v16 = sub_27084CABC();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v27 = &v35 - v26;
  if (a5)
  {
    [a6 stopQuery_];
    return a7(a5, 1);
  }

  else
  {
    v36 = v25;
    v37 = v23;
    v39 = a1;
    v40 = a6;
    v38 = a8;
    v29 = v41;
    v42 = v41;
    v30 = v24;
    sub_27084BF20(0, &qword_280CF79F8, &qword_280CF7A68, 0x277CCDAF0, MEMORY[0x277D83D88]);
    v31 = v29;
    v32 = swift_dynamicCast();
    v33 = *(v30 + 56);
    if (v32)
    {
      v33(v19, 0, 1, a10);
      (*(v30 + 32))(v27, v19, a10);
      (*(v30 + 16))(v22, v27, a10);
      swift_beginAccess();
      sub_27084CA5C();
      sub_27084CA3C();
      swift_endAccess();
      (*(v30 + 8))(v27, a10);
    }

    else
    {
      v33(v19, 1, 1, a10);
      (*(v36 + 8))(v19, v37);
    }

    result = v40;
    if (a4)
    {
      [v40 stopQuery_];
      swift_beginAccess();

      a7(v34, 0);
    }
  }

  return result;
}

uint64_t HKHealthStore.makeUDCListsPublisher(for:)(uint64_t a1)
{
  sub_27084B98C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v1;
  v9 = MEMORY[0x277CBCD88];
  sub_27084BC20(0, &qword_280CF7AF8, MEMORY[0x277CBCD88]);
  sub_27084BCC4(&qword_280CF7B00, &qword_280CF7AF8, v9, MEMORY[0x277CBCD90]);
  v10 = v1;
  sub_27084C85C();
  sub_27084BB94(&qword_280CF7A20, sub_27084B98C, MEMORY[0x277CBCEB8]);
  v11 = sub_27084C87C();
  (*(v5 + 8))(v7, v4);
  return v11;
}

void sub_27084B98C(uint64_t a1)
{
  if (!qword_280CF7A18)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_27084BC20(255, &qword_280CF7AF8, MEMORY[0x277CBCD88]);
    sub_27084BCC4(&qword_280CF7B00, &qword_280CF7AF8, v1, MEMORY[0x277CBCD90]);
    v2 = sub_27084C86C();
    if (!v3)
    {
      atomic_store(v2, &qword_280CF7A18);
    }
  }
}

void sub_27084BA40(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = [objc_opt_self() predicateForListUserDomainConceptWithListType_];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  v7 = MEMORY[0x277CBCEA8];
  sub_27084BC20(0, &qword_280CF7AC0, MEMORY[0x277CBCEA8]);
  swift_allocObject();
  v8 = v5;
  v9 = a2;
  sub_27084C84C();
  sub_27084BCC4(&qword_280CF7AC8, &qword_280CF7AC0, v7, MEMORY[0x277CBCEB0]);
  v10 = sub_27084C87C();

  *a3 = v10;
}

uint64_t sub_27084BB94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_27084BC20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_27084BF20(255, &qword_280CF7A90, &qword_280CF7A60, 0x277CCD580, MEMORY[0x277D83940]);
    v7 = v6;
    v8 = sub_27084A984();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_27084BCC4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_27084BC20(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_27084BD08()
{
  if (!qword_280CF7A58)
  {
    v0 = sub_27084CB8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CF7A58);
    }
  }
}

uint64_t sub_27084BD98()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_27084BDCC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = *(a1 + 32);

  v15 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v11(v15, a3, a4, a5, a6);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27084BEB0(uint64_t a1, char a2)
{
  v3 = *(v2 + 24);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

void sub_27084BF20(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_27084A62C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_27084BF9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_27084BFE4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_27084C034(void *a1)
{
  sub_27084C444(0);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 predicateForMedicalUserDomainConceptWithCategoryType_];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v8 = MEMORY[0x277CBCEA8];
  sub_27084C564(0, &qword_280CF7AD0, MEMORY[0x277CBCEA8]);
  swift_allocObject();
  v9 = v6;
  v10 = a1;
  v31 = sub_27084C84C();
  v11 = MEMORY[0x277CBCEB0];
  sub_27084C610(&qword_280CF7AD8, &qword_280CF7AD0, v8, MEMORY[0x277CBCEB0]);
  v12 = sub_27084C87C();

  v13 = [v5 predicateForListUserDomainConceptWithListType_];
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  v15 = MEMORY[0x277CBCEA8];
  sub_27084BC20(0, &qword_280CF7AC0, MEMORY[0x277CBCEA8]);
  swift_allocObject();
  v16 = v10;
  v17 = v13;
  v31 = sub_27084C84C();
  sub_27084BCC4(&qword_280CF7AC8, &qword_280CF7AC0, v15, v11);
  v18 = sub_27084C87C();

  v30 = v18;
  v31 = v12;
  v19 = MEMORY[0x277CBCD88];
  sub_27084C564(0, &qword_280CF7B08, MEMORY[0x277CBCD88]);
  v20 = MEMORY[0x277CBCD88];
  sub_27084BC20(0, &qword_280CF7AF8, MEMORY[0x277CBCD88]);
  v21 = MEMORY[0x277CBCD90];
  sub_27084C610(&qword_280CF7B10, &qword_280CF7B08, v19, MEMORY[0x277CBCD90]);
  sub_27084BCC4(&qword_280CF7B00, &qword_280CF7AF8, v20, v21);

  v22 = v27;
  sub_27084C79C();
  sub_27084BB94(&qword_280CF7B50, sub_27084C444, MEMORY[0x277CBCAF0]);
  v23 = v28;
  v24 = sub_27084C87C();

  (*(v29 + 8))(v22, v23);
  return v24;
}

void sub_27084C444(uint64_t a1)
{
  if (!qword_280CF7B48)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_27084C564(255, &qword_280CF7B08, MEMORY[0x277CBCD88]);
    v2 = MEMORY[0x277CBCD88];
    sub_27084BC20(255, &qword_280CF7AF8, MEMORY[0x277CBCD88]);
    v3 = MEMORY[0x277CBCD90];
    sub_27084C610(&qword_280CF7B10, &qword_280CF7B08, v1, MEMORY[0x277CBCD90]);
    sub_27084BCC4(&qword_280CF7B00, &qword_280CF7AF8, v2, v3);
    v4 = sub_27084C78C();
    if (!v5)
    {
      atomic_store(v4, &qword_280CF7B48);
    }
  }
}

void sub_27084C564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_27084BF20(255, &qword_280CF7AA0, &qword_280CF7A68, 0x277CCDAF0, MEMORY[0x277D83940]);
    v7 = v6;
    v8 = sub_27084A984();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_27084C610(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_27084C564(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27084C658(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}