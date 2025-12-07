uint64_t sub_25EDB34E8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40320;
  return result;
}

uint64_t sub_25EDB3534(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40320 = v1;
  return result;
}

uint64_t sub_25EDB3588@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40470;
  return result;
}

uint64_t sub_25EDB35D4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40470 = v1;
  return result;
}

uint64_t sub_25EDB361C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40471;
  return result;
}

uint64_t sub_25EDB3668(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40471 = v1;
  return result;
}

uint64_t sub_25EDB36B0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40472;
  return result;
}

uint64_t sub_25EDB36FC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40472 = v1;
  return result;
}

uint64_t sub_25EDB3744@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40473;
  return result;
}

uint64_t sub_25EDB3790(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40473 = v1;
  return result;
}

uint64_t sub_25EDB37D8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40474;
  return result;
}

uint64_t sub_25EDB3824(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40474 = v1;
  return result;
}

uint64_t sub_25EDB386C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40475;
  return result;
}

uint64_t sub_25EDB38B8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40475 = v1;
  return result;
}

uint64_t sub_25EDB3900@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40476;
  return result;
}

uint64_t sub_25EDB394C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40476 = v1;
  return result;
}

uint64_t sub_25EDB3994@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40480;
  return result;
}

uint64_t sub_25EDB39E0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40480 = v1;
  return result;
}

uint64_t sub_25EDB3A28@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40481;
  return result;
}

uint64_t sub_25EDB3A74(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40481 = v1;
  return result;
}

uint64_t static PosterPathUtilities.storeConfiguredProperties(_:forPath:)(uint64_t a1, void *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration);
  if (v4)
  {
    v5 = a1;
    v6 = v4;
    v7 = sub_25EDB44FC(v6, a2);

    if (v2)
    {
      return v8 & 1;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }

    a1 = v5;
  }

  v9 = *(a1 + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration);
  if (v9)
  {
    v10 = v9;
    v11 = sub_25EDB4934(v10, a2);

    if (v2)
    {
      return v8 & 1;
    }

    if ((v11 & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      return v8 & 1;
    }
  }

  v8 = 1;
  return v8 & 1;
}

id static PosterPathUtilities.loadConfiguredProperties(forPath:)(void *a1)
{
  v3 = sub_25EDB4E2C(a1);
  if (v1)
  {
    v4 = 0;
    if (qword_27FD40220 != -1)
    {
      swift_once();
    }

    v5 = sub_25EDBC358();
    __swift_project_value_buffer(v5, qword_27FD405A8);
    v6 = v1;
    v7 = sub_25EDBC338();
    v8 = sub_25EDBC3D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_25EDBC468();
      v13 = sub_25EDB3F44(v11, v12, &v18);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_25EDB2000, v7, v8, "error loading configured properties: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x25F8CFDB0](v10, -1, -1);
      MEMORY[0x25F8CFDB0](v9, -1, -1);
    }

    else
    {
    }

    v17 = 0;
  }

  else
  {
    v4 = v3;
    v17 = sub_25EDB532C(a1);
  }

  v14 = type metadata accessor for PosterConfiguredProperties();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration] = v4;
  *&v15[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration] = v17;
  v19.receiver = v15;
  v19.super_class = v14;
  return objc_msgSendSuper2(&v19, sel_init);
}

id PosterPathUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PosterPathUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterPathUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PosterPathUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PosterPathUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_25EDB3E74(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_25EDB3EE8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_25EDB3F44(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_25EDB3F44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25EDB4010(v11, 0, 0, 1, a1, a2);
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
    sub_25EDB5A20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25EDB4010(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25EDB411C(a5, a6);
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
    result = sub_25EDBC458();
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

void *sub_25EDB411C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25EDB4168(a1, a2);
  sub_25EDB4298(&unk_2870EF2E8);
  return v3;
}

void *sub_25EDB4168(uint64_t a1, unint64_t a2)
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

  v6 = sub_25EDB4384(v5, 0);
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

  result = sub_25EDBC458();
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
        v10 = sub_25EDBC3A8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25EDB4384(v10, 0);
        result = sub_25EDBC448();
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

uint64_t sub_25EDB4298(uint64_t result)
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

  result = sub_25EDB43F8(result, v11, 1, v3);
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

void *sub_25EDB4384(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD402B0, &qword_25EDBCED8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25EDB43F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD402B0, &qword_25EDBCED8);
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

_BYTE **sub_25EDB44EC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_25EDB44FC(void *a1, void *a2)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v5 = sub_25EDBC278();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_25EDBC2B8();
  v9 = *(v43 - 8);
  v10 = MEMORY[0x28223BE20](v43);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v44 = &v38 - v16;
  if ([a2 isServerPosterPath] && (v42 = a1, objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) != 0))
  {
    v18 = v17;
    v39 = v2;
    v19 = a2;
    v20 = [v18 instanceURL];
    sub_25EDBC298();

    v45[0] = 0xD000000000000043;
    v45[1] = 0x800000025EDBD5E0;
    (*(v6 + 104))(v8, *MEMORY[0x277CC91D0], v5);
    sub_25EDB58D0();
    sub_25EDBC2A8();

    (*(v6 + 8))(v8, v5);
    v21 = v43;
    v40 = *(v9 + 8);
    v41 = v9 + 8;
    v40(v12, v43);
    v22 = v44;
    (*(v9 + 32))(v44, v15, v21);
    v45[0] = 0;
    v23 = v42;
    v24 = [v19 ensureContentsURLIsReachableAndReturnError_];
    v25 = v45[0];
    if (v24)
    {
      v26 = objc_opt_self();
      v45[0] = 0;
      v27 = v25;
      v28 = [v26 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:v45];
      v29 = v45[0];
      if (v28)
      {
        v30 = sub_25EDBC2F8();
        v32 = v31;

        v22 = v44;
        v33 = v39;
        sub_25EDBC308();
        if (!v33)
        {
          sub_25EDB5978(v30, v32);
          v40(v22, v21);

          v34 = 1;
          return v34 & 1;
        }

        sub_25EDB5978(v30, v32);
      }

      else
      {
        v36 = v29;
        sub_25EDBC268();

        swift_willThrow();
        v22 = v44;
      }
    }

    else
    {
      v35 = v45[0];
      sub_25EDBC268();

      swift_willThrow();
    }

    v40(v22, v21);
  }

  else
  {
    v34 = 0;
  }

  return v34 & 1;
}

