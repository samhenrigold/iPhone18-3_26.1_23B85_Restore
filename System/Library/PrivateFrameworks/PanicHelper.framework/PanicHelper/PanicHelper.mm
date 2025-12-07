uint64_t sub_25DF50E28()
{
  v0 = sub_25DF52E74();
  __swift_allocate_value_buffer(v0, qword_27FCD3BA8);
  __swift_project_value_buffer(v0, qword_27FCD3BA8);
  return sub_25DF52E64();
}

uint64_t sub_25DF50F0C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_25DF52D94();
  v51 = *(v9 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCD3B70, &qword_25DF53200);
  MEMORY[0x28223BE20]();
  v13 = &v47 - v12;
  *(v4 + qword_27FCD3B60) = 0;
  v14 = MEMORY[0x25F8A8CB0](a3, a4);
  if (v14)
  {
    *(v4 + qword_27FCD3B68) = v14;
    sub_25DF51AA4(a1, a2);
    sub_25DF51AA4(a3, a4);
    v15 = sub_25DF52E14();
    v16 = v15;
    if (!v15)
    {
      sub_25DF51B0C(a3, a4);
      sub_25DF51B0C(a1, a2);
      return v16;
    }

    v47 = a3;
    v48 = a4;
    v49 = a1;
    v50 = a2;
    v17 = *(v15 + qword_27FCD3B68);
    type metadata accessor for PanicReport.PanicReportRedacter(0);
    v18 = swift_allocObject();
    v19 = sub_25DF52DB4();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    (*(v51 + 104))(v11, *MEMORY[0x277CC91D8], v9);
    swift_retain_n();

    sub_25DF52DA4();
    v20 = (v18 + OBJC_IVAR____TtCC11PanicHelper11PanicReport19PanicReportRedacter_TGTKey);
    *v20 = 0xD000000000000014;
    v20[1] = 0x800000025DF534D0;
    *(v18 + OBJC_IVAR____TtCC11PanicHelper11PanicReport19PanicReportRedacter_originalReportBody) = v17;
    *(v16 + qword_27FCD3B60) = v18;

    v21 = sub_25DF52E24();
    v23 = v22;

    if (v21 == 3158322 && v23 == 0xE300000000000000)
    {

      v25 = v49;
      v24 = v50;
LABEL_18:
      sub_25DF51B0C(v47, v48);
      sub_25DF51B0C(v25, v24);

      return v16;
    }

    v33 = sub_25DF52F04();

    v25 = v49;
    v24 = v50;
    if (v33)
    {
      goto LABEL_18;
    }

    if (sub_25DF52E24() == 3158324 && v34 == 0xE300000000000000)
    {

      goto LABEL_18;
    }

    v35 = sub_25DF52F04();

    if (v35)
    {
      goto LABEL_18;
    }

    if (sub_25DF52E24() == 3224881 && v37 == 0xE300000000000000)
    {

LABEL_24:
      sub_25DF51B0C(v47, v48);
      sub_25DF51B0C(v25, v24);
      return v16;
    }

    v38 = sub_25DF52F04();

    if (v38)
    {
      goto LABEL_24;
    }

    if (qword_27FCD3BA0 != -1)
    {
      swift_once();
    }

    v39 = sub_25DF52E74();
    __swift_project_value_buffer(v39, qword_27FCD3BA8);

    v40 = sub_25DF52E54();
    v41 = sub_25DF52EA4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v52 = v43;
      *v42 = 136315138;
      v44 = sub_25DF52E24();
      v46 = sub_25DF51FC4(v44, v45, &v52);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_25DF50000, v40, v41, "Invalid bug_type for panic report: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x25F8A8FF0](v43, -1, -1);
      MEMORY[0x25F8A8FF0](v42, -1, -1);
    }

    sub_25DF51B0C(v47, v48);
    sub_25DF51B0C(v25, v24);
  }

  else
  {
    v26 = a3;
    v27 = a4;
    if (qword_27FCD3BA0 != -1)
    {
      swift_once();
    }

    v28 = sub_25DF52E74();
    __swift_project_value_buffer(v28, qword_27FCD3BA8);
    v29 = sub_25DF52E54();
    v30 = sub_25DF52EA4();
    v31 = v26;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_25DF50000, v29, v30, "Failed to convert to body to json", v32, 2u);
      MEMORY[0x25F8A8FF0](v32, -1, -1);
    }

    sub_25DF51B0C(v31, v27);
    sub_25DF51B0C(a1, a2);

    type metadata accessor for PanicReport(0);
    swift_deallocPartialClassInstance();
  }

  return 0;
}