uint64_t sub_25EDB4934(void *a1, void *a2)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v5 = sub_25EDBC278();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_25EDBC2B8();
  v9 = *(v43 - 8);
  v10 = MEMORY[0x28223BE20](v43);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v44 = &v38 - v16;
  if ([a2 isServerPosterPath] && (v42 = a1, objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) != 0))
  {
    v18 = v17;
    v39 = v2;
    v19 = a2;
    v20 = [v18 instanceURL];
    sub_25EDBC298();

    v45[0] = 0xD000000000000042;
    v45[1] = 0x800000025EDBD590;
    (*(v6 + 104))(v8, *MEMORY[0x277CC91D0], v5);
    sub_25EDB58D0();
    sub_25EDBC2A8();

    (*(v6 + 8))(v8, v5);
    v21 = v43;
    v40 = *(v9 + 8);
    v41 = v9 + 8;
    v40(v12, v43);
    v22 = v44;
    (*(v9 + 32))(v44, v15, v21);
    v45[0] = 0;
    v23 = v42;
    v24 = [v19 ensureContentsURLIsReachableAndReturnError_];
    v25 = v45[0];
    if (v24)
    {
      v26 = objc_opt_self();
      v45[0] = 0;
      v27 = v25;
      v28 = [v26 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:v45];
      v29 = v45[0];
      if (v28)
      {
        v30 = sub_25EDBC2F8();
        v32 = v31;

        v22 = v44;
        v33 = v39;
        sub_25EDBC308();
        if (!v33)
        {
          sub_25EDB5978(v30, v32);
          v40(v22, v21);

          v34 = 1;
          return v34 & 1;
        }

        sub_25EDB5978(v30, v32);
      }

      else
      {
        v36 = v29;
        sub_25EDBC268();

        swift_willThrow();
        v22 = v44;
      }
    }

    else
    {
      v35 = v45[0];
      sub_25EDBC268();

      swift_willThrow();
    }

    v40(v22, v21);
  }

  else
  {
    v34 = 0;
  }

  return v34 & 1;
}

id sub_25EDB4D6C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_25EDBC2D8();
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_25EDBC268();

    swift_willThrow();
  }

  return v2;
}

void *sub_25EDB4E2C(void *a1)
{
  v3 = sub_25EDBC278();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_25EDBC2B8();
  v7 = *(v33 - 8);
  v8 = MEMORY[0x28223BE20](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  if (![a1 isServerPosterPath])
  {
    return 0;
  }

  v32 = v1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v17 = result;
    v31 = 0x800000025EDBD5E0;
    v18 = a1;
    v19 = [v17 instanceURL];
    sub_25EDBC298();

    v34 = 0xD000000000000043;
    v35 = v31;
    (*(v4 + 104))(v6, *MEMORY[0x277CC91D0], v3);
    sub_25EDB58D0();
    sub_25EDBC2A8();

    (*(v4 + 8))(v6, v3);
    v20 = *(v7 + 8);
    v21 = v33;
    v20(v10, v33);
    (*(v7 + 32))(v15, v13, v21);
    type metadata accessor for PosterTitleStyleConfiguration();
    v22 = v32;
    sub_25EDBC288();
    if (v22)
    {
      return (v20)(v15, v21);
    }

    v23 = sub_25EDBC2C8();
    v25 = v24;
    v26 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_25EDB5924(v23, v25);
    v27 = sub_25EDB4D6C();
    v32 = 0;
    v28 = v27;
    sub_25EDB5978(v23, v25);
    [v28 setRequiresSecureCoding_];
    _s11PosterModel0A23TitleStyleConfigurationC23performClassReplacement3for06targetaB0ySo17NSKeyedUnarchiverC_SbtFZ_0(v28, 1);
    sub_25EDBC388();
    v29 = sub_25EDBC3E8();

    if (v29)
    {
      ObjectType = swift_getObjectType();
      v34 = v29;

      sub_25EDB5978(v23, v25);
      v20(v15, v33);
      if (swift_dynamicCast())
      {
        return v37;
      }
    }

    else
    {
      v20(v15, v33);
      sub_25EDB5978(v23, v25);
    }

    return 0;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

void *sub_25EDB532C(void *a1)
{
  v3 = sub_25EDBC278();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_25EDBC2B8();
  v7 = *(v32 - 8);
  v8 = MEMORY[0x28223BE20](v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  MEMORY[0x28223BE20](v11);
  v33 = &v30 - v14;
  if ([a1 isServerPosterPath])
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    v16 = result;
    ObjCClassFromMetadata = v1;
    v17 = a1;
    v18 = [v16 instanceURL];
    sub_25EDBC298();

    v34 = 0xD000000000000042;
    v35 = 0x800000025EDBD590;
    (*(v4 + 104))(v6, *MEMORY[0x277CC91D0], v3);
    sub_25EDB58D0();
    sub_25EDBC2A8();

    (*(v4 + 8))(v6, v3);
    v19 = *(v7 + 8);
    v20 = v32;
    v19(v10, v32);
    v21 = v33;
    (*(v7 + 32))(v33, v13, v20);
    type metadata accessor for PosterRenderingConfiguration();
    v22 = ObjCClassFromMetadata;
    sub_25EDBC288();
    if (v22)
    {
      return (v19)(v21, v20);
    }

    v23 = sub_25EDBC2C8();
    v25 = v24;
    v26 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_25EDB5924(v23, v25);
    v27 = sub_25EDB4D6C();
    sub_25EDB5978(v23, v25);
    [v27 setRequiresSecureCoding_];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v28 = sub_25EDBC378();
    [v27 setClass:ObjCClassFromMetadata forClassName:v28];

    sub_25EDB59CC(&unk_2870EF2D8);
    sub_25EDBC388();
    v29 = sub_25EDBC3E8();

    if (v29)
    {
      ObjectType = swift_getObjectType();
      v34 = v29;

      sub_25EDB5978(v23, v25);
      v19(v33, v32);
      if (swift_dynamicCast())
      {
        return v37;
      }
    }

    else
    {
      v19(v33, v32);
      sub_25EDB5978(v23, v25);
    }
  }

  return 0;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25EDB5814(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25EDB5834(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_25EDB5884(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_25EDB58D0()
{
  result = qword_27FD402A8;
  if (!qword_27FD402A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD402A8);
  }

  return result;
}

void sub_25EDB5924(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_25EDB5978(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25EDB5A20(uint64_t a1, uint64_t a2)
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

id PosterConfiguration.__allocating_init(path:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_25EDB6920(a1);

  return v4;
}

id PosterConfiguration.init(path:)(void *a1)
{
  v2 = sub_25EDB6920(a1);

  return v2;
}

id PosterConfiguration.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC11PosterModel19PosterConfiguration_pathValidityExtension];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PosterConfiguration();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_25EDB5C40()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path);
  v8[0] = 0;
  v2 = [v1 loadUserInfoWithError_];
  v3 = v8[0];
  if (v2)
  {
    v4 = v2;
    v5 = sub_25EDBC368();
    v6 = v3;
  }

  else
  {
    v5 = v8[0];
    sub_25EDBC268();

    swift_willThrow();
  }

  return v5;
}

void sub_25EDB5D28()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path) contentsURL];
  sub_25EDBC298();
}

uint64_t sub_25EDB5D90@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path) serverIdentity];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 posterUUID];

    sub_25EDBC318();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_25EDBC328();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, 1, v7);
}

uint64_t sub_25EDB5E64()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path) serverIdentity];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 provider];

  v4 = sub_25EDBC388();
  return v4;
}

id sub_25EDB5FE0()
{
  result = [*(v0 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path) serverIdentity];
  if (result)
  {
    v2 = result;
    v3 = [result descriptorIdentifier];

    if (v3)
    {
      v4 = sub_25EDBC388();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_25EDB60B8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path) role];

  return v1;
}

uint64_t static PosterConfiguration.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40320 = a1;
  return result;
}

void sub_25EDB626C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path);
  v4 = sub_25EDBC378();
  [a1 encodeObject:v3 forKey:v4];
}

id PosterConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_25EDB6A10();
  v4 = sub_25EDBC3E8();
  if (v4)
  {
    v5 = v4;
    v6 = objc_allocWithZone(type metadata accessor for PosterConfiguration());
    v7 = sub_25EDB6920(v5);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

id PosterConfiguration.init(coder:)(void *a1)
{
  sub_25EDB6A10();
  v2 = sub_25EDBC3E8();
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(type metadata accessor for PosterConfiguration());
    v5 = sub_25EDB6920(v3);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

void static PosterConfiguration.archiveConfiguration(_:fileManager:format:)(uint64_t a1, void *a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = [objc_opt_self() defaultManager];
  }

  v7 = objc_allocWithZone(MEMORY[0x277D3EB70]);
  v8 = a2;
  v9 = [v7 initWithFileManager_];
  v10 = *(a1 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path);
  v16[0] = 0;
  v11 = [v9 archivePath:v10 format:a3 error:v16];
  v12 = v16[0];
  if (v11)
  {
    v13 = v11;
    sub_25EDBC298();
    v14 = v12;
  }

  else
  {
    v15 = v16[0];
    sub_25EDBC268();

    swift_willThrow();
  }
}

id static PosterConfiguration.unarchiveConfiguration(from:fileManager:format:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = [objc_opt_self() defaultManager];
  }

  v7 = objc_allocWithZone(MEMORY[0x277D3EB70]);
  v8 = a3;
  v9 = [v7 initWithFileManager_];
  v10 = sub_25EDBC2D8();
  v16[0] = 0;
  v11 = [v9 unarchivePathFromData:v10 format:a4 error:v16];

  v12 = v16[0];
  if (v11)
  {
    objc_allocWithZone(type metadata accessor for PosterConfiguration());
    v13 = v12;
    v12 = sub_25EDB6920(v11);
  }

  else
  {
    v14 = v16[0];
    sub_25EDBC268();

    swift_willThrow();
  }

  return v12;
}

id PosterConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_25EDB6920(void *a1)
{
  swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path] = a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = a1;
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v5)
  {
    sub_25EDBC388();
    v5 = sub_25EDBC378();
  }

  v6 = [v4 extendValidityForReason_];

  *&v1[OBJC_IVAR____TtC11PosterModel19PosterConfiguration_pathValidityExtension] = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PosterConfiguration();
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t sub_25EDB6A10()
{
  result = qword_27FD40338;
  if (!qword_27FD40338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD40338);
  }

  return result;
}

id PosterConfiguredProperties.__allocating_init(titleStyleConfiguration:renderingConfiguration:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration] = a1;
  *&v5[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_25EDB6CF4()
{
  v0 = sub_25EDBC358();
  __swift_allocate_value_buffer(v0, qword_27FD405A8);
  __swift_project_value_buffer(v0, qword_27FD405A8);
  return sub_25EDBC348();
}

uint64_t PosterSystemTimeFontConfiguration.timeFontIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_timeFontIdentifier);

  return v1;
}

id PosterSystemTimeFontConfiguration.__allocating_init(timeFontIdentifier:weight:isSystemItem:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_timeFontIdentifier];
  *v10 = a1;
  v10[1] = a2;
  *&v9[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_weight] = a4;
  v9[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_isSystemItem] = a3;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id PosterSystemTimeFontConfiguration.init(timeFontIdentifier:weight:isSystemItem:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = &v4[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_timeFontIdentifier];
  *v5 = a1;
  v5[1] = a2;
  *&v4[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_weight] = a4;
  v4[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_isSystemItem] = a3;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for PosterSystemTimeFontConfiguration();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t static PosterSystemTimeFontConfiguration.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40470 = a1;
  return result;
}

id sub_25EDB7024(void *a1)
{
  v2 = v1;
  v4 = sub_25EDBC378();
  [a1 encodeObject:v4 forKey:@"timeFontIdentifier"];

  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  v5 = sub_25EDBC408();
  [a1 encodeObject:v5 forKey:@"weight"];

  v6 = *(v2 + OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_isSystemItem);

  return [a1 encodeBool:v6 forKey:@"isSystemItem"];
}

id PosterSystemTimeFontConfiguration.init(coder:)(void *a1)
{
  v2 = sub_25EDBC388();
  v4 = sub_25EDB7344(v2, v3);
  v6 = v5;

  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  sub_25EDBC388();
  v7 = sub_25EDBC3E8();

  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0x800000025EDBD760;
  }

  if (v6)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0xD000000000000019;
  }

  v12 = [a1 decodeBoolForKey_];
  v13 = type metadata accessor for PosterSystemTimeFontConfiguration();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_timeFontIdentifier];
  *v15 = v11;
  v15[1] = v10;
  *&v14[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_weight] = v9;
  v14[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_isSystemItem] = v12;
  v18.receiver = v14;
  v18.super_class = v13;
  v16 = objc_msgSendSuper2(&v18, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v16;
}

uint64_t sub_25EDB7344(uint64_t a1, uint64_t a2)
{
  sub_25EDBC0B0(0, &qword_27FD40598, 0x277CCACA8);
  if (sub_25EDBC3E8())
  {
    return sub_25EDBC398();
  }

  v4 = sub_25EDBC378();
  v5 = [v2 decodeObjectForKey_];

  if (v5)
  {
    sub_25EDBC438();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  sub_25EDBC0F8(v10, &v8);
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v7;
LABEL_13:
      sub_25EDBC168(v10);
      return v6;
    }
  }

  else
  {
    sub_25EDBC168(&v8);
  }

  sub_25EDBC0F8(v10, &v8);
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = sub_25EDBC398();
      goto LABEL_13;
    }
  }

  else
  {
    sub_25EDBC168(&v8);
  }

  sub_25EDBC168(v10);
  return 0;
}

void *PosterColor.color.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel11PosterColor_color);
  v2 = v1;
  return v1;
}

uint64_t PosterColor.localizedName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel11PosterColor_localizedName);

  return v1;
}

id PosterColor.__allocating_init(color:preferredStyle:localizedName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11PosterModel11PosterColor_color] = a1;
  *&v9[OBJC_IVAR____TtC11PosterModel11PosterColor_preferredStyle] = a2;
  v10 = &v9[OBJC_IVAR____TtC11PosterModel11PosterColor_localizedName];
  *v10 = a3;
  *(v10 + 1) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id PosterColor.init(color:preferredStyle:localizedName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC11PosterModel11PosterColor_color] = a1;
  *&v4[OBJC_IVAR____TtC11PosterModel11PosterColor_preferredStyle] = a2;
  v5 = &v4[OBJC_IVAR____TtC11PosterModel11PosterColor_localizedName];
  *v5 = a3;
  *(v5 + 1) = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for PosterColor();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t static PosterColor.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40471 = a1;
  return result;
}

uint64_t sub_25EDB784C(void *a1)
{
  v2 = v1;
  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  v4 = sub_25EDBC418();
  [a1 encodeObject:v4 forKey:@"preferredStyle"];

  if (*(v2 + OBJC_IVAR____TtC11PosterModel11PosterColor_localizedName + 8))
  {
    v5 = sub_25EDBC378();
  }

  else
  {
    v5 = 0;
  }

  [a1 encodeObject:v5 forKey:@"localizedName"];

  return swift_unknownObjectRelease();
}