void sub_25DF5158C()
{
  v1 = v0;
  v2 = *(v0 + qword_27FCD3B60);
  if (v2)
  {
    v7 = *(v2 + OBJC_IVAR____TtCC11PanicHelper11PanicReport19PanicReportRedacter_originalReportBody);

    sub_25DF516C4(&v7);

    v3 = v7;
    *(v1 + qword_27FCD3B68) = v7;

    v4 = MEMORY[0x25F8A8CC0](v3);
    v6 = v5;

    if (v6 >> 60 != 15)
    {
      sub_25DF51AA4(v4, v6);
      sub_25DF52E04();

      sub_25DF51AF8(v4, v6);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_25DF516C4(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_25DF52DB4();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20]();
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  if (*(*a1 + 16))
  {
    v11 = *(v2 + OBJC_IVAR____TtCC11PanicHelper11PanicReport19PanicReportRedacter_TGTKey);
    v10 = *(v2 + OBJC_IVAR____TtCC11PanicHelper11PanicReport19PanicReportRedacter_TGTKey + 8);
    result = sub_25DF5267C(v11, v10);
    if (v12)
    {
      sub_25DF525B8(*(v9 + 56) + 32 * result, v20);
      sub_25DF526F4(v20, v21);
      sub_25DF52704(v11, v10, v20);
      sub_25DF52CC4(v20, &qword_27FCD3B80, &qword_25DF53210);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCD3B88, &qword_25DF53218);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25DF53160;
      *(inited + 32) = v11;
      *(inited + 40) = v10;
      sub_25DF525B8(v21, inited + 48);

      v14 = sub_25DF52BB4(inited);
      swift_setDeallocating();
      sub_25DF52CC4(inited + 32, &qword_27FCD3B90, &qword_25DF53220);
      sub_25DF52E34();
      v15 = MEMORY[0x25F8A8CC0](v14);
      if (v16 >> 60 != 15)
      {
        v17 = v15;
        v18 = v16;
        (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtCC11PanicHelper11PanicReport19PanicReportRedacter_TGTOutputPath, v4);
        sub_25DF52DC4();
        (*(v5 + 8))(v8, v4);
        sub_25DF51AF8(v17, v18);
      }

      return __swift_destroy_boxed_opaque_existential_0(v21);
    }
  }

  return result;
}

uint64_t sub_25DF51AA4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25DF51AF8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25DF51B0C(result, a2);
  }

  return result;
}

uint64_t sub_25DF51B0C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25DF51B60()
{
  v1 = OBJC_IVAR____TtCC11PanicHelper11PanicReport19PanicReportRedacter_TGTOutputPath;
  v2 = sub_25DF52DB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_25DF51C20()
{
}

uint64_t PanicReport.deinit()
{
  v0 = sub_25DF52E44();

  return v0;
}

uint64_t PanicReport.__deallocating_deinit()
{
  v0 = sub_25DF52E44();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_25DF51E64(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25DF51E9C(uint64_t a1)
{
  result = sub_25DF52DB4();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_25DF51FC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25DF52090(v11, 0, 0, 1, a1, a2);
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
    sub_25DF525B8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25DF52090(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25DF5219C(a5, a6);
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
    result = sub_25DF52ED4();
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

void *sub_25DF5219C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25DF521E8(a1, a2);
  sub_25DF52318(&unk_286FC46F0);
  return v3;
}

void *sub_25DF521E8(uint64_t a1, unint64_t a2)
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

  v6 = sub_25DF52404(v5, 0);
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

  result = sub_25DF52ED4();
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
        v10 = sub_25DF52E94();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25DF52404(v10, 0);
        result = sub_25DF52EC4();
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

uint64_t sub_25DF52318(uint64_t result)
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

  result = sub_25DF52478(result, v11, 1, v3);
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

void *sub_25DF52404(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCD3B78, &qword_25DF53208);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25DF52478(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCD3B78, &qword_25DF53208);
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

uint64_t sub_25DF525B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t sub_25DF5267C(uint64_t a1, uint64_t a2)
{
  sub_25DF52F24();
  sub_25DF52E84();
  v4 = sub_25DF52F34();

  return sub_25DF527A8(a1, a2, v4);
}

_OWORD *sub_25DF526F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_25DF52704@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_25DF5267C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25DF52A10();
      v10 = v12;
    }

    sub_25DF526F4((*(v10 + 56) + 32 * v8), a3);
    sub_25DF52860(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_25DF527A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25DF52F04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_25DF52860(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25DF52EB4() + 1) & ~v5;
    do
    {
      sub_25DF52F24();

      sub_25DF52E84();
      v10 = sub_25DF52F34();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_25DF52A10()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCD3B98, &qword_25DF53228);
  v2 = *v0;
  v3 = sub_25DF52EE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25DF525B8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25DF526F4(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_25DF52BB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCD3B98, &qword_25DF53228);
    v3 = sub_25DF52EF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25DF52D24(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_25DF5267C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25DF526F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25DF52CC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25DF52D24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCD3B90, &qword_25DF53220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}