id PosterColor.init(coder:)(void *a1)
{
  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  sub_25EDBC388();
  v2 = sub_25EDBC3E8();

  if (v2)
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_25EDBC388();
  v6 = sub_25EDB7344(v4, v5);
  v8 = v7;

  v9 = type metadata accessor for PosterColor();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC11PosterModel11PosterColor_color] = 0;
  *&v10[OBJC_IVAR____TtC11PosterModel11PosterColor_preferredStyle] = v3;
  v11 = &v10[OBJC_IVAR____TtC11PosterModel11PosterColor_localizedName];
  *v11 = v6;
  v11[1] = v8;
  v14.receiver = v10;
  v14.super_class = v9;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

id PosterContentDiscreteColorsStyle.__allocating_init(colors:isVibrant:allowsVariation:variation:)(uint64_t a1, char a2, char a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle__colors] = a1;
  v9[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_isVibrant] = a2;
  v9[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_allowsVariation] = a3;
  *&v9[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_variation] = a4;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id PosterContentDiscreteColorsStyle.init(colors:isVibrant:allowsVariation:variation:)(uint64_t a1, char a2, char a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle__colors] = a1;
  v4[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_isVibrant] = a2;
  v4[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_allowsVariation] = a3;
  *&v4[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_variation] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for PosterContentDiscreteColorsStyle();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t static PosterContentDiscreteColorsStyle.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40472 = a1;
  return result;
}

id sub_25EDB7E90(void *a1)
{
  [a1 encodeBool:*(v1 + OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_isVibrant) forKey:@"vibrant"];
  [a1 encodeBool:*(v1 + OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_allowsVariation) forKey:@"supportsVariation"];
  v3 = *(v1 + OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_variation);

  return [a1 encodeDouble:@"variation" forKey:v3];
}

id PosterContentDiscreteColorsStyle.init(coder:)(void *a1)
{
  v2 = [a1 decodeBoolForKey_];
  v3 = [a1 decodeBoolForKey_];
  [a1 decodeDoubleForKey_];
  v5 = v4;
  v6 = type metadata accessor for PosterContentDiscreteColorsStyle();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle__colors] = MEMORY[0x277D84F90];
  v7[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_isVibrant] = v2;
  v7[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_allowsVariation] = v3;
  *&v7[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_variation] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

id PosterContentGradientStyle.__allocating_init(colors:startPoint:endPoint:locations:gradientType:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  *&v15[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle__colors] = a1;
  v16 = &v15[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_startPoint];
  *v16 = a4;
  v16[1] = a5;
  v17 = &v15[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_endPoint];
  *v17 = a6;
  v17[1] = a7;
  *&v15[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_locations] = a2;
  *&v15[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_gradientType] = a3;
  v19.receiver = v15;
  v19.super_class = v7;
  return objc_msgSendSuper2(&v19, sel_init);
}

id PosterContentGradientStyle.init(colors:startPoint:endPoint:locations:gradientType:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  *&v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle__colors] = a1;
  v8 = &v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_startPoint];
  *v8 = a4;
  v8[1] = a5;
  v9 = &v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_endPoint];
  *v9 = a6;
  v9[1] = a7;
  *&v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_locations] = a2;
  *&v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_gradientType] = a3;
  v11.receiver = v7;
  v11.super_class = type metadata accessor for PosterContentGradientStyle();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t static PosterContentGradientStyle.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40473 = a1;
  return result;
}

id sub_25EDB857C(void *a1)
{
  v3 = BSNSStringFromCGPoint();
  [a1 encodeObject:v3 forKey:@"startPoint"];

  v4 = BSNSStringFromCGPoint();
  [a1 encodeObject:v4 forKey:@"endPoint"];

  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  v5 = sub_25EDBC3B8();
  [a1 encodeObject:v5 forKey:@"locations"];

  v6 = *(v1 + OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_gradientType);

  return [a1 encodeInteger:v6 forKey:@"gradientType"];
}

id PosterContentGradientStyle.init(coder:)(void *a1)
{
  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  sub_25EDBC388();
  v2 = sub_25EDBC3F8();

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = [a1 decodeIntegerForKey_];
  v6 = type metadata accessor for PosterContentGradientStyle();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle__colors] = v3;
  v8 = &v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_startPoint];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_endPoint];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_locations] = v4;
  *&v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_gradientType] = v5;
  v12.receiver = v7;
  v12.super_class = v6;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t static PosterContentVibrantMaterialStyle.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40474 = a1;
  return result;
}

id PosterContentVibrantMaterialStyle.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) init];

  return v3;
}

id PosterContentVibrantMaterialStyle.init(coder:)(void *a1)
{
  v3 = [v1 init];

  return v3;
}

uint64_t static PosterContentVibrantMonochromeStyle.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40475 = a1;
  return result;
}

id sub_25EDB8E8C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_25EDB8EDC(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

void *PosterTitleStyleConfiguration.timeFontConfiguration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeFontConfiguration);
  v2 = v1;
  return v1;
}

void *PosterTitleStyleConfiguration.titleColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleColor);
  v2 = v1;
  return v1;
}

uint64_t PosterTitleStyleConfiguration.timeNumberingSystem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeNumberingSystem);

  return v1;
}

uint64_t PosterTitleStyleConfiguration.groupName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_groupName);

  return v1;
}

id PosterTitleStyleConfiguration.__allocating_init(timeFontConfiguration:preferredTitleAlignment:preferredTitleLayout:titleContentStyle:titleColor:timeNumberingSystem:contentsLuminance:groupName:isUserConfigured:isAlternateDateEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, char a12, char a13)
{
  v22 = objc_allocWithZone(v13);
  *&v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeFontConfiguration] = a1;
  *&v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_preferredTitleAlignment] = a2;
  *&v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_preferredTitleLayout] = a3;
  v23 = &v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleContentStyle];
  *v23 = a4;
  v23[1] = a5;
  *&v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleColor] = a6;
  v24 = &v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeNumberingSystem];
  *v24 = a7;
  v24[1] = a8;
  *&v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_contentsLuminance] = a9;
  v25 = &v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_groupName];
  *v25 = a10;
  v25[1] = a11;
  v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isUserConfigured] = a12;
  v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isAlternateDateEnabled] = a13;
  v28.receiver = v22;
  v28.super_class = v13;
  return objc_msgSendSuper2(&v28, sel_init);
}

id PosterTitleStyleConfiguration.init(timeFontConfiguration:preferredTitleAlignment:preferredTitleLayout:titleContentStyle:titleColor:timeNumberingSystem:contentsLuminance:groupName:isUserConfigured:isAlternateDateEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, char a12, char a13)
{
  *&v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeFontConfiguration] = a1;
  *&v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_preferredTitleAlignment] = a2;
  *&v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_preferredTitleLayout] = a3;
  v14 = &v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleContentStyle];
  *v14 = a4;
  v14[1] = a5;
  *&v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleColor] = a6;
  v15 = &v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeNumberingSystem];
  *v15 = a7;
  v15[1] = a8;
  *&v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_contentsLuminance] = a9;
  v16 = &v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_groupName];
  *v16 = a10;
  v16[1] = a11;
  v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isUserConfigured] = a12;
  v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isAlternateDateEnabled] = a13;
  v18.receiver = v13;
  v18.super_class = type metadata accessor for PosterTitleStyleConfiguration();
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t static PosterTitleStyleConfiguration.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40476 = a1;
  return result;
}

void sub_25EDB942C(void *a1)
{
  v2 = v1;
  [a1 encodeObject:*(v1 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeFontConfiguration) forKey:@"timeFontConfiguration"];
  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  v4 = sub_25EDBC418();
  [a1 encodeObject:v4 forKey:@"preferredTitleAlignment"];

  v5 = sub_25EDBC418();
  [a1 encodeObject:v5 forKey:@"preferredTitleLayout"];

  v9 = sub_25EDBB14C(*(v1 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleContentStyle));
  [a1 encodeObject_forKey_];
  [a1 encodeObject:*(v1 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleColor) forKey:@"titleColor"];
  if (*(v1 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeNumberingSystem + 8))
  {
    v6 = sub_25EDBC378();
  }

  else
  {
    v6 = 0;
  }

  [a1 encodeObject:v6 forKey:@"timeNumberingSystem"];
  swift_unknownObjectRelease();
  v7 = sub_25EDBC408();
  [a1 encodeObject:v7 forKey:@"contentsLuminence"];

  if (*(v2 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_groupName + 8))
  {
    v8 = sub_25EDBC378();
  }

  else
  {
    v8 = 0;
  }

  [a1 encodeObject:v8 forKey:@"groupName"];
  swift_unknownObjectRelease();
  [a1 encodeBool:*(v2 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isUserConfigured) forKey:@"userConfigured"];
  [a1 encodeBool:*(v2 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isAlternateDateEnabled) forKey:@"alternateDateEnabled"];
}

id PosterTitleStyleConfiguration.init(coder:)(void *a1)
{
  type metadata accessor for PosterSystemTimeFontConfiguration();
  sub_25EDBC388();
  v36 = sub_25EDBC3E8();

  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  sub_25EDBC388();
  v2 = sub_25EDBC3E8();

  if (v2)
  {
    v35 = [v2 integerValue];
  }

  else
  {
    v35 = 0;
  }

  sub_25EDBC388();
  v3 = sub_25EDBC3E8();

  if (v3)
  {
    v33 = [v3 integerValue];
  }

  else
  {
    v33 = 0;
  }

  sub_25EDBC0B0(0, &qword_27FD40568, 0x277CBEA90);
  sub_25EDBC388();
  v4 = sub_25EDBC3E8();

  v34 = v4;
  v5 = sub_25EDBB474(v4);
  v32 = v6;
  type metadata accessor for PosterColor();
  sub_25EDBC388();
  v7 = sub_25EDBC3E8();

  v8 = sub_25EDBC388();
  v31 = sub_25EDB7344(v8, v9);
  v11 = v10;

  sub_25EDBC388();
  v12 = sub_25EDBC3E8();

  if (v12)
  {
    [v12 doubleValue];
    v14 = v13;
  }

  else
  {
    v14 = 0.5;
  }

  v15 = sub_25EDBC388();
  v17 = sub_25EDB7344(v15, v16);
  v19 = v18;

  v20 = [a1 decodeBoolForKey_];
  v21 = [a1 decodeBoolForKey_];
  v22 = type metadata accessor for PosterTitleStyleConfiguration();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeFontConfiguration] = v36;
  *&v23[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_preferredTitleAlignment] = v35;
  *&v23[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_preferredTitleLayout] = v33;
  v24 = &v23[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleContentStyle];
  *v24 = v5;
  v24[1] = v32;
  *&v23[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleColor] = v7;
  v25 = &v23[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeNumberingSystem];
  *v25 = v31;
  v25[1] = v11;
  *&v23[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_contentsLuminance] = v14;
  v26 = &v23[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_groupName];
  *v26 = v17;
  v26[1] = v19;
  v23[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isUserConfigured] = v20;
  v23[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isAlternateDateEnabled] = v21;
  v37.receiver = v23;
  v37.super_class = v22;
  v27 = v36;
  swift_unknownObjectRetain();
  v28 = v7;
  v29 = objc_msgSendSuper2(&v37, sel_init);

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v29;
}

uint64_t sub_25EDB9B5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD40590, &qword_25EDBD320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25EDBCF30;
  *(v0 + 32) = type metadata accessor for PosterContentDiscreteColorsStyle();
  *(v0 + 40) = &protocol witness table for PosterContentDiscreteColorsStyle;
  *(v0 + 48) = type metadata accessor for PosterContentGradientStyle();
  *(v0 + 56) = &protocol witness table for PosterContentGradientStyle;
  *(v0 + 64) = type metadata accessor for PosterContentVibrantMaterialStyle();
  *(v0 + 72) = &protocol witness table for PosterContentVibrantMaterialStyle;
  result = type metadata accessor for PosterContentVibrantMonochromeStyle();
  *(v0 + 80) = result;
  *(v0 + 88) = &protocol witness table for PosterContentVibrantMonochromeStyle;
  off_27FD40478 = v0;
  return result;
}

id PosterRenderingConfiguration.__allocating_init(isDepthEffectDisabled:areMotionEffectsDisabled:)(char a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_isDepthEffectDisabled] = a1;
  v5[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_areMotionEffectsDisabled] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id PosterRenderingConfiguration.init(isDepthEffectDisabled:areMotionEffectsDisabled:)(uint64_t a1, char a2)
{
  v2[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_isDepthEffectDisabled] = a1;
  v2[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_areMotionEffectsDisabled] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PosterRenderingConfiguration();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t static PosterRenderingConfiguration.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40480 = a1;
  return result;
}

id sub_25EDB9F34(void *a1)
{
  [a1 encodeBool:*(v1 + OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_isDepthEffectDisabled) forKey:@"depthEffectDisabled"];
  v3 = *(v1 + OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_areMotionEffectsDisabled);

  return [a1 encodeBool:v3 forKey:@"motionEffectsDisabled"];
}

id PosterRenderingConfiguration.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = [a1 decodeBoolForKey_];
  v6 = [a1 decodeBoolForKey_];
  v7 = type metadata accessor for PosterRenderingConfiguration();
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_isDepthEffectDisabled] = v5;
  v8[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_areMotionEffectsDisabled] = v6;
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

id PosterRenderingConfiguration.init(coder:)(void *a1)
{
  v2 = [a1 decodeBoolForKey_];
  v3 = [a1 decodeBoolForKey_];
  v4 = type metadata accessor for PosterRenderingConfiguration();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_isDepthEffectDisabled] = v2;
  v5[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_areMotionEffectsDisabled] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

void *PosterConfiguredProperties.titleStyleConfiguration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration);
  v2 = v1;
  return v1;
}

void *PosterConfiguredProperties.renderingConfiguration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration);
  v2 = v1;
  return v1;
}

id PosterConfiguredProperties.init(titleStyleConfiguration:renderingConfiguration:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration] = a1;
  *&v2[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PosterConfiguredProperties();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t static PosterConfiguredProperties.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40481 = a1;
  return result;
}

id sub_25EDBA5BC(void *a1)
{
  [a1 encodeObject:*(v1 + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration) forKey:@"titleStyleConfiguration"];
  v3 = *(v1 + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration);

  return [a1 encodeObject:v3 forKey:@"titleStyleConfiguration"];
}

id PosterConfiguredProperties.init(coder:)(void *a1)
{
  type metadata accessor for PosterTitleStyleConfiguration();
  sub_25EDBC388();
  v2 = sub_25EDBC3E8();

  type metadata accessor for PosterRenderingConfiguration();
  sub_25EDBC388();
  v3 = sub_25EDBC3E8();

  v4 = type metadata accessor for PosterConfiguredProperties();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration] = v2;
  *&v5[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration] = v3;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = v2;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

id PosterConfiguredProperties.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_25EDBA928(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s11PosterModel0A23TitleStyleConfigurationC23performClassReplacement3for06targetaB0ySo17NSKeyedUnarchiverC_SbtFZ_0(void *a1, char a2)
{
  type metadata accessor for PosterTitleStyleConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  if (a2)
  {
    v5 = sub_25EDBC378();
    [a1 setClass:ObjCClassFromMetadata forClassName:v5];
LABEL_9:

    goto LABEL_10;
  }

  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    sub_25EDBC388();
    v6 = sub_25EDBC378();
  }

  v7 = [a1 classForClassName_];

  if (!v7)
  {
    v8 = sub_25EDBC378();
    v9 = NSClassFromString(v8);

    v5 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v5)
    {
      sub_25EDBC388();
      v5 = sub_25EDBC378();
    }

    [a1 setClass:v9 forClassName:v5];
    goto LABEL_9;
  }

LABEL_10:

  sub_25EDB59CC(&qword_2870EF238);
  type metadata accessor for PosterSystemTimeFontConfiguration();
  v10 = swift_getObjCClassFromMetadata();

  if (a2)
  {
    v11 = sub_25EDBC378();
    [a1 setClass:v10 forClassName:v11];
LABEL_18:

    goto LABEL_19;
  }

  v12 = NSStringFromClass(v10);
  if (!v12)
  {
    sub_25EDBC388();
    v12 = sub_25EDBC378();
  }

  v13 = [a1 classForClassName_];

  if (!v13)
  {
    v14 = sub_25EDBC378();
    v15 = NSClassFromString(v14);

    v11 = NSStringFromClass(v10);
    if (!v11)
    {
      sub_25EDBC388();
      v11 = sub_25EDBC378();
    }

    [a1 setClass:v15 forClassName:v11];
    goto LABEL_18;
  }

LABEL_19:

  v16 = swift_getObjCClassFromMetadata();

  if (a2)
  {
    v17 = sub_25EDBC378();
    [a1 setClass:v16 forClassName:v17];
LABEL_27:

    goto LABEL_28;
  }

  v18 = NSStringFromClass(v16);
  if (!v18)
  {
    sub_25EDBC388();
    v18 = sub_25EDBC378();
  }

  v19 = [a1 classForClassName_];

  if (!v19)
  {
    v20 = sub_25EDBC378();
    v21 = NSClassFromString(v20);

    v17 = NSStringFromClass(v16);
    if (!v17)
    {
      sub_25EDBC388();
      v17 = sub_25EDBC378();
    }

    [a1 setClass:v21 forClassName:v17];
    goto LABEL_27;
  }

LABEL_28:

  swift_arrayDestroy();
  sub_25EDBAEF4(a1, a2 & 1, &qword_2870EF178, qword_2870EF180, type metadata accessor for PosterContentDiscreteColorsStyle);
  sub_25EDBAEF4(a1, a2 & 1, &qword_2870EF1A8, qword_2870EF1B0, type metadata accessor for PosterContentGradientStyle);
  sub_25EDBAEF4(a1, a2 & 1, &qword_2870EF1D8, qword_2870EF1E0, type metadata accessor for PosterContentVibrantMaterialStyle);
  sub_25EDBAEF4(a1, a2 & 1, &qword_2870EF208, qword_2870EF210, type metadata accessor for PosterContentVibrantMonochromeStyle);
  type metadata accessor for PosterColor();
  v22 = swift_getObjCClassFromMetadata();

  if (a2)
  {
    v23 = sub_25EDBC378();
    [a1 setClass:v22 forClassName:v23];
LABEL_36:

    goto LABEL_37;
  }

  v24 = NSStringFromClass(v22);
  if (!v24)
  {
    sub_25EDBC388();
    v24 = sub_25EDBC378();
  }

  v25 = [a1 classForClassName_];

  if (!v25)
  {
    v26 = sub_25EDBC378();
    v27 = NSClassFromString(v26);

    v23 = NSStringFromClass(v22);
    if (!v23)
    {
      sub_25EDBC388();
      v23 = sub_25EDBC378();
    }

    [a1 setClass:v27 forClassName:v23];
    goto LABEL_36;
  }

LABEL_37:

  return sub_25EDB59CC(aPrpostercolor);
}

uint64_t sub_25EDBAEF4(void *a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  a5();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  if (a2)
  {
    v9 = sub_25EDBC378();
    [a1 setClass:ObjCClassFromMetadata forClassName:v9];
LABEL_9:

    goto LABEL_10;
  }

  v10 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v10)
  {
    sub_25EDBC388();
    v10 = sub_25EDBC378();
  }

  v11 = [a1 classForClassName_];

  if (!v11)
  {
    v12 = sub_25EDBC378();
    v13 = NSClassFromString(v12);

    v9 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v9)
    {
      sub_25EDBC388();
      v9 = sub_25EDBC378();
    }

    [a1 setClass:v13 forClassName:v9];
    goto LABEL_9;
  }

LABEL_10:

  return sub_25EDB59CC(a3);
}

uint64_t sub_25EDBB14C(uint64_t result)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v24[0] = 0;
    swift_unknownObjectRetain();
    v3 = [v2 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v24];
    v4 = v24[0];
    if (v3)
    {
      v5 = sub_25EDBC2F8();
      v7 = v6;

      if (qword_27FD40220 != -1)
      {
        swift_once();
      }

      v8 = sub_25EDBC358();
      __swift_project_value_buffer(v8, qword_27FD405A8);
      v9 = sub_25EDBC338();
      v10 = sub_25EDBC3C8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_25EDB2000, v9, v10, "successfully archived contentStyle to data", v11, 2u);
        MEMORY[0x25F8CFDB0](v11, -1, -1);
      }

      v12 = sub_25EDBC2D8();
      swift_unknownObjectRelease();
      sub_25EDB5978(v5, v7);
      return v12;
    }

    else
    {
      v13 = v4;
      v14 = sub_25EDBC268();

      swift_willThrow();
      if (qword_27FD40220 != -1)
      {
        swift_once();
      }

      v15 = sub_25EDBC358();
      __swift_project_value_buffer(v15, qword_27FD405A8);
      v16 = v14;
      v17 = sub_25EDBC338();
      v18 = sub_25EDBC3D8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v24[0] = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        v21 = sub_25EDBC468();
        v23 = sub_25EDB3F44(v21, v22, v24);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_25EDB2000, v17, v18, "error getting archivedData from contentStyle: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x25F8CFDB0](v20, -1, -1);
        MEMORY[0x25F8CFDB0](v19, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return 0;
    }
  }

  return result;
}

void *sub_25EDBB474(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = xmmword_25EDBCF40;
    sub_25EDBC2E8();
  }

  return 0;
}

uint64_t sub_25EDBC09C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25EDB5978(result, a2);
  }

  return result;
}

uint64_t sub_25EDBC0B0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_25EDBC0F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD405A0, &qword_25EDBD328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25EDBC168(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD405A0, &qword_25EDBD328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